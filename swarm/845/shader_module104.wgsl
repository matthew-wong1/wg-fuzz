struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<bool>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: Struct_2,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: f32,
    c: vec3<bool>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<i32, 7> = array<i32, 7>(-13511i, 63175i, -36314i, 18554i, 16453i, 2147483647i, i32(-2147483648));

var<private> global2: vec3<f32>;

var<private> global3: vec4<i32>;

var<private> global4: vec3<i32> = vec3<i32>(-35274i, -12385i, -1i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: bool, arg_3: vec3<u32>) -> u32 {
    global3 = _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(max(vec4<i32>(0i, 55002i, 84159i, global1[_wgslsmith_index_u32(arg_1, 7u)]), arg_0.c.a | arg_0.c.a), _wgslsmith_add_vec4_i32(~arg_0.e.a, abs(arg_0.c.a))), arg_0.e.a) | max(firstTrailingBit(~min(arg_0.c.a, arg_0.e.a)), max(~vec4<i32>(-52019i, 22115i, u_input.a.x, 2147483647i), vec4<i32>(15179i, i32(-1i) * -19833i, -2147483647i, -8300i | global3.x)));
    var var_0 = Struct_1(i32(-1i) * -16867i, u_input.a.x, vec4<bool>(!(!any(vec2<bool>(arg_2, true))), any(select(select(arg_0.c.b.c.xx, arg_0.c.b.d.zy, vec2<bool>(arg_2, false)), vec2<bool>(arg_2, arg_2), true)), arg_0.c.b.c.x, any(arg_0.c.b.c) | !all(arg_0.c.b.c.zyw)), select(vec3<bool>(all(vec2<bool>(false, arg_0.c.b.c.x)), true, (global4.x > -1i) && all(vec2<bool>(false, false))), arg_0.c.b.c.zyx, arg_0.c.b.d));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * 1621f), -2437f, 554f));
    var var_2 = arg_0.b.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(abs(var_1));
    return countOneBits(arg_1);
}

fn func_2(arg_0: vec2<f32>, arg_1: u32) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, 1459f, global2.x))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -727f, -1129f)))), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true))))));
    var var_1 = ~(~(~abs(vec2<u32>(20091u, 1u)))) ^ (~_wgslsmith_div_vec2_u32(max(vec2<u32>(4294967295u, arg_1), vec2<u32>(4294967295u, 0u)), countOneBits(vec2<u32>(arg_1, 1u))) ^ firstLeadingBit(vec2<u32>(func_3(Struct_3(vec4<u32>(10518u, global0.x, 95986u, 1u), vec2<i32>(-36794i, u_input.a.x), Struct_2(vec4<i32>(global4.x, 0i, global1[_wgslsmith_index_u32(13624u, 7u)], 58252i), Struct_1(global4.x, global1[_wgslsmith_index_u32(84568u, 7u)], vec4<bool>(true, true, false, false), vec3<bool>(false, true, false)), 1i), global0.x, Struct_2(vec4<i32>(-1i, global1[_wgslsmith_index_u32(49782u, 7u)], -2147483647i, u_input.a.x), Struct_1(-3544i, global3.x, vec4<bool>(true, true, false, true), vec3<bool>(true, false, false)), global3.x)), arg_1, false, vec3<u32>(1u, global0.x, global0.x)), 12080u)));
    var var_2 = -61892i;
    global3 = ~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, ~global1[_wgslsmith_index_u32(4294967295u, 7u)], reverseBits(global1[_wgslsmith_index_u32(4294967295u, 7u)]), global1[_wgslsmith_index_u32(var_1.x, 7u)]), vec4<i32>(~40291i, global4.x, _wgslsmith_mult_i32(u_input.a.x, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, global4.x, global3.x, 21133i), vec4<i32>(1i, u_input.a.x, u_input.a.x, 0i)))), ~global1[_wgslsmith_index_u32(min(~1u, ~32731u), 7u)], ~(-_wgslsmith_div_i32(1i, global4.x)), _wgslsmith_add_i32(17586i, _wgslsmith_add_i32(5574i, u_input.a.x)));
    let var_3 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-989f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(f32(-1f) * -247f)), -668f)))));
    return vec2<u32>(reverseBits(global0.x), 13123u);
}

fn func_4(arg_0: Struct_5, arg_1: f32, arg_2: vec3<f32>) -> Struct_1 {
    global2 = arg_2;
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-420f, 1855f), _wgslsmith_f_op_f32(-global2.x))), arg_1, -415f, _wgslsmith_f_op_f32(-arg_2.x))));
    let var_1 = arg_0.a;
    global2 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1515f), _wgslsmith_f_op_f32(146f - global2.x))), -2032f)), _wgslsmith_f_op_f32(ceil(var_0.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(959f, arg_2.x))) * _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(sign(448f)))))), _wgslsmith_f_op_f32(max(arg_1, -478f)));
    var var_2 = select(vec2<bool>(all(select(arg_0.d.c.xzw, vec3<bool>(false, true, arg_0.c.x), !arg_0.d.d)), !(!arg_0.c.x)), select(arg_0.c.xx, select(arg_0.c.xz, select(select(vec2<bool>(false, false), vec2<bool>(arg_0.d.d.x, arg_0.d.d.x), true), select(arg_0.d.c.xy, arg_0.d.d.xx, arg_0.d.c.zx), any(vec3<bool>(true, true, true))), !all(arg_0.d.c)), any(vec3<bool>(arg_0.c.x != true, all(vec3<bool>(arg_0.c.x, true, arg_0.d.c.x)), arg_0.c.x))), !all(arg_0.d.c.xzy));
    return arg_0.d;
}

