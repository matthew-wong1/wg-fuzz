struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(0i, -2950i), vec3<u32>(41844u, 12139u, 73998u), vec3<u32>(0u, 24025u, 37575u), 25498u);

var<private> global1: Struct_1;

var<private> global2: array<bool, 32>;

var<private> global3: array<vec3<u32>, 11> = array<vec3<u32>, 11>(vec3<u32>(33955u, 10911u, 0u), vec3<u32>(33771u, 28551u, 27821u), vec3<u32>(8135u, 131668u, 65808u), vec3<u32>(1u, 3503u, 1u), vec3<u32>(28225u, 0u, 3585u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(1702u, 19753u, 1u), vec3<u32>(3895u, 1u, 1u), vec3<u32>(1u, 15022u, 1u), vec3<u32>(1u, 65453u, 56280u), vec3<u32>(18373u, 0u, 69747u));

var<private> global4: array<vec3<bool>, 17>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2() -> u32 {
    var var_0 = select(~1u, ~32003u, global2[_wgslsmith_index_u32(4294967295u, 32u)]);
    var var_1 = vec2<bool>(false, false);
    global3 = array<vec3<u32>, 11>();
    let var_2 = Struct_1(global1.a, _wgslsmith_mod_vec3_u32(vec3<u32>(global1.b.x & abs(10966u), countOneBits(~global1.c.x), 1u | _wgslsmith_mult_u32(1u, global0.c.x)), max(~global0.b, abs(global3[_wgslsmith_index_u32(global0.b.x, 11u)])) ^ ~vec3<u32>(1u, 1u, 1u)), vec3<u32>(_wgslsmith_add_u32(select(~global0.d, ~global1.c.x, var_1.x), ~(~u_input.a)), ~global1.b.x, 4294967295u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a, global0.b.x), vec2<u32>(1u, firstTrailingBit(u_input.a))));
    global3 = array<vec3<u32>, 11>();
    return global1.b.x ^ global1.c.x;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> u32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(-1774f, 1000f, any(select(!arg_1.zyz, global4[_wgslsmith_index_u32(~u_input.a, 17u)], vec3<bool>(false, arg_1.x, arg_1.x))))), _wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(select(986f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -524f), -675f)), true)));
    let var_1 = Struct_1(-vec2<i32>(-57037i, global1.a.x | ~global1.a.x), global3[_wgslsmith_index_u32(~3320u, 11u)], arg_0.c, global0.c.x);
    global3 = array<vec3<u32>, 11>();
    let var_2 = Struct_1(-firstTrailingBit(_wgslsmith_sub_vec2_i32(global1.a, global1.a)), ~reverseBits(~vec3<u32>(61190u, 4294967295u, u_input.a) >> (~arg_0.b % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(~_wgslsmith_add_vec3_u32(global0.b, vec3<u32>(global0.b.x, 18765u, 87033u)), arg_0.c), reverseBits(~4294967295u));
    global4 = array<vec3<bool>, 17>();
    return firstLeadingBit(36184u);
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    global4 = array<vec3<bool>, 17>();
    global2 = array<bool, 32>();
    let var_0 = arg_0.x;
    let var_1 = Struct_1(-global1.a, _wgslsmith_sub_vec3_u32(global0.c, _wgslsmith_mod_vec3_u32(vec3<u32>(~u_input.a, 4294967295u, func_2()), vec3<u32>(func_3(Struct_1(vec2<i32>(34695i, global1.a.x), vec3<u32>(u_input.a, global1.d, 1u), global1.c, 26574u), vec4<bool>(global2[_wgslsmith_index_u32(0u, 32u)], true, false, global2[_wgslsmith_index_u32(61266u, 32u)])), _wgslsmith_clamp_u32(6747u, u_input.a, u_input.a), _wgslsmith_mult_u32(13393u, u_input.a)))), global1.c, _wgslsmith_clamp_u32(1u, u_input.a, firstLeadingBit(_wgslsmith_div_u32(~689u, ~global1.d))));
    global0 = var_1;
    return var_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(global1.a, ~vec3<u32>(~global0.c.x, min(func_1(vec4<f32>(-2101f, 497f, -428f, -806f)), firstLeadingBit(global0.b.x)), ~u_input.a), global1.c, ~1u);
    let var_0 = Struct_1(vec2<i32>(-6580i, abs(global1.a.x)), ~(~select(global1.c, global0.b, select(vec3<bool>(global2[_wgslsmith_index_u32(global0.b.x, 32u)], global2[_wgslsmith_index_u32(4294967295u, 32u)], global2[_wgslsmith_index_u32(34160u, 32u)]), global4[_wgslsmith_index_u32(u_input.a, 17u)], vec3<bool>(global2[_wgslsmith_index_u32(global1.d, 32u)], false, global2[_wgslsmith_index_u32(2384u, 32u)])))), global3[_wgslsmith_index_u32(1u >> (global0.c.x % 32u), 11u)], global0.c.x);
    var var_1 = global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(select(75314u & var_0.d, ~32839u, true) ^ global1.b.x, countOneBits(30728u)), var_0.d), 17u)];
    global3 = array<vec3<u32>, 11>();
    global0 = var_0;
    global1 = Struct_1(vec2<i32>(-_wgslsmith_clamp_i32(global0.a.x, ~65909i, 0i), ~(-_wgslsmith_div_i32(global0.a.x, -1i))), var_0.b, ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, global0.c.x, 4294967295u), vec3<u32>(u_input.a, global1.c.x, 4294967295u))), 0u);
    global4 = array<vec3<bool>, 17>();
    global4 = array<vec3<bool>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(-global1.a.x, ~_wgslsmith_mod_vec4_u32(~vec4<u32>(37636u, 1u, 1u, global1.d), vec4<u32>(4294967295u, 0u, global0.c.x, 0u)) & vec4<u32>(select(_wgslsmith_dot_vec2_u32(global0.c.yz, vec2<u32>(global1.b.x, 1u)), u_input.a, true), 1u, firstTrailingBit(~4294967295u), global1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -701f));
}

