struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 15>;

var<private> global1: vec4<u32>;

var<private> global2: array<u32, 24> = array<u32, 24>(1u, 1u, 4294967295u, 9091u, 22689u, 38197u, 47468u, 0u, 20489u, 4294967295u, 13883u, 33383u, 14943u, 39605u, 92734u, 18148u, 61980u, 23984u, 76691u, 22917u, 59056u, 112u, 61550u, 1u);

var<private> global3: vec4<bool>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_1() -> vec4<bool> {
    return vec4<bool>(true, true, any(global3.wzw), global3.x);
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> vec4<i32> {
    var var_0 = (~(_wgslsmith_add_vec2_i32(arg_1.a.a.wy, vec2<i32>(arg_1.a.b, arg_1.a.a.x)) << ((global1.xy ^ global1.wz) % vec2<u32>(32u))) | arg_1.a.a.xx) >> (~(~(abs(global1.yw) ^ select(global1.ww, vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 24u)], global2[_wgslsmith_index_u32(25496u, 24u)]), global3.xw))) % vec2<u32>(32u));
    var var_1 = vec4<bool>(true, true, global3.x, select(all(!global3.ywy), _wgslsmith_f_op_f32(floor(1684f)) >= 701f, any(select(vec4<bool>(global3.x, arg_1.a.c, arg_1.a.c, global3.x), select(vec4<bool>(global3.x, arg_1.a.c, arg_1.a.c, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, arg_1.a.c, global3.x)), arg_1.a.c || arg_1.a.c))));
    let var_2 = 25399u;
    let var_3 = _wgslsmith_sub_vec3_i32(vec3<i32>(3935i, -_wgslsmith_mod_i32(select(-2220i, var_0.x, false), _wgslsmith_clamp_i32(var_0.x, arg_1.a.b, arg_1.a.b)), -2147483647i), -abs(arg_1.a.a.xwx) | vec3<i32>(var_0.x, ~arg_1.a.a.x, _wgslsmith_add_i32(-arg_1.a.b, -6933i)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.d - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.d))));
    return countOneBits(_wgslsmith_sub_vec4_i32(arg_1.a.a, -max(vec4<i32>(var_3.x, -1i, u_input.a.x, 0i), -arg_1.a.a)));
}

fn func_2() -> Struct_1 {
    global2 = array<u32, 24>();
    var var_0 = !vec3<bool>(global3.x, select(true, any(vec4<bool>(true, true, true, global3.x)), global3.x), false);
    global2 = array<u32, 24>();
    let var_1 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-471f)) - _wgslsmith_f_op_f32(trunc(264f))) + _wgslsmith_f_op_f32(max(513f, _wgslsmith_f_op_f32(f32(-1f) * -726f)))) <= _wgslsmith_f_op_f32(-1f));
    var var_2 = Struct_3(vec2<u32>(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.x, 24u)], 24u)], ~_wgslsmith_mult_u32(global1.x, _wgslsmith_sub_u32(1u, global1.x))), reverseBits(global1.wyy), -_wgslsmith_div_vec3_i32(max(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) | vec3<i32>(-2147483647i, u_input.a.x, -1i), ~vec3<i32>(-5438i, u_input.a.x, u_input.a.x)), -_wgslsmith_mod_vec3_i32(vec3<i32>(0i, u_input.a.x, u_input.a.x), vec3<i32>(38673i, u_input.a.x, -17988i))), vec4<u32>(0u, _wgslsmith_clamp_u32(reverseBits(66909u), ~min(85289u, 0u), 0u), ~global2[_wgslsmith_index_u32(global1.x, 24u)], abs(41790u)), Struct_1(_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), ~func_3(-1000f, Struct_2(Struct_1(vec4<i32>(u_input.a.x, -58027i, u_input.a.x, 1i), u_input.a.x, var_1, -544f)))), firstLeadingBit(-1i), !(4294967295u != ~global1.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(723f, -1000f) + _wgslsmith_f_op_f32(869f * 273f)), _wgslsmith_f_op_f32(f32(-1f) * -629f)))));
    return var_2.e;
}

