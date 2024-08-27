struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: f32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec3<u32>(0u, 1u, 25343u), vec4<bool>(false, true, true, false), -471f, vec4<f32>(-212f, 174f, -1562f, 1000f)), Struct_1(vec3<u32>(4294967295u, 0u, 37085u), vec4<bool>(false, true, true, true), -1000f, vec4<f32>(1000f, -604f, 332f, -635f)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u), vec4<bool>(true, false, false, false), 272f, vec4<f32>(875f, 544f, -1328f, 826f)), Struct_1(vec3<u32>(13480u, 35294u, 58952u), vec4<bool>(false, true, false, true), -526f, vec4<f32>(-2151f, -1157f, -1344f, -1000f)), Struct_1(vec3<u32>(31276u, 0u, 4294967295u), vec4<bool>(false, true, false, false), 422f, vec4<f32>(-488f, -1320f, -167f, -314f)), Struct_1(vec3<u32>(1u, 33557u, 116697u), vec4<bool>(false, true, false, true), 412f, vec4<f32>(698f, -478f, -2803f, 371f)), Struct_1(vec3<u32>(0u, 46u, 53501u), vec4<bool>(true, true, true, false), 863f, vec4<f32>(-208f, 1222f, -393f, -1000f)), Struct_1(vec3<u32>(11773u, 1u, 43851u), vec4<bool>(false, false, false, false), 1020f, vec4<f32>(-1811f, -303f, -1512f, 546f)), Struct_1(vec3<u32>(1u, 123407u, 55076u), vec4<bool>(false, true, false, false), 1721f, vec4<f32>(2296f, -147f, -1139f, -900f)), Struct_1(vec3<u32>(3614u, 0u, 0u), vec4<bool>(false, true, false, false), -534f, vec4<f32>(771f, -1000f, -528f, -1508f)));

var<private> global1: array<vec2<bool>, 5>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 60826u, 21265u), vec3<u32>(44554u, 1u, 12925u))), _wgslsmith_add_u32(u_input.a, u_input.a), ~u_input.a), select(select(reverseBits(countOneBits(vec4<u32>(20354u, 41675u, u_input.a, u_input.a))), (vec4<u32>(4294967295u, 92804u, 28326u, 32721u) >> (vec4<u32>(u_input.a, 0u, 0u, u_input.a) % vec4<u32>(32u))) >> (vec4<u32>(4294967295u, u_input.a, u_input.a, 18223u) % vec4<u32>(32u)), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false))), vec4<u32>(52183u, ~0u, u_input.a, reverseBits(u_input.a | 4294967295u)), vec4<bool>(-u_input.b.x >= (i32(-1i) * -27957i), true, ~u_input.a >= 40449u, any(select(global1[_wgslsmith_index_u32(17694u, 5u)], vec2<bool>(true, false), true)))));
    let var_1 = _wgslsmith_add_vec4_u32(var_0, ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.x, u_input.a) >> (vec3<u32>(0u, 38143u, 23784u) % vec3<u32>(32u)), ~vec3<u32>(var_0.x, 56206u, 1u)), ~u_input.a & (3649u << (u_input.a % 32u)), 0u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(53604u, 26420u, 62573u), vec3<u32>(18810u, u_input.a, 12508u)), _wgslsmith_dot_vec4_u32(var_0, vec4<u32>(42598u, u_input.a, 21505u, 1u))));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1766f - 587f), _wgslsmith_f_op_f32(floor(107f)))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1250f, -466f) * vec2<f32>(1975f, -574f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 295f), vec2<f32>(-935f, 954f), vec2<bool>(true, true)))), vec2<f32>(_wgslsmith_f_op_f32(-1000f * 3815f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(abs(710f)), _wgslsmith_f_op_f32(1814f - 1084f)), vec2<f32>(-206f, _wgslsmith_div_f32(302f, 1659f))))));
    global1 = array<vec2<bool>, 5>();
    return var_1.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: bool) -> vec4<bool> {
    global0 = array<Struct_1, 10>();
    var var_0 = Struct_1(~select(~(~vec3<u32>(45745u, u_input.a, u_input.a)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 4294967295u, 16158u), vec3<u32>(u_input.a, u_input.a, u_input.a)), false), select(vec4<bool>(arg_1.x, _wgslsmith_f_op_f32(sign(-705f)) != -1719f, true, !(u_input.a > u_input.a)), select(!vec4<bool>(true, arg_2, arg_1.x, true), !select(vec4<bool>(arg_1.x, arg_2, arg_2, true), vec4<bool>(arg_2, false, false, arg_2), arg_2), !(u_input.c == u_input.c)), all(vec3<bool>(u_input.a == u_input.a, true, arg_1.x))), -1180f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-160f - arg_0.x))), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -310f)), _wgslsmith_f_op_f32(round(187f)))));
    var var_1 = var_0.b.xwy;
    var_0 = global0[_wgslsmith_index_u32(func_3(), 10u)];
    var_0 = global0[_wgslsmith_index_u32(u_input.a, 10u)];
    return vec4<bool>(true, true & !var_0.b.x, var_1.x, firstLeadingBit(0u) > _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 24076u, u_input.a, var_0.a.x), ~vec4<u32>(59342u, var_0.a.x, var_0.a.x, var_0.a.x)), 1u, u_input.a));
}

