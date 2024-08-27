struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<bool>,
    e: f32,
}

struct Struct_5 {
    a: u32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 12>;

var<private> global1: array<vec3<u32>, 8>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_3) -> f32 {
    var var_0 = arg_0.a;
    var var_1 = global1[_wgslsmith_index_u32(arg_2.a.a, 8u)];
    global1 = array<vec3<u32>, 8>();
    var var_2 = _wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(-var_0.d));
    let var_3 = firstTrailingBit(vec4<i32>(var_0.e, arg_0.c.x, var_0.e & (_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.a.e, -56460i, arg_2.a.e, arg_0.c.x), vec4<i32>(u_input.a.x, 40802i, 14033i, -1i)) | 3392i), arg_0.c.x));
    return var_0.d;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: Struct_3) -> Struct_1 {
    global0 = array<Struct_4, 12>();
    let var_0 = true;
    global1 = array<vec3<u32>, 8>();
    global0 = array<Struct_4, 12>();
    var var_1 = 52889u;
    return Struct_1(arg_0.x >> (arg_0.x % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, 904f, arg_2.a) + vec3<f32>(arg_2.a, arg_2.a, arg_2.a))))), 1u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -301f), _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(~(~arg_0.x), 12u)], arg_2, Struct_4(Struct_1(4219u, vec3<f32>(arg_2.a, 649f, -114f), 0u, arg_2.a, arg_1.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, arg_0.x, arg_0.x, 1u), vec4<u32>(49367u, 0u, arg_0.x, 101738u), vec4<u32>(arg_0.x, 4294967295u, arg_0.x, 57215u)), vec3<i32>(u_input.b.x, 0i, arg_1.x), vec3<bool>(var_0, var_0, true), arg_2.a), arg_2))), _wgslsmith_add_i32(_wgslsmith_clamp_i32(~abs(u_input.a.x), max(u_input.a.x, ~(-31916i)), -min(0i, arg_1.x)), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_1.x, 0i, arg_1.x), vec4<i32>(arg_1.x, -1i, arg_1.x, u_input.b.x)))));
}

fn func_4(arg_0: Struct_4) -> u32 {
    return ~_wgslsmith_clamp_u32(_wgslsmith_div_u32(4813u, ~(~arg_0.b.x)), arg_0.a.c, ~_wgslsmith_dot_vec4_u32(max(arg_0.b, arg_0.b), vec4<u32>(arg_0.b.x, 4294967295u, arg_0.a.a, 48774u)));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<i32>) -> u32 {
    var var_0 = min(~(~vec3<u32>(_wgslsmith_div_u32(1u, 32678u), reverseBits(0u), ~0u)), global1[_wgslsmith_index_u32(abs(func_4(Struct_4(func_2(global1[_wgslsmith_index_u32(0u, 8u)], vec4<i32>(arg_1.x, arg_1.x, arg_1.x, -25417i), Struct_3(-1000f)), min(vec4<u32>(37414u, 30744u, 56576u, 4294967295u), vec4<u32>(4294967295u, 53229u, 85452u, 27092u)), _wgslsmith_div_vec3_i32(arg_1, vec3<i32>(2147483647i, -1i, arg_1.x)), vec3<bool>(false, true, arg_0.x), _wgslsmith_f_op_f32(floor(189f))))), 8u)]);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(384f, 1594f, -709f))))) + func_2(select(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.x, 4294967295u, 4294967295u), vec4<u32>(var_0.x, var_0.x, 47076u, 0u)), var_0.x, ~var_0.x), vec3<u32>(8791u >> (var_0.x % 32u), var_0.x | var_0.x, abs(var_0.x)), !vec3<bool>(false, false, arg_0.x)), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -1i, -11764i, arg_1.x), vec4<i32>(u_input.b.x, arg_1.x, -1i, 1i)), max(vec4<i32>(0i, 22447i, 17572i, arg_1.x), vec4<i32>(u_input.a.x, arg_1.x, 61824i, 16203i))) & vec4<i32>(75845i, u_input.a.x ^ arg_1.x, u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, arg_1.x), vec2<i32>(0i, 26674i))), Struct_3(-3417f)).b);
    let var_2 = var_1.x;
    var var_3 = func_2(firstTrailingBit(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.x, min(0u, 1u)), 8u)]) ^ ~(_wgslsmith_clamp_vec3_u32(global1[_wgslsmith_index_u32(var_0.x, 8u)], vec3<u32>(4294967295u, 0u, 1u), global1[_wgslsmith_index_u32(var_0.x, 8u)]) ^ _wgslsmith_add_vec3_u32(vec3<u32>(0u, var_0.x, 0u), vec3<u32>(var_0.x, var_0.x, var_0.x))), (select(vec4<i32>(arg_1.x, u_input.a.x, -2147483647i, -1i), _wgslsmith_mod_vec4_i32(vec4<i32>(29291i, u_input.a.x, arg_1.x, arg_1.x), vec4<i32>(u_input.a.x, arg_1.x, -31220i, -1i)), false) ^ _wgslsmith_div_vec4_i32(-vec4<i32>(u_input.a.x, 8603i, arg_1.x, arg_1.x), vec4<i32>(arg_1.x, u_input.b.x, u_input.a.x, arg_1.x) >> (vec4<u32>(49198u, var_0.x, var_0.x, var_0.x) % vec4<u32>(32u)))) >> (_wgslsmith_sub_vec4_u32(firstLeadingBit(firstTrailingBit(vec4<u32>(var_0.x, 61758u, 60141u, 44995u))), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, 0u, 33161u, 4294967295u), vec4<u32>(var_0.x, var_0.x, 4029u, 0u), vec4<u32>(34113u, 4294967295u, 1u, 49791u)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 56776u, var_0.x, 4294967295u), vec4<u32>(0u, var_0.x, var_0.x, 1u)), true)) % vec4<u32>(32u)), Struct_3(_wgslsmith_f_op_f32(var_1.x * var_1.x))).c;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(reverseBits(_wgslsmith_div_i32(-1i ^ (u_input.a.x ^ u_input.b.x), u_input.b.x)));
    var var_1 = func_1(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), -(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) ^ vec3<i32>(-1i, u_input.a.x, u_input.b.x)) >> (global1[_wgslsmith_index_u32(0u, 8u)] % vec3<u32>(32u)));
    var_1 = _wgslsmith_mod_u32(~(~firstTrailingBit(~62124u)), ~67257u);
    let x = u_input.a;
    s_output = StorageBuffer(1u, max(_wgslsmith_add_vec2_u32(~vec2<u32>(1u, 1u), ~firstTrailingBit(vec2<u32>(4294967295u, 9470u))), abs(~_wgslsmith_div_vec2_u32(vec2<u32>(4003u, 99659u), vec2<u32>(19327u, 20804u)))), ~vec4<u32>(~1u, ~min(4294967295u, 1u), max(_wgslsmith_mult_u32(0u, 1u), func_1(vec3<bool>(true, true, false), vec3<i32>(29746i, -3894i, u_input.a.x))), ~(0u << (1u % 32u))), 83701u, ~firstLeadingBit(~abs(global1[_wgslsmith_index_u32(54127u, 8u)])));
}

