struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: f32,
    d: vec4<u32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7>;

var<private> global1: Struct_1 = Struct_1(1u, vec4<bool>(true, true, false, true), 1352f, vec4<u32>(0u, 10749u, 4294967295u, 9511u), true);

var<private> global2: Struct_1;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
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

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> vec4<bool> {
    global0 = array<u32, 7>();
    global2 = Struct_1(~global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global2.d.x, ~1u), 7u)], global2.b, -936f, vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(global2.d.yz, vec2<u32>(4294967295u, 0u)), _wgslsmith_add_vec2_u32(global1.d.xy, vec2<u32>(global1.d.x, 0u))), global1.d.zx), _wgslsmith_mult_u32(11908u, ~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(13095u, 7u)], 56577u)), ~49349u >> (1u % 32u), _wgslsmith_mod_u32(~(~global1.d.x), ~(~global1.d.x))), true);
    var var_0 = global1.b.xz;
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c, _wgslsmith_f_op_f32(floor(global2.c)), 252f, -1000f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.c, 1894f, global2.c, global2.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1082f, -523f, 1181f, -1960f)), !var_0.x)))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(385f, _wgslsmith_f_op_f32(-global2.c), _wgslsmith_f_op_f32(f32(-1f) * -371f), _wgslsmith_f_op_f32(ceil(-1389f)))))), global1.b));
    let var_2 = Struct_1(global2.a, global1.b, 1587f, global2.d, -_wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a), 0i) <= u_input.a);
    return !(!select(global2.b, select(!vec4<bool>(global1.e, false, global1.b.x, var_2.b.x), !global1.b, true), false));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> f32 {
    let var_0 = arg_1;
    global1 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -360f), _wgslsmith_f_op_f32(335f + 868f)))) - _wgslsmith_f_op_f32(global2.c * 175f));
    return arg_1.c;
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_1(global0[_wgslsmith_index_u32(33235u, 7u)], select(!arg_0, vec4<bool>(true, global2.e, !all(vec2<bool>(global2.e, global1.e)), true), !global1.b), _wgslsmith_f_op_f32(-1287f - _wgslsmith_f_op_f32(func_4(u_input.a, Struct_1(13212u, func_3(), global1.c, select(global2.d, vec4<u32>(global2.a, 27537u, global1.d.x, global1.a), global1.b), arg_0.x), global1.c, _wgslsmith_dot_vec2_u32(global2.d.ww, ~vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 7u)], global2.d.x))))), ~firstLeadingBit(countOneBits(global2.d)), global2.b.x);
    global2 = Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(348u, _wgslsmith_dot_vec4_u32(global1.d, vec4<u32>(10883u, 1u, var_0.d.x, var_0.d.x))), ~vec2<u32>(global2.d.x, var_0.d.x)), _wgslsmith_add_u32(_wgslsmith_add_u32(var_0.d.x, global2.a), 1u)), 7u)], select(arg_0, select(global1.b, var_0.b, !arg_0.x), select(select(vec4<bool>(true, false, arg_0.x, arg_0.x), select(vec4<bool>(global1.e, global1.b.x, true, var_0.b.x), global2.b, global2.e), vec4<bool>(false, global2.b.x, false, arg_0.x)), vec4<bool>(func_3().x, global2.b.x == global1.b.x, true && var_0.b.x, false), arg_0.x)), -1000f, vec4<u32>(~_wgslsmith_add_u32(65025u, firstTrailingBit(var_0.d.x)), global1.a, reverseBits(_wgslsmith_sub_u32(global1.d.x, 21991u)), ~_wgslsmith_mult_u32(0u >> (global2.d.x % 32u), global2.d.x)), global1.e);
    global1 = Struct_1(~(~global1.a), var_0.b, _wgslsmith_f_op_f32(func_4(-18043i >> (var_0.a % 32u), Struct_1(firstTrailingBit(~global1.a), !(!vec4<bool>(var_0.e, global2.e, global1.b.x, global1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.c, 1027f, true))), vec4<u32>(_wgslsmith_mod_u32(global2.d.x, global0[_wgslsmith_index_u32(5585u, 7u)]), reverseBits(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global1.d.x, 7u)], var_0.d.x, var_0.d.x, global1.d.x), vec4<u32>(4294967295u, 0u, 14629u, global2.d.x)), global1.a & 4294967295u), global2.b.x != true), _wgslsmith_f_op_f32(floor(global2.c)), 1u)), var_0.d, true);
    let var_1 = 0i;
    global2 = Struct_1(firstLeadingBit(max(var_0.d.x & global1.d.x, ~var_0.d.x)) | _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(global1.d, global2.d), ~global1.d), ~min(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(51579u, 7u)], 1u, global0[_wgslsmith_index_u32(53966u, 7u)]), vec4<u32>(52676u, 1u, global0[_wgslsmith_index_u32(2786u, 7u)], 63220u))), func_3(), -1334f, vec4<u32>(~1u, var_0.a, global0[_wgslsmith_index_u32(~18104u, 7u)], global1.d.x), global1.e);
    return Struct_1(4294967295u, !vec4<bool>(-1370f <= var_0.c, var_0.b.x, arg_0.x, all(func_3().wzx)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(914f + var_0.c) * _wgslsmith_f_op_f32(f32(-1f) * -949f)), global1.d, global1.b.x);
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_2;
    global0 = array<u32, 7>();
    global1 = func_2(vec4<bool>(true, true, !all(arg_1.b.xy), var_0.e));
    global1 = arg_2;
    let var_1 = Struct_1(~1u, vec4<bool>(func_3().x, func_2(!func_3()).e, true, any(func_2(func_2(global2.b).b).b.wzw)), global1.c, ~arg_2.d, true);
    return Struct_1(_wgslsmith_clamp_u32(global2.d.x, 26129u, ~(~(var_1.a ^ global2.d.x))), global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1816f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.c))))), select(_wgslsmith_sub_vec4_u32(vec4<u32>(global2.d.x, 1u, 1u, 4294967295u), arg_2.d), ~(var_0.d << (vec4<u32>(64891u, global0[_wgslsmith_index_u32(1u, 7u)], var_0.a, global1.d.x) % vec4<u32>(32u))), arg_2.b) | firstTrailingBit(abs(vec4<u32>(global1.d.x, arg_2.a, var_1.d.x, var_0.a))), var_1.b.x & func_2(!select(global1.b, global2.b, arg_1.b)).b.x);
}

