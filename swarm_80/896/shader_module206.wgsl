struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<i32>,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec3<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
    c: bool,
    d: vec2<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14>;

var<private> global1: bool = false;

var<private> global2: array<vec4<i32>, 29> = array<vec4<i32>, 29>(vec4<i32>(48982i, 60537i, 10280i, 0i), vec4<i32>(-10094i, 2147483647i, 1i, -1i), vec4<i32>(0i, 2147483647i, 0i, 2147483647i), vec4<i32>(-60179i, 2147483647i, i32(-2147483648), -78752i), vec4<i32>(-5751i, -1662i, 49366i, 0i), vec4<i32>(2147483647i, -2309i, 19056i, -1i), vec4<i32>(-17243i, -1i, -764i, i32(-2147483648)), vec4<i32>(2429i, i32(-2147483648), 0i, 0i), vec4<i32>(-27746i, 1i, i32(-2147483648), 2147483647i), vec4<i32>(-23247i, -1i, -20340i, 28806i), vec4<i32>(2147483647i, -20969i, 1i, -1i), vec4<i32>(-17561i, 0i, 1i, -45938i), vec4<i32>(-1i, i32(-2147483648), 1i, 71788i), vec4<i32>(-23081i, 17819i, -900i, -1i), vec4<i32>(1i, -22455i, 1i, 0i), vec4<i32>(-73013i, 32150i, i32(-2147483648), 0i), vec4<i32>(20183i, i32(-2147483648), -13792i, -29126i), vec4<i32>(-45226i, 1i, -32613i, -10445i), vec4<i32>(2147483647i, -2734i, 38725i, 1i), vec4<i32>(13568i, 60317i, i32(-2147483648), i32(-2147483648)), vec4<i32>(17902i, -9899i, -16696i, -22087i), vec4<i32>(6149i, -708i, 0i, i32(-2147483648)), vec4<i32>(25039i, 0i, 2147483647i, -1i), vec4<i32>(-11019i, -1i, 1i, -1i), vec4<i32>(15460i, 4631i, 709i, -14068i), vec4<i32>(1i, -1i, 2147483647i, 63033i), vec4<i32>(-39816i, 1i, 2147483647i, -22369i), vec4<i32>(31029i, -58377i, -12787i, -38046i), vec4<i32>(-10983i, -15453i, 2147483647i, -38686i));

var<private> global3: array<bool, 4> = array<bool, 4>(true, false, false, true);

var<private> global4: Struct_5 = Struct_5(Struct_2(Struct_1(true, 35725i, -10204i), vec4<bool>(true, true, true, true), vec2<i32>(1i, 1i), Struct_1(false, 2147483647i, i32(-2147483648)), vec3<bool>(false, true, true)), 50346u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_5, arg_1: vec2<u32>) -> u32 {
    global3 = array<bool, 4>();
    var var_0 = _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(countOneBits(arg_1) >> (_wgslsmith_div_vec2_u32(vec2<u32>(14605u, arg_0.b), arg_1) % vec2<u32>(32u)), ~vec2<u32>(u_input.b, 18432u)), abs(vec2<u32>(arg_1.x, _wgslsmith_mult_u32(arg_1.x, global4.b)))) | select(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(arg_1, _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.b, 1u), arg_1)), arg_1), abs(vec2<u32>(~u_input.b, ~global4.b)), arg_0.a.b.zx);
    let var_1 = (true || (global0[_wgslsmith_index_u32(1u, 14u)] & arg_0.a.d.a)) != true;
    let var_2 = !global4.a.a.a;
    global3 = array<bool, 4>();
    return ~(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 22479u, global4.b, 4294967295u), vec4<u32>(0u, global4.b, 86403u, 0u) | vec4<u32>(1u, arg_1.x, 4294967295u, 0u)), 3053u) | var_0.x);
}

