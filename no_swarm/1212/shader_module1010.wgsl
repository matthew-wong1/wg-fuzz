struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<u32, 19> = array<u32, 19>(7560u, 4294967295u, 1u, 0u, 51558u, 5822u, 4294967295u, 36126u, 5032u, 48358u, 84402u, 85733u, 48356u, 4294967295u, 43476u, 1u, 18746u, 0u, 4294967295u);

var<private> global2: f32 = 442f;

var<private> global3: array<Struct_1, 19>;

var<private> global4: array<Struct_1, 4>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: vec2<bool>, arg_3: Struct_1) -> u32 {
    global1 = array<u32, 19>();
    let var_0 = ~firstTrailingBit(-26448i);
    var var_1 = global1[_wgslsmith_index_u32(0u, 19u)];
    var var_2 = firstLeadingBit(79675i);
    var_2 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(~firstTrailingBit(arg_1), 1i), 62483i, -_wgslsmith_add_i32(arg_1, arg_1 << (global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(arg_3.b.x, 19u)], 19u)] % 32u)));
    return countOneBits(~4294967295u);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> i32 {
    var var_0 = arg_1;
    global1 = array<u32, 19>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) * _wgslsmith_f_op_f32(-arg_0));
    var var_2 = vec4<u32>(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(f32(-1f) * -1119f)) - arg_0), u_input.a.x, vec2<bool>(!global0.x, !(-594f <= arg_0)), global3[_wgslsmith_index_u32(0u, 19u)]), firstTrailingBit(u_input.c.x), 101528u, 4294967295u << (max(0u, firstLeadingBit(arg_2) | (global1[_wgslsmith_index_u32(arg_2, 19u)] | arg_1.a.x)) % 32u));
    global3 = array<Struct_1, 19>();
    return -abs(min(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.a.xw), ~57936i)) & firstTrailingBit((_wgslsmith_dot_vec2_i32(u_input.b.xx, vec2<i32>(-37240i, -2655i)) << (u_input.c.x % 32u)) & u_input.b.x);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<f32>) -> vec4<bool> {
    var var_0 = select(-abs(_wgslsmith_add_i32(func_2(-683f, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(14838u, 19u)], 19u)], 6376u), -84096i)), -1i, select(!select(select(true, global0.x, false), arg_0.x, false), true, global0.x));
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.c.xy, ~(~vec2<u32>(global1[_wgslsmith_index_u32(36053u, 19u)], global1[_wgslsmith_index_u32(u_input.c.x, 19u)]))), _wgslsmith_sub_u32(40287u, global1[_wgslsmith_index_u32(73735u | _wgslsmith_div_u32(4294967295u, global1[_wgslsmith_index_u32(46561u, 19u)]), 19u)])), firstLeadingBit(~_wgslsmith_mod_u32(~u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c.x), vec2<u32>(u_input.c.x, global1[_wgslsmith_index_u32(58451u, 19u)]))))), 19u)];
    var var_2 = arg_0.wx;
    let var_3 = arg_1.x;
    var var_4 = firstLeadingBit(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)), Struct_1(vec3<u32>(103662u, 24070u, 0u), vec4<u32>(1u, global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 19u)], 19u)], 4294967295u)), select(76553u, _wgslsmith_add_u32(u_input.c.x, 40527u), all(arg_0)))) ^ ~u_input.a.x;
    return !arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(-(2147483647i << (~global1[_wgslsmith_index_u32(u_input.c.x, 19u)] % 32u)) >> (0u % 32u));
    var var_1 = Struct_1(~u_input.c, _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 49571u, u_input.c.x, global1[_wgslsmith_index_u32(1u, 19u)]), vec4<u32>(25338u, 21691u, 24713u, u_input.c.x))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 19u)], 19u)], 19u)], 1u, global1[_wgslsmith_index_u32(u_input.c.x, 19u)]), vec4<u32>(19741u, u_input.c.x, u_input.c.x, u_input.c.x) >> (vec4<u32>(92771u, global1[_wgslsmith_index_u32(1u, 19u)], u_input.c.x, u_input.c.x) % vec4<u32>(32u)), ~vec4<u32>(global1[_wgslsmith_index_u32(34922u, 19u)], 4294967295u, u_input.c.x, u_input.c.x))), ~(~vec4<u32>(1u, u_input.c.x, 4294967295u, 67957u))));
    global1 = array<u32, 19>();
    global3 = array<Struct_1, 19>();
    global0 = vec4<bool>(!global0.x, all(func_1(vec4<bool>(all(vec2<bool>(global0.x, global0.x)), select(true, global0.x, global0.x), false, !global0.x), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-382f, -714f, -207f), vec3<f32>(2270f, 397f, 2663f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(736f, 425f, -383f)))))), false, global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, ~vec2<u32>(_wgslsmith_sub_u32(~u_input.c.x, select(49709u, 1u, false)), _wgslsmith_div_u32(max(95560u, 4294967295u), 113044u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1000f, -865f), _wgslsmith_f_op_f32(554f + _wgslsmith_f_op_f32(min(-1138f, 498f)))))), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(u_input.c.x ^ u_input.c.x, _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(2476u, 19u)], u_input.c.x))), 19u)], 19u)], _wgslsmith_add_u32(0u, firstLeadingBit(1u)), ~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10692u, 19u)], 19u)], u_input.c.x, 25318u, u_input.c.x)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.c.x, 1u, 23400u), var_1.b))));
}

