struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec4<bool>(true, false, false, false), 1i, vec2<u32>(57621u, 1u)), Struct_1(vec4<bool>(true, false, true, false), -54852i, vec2<u32>(4583u, 3646u)), Struct_1(vec4<bool>(false, false, false, true), 2147483647i, vec2<u32>(1u, 102722u)));

var<private> global1: array<Struct_1, 15>;

var<private> global2: array<f32, 21> = array<f32, 21>(-1156f, -249f, 1091f, 670f, -955f, 2192f, 170f, 326f, 557f, 1308f, 905f, -400f, 211f, 378f, 241f, 1218f, -339f, -1183f, -1291f, 246f, 1744f);

var<private> global3: Struct_1 = Struct_1(vec4<bool>(false, true, false, false), 1i, vec2<u32>(0u, 4294967295u));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_3, arg_3: Struct_5) -> i32 {
    global3 = Struct_1(!vec4<bool>(true, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global3.b, arg_3.a.d.b), vec3<i32>(global3.b, 39027i, 0i)) < _wgslsmith_sub_i32(0i, -2147483647i), true, true), firstTrailingBit(_wgslsmith_div_i32(arg_2.a.a.b, arg_3.a.c.e.b & arg_2.a.a.b) << (46897u % 32u)), _wgslsmith_add_vec2_u32(~_wgslsmith_mod_vec2_u32(u_input.a, _wgslsmith_mult_vec2_u32(arg_0.zz, global3.c)), global3.c));
    return arg_3.a.c.a.b;
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: vec3<bool>, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = Struct_4((_wgslsmith_div_i32(5452i, countOneBits(56500i)) & _wgslsmith_dot_vec3_i32(-vec3<i32>(-23675i, -2147483647i, -2147483647i), abs(vec3<i32>(47284i, u_input.b.x, 1i)))) | arg_3.b, func_3(((vec4<u32>(115405u, global3.c.x, 4294967295u, 4294967295u) ^ vec4<u32>(arg_3.c.x, 1u, u_input.d.x, arg_0)) << (vec4<u32>(30443u, 92335u, 913u, arg_3.c.x) % vec4<u32>(32u))) & ~(~vec4<u32>(arg_3.c.x, arg_0, 1u, 43489u)), _wgslsmith_f_op_f32(-186f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1282f)), -1069f))), Struct_3(Struct_2(Struct_1(arg_3.a, 30582i, vec2<u32>(13566u, global3.c.x)), Struct_1(arg_3.a, u_input.b.x, u_input.a), ~global3.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(arg_0, 21u)], global2[_wgslsmith_index_u32(u_input.d.x, 21u)], arg_1.x)), Struct_1(vec4<bool>(true, global3.a.x, false, arg_3.a.x), -2147483647i, vec2<u32>(4294967295u, arg_0))), global0[_wgslsmith_index_u32(max(u_input.d.x, u_input.a.x), 3u)], _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(ceil(-256f)))), Struct_5(Struct_4(u_input.b.x, -16413i, Struct_2(Struct_1(vec4<bool>(true, false, false, false), u_input.b.x, u_input.d.zy), arg_3, global3.c, vec3<f32>(-659f, 999f, 293f), arg_3), Struct_1(vec4<bool>(arg_3.a.x, arg_3.a.x, false, arg_2.x), arg_3.b, vec2<u32>(u_input.a.x, arg_0))), global3.a.x, Struct_4(u_input.b.x, _wgslsmith_add_i32(global3.b, -34334i), Struct_2(global0[_wgslsmith_index_u32(0u, 3u)], Struct_1(global3.a, 2147483647i, vec2<u32>(arg_3.c.x, 25331u)), u_input.d.yy, vec3<f32>(global2[_wgslsmith_index_u32(arg_3.c.x, 21u)], -388f, arg_1.x), global0[_wgslsmith_index_u32(global3.c.x, 3u)]), arg_3))), Struct_2(global0[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(12312u, arg_3.c.x)), 3u)], Struct_1(!select(global3.a, vec4<bool>(global3.a.x, global3.a.x, arg_2.x, arg_2.x), arg_3.a), _wgslsmith_dot_vec2_i32(u_input.b & vec2<i32>(u_input.b.x, 37874i), -u_input.b), vec2<u32>(arg_0, global3.c.x)), vec2<u32>(u_input.c.x, u_input.a.x) | (select(u_input.a, arg_3.c, global3.a.x) << (countOneBits(vec2<u32>(u_input.c.x, arg_0)) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.x, arg_1.x, 448f))) - vec3<f32>(-1000f, global2[_wgslsmith_index_u32(4294967295u, 21u)], 432f)))), global1[_wgslsmith_index_u32(~66142u, 15u)]), global0[_wgslsmith_index_u32(global3.c.x, 3u)]);
    let var_1 = true;
    global3 = var_0.c.e;
    var var_2 = var_1;
    var var_3 = vec2<bool>(true, !arg_2.x);
    return abs(~(~(~var_0.d.c)) ^ countOneBits(abs(vec2<u32>(10571u, global3.c.x))));
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = (global3.c ^ _wgslsmith_clamp_vec2_u32(global3.c, _wgslsmith_sub_vec2_u32(~vec2<u32>(20550u, global3.c.x), vec2<u32>(41952u, 4294967295u)), func_2(global3.c.x, vec2<f32>(1702f, -1550f), select(global3.a.zwz, vec3<bool>(true, true, global3.a.x), false), Struct_1(global3.a, global3.b, vec2<u32>(9591u, u_input.a.x))))) >> (global3.c % vec2<u32>(32u));
    global2 = array<f32, 21>();
    return global3.a.x;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: u32, arg_3: vec4<f32>) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(round(arg_3.x));
    global0 = array<Struct_1, 3>();
    var_0 = _wgslsmith_f_op_f32(-arg_3.x);
    var var_1 = !global3.a.zw;
    global3 = Struct_1(!global3.a, func_3(~vec4<u32>(u_input.a.x, min(64107u, 0u), u_input.d.x, max(arg_0.x, global3.c.x)), _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(4294967295u, 21u)])), Struct_3(Struct_2(Struct_1(vec4<bool>(true, false, global3.a.x, var_1.x), global3.b, u_input.a), global1[_wgslsmith_index_u32(1u, 15u)], firstLeadingBit(global3.c), vec3<f32>(-194f, arg_3.x, 1271f), Struct_1(global3.a, global3.b, vec2<u32>(66673u, 19016u))), Struct_1(global3.a, global3.b, vec2<u32>(1u, 7254u)), global2[_wgslsmith_index_u32(12835u, 21u)]), Struct_5(Struct_4(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.b, 10919i, -30059i), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), -u_input.b.x, Struct_2(global0[_wgslsmith_index_u32(62432u, 3u)], Struct_1(global3.a, 74588i, u_input.c.xz), arg_0.yz, vec3<f32>(global2[_wgslsmith_index_u32(23977u, 21u)], arg_3.x, arg_3.x), Struct_1(global3.a, u_input.b.x, global3.c)), global1[_wgslsmith_index_u32(arg_2, 15u)]), any(vec2<bool>(var_1.x, arg_1.x)), Struct_4(func_3(vec4<u32>(37570u, arg_2, 8657u, 4294967295u), arg_3.x, Struct_3(Struct_2(Struct_1(vec4<bool>(global3.a.x, true, arg_1.x, var_1.x), -2147483647i, global3.c), global0[_wgslsmith_index_u32(u_input.a.x, 3u)], u_input.d.xx, vec3<f32>(global2[_wgslsmith_index_u32(26120u, 21u)], 1660f, -1218f), Struct_1(global3.a, 1880i, global3.c)), Struct_1(global3.a, 48982i, global3.c), -2154f), Struct_5(Struct_4(u_input.b.x, global3.b, Struct_2(Struct_1(vec4<bool>(true, true, arg_1.x, false), global3.b, vec2<u32>(u_input.c.x, u_input.a.x)), Struct_1(vec4<bool>(false, false, arg_1.x, arg_1.x), -27672i, vec2<u32>(arg_2, arg_0.x)), arg_0.yz, vec3<f32>(global2[_wgslsmith_index_u32(arg_0.x, 21u)], arg_3.x, -771f), Struct_1(vec4<bool>(true, global3.a.x, true, var_1.x), -8138i, arg_0.zz)), global1[_wgslsmith_index_u32(arg_0.x, 15u)]), true, Struct_4(global3.b, 33853i, Struct_2(Struct_1(global3.a, -6274i, vec2<u32>(1u, 1u)), global1[_wgslsmith_index_u32(5567u, 15u)], global3.c, vec3<f32>(arg_3.x, global2[_wgslsmith_index_u32(4294967295u, 21u)], global2[_wgslsmith_index_u32(0u, 21u)]), Struct_1(global3.a, global3.b, global3.c)), Struct_1(vec4<bool>(true, false, false, var_1.x), 0i, u_input.d.yz)))), firstLeadingBit(-1i), Struct_2(global1[_wgslsmith_index_u32(75289u, 15u)], global0[_wgslsmith_index_u32(5495u, 3u)], u_input.c.xy, arg_3.xyy, global0[_wgslsmith_index_u32(arg_2, 3u)]), Struct_1(global3.a, -18483i, arg_0.wy)))), ~u_input.c.zy);
    return StorageBuffer(_wgslsmith_mult_u32(~(~0u), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 1u, 1u), vec3<u32>(4294967295u, u_input.d.x, 0u)), 1989u << (1u % 32u))) << (0u % 32u), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_3.x, global2[_wgslsmith_index_u32(1u, 21u)])))), arg_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(firstTrailingBit(vec4<u32>(~(~79u), ~(~u_input.c.x), abs(global3.c.x), global3.c.x)), !select(global3.a.wy, vec2<bool>(false && global3.a.x, !global3.a.x), func_1(1u)), global3.c.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(global3.c.x, 21u)])), -654f, _wgslsmith_f_op_f32(select(-1363f, global2[_wgslsmith_index_u32(1u, 21u)], global3.a.x)), -650f)) - vec4<f32>(-270f, -665f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 21u)] + global2[_wgslsmith_index_u32(u_input.c.x >> (21322u % 32u), 21u)]), -545f)));
}