fn func_2() -> Struct_3 {
    var var_0 = select(global3[_wgslsmith_index_u32(firstTrailingBit(u_input.b) & 0u, 4u)], true, global4.b < 4294967295u);
    let var_1 = global4.a.d.c;
    var var_2 = ~u_input.a;
    var var_3 = global4.a;
    var var_4 = Struct_5(Struct_2(var_3.d, select(!vec4<bool>(var_3.a.a, global4.a.b.x, global3[_wgslsmith_index_u32(u_input.b, 4u)], global0[_wgslsmith_index_u32(15494u, 14u)]), vec4<bool>(true, !global0[_wgslsmith_index_u32(u_input.b, 14u)], true, false), true), _wgslsmith_add_vec2_i32(var_3.c, global4.a.c), global4.a.a, global4.a.e), _wgslsmith_div_u32(4294967295u, u_input.b));
    return Struct_3(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(~16602u, func_3(Struct_5(Struct_2(Struct_1(global4.a.b.x, -2520i, -2147483647i), vec4<bool>(global0[_wgslsmith_index_u32(0u, 14u)], false, true, var_3.e.x), vec2<i32>(var_4.a.d.c, var_4.a.c.x), Struct_1(global3[_wgslsmith_index_u32(global4.b, 4u)], u_input.a, -36869i), vec3<bool>(global0[_wgslsmith_index_u32(2729u, 14u)], true, var_4.a.a.a)), u_input.b), vec2<u32>(1u, 1u)), u_input.b, var_4.b), ~(~vec4<u32>(var_4.b, 8545u, 1u, global4.b)))), Struct_2(var_4.a.d, select(global4.a.b, vec4<bool>(true, var_3.a.a != false, true, true), select(var_4.a.b, !vec4<bool>(true, global0[_wgslsmith_index_u32(var_4.b, 14u)], true, global4.a.b.x), select(vec4<bool>(true, global0[_wgslsmith_index_u32(29889u, 14u)], global4.a.e.x, false), vec4<bool>(false, true, true, global3[_wgslsmith_index_u32(4294967295u, 4u)]), vec4<bool>(var_4.a.e.x, global4.a.e.x, var_4.a.d.a, var_4.a.e.x)))), vec2<i32>(var_4.a.a.c, global4.a.d.c), Struct_1(all(!var_3.e.xx), (u_input.a >> (42728u % 32u)) >> (global4.b % 32u), (0i | var_3.a.b) ^ var_3.d.c), vec3<bool>(false, 4294967295u <= abs(u_input.b), var_3.e.x)), select(!vec3<bool>(true, !global4.a.b.x, true), select(!vec3<bool>(var_4.a.b.x, global0[_wgslsmith_index_u32(var_4.b, 14u)], false), !var_4.a.b.wwy, any(select(vec2<bool>(global3[_wgslsmith_index_u32(1u, 4u)], var_4.a.b.x), global4.a.e.yx, false))), any(var_4.a.b.zy)), Struct_2(Struct_1(!(!var_4.a.a.a), abs(abs(u_input.a)), countOneBits(var_3.a.c) >> (min(4294967295u, 56028u) % 32u)), vec4<bool>(select(false, true, global0[_wgslsmith_index_u32(~29376u, 14u)]), all(!var_3.e), true, global4.a.e.x), vec2<i32>(-45060i, var_4.a.d.b | 33103i) & min(vec2<i32>(1i, -2147483647i), vec2<i32>(var_4.a.a.c, u_input.a)), Struct_1(all(var_3.b.zww) | !global0[_wgslsmith_index_u32(51087u, 14u)], global4.a.c.x, _wgslsmith_sub_i32(-global4.a.a.c, firstTrailingBit(var_3.d.b))), var_3.e));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2) -> bool {
    let var_0 = Struct_2(func_2().b.d, vec4<bool>(all(select(!vec4<bool>(true, arg_0.d.x, true, global3[_wgslsmith_index_u32(1u, 4u)]), arg_0.a.d.b, select(vec4<bool>(arg_1.d.a, global3[_wgslsmith_index_u32(arg_0.a.a.x, 4u)], false, true), vec4<bool>(global0[_wgslsmith_index_u32(64226u, 14u)], global0[_wgslsmith_index_u32(global4.b, 14u)], global3[_wgslsmith_index_u32(45180u, 4u)], arg_1.d.a), global3[_wgslsmith_index_u32(arg_0.a.a.x, 4u)]))), !any(select(arg_0.b.xzw, global4.a.b.wwy, global0[_wgslsmith_index_u32(arg_0.a.a.x, 14u)])), false, !global3[_wgslsmith_index_u32(1u, 4u)]), vec2<i32>(-global4.a.a.b, _wgslsmith_div_i32(0i, reverseBits(1i))), arg_1.a, arg_1.b.wyz);
    global3 = array<bool, 4>();
    global4 = Struct_5(global4.a, arg_0.a.a.x);
    var var_1 = arg_0.a;
    global1 = select(firstLeadingBit(_wgslsmith_add_u32(1u, var_1.a.x)) != arg_0.a.a.x, false, !any(global4.a.b));
    return arg_0.c;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec2<f32>) -> Struct_5 {
    global1 = func_4(Struct_4(func_2(), global4.a.b, true & global4.a.e.x, vec2<bool>(true, global0[_wgslsmith_index_u32(func_2().a.x, 14u)])), func_2().d);
    global3 = array<bool, 4>();
    global0 = array<bool, 14>();
    let var_0 = abs(vec3<u32>(u_input.b, ~u_input.b, _wgslsmith_div_u32(~(~44687u), u_input.b)));
    global2 = array<vec4<i32>, 29>();
    return Struct_5(func_2().d, ~var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<i32>, 29>();
    global4 = func_1(false, _wgslsmith_div_f32(-253f, 1730f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2337f, -708f) * vec2<f32>(1000f, 945f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(439f, 2097f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -145f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1029f)))), true)));
    global0 = array<bool, 14>();
    let var_0 = max(global2[_wgslsmith_index_u32(global4.b, 29u)], vec4<i32>(_wgslsmith_div_i32(-1i, 1i), 1i, u_input.a, _wgslsmith_sub_i32(-(~(-2147483647i)), -2147483647i)));
    let var_1 = true;
    let var_2 = vec4<f32>(532f, _wgslsmith_f_op_f32(f32(-1f) * -824f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-193f + _wgslsmith_f_op_f32(abs(1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(112f))))));
    global3 = array<bool, 4>();
    var var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_dot_vec3_i32(max(firstLeadingBit(var_0.wwy), var_0.xwx << (vec3<u32>(4294967295u, 4294967295u, global4.b) % vec3<u32>(32u))), max(vec3<i32>(global4.a.a.c, u_input.a, 6611i), var_0.zxz)), select(~var_3.a.x, ~countOneBits(4294967295u), func_2().d.d.a));
}