fn func_6(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = vec2<i32>(firstTrailingBit(2147483647i), _wgslsmith_dot_vec2_i32(abs(select(vec2<i32>(u_input.a, -1i), vec2<i32>(-23370i, -12299i), arg_3.b.wx) | _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(1i, 2147483647i))), ~vec2<i32>(-2147483647i, u_input.a)));
    let var_1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.c, arg_2.c) + _wgslsmith_f_op_f32(-arg_3.c)) + _wgslsmith_f_op_f32(-global2.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -1490f)) - global1.c), _wgslsmith_f_op_f32(func_2(!vec4<bool>(global1.e, true, false, arg_3.b.x)).c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.c)) + arg_2.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.c, arg_2.c, arg_2.c) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-296f, arg_3.c, global2.c) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(137f, global1.c, 472f)))))));
    let var_2 = !func_5(select(vec3<bool>(false, true, false), vec3<bool>(arg_2.b.x, any(vec2<bool>(true, arg_0.b.x)), func_3().x), global2.e), Struct_1(arg_3.a, vec4<bool>(var_0.x > 2147483647i, false, !global1.e, true), arg_0.c, global1.d, global2.b.x), func_5(select(vec3<bool>(true, global1.b.x, arg_3.e), arg_2.b.xxy, vec3<bool>(true, arg_0.e, true)), func_5(!arg_0.b.zyy, func_2(arg_2.b), Struct_1(46114u, vec4<bool>(true, arg_2.e, false, true), arg_0.c, arg_3.d, false)), Struct_1(1u, !vec4<bool>(true, true, arg_3.e, arg_0.b.x), _wgslsmith_f_op_f32(-global1.c), vec4<u32>(5802u, global2.a, 51049u, 4294967295u) | arg_2.d, true))).e;
    var var_3 = arg_3;
    global0 = array<u32, 7>();
    return _wgslsmith_f_op_f32(-var_3.c);
}

fn func_1(arg_0: vec2<i32>, arg_1: f32) -> i32 {
    global1 = Struct_1(4294967295u, !global2.b, _wgslsmith_f_op_f32(func_6(func_5(vec3<bool>(false | global2.b.x, true, global2.e), func_2(global2.b), func_2(vec4<bool>(global1.e, false, global1.b.x, true))), ~reverseBits(global1.d.yy), func_5(select(select(vec3<bool>(global2.e, true, false), vec3<bool>(false, global1.b.x, true), true), vec3<bool>(global1.b.x, global1.b.x, global1.e), global1.b.zzw), Struct_1(8445u, global1.b, -345f, ~vec4<u32>(global1.d.x, 0u, 69129u, 0u), !global1.b.x), func_5(global1.b.wyz, Struct_1(global2.a, global2.b, global1.c, global2.d, global2.e), func_5(vec3<bool>(false, false, global2.b.x), Struct_1(51485u, global1.b, global2.c, global2.d, false), Struct_1(global1.a, global2.b, 297f, vec4<u32>(global2.a, 0u, global1.d.x, global1.d.x), global2.e)))), func_5(!global1.b.xzz, Struct_1(func_2(vec4<bool>(global1.e, global1.b.x, false, true)).a, global1.b, _wgslsmith_f_op_f32(ceil(global1.c)), ~global2.d, true), Struct_1(10751u, !vec4<bool>(true, true, false, global1.b.x), 2079f, abs(global1.d), true)))), ~_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(global2.d, vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 7u)], 4294967295u, 0u, 66040u)), global2.d) ^ global2.d, !(global2.e && all(!vec2<bool>(global1.e, false))));
    return _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(firstTrailingBit(~vec4<i32>(0i, 34181i, 1i, 2147483647i)), countOneBits(vec4<i32>(-29538i, 22911i, u_input.a, u_input.a) & vec4<i32>(u_input.a, arg_0.x, u_input.a, u_input.a))) ^ abs(~vec4<i32>(u_input.a, arg_0.x, -2147483647i, arg_0.x) & vec4<i32>(2147483647i, arg_0.x, arg_0.x, 0i)), -_wgslsmith_div_vec4_i32(select(vec4<i32>(0i, u_input.a, arg_0.x, -2147483647i), vec4<i32>(arg_0.x, u_input.a, -1i, -2147483647i), global1.b.x) << (abs(vec4<u32>(4294967295u, global1.d.x, 27818u, global1.d.x)) % vec4<u32>(32u)), ~vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a) ^ (vec4<i32>(1i, arg_0.x, 14992i, 1i) | vec4<i32>(-10547i, u_input.a, -1i, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 58347i;
    var var_1 = global1.b;
    let var_2 = !var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i, i32(-1i) * -func_1(vec2<i32>(-2147483647i, -478i), global2.c)), global1.a, 4927i, 8420u);
}

