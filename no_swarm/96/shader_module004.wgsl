struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_2) -> f32 {
    let var_0 = select(select(arg_2.c.c, arg_2.c.c | select(arg_2.c.c, true, arg_2.c.c), any(select(vec3<bool>(arg_0.c, arg_0.c, arg_2.c.c), !vec3<bool>(true, arg_2.c.c, false), vec3<bool>(arg_0.c, arg_2.c.c, arg_0.c)))), all(!(!(!vec4<bool>(arg_2.c.c, arg_0.c, arg_2.c.c, false)))), true);
    var var_1 = arg_0;
    var_1 = Struct_1(vec3<u32>(~var_1.b, 1u, 1u), ~arg_1.x | arg_2.c.b, all(vec3<bool>(true, _wgslsmith_dot_vec2_i32(vec2<i32>(1228i, -20990i), vec2<i32>(63159i, 1i)) <= ~u_input.a, (arg_2.c.a.x == var_1.b) | false)));
    let var_2 = arg_2;
    let var_3 = reverseBits(~var_1.a.yy) | abs(~(~(~var_2.c.a.zx)));
    return 2060f;
}

fn func_2() -> vec3<f32> {
    let var_0 = !all(!vec3<bool>(true, u_input.a > 1i, true));
    var var_1 = _wgslsmith_div_i32(u_input.a, ~(-u_input.a << (3889u % 32u)));
    var_1 = -18690i;
    let var_2 = Struct_2(7644u >> (0u % 32u), 1382f, Struct_1(~vec3<u32>(1u, 1u, 1u) >> (countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(643u, 1u, 0u), vec3<u32>(1u, 17227u, 44728u))) % vec3<u32>(32u)), select(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 34937u, 0u), vec3<u32>(80276u, 44164u, 1u)), 4294967295u), 41958u, (u_input.a | -2147483647i) > 42331i), true || all(vec2<bool>(true, false))));
    var_1 = _wgslsmith_dot_vec2_i32(-countOneBits(vec2<i32>(u_input.a, u_input.a)), -countOneBits(vec2<i32>(-1i, 0i)));
    return vec3<f32>(2200f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -444f), -2313f) + _wgslsmith_f_op_f32(func_3(var_2.c, ~var_2.c.a, Struct_2(firstLeadingBit(31218u), -1835f, var_2.c)))), var_2.b);
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1009f, -905f, -1391f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(2191f, -344f, -494f), vec3<f32>(-1000f, -1248f, -1985f), false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-357f, 1000f, 757f) + vec3<f32>(152f, -243f, -120f)) * vec3<f32>(-905f, 259f, -516f))) - _wgslsmith_f_op_vec3_f32(func_2())));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1217f, 1000f, 1134f, var_0.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1707f, var_0.x, var_0.x) * vec4<f32>(var_0.x, var_0.x, 184f, var_0.x)))) + vec4<f32>(_wgslsmith_f_op_f32(-543f - _wgslsmith_f_op_f32(f32(-1f) * -1345f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))), -360f, _wgslsmith_f_op_f32(var_0.x - 1000f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(967f, -1000f, var_0.x, var_0.x) + vec4<f32>(-1275f, 1290f, var_0.x, var_0.x))) - vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -833f), _wgslsmith_f_op_f32(exp2(var_0.x)))))));
    var var_2 = Struct_2(1u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.x + -1923f), var_1.x)))), Struct_1(vec3<u32>(~4294967295u, ~88319u, 4294967295u), _wgslsmith_dot_vec4_u32(min(firstLeadingBit(vec4<u32>(0u, 0u, 38916u, 14624u)), ~vec4<u32>(7487u, 1u, 17959u, 5621u)), _wgslsmith_div_vec4_u32(max(vec4<u32>(4294967295u, 61361u, 1u, 4294967295u), vec4<u32>(22489u, 1u, 61454u, 4294967295u)), ~vec4<u32>(1u, 16162u, 1u, 217u))), false));
    var_0 = var_1.www;
    var var_3 = _wgslsmith_f_op_vec2_f32(select(var_0.yz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x))), _wgslsmith_f_op_f32(var_2.b + _wgslsmith_f_op_f32(-813f - 425f)))), !vec2<bool>(var_2.c.c, false)));
    return ~_wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.a, reverseBits(var_2.c.b), ~var_2.c.a.x), var_2.c.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<u32>(63539u, func_1(), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~(~vec3<u32>(45130u, 0u, 21453u)))), 34022u, ~(~min(50991u, 35373u)) >= func_1());
    var_0 = Struct_1(var_0.a, var_0.a.x, all(vec3<bool>(select(true, any(vec3<bool>(var_0.c, true, false)), -11758i == u_input.a), var_0.c, !(!var_0.c))));
    var_0 = Struct_1(_wgslsmith_sub_vec3_u32(var_0.a, var_0.a), _wgslsmith_dot_vec3_u32(var_0.a, _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(var_0.a.x, var_0.b, 9544u), var_0.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, var_0.b, var_0.a.x), vec3<u32>(var_0.a.x, var_0.b, 32389u) & var_0.a, ~vec3<u32>(1u, 33359u, var_0.a.x)), vec3<u32>(var_0.b | 3894u, ~4294967295u, var_0.b | 73966u))), select(!(firstTrailingBit(-6063i) != (u_input.a ^ -16103i)), select(any(!vec3<bool>(true, var_0.c, true)), !(!var_0.c), true), false));
    let var_1 = Struct_1(_wgslsmith_clamp_vec3_u32(~(~(var_0.a | var_0.a)), abs(vec3<u32>(1u, ~var_0.a.x, 8907u)), ~var_0.a), ~_wgslsmith_mult_u32(3206u, _wgslsmith_sub_u32(var_0.a.x, var_0.b)), !(-582f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec3<u32>(4294967295u, var_0.a.x, 0u), var_0.b, var_0.c), vec3<u32>(var_0.b, var_0.b, var_0.a.x), Struct_2(4294967295u, -779f, Struct_1(vec3<u32>(var_0.a.x, 4294967295u, var_0.a.x), var_0.b, true)))))));
    var_0 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, ~4294967295u, vec4<i32>(-35253i, -firstLeadingBit(-2147483647i) >> (var_1.b % 32u), firstLeadingBit(2839i), _wgslsmith_div_i32(1i, -(~0i))), _wgslsmith_mult_u32(firstLeadingBit(13257u), _wgslsmith_dot_vec3_u32(min(var_1.a, vec3<u32>(25744u, var_1.b, var_0.a.x)), ~select(vec3<u32>(0u, var_1.b, var_0.b), var_1.a, vec3<bool>(var_1.c, var_1.c, var_1.c)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-123f, -138f, _wgslsmith_f_op_f32(-1252f * 1000f))))));
}

