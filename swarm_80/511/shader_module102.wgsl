struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec3<f32>,
    d: vec3<i32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: u32,
}

struct Struct_5 {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: Struct_4,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<bool, 12>;

var<private> global2: array<vec3<i32>, 27> = array<vec3<i32>, 27>(vec3<i32>(i32(-2147483648), 1i, 2147483647i), vec3<i32>(-29462i, 12451i, 22888i), vec3<i32>(i32(-2147483648), -12294i, 0i), vec3<i32>(-2107i, 55038i, 2147483647i), vec3<i32>(-5900i, -7637i, 1i), vec3<i32>(-21863i, i32(-2147483648), 0i), vec3<i32>(-6341i, 6484i, -28262i), vec3<i32>(15649i, 34242i, 2147483647i), vec3<i32>(1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(i32(-2147483648), -1i, -13867i), vec3<i32>(-27992i, 19371i, 1i), vec3<i32>(-31588i, 37789i, -1i), vec3<i32>(16488i, 21502i, -1i), vec3<i32>(2147483647i, -43361i, 13252i), vec3<i32>(1i, 2147483647i, i32(-2147483648)), vec3<i32>(0i, 1i, -1i), vec3<i32>(35648i, i32(-2147483648), -7504i), vec3<i32>(i32(-2147483648), 45231i, 537i), vec3<i32>(41474i, -36394i, 0i), vec3<i32>(48814i, 0i, 1i), vec3<i32>(-1i, -1i, -877i), vec3<i32>(0i, -59150i, 2147483647i), vec3<i32>(-1i, 0i, -31164i), vec3<i32>(14978i, -1i, 0i), vec3<i32>(-1i, -24776i, -12833i), vec3<i32>(2147483647i, 38050i, -10249i), vec3<i32>(-1i, 80360i, 0i));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_1) -> f32 {
    let var_0 = vec4<bool>(global1[_wgslsmith_index_u32(0u, 12u)], any(vec4<bool>(!all(vec2<bool>(global1[_wgslsmith_index_u32(82167u, 12u)], global1[_wgslsmith_index_u32(1u, 12u)])), all(!vec2<bool>(global1[_wgslsmith_index_u32(0u, 12u)], true)), true, true)), global1[_wgslsmith_index_u32(~27673u, 12u)], all(select(select(select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 12u)], false), vec2<bool>(true, global1[_wgslsmith_index_u32(60675u, 12u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)])), !vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 12u)]), global1[_wgslsmith_index_u32(79035u, 12u)]), vec2<bool>(true || global1[_wgslsmith_index_u32(0u, 12u)], false), true)));
    global1 = array<bool, 12>();
    global2 = array<vec3<i32>, 27>();
    var var_1 = ~(~vec4<u32>(~global0.x, countOneBits(global0.x), ~global0.x, 1u));
    let var_2 = Struct_1(select(vec4<u32>(1u, 1u, _wgslsmith_mod_u32(0u, var_1.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, arg_2.a.x, 50488u, global0.x), vec4<u32>(1u, 0u, arg_2.a.x, var_1.x))), u_input.d, true), _wgslsmith_f_op_f32(476f * -126f), min(-_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-38337i, u_input.a.x, -31776i), global2[_wgslsmith_index_u32(76017u, 27u)]), -vec3<i32>(u_input.a.x, arg_0.x, arg_2.c.x)), ~arg_2.c));
    return arg_2.b;
}

