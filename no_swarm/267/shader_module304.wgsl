struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
    var var_1 = Struct_2(Struct_1(!vec3<bool>(true, !arg_0, arg_0), ~(~11647u), vec2<bool>(any(vec2<bool>(arg_0, false)), arg_0)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), reverseBits(10894u)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + vec2<f32>(1549f, -1185f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1199f, var_0.x) - vec2<f32>(276f, var_0.x))))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(2031f, 747f))));
    var_0 = vec2<f32>(var_2.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1066f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.x))))))));
    var var_3 = -54231i;
    return 48220u;
}

fn func_2() -> Struct_2 {
    let var_0 = ~(~16677u);
    var var_1 = vec3<u32>(~44193u, func_3(~28883u == firstTrailingBit(44898u)), 43053u) | ~vec3<u32>(~0u << (~var_0 % 32u), 75128u, ~14469u);
    var_1 = vec3<u32>(var_1.x, _wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(~56990u, max(var_1.x, 1u)), var_0), 54183u ^ var_1.x), 22954u);
    var var_2 = Struct_1(vec3<bool>(true, any(vec2<bool>(true, true)), !any(vec3<bool>(true, false, false))), var_1.x, vec2<bool>(true, !(_wgslsmith_f_op_f32(select(1481f, -946f, false)) >= _wgslsmith_f_op_f32(466f - 1351f))));
    var_2 = Struct_1(!(!vec3<bool>(!var_2.c.x, var_2.a.x, var_2.a.x)), ~var_0, vec2<bool>(1u == ~var_0, var_2.c.x));
    return Struct_2(Struct_1(select(select(!var_2.a, var_2.a, vec3<bool>(true, var_2.c.x, false)), vec3<bool>(false, var_2.a.x, true), select(vec3<bool>(true, var_2.a.x, false), vec3<bool>(true, false, var_2.c.x), !var_2.a.x)), _wgslsmith_div_u32(countOneBits(_wgslsmith_mod_u32(49062u, var_1.x)), _wgslsmith_mult_u32(var_1.x, var_2.b >> (var_2.b % 32u))), var_2.c), vec2<u32>(min(75685u, ~var_1.x) & var_0, var_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(571f, 813f))))))));
}

fn func_4(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = func_2();
    let var_1 = arg_0.a.a;
    let var_2 = Struct_2(var_0.a, func_2().b, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.x, _wgslsmith_f_op_f32(abs(-310f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(var_0.c)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(444f, -839f), vec2<f32>(160f, arg_0.c.x)) - func_2().c), arg_0.a.a.yz))));
    let var_3 = _wgslsmith_f_op_f32(ceil(arg_0.c.x));
    let var_4 = vec3<f32>(775f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1705f - var_2.c.x)) - var_0.c.x), _wgslsmith_f_op_f32(-arg_0.c.x));
    return !select(!vec4<bool>(949f >= var_3, var_0.a.a.x || false, var_2.c.x != var_3, true), !(!(!vec4<bool>(false, var_2.a.c.x, false, true))), !select(vec4<bool>(arg_0.a.c.x, false, true, var_0.a.c.x), vec4<bool>(false, false, var_2.a.a.x, var_0.a.a.x), !vec4<bool>(var_2.a.a.x, var_1.x, true, true)));
}

fn func_1(arg_0: f32) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-289f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(arg_0)))), -1000f, _wgslsmith_f_op_f32(-arg_0)), vec4<f32>(125f, 676f, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(677f + arg_0))))));
    var var_1 = !select(func_4(func_2()), vec4<bool>(func_2().a.c.x | true, all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))), any(vec3<bool>(true, true, true)), func_2().a.a.x), true);
    let var_2 = Struct_2(Struct_1(!(!var_1.wxx), ~8600u, vec2<bool>(true, true)), abs(~(~(~vec2<u32>(23116u, 0u)))), func_2().c);
    var var_3 = func_2();
    let var_4 = var_2;
    return ~vec3<u32>(~firstLeadingBit(firstLeadingBit(0u)), ~(~65009u) >> (func_2().a.b % 32u), ~_wgslsmith_div_u32(20631u, func_3(true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(1u, abs(1u));
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u) & vec3<u32>(2193u, ~_wgslsmith_mult_u32(32628u, 1u), ~firstTrailingBit(105819u)), _wgslsmith_mult_vec3_u32(~(~reverseBits(vec3<u32>(4294967295u, 17090u, 13744u))), func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 1133f)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1428f, 326f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1030f, 952f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-739f, 897f))))) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(558f, -602f)), _wgslsmith_f_op_f32(abs(-838f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1375f, -1051f)))))));
    var var_3 = reverseBits(vec4<u32>(min(3708u >> (1u % 32u), reverseBits(0u)), _wgslsmith_div_u32(1u, 1u), 43284u, ~(~45178u))) & (_wgslsmith_sub_vec4_u32(vec4<u32>(~34385u, 1u, 79718u, firstTrailingBit(48520u)), abs(vec4<u32>(0u, 1u, 12420u, 4294967295u))) ^ vec4<u32>(reverseBits(~34653u), ~0u, _wgslsmith_mod_u32(65782u, func_2().a.b), 4294967295u));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(3038f - _wgslsmith_f_op_f32(f32(-1f) * -245f)) - -403f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.x)) + -607f));
    let var_5 = -2147483647i;
    let var_6 = ~u_input.a.zz;
    let var_7 = vec4<u32>(4294967295u, reverseBits(abs(abs(71885u))), 0u, var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_6.x, ~(var_7 ^ vec4<u32>(var_3.x, _wgslsmith_add_u32(var_7.x, var_3.x), var_7.x & 36780u, ~var_7.x)), var_7.x, -abs(u_input.a.zzy) & ~(-u_input.a.xww), vec3<u32>(~95234u, var_3.x, abs(var_3.x) << (abs(func_1(-922f).x) % 32u)));
}

