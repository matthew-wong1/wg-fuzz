struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 9> = array<vec2<bool>, 9>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true));

var<private> global1: vec4<u32>;

var<private> global2: array<vec3<f32>, 27> = array<vec3<f32>, 27>(vec3<f32>(222f, -126f, -1008f), vec3<f32>(1522f, -925f, -747f), vec3<f32>(1164f, -354f, 177f), vec3<f32>(1453f, -1102f, 2048f), vec3<f32>(-172f, 1222f, 426f), vec3<f32>(939f, -631f, 812f), vec3<f32>(-1861f, 1189f, 1000f), vec3<f32>(-474f, 947f, 161f), vec3<f32>(237f, -945f, 1660f), vec3<f32>(-1000f, 1083f, 948f), vec3<f32>(-238f, 537f, 131f), vec3<f32>(1056f, -2163f, -303f), vec3<f32>(1508f, 1141f, 147f), vec3<f32>(481f, 2109f, -244f), vec3<f32>(325f, 1221f, 247f), vec3<f32>(482f, 2092f, -264f), vec3<f32>(1256f, -253f, -2169f), vec3<f32>(1696f, 296f, 938f), vec3<f32>(1492f, -249f, 918f), vec3<f32>(-1285f, 685f, 455f), vec3<f32>(-1064f, -179f, 607f), vec3<f32>(842f, 1872f, 602f), vec3<f32>(2010f, 955f, 2080f), vec3<f32>(479f, -864f, 1001f), vec3<f32>(-593f, 2649f, 412f), vec3<f32>(-1000f, 113f, -324f), vec3<f32>(-662f, -1308f, 221f));

var<private> global3: Struct_1 = Struct_1(1264f, vec2<f32>(325f, -1892f), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-2286i, -3961i));

var<private> global4: array<i32, 14>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> f32 {
    global2 = array<vec3<f32>, 27>();
    let var_0 = Struct_2(!(!global0[_wgslsmith_index_u32(75669u, 9u)]), max(-reverseBits(vec4<i32>(-34318i, u_input.c, -1i, -1i)), countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(u_input.d, 14u)], 30553i, -462i, u_input.c) << (vec4<u32>(12940u, arg_0, arg_0, global1.x) % vec4<u32>(32u)), vec4<i32>(1i, 1i, 2147483647i, u_input.c)))), 673f, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3.b.x, 341f)) - _wgslsmith_f_op_f32(-1806f * global3.a))), _wgslsmith_f_op_vec2_f32(select(global3.b, global3.b, true)), vec2<i32>(0i, -abs(-13216i)), _wgslsmith_sub_vec2_i32(abs(vec2<i32>(0i, 2147483647i)), _wgslsmith_sub_vec2_i32(global3.c, global3.d)) >> (global1.zy % vec2<u32>(32u))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d.b.x, _wgslsmith_f_op_f32(-var_0.c)) - global3.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global3.b.x), var_0.d.b.x)), countOneBits(vec2<i32>(~(~global3.c.x), firstLeadingBit(_wgslsmith_dot_vec2_i32(global3.d, vec2<i32>(1i, 13829i))))), ~(~firstLeadingBit(~global3.c)));
    global3 = Struct_1(-497f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(954f, 954f)) * _wgslsmith_f_op_vec2_f32(var_0.d.b - var_0.d.b)))), _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(var_0.d.c, vec2<i32>(var_0.b.x, 16561i)), vec2<i32>(min(0i & global3.c.x, max(44728i, 17849i)), u_input.c)), var_1.d);
    let var_2 = select(select(!vec3<bool>(513f != global3.a, arg_1.a | false, !arg_1.a), vec3<bool>(!select(var_0.a.x, false, arg_1.a), true, arg_1.a), !vec3<bool>(false, any(vec4<bool>(var_0.a.x, false, var_0.a.x, false)), true)), !select(!(!vec3<bool>(arg_1.a, arg_1.a, true)), vec3<bool>(true, false, any(vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x))), -823f >= _wgslsmith_div_f32(-811f, var_1.b.x)), select(vec3<bool>(select(true, var_0.a.x, var_0.a.x), false, false), select(select(!vec3<bool>(arg_1.a, false, arg_1.a), vec3<bool>(var_0.a.x, var_0.a.x, false), vec3<bool>(false, true, arg_1.a)), vec3<bool>(true, true, !var_0.a.x), vec3<bool>(!var_0.a.x, false, false)), vec3<bool>(arg_1.a, var_0.a.x, arg_1.a)));
    return var_0.c;
}