fn func_2() -> vec2<bool> {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-192f, -865f)), _wgslsmith_f_op_f32(func_3(vec2<i32>(2147483647i, u_input.a.x), -364f, Struct_1(u_input.d, 152f, vec3<i32>(14362i, -1i, -45329i))))) + 902f)), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(552f, -1098f)) * vec2<f32>(_wgslsmith_f_op_f32(trunc(640f)), _wgslsmith_f_op_f32(func_3(u_input.a.wx, 924f, Struct_1(u_input.d, 194f, vec3<i32>(-2147483647i, 2147483647i, -45278i)))))), select(!select(vec2<bool>(global1[_wgslsmith_index_u32(57326u, 12u)], false), vec2<bool>(global1[_wgslsmith_index_u32(42984u, 12u)], false), global1[_wgslsmith_index_u32(0u, 12u)]), vec2<bool>(any(vec3<bool>(global1[_wgslsmith_index_u32(global0.x, 12u)], global1[_wgslsmith_index_u32(global0.x, 12u)], global1[_wgslsmith_index_u32(global0.x, 12u)])), select(global1[_wgslsmith_index_u32(global0.x, 12u)], false, false)), !global1[_wgslsmith_index_u32(abs(global0.x), 12u)]), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 996f, -385f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1258f, 1178f, 657f), vec3<f32>(-1000f, 971f, 361f))))), ~vec3<i32>(2147483647i, reverseBits(2147483647i), -1i), -64520i), 4294967295u);
    let var_1 = Struct_5(_wgslsmith_f_op_f32(var_0.a + 1558f), _wgslsmith_f_op_vec3_f32(step(var_0.b.c, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0.b.c, var_0.b.c, vec3<bool>(true, global1[_wgslsmith_index_u32(global0.x, 12u)], false))) * vec3<f32>(929f, 894f, var_0.b.a.x)))))), global0.x & min(1u, var_0.c), var_0, true);
    global0 = vec3<u32>(var_0.c, 1u, ~u_input.d.x);
    return !select(vec2<bool>(all(vec4<bool>(true, var_0.b.b.x, var_0.b.b.x, false)), true), var_1.d.b.b, false);
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: u32, arg_3: bool) -> vec3<i32> {
    let var_0 = select(!(!(!func_2())), vec2<bool>(!arg_3, true), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(23003u, ~arg_2), 12u)]);
    var var_1 = vec3<bool>((i32(-1i) * -abs(u_input.a.x)) >= u_input.a.x, abs(u_input.a.x) != u_input.a.x, global1[_wgslsmith_index_u32(~(reverseBits(1u) >> (_wgslsmith_add_u32(1u, 1u) % 32u)), 12u)]);
    var var_2 = vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i | _wgslsmith_mod_i32(2147483647i, min(~(-7939i), 0i | u_input.a.x)));
    let var_3 = Struct_5(arg_0, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -333f, -238f)))))), u_input.c, Struct_4(arg_1.x, Struct_2(_wgslsmith_f_op_vec2_f32(arg_1.xy - _wgslsmith_f_op_vec2_f32(-arg_1.zx)), vec2<bool>(var_1.x, !global1[_wgslsmith_index_u32(arg_2, 12u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_1.x, arg_1.x)), global2[_wgslsmith_index_u32(8060u, 27u)], var_2.x), abs((35176u << (global0.x % 32u)) & 6937u)), true);
    let var_4 = u_input.d;
    return vec3<i32>(-reverseBits(-var_2.x), abs(firstTrailingBit(-1i)), select(max(i32(-1i) * -var_2.x, u_input.a.x), max(_wgslsmith_clamp_i32(~u_input.a.x, 1i, var_2.x & -31274i), var_3.d.b.d.x), all(func_2())));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (global2[_wgslsmith_index_u32(~(~u_input.d.x | (global0.x >> (55050u % 32u))), 27u)] ^ vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-21447i, u_input.a.x, 2147483647i), vec3<i32>(u_input.a.x, 2147483647i, -1i)), func_1(788f, vec3<f32>(144f, 1425f, -597f), global0.x, true)), u_input.a.x, u_input.a.x)) & _wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(countOneBits(64514i), _wgslsmith_dot_vec2_i32(u_input.a.xy, u_input.a.zx), -u_input.a.x)), min(firstTrailingBit(vec3<i32>(u_input.a.x, -2147483647i, -2147483647i) ^ u_input.a.xwz), min(vec3<i32>(0i, 1i, -19356i), -vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x))));
    var_0 = _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, 0i, var_0.x), u_input.a.yzy), _wgslsmith_sub_vec3_i32(global2[_wgslsmith_index_u32(14889u, 27u)], vec3<i32>(0i, -26500i, var_0.x))) >> ((~vec3<u32>(global0.x, global0.x, u_input.c) >> (vec3<u32>(105601u, u_input.d.x, u_input.b) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<i32>((var_0.x & u_input.a.x) & _wgslsmith_add_i32(-1468i, var_0.x), 28605i & abs(u_input.a.x), var_0.x)) ^ (~u_input.a.xww >> (min(vec3<u32>(~47327u, ~1u, ~69949u), ~select(u_input.d.wxw, u_input.d.yzx, global1[_wgslsmith_index_u32(17738u, 12u)])) % vec3<u32>(32u)));
    global0 = u_input.d.yxx;
    var var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -991f), _wgslsmith_f_op_f32(round(1078f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1280f)))), select(vec2<bool>(true, true), !(!(!vec2<bool>(global1[_wgslsmith_index_u32(32594u, 12u)], global1[_wgslsmith_index_u32(1u, 12u)]))), false), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1771f, 617f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2277f * 2223f), _wgslsmith_f_op_f32(ceil(1908f)))), _wgslsmith_f_op_f32(floor(-1393f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1075f, 617f, -310f))))), -u_input.a.xxx, _wgslsmith_div_i32(_wgslsmith_sub_i32(-1832i, -26852i ^ var_0.x), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-1i, -14285i, u_input.a.x)), vec3<i32>(2147483647i, -2147483647i, 2889i)), u_input.a.x)));
    var_0 = vec3<i32>(abs(_wgslsmith_mod_i32(firstTrailingBit(2147483647i), _wgslsmith_mod_i32(-1i, var_1.d.x))), u_input.a.x, 46268i) << (u_input.d.wwx % vec3<u32>(32u));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1393f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -172f)));
    var var_3 = _wgslsmith_f_op_f32(max(var_1.c.x, 433f));
    let x = u_input.a;
    s_output = StorageBuffer(1675f);
}

