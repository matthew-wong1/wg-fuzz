struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2 = Struct_2(true, -1371f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> u32 {
    return ~56821u;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec2<bool>) -> bool {
    global0 = Struct_1(vec4<i32>(-1i, ~arg_1.a.x, _wgslsmith_sub_i32(global0.d.x, global0.d.x), -1i) | ~_wgslsmith_clamp_vec4_i32(arg_1.a, _wgslsmith_mult_vec4_i32(global0.a, vec4<i32>(679i, arg_1.d.x, arg_1.a.x, -2147483647i)), abs(vec4<i32>(11101i, arg_1.d.x, 0i, 0i))), vec3<f32>(_wgslsmith_div_f32(global1.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1413f, 1000f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1248f + global0.b.x)))), _wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, 1792f, 947f)), -global0.d, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global0.c.yy)) * vec2<f32>(global1.b, arg_1.e.x))))));
    global1 = Struct_2(!global1.a, arg_2.x);
    global1 = Struct_2(arg_3.x, global1.b);
    let var_0 = Struct_2(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-210f - 529f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-279f)) * arg_2.x)));
    let var_1 = false;
    return !(~reverseBits(1u) == _wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(0u, u_input.d.x, 25768u, 39894u)), ~firstTrailingBit(vec4<u32>(1u, 0u, 72667u, u_input.d.x))));
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.d.x;
    let var_1 = func_4(~((49884u | func_3(Struct_1(vec4<i32>(-25414i, 1i, u_input.c.x, u_input.c.x), global0.b, global0.b, vec2<i32>(global0.a.x, u_input.b.x), global0.c.xy), global0.c.zy)) ^ reverseBits(u_input.d.x)), Struct_1(vec4<i32>(-u_input.a, 59318i, global0.d.x, _wgslsmith_mult_i32(u_input.b.x, -1i)) >> (~vec4<u32>(u_input.d.x, 0u, u_input.d.x, u_input.d.x) % vec4<u32>(32u)), global0.b, vec3<f32>(_wgslsmith_f_op_f32(-global0.e.x), -1615f, _wgslsmith_f_op_f32(-1946f * _wgslsmith_f_op_f32(global0.e.x * -446f))), -vec2<i32>(u_input.e, u_input.b.x) >> (~(~u_input.d.ww) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c.x, -2228f) - global0.c.zx) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.b, 2825f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1424f, global0.c.x), global0.b.yx, vec2<bool>(true, false))))))), _wgslsmith_f_op_vec3_f32(min(global0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.c * global0.c), _wgslsmith_f_op_vec3_f32(ceil(global0.b)))))), select(select(!(!vec2<bool>(global1.a, global1.a)), !select(vec2<bool>(global1.a, true), vec2<bool>(false, false), global1.a), any(select(vec2<bool>(global1.a, global1.a), vec2<bool>(global1.a, global1.a), vec2<bool>(global1.a, global1.a)))), !select(!vec2<bool>(global1.a, global1.a), !vec2<bool>(false, global1.a), vec2<bool>(true, true)), vec2<bool>(true, false)));
    let var_2 = any(vec3<bool>(all(vec3<bool>(select(global1.a, false, false), global1.a, !var_1)), true != all(vec2<bool>(var_1, false)), u_input.d.x > _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), max(u_input.d, vec4<u32>(9919u, u_input.d.x, u_input.d.x, u_input.d.x)))));
    let var_3 = Struct_1(global0.a, global0.c, global0.b, firstTrailingBit(select(firstLeadingBit(vec2<i32>(u_input.b.x, 0i) & vec2<i32>(-1i, -2147483647i)), vec2<i32>(19513i | global0.a.x, u_input.e | -1i), vec2<bool>(true, global1.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(246f)), _wgslsmith_f_op_f32(select(global0.b.x, global1.b, var_2))) - global0.c.xx)));
    global0 = var_3;
    return Struct_1(_wgslsmith_sub_vec4_i32(-var_3.a, -(~(vec4<i32>(58760i, u_input.c.x, var_3.a.x, u_input.a) | vec4<i32>(global0.d.x, 2147483647i, u_input.e, var_3.d.x)))), _wgslsmith_f_op_vec3_f32(-var_3.c), var_3.b, -(~vec2<i32>(var_3.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.a.x, u_input.c.x), u_input.c.xy))), vec2<f32>(240f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1572f + _wgslsmith_f_op_f32(select(-698f, global1.b, true))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(529f, global0.c.x)))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: f32, arg_3: bool) -> bool {
    global0 = func_2();
    global1 = Struct_2(arg_3, -1902f);
    global0 = func_2();
    global1 = Struct_2(arg_3 | !arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.x) * global0.c.x));
    var var_0 = arg_1;
    return arg_3;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.x, 1372f))) - _wgslsmith_f_op_vec2_f32(-arg_3.b.yz))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, 1071f)));
    global0 = func_2();
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1840f - var_0.x)) * _wgslsmith_f_op_f32(f32(-1f) * -674f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(795f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.b)) * _wgslsmith_div_f32(-1463f, 386f))), 1493f)), true));
    global0 = Struct_1(arg_0.a, _wgslsmith_f_op_vec3_f32(abs(arg_0.c)), arg_3.b, select(vec2<i32>(firstLeadingBit(-1i), _wgslsmith_dot_vec4_i32(arg_0.a, global0.a)), arg_0.d, select(arg_2, arg_2, !vec2<bool>(true, arg_1.a))) | (func_2().d >> (~(~u_input.d.zw) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1708f, -803f)));
    var var_2 = !(!(!arg_2));
    return Struct_1(vec4<i32>(~firstTrailingBit(~arg_3.d.x), 50935i, _wgslsmith_sub_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.x, -25828i), vec2<i32>(arg_0.a.x, -748i)), global0.d.x ^ (i32(-1i) * -1i)), select(-arg_3.a.x, global0.a.x, select(true, false, var_2.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b)) + _wgslsmith_f_op_vec3_f32(-func_2().b)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1497f, 900f, _wgslsmith_f_op_f32(ceil(709f))))))), arg_3.d, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(var_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<i32>(global0.d.x & 26091i, u_input.c.x, -1i, -(~global0.d.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-432f, -1243f, global1.b) - vec3<f32>(-730f, -369f, global0.b.x)) + _wgslsmith_f_op_vec3_f32(-global0.c)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, -358f, -147f) - vec3<f32>(global0.b.x, 941f, -361f)))) * global0.c), _wgslsmith_f_op_vec3_f32(global0.c - global0.c), firstTrailingBit(vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(global0.a.zw, global0.d)), vec2<f32>(global1.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b + -525f))))));
    let var_1 = Struct_1(vec4<i32>(firstLeadingBit(~14082i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, global0.a.x), _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.d.x, 0i, 26413i), var_0.a.wxw)), _wgslsmith_mult_i32(35442i, global0.d.x) ^ firstLeadingBit(17306i), 30849i) << (~(vec4<u32>(1875u, 4294967295u, u_input.d.x, 103148u) ^ ~u_input.d) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(min(global0.c, global0.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1.b + 983f), _wgslsmith_f_op_f32(f32(-1f) * -642f), -226f)) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2449f - -1131f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-670f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.e.x))))), vec2<i32>(_wgslsmith_add_i32(-7728i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(global0.a, vec4<i32>(-2147483647i, u_input.a, var_0.a.x, u_input.c.x)), 6401i, 37695i)), -29038i), var_0.e);
    global1 = Struct_2(any(select(vec2<bool>(global1.a, true), vec2<bool>(global1.a, global1.a), select(vec2<bool>(true, global1.a), vec2<bool>(false, global1.a), true))) || (!select(false, global1.a, global1.a) | false), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.b))));
    let var_2 = func_5(Struct_1(vec4<i32>(1i, _wgslsmith_clamp_i32(-u_input.e, global0.a.x, 12414i), _wgslsmith_clamp_i32(var_0.a.x, max(0i, 0i), 16159i), (global0.d.x & u_input.c.x) ^ _wgslsmith_mod_i32(0i, 5302i)), vec3<f32>(_wgslsmith_f_op_f32(sign(global1.b)), _wgslsmith_f_op_f32(f32(-1f) * -630f), _wgslsmith_f_op_f32(ceil(-537f))), var_1.c, ~vec2<i32>(_wgslsmith_add_i32(-26280i, global0.d.x), countOneBits(-2147483647i)), var_1.b.yx), Struct_2(func_1(u_input.d.yx, ~u_input.d, _wgslsmith_f_op_f32(f32(-1f) * -253f), global1.a == false), func_2().c.x), vec2<bool>(global1.a & true, true), var_1);
    let var_3 = vec2<i32>(global0.a.x, ~(~(~_wgslsmith_mod_i32(var_0.a.x, var_1.a.x))));
    var var_4 = func_5(var_2, Struct_2(true, _wgslsmith_f_op_f32(-var_1.b.x)), select(vec2<bool>(true, true), !(!(!vec2<bool>(global1.a, true))), !any(vec2<bool>(false, true))), var_1);
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.x, firstTrailingBit(1i), 1i, _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(~u_input.c, countOneBits(vec3<i32>(var_3.x, var_3.x, 1i) ^ var_4.a.zyx)), -vec3<i32>(var_3.x, ~var_1.d.x, var_4.d.x ^ var_3.x)));
}

