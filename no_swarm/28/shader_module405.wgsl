struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: vec4<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: Struct_3) -> vec3<f32> {
    let var_0 = any(select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true)), arg_1.x < 1i), vec4<bool>(all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))), false, !select(true, false, false), true), select(select(true, true, true), true, true)));
    let var_1 = !(!vec2<bool>(var_0, var_0));
    let var_2 = vec2<u32>(1u, u_input.a);
    var var_3 = Struct_2(Struct_1(-25053i, _wgslsmith_mod_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -2147483647i, arg_2.x, arg_1.x), vec4<i32>(arg_2.x, arg_1.x, arg_1.x, u_input.d)), -2147483647i ^ abs(arg_3.c)), all(select(!vec3<bool>(true, var_1.x, var_0), vec3<bool>(var_1.x, var_1.x, var_1.x), all(vec4<bool>(false, var_1.x, var_0, true)))), vec4<u32>(u_input.a, 0u, var_2.x, max(81609u, 0u)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, arg_3.b.x))), arg_3.b))), !select(var_1, !select(var_1, vec2<bool>(false, true), var_0), var_1), reverseBits(~var_2));
    let var_4 = i32(-1i) * -20591i;
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_3.a.e.x)))), _wgslsmith_f_op_f32(abs(-677f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-575f + arg_0.x))));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<i32>) -> bool {
    let var_0 = Struct_2(Struct_1(-1i, _wgslsmith_sub_i32(1i, -30570i), !all(vec3<bool>(false, false, false)), _wgslsmith_div_vec4_u32(abs(~vec4<u32>(1u, u_input.e, 0u, 1u)), firstLeadingBit(~vec4<u32>(u_input.a, u_input.e, u_input.e, u_input.e))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(arg_0.yy, u_input.c.xx, arg_1.wzx, Struct_3(arg_0.x, vec3<f32>(arg_0.x, 185f, arg_0.x), 2147483647i))), arg_0) - vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(arg_0.yy, vec2<i32>(1i, u_input.b), arg_1.ywz, Struct_3(arg_0.x, vec3<f32>(arg_0.x, 501f, arg_0.x), u_input.c.x))).x, _wgslsmith_f_op_f32(1397f - arg_0.x), arg_0.x))), vec2<bool>(_wgslsmith_add_u32(u_input.a << (28277u % 32u), firstLeadingBit(u_input.e)) == u_input.a, !all(vec3<bool>(true, true, true))), ~(~(~(~vec2<u32>(0u, u_input.e)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 267f, -817f) - vec3<f32>(893f, var_0.a.e.x, var_0.a.e.x))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.e.x), _wgslsmith_f_op_vec3_f32(func_3(arg_0.zx, arg_1.yw, vec3<i32>(-2147483647i, arg_1.x, u_input.b), Struct_3(-955f, arg_0, 0i))).x, _wgslsmith_f_op_f32(-arg_0.x)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_0.a.e))) + vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(max(var_0.a.e.x, var_0.a.e.x)), _wgslsmith_f_op_f32(-1333f * arg_0.x)))));
    var var_2 = Struct_3(-1351f, arg_0, select(0i, ~(~(-var_0.a.b)), select(var_0.b.x, true, all(vec2<bool>(var_0.a.c, var_0.a.c))) & all(vec2<bool>(var_0.a.c, var_0.b.x))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 1000f, _wgslsmith_div_f32(arg_0.x, -1000f))))));
    var var_3 = Struct_3(-1297f, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(298f)), arg_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.e.x + var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(var_2.b - var_2.b), vec3<f32>(-1841f, var_2.a, -846f)))))), var_2.c);
    return var_0.b.x;
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-126f, -764f, _wgslsmith_f_op_f32(max(1000f, 479f)))))), vec4<i32>(u_input.b, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, -30075i, u_input.d, 1865i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, arg_0, arg_0, arg_0), vec4<i32>(14812i, -10533i, u_input.d, arg_0))), firstTrailingBit(arg_0) << (u_input.e % 32u)), 0i, arg_0));
    var_0 = !all(select(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), false));
    var_0 = _wgslsmith_clamp_u32(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, u_input.e) ^ vec2<u32>(1u, u_input.a), ~vec2<u32>(u_input.a, 1u))), _wgslsmith_div_u32(~24083u, u_input.e), ~1u) > 1u;
    var var_1 = Struct_2(Struct_1(-20772i, u_input.b & u_input.c.x, !(!any(vec3<bool>(true, false, true))), ~max(~vec4<u32>(4294967295u, u_input.e, 0u, u_input.a), ~vec4<u32>(77283u, 1u, u_input.a, 13860u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(487f, -2651f, -1578f), vec3<f32>(879f, -619f, 119f))))), vec2<bool>(true, true | select(true, true, true)), vec2<u32>(u_input.e, u_input.a));
    var var_2 = firstTrailingBit(_wgslsmith_mod_vec2_i32(u_input.c.zz, u_input.c.zx));
    return Struct_2(var_1.a, var_1.b, abs(_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(0u, u_input.e) & vec2<u32>(u_input.e, 1u)), var_1.a.d.zz)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.e.x, -1000f));
    var_0 = arg_2;
    var_0 = -480f;
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(700f))));
    let var_1 = func_1(arg_1.a.b).a;
    return -(~select(-firstLeadingBit(vec4<i32>(arg_0.a.b, u_input.d, 1i, 2147483647i)), ~max(vec4<i32>(14446i, arg_0.a.a, -9563i, -25501i), vec4<i32>(var_1.a, arg_1.a.a, 1i, 2147483647i)), arg_0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(max(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.b, ~0i, 2147483647i), func_4(func_1(u_input.b), func_1(u_input.c.x), _wgslsmith_f_op_f32(-1128f + 1519f))), _wgslsmith_div_vec4_i32(vec4<i32>(1i, firstLeadingBit(-38094i), abs(u_input.b), _wgslsmith_mult_i32(u_input.d, u_input.b)), vec4<i32>(14047i << (1u % 32u), u_input.c.x, -1i, u_input.b << (u_input.e % 32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(~max(~vec2<u32>(1u, u_input.e), ~vec2<u32>(u_input.e, 5220u)), ~(~(~vec2<u32>(1u, 0u)))), (~(vec4<u32>(1u, u_input.e, u_input.e, u_input.e) >> (vec4<u32>(4294967295u, 0u, 0u, u_input.a) % vec4<u32>(32u))) << (~vec4<u32>(78558u, 4294967295u, u_input.e, 79236u) % vec4<u32>(32u))) ^ vec4<u32>(min(u_input.e, ~85320u), 4294967295u, ~0u, u_input.e), 21513u);
}

