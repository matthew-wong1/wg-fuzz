struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 36269u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1004f);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(163f + -1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -462f) - _wgslsmith_f_op_f32(floor(819f)))) + _wgslsmith_f_op_f32(f32(-1f) * -1877f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(595f)))))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -591f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(2429f, -2804f) + -1371f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1001f) - -364f)) - _wgslsmith_f_op_f32(f32(-1f) * -990f));
    var var_1 = true;
    var var_2 = vec2<bool>(true, true);
    return _wgslsmith_f_op_f32(-781f + 1f);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> f32 {
    let var_0 = vec3<i32>(1i, -_wgslsmith_add_i32(15338i, 47281i), _wgslsmith_add_i32(u_input.c.x, _wgslsmith_div_i32(~countOneBits(-1i), -44795i)));
    var var_1 = 1237f;
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec2<i32>(var_0.x | u_input.a.x, _wgslsmith_add_i32(u_input.a.x, u_input.c.x)))), -333f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-432f - arg_1.b), arg_1.b))))));
}

fn func_1() -> i32 {
    var var_0 = -(~(-u_input.a));
    var var_1 = -2147483647i;
    var var_2 = u_input.c;
    global0 = u_input.b;
    var var_3 = Struct_1(!((firstTrailingBit(23823u) & _wgslsmith_mult_u32(26463u, 13670u)) == u_input.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1548f, -190f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(-327f, Struct_1(false, -706f), vec3<f32>(461f, -1000f, -902f), Struct_1(false, 137f))))), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(f32(-1f) * -970f)))));
    return ~(-2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i >= func_1();
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1981f, _wgslsmith_f_op_f32(f32(-1f) * -1296f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -437f) - _wgslsmith_f_op_f32(1346f * _wgslsmith_f_op_f32(493f - 489f))), 151f));
    var var_2 = Struct_1(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1095f))))));
    let var_3 = Struct_1(select(true, !((true | var_2.a) || true), var_2.a), _wgslsmith_f_op_f32(-1714f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.b))))));
    var var_4 = select(~vec4<i32>(-u_input.c.x, -10994i, abs(0i), u_input.c.x), _wgslsmith_sub_vec4_i32(vec4<i32>(-24002i, u_input.a.x ^ 1i, abs(u_input.a.x), 20661i), firstTrailingBit(-vec4<i32>(25234i, u_input.c.x, u_input.a.x, u_input.a.x))), select(select(!vec4<bool>(true, var_2.a, var_0, var_3.a), select(vec4<bool>(var_3.a, var_3.a, true, var_3.a), vec4<bool>(var_0, var_0, var_0, var_3.a), vec4<bool>(var_0, var_2.a, var_0, true)), select(vec4<bool>(false, var_2.a, true, false), vec4<bool>(var_0, true, true, var_2.a), true)), vec4<bool>(true, all(vec2<bool>(true, var_3.a)), false, true), vec4<bool>(var_2.a, 4294967295u <= u_input.b, !var_3.a, var_3.a))) & (reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, 0i, 1i), vec4<i32>(u_input.c.x, -3476i, u_input.c.x, -23808i), vec4<i32>(1i, u_input.a.x, 2147483647i, u_input.a.x)) | _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, -29765i, 22785i, u_input.a.x), vec4<i32>(-18070i, u_input.a.x, u_input.c.x, 1i))) ^ (-vec4<i32>(18546i, u_input.a.x, 20432i, u_input.a.x) | max(countOneBits(vec4<i32>(u_input.a.x, 0i, 26228i, u_input.c.x)), vec4<i32>(u_input.a.x, u_input.c.x, -26682i, u_input.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(abs(1u & u_input.b), u_input.b, 34579u), _wgslsmith_mult_vec2_i32(abs(_wgslsmith_mult_vec2_i32(u_input.a, u_input.a)), ~(vec2<i32>(-1i) * -vec2<i32>(20357i, -12004i))));
}

