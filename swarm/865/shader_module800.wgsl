struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec3<bool>,
    d: vec3<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec2<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: u32,
    d: vec4<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 14>;

var<private> global1: array<i32, 14>;

var<private> global2: array<bool, 9> = array<bool, 9>(true, true, false, false, false, false, true, true, true);

var<private> global3: f32 = 533f;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec2<f32> {
    let var_0 = 1f;
    global3 = 1000f;
    let var_1 = Struct_1(vec4<u32>(_wgslsmith_div_u32(u_input.b.x >> (firstTrailingBit(u_input.b.x) % 32u), u_input.b.x), ~((u_input.c & 1u) << (_wgslsmith_clamp_u32(u_input.b.x, 4923u, 1u) % 32u)), u_input.c, u_input.b.x), global1[_wgslsmith_index_u32(~(~abs(1u)), 14u)], vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 9u)], global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(1u, u_input.c, 0u), 9u)] || global2[_wgslsmith_index_u32(~u_input.c, 9u)], global2[_wgslsmith_index_u32(u_input.c | ((u_input.c | u_input.c) & ~77943u), 9u)]), vec3<bool>(!any(select(vec4<bool>(false, global2[_wgslsmith_index_u32(1083u, 9u)], global2[_wgslsmith_index_u32(u_input.c, 9u)], true), vec4<bool>(global2[_wgslsmith_index_u32(28775u, 9u)], true, global2[_wgslsmith_index_u32(4294967295u, 9u)], global2[_wgslsmith_index_u32(1u, 9u)]), vec4<bool>(global2[_wgslsmith_index_u32(27365u, 9u)], global2[_wgslsmith_index_u32(69142u, 9u)], global2[_wgslsmith_index_u32(u_input.c, 9u)], global2[_wgslsmith_index_u32(u_input.c, 9u)]))), !(global2[_wgslsmith_index_u32(u_input.c, 9u)] | true), abs(u_input.b.x) != ~(u_input.c ^ 0u)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_0, 256f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0)) - _wgslsmith_div_f32(var_0, var_0))))));
    var var_2 = true;
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_div_u32(46065u, 79523u), 4294967295u, u_input.c, max(var_1.a.x, var_1.a.x)) << (~(~vec4<u32>(u_input.c, 0u, 0u, u_input.c)) % vec4<u32>(32u)), ~vec4<u32>(firstTrailingBit(max(0u, 4294967295u)), _wgslsmith_clamp_u32(var_1.a.x, var_1.a.x, u_input.b.x) & _wgslsmith_mod_u32(56586u, 107929u), 0u, firstTrailingBit(min(var_1.a.x, 1u)))), 14u)];
    return _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_3.b.c.e.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.b.c.e.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-553f))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.d.c.e.xz), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-419f, var_3.a.x), var_1.e.zz)))))));
}