fn func_4(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = ~(~_wgslsmith_clamp_vec2_u32(abs(_wgslsmith_clamp_vec2_u32(global1.yy, global1.xz, vec2<u32>(4294967295u, global1.x))), vec2<u32>(1u, global1.x), ~vec2<u32>(global2[_wgslsmith_index_u32(93097u, 24u)], global1.x) >> ((global1.yy << (global1.yx % vec2<u32>(32u))) % vec2<u32>(32u))));
    var var_1 = vec2<i32>(u_input.a.x, _wgslsmith_mod_i32(24521i, ~abs(i32(-1i) * -1i)));
    let var_2 = arg_0.a.a.wyz;
    var var_3 = Struct_5(select(!(!select(global3.yxw, vec3<bool>(arg_0.a.c, true, true), global3.x)), global3.zww, func_1().xww));
    var_1 = var_2.zz;
    return select(!(!select(vec4<bool>(true, false, false, global3.x), !vec4<bool>(false, global3.x, arg_0.a.c, false), !vec4<bool>(var_3.a.x, true, true, false))), select(select(!func_1(), !vec4<bool>(global3.x, var_3.a.x, false, false), any(var_3.a.xy)), !vec4<bool>(func_1().x, arg_0.a.c, func_1().x, global3.x), var_3.a.x), vec4<bool>((_wgslsmith_f_op_f32(max(261f, arg_0.a.d)) <= _wgslsmith_f_op_f32(-arg_0.a.d)) & false, func_2().c, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1();
    var var_0 = Struct_4(!global3.x, func_4(Struct_2(func_2())), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(544f, _wgslsmith_f_op_f32(min(444f, 1000f)))) + vec2<f32>(1f, 1f)));
    var var_1 = Struct_3(countOneBits(vec2<u32>(firstLeadingBit(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 40916u, 30644u, 1u), vec4<u32>(global2[_wgslsmith_index_u32(1u, 24u)], global1.x, global1.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12609u, 24u)], 24u)])) ^ 3898u)), _wgslsmith_div_vec3_u32(firstTrailingBit(_wgslsmith_mult_vec3_u32(global1.ywy >> (global1.zwz % vec3<u32>(32u)), select(vec3<u32>(36765u, global1.x, global1.x), global1.yzx, vec3<bool>(global3.x, false, true)))), ~global1.zwy), select(abs(firstLeadingBit(func_3(-201f, Struct_2(Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, -3796i, -2147483647i), u_input.a.x, var_0.b.x, var_0.c.x))).xzw)), ~_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, -2147483647i), vec3<i32>(34917i, -9989i, u_input.a.x)), ~vec3<i32>(-1613i, u_input.a.x, -1i)), any(global3.zy)), _wgslsmith_add_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global1.x >> ((global2[_wgslsmith_index_u32(global1.x, 24u)] << (global1.x % 32u)) % 32u), 24u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(abs(0u), 24u)], 24u)], ~_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(85995u, 24u)], 24u)], 24u)], 1100u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(61302u, 24u)], 24u)]), 31240u), max(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(31032u, 24u)] ^ 61073u, 24u)], _wgslsmith_dot_vec4_u32(vec4<u32>(55412u, global2[_wgslsmith_index_u32(15950u, 24u)], 1u, global1.x), vec4<u32>(global1.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)], global2[_wgslsmith_index_u32(1u, 24u)], global2[_wgslsmith_index_u32(4563u, 24u)])), 1u, global1.x), ~(vec4<u32>(global2[_wgslsmith_index_u32(global1.x, 24u)], 0u, 72470u, global1.x) << (vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(global1.x, 24u)], 44447u, global1.x) % vec4<u32>(32u))))), func_2());
    var_0 = Struct_4(false, select(vec4<bool>(true || (var_1.e.d >= 223f), all(vec2<bool>(var_1.e.c, var_1.e.c)), ~global2[_wgslsmith_index_u32(0u, 24u)] >= var_1.b.x, true), !vec4<bool>(all(global3.yz), any(vec3<bool>(var_0.b.x, true, true)), all(vec2<bool>(false, false)), var_1.e.c), _wgslsmith_sub_i32(-52948i, _wgslsmith_add_i32(u_input.a.x, -6748i)) < var_1.c.x), var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 5184u), var_1.b) & global2[_wgslsmith_index_u32(10765u, 24u)]), countOneBits(~(~_wgslsmith_sub_vec3_i32(var_1.e.a.zzz, var_1.c))), vec4<i32>(_wgslsmith_mod_i32(u_input.a.x, _wgslsmith_sub_i32(var_1.c.x, -var_1.e.a.x)), u_input.a.x, 1i, (-14027i << (reverseBits(var_1.b.x) % 32u)) | _wgslsmith_mult_i32(-236i, _wgslsmith_mult_i32(var_1.e.b, var_1.c.x))), ~min(vec3<i32>(_wgslsmith_clamp_i32(0i, -52101i, -2147483647i), var_1.c.x | -190i, countOneBits(-1613i)), firstLeadingBit(vec3<i32>(var_1.c.x, 17511i, 31378i)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(54989u, 0u, 13658u), global1.xyw) % vec3<u32>(32u))), countOneBits(_wgslsmith_add_u32(var_1.a.x, ~global1.x)));
}

