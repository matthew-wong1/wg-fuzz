struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15>;

var<private> global1: array<Struct_1, 27>;

var<private> global2: array<u32, 19>;

var<private> global3: array<Struct_1, 1>;

var<private> global4: array<bool, 16> = array<bool, 16>(true, false, true, true, true, true, true, false, true, true, false, true, true, false, false, false);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(~firstTrailingBit(~arg_0.a), 15u)];
    var var_1 = global1[_wgslsmith_index_u32(35450u, 27u)];
    var var_2 = -21668i;
    var var_3 = 537f;
    let var_4 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(778f, -205f, -318f)))))));
    return 4294967295u;
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> i32 {
    global4 = array<bool, 16>();
    global0 = array<f32, 15>();
    var var_0 = _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(13127u, 19u)], 19u)], global2[_wgslsmith_index_u32(4294967295u, 19u)], arg_0.d.x, arg_0.d.x)), countOneBits(~_wgslsmith_sub_vec4_u32(vec4<u32>(47291u, global2[_wgslsmith_index_u32(arg_0.a, 19u)], 0u, arg_0.d.x), vec4<u32>(50781u, 75831u, arg_0.a, 4294967295u)))), 15u)], global0[_wgslsmith_index_u32(~(~(~firstLeadingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(27953u, 19u)], 19u)]))), 15u)]));
    global0 = array<f32, 15>();
    let var_1 = vec3<f32>(global0[_wgslsmith_index_u32(arg_0.a ^ (_wgslsmith_add_u32(arg_0.a, arg_0.d.x >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.d.x, 19u)], 19u)], 19u)], 19u)], 19u)] % 32u)) >> ((~global2[_wgslsmith_index_u32(4294967295u, 19u)] >> (_wgslsmith_dot_vec4_u32(vec4<u32>(29966u, global2[_wgslsmith_index_u32(arg_0.d.x, 19u)], 4294967295u, 4294967295u), vec4<u32>(1u, global2[_wgslsmith_index_u32(100342u, 19u)], arg_0.d.x, global2[_wgslsmith_index_u32(arg_0.d.x, 19u)])) % 32u)) % 32u)), 15u)], _wgslsmith_f_op_f32(f32(-1f) * -991f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(950f + -1000f)))));
    return _wgslsmith_mult_i32(reverseBits(69007i), ~_wgslsmith_div_i32(_wgslsmith_clamp_i32(25646i, _wgslsmith_dot_vec3_i32(arg_0.c.zwz, vec3<i32>(arg_0.c.x, arg_0.b.x, -48353i)), max(u_input.a.x, -2147483647i)), firstLeadingBit(1i)));
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(11705u, 19u)], 19u)], global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(58852u, 19u)], 19u)], 19u)], 0u), 19u)]), vec2<u32>(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], reverseBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)]))), _wgslsmith_mod_u32(27600u, func_2(global1[_wgslsmith_index_u32(~65802u, 27u)], !vec4<bool>(true, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)], 19u)], 16u)], true, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(5768u, 19u)], 16u)]))), global2[_wgslsmith_index_u32(0u, 19u)]), 19u)], 19u)], ~(~func_2(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(7148u, 19u)], 19u)], 19u)], 19u)], 19u)], 19u)], 1u)], vec4<bool>(false, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(54469u, 19u)], 16u)], global4[_wgslsmith_index_u32(1u, 16u)], true))) >> (22307u % 32u));
    global2 = array<u32, 19>();
    let var_1 = Struct_1(~var_0.x, firstLeadingBit(vec2<i32>(~2147483647i, -u_input.a.x)) ^ u_input.a, vec4<i32>(10824i, func_3(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, ~global2[_wgslsmith_index_u32(var_0.x, 19u)]), 27u)], ~_wgslsmith_mod_i32(-27478i, u_input.a.x), global4[_wgslsmith_index_u32(var_0.x ^ _wgslsmith_mod_u32(var_0.x, var_0.x), 16u)]), u_input.a.x, ~(~u_input.a.x) ^ 17792i), abs(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global2[_wgslsmith_index_u32(var_0.x, 19u)], 22336u, var_0.x), vec4<u32>(9826u, global2[_wgslsmith_index_u32(var_0.x, 19u)], var_0.x, 36062u)), var_0.x, ~_wgslsmith_clamp_u32(1u, 45744u, global2[_wgslsmith_index_u32(0u, 19u)]))));
    let var_2 = vec2<bool>(global4[_wgslsmith_index_u32(~(~1u >> ((0u << (~global2[_wgslsmith_index_u32(var_1.d.x, 19u)] % 32u)) % 32u)), 16u)], !global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_1.d, var_1.d), 16u)]);
    global4 = array<bool, 16>();
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(global2[_wgslsmith_index_u32(0u, 19u)], select(1u, 4294967295u, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(9298u, 19u)], 67694u), 19u)], 16u)]), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 19u)], 19u)], 19u)], 19u)], 16490u, 4294967295u), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)], 19u)], 19u)], global2[_wgslsmith_index_u32(1u, 19u)], 1u)), ~global2[_wgslsmith_index_u32(56672u, 19u)])) << (vec3<u32>(5103u, 33385u, 4294967295u) % vec3<u32>(32u)), global2[_wgslsmith_index_u32(~func_1(-605f), 19u)], _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(~4294967295u, 19u)], global2[_wgslsmith_index_u32(1u, 19u)], _wgslsmith_sub_u32(1407u, _wgslsmith_add_u32(global2[_wgslsmith_index_u32(89073u, 19u)], 17205u))));
}

