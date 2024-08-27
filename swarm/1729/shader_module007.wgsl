struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: vec2<f32>,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: f32, arg_1: Struct_4, arg_2: f32, arg_3: i32) -> i32 {
    var var_0 = Struct_2(4294967295u);
    let var_1 = ~(~_wgslsmith_mod_vec2_u32(~(vec2<u32>(var_0.a, var_0.a) << (arg_1.d.wy % vec2<u32>(32u))), arg_1.d.wz));
    return -abs(arg_1.a);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<u32>) -> bool {
    global0 = ((u_input.a | ~(u_input.a & 4294967295u)) >> (0u % 32u)) != firstTrailingBit(_wgslsmith_div_u32(~(~0u), 51424u));
    global0 = true;
    global0 = !(!(!(!any(vec2<bool>(false, false)))));
    global0 = true;
    var var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-204f, 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(194f))), true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(379f, _wgslsmith_f_op_f32(sign(565f)))), -955f, _wgslsmith_div_f32(-869f, -138f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(430f, 547f), _wgslsmith_f_op_f32(2851f - -561f), _wgslsmith_f_op_f32(-1000f * -577f), _wgslsmith_f_op_f32(-1258f - -1264f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-218f, -112f, -1324f, 297f) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2322f, -999f, 1667f, -1472f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1621f, 601f, 596f, 161f), vec4<f32>(1473f, -514f, 907f, 1407f), true)), _wgslsmith_div_vec4_f32(vec4<f32>(200f, 1300f, 457f, -1013f), vec4<f32>(-345f, -218f, 1478f, 496f)))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-694f, -573f, 724f, -1321f), vec4<f32>(-1000f, -726f, 603f, 1998f))))))), 27677i <= func_2(_wgslsmith_f_op_f32(1468f + _wgslsmith_f_op_f32(select(-170f, -2046f, false))), Struct_4(2147483647i, _wgslsmith_f_op_vec2_f32(vec2<f32>(122f, 1358f) * vec2<f32>(-728f, 754f)), Struct_1(vec3<bool>(false, false, true), vec2<bool>(true, true), vec4<bool>(true, true, true, true)), arg_0), _wgslsmith_f_op_f32(floor(-2729f)), 16740i)));
    return !select(false, !all(vec2<bool>(true, true)) != true, false);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_5, arg_2: bool) -> u32 {
    global0 = arg_2;
    global0 = !(!(-_wgslsmith_dot_vec3_i32(vec3<i32>(-5545i, -66722i, -18302i), vec3<i32>(10189i, 13350i, -18140i)) != func_2(_wgslsmith_f_op_f32(-381f + arg_1.b.a), Struct_4(1i, vec2<f32>(arg_1.b.c.x, arg_1.b.a), arg_1.b.e, vec4<u32>(arg_1.b.d, 0u, arg_0.a, u_input.a)), _wgslsmith_f_op_f32(round(arg_1.b.c.x)), 1i)));
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -386f);
    let var_1 = ~abs(vec2<u32>(reverseBits(arg_0.a), 4294967295u));
    global0 = any(select(vec3<bool>(arg_2, false, false), vec3<bool>((i32(-1i) * -31120i) != _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, 2147483647i, -38742i), vec4<i32>(4861i, -1i, 2147483647i, -33273i)), arg_2 == arg_2, !func_3(vec4<u32>(0u, u_input.a, 35183u, 0u), vec2<u32>(arg_1.a, u_input.a))), select(vec3<bool>(true, arg_1.b.e.a.x, all(arg_1.b.b.yx)), arg_1.b.e.c.zxw, vec3<bool>(arg_1.b.e.c.x, arg_2, false))));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(vec4<i32>(1i, (-1i >> (u_input.a % 32u)) & (-5237i >> (1u % 32u)), _wgslsmith_mult_i32(3329i, 0i), 1i) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(16791u, 20200u), func_1(Struct_2(u_input.a), Struct_5(u_input.a, Struct_3(640f, vec3<bool>(true, true, false), vec2<f32>(-1930f, -297f), 9251u, Struct_1(vec3<bool>(false, false, false), vec2<bool>(true, false), vec4<bool>(false, false, true, false)))), false), u_input.a, u_input.a), _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, u_input.a, 0u, u_input.a), vec4<u32>(u_input.a, u_input.a, 68043u, u_input.a)), vec4<u32>(22805u, 0u, u_input.a, 64793u) ^ _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a, 12058u, u_input.a), vec4<u32>(u_input.a, 1u, u_input.a, u_input.a))) % vec4<u32>(32u)));
    var var_1 = vec4<u32>(0u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 4294967295u, 19691u), firstLeadingBit(vec3<u32>(u_input.a, 4294967295u, u_input.a))), 68245u), ~firstTrailingBit(~23448u)), 4294967295u, func_1(Struct_2(~firstTrailingBit(1u)), Struct_5(10887u, Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -227f), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-577f, 165f) - vec2<f32>(491f, -892f)), 0u, Struct_1(vec3<bool>(false, false, false), vec2<bool>(true, true), vec4<bool>(true, true, false, true)))), false));
    let x = u_input.a;
    s_output = StorageBuffer(42256i);
}

