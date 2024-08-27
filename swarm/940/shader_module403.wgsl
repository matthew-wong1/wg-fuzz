struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1) -> f32 {
    let var_0 = false;
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-350f * 692f), 339f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(949f, -380f))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1543f)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -837f))))) - var_1.x);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec4<bool>) -> f32 {
    let var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(~(-7016i), arg_1.c, ~arg_1.a), vec3<i32>(abs(-44686i), ~(-arg_1.c), ~_wgslsmith_sub_i32(arg_1.a, arg_1.c))), _wgslsmith_sub_vec3_i32(firstLeadingBit(max(vec3<i32>(-2147483647i, arg_1.a, -1i), vec3<i32>(arg_1.a, arg_1.c, -1i) | vec3<i32>(1i, arg_1.a, arg_1.a))), -select(firstTrailingBit(vec3<i32>(arg_1.a, arg_1.c, 4259i)), -vec3<i32>(15537i, arg_1.c, arg_1.a), !arg_2.x)));
    let var_1 = arg_1;
    var var_2 = vec4<u32>(arg_0, 0u, ~firstLeadingBit(_wgslsmith_mod_u32(arg_0, ~56949u)), _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.b.x, 57420u), arg_1.b.yx), _wgslsmith_mult_vec2_u32(arg_1.b.yz, u_input.a.zw)), _wgslsmith_add_u32(~arg_1.b.x, 59414u)));
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    return 915f;
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: vec3<u32>) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4379u, u_input.a.x), 11u)];
    let var_1 = arg_0;
    global0 = array<Struct_1, 11>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, var_1, var_1, _wgslsmith_f_op_f32(exp2(arg_0)))));
    return var_0.b.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: bool) -> u32 {
    global0 = array<Struct_1, 11>();
    var var_0 = u_input.a.x;
    var var_1 = u_input.a.yw;
    var var_2 = var_1.x >= func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.a.x, global0[_wgslsmith_index_u32(22105u, 11u)], vec4<bool>(arg_1, arg_1, true, true)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-393f - 749f), -187f)), u_input.a.x, u_input.a.yxz);
    var var_3 = global0[_wgslsmith_index_u32(55949u, 11u)];
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 11>();
    var var_0 = _wgslsmith_f_op_f32(153f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(vec4<bool>(true, true, true, true), Struct_1(1i, u_input.a.ywz, 39971i))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(vec4<bool>(true, true, true, false), Struct_1(-1i, vec3<u32>(u_input.a.x, u_input.a.x, 15050u), -2147483647i))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f + -875f))), true)))));
    let var_1 = ~(-(~(~_wgslsmith_dot_vec4_i32(vec4<i32>(-22886i, 0i, 2147483647i, -9480i), vec4<i32>(11523i, -12194i, -2147483647i, -2147483647i)))));
    var_0 = 2513f;
    var var_2 = ~max(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(34907i, 1i, -15000i, var_1), vec4<i32>(var_1, var_1, var_1, var_1)), vec4<i32>(var_1, 20957i, 2147483647i, var_1)), var_1, 49725i, -var_1 >> (firstLeadingBit(u_input.a.x) % 32u)), min(vec4<i32>(var_1, 12689i, -var_1, reverseBits(var_1)), _wgslsmith_mult_vec4_i32(max(vec4<i32>(-27806i, var_1, -34721i, var_1), vec4<i32>(2147483647i, 0i, var_1, 2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-28351i, var_1, var_1, 2147483647i), vec4<i32>(-2147483647i, 0i, var_1, 2147483647i)))));
    let var_3 = Struct_1(26056i | (var_1 & _wgslsmith_sub_i32(-2147483647i, var_2.x)), vec3<u32>(u_input.a.x, func_2(~vec3<i32>(1i, var_1, var_2.x), true), abs(abs(60117u))) ^ ~u_input.a.yzz, -(-(72787i ^ var_1) | 1i));
    var_2 = -_wgslsmith_clamp_vec4_i32(min(vec4<i32>(_wgslsmith_mod_i32(-1i, 1026i), firstLeadingBit(3068i), var_2.x, ~var_1), vec4<i32>(-39755i, var_3.a, var_2.x, 2147483647i) >> (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 95794u) % vec4<u32>(32u))), min(abs(vec4<i32>(-18298i, 4642i, var_3.a, var_2.x) | vec4<i32>(-1i, 1i, var_3.a, var_3.a)), vec4<i32>(-1i) * -vec4<i32>(2147483647i, var_2.x, var_3.a, -1i)), firstTrailingBit(-vec4<i32>(24227i, var_2.x, 1i, var_3.a)));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec3<i32>(-63239i, -1i, var_2.x), abs(var_2.zzx)));
}

