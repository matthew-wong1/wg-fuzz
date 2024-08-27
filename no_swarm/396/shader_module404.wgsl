struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: f32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20>;

var<private> global1: i32 = 1i;

var<private> global2: array<Struct_1, 31>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    global2 = array<Struct_1, 31>();
    global1 = -9662i;
    let var_0 = 40689u;
    var var_1 = global0[_wgslsmith_index_u32(1u, 20u)];
    global2 = array<Struct_1, 31>();
    return arg_1;
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2) -> i32 {
    global1 = -34409i;
    let var_0 = -206f;
    let var_1 = max(_wgslsmith_dot_vec3_i32(~vec3<i32>(_wgslsmith_mult_i32(-49737i, -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(7657i, -18953i, 2147483647i), vec3<i32>(1i, 1i, 20888i)), i32(-1i) * -28387i), ~_wgslsmith_add_vec3_i32(abs(vec3<i32>(1i, 1i, -1i)), vec3<i32>(-40564i, 11000i, 7556i))), countOneBits(abs(countOneBits(_wgslsmith_clamp_i32(-2147483647i, 29690i, -2147483647i)))));
    var var_2 = arg_0;
    let var_3 = var_0;
    return var_1;
}

fn func_1(arg_0: i32) -> StorageBuffer {
    global0 = array<Struct_2, 20>();
    let var_0 = global0[_wgslsmith_index_u32(~(~(~1u)), 20u)];
    global1 = _wgslsmith_mult_i32(arg_0, _wgslsmith_add_i32(_wgslsmith_mod_i32(min(firstLeadingBit(arg_0), 11897i), func_3(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), func_2(Struct_2(vec2<u32>(0u, 31824u)), global0[_wgslsmith_index_u32(1u, 20u)]))), _wgslsmith_div_i32(arg_0, arg_0)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))));
    var var_2 = Struct_2(~(~(~(~u_input.a.zx))));
    return StorageBuffer(i32(-1i) * -18978i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(min(-830f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-231f, -479f)))));
    let var_2 = false;
    var var_3 = _wgslsmith_f_op_f32(407f + -1287f);
    let var_4 = global2[_wgslsmith_index_u32(u_input.a.x, 31u)];
    let x = u_input.a;
    s_output = func_1(firstLeadingBit(1i));
}

