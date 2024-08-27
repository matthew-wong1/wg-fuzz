struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -2819i;

var<private> global1: array<i32, 17> = array<i32, 17>(-39894i, -17534i, -16406i, -29596i, 1i, 2147483647i, 2147483647i, 10736i, 20704i, 0i, 1i, 17408i, 81966i, 2147483647i, 40159i, -17719i, 1007i);

var<private> global2: array<vec3<f32>, 5>;

var<private> global3: Struct_1;

var<private> global4: vec2<u32> = vec2<u32>(22754u, 49221u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> vec3<u32> {
    global0 = 2147483647i;
    global3 = Struct_1(true);
    global3 = Struct_1(!any(select(vec4<bool>(arg_1.a, false, arg_2, false), vec4<bool>(arg_2, arg_1.a, true, arg_2), vec4<bool>(arg_1.a, arg_2, false, false))));
    global0 = -global1[_wgslsmith_index_u32(~u_input.a ^ 42980u, 17u)];
    global1 = array<i32, 17>();
    return ~vec3<u32>(u_input.a, 4294967295u, u_input.a);
}

fn func_2(arg_0: vec3<u32>, arg_1: bool) -> vec3<i32> {
    let var_0 = _wgslsmith_div_f32(-457f, -616f);
    let var_1 = global2[_wgslsmith_index_u32(~select(~(4294967295u << (global4.x % 32u)) << (u_input.a % 32u), u_input.a >> (abs(arg_0.x) % 32u), (global4.x > 44756u) | false), 5u)];
    let var_2 = vec4<i32>(~max(u_input.c.x, i32(-1i) * -1i), 24680i, 0i, u_input.c.x);
    var var_3 = _wgslsmith_dot_vec4_u32(min(max(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 4294967295u, arg_0.x), vec4<u32>(34922u, 0u, arg_0.x, 41501u)), vec4<u32>(31839u, 1u, arg_0.x, 44449u)), select(vec4<u32>(21700u, arg_0.x, global4.x, 25709u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.b, 0u, u_input.a), vec4<u32>(arg_0.x, 0u, global4.x, 1u), vec4<u32>(4294967295u, arg_0.x, 24530u, u_input.a)), any(vec3<bool>(true, global3.a, arg_1)))), ~firstLeadingBit(vec4<u32>(u_input.a, arg_0.x, u_input.b, u_input.b))), select(min(_wgslsmith_clamp_vec4_u32(~vec4<u32>(71786u, 30639u, u_input.b, 1u), ~vec4<u32>(global4.x, arg_0.x, 0u, 4294967295u), ~vec4<u32>(global4.x, 16919u, 80806u, 4294967295u)), ~reverseBits(vec4<u32>(1u, 3888u, arg_0.x, global4.x))), ~(~vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), true));
    var var_4 = all(select(select(!(!vec4<bool>(arg_1, global3.a, arg_1, global3.a)), vec4<bool>(!global3.a, global3.a, any(vec3<bool>(false, true, true)), any(vec2<bool>(false, global3.a))), select(vec4<bool>(false, global3.a, true, true), select(vec4<bool>(global3.a, false, global3.a, global3.a), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false)), select(arg_1, false, arg_1))), !(!(!vec4<bool>(arg_1, arg_1, arg_1, true))), arg_1));
    return ~((vec3<i32>(u_input.c.x, var_2.x ^ -14533i, -1i << (global4.x % 32u)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(4552u, arg_0.x, 1u), countOneBits(vec3<u32>(46296u, global4.x, u_input.b))) % vec3<u32>(32u))) << (func_3(var_2.x, Struct_1(true && global3.a), any(select(vec2<bool>(true, global3.a), vec2<bool>(arg_1, arg_1), false))) % vec3<u32>(32u)));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: vec3<i32>) -> i32 {
    let var_0 = Struct_1(true);
    global0 = ~_wgslsmith_clamp_i32(_wgslsmith_add_i32(-(2147483647i & global1[_wgslsmith_index_u32(0u, 17u)]), select(-35660i, -2147483647i, true)), ~_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(u_input.b, 17u)] << (u_input.a % 32u), _wgslsmith_dot_vec2_i32(u_input.c, arg_2.zz)), -_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(~u_input.b, 17u)], global1[_wgslsmith_index_u32(u_input.a, 17u)]));
    var var_1 = Struct_1(true);
    let var_2 = Struct_1((_wgslsmith_f_op_f32(f32(-1f) * -309f) >= arg_1) && var_1.a);
    let var_3 = Struct_1(true);
    return ~u_input.c.x;
}

fn func_1(arg_0: Struct_1) -> StorageBuffer {
    global3 = arg_0;
    var var_0 = vec3<i32>(43233i, -3777i, func_4(_wgslsmith_sub_u32(1u, u_input.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -767f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(802f, -810f)))), func_2(abs(~vec3<u32>(u_input.a, 41262u, global4.x)), true)));
    let var_1 = !arg_0.a;
    var var_2 = arg_0;
    var_2 = Struct_1(global3.a);
    return StorageBuffer(~u_input.c.x, -firstLeadingBit(~(-1i)), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, var_0.x, 7639i), vec3<i32>(-2147483647i, -9065i, u_input.c.x)) | min(vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 17u)], -2147483647i, var_0.x), vec3<i32>(-1i, 0i, var_0.x)), vec3<i32>(u_input.c.x, -43780i, -u_input.c.x)), 1i), vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(42923u, 17u)], global1[_wgslsmith_index_u32(global4.x, 17u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-928f * -927f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true);
    let x = u_input.a;
    s_output = func_1(Struct_1(global3.a));
}

