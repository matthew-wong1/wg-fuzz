struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: Struct_2,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1>;

var<private> global1: array<u32, 10>;

var<private> global2: array<i32, 2> = array<i32, 2>(2147483647i, 0i);

var<private> global3: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(0u), Struct_1(82160u), Struct_1(1u), Struct_1(23906u), Struct_1(343u), Struct_1(577u), Struct_1(17076u), Struct_1(31544u), Struct_1(2340u), Struct_1(33375u), Struct_1(55966u), Struct_1(1u), Struct_1(0u), Struct_1(1u), Struct_1(0u), Struct_1(10323u), Struct_1(1u), Struct_1(24391u));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: u32) -> vec2<i32> {
    global3 = array<Struct_1, 18>();
    return _wgslsmith_add_vec2_i32(vec2<i32>(~1i, -1i), min(vec2<i32>(select(-29258i, global2[_wgslsmith_index_u32(1u, 2u)], false), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(arg_0, 10u)], 0u), 2u)]), vec2<i32>(u_input.b, u_input.b) << (u_input.a % vec2<u32>(32u))) & (vec2<i32>(global2[_wgslsmith_index_u32(min(4294967295u, arg_0), 2u)], global2[_wgslsmith_index_u32(~9490u, 2u)]) | vec2<i32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(29269u, 10u)], 2u)] >> (u_input.e.x % 32u), ~global2[_wgslsmith_index_u32(arg_0, 2u)])));
}

fn func_2() -> f32 {
    let var_0 = reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(~u_input.b, firstTrailingBit(2147483647i)), min(-vec2<i32>(17315i, u_input.c), _wgslsmith_div_vec2_i32(vec2<i32>(18172i, -1i), vec2<i32>(82933i, u_input.b)))) & func_3(u_input.a.x));
    let var_1 = var_0;
    var var_2 = -405f;
    global1 = array<u32, 10>();
    var var_3 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-497f, _wgslsmith_f_op_f32(1286f - _wgslsmith_f_op_f32(224f * 455f)), 1387f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-506f))), _wgslsmith_f_op_f32(-462f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -563f) * 1000f)), _wgslsmith_f_op_f32(max(-407f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -708f)))))), vec3<bool>(!(!all(vec2<bool>(false, false))), !any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true))), global2[_wgslsmith_index_u32(0u, 2u)] == var_1.x)));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -435f)));
}

fn func_1() -> i32 {
    var var_0 = global3[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(36717u, 15854u))), 18u)];
    let var_1 = _wgslsmith_add_u32(var_0.a, _wgslsmith_mult_u32(abs(global1[_wgslsmith_index_u32(1u, 10u)]), global1[_wgslsmith_index_u32(u_input.d, 10u)]));
    global2 = array<i32, 2>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -388f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1078f, -108f))))), _wgslsmith_f_op_f32(-677f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())))));
    let var_3 = _wgslsmith_f_op_f32(-var_2);
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 10>();
    var var_0 = -(_wgslsmith_add_i32(5956i, abs(global2[_wgslsmith_index_u32(u_input.e.x, 2u)]) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 28947u, 0u, u_input.a.x), vec4<u32>(u_input.e.x, 1u, u_input.e.x, 60233u)) % 32u)) & ~abs(firstLeadingBit(-4397i)));
    var_0 = func_1();
    let var_1 = reverseBits(countOneBits(~(~u_input.a.x)) >> (1u % 32u));
    global3 = array<Struct_1, 18>();
    let var_2 = true;
    var var_3 = Struct_3(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~max(vec3<u32>(var_1, global1[_wgslsmith_index_u32(0u, 10u)], 128977u), vec3<u32>(u_input.d, var_1, 6876u)), ~(~vec3<u32>(4294967295u, 1u, var_1))), 20915u, ~abs(~global1[_wgslsmith_index_u32(1u, 10u)])), firstLeadingBit(~_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1, u_input.d, var_1), vec3<u32>(0u, 14386u, global1[_wgslsmith_index_u32(0u, 10u)])), vec3<u32>(4294967295u, var_1, global1[_wgslsmith_index_u32(u_input.e.x, 10u)]), firstTrailingBit(vec3<u32>(var_1, u_input.e.x, u_input.d)))), Struct_2(~u_input.a, global3[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 18u)], global3[_wgslsmith_index_u32(u_input.e.x, 18u)], true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-763f - -1147f)), _wgslsmith_f_op_f32(f32(-1f) * -1670f))));
    global1 = array<u32, 10>();
    let var_4 = abs(~(11868u >> (~(var_1 & var_3.c.b.a) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(u_input.c, u_input.c), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_3.d.x, var_3.d.x, _wgslsmith_f_op_f32(ceil(-1040f)))))), ~vec2<i32>(u_input.c, u_input.b));
}

