struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 26>;

var<private> global1: array<i32, 1>;

var<private> global2: array<bool, 12>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    global1 = array<i32, 1>();
    let var_0 = arg_0;
    global1 = array<i32, 1>();
    let var_1 = var_0.e.x ^ 31360i;
    global0 = array<vec3<bool>, 26>();
    return var_1;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: u32, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_1(global0[_wgslsmith_index_u32(~(~(~_wgslsmith_mult_u32(arg_2, 0u))), 26u)], _wgslsmith_add_vec4_u32(~(vec4<u32>(40029u, u_input.a, arg_2, 1u) & vec4<u32>(0u, 26805u, 1u, 15559u)) | firstTrailingBit(firstLeadingBit(vec4<u32>(1134u, 0u, 1u, u_input.b))), vec4<u32>(37625u, ~(~81882u), u_input.b, _wgslsmith_div_u32(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(94511u, 0u, 1u), vec3<u32>(36542u, 4294967295u, 8139u))))), vec4<i32>(arg_3, global1[_wgslsmith_index_u32(28786u, 1u)], -1i, -_wgslsmith_mod_i32(firstLeadingBit(31633i), ~global1[_wgslsmith_index_u32(u_input.b, 1u)])), arg_2, vec2<i32>(arg_3, abs(-2147483647i)));
    var var_1 = Struct_1(!vec3<bool>(arg_1.x, false, _wgslsmith_f_op_f32(-arg_0.x) <= arg_0.x), min(~vec4<u32>(~1u, arg_2, arg_2, firstLeadingBit(arg_2)), vec4<u32>(_wgslsmith_dot_vec4_u32(var_0.b, var_0.b) | 21239u, var_0.b.x, ~arg_2, _wgslsmith_dot_vec4_u32(var_0.b, vec4<u32>(29879u, 31640u, 30327u, 44588u)) | _wgslsmith_dot_vec2_u32(var_0.b.wy, vec2<u32>(4294967295u, arg_2)))), vec4<i32>(global1[_wgslsmith_index_u32(~1u, 1u)], _wgslsmith_add_i32(~_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(arg_2, 1u)], arg_3), _wgslsmith_add_i32(~2147483647i, 28098i)), reverseBits(var_0.e.x) ^ -(~var_0.e.x), -func_3(Struct_1(arg_1.xyw, vec4<u32>(4294967295u, 45959u, arg_2, arg_2), vec4<i32>(var_0.c.x, arg_3, 2147483647i, 1i), u_input.a, vec2<i32>(-2147483647i, -25691i)))), ~var_0.d, var_0.e);
    var var_2 = var_0;
    var var_3 = -2147483647i;
    var var_4 = !(!any(arg_1.zyx) | var_0.a.x);
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>) -> vec3<bool> {
    global2 = array<bool, 12>();
    var var_0 = vec2<bool>(arg_1.x, true);
    global2 = array<bool, 12>();
    global2 = array<bool, 12>();
    global0 = array<vec3<bool>, 26>();
    return global0[_wgslsmith_index_u32(1u, 26u)];
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    global1 = array<i32, 1>();
    global0 = array<vec3<bool>, 26>();
    global1 = array<i32, 1>();
    let var_0 = Struct_1(vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(5883u, 75501u), 36571u) | min(4294967295u, u_input.a), 12u)], any(func_4(func_2(vec4<f32>(arg_0.x, arg_0.x, 1065f, arg_0.x), vec4<bool>(true, false, false, global2[_wgslsmith_index_u32(76564u, 12u)]), u_input.b, 2147483647i), select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 12u)], false, global2[_wgslsmith_index_u32(1u, 12u)]), global0[_wgslsmith_index_u32(26376u, 26u)], global2[_wgslsmith_index_u32(1u, 12u)]))), select(select(global2[_wgslsmith_index_u32(31379u, 12u)], false, global2[_wgslsmith_index_u32(28588u, 12u)]) || true, true, !global2[_wgslsmith_index_u32(0u >> (0u % 32u), 12u)])), _wgslsmith_mod_vec4_u32(vec4<u32>((u_input.b ^ u_input.a) | ~u_input.b, 4294967295u << (_wgslsmith_add_u32(u_input.a, u_input.b) % 32u), _wgslsmith_mod_u32(countOneBits(76218u), u_input.b), ~(~57452u)), ~vec4<u32>(42710u, u_input.b, abs(63217u), u_input.a)), ~vec4<i32>(-1i, global1[_wgslsmith_index_u32(40562u, 1u)], global1[_wgslsmith_index_u32(u_input.b | ~u_input.a, 1u)], max(67295i, global1[_wgslsmith_index_u32(4294967295u, 1u)]) | 1i), max(_wgslsmith_div_u32(u_input.b, u_input.b), u_input.a), vec2<i32>(-1i, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, u_input.b << (0u % 32u)), 1u)] << (_wgslsmith_sub_u32(select(33660u, u_input.a, global2[_wgslsmith_index_u32(4294967295u, 12u)]), ~u_input.a) % 32u)));
    global2 = array<bool, 12>();
    return var_0;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: bool) -> i32 {
    global2 = array<bool, 12>();
    global1 = array<i32, 1>();
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-953f, 2255f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(729f, 1632f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(766f, 1008f)))))));
    let var_1 = 2263i;
    var var_2 = Struct_1(vec3<bool>(true, func_1(vec2<f32>(-144f, _wgslsmith_f_op_f32(select(var_0.x, var_0.x, arg_0.a.x)))).a.x, func_4(Struct_1(!arg_0.a, select(arg_0.b, arg_0.b, vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 12u)], arg_0.a.x, true)), arg_0.c, 26596u, ~vec2<i32>(34847i, 2147483647i)), func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -210f, var_0.x, 1313f), vec4<f32>(-1223f, var_0.x, var_0.x, -525f), global2[_wgslsmith_index_u32(arg_1.x, 12u)])), vec4<bool>(arg_2, arg_2, arg_2, true), ~40216u, _wgslsmith_div_i32(global1[_wgslsmith_index_u32(0u, 1u)], -3895i)).a).x), arg_0.b, arg_0.c, select(0u, 0u, arg_2), ~abs(reverseBits(~vec2<i32>(-19633i, -19931i))));
    return -_wgslsmith_div_i32(2147483647i, _wgslsmith_clamp_i32(func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2121f, var_0.x, var_0.x, var_0.x), vec4<f32>(316f, var_0.x, var_0.x, 1197f), vec4<bool>(var_2.a.x, false, arg_0.a.x, false))), select(vec4<bool>(arg_0.a.x, true, true, global2[_wgslsmith_index_u32(1u, 12u)]), vec4<bool>(false, true, global2[_wgslsmith_index_u32(arg_0.d, 12u)], arg_0.a.x), false), ~arg_0.b.x, -global1[_wgslsmith_index_u32(var_2.b.x, 1u)]).e.x, var_1, ~var_1));
}

