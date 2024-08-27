struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(11902i), Struct_1(-19106i), Struct_1(21776i), Struct_1(-1i), Struct_1(1i), Struct_1(11584i), Struct_1(-13292i), Struct_1(1i), Struct_1(-15672i), Struct_1(1i), Struct_1(1i), Struct_1(11699i), Struct_1(2147483647i), Struct_1(1i), Struct_1(2147483647i), Struct_1(0i), Struct_1(0i), Struct_1(13751i), Struct_1(-1i), Struct_1(-22363i));

var<private> global1: i32 = 0i;

var<private> global2: array<Struct_1, 3>;

var<private> global3: vec3<f32>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> u32 {
    return u_input.a.x >> (20205u % 32u);
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> u32 {
    let var_0 = Struct_1(~(-2147483647i));
    global0 = array<Struct_1, 20>();
    var var_1 = Struct_2(20266i);
    global0 = array<Struct_1, 20>();
    return _wgslsmith_dot_vec2_u32(u_input.a.xz, u_input.a.zx);
}

fn func_1() -> vec3<u32> {
    var var_0 = _wgslsmith_dot_vec4_u32(abs(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 3130u), ~vec4<u32>(u_input.a.x, 1u, u_input.a.x, 66017u)), vec4<u32>(u_input.a.x, ~0u, 41935u, ~u_input.a.x))), _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a.x, 87704u | u_input.a.x, 1u, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x))), vec4<u32>(4294967295u, _wgslsmith_add_u32(1u, u_input.a.x) | _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), u_input.a.zx), func_3(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_sub_i32(1i, 0i), global0[_wgslsmith_index_u32(func_2(), 20u)], -36924i), abs(u_input.a.x ^ 1u)), _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(1u, 0u, 48398u, 1u)), select(vec4<u32>(u_input.a.x, 43007u, u_input.a.x, 17146u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), true)) | firstTrailingBit(select(vec4<u32>(u_input.a.x, 86774u, 4294967295u, u_input.a.x), vec4<u32>(10233u, u_input.a.x, u_input.a.x, 0u), true))));
    var var_1 = Struct_2(~1i);
    let var_2 = Struct_2(var_1.a);
    var var_3 = false;
    let var_4 = select(-vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_1.a, -1i, var_1.a), vec4<i32>(0i, 1i, 14820i, 1i)), -1i, 1i), ~reverseBits(-vec3<i32>(var_1.a, -66124i, var_2.a) | abs(vec3<i32>(var_2.a, 27870i, var_2.a))), any(vec3<bool>(true, true, true)));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 20>();
    global1 = abs(-22521i & _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 2147483647i), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, 38733i), vec2<i32>(107655i, -1i)))) << (4294967295u % 32u);
    let var_0 = vec4<u32>(~u_input.a.x, _wgslsmith_mod_u32(~(~1u), 4294967295u), _wgslsmith_dot_vec3_u32(u_input.a, func_1()), 4294967295u);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(global3.x, global3.x), 210f), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global3.x, global3.x), vec2<f32>(global3.x, -3205f)) * global3.yz), -1535f >= _wgslsmith_f_op_f32(global3.x * global3.x)))) - _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + global3.x)), 1618f), vec2<f32>(_wgslsmith_f_op_f32(1081f - global3.x), _wgslsmith_f_op_f32(-1740f - _wgslsmith_div_f32(global3.x, 946f)))));
    global3 = vec3<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + global3.x), var_1.x)) * -669f), _wgslsmith_f_op_f32(-1308f + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(828f, _wgslsmith_f_op_f32(var_1.x * var_1.x))))));
    var var_2 = Struct_2(-2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-1f))), var_1.x), var_2.a, 1057f, ~firstLeadingBit(_wgslsmith_sub_vec4_i32(max(vec4<i32>(-33650i, var_2.a, 20002i, var_2.a), vec4<i32>(var_2.a, 0i, var_2.a, 0i)), min(vec4<i32>(-70803i, var_2.a, var_2.a, -20040i), vec4<i32>(var_2.a, var_2.a, var_2.a, -2147483647i)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-483f, var_1.x, var_1.x))))));
}