fn func_2(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec2<u32>) -> bool {
    global1 = max(reverseBits(~(vec4<u32>(arg_2.x, 46175u, 26487u, global1.x) >> (vec4<u32>(u_input.d, arg_2.x, arg_2.x, u_input.d) % vec4<u32>(32u)))) & min(_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(4294967295u, arg_2.x, 12452u, global1.x)), ~vec4<u32>(4294967295u, 1u, arg_2.x, arg_2.x)), (vec4<u32>(53931u, 1u, arg_2.x, global1.x) ^ vec4<u32>(arg_2.x, arg_2.x, 1u, 1u)) ^ (vec4<u32>(0u, 0u, 1u, arg_2.x) << (vec4<u32>(4294967295u, 29957u, global1.x, 4294967295u) % vec4<u32>(32u)))), _wgslsmith_add_vec4_u32(vec4<u32>(global1.x, 4294967295u, 36019u, ~11685u), _wgslsmith_clamp_vec4_u32(vec4<u32>(26718u, global1.x, 52720u, 1u), firstTrailingBit(vec4<u32>(arg_2.x, 26824u, global1.x, 6231u)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_2.x, 30834u, global1.x, 4294967295u), vec4<u32>(23623u, 0u, u_input.a, arg_2.x)))) >> (select(vec4<u32>(1u & u_input.d, abs(u_input.a), abs(arg_2.x), ~57081u), vec4<u32>(_wgslsmith_mult_u32(arg_2.x, 29786u), 0u, _wgslsmith_sub_u32(global1.x, arg_2.x), ~0u), true) % vec4<u32>(32u)));
    var var_0 = Struct_1(global3.a, vec2<f32>(_wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_f_op_f32(step(1718f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(0u, arg_0))))))), abs(vec2<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(global4[_wgslsmith_index_u32(1u, 14u)], -2147483647i, global4[_wgslsmith_index_u32(arg_2.x, 14u)], global3.c.x), vec4<i32>(global4[_wgslsmith_index_u32(4294967295u, 14u)], -2147483647i, global4[_wgslsmith_index_u32(u_input.d, 14u)], 5737i), vec4<bool>(arg_0.a, true, true, true)), firstTrailingBit(vec4<i32>(-4818i, 1i, global4[_wgslsmith_index_u32(u_input.a, 14u)], -14523i))), u_input.c)), global3.c);
    global4 = array<i32, 14>();
    global3 = Struct_1(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(471f, -946f))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, -912f) * vec2<f32>(var_0.b.x, global3.b.x)) - var_0.b)))), countOneBits(-firstTrailingBit(-vec2<i32>(global4[_wgslsmith_index_u32(4294967295u, 14u)], 1i))), ~vec2<i32>(var_0.d.x & -2147483647i, -40341i) & vec2<i32>(~(~global3.c.x), ~(-global3.d.x)));
    var var_1 = !(!(!vec3<bool>(arg_0.a, any(vec4<bool>(true, arg_1.x, true, true)), false)));
    return !(false | arg_0.a);
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: vec2<bool>, arg_3: vec4<bool>) -> vec4<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_3(_wgslsmith_mult_u32(select(0u, global1.x << (arg_0 % 32u), true), u_input.d), Struct_3(arg_3.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b.x, global3.b.x)), select(vec2<i32>(arg_1.x, _wgslsmith_sub_i32(44354i, _wgslsmith_sub_i32(1i, u_input.c))), vec2<i32>(min(global4[_wgslsmith_index_u32(~arg_0, 14u)], -global4[_wgslsmith_index_u32(32532u, 14u)]), -43133i), all(arg_3.zy)), vec2<i32>(global4[_wgslsmith_index_u32(u_input.a, 14u)], -1i));
    let var_1 = -var_0.d;
    global1 = ~(~(select(select(vec4<u32>(u_input.a, global1.x, 14676u, u_input.a), vec4<u32>(1u, 41430u, 68698u, 32247u), arg_3.x), vec4<u32>(arg_0, 1u, 14610u, 39343u), all(arg_2)) ^ ~(~vec4<u32>(arg_0, global1.x, 829u, 1u))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(4294967295u, 27u)]))), global2[_wgslsmith_index_u32(~(4294967295u ^ global1.x), 27u)]), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(global2[_wgslsmith_index_u32(24086u, 27u)], global2[_wgslsmith_index_u32(4294967295u, 27u)], true)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(global2[_wgslsmith_index_u32(70798u, 27u)], global2[_wgslsmith_index_u32(arg_0, 27u)], vec3<bool>(true, false, true))), _wgslsmith_div_vec3_f32(global2[_wgslsmith_index_u32(0u, 27u)], vec3<f32>(573f, 501f, global3.a)), arg_3.wzz)))));
    let var_3 = arg_1.xz;
    return ~countOneBits(~firstLeadingBit(~vec4<u32>(arg_0, 4294967295u, 63772u, u_input.a)));
}

