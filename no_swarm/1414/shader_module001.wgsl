struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12>;

var<private> global1: array<Struct_2, 20>;

var<private> global2: array<f32, 9>;

var<private> global3: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec4<f32>(-718f, 194f, -738f, -486f), vec2<i32>(i32(-2147483648), -1i), 1i), Struct_1(vec4<f32>(480f, -1467f, -454f, 182f), vec2<i32>(2147483647i, 0i), 2147483647i), Struct_1(vec4<f32>(-1549f, -462f, -804f, -1315f), vec2<i32>(0i, 3164i), i32(-2147483648)), Struct_1(vec4<f32>(1000f, -1000f, 621f, 1141f), vec2<i32>(i32(-2147483648), 863i), -1i), Struct_1(vec4<f32>(543f, -369f, -2026f, -943f), vec2<i32>(0i, -1i), 8119i), Struct_1(vec4<f32>(921f, 822f, 2091f, -367f), vec2<i32>(2147483647i, i32(-2147483648)), -1i), Struct_1(vec4<f32>(-754f, 1000f, -2009f, 684f), vec2<i32>(i32(-2147483648), 1i), 2147483647i), Struct_1(vec4<f32>(1635f, -735f, -328f, 148f), vec2<i32>(-6724i, -16886i), 1i));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> u32 {
    let var_0 = vec3<bool>(!((_wgslsmith_add_u32(u_input.c.x, 4294967295u) ^ u_input.c.x) == ~0u), false, all(select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(false, true)), any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true))))));
    global1 = array<Struct_2, 20>();
    global1 = array<Struct_2, 20>();
    var var_1 = vec4<u32>(u_input.c.x << (_wgslsmith_mod_u32(firstTrailingBit(u_input.c.x), countOneBits(34848u)) % 32u), ~(~_wgslsmith_clamp_u32(~4294967295u, _wgslsmith_add_u32(u_input.b.x, u_input.d), ~55u)), ~32074u, _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(~u_input.d & u_input.c.x, max(16341u, ~17348u), ~(98597u << (u_input.d % 32u)), ~_wgslsmith_div_u32(u_input.c.x, 26347u))));
    var var_2 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(abs(abs(0u)), 12u)] * -1000f) >= global2[_wgslsmith_index_u32(~(~(~(~0u))), 9u)];
    return abs(var_1.x);
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> bool {
    global0 = array<f32, 12>();
    var var_0 = Struct_2(1015f);
    global0 = array<f32, 12>();
    let var_1 = min(abs(func_3()), _wgslsmith_mod_u32(u_input.d, ~reverseBits(0u) ^ u_input.d));
    let var_2 = _wgslsmith_sub_u32(15823u, u_input.c.x);
    return true;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec3<f32>) -> i32 {
    let var_0 = u_input.c.wx;
    var var_1 = func_2(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_div_f32(arg_1.a, 243f))))), global2[_wgslsmith_index_u32(14728u, 9u)]);
    global1 = array<Struct_2, 20>();
    var var_2 = global3[_wgslsmith_index_u32(~4294967295u, 8u)];
    let var_3 = _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(abs(min(47999u, 15109u)), 9u)]));
    return u_input.a;
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: vec2<bool>, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1u, arg_1), 8u)];
    let var_1 = firstLeadingBit(-44473i);
    let var_2 = _wgslsmith_clamp_vec2_i32(~max(max(vec2<i32>(-47969i, -2147483647i), vec2<i32>(var_1, var_0.b.x)), select(select(vec2<i32>(-54762i, -50952i), var_0.b, arg_2), abs(arg_3.xy), vec2<bool>(arg_2.x, false))), var_0.b, _wgslsmith_clamp_vec2_i32(firstTrailingBit(~var_0.b), var_0.b, vec2<i32>(20730i, u_input.a ^ _wgslsmith_mod_i32(0i, 35576i))));
    let var_3 = Struct_1(_wgslsmith_div_vec4_f32(var_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(var_0.a.x - -467f), 1685f, 1000f))), abs(arg_3.zx), -41180i);
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(233f, var_0.a.x, -1006f, -1119f)))) + vec4<f32>(-216f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - global0[_wgslsmith_index_u32(~arg_1, 12u)]), _wgslsmith_div_f32(-217f, _wgslsmith_f_op_f32(var_0.a.x + global0[_wgslsmith_index_u32(1u, 12u)])))), vec2<i32>(-_wgslsmith_mod_i32(var_2.x, -arg_3.x), -_wgslsmith_mod_i32(-30664i, u_input.a) ^ 1i), _wgslsmith_sub_i32(1i, -func_1(var_3.a.xxz, global1[_wgslsmith_index_u32(4294967295u << (arg_1 % 32u), 20u)], _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, -970f, -1268f), vec3<f32>(var_0.a.x, var_0.a.x, global2[_wgslsmith_index_u32(0u, 9u)]))))));
    return global3[_wgslsmith_index_u32(~min(arg_1, ~42016u), 8u)];
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 8>();
    let var_0 = ~u_input.c.ww;
    var var_1 = 1i;
    var var_2 = func_4(global2[_wgslsmith_index_u32(var_0.x, 9u)], 4294967295u, vec2<bool>(!(!any(vec2<bool>(true, true))), true), vec4<i32>(func_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(40359u, 9u)], global2[_wgslsmith_index_u32(var_0.x, 9u)], global2[_wgslsmith_index_u32(1u, 9u)]) * vec3<f32>(global0[_wgslsmith_index_u32(62029u, 12u)], global2[_wgslsmith_index_u32(var_0.x, 9u)], -656f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 9u)], global2[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(var_0.x, 12u)])))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.d, abs(1u)), 20u)], _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-179f, 1000f, global0[_wgslsmith_index_u32(var_0.x, 12u)])))), -_wgslsmith_mult_i32(-u_input.a, u_input.a << (1u % 32u)), _wgslsmith_add_i32(-(~u_input.a), 30680i), 0i));
    var var_3 = vec3<i32>(var_2.b.x, var_2.b.x ^ _wgslsmith_dot_vec2_i32(vec2<i32>(~2147483647i, u_input.a & u_input.a), firstTrailingBit(-var_2.b)), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(func_4(func_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.a.x * global0[_wgslsmith_index_u32(4294967295u, 12u)]), _wgslsmith_f_op_f32(var_2.a.x * global0[_wgslsmith_index_u32(4294967295u, 12u)]))), 1u, select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))), vec4<i32>(2147483647i, u_input.a, -1i, -1i) >> (~vec4<u32>(5764u, 39553u, 4294967295u, var_0.x) % vec4<u32>(32u))).a.x, 32920u, vec2<bool>(true, true), _wgslsmith_add_vec4_i32(~vec4<i32>(var_2.b.x, u_input.a, 1i, -49217i), ~(~vec4<i32>(-74126i, var_2.c, u_input.a, 19799i)))).b.x, firstTrailingBit(~firstLeadingBit(vec3<i32>(u_input.a, var_2.b.x, -1i)) ^ vec3<i32>(~var_2.c, 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(17996i, var_2.c, -43335i, var_3.x), vec4<i32>(2066i, -17760i, var_3.x, 0i)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-889f, var_2.a.x))), global0[_wgslsmith_index_u32(func_3(), 12u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1023f))))), -(~select(0i & var_2.c, select(-11657i, u_input.a, true), true)), 7509u);
}