fn func_2(arg_0: vec2<u32>) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(997f, -349f)))))) * vec2<f32>(1170f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1254f, 1039f))))));
    global0 = array<Struct_3, 14>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f + var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-163f * _wgslsmith_f_op_f32(var_0.x * var_0.x))), true)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1791f + var_0.x), var_0.x)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(exp2(var_0.x))));
    var_1 = var_0.x;
    return vec3<u32>(1u, 75896u, 0u);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: bool, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = select(select(arg_3.c.d.xx, !select(vec2<bool>(arg_3.c.c.x, global2[_wgslsmith_index_u32(arg_1.c, 9u)]), !arg_3.c.d.zz, true), select(select(vec2<bool>(global2[_wgslsmith_index_u32(28081u, 9u)], true), !arg_3.c.d.xy, select(arg_1.e.c.c.yx, vec2<bool>(true, global2[_wgslsmith_index_u32(arg_1.e.c.a.x, 9u)]), arg_3.c.d.xx)), !vec2<bool>(arg_3.c.d.x, true), true)), !select(arg_1.e.c.c.zz, !arg_3.c.d.zx, vec2<bool>(!arg_2, true)), arg_3.c.d.zx);
    var var_1 = Struct_3(arg_3.c.e.yx, arg_3, arg_1.e.c.a.zx, arg_1.e);
    var_1 = global0[_wgslsmith_index_u32(arg_0.x, 14u)];
    let var_2 = !(!vec4<bool>(false && all(vec4<bool>(arg_1.b, false, false, global2[_wgslsmith_index_u32(0u, 9u)])), arg_3.c.c.x, !arg_2, arg_1.e.c.d.x));
    var var_3 = select(vec3<u32>(99306u, select(~u_input.b.x >> (arg_1.e.c.a.x % 32u), ~_wgslsmith_clamp_u32(arg_3.c.a.x, 1u, 4294967295u), all(vec2<bool>(var_0.x, true)) || true), arg_0.x), arg_1.e.c.a.zwx, !arg_1.a);
    return select(var_2, !var_2, true);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: vec2<f32>) -> vec4<bool> {
    var var_0 = true;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2200f)), -1734f);
    var var_2 = all(vec3<bool>(true, !(arg_1.x <= ~38034u), false));
    global0 = array<Struct_3, 14>();
    var var_3 = ~(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 15581u, 34550u), arg_1), vec3<u32>(1u, ~arg_1.x, ~arg_1.x)) << (abs(max(~0u, arg_1.x & 47891u)) % 32u));
    return select(func_4(select(func_2(vec2<u32>(arg_1.x, u_input.c)) << ((arg_1 & arg_1) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(~arg_1, arg_1), !select(vec3<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 9u)], false), vec3<bool>(true, false, true), arg_2.wzy)), Struct_4(_wgslsmith_add_i32(12024i, 19081i) >= _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 0i), arg_0.x != arg_0.x, _wgslsmith_clamp_u32(~72824u, ~4294967295u, 70046u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, 608f, -1000f), vec4<f32>(arg_3.x, 175f, 1398f, -868f))), Struct_2(2147483647i, -u_input.a, Struct_1(vec4<u32>(1u, 17776u, 11513u, 29022u), 0i, vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 9u)], arg_2.x, arg_2.x), vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 9u)], true, true), vec3<f32>(arg_0.x, arg_0.x, -279f)))), any(select(arg_2.wwx, select(vec3<bool>(global2[_wgslsmith_index_u32(11332u, 9u)], global2[_wgslsmith_index_u32(arg_1.x, 9u)], global2[_wgslsmith_index_u32(19953u, 9u)]), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 9u)], global2[_wgslsmith_index_u32(u_input.c, 9u)], global2[_wgslsmith_index_u32(4294967295u, 9u)]), arg_2.wyy), true)), Struct_2(~firstTrailingBit(u_input.a.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(-44303i, 0i), vec2<i32>(40450i, -989i) << (vec2<u32>(u_input.b.x, 76332u) % vec2<u32>(32u)), ~vec2<i32>(u_input.a.x, global1[_wgslsmith_index_u32(arg_1.x, 14u)])), Struct_1(vec4<u32>(62315u, 1u, u_input.b.x, arg_1.x), -25236i, vec3<bool>(arg_2.x, arg_2.x, true), !arg_2.xzx, arg_0))), func_4(select(arg_1 >> (vec3<u32>(u_input.c, 0u, 1934u) % vec3<u32>(32u)), max(firstTrailingBit(arg_1), ~vec3<u32>(u_input.b.x, 41406u, 25681u)), _wgslsmith_f_op_vec2_f32(func_3()).x >= _wgslsmith_f_op_f32(-arg_0.x)), Struct_4(all(func_4(vec3<u32>(arg_1.x, 14605u, arg_1.x), Struct_4(global2[_wgslsmith_index_u32(arg_1.x, 9u)], arg_2.x, u_input.b.x, vec4<f32>(arg_0.x, -197f, arg_0.x, arg_0.x), Struct_2(global1[_wgslsmith_index_u32(arg_1.x, 14u)], vec2<i32>(15412i, global1[_wgslsmith_index_u32(arg_1.x, 14u)]), Struct_1(vec4<u32>(6952u, 89144u, 0u, u_input.b.x), -13597i, arg_2.xyw, vec3<bool>(global2[_wgslsmith_index_u32(0u, 9u)], arg_2.x, true), vec3<f32>(-2643f, 343f, -665f)))), true, Struct_2(35722i, vec2<i32>(-15266i, 0i), Struct_1(vec4<u32>(1u, 4294967295u, arg_1.x, 66585u), 1i, vec3<bool>(false, false, global2[_wgslsmith_index_u32(arg_1.x, 9u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 9u)], global2[_wgslsmith_index_u32(arg_1.x, 9u)], false), arg_0)))), !any(arg_2.zw), ~u_input.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-139f, -554f, arg_3.x, -758f) * vec4<f32>(-1436f, arg_3.x, arg_0.x, -1669f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-514f, 248f, arg_0.x, 2907f))), Struct_2(select(u_input.a.x, 2555i, true), u_input.a, Struct_1(vec4<u32>(u_input.b.x, 0u, u_input.c, 30349u), -16919i, vec3<bool>(global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(4294967295u, 9u)], false), vec3<bool>(false, arg_2.x, false), vec3<f32>(arg_0.x, 358f, -1941f)))), _wgslsmith_f_op_f32(arg_3.x + _wgslsmith_f_op_f32(floor(arg_3.x))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.x, arg_0.x))), Struct_2(54509i, u_input.a, Struct_1(vec4<u32>(35891u, arg_1.x, arg_1.x, u_input.b.x), i32(-1i) * -56836i, vec3<bool>(true, global2[_wgslsmith_index_u32(33962u, 9u)], false), select(arg_2.xww, arg_2.yyy, false), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-565f, 693f, 1991f), arg_0, arg_2.wyx))))), select(global2[_wgslsmith_index_u32(~0u, 9u)], global2[_wgslsmith_index_u32(u_input.c, 9u)] || any(arg_2), false));
}