fn func_1() -> Struct_1 {
    let var_0 = ~func_4(1u, _wgslsmith_div_vec3_i32(vec3<i32>(-1i, 31860i, global3.d.x), ~vec3<i32>(2147483647i, global4[_wgslsmith_index_u32(u_input.a, 14u)], u_input.c)) ^ reverseBits(-vec3<i32>(-55083i, 43121i, 1461i)), vec2<bool>(-1i >= u_input.c, ~u_input.d > global1.x), select(vec4<bool>(func_2(Struct_3(false), global0[_wgslsmith_index_u32(72874u, 9u)], vec2<u32>(0u, global1.x)), func_2(Struct_3(false), vec2<bool>(true, false), global1.wz), u_input.a > 20957u, all(global0[_wgslsmith_index_u32(4294967295u, 9u)])), vec4<bool>(true, true, true, true), true));
    global4 = array<i32, 14>();
    global3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b.x * _wgslsmith_f_op_f32(min(-1776f, -250f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a - global3.b.x) + 1398f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global3.b.x - 659f), _wgslsmith_f_op_f32(select(-1788f, global3.b.x, false))) - _wgslsmith_f_op_vec2_f32(min(global3.b, vec2<f32>(global3.a, 682f)))))), ~((_wgslsmith_sub_vec2_i32(global3.d, vec2<i32>(global4[_wgslsmith_index_u32(1u, 14u)], 2147483647i)) & firstTrailingBit(vec2<i32>(global4[_wgslsmith_index_u32(var_0.x, 14u)], -4241i))) ^ max(~vec2<i32>(0i, 17613i), global3.c)), ~global3.c);
    let var_1 = abs(countOneBits(~countOneBits(vec3<u32>(1u, 0u, 41964u) & global1.zzx)));
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(240f, _wgslsmith_f_op_f32(1217f - _wgslsmith_f_op_f32(func_3(u_input.a, Struct_3(false)))), global3.a)));
    return Struct_1(-1042f, vec2<f32>(_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(func_3(max(1u, 89766u), Struct_3(true)))), _wgslsmith_f_op_f32(round(-443f))), ~(~(~_wgslsmith_div_vec2_i32(global3.d, global3.d))), -vec2<i32>(select(~global4[_wgslsmith_index_u32(var_0.x, 14u)], _wgslsmith_dot_vec4_i32(vec4<i32>(global3.d.x, -18090i, global3.c.x, global4[_wgslsmith_index_u32(var_1.x, 14u)]), vec4<i32>(-2147483647i, 0i, global3.c.x, 39487i)), true), ~(-2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1173f;
    global3 = func_1();
    global0 = array<vec2<bool>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(global3.b.x)), _wgslsmith_div_u32(~0u, global1.x) >> ((_wgslsmith_add_u32(74316u, abs(global1.x)) << (_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, u_input.d) & global1.xz, global1.wy) % 32u)) % 32u), global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec4_u32(min(vec4<u32>(global1.x, 1u, 1u, u_input.a), firstLeadingBit(vec4<u32>(48118u, u_input.a, 0u, u_input.e))), ~(~vec4<u32>(global1.x, global1.x, 20964u, 26964u)))), 14u)], vec4<u32>(~max(global1.x, 1u) << (4294967295u % 32u), 0u, ~_wgslsmith_sub_u32(1u, abs(u_input.d)), 33198u), vec3<i32>(func_1().c.x, global4[_wgslsmith_index_u32(global1.x, 14u)], -global3.c.x));
}

