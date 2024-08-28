struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<bool>,
    d: vec3<u32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1 = Struct_1(0u, true, vec4<bool>(true, true, true, false), vec3<u32>(1u, 0u, 68834u), vec3<f32>(-116f, -1075f, -1049f));

var<private> global2: array<u32, 13> = array<u32, 13>(0u, 4294967295u, 1u, 80644u, 11811u, 56481u, 40350u, 0u, 1u, 0u, 1u, 54936u, 0u);

var<private> global3: bool = true;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec3<u32> {
    let var_0 = ~_wgslsmith_dot_vec3_u32(global1.d, _wgslsmith_clamp_vec3_u32(select(_wgslsmith_div_vec3_u32(global1.d, global1.d), ~vec3<u32>(7814u, 24725u, arg_0.d.x), arg_0.c.zzx), ~arg_0.d & countOneBits(vec3<u32>(u_input.c.x, arg_1.a, 45754u)), select(abs(arg_1.d), ~u_input.c.xxw, !arg_1.c.x)));
    let var_1 = Struct_1(23030u, false, select(arg_1.c, global1.c, arg_1.c), arg_1.d, _wgslsmith_f_op_vec3_f32(sign(arg_0.e)));
    global2 = array<u32, 13>();
    let var_2 = 241f;
    let var_3 = vec2<i32>(u_input.d.x, u_input.d.x);
    return ~select(vec3<u32>(arg_1.a, _wgslsmith_sub_u32(u_input.c.x, 88309u) ^ global1.d.x, abs(4294967295u)), _wgslsmith_mod_vec3_u32(~u_input.b.yyw, reverseBits(_wgslsmith_add_vec3_u32(arg_1.d, vec3<u32>(arg_1.d.x, 4294967295u, global2[_wgslsmith_index_u32(55081u, 13u)])))), true);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = arg_0.x;
    var var_1 = ~(~_wgslsmith_mod_u32(_wgslsmith_mod_u32(~4294967295u, global2[_wgslsmith_index_u32(139567u, 13u)]), global1.a));
    var var_2 = Struct_1(u_input.b.x & abs(~max(4294967295u, 47042u)), global1.c.x, !global1.c, func_3(Struct_1(_wgslsmith_sub_u32(arg_1.x, global1.d.x), global1.b | !global1.b, vec4<bool>(all(vec4<bool>(false, global1.c.x, false, global1.c.x)), global1.b || false, global1.b, true), arg_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.e - global1.e))), Struct_1(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.c.x, global2[_wgslsmith_index_u32(45582u, 13u)], arg_1.x), 1u), false, select(vec4<bool>(false, true, global1.c.x, global1.c.x), global1.c, select(vec4<bool>(global1.b, true, global1.c.x, global1.c.x), global1.c, global1.c.x)), vec3<u32>(u_input.c.x ^ 15162u, global1.a, 0u), global1.e), all(!(!global1.c.wyz))), vec3<f32>(_wgslsmith_f_op_f32(-global1.e.x), _wgslsmith_f_op_f32(abs(-1412f)), 1181f));
    let var_3 = Struct_1(~var_2.d.x, !global1.c.x, !var_2.c, max(~max(var_2.d ^ var_2.d, firstTrailingBit(var_2.d)), reverseBits(global1.d)), global1.e);
    global1 = Struct_1(_wgslsmith_mult_u32(~var_2.a, ~(_wgslsmith_clamp_u32(15145u, 0u, arg_0.x) & ~arg_0.x)), any(global1.c.wzx), select(global1.c, select(vec4<bool>(true, any(vec4<bool>(var_2.c.x, var_2.c.x, var_3.c.x, var_2.c.x)), all(var_2.c.xyz), !var_3.b), var_3.c, !select(vec4<bool>(global1.c.x, true, true, true), var_3.c, var_3.c)), var_3.c.x), vec3<u32>(~select(select(1u, arg_1.x, var_3.c.x), 53375u, var_3.b), 41970u, ~(~reverseBits(55966u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.e * var_3.e)));
    return Struct_1(reverseBits(~(~(~17868u))), true, var_2.c, var_3.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(677f, _wgslsmith_f_op_f32(select(var_3.e.x, var_3.e.x, var_3.c.x)), var_3.e.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.e + vec3<f32>(-504f, 2151f, var_2.e.x))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global1 = Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(_wgslsmith_dot_vec2_u32(countOneBits(arg_2.d.zx), _wgslsmith_mult_vec2_u32(vec2<u32>(global1.a, global1.d.x), vec2<u32>(arg_1.d.x, u_input.c.x)))), arg_2.a), 13u)], true, !select(arg_2.c, arg_2.c, arg_2.c), u_input.c.xxx, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.e.x, -165f, -1057f), arg_1.e)));
    var var_0 = true;
    global2 = array<u32, 13>();
    var var_1 = arg_2;
    global1 = arg_2;
    return global1.a >> (arg_1.a % 32u);
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: u32, arg_3: i32) -> Struct_1 {
    let var_0 = ~func_4(func_2(global1.d.yx, global1.d), Struct_1(max(~4294967295u, reverseBits(u_input.b.x)), false, vec4<bool>(true, global1.c.x, arg_3 < -42236i, true), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.b.wwx, vec3<u32>(0u, 31749u, 4294967295u)), countOneBits(vec3<u32>(arg_2, global2[_wgslsmith_index_u32(arg_2, 13u)], global1.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.e.x, -1684f, 1000f) - global1.e))), func_2(global1.d.xx, countOneBits(vec3<u32>(global1.d.x, 4294967295u, arg_2))));
    let var_1 = 1u;
    let var_2 = func_2(u_input.b.zx, _wgslsmith_add_vec3_u32(u_input.b.wyw, vec3<u32>(0u, global1.d.x, var_0) >> (global1.d % vec3<u32>(32u))));
    var var_3 = global1.e.zy;
    global0 = 1380f;
    return func_2(~_wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.b.x), var_2.d.yz), global1.d);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0.e.x;
    let var_1 = Struct_1(_wgslsmith_dot_vec4_u32(min(reverseBits(vec4<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 13u)], u_input.b.x, global1.d.x, 1u)), firstTrailingBit(u_input.c)), vec4<u32>(0u, 89094u, ~arg_0.d.x, 16612u)) >> (0u % 32u), true && global1.c.x, global1.c, u_input.b.wwz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global1.e))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-2279f, global1.e.x, global1.e.x), arg_0.e)))) + vec3<f32>(var_0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.e.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-538f)) * -2502f))));
    return func_2(abs(vec2<u32>(~_wgslsmith_div_u32(u_input.c.x, arg_0.d.x), 1u)), global1.d);
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>) -> StorageBuffer {
    var var_0 = ~(u_input.d.x & -3681i);
    var var_1 = arg_1.c.x;
    return StorageBuffer(vec3<u32>(39635u, 4294967295u, func_5(Struct_1(arg_1.d.x, any(vec2<bool>(arg_1.c.x, arg_1.c.x)), arg_1.c, _wgslsmith_sub_vec3_u32(u_input.c.zww, global1.d), _wgslsmith_f_op_vec3_f32(-global1.e))).a), u_input.a, u_input.a, vec3<i32>(_wgslsmith_clamp_i32(2147483647i, 2147483647i, u_input.d.x >> (countOneBits(arg_1.a) % 32u)), -27821i & -_wgslsmith_dot_vec3_i32(vec3<i32>(30026i, -2147483647i, u_input.a.x), u_input.a), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(5424i, u_input.d.x, 0i, 17540i), -vec4<i32>(1i, u_input.a.x, u_input.d.x, 33162i)), u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = true;
    global3 = any(global1.c);
    let var_0 = _wgslsmith_sub_u32(1u ^ _wgslsmith_div_u32(80530u, ~global1.a), 0u);
    let var_1 = 1i;
    global0 = global1.e.x;
    var var_2 = select(!vec4<bool>(all(select(global1.c, vec4<bool>(global1.c.x, true, global1.b, global1.c.x), global1.c)), -5851i >= u_input.d.x, true, true), select(global1.c, vec4<bool>(!all(vec3<bool>(global1.c.x, global1.b, false)), global1.b & all(vec4<bool>(false, true, true, global1.c.x)), false, all(global1.c)), !(!(!global1.c))), select(select(select(select(vec4<bool>(true, global1.c.x, true, global1.c.x), global1.c, global1.c.x), select(vec4<bool>(false, false, true, global1.b), global1.c, global1.c.x), vec4<bool>(false, false, global1.b, true)), select(!vec4<bool>(true, global1.c.x, true, false), vec4<bool>(global1.c.x, global1.b, true, global1.c.x), true), true), global1.c, select(!vec4<bool>(false, global1.c.x, false, global1.b), !global1.c, global1.c.x)));
    let x = u_input.a;
    s_output = func_6(~34762u, func_5(func_1(false, vec2<i32>(abs(u_input.a.x), _wgslsmith_dot_vec2_i32(u_input.a.yx, u_input.d.zy)), 5342u, -1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.e + global1.e)));
}