fn func_6(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = select(vec2<bool>(!(!(!global2[_wgslsmith_index_u32(37777u, 12u)])), any(vec3<bool>(all(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 12u)], true, false, global2[_wgslsmith_index_u32(u_input.a, 12u)])), any(global0[_wgslsmith_index_u32(u_input.b, 26u)]), global2[_wgslsmith_index_u32(u_input.b | u_input.b, 12u)]))), vec2<bool>(true, global2[_wgslsmith_index_u32(~4294967295u, 12u)]), vec2<bool>(!global2[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(1u, 2935u), _wgslsmith_div_u32(1u, 2379u)), 12u)], ~(~u_input.b) <= _wgslsmith_mult_u32(0u, ~u_input.b)));
    global2 = array<bool, 12>();
    global2 = array<bool, 12>();
    let var_1 = abs(vec2<u32>(~(~(~u_input.a)), 4294967295u));
    return func_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1420f, 1000f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-705f, -574f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(766f, -1389f) - vec2<f32>(385f, 1555f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(839f, 1923f), vec2<f32>(-778f, -790f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-839f, _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(step(598f, -1179f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1308f, -1144f, -515f)) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(442f, -375f, 538f), vec3<f32>(-1924f, 1176f, 1000f))))))));
    let var_1 = func_6(vec3<i32>(global1[_wgslsmith_index_u32(45900u, 1u)], func_5(func_1(_wgslsmith_f_op_vec2_f32(var_0.zx - var_0.yy)), vec3<u32>(_wgslsmith_mod_u32(u_input.b, u_input.a), reverseBits(4294967295u), ~0u), !global2[_wgslsmith_index_u32(u_input.b, 12u)]), 2147483647i));
    let var_2 = var_1.c.yz;
    let var_3 = global2[_wgslsmith_index_u32(u_input.b, 12u)];
    global0 = array<vec3<bool>, 26>();
    var var_4 = ~(~_wgslsmith_sub_u32(~u_input.a, _wgslsmith_add_u32(var_1.b.x, var_1.b.x)));
    let var_5 = -func_6(var_1.c.yyz).c.wwx;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.x, 798f, global2[_wgslsmith_index_u32(var_1.b.x, 12u)])), _wgslsmith_f_op_f32(-var_0.x))), -1209f), var_1.b, abs(func_6(vec3<i32>(43872i, ~(-25694i), _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(12715u, 1u)], -9834i))).c.x));
}

