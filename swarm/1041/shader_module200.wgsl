struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 20>;

var<private> global1: Struct_4;

var<private> global2: array<bool, 12> = array<bool, 12>(false, true, true, false, true, true, true, false, false, false, true, false);

var<private> global3: f32;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: u32) -> Struct_2 {
    return global1.a;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = global1.a;
    let var_1 = max(max(vec3<i32>(_wgslsmith_add_i32(-20722i, 1i), 4260i, -1i), vec3<i32>(1i, -1107i, abs(~(-1i)))), ~countOneBits(vec3<i32>(11194i, 2147483647i, 15208i) >> (vec3<u32>(u_input.a, 15120u, u_input.a) % vec3<u32>(32u))) ^ -vec3<i32>(1i, 1i, 1i));
    var var_2 = ~vec4<i32>(i32(-1i) * -(var_1.x ^ -1i), var_1.x, -(i32(-1i) * -var_1.x), _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, -2147483647i, var_1.x, var_1.x) ^ vec4<i32>(2147483647i, 4852i, var_1.x, var_1.x), ~vec4<i32>(-22985i, var_1.x, var_1.x, var_1.x) >> (firstLeadingBit(vec4<u32>(60327u, 23355u, 9027u, 4294967295u)) % vec4<u32>(32u))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1358f))), _wgslsmith_f_op_f32(f32(-1f) * -1469f), _wgslsmith_f_op_f32(f32(-1f) * -381f));
    var var_4 = Struct_4(Struct_2(var_0.a));
    return ~0i;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> StorageBuffer {
    var var_0 = abs(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(-11408i, 71641i, 1i), vec3<i32>(-1i, -2147483647i, -9557i)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 40724i, 35739i), vec3<i32>(-30543i, -32133i, -1i)), 48082i, _wgslsmith_div_i32(-1i, -2147483647i)), ~vec3<i32>(20035i, 2147483647i, 1i)), -vec3<i32>(-36043i, _wgslsmith_sub_i32(-1i, -2147483647i), i32(-1i) * -38903i), select(firstTrailingBit(reverseBits(vec3<i32>(-1i, -1i, 19450i))), -vec3<i32>(1i, 1i, 1i), !global1.a.a.a.xzy)));
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(559f, -427f, -1000f, -916f)))), vec4<f32>(-504f, _wgslsmith_f_op_f32(abs(-237f)), _wgslsmith_f_op_f32(2307f - 208f), 1427f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -923f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(608f, 1133f)), _wgslsmith_f_op_f32(abs(-771f)))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-493f + _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(round(-2199f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))));
    let var_3 = true;
    var var_4 = Struct_4(func_1(~(~(~85823u))));
    return StorageBuffer(~vec3<i32>(~64040i, func_3(global1.a.a, var_4.a.a), 2147483647i), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.x, 1000f, true))), var_1.x, _wgslsmith_clamp_vec3_u32(~(vec3<u32>(u_input.a, 4294967295u, u_input.a) ^ vec3<u32>(u_input.a, u_input.a, 53790u)), vec3<u32>(countOneBits(_wgslsmith_sub_u32(u_input.a, 4294967295u)), _wgslsmith_mod_u32(abs(0u), 1u), abs(~1u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a >> (u_input.a % 32u), u_input.a, abs(4294967295u)), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.a, 47562u), _wgslsmith_clamp_vec3_u32(vec3<u32>(45047u, 1u, 1u), vec3<u32>(u_input.a, 39050u, u_input.a), vec3<u32>(u_input.a, u_input.a, 4294967295u))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a.a.a.x && true;
    global0 = array<vec3<bool>, 20>();
    global2 = array<bool, 12>();
    var var_1 = func_1(u_input.a);
    let var_2 = !global0[_wgslsmith_index_u32(~4155u, 20u)];
    let x = u_input.a;
    s_output = func_2(global1.a, var_1.a);
}

