struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: vec3<i32>,
    d: vec3<bool>,
}

struct Struct_5 {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: Struct_4,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
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

var<private> global0: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(vec2<u32>(1u, 4294967295u), 1u), Struct_2(vec2<u32>(4294967295u, 4294967295u), 1u), Struct_2(vec2<u32>(1u, 4294967295u), 4294967295u), Struct_2(vec2<u32>(2535u, 13631u), 109307u), Struct_2(vec2<u32>(1u, 1u), 0u), Struct_2(vec2<u32>(63245u, 0u), 0u), Struct_2(vec2<u32>(4294967295u, 87705u), 36117u), Struct_2(vec2<u32>(4294967295u, 4294967295u), 1u), Struct_2(vec2<u32>(106697u, 28167u), 1u), Struct_2(vec2<u32>(0u, 60405u), 0u), Struct_2(vec2<u32>(42256u, 58919u), 1u), Struct_2(vec2<u32>(1u, 4294967295u), 56720u), Struct_2(vec2<u32>(1449u, 27966u), 0u), Struct_2(vec2<u32>(37765u, 0u), 4294967295u), Struct_2(vec2<u32>(0u, 4294967295u), 1u), Struct_2(vec2<u32>(40235u, 4294967295u), 4294967295u), Struct_2(vec2<u32>(71739u, 14402u), 9165u), Struct_2(vec2<u32>(45923u, 21689u), 1u), Struct_2(vec2<u32>(50414u, 1125u), 0u), Struct_2(vec2<u32>(27846u, 4294967295u), 4294967295u), Struct_2(vec2<u32>(4294967295u, 1u), 1u), Struct_2(vec2<u32>(38372u, 1u), 12355u), Struct_2(vec2<u32>(0u, 1u), 10293u), Struct_2(vec2<u32>(79480u, 1u), 0u));

var<private> global1: array<vec3<u32>, 15>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_5) -> vec3<bool> {
    global1 = array<vec3<u32>, 15>();
    return vec3<bool>(arg_1.d.b > arg_1.d.b, false, true);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global1 = array<vec3<u32>, 15>();
    global0 = array<Struct_2, 24>();
    var var_0 = Struct_4(all(vec2<bool>(true, true)), _wgslsmith_div_f32(-422f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1761f))))), u_input.b.zww, !vec3<bool>(arg_0.a, true, true));
    let var_1 = global0[_wgslsmith_index_u32(~u_input.a.x, 24u)];
    var var_2 = vec2<bool>(arg_0.a, !func_1(Struct_1(true), Struct_5(7233u, min(u_input.a, u_input.a), -1300f, Struct_4(false, var_0.b, u_input.b.wwy, vec3<bool>(true, true, arg_0.a)), -1i)).x);
    return Struct_1(false);
}

fn func_3(arg_0: i32, arg_1: vec2<u32>) -> u32 {
    let var_0 = select(!vec2<bool>(arg_1.x <= ~arg_1.x, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(func_1(Struct_1(true), Struct_5(arg_1.x, u_input.a, -544f, Struct_4(true, 1000f, u_input.b.xyz, vec3<bool>(false, true, false)), -32805i)).yz, func_1(Struct_1(true), Struct_5(27285u, u_input.a, -792f, Struct_4(false, 455f, vec3<i32>(u_input.b.x, u_input.b.x, arg_0), vec3<bool>(true, true, true)), u_input.b.x)).yy, vec2<bool>(false, false))), true);
    let var_1 = reverseBits(vec2<i32>(-1i) * -reverseBits(vec2<i32>(u_input.b.x, arg_0))) & vec2<i32>(1i, u_input.b.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, _wgslsmith_f_op_f32(trunc(-202f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1103f, -1000f))), -607f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(563f, -148f, 1345f, -1125f) * vec4<f32>(128f, 326f, 849f, -798f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-987f, 731f, 509f, 1238f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1028f, 299f, 2568f)))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2388f, 846f, -461f, 1071f)))))))));
    var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 734f, var_2.x, -658f) + vec4<f32>(356f, 340f, var_2.x, var_2.x))))))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(621f + var_2.x), var_2.x, _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(-604f + -1058f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 674f, -1000f, 592f) * vec4<f32>(224f, var_2.x, -624f, 1000f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, 859f, -188f) + vec4<f32>(-1239f, var_2.x, var_2.x, var_2.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(816f, var_2.x, var_2.x, 273f) * vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x))))))));
    let var_3 = arg_0;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(false), Struct_5(select(~(~u_input.a.x), ~26672u, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true))), ~u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-892f - _wgslsmith_f_op_f32(f32(-1f) * -286f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1678f * -2583f))), Struct_4((27440u >= u_input.a.x) || true, 1418f, ~(-vec3<i32>(-12684i, 56547i, u_input.b.x)), vec3<bool>(true, true, true)), -_wgslsmith_mult_i32(i32(-1i) * -46134i, select(u_input.b.x, -2147483647i, false))));
    let var_1 = func_1(func_2(Struct_1(all(vec4<bool>(false, var_0.x, var_0.x, var_0.x)))), Struct_5(func_3(~u_input.b.x | 16502i, u_input.a.xy >> (vec2<u32>(27215u, 1u) % vec2<u32>(32u))), firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u)) & vec4<u32>(firstLeadingBit(u_input.a.x), ~u_input.a.x, u_input.a.x, u_input.a.x), -1139f, Struct_4(any(func_1(Struct_1(false), Struct_5(9410u, vec4<u32>(58925u, u_input.a.x, u_input.a.x, u_input.a.x), 757f, Struct_4(false, 1871f, u_input.b.xxz, vec3<bool>(var_0.x, false, false)), -2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-795f - -931f)), select(vec3<i32>(u_input.b.x, -1i, -8812i), -u_input.b.wwz, !vec3<bool>(var_0.x, var_0.x, var_0.x)), !(!vec3<bool>(var_0.x, var_0.x, var_0.x))), _wgslsmith_sub_i32(reverseBits(_wgslsmith_dot_vec2_i32(u_input.b.wx, u_input.b.zw)), u_input.b.x << (0u % 32u))));
    global1 = array<vec3<u32>, 15>();
    var_0 = select(!vec3<bool>(var_1.x, false, !var_0.x), !var_1, !select(!(!var_1.x), true, any(!vec4<bool>(var_0.x, false, true, false))));
    let var_2 = var_1.x;
    var var_3 = Struct_3(u_input.b.zz, global0[_wgslsmith_index_u32(~(u_input.a.x & 44514u), 24u)], global0[_wgslsmith_index_u32(60640u, 24u)], func_2(func_2(func_2(Struct_1(var_2)))));
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(max(1u, ~_wgslsmith_sub_u32(_wgslsmith_div_u32(var_3.b.b, var_3.b.b), var_3.c.b)), ~var_3.b.b), 24u)];
    var var_5 = !var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(1467f);
}