fn func_1() -> vec4<bool> {
    global4 = global3.wxw;
    var var_0 = 0u;
    var var_1 = true;
    var var_2 = func_4(Struct_5(_wgslsmith_add_vec2_u32(~func_2(global2.zz, 0u), ~vec2<u32>(global0.x, 1u) ^ vec2<u32>(57917u, 88155u)), _wgslsmith_f_op_f32(ceil(-1000f)), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), all(vec2<bool>(true, true))), vec3<bool>(true, true, true), true), Struct_1(-_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(49220u, 7u)], -11399i, -2147483647i), _wgslsmith_mult_i32(-60517i, _wgslsmith_div_i32(3723i, global4.x)), vec4<bool>(true, true, true, all(vec2<bool>(true, false))), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true))), _wgslsmith_dot_vec2_i32(global4.yy, -_wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(global3.x, -1i)))), 844f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-579f, global2.x, global2.x)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global2.x, 639f)), global2.x), _wgslsmith_div_f32(_wgslsmith_div_f32(global2.x, global2.x), _wgslsmith_f_op_f32(abs(global2.x))), 704f)));
    var var_3 = var_2.c.x;
    return func_4(Struct_5(vec2<u32>(~27244u, ~44537u) << (firstTrailingBit(vec2<u32>(0u, global0.x)) % vec2<u32>(32u)), global2.x, select(var_2.d, !(!var_2.c.zzw), !vec3<bool>(var_2.d.x, true, var_2.c.x)), func_4(Struct_5(~vec2<u32>(global0.x, global0.x), _wgslsmith_f_op_f32(trunc(175f)), select(var_2.c.wyx, var_2.c.xwx, var_2.c.xwz), Struct_1(23251i, -3662i, var_2.c, var_2.c.yzy), _wgslsmith_div_i32(27531i, global4.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1553f, -218f, 237f) - vec3<f32>(global2.x, 324f, 896f)) - _wgslsmith_div_vec3_f32(vec3<f32>(global2.x, 137f, global2.x), vec3<f32>(global2.x, -1613f, -1086f)))), max(firstLeadingBit(-var_2.a), 4773i)), global2.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(442f, global2.x, -306f)))) + vec3<f32>(_wgslsmith_f_op_f32(max(global2.x, global2.x)), 570f, _wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-816f, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(sign(global2.x))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-918f, 878f, global2.x), vec3<f32>(global2.x, global2.x, 462f), var_2.c.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -830f, 607f)))), !func_4(Struct_5(vec2<u32>(global0.x, 10391u), -889f, vec3<bool>(true, true, false), Struct_1(-2147483647i, u_input.a.x, var_2.c, var_2.c.ywz), var_2.a), 839f, vec3<f32>(global2.x, global2.x, -318f)).d)))).c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(i32(-1i) * -38784i);
    global3 = (vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(vec4<i32>(-1483i, 2147483647i, global3.x, global3.x) << (vec4<u32>(0u, 15987u, 1u, 0u) % vec4<u32>(32u)), max(vec4<i32>(u_input.a.x, 1i, u_input.a.x, 33316i), vec4<i32>(global1[_wgslsmith_index_u32(global0.x, 7u)], global3.x, u_input.a.x, -16239i)))) >> (select(vec4<u32>(global0.x, global0.x & global0.x, ~global0.x, global0.x), max(~select(vec4<u32>(0u, 118484u, global0.x, global0.x), vec4<u32>(global0.x, global0.x, global0.x, 132487u), true), vec4<u32>(global0.x, 1u & global0.x, 60350u, global0.x)), func_1()) % vec4<u32>(32u));
    var var_1 = Struct_1(-16301i, global3.x, !(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true)), vec3<bool>(all(vec2<bool>(true, true)) | true, true, any(func_4(Struct_5(vec2<u32>(global0.x, 1u), 1323f, vec3<bool>(false, false, false), Struct_1(global3.x, -2138i, vec4<bool>(false, false, false, true), vec3<bool>(false, false, true)), global4.x), _wgslsmith_f_op_f32(1000f + global2.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(461f, 694f, global2.x) + vec3<f32>(1075f, -543f, global2.x))).c)));
    var var_2 = _wgslsmith_f_op_f32(max(1000f, global2.x));
    var var_3 = _wgslsmith_f_op_vec2_f32(select(global2.yz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.xx))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global2.xz, vec2<f32>(-393f, global2.x))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.x, -146f), vec2<f32>(154f, -318f), var_1.d.yz))))), vec2<bool>(false, func_1().x)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<i32>(countOneBits(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a)), -firstLeadingBit(var_1.b), _wgslsmith_mult_i32(i32(-1i) * -1825i, global3.x ^ global1[_wgslsmith_index_u32(global0.x, 7u)]))));
}

