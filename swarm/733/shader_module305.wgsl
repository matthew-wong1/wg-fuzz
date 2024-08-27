struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20> = array<bool, 20>(false, true, false, true, false, true, false, false, false, true, true, true, false, true, true, true, false, false, false, true);

var<private> global1: vec4<u32> = vec4<u32>(6690u, 4294967295u, 11575u, 21239u);

var<private> global2: f32;

var<private> global3: array<Struct_1, 20>;

var<private> global4: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(2147483647i), Struct_1(-5246i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>) -> f32 {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(27727u << (~u_input.a % 32u), countOneBits(~1u)), 20u)];
    let var_1 = Struct_1(abs(-2147483647i));
    let var_2 = var_1;
    global0 = array<bool, 20>();
    global3 = array<Struct_1, 20>();
    return arg_0;
}

fn func_2() -> vec4<u32> {
    let var_0 = global4[_wgslsmith_index_u32(global1.x, 2u)];
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-861f, -1294f, true))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-378f)));
    var_1 = _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -921f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * 509f), _wgslsmith_f_op_f32(253f + _wgslsmith_f_op_f32(1000f * 415f)))), vec4<i32>(-1i) * -(reverseBits(vec4<i32>(u_input.b, -1i, u_input.b, u_input.b)) ^ max(vec4<i32>(u_input.b, 2147483647i, 41559i, u_input.b), vec4<i32>(19821i, var_0.a, var_0.a, var_0.a)))));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_add_u32(~(u_input.a | u_input.a), (4294967295u >> (u_input.a % 32u)) | 95120u), u_input.a), 20u)];
    return _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(global1.x, 58973u, u_input.a, 49400u), abs(~vec4<u32>(global1.x, 0u, u_input.a, global1.x))), select((vec4<u32>(4294967295u, 4294967295u, global1.x, global1.x) << (vec4<u32>(u_input.a, global1.x, global1.x, 33223u) % vec4<u32>(32u))) & _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.c, global1.x, global1.x), vec4<u32>(u_input.a, global1.x, global1.x, u_input.a), vec4<u32>(11440u, 4294967295u, u_input.c, u_input.a)), _wgslsmith_div_vec4_u32(max(vec4<u32>(global1.x, 0u, u_input.c, 1u), vec4<u32>(0u, 1u, 59452u, 4294967295u)), vec4<u32>(19790u, 4294967295u, 1u, 0u)), true), ~(vec4<u32>(1u, 28868u, 47193u, 14478u) & _wgslsmith_mult_vec4_u32(vec4<u32>(6278u, 33670u, 38333u, global1.x), vec4<u32>(u_input.a, global1.x, global1.x, u_input.a)))) >> (~_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(1u, 1u, global1.x, u_input.c)), ~select(vec4<u32>(u_input.a, global1.x, global1.x, 4294967295u), vec4<u32>(global1.x, global1.x, 0u, u_input.a), false)) % vec4<u32>(32u));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mod_u32(0u, u_input.a);
    global4 = array<Struct_1, 2>();
    global1 = _wgslsmith_mod_vec4_u32(vec4<u32>(8714u, 4294967295u, 1u, 4294967295u), func_2());
    var var_1 = Struct_2(!select(vec2<bool>(global0[_wgslsmith_index_u32(global1.x, 20u)], all(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 20u)]))), vec2<bool>(global0[_wgslsmith_index_u32(1u, 20u)], var_0 > var_0), true), arg_0, select(select(vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1.x, 89127u, global1.x), 20u)], true, true), select(!vec3<bool>(global0[_wgslsmith_index_u32(var_0, 20u)], false, global0[_wgslsmith_index_u32(global1.x, 20u)]), !vec3<bool>(true, global0[_wgslsmith_index_u32(global1.x, 20u)], global0[_wgslsmith_index_u32(u_input.c, 20u)]), true), vec3<bool>(true & global0[_wgslsmith_index_u32(u_input.c, 20u)], true, any(vec3<bool>(global0[_wgslsmith_index_u32(16688u, 20u)], global0[_wgslsmith_index_u32(u_input.c, 20u)], global0[_wgslsmith_index_u32(1u, 20u)])))), select(select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(18821u, 20u)], global0[_wgslsmith_index_u32(var_0, 20u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(28694u, 20u)], false), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 20u)], false)), !vec3<bool>(global0[_wgslsmith_index_u32(global1.x, 20u)], global0[_wgslsmith_index_u32(u_input.a, 20u)], false), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 20u)], global0[_wgslsmith_index_u32(var_0, 20u)], global0[_wgslsmith_index_u32(u_input.c, 20u)]), vec3<bool>(global0[_wgslsmith_index_u32(var_0, 20u)], global0[_wgslsmith_index_u32(u_input.c, 20u)], global0[_wgslsmith_index_u32(var_0, 20u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(global1.x, 20u)], global0[_wgslsmith_index_u32(var_0, 20u)]))), !(!vec3<bool>(true, global0[_wgslsmith_index_u32(global1.x, 20u)], false)), !(!global0[_wgslsmith_index_u32(24955u, 20u)])), select(!vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(var_0, 20u)], true), vec3<bool>(!global0[_wgslsmith_index_u32(u_input.a, 20u)], global0[_wgslsmith_index_u32(~31114u, 20u)], u_input.b == u_input.b), select(!vec3<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 20u)]), vec3<bool>(true, true, true), false))));
    let var_2 = Struct_1(2147483647i);
    return global3[_wgslsmith_index_u32(u_input.c, 20u)];
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> f32 {
    global0 = array<bool, 20>();
    global2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1138f + _wgslsmith_f_op_f32(-2522f + arg_3.x)), arg_3.x)))));
    var var_0 = arg_0.c;
    let var_1 = _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(select(arg_3.x, arg_3.x, var_0.x)), vec4<i32>(arg_0.b.a, 53911i, u_input.b, -1134i))))))));
    global4 = array<Struct_1, 2>();
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 20>();
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(Struct_2(vec2<bool>(true, global0[_wgslsmith_index_u32(38551u, 20u)]), Struct_1(2750i), vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.a, 20u)])), global3[_wgslsmith_index_u32(global1.x, 20u)], func_1(Struct_1(u_input.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-751f, -178f, -397f))))), -136f, global0[_wgslsmith_index_u32(37732u, 20u)]))));
    global0 = array<bool, 20>();
    var var_1 = ~vec2<i32>(~0i, _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.b, u_input.b)), select(vec2<i32>(-1i, 2147483647i), vec2<i32>(u_input.b, -2147483647i), vec2<bool>(global0[_wgslsmith_index_u32(global1.x, 20u)], true)))) & ~vec2<i32>(-1i, u_input.b);
    global0 = array<bool, 20>();
    global1 = ~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(func_2(), (vec4<u32>(56779u, 33659u, u_input.c, 13944u) ^ vec4<u32>(36782u, global1.x, 0u, 1u)) | vec4<u32>(u_input.a, 0u, global1.x, global1.x)), ~(~(~vec4<u32>(1u, u_input.a, 1u, 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(11828i, ~min(~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.b, var_1.x), vec3<i32>(var_1.x, 2147483647i, var_1.x), vec3<i32>(u_input.b, 2147483647i, -33060i)), -min(vec3<i32>(-50516i, 1i, 2147483647i), vec3<i32>(u_input.b, u_input.b, 3193i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), -228f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-791f, var_0) + 719f)));
}

