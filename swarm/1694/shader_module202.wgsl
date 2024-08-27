struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20> = array<bool, 20>(true, true, false, true, true, false, true, true, false, false, true, false, false, true, false, false, true, true, false, false);

var<private> global1: array<Struct_1, 12>;

var<private> global2: vec3<f32>;

var<private> global3: array<u32, 25>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(select(_wgslsmith_mult_vec3_u32(u_input.b, vec3<u32>(101082u, global3[_wgslsmith_index_u32(4294967295u, 25u)], global3[_wgslsmith_index_u32(1u, 25u)])), vec3<u32>(0u, 0u, 8096u) ^ vec3<u32>(0u, global3[_wgslsmith_index_u32(u_input.b.x, 25u)], u_input.b.x), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 20u)], false)), vec3<u32>(21502u, 4294967295u, ~0u)) | _wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, 1u), 1u), firstTrailingBit(global3[_wgslsmith_index_u32(u_input.b.x, 25u)])), 12u)];
    var var_1 = -vec3<i32>(_wgslsmith_mult_i32(i32(-1i) * -3464i, _wgslsmith_sub_i32(-1i, u_input.d ^ -1583i)), _wgslsmith_dot_vec2_i32(u_input.c.ww, firstTrailingBit(vec2<i32>(-2829i, 4689i))), -u_input.d & firstTrailingBit(u_input.d));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1429f, var_0.a, false)) + -1000f);
}

fn func_4(arg_0: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.a + arg_0.a)))))));
    var var_1 = global0[_wgslsmith_index_u32(u_input.b.x, 20u)];
    global3 = array<u32, 25>();
    var_1 = true;
    var_0 = -497f;
    return select(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(firstTrailingBit(0u << (u_input.b.x % 32u)), 53986u), 20u)], any(!select(arg_0.b.zwy, select(vec3<bool>(true, global0[_wgslsmith_index_u32(55509u, 20u)], true), arg_0.b.xyy, false), vec3<bool>(true, arg_0.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 20u)]))), any(select(!arg_0.b, !vec4<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 25u)], 20u)], true, false, global0[_wgslsmith_index_u32(43319u, 20u)]), !(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 25u)], 20u)] == global0[_wgslsmith_index_u32(27816u, 20u)]))));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> vec3<bool> {
    let var_0 = _wgslsmith_mod_vec3_i32(reverseBits(~u_input.c.yzw), reverseBits(vec3<i32>(min(-1i, ~(-2147483647i)), u_input.d, u_input.d)));
    global3 = array<u32, 25>();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1043f, _wgslsmith_f_op_f32(-arg_1.a)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -994f) + global2.x), global2.x))), _wgslsmith_f_op_f32(615f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a * -1622f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - global2.x)))), 1481f);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(225f * -142f))) + arg_1.a), vec4<bool>(!(!all(arg_1.b)), !any(vec2<bool>(true, true)), arg_1.b.x, (0i > max(1i, var_0.x)) & all(select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.b.x, 20u)]), vec3<bool>(true, arg_1.b.x, false), vec3<bool>(false, false, false)))), arg_1.c);
    var var_3 = var_2.c.yz;
    return arg_1.b.ywy;
}

fn func_2() -> u32 {
    let var_0 = func_5(func_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-631f)) * 1572f), select(!vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(27147u, 20u)], global0[_wgslsmith_index_u32(u_input.b.x, 20u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(12886u, 20u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 25u)], 20u)], false, true), vec4<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 25u)], 20u)], false, true, false), vec4<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(9868u, 25u)], 20u)], global0[_wgslsmith_index_u32(38041u, 20u)], true, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 25u)], 20u)])), true), ~max(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 25u)], 25u)], global3[_wgslsmith_index_u32(4294967295u, 25u)], 91994u, 4294967295u), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 25u)], 25u)], u_input.b.x, u_input.b.x, 4294967295u)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, global2.x)), !select(select(vec4<bool>(global0[_wgslsmith_index_u32(13866u, 20u)], true, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 25u)], 20u)], false), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 20u)], true, true), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 20u)], true, true, false)), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], global0[_wgslsmith_index_u32(u_input.b.x, 20u)], true, true), !global0[_wgslsmith_index_u32(u_input.b.x, 20u)]), vec4<u32>(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(25222u, 25u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(47917u, 25u)], 25u)]), u_input.b.yz)), abs(~39409u), _wgslsmith_div_u32(~73572u, _wgslsmith_clamp_u32(1u, global3[_wgslsmith_index_u32(36823u, 25u)], 1u)), _wgslsmith_sub_u32(4294967295u, 28987u))), select(true, !global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(65584u, 25u)], 20u)], global0[_wgslsmith_index_u32(~(~(~0u)), 20u)]));
    global1 = array<Struct_1, 12>();
    var var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, global2.x, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(sign(912f)))))), global2.x)));
    var var_2 = global1[_wgslsmith_index_u32(46275u, 12u)];
    let var_3 = -2147483647i;
    return _wgslsmith_add_u32(0u, u_input.b.x);
}

fn func_1(arg_0: f32) -> StorageBuffer {
    var var_0 = global2.xz;
    let var_1 = u_input.c.yz;
    let var_2 = vec2<u32>(~_wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(u_input.b.xy, vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 25u)], 22563u)), ~(u_input.b.xz << (vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 25u)], 25u)], 25u)], 1u) % vec2<u32>(32u)))), 41422u);
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_2.x, _wgslsmith_mult_u32(_wgslsmith_div_u32(func_2(), _wgslsmith_div_u32(0u, _wgslsmith_mod_u32(var_2.x, var_2.x))), _wgslsmith_add_u32(~(~u_input.b.x), 16604u))), 12u)];
    let var_4 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(~var_2.x, ~global3[_wgslsmith_index_u32(26539u, 25u)], u_input.b.x), vec3<u32>(27213u, 4294967295u, 1u))), max(u_input.b, var_3.c.xzz)), 12u)];
    return StorageBuffer(var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 20>();
    let var_0 = global1[_wgslsmith_index_u32(1u, 12u)];
    global1 = array<Struct_1, 12>();
    let var_1 = global2.zy;
    var var_2 = -9403i;
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

