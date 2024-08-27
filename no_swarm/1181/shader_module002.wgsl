struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

var<private> global1: array<vec3<i32>, 16>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: i32) -> vec3<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1337f, -1626f), vec2<f32>(-300f, -1363f)))))), _wgslsmith_mod_u32(abs(u_input.b), countOneBits(~1u)) & u_input.a.x);
    let var_1 = vec4<i32>(-77897i, -33383i, -_wgslsmith_add_i32(42238i, -_wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(u_input.b, 16u)], vec3<i32>(0i, arg_1.x, arg_2))), -(i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.e, -18784i), u_input.d)));
    var var_2 = false && global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.b, 4294967295u), 3u)];
    global1 = array<vec3<i32>, 16>();
    let var_3 = true;
    return max(countOneBits(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, arg_1.x, u_input.d.x), vec3<i32>(arg_2, arg_1.x, -34652i)), global1[_wgslsmith_index_u32(58113u, 16u)] >> (vec3<u32>(115448u, var_0.b, 50984u) % vec3<u32>(32u)), vec3<i32>(var_1.x, var_1.x, -1i))) >> (~min(~vec3<u32>(var_0.b, 0u, 13240u), vec3<u32>(64386u, 1u, var_0.b)) % vec3<u32>(32u)), vec3<i32>(arg_1.x, ~(-var_1.x), abs(firstLeadingBit(-38869i))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> u32 {
    let var_0 = -func_3(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, arg_3.b, arg_0.b), firstLeadingBit(vec3<u32>(4294967295u, arg_3.b, 4294967295u))) >> ((_wgslsmith_div_u32(arg_3.b, 0u) << (28797u % 32u)) % 32u), 3u)], -(~(-vec4<i32>(u_input.c.x, 39375i, u_input.c.x, 0i))), i32(-1i) * -u_input.c.x);
    var var_1 = -39857i;
    var var_2 = vec2<i32>(_wgslsmith_div_i32(-var_0.x, -40221i), u_input.e);
    var var_3 = _wgslsmith_clamp_u32(arg_0.b, 20200u, ~arg_3.b);
    var var_4 = Struct_2(arg_0.b, !((any(vec3<bool>(true, global0[_wgslsmith_index_u32(26076u, 3u)], true)) != true) || (select(global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(92908u, 3u)], global0[_wgslsmith_index_u32(arg_0.b, 3u)]) || true)), -var_0.x);
    return ~arg_1.b;
}

fn func_1(arg_0: vec3<i32>) -> vec2<u32> {
    global1 = array<vec3<i32>, 16>();
    global1 = array<vec3<i32>, 16>();
    var var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(u_input.b, u_input.b, func_2(Struct_1(vec2<f32>(1021f, 732f), u_input.a.x), Struct_1(vec2<f32>(1521f, -226f), 4294967295u), vec3<f32>(1960f, -394f, -803f), Struct_1(vec2<f32>(296f, 239f), 60045u))), ~(4294967295u >> (u_input.b % 32u)), ~47292u), reverseBits((vec3<u32>(u_input.b, 0u, 1u) & vec3<u32>(1u, 19026u, u_input.a.x)) >> (abs(vec3<u32>(u_input.a.x, u_input.b, u_input.b)) % vec3<u32>(32u)))) >> (37225u % 32u);
    var_0 = 0u;
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))))), -706f), u_input.a.x);
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(~func_1(-u_input.d.yyw));
}