fn func_1() -> vec4<bool> {
    global1 = array<vec2<bool>, 5>();
    var var_0 = global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a & u_input.a, ~u_input.a), ~vec3<u32>(4294967295u, u_input.a, 4294967295u)), ~vec3<u32>(_wgslsmith_mult_u32(u_input.a, u_input.a), 1u, 48789u))), 10u)];
    return select(select(!vec4<bool>(!var_0.b.x, !var_0.b.x, false, true), func_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_0.d.wx), var_0.d.zw)), var_0.b.yx, !(var_0.d.x <= var_0.c)), var_0.b.x), var_0.b, var_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(0u, 34553u), vec2<u32>(u_input.a, 34525u)), vec2<u32>(~56343u, ~45523u)), ~(~(~4294967295u)), 1u, u_input.a);
    global1 = array<vec2<bool>, 5>();
    let var_1 = Struct_1(reverseBits(vec3<u32>(var_0.x, reverseBits(1u), var_0.x) | ~vec3<u32>(var_0.x, u_input.a, var_0.x)), !(!func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-438f, -915f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -107f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1321f * -154f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(805f, -307f, 1814f, -363f), vec4<f32>(226f, 1000f, -1729f, 330f))))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(2079f, 288f, -1223f, -853f), vec4<f32>(242f, 293f, 1000f, -748f)), vec4<f32>(1088f, -936f, -611f, -1000f)))))));
    var var_2 = func_2(var_1.d.xz, !(!vec2<bool>(var_1.b.x, !var_1.b.x)), all(global1[_wgslsmith_index_u32(u_input.a, 5u)])).ww;
    global1 = array<vec2<bool>, 5>();
    let var_3 = !select(!var_2.x, var_1.b.x, false);
    var var_4 = countOneBits(_wgslsmith_add_vec2_i32(select(vec2<i32>(1i >> (var_0.x % 32u), _wgslsmith_add_i32(27330i, u_input.b.x)), -countOneBits(vec2<i32>(u_input.c, u_input.c)), !vec2<bool>(true, var_1.b.x)), vec2<i32>(-1i) * -(u_input.b.zz << (vec2<u32>(0u, 0u) % vec2<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~8360u)) << (~(~max(u_input.a, 4294967295u)) % 32u), firstLeadingBit(countOneBits(-_wgslsmith_mod_vec2_i32(u_input.b.xz, u_input.d))), vec4<i32>(firstLeadingBit(abs(1i)), var_4.x, u_input.c | var_4.x, ~24656i));
}

