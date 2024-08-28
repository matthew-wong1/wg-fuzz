struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: array<i32, 5>;

var<private> global2: Struct_1 = Struct_1(vec4<bool>(false, false, false, true), 52821u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec2<bool>, arg_3: i32) -> vec4<u32> {
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    return vec4<u32>(452u, global2.b, 4294967295u, 4294967295u);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>) -> bool {
    let var_0 = global0[_wgslsmith_index_u32(0u & ~arg_0.b, 7u)];
    let var_1 = ~global1[_wgslsmith_index_u32(firstTrailingBit(max(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b, 4294967295u, var_0.b), vec3<u32>(u_input.c, 28356u, arg_1.x)), 1u)) | max(1u, 0u), 5u)];
    global0 = array<Struct_1, 7>();
    let var_2 = false;
    global0 = array<Struct_1, 7>();
    return var_2;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(!(!global2.a), ~(4294967295u ^ (_wgslsmith_add_u32(4294967295u, global2.b) ^ ~1u)));
    let var_1 = vec3<i32>(-(_wgslsmith_div_i32(0i, max(u_input.a, -1i)) ^ _wgslsmith_dot_vec3_i32(abs(vec3<i32>(25104i, global1[_wgslsmith_index_u32(11251u, 5u)], global1[_wgslsmith_index_u32(4294967295u, 5u)])), vec3<i32>(-2147483647i, u_input.a, global1[_wgslsmith_index_u32(35944u, 5u)]))), -2147483647i, -abs(u_input.a));
    global1 = array<i32, 5>();
    let var_2 = !select(var_0.a.yyy, select(vec3<bool>(u_input.a <= global1[_wgslsmith_index_u32(36728u, 5u)], true, func_3(global0[_wgslsmith_index_u32(global2.b, 7u)], vec3<u32>(u_input.b.x, global2.b, 22967u))), global2.a.wzw, firstLeadingBit(global1[_wgslsmith_index_u32(var_0.b, 5u)]) <= abs(-1i)), any(!global2.a.ww));
    global0 = array<Struct_1, 7>();
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<u32>, arg_3: f32) -> u32 {
    global1 = array<i32, 5>();
    global2 = global0[_wgslsmith_index_u32(4294967295u, 7u)];
    let var_0 = ~firstTrailingBit(~vec3<u32>(100524u, ~45039u, 25908u));
    var var_1 = -(max(abs(vec3<i32>(32675i, global1[_wgslsmith_index_u32(u_input.b.x, 5u)], 0i)), _wgslsmith_add_vec3_i32(min(vec3<i32>(0i, global1[_wgslsmith_index_u32(154655u, 5u)], 1i), vec3<i32>(-13013i, u_input.a, u_input.a)), ~vec3<i32>(-2147483647i, -57949i, -16685i))) >> (~(vec3<u32>(4294967295u, 4294967295u, 1u) & vec3<u32>(var_0.x, arg_0.b, arg_2.x)) % vec3<u32>(32u)));
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -831f), 761f, _wgslsmith_div_f32(arg_3, _wgslsmith_f_op_f32(trunc(arg_3)))))));
    return 1455u << (var_0.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_1(global2.a.x, true, !(!select(vec2<bool>(false, false), global2.a.wz, vec2<bool>(false, global2.a.x))), firstLeadingBit(-22052i));
    global2 = global0[_wgslsmith_index_u32(~0u, 7u)];
    var var_1 = global0[_wgslsmith_index_u32(max(func_4(func_2(), u_input.b.x, (var_0.yx & (u_input.b.zx & var_0.zy)) ^ min(firstTrailingBit(vec2<u32>(4294967295u, 49186u)), vec2<u32>(u_input.c, var_0.x)), _wgslsmith_f_op_f32(max(-1009f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(780f, -1608f))))))), reverseBits(global2.b)), 7u)];
    global2 = global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec2_u32(select(firstLeadingBit(vec2<u32>(u_input.c, var_1.b)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, var_0.x), vec2<u32>(var_1.b, 1u)), select(var_1.a.xx, var_1.a.zx, false)), vec2<u32>(~30265u, 1u))) ^ firstTrailingBit(_wgslsmith_clamp_u32(~4294967295u << (abs(global2.b) % 32u), ~func_2().b, ~u_input.c)), 7u)];
    let var_2 = vec3<i32>(-_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(43342u, 5u)]), ~vec2<i32>(global1[_wgslsmith_index_u32(26775u, 5u)], -32215i)), -46113i), -(~global1[_wgslsmith_index_u32(~var_0.x, 5u)]), -global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(var_0.x, ~var_0.x), ~select(u_input.b.x, var_1.b, true)), 5u)]);
    let var_3 = func_2();
    var var_4 = 2147483647i;
    global1 = array<i32, 5>();
    var_1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(314f, _wgslsmith_div_vec2_u32(~vec2<u32>(0u, 0u), vec2<u32>(global2.b, func_2().b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -949f) - 1f), _wgslsmith_div_u32(~(~firstTrailingBit(1713u)), ~var_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-819f)), _wgslsmith_f_op_f32(abs(463f))))));
}

