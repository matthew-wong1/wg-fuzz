struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: f32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29> = array<bool, 29>(false, false, false, true, true, true, false, false, true, true, true, true, true, true, true, false, true, true, true, false, true, false, false, false, false, false, false, false, false);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_1(!(!(!select(vec2<bool>(global0[_wgslsmith_index_u32(65215u, 29u)], global0[_wgslsmith_index_u32(u_input.b, 29u)]), vec2<bool>(false, true), global0[_wgslsmith_index_u32(38919u, 29u)]))));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * -440f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(855f))))));
    var_0 = Struct_1(!vec2<bool>(!global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, u_input.b), 29u)], false));
    let var_2 = reverseBits(vec4<u32>(1u, u_input.b, _wgslsmith_dot_vec3_u32(abs(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, u_input.b, 102331u), vec3<u32>(u_input.b, u_input.b, 99168u))), vec3<u32>(~32822u, u_input.b, u_input.b)), ~abs(49460u) >> (~u_input.b % 32u)));
    var var_3 = !vec3<bool>(global0[_wgslsmith_index_u32(~(~44150u), 29u)], all(var_0.a), true);
    return min(var_2.yw, _wgslsmith_add_vec2_u32(~var_2.wy, ~vec2<u32>(1u, 4294967295u)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>) -> vec3<bool> {
    var var_0 = Struct_4(vec4<u32>(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.b, 6778u, 66638u)), vec3<u32>(97193u, u_input.b, u_input.b)), _wgslsmith_add_u32(u_input.b, u_input.b), ~(~4294967295u), ~abs(countOneBits(u_input.b))), _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-1f)), ~(_wgslsmith_clamp_vec2_u32(min(vec2<u32>(3208u, u_input.b), vec2<u32>(u_input.b, u_input.b)), ~vec2<u32>(26931u, 1u), func_3()) | (vec2<u32>(5980u, 4294967295u) ^ ~vec2<u32>(u_input.b, 4294967295u))), vec2<u32>(firstLeadingBit(u_input.b), u_input.b));
    let var_1 = Struct_4(_wgslsmith_div_vec4_u32(~((vec4<u32>(var_0.d.x, var_0.d.x, var_0.a.x, var_0.a.x) >> (var_0.a % vec4<u32>(32u))) >> (vec4<u32>(0u, var_0.d.x, var_0.a.x, 0u) % vec4<u32>(32u))), ~countOneBits(~var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - arg_1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -497f))) + arg_1.x), ~vec2<u32>(~_wgslsmith_mult_u32(32121u, var_0.d.x), u_input.b), _wgslsmith_mult_vec2_u32(vec2<u32>(countOneBits(u_input.b), ~1u), var_0.c));
    var_0 = var_1;
    var_0 = var_1;
    let var_2 = arg_1.yy;
    return select(select(select(vec3<bool>(true, true, true), !vec3<bool>(true, arg_0.a.x, false), select(!vec3<bool>(true, false, arg_0.a.x), select(vec3<bool>(false, false, true), vec3<bool>(arg_0.a.x, false, arg_0.a.x), global0[_wgslsmith_index_u32(var_0.d.x, 29u)]), any(arg_0.a))), !vec3<bool>(false, global0[_wgslsmith_index_u32(~75330u, 29u)], all(vec3<bool>(true, false, arg_0.a.x))), arg_0.a.x), vec3<bool>(!arg_0.a.x, false, all(vec3<bool>(false, true, true))), select(!select(vec3<bool>(true, true, global0[_wgslsmith_index_u32(var_1.d.x, 29u)]), vec3<bool>(global0[_wgslsmith_index_u32(76840u, 29u)], arg_0.a.x, false), all(vec4<bool>(arg_0.a.x, true, false, global0[_wgslsmith_index_u32(u_input.b, 29u)]))), vec3<bool>(false, _wgslsmith_f_op_f32(trunc(var_1.b)) > var_2.x, !(!global0[_wgslsmith_index_u32(var_1.a.x, 29u)])), all(!arg_0.a)));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = Struct_4(_wgslsmith_mult_vec4_u32(vec4<u32>(9441u, u_input.b >> (107011u % 32u), _wgslsmith_sub_u32(1u, u_input.b), u_input.b) << ((~vec4<u32>(4294967295u, 0u, u_input.b, 1u) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 1u, 4294967295u, 22804u), vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.b, 81532u, 27090u), vec4<u32>(0u, 0u, u_input.b, 4294967295u)), vec4<u32>(_wgslsmith_clamp_u32(u_input.b, 33511u, 11125u), u_input.b, u_input.b | u_input.b, u_input.b))), arg_0.x, vec2<u32>(max(_wgslsmith_mod_u32(4596u, u_input.b) ^ u_input.b, ~_wgslsmith_dot_vec4_u32(vec4<u32>(5213u, 59210u, 13708u, 0u), vec4<u32>(54694u, 0u, 0u, 1u))), u_input.b), vec2<u32>(u_input.b, 4294967295u) & vec2<u32>(u_input.b, _wgslsmith_dot_vec4_u32(~vec4<u32>(36177u, 46011u, u_input.b, 0u), vec4<u32>(98094u, u_input.b, 19694u, u_input.b))));
    let var_1 = _wgslsmith_mult_u32(~u_input.b, func_3().x);
    var_0 = Struct_4(vec4<u32>(0u, var_0.a.x, _wgslsmith_mod_u32(u_input.b, firstTrailingBit(_wgslsmith_sub_u32(var_1, 26666u))), var_1), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1021f - _wgslsmith_div_f32(-840f, _wgslsmith_f_op_f32(var_0.b - arg_0.x))), _wgslsmith_f_op_f32(max(160f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b + -1181f), -1696f)))), var_0.a.xy, (~var_0.a.xz << ((~vec2<u32>(1u, 88964u) << (~vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u))) ^ vec2<u32>(_wgslsmith_div_u32(~32903u, abs(u_input.b)), 4294967295u));
    var var_2 = select(firstLeadingBit(vec3<u32>(_wgslsmith_sub_u32(~51465u, u_input.b), _wgslsmith_div_u32(2899u, var_0.a.x) << (~var_0.c.x % 32u), ~(u_input.b & var_0.c.x))), abs((vec3<u32>(1u, 36542u, u_input.b) << (var_0.a.zyz % vec3<u32>(32u))) & ~_wgslsmith_add_vec3_u32(var_0.a.yxz, var_0.a.ywz)), true);
    var var_3 = global0[_wgslsmith_index_u32(u_input.b, 29u)];
    return Struct_2(_wgslsmith_mod_vec3_i32(vec3<i32>(select(_wgslsmith_add_i32(u_input.c.x, u_input.a), _wgslsmith_mult_i32(u_input.a, u_input.c.x), arg_2.x), reverseBits(5001i), u_input.a), vec3<i32>(~u_input.c.x, -8848i, u_input.c.x)), vec4<u32>(~(~(~var_1)), _wgslsmith_div_u32(_wgslsmith_clamp_u32(var_0.c.x, 4294967295u, _wgslsmith_mod_u32(1u, var_2.x)), 1567u), u_input.b, firstTrailingBit(~97129u)), !(!(!(!arg_2))), var_0.b, ~vec4<u32>(_wgslsmith_mod_u32(0u, firstTrailingBit(var_2.x)), ~0u, (var_0.a.x | var_2.x) >> (_wgslsmith_mult_u32(25838u, 0u) % 32u), var_1));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    var var_0 = false;
    var var_1 = Struct_4(~(arg_0.b | max(arg_0.e, func_4(vec2<f32>(1087f, arg_0.d), vec3<bool>(arg_0.c.x, true, false), arg_0.c).e)), arg_0.d, abs(select(~arg_0.e.yx, select(vec2<u32>(59400u, arg_0.e.x), arg_0.b.zz, arg_0.c.ww), func_4(vec2<f32>(1072f, 576f), arg_0.c.xxz, arg_0.c).c.yz) << (func_4(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.d, -291f), vec2<f32>(1000f, -1981f)), arg_0.c.xww, select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.b, 29u)], global0[_wgslsmith_index_u32(0u, 29u)]), vec4<bool>(arg_0.c.x, false, true, true), arg_0.c)).b.yy % vec2<u32>(32u))), _wgslsmith_mod_vec2_u32(abs(vec2<u32>(_wgslsmith_dot_vec2_u32(arg_0.b.yz, vec2<u32>(arg_0.e.x, u_input.b)), u_input.b)), ~arg_0.e.xz));
    var var_2 = 1506f;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d, 1000f) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-490f, -1393f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, arg_0.d))) - vec2<f32>(-1350f, arg_0.d)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d, -1000f) - vec2<f32>(var_1.b, -1888f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.d, arg_0.d), vec2<f32>(arg_0.d, arg_0.d)))))));
    var_2 = var_1.b;
    return arg_0;
}