fn func_5(arg_0: bool, arg_1: vec4<bool>) -> f32 {
    return 209f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = u_input.b ^ u_input.b;
    let var_2 = u_input.b;
    var var_3 = vec4<bool>(false, true, var_0, true);
    let var_4 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -404f) - _wgslsmith_div_f32(-288f, -319f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-114f)) + _wgslsmith_f_op_f32(abs(-934f)))), 726f), vec3<f32>(_wgslsmith_f_op_f32(func_5(false, select(vec4<bool>(true, global2[_wgslsmith_index_u32(26361u, 9u)], false, var_0), func_1(vec3<f32>(-120f, -704f, -1723f), vec3<u32>(19678u, var_2.x, u_input.b.x), vec4<bool>(false, global2[_wgslsmith_index_u32(43735u, 9u)], false, false), vec2<f32>(-293f, 1000f)), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-913f))), -1000f)));
    let var_5 = 4288u;
    var var_6 = Struct_2(u_input.a.x, -vec2<i32>(~u_input.a.x ^ -2147483647i, -(global1[_wgslsmith_index_u32(u_input.c, 14u)] ^ global1[_wgslsmith_index_u32(var_2.x, 14u)])), Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(u_input.c, var_2.x), u_input.c, ~var_1.x, var_5), abs(countOneBits(vec4<u32>(25037u, var_2.x, u_input.c, var_1.x)))), global1[_wgslsmith_index_u32(~(~reverseBits(1u)), 14u)], var_3.wyz, !select(!vec3<bool>(global2[_wgslsmith_index_u32(43068u, 9u)], true, false), var_3.zyx, vec3<bool>(var_0, global2[_wgslsmith_index_u32(4099u, 9u)], var_0)), vec3<f32>(var_4.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_4.x))), -343f)));
    let x = u_input.a;
    s_output = StorageBuffer(-1908f, ~var_6.c.a.ywz, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2314f, -1452f, 1004f, -536f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_4.x, 687f, var_4.x, var_6.c.e.x), vec4<f32>(var_4.x, var_4.x, var_4.x, -820f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_6.c.e.x, -945f, -823f, var_4.x))) - vec4<f32>(1680f, 1167f, var_4.x, 860f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-467f, var_4.x, _wgslsmith_f_op_f32(var_4.x * 625f), _wgslsmith_f_op_f32(select(var_6.c.e.x, 1182f, var_3.x)))))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec2_f32(func_3()).x, _wgslsmith_f_op_f32(1000f * _wgslsmith_div_f32(var_6.c.e.x, var_6.c.e.x)))), _wgslsmith_f_op_f32(var_4.x - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_6.c.e.x)))), 218f, _wgslsmith_f_op_f32(floor(1181f))), 1000f);
}

