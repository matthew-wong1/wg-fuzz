struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = Struct_2(arg_0.b, Struct_1(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.a, -1i, u_input.b, -1i) & vec4<i32>(u_input.c, arg_0.a.a, arg_0.a.a, u_input.a.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(-21324i, u_input.b, u_input.a.x, u_input.b), vec4<i32>(u_input.a.x, -2147483647i, arg_0.b.a, -34085i), vec4<i32>(u_input.c, 1i, arg_0.b.a, u_input.c)))), !any(vec3<bool>(arg_0.b.c.x, false, arg_0.b.c.x)), vec4<bool>(false, arg_0.b.c.x, false, any(arg_0.b.c)), firstTrailingBit(~(~arg_0.b.d))));
    var var_1 = !arg_0.a.b;
    let var_2 = true;
    let var_3 = vec2<i32>(-arg_0.b.a, ~abs(i32(-1i) * -2147483647i) | arg_0.a.a);
    var var_4 = vec4<i32>(1i & arg_0.a.a, -9196i, 0i, 1i);
    return var_4.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: u32, arg_3: vec3<f32>) -> vec4<u32> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_mult_i32(0i, u_input.a.x), true, vec4<bool>(any(vec3<bool>(true, false, false)) || true, all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true))), true || any(vec2<bool>(false, true)), false), 11277u), Struct_1(~_wgslsmith_div_i32(func_3(Struct_2(Struct_1(u_input.b, true, vec4<bool>(true, false, false, true), 0u), Struct_1(-1i, true, vec4<bool>(false, false, true, false), 0u))), func_3(Struct_2(Struct_1(u_input.b, true, vec4<bool>(false, true, true, true), u_input.d), Struct_1(-38462i, false, vec4<bool>(false, true, false, false), arg_1)))), true, select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), false), ~firstLeadingBit(arg_1)));
    var var_1 = vec4<u32>(select(min(16467u, _wgslsmith_mult_u32(0u, ~u_input.d)), u_input.d << (arg_1 % 32u), !(!(!var_0.b.c.x))), 34272u, 1u, 13514u);
    var var_2 = var_0;
    let var_3 = true;
    var_2 = var_0;
    return _wgslsmith_add_vec4_u32(~_wgslsmith_clamp_vec4_u32(firstTrailingBit(abs(vec4<u32>(var_2.b.d, var_0.a.d, arg_1, 4294967295u))), vec4<u32>(var_1.x, var_2.a.d, min(var_2.a.d, u_input.d), min(4294967295u, arg_2)), ~vec4<u32>(var_2.a.d, 1620u, var_1.x, var_2.b.d) ^ vec4<u32>(1u, 4294967295u, var_1.x, 4294967295u)), countOneBits(vec4<u32>(~_wgslsmith_mult_u32(46240u, 21922u), ~62057u, _wgslsmith_div_u32(arg_1, var_0.a.d) >> (73639u % 32u), _wgslsmith_mod_u32(0u, 44165u))));
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, 364f))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1476f, -3280f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1051f, 786f), vec2<f32>(1000f, 384f)))))));
    var var_1 = countOneBits(_wgslsmith_clamp_vec4_u32(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-343f, var_0.x, var_0.x) + vec3<f32>(-1277f, -1063f, var_0.x)), _wgslsmith_sub_u32(43620u, 7019u), min(0u, 4294967295u), vec3<f32>(845f, var_0.x, 317f)) ^ vec4<u32>(4294967295u | u_input.d, u_input.d, firstLeadingBit(u_input.d), 32511u), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.d, 0u, u_input.d, u_input.d)), vec4<u32>(u_input.d, 0u, 4294967295u, 36913u), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-290f, var_0.x, -1000f) * vec3<f32>(-1000f, var_0.x, var_0.x)), ~u_input.d, ~u_input.d, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 434f, var_0.x) - vec3<f32>(-166f, -939f, var_0.x)))), ~_wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.d, u_input.d, 1u, 0u), vec4<u32>(104367u, u_input.d, u_input.d, u_input.d), true), countOneBits(vec4<u32>(1u, 4294967295u, 27989u, u_input.d)))));
    var var_2 = 0i;
    var_2 = _wgslsmith_clamp_i32(19451i, -firstLeadingBit(u_input.a.x), -1i);
    var var_3 = vec4<i32>(u_input.a.x, 25086i, -(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -9706i, u_input.b), u_input.a)) ^ ~countOneBits(21367i)), u_input.c);
    return Struct_3(true, _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(u_input.c, var_3.x), _wgslsmith_sub_i32(u_input.b, var_3.x)), select(max(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_3.x, var_3.x), vec2<i32>(2147483647i, var_3.x), vec2<i32>(1i, u_input.c)), vec2<i32>(2147483647i, u_input.c)), -(~vec2<i32>(-35517i, 43712i)), _wgslsmith_f_op_f32(-var_0.x) >= _wgslsmith_f_op_f32(var_0.x - var_0.x)), vec2<i32>(_wgslsmith_dot_vec3_i32(-u_input.a, min(vec3<i32>(-2147483647i, u_input.b, 1i), vec3<i32>(u_input.a.x, 0i, 12288i))), var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-783f, -837f, _wgslsmith_f_op_f32(f32(-1f) * -1256f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-247f, 1116f, 1135f) + vec3<f32>(-1453f, -1000f, -137f)))))), var_0.a));
    let var_2 = Struct_1(_wgslsmith_sub_i32(firstLeadingBit(-8237i), 1i), all(vec3<bool>(1u == _wgslsmith_add_u32(4266u, u_input.d), any(vec2<bool>(var_0.a, false)), !var_0.a && (var_0.a && true))), vec4<bool>(var_0.a, true, var_0.a, 1274f <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-211f)), _wgslsmith_f_op_f32(exp2(var_1.x)))), u_input.d);
    let var_3 = -1044f;
    let var_4 = 626f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -759f));
}

