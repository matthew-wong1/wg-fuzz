struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_3 = Struct_3(vec3<bool>(false, true, true));

var<private> global2: array<Struct_2, 13>;

var<private> global3: array<vec3<bool>, 28>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> i32 {
    var var_0 = select(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, min(u_input.b, u_input.b)), _wgslsmith_add_vec2_u32(abs(vec2<u32>(1u, u_input.b)), vec2<u32>(u_input.b, u_input.b))), ~(~vec2<u32>(u_input.b, u_input.b))), vec2<u32>(74003u, ~1u) >> (vec2<u32>(u_input.b >> (u_input.b % 32u), u_input.b) % vec2<u32>(32u)), select(!(!(!global1.a.yy)), vec2<bool>(true, true & any(vec4<bool>(global1.a.x, global1.a.x, false, global1.a.x))), any(select(vec2<bool>(false, global1.a.x), global1.a.xz, select(vec2<bool>(false, global1.a.x), vec2<bool>(global1.a.x, global1.a.x), true)))));
    var var_1 = u_input.a.x;
    var_1 = u_input.a.x;
    let var_2 = 77450u;
    var var_3 = !(var_2 != max(u_input.b, var_2));
    return -u_input.a.x;
}

fn func_2() -> vec2<bool> {
    var var_0 = false;
    global2 = array<Struct_2, 13>();
    var var_1 = ~(-(~vec3<i32>(-1i, u_input.a.x | 38465i, func_3())));
    var var_2 = ~4294967295u == ~u_input.b;
    var_0 = !(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(0u, u_input.b, u_input.b)) | ~0u) >= countOneBits(36482u));
    return select(global1.a.xz, select(!(!(!vec2<bool>(global1.a.x, global1.a.x))), !global1.a.yy, select(!global1.a.yy, vec2<bool>(any(vec3<bool>(true, global1.a.x, global1.a.x)), !global1.a.x), global1.a.x)), global1.a.yz);
}

fn func_1() -> vec3<u32> {
    var var_0 = -(vec3<i32>(-1i) * -vec3<i32>(~u_input.a.x, -u_input.a.x, 1i));
    global3 = array<vec3<bool>, 28>();
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(283f + -704f), -249f) * -1119f)), -665f));
    let var_2 = vec4<bool>(any(func_2()), all(select(select(vec4<bool>(global1.a.x, false, global1.a.x, global1.a.x), !vec4<bool>(global1.a.x, global1.a.x, global1.a.x, false), !global1.a.x), select(!vec4<bool>(global1.a.x, global1.a.x, global1.a.x, false), !vec4<bool>(global1.a.x, global1.a.x, true, global1.a.x), select(vec4<bool>(true, global1.a.x, false, global1.a.x), vec4<bool>(false, true, global1.a.x, false), false)), select(vec4<bool>(global1.a.x, global1.a.x, global1.a.x, global1.a.x), !vec4<bool>(global1.a.x, global1.a.x, false, false), true))), true, false);
    var var_3 = vec4<bool>(true, true, false, 4294967295u <= u_input.b);
    return _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b ^ 1u, _wgslsmith_div_u32(~u_input.b, u_input.b), _wgslsmith_clamp_u32(countOneBits(1u), ~u_input.b, ~31862u)), _wgslsmith_add_vec3_u32(select(vec3<u32>(1u, 1u, 1u), reverseBits(vec3<u32>(42529u, u_input.b, u_input.b)), vec3<bool>(false, global1.a.x, global1.a.x)), vec3<u32>(u_input.b, 4294967295u, 87154u) & select(vec3<u32>(4294967295u, 102937u, u_input.b), vec3<u32>(u_input.b, 4294967295u, 52171u), false))), vec3<u32>(~abs(~u_input.b), ~firstTrailingBit(107047u), _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(68333u, u_input.b), vec2<u32>(4294967295u, 0u)), firstLeadingBit(50396u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -221f), -332f))), !(!all(global1.a)), 0i, 802f, 1i);
    var var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(14532i, max(u_input.a.x, _wgslsmith_div_i32(-var_0.e, max(-2147483647i, -45772i)))), min(_wgslsmith_clamp_vec2_i32(firstLeadingBit(u_input.a >> (vec2<u32>(6101u, 0u) % vec2<u32>(32u))), abs(vec2<i32>(u_input.a.x, -2147483647i)), -u_input.a), vec2<i32>(_wgslsmith_add_i32(var_0.c, var_0.c) & 33247i, 70124i)));
    let var_2 = vec4<bool>(var_0.b, var_0.b && false, false, true);
    var var_3 = _wgslsmith_add_vec3_i32(vec3<i32>(46979i, var_1.x, -(i32(-1i) * -1i)), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, var_1.x, u_input.a.x << (1u % 32u)) << (func_1() % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(~select(vec3<i32>(var_1.x, var_1.x, u_input.a.x), vec3<i32>(2515i, 20115i, u_input.a.x), vec3<bool>(true, global1.a.x, var_2.x)), _wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(var_1.x, -4984i, 2147483647i)), ~vec3<i32>(var_1.x, var_0.c, var_1.x)))));
    var var_4 = all(select(select(select(!vec3<bool>(false, var_2.x, global1.a.x), select(global1.a, vec3<bool>(true, global1.a.x, true), var_2.xyy), !var_2.x), !select(vec3<bool>(true, false, var_2.x), var_2.zwy, global3[_wgslsmith_index_u32(u_input.b, 28u)]), select(global1.a, vec3<bool>(global1.a.x, true, var_0.b), any(var_2))), !global3[_wgslsmith_index_u32(u_input.b, 28u)], func_2().x));
    var var_5 = Struct_3(global1.a);
    let var_6 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.d, -1024f)))))))) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(var_0.a * -380f), _wgslsmith_f_op_f32(f32(-1f) * -1159f)))));
    global3 = array<vec3<bool>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -25166i, vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, var_0.e), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.x, -55586i), var_3.xx, var_3.zx)) ^ 1i, var_3.x, ~(-var_1.x)));
}

