struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec3<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25>;

var<private> global1: vec2<f32>;

var<private> global2: array<Struct_1, 26>;

var<private> global3: Struct_1 = Struct_1(vec3<bool>(false, false, false), -38611i, vec3<i32>(1i, 0i, 0i), 1521f);

var<private> global4: array<f32, 17>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> u32 {
    global2 = array<Struct_1, 26>();
    var var_0 = false;
    global4 = array<f32, 17>();
    global2 = array<Struct_1, 26>();
    return global0[_wgslsmith_index_u32(countOneBits(934u), 25u)] >> (4294967295u % 32u);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = global2[_wgslsmith_index_u32(1808u, 26u)];
    global2 = array<Struct_1, 26>();
    global2 = array<Struct_1, 26>();
    var_0 = global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], 26u)];
    let var_1 = _wgslsmith_mod_vec2_u32(u_input.a >> (u_input.a % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_add_u32(~2869u, func_2()), global0[_wgslsmith_index_u32(countOneBits(4294967295u), 25u)]), (vec2<u32>(u_input.c, 0u) << (min(vec2<u32>(1u, 1u), u_input.a) % vec2<u32>(32u))) ^ vec2<u32>(global0[_wgslsmith_index_u32(34208u, 25u)], u_input.c)));
    return arg_2.a;
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: bool) -> i32 {
    let var_0 = 1u < ~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.c, u_input.c), global0[_wgslsmith_index_u32(4294967295u, 25u)]), arg_1.xy);
    var var_1 = ~13101u;
    var var_2 = global2[_wgslsmith_index_u32(30852u << (~arg_1.x % 32u), 26u)];
    global2 = array<Struct_1, 26>();
    let var_3 = any(select(vec4<bool>(!(!arg_2), ~u_input.c <= _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 25u)], arg_1.x), arg_1.yy), false, false), select(!vec4<bool>(global3.a.x, var_2.a.x, false, false), select(select(vec4<bool>(arg_2, var_2.a.x, true, arg_2), vec4<bool>(arg_2, true, true, var_2.a.x), vec4<bool>(false, false, true, var_2.a.x)), vec4<bool>(global3.a.x, true, true, global3.a.x), global3.d < global3.d), vec4<bool>(!global3.a.x, true, true, var_0)), _wgslsmith_f_op_f32(ceil(-1026f)) >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(282f, var_2.d) * _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(0u, 17u)]))));
    return _wgslsmith_clamp_i32(-1i, min(_wgslsmith_dot_vec2_i32(countOneBits(countOneBits(vec2<i32>(-30449i, u_input.b))), vec2<i32>(35291i, i32(-1i) * -34507i)), var_2.b), -2147483647i ^ firstLeadingBit(~(global3.b >> (global0[_wgslsmith_index_u32(4294967295u, 25u)] % 32u))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: f32) -> StorageBuffer {
    var var_0 = global2[_wgslsmith_index_u32(u_input.a.x, 26u)];
    let var_1 = arg_1;
    var var_2 = ~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(select(vec4<u32>(73291u, 52789u, u_input.a.x, u_input.c) & arg_2, vec4<u32>(10965u, u_input.a.x, 69824u, 0u), -968f < arg_1.d), vec4<u32>(u_input.a.x, arg_2.x, 4294967295u, abs(global0[_wgslsmith_index_u32(4294967295u, 25u)]))), vec4<u32>(~min(1u, 38224u), ~global0[_wgslsmith_index_u32(u_input.a.x, 25u)], _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a, u_input.a), _wgslsmith_div_vec2_u32(u_input.a, u_input.a)), ~0u & (u_input.a.x >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_2.x, 25u)], 25u)] % 32u))));
    global1 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.x))) + 1222f))));
    var_0 = arg_1;
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-442f, arg_3, 259f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1398f, -967f, arg_3)) * vec3<f32>(arg_0.d, 878f, var_0.d)), func_1(Struct_1(vec3<bool>(true, false, false), 2147483647i, arg_0.c, 240f), abs(vec4<i32>(var_0.c.x, -1i, var_0.c.x, 2147483647i)), Struct_1(global3.a, -56086i, var_0.c, -197f)))))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d * 1000f)), var_1.d), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(346f, var_1.d))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, arg_3) * vec2<f32>(arg_1.d, arg_0.d))), arg_0.a.x)))), abs(~(_wgslsmith_sub_i32(var_0.b, 23866i) << (4294967295u % 32u))), var_0.c.x ^ arg_0.c.x, ~(~_wgslsmith_mod_i32(-15112i, -var_1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 25>();
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1659f - 1136f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(500f, global4[_wgslsmith_index_u32(3617u, 17u)]))), 564f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-531f, _wgslsmith_f_op_f32(min(global1.x, 675f)))), global3.d)));
    global2 = array<Struct_1, 26>();
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~min(vec4<u32>(1u, u_input.a.x, u_input.a.x, 49674u) | vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(49915u, 25u)], 25u)], u_input.a.x, global0[_wgslsmith_index_u32(17336u, 25u)], 63835u), vec4<u32>(global0[_wgslsmith_index_u32(u_input.c, 25u)], global0[_wgslsmith_index_u32(25576u, 25u)], u_input.c, 7745u) << (vec4<u32>(u_input.a.x, 33448u, u_input.c, 105496u) % vec4<u32>(32u))) ^ vec4<u32>(~60465u, abs(u_input.c) << (~0u % 32u), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.c, u_input.c), vec4<u32>(2541u, global0[_wgslsmith_index_u32(176u, 25u)], 4294967295u, global0[_wgslsmith_index_u32(0u, 25u)])), u_input.c), countOneBits(countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], 25u)]))), ~(~(~vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], 23376u, 0u, 49156u)))), 26u)];
    let var_2 = 2147483647i;
    global0 = array<u32, 25>();
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(367f, global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3.d))), _wgslsmith_f_op_f32(global1.x - 507f)));
    let x = u_input.a;
    s_output = func_4(Struct_1(select(!(!var_1.a), select(global3.a, var_1.a, func_1(Struct_1(global3.a, 0i, vec3<i32>(-2147483647i, -1i, var_1.b), var_0.x), vec4<i32>(-68717i, 13473i, var_1.c.x, var_1.c.x), Struct_1(var_1.a, var_2, vec3<i32>(var_2, -1i, 0i), -627f))), all(vec3<bool>(global3.a.x, false, false))), ~(func_3(var_0.wyw, vec4<u32>(62267u, 0u, global0[_wgslsmith_index_u32(u_input.a.x, 25u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 25u)], 25u)], 25u)], 25u)], 25u)]), false) << (global0[_wgslsmith_index_u32(~54027u, 25u)] % 32u)), var_1.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(742f, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(0u, 17u)])))))), global2[_wgslsmith_index_u32(25495u, 26u)], vec4<u32>(global0[_wgslsmith_index_u32(~4294967295u, 25u)] >> (global0[_wgslsmith_index_u32(~27027u, 25u)] % 32u), 0u, abs(0u), u_input.c) << (vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 0u, u_input.c, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], 0u, 4294967295u, 4294967295u), vec4<u32>(global0[_wgslsmith_index_u32(0u, 25u)], u_input.c, 1u, u_input.a.x))), max(45843u, u_input.c) << (_wgslsmith_mult_u32(11593u, u_input.c) % 32u), u_input.a.x << (_wgslsmith_sub_u32(1u, global0[_wgslsmith_index_u32(u_input.c, 25u)]) % 32u), u_input.a.x) % vec4<u32>(32u)), _wgslsmith_f_op_f32(min(-1511f, 331f)));
}