fn func_1() -> f32 {
    let var_0 = ~firstTrailingBit(~select(vec2<u32>(53250u, 43430u), ~vec2<u32>(u_input.b, u_input.b), true));
    var var_1 = Struct_3(func_5(func_4(vec2<f32>(-886f, -576f), func_2(Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(80271u, 29u)], false)), vec3<f32>(891f, 663f, 860f)), select(!vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(u_input.b, 29u)]), !vec4<bool>(global0[_wgslsmith_index_u32(11447u, 29u)], false, false, true), true))), 351f, Struct_1(select(func_5(func_5(Struct_2(vec3<i32>(u_input.a, 1i, 2147483647i), vec4<u32>(var_0.x, 0u, 61513u, 1u), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 29u)], global0[_wgslsmith_index_u32(1u, 29u)], true, true), -661f, vec4<u32>(u_input.b, 33534u, 0u, var_0.x)))).c.zw, select(!vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 29u)], false), vec2<bool>(false, false), true), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 29u)], false), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 29u)]), u_input.a > u_input.c.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(766f, -867f, -141f, 1000f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1780f, 316f, 843f, -696f), vec4<f32>(-1000f, -1000f, -200f, 434f), global0[_wgslsmith_index_u32(u_input.b, 29u)]))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1()), -1149f, _wgslsmith_f_op_f32(f32(-1f) * -473f), _wgslsmith_f_op_f32(748f - -1000f)) + vec4<f32>(-832f, _wgslsmith_div_f32(584f, -467f), 496f, _wgslsmith_div_f32(-122f, -1027f)))));
    global0 = array<bool, 29>();
    var var_1 = !vec2<bool>(!any(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 29u)], true)), global0[_wgslsmith_index_u32(abs(~(15000u << (u_input.b % 32u))), 29u)]);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(max(var_0.x, 211f))));
    global0 = array<bool, 29>();
    let var_3 = 155f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_2) - _wgslsmith_f_op_f32(ceil(-325f)));
    let x = u_input.a;
    s_output = StorageBuffer(-4929i, _wgslsmith_f_op_f32(step(564f, var_0.x)), 497f, abs(firstLeadingBit(func_4(var_0.yz, !vec3<bool>(var_3, true, true), func_4(vec2<f32>(-1266f, 1052f), vec3<bool>(true, false, false), vec4<bool>(var_3, var_3, true, global0[_wgslsmith_index_u32(u_input.b, 29u)])).c).a.x)));
}

