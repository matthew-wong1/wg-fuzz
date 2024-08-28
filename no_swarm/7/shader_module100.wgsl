struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: f32) -> bool {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1415f), -364f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(arg_2 - arg_2)))), 123f);
    global0 = array<bool, 14>();
    return arg_0;
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    global0 = array<bool, 14>();
    global0 = array<bool, 14>();
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(120f, -440f, -714f) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1223f, -785f, -368f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(406f, 979f, 1082f)))))));
    global0 = array<bool, 14>();
    global0 = array<bool, 14>();
    return select(!(!vec2<bool>(true, global0[_wgslsmith_index_u32(39735u, 14u)] == false)), !arg_0.a.yz, true | any(!select(vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(0u, 14u)]), vec4<bool>(false, arg_0.a.x, false, false), false)));
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: bool) -> vec3<bool> {
    return vec3<bool>(all(vec4<bool>(!(false | arg_1), !arg_2, all(vec2<bool>(true, true)) != !global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, ~0u), 14u)])), arg_2, !all(!func_2(Struct_1(vec3<bool>(arg_1, true, arg_2), arg_1))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_3(firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, -4123i) << (vec2<u32>(45081u, 4294967295u) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(u_input.c, vec2<i32>(u_input.b, u_input.c.x)))), all(vec3<bool>(select(global0[_wgslsmith_index_u32(21209u, 14u)], false, global0[_wgslsmith_index_u32(1u, 14u)]), all(vec4<bool>(true, true, false, true)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 31124u), 14u)])), select(true, func_1(global0[_wgslsmith_index_u32(47316u, 14u)] | global0[_wgslsmith_index_u32(27980u, 14u)], 7859u, -1000f), all(func_2(Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 14u)], false, global0[_wgslsmith_index_u32(1u, 14u)]), false))))), all(!vec2<bool>(global0[_wgslsmith_index_u32(33758u, 14u)] == global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(~41293u, 14u)])));
    let var_1 = select(u_input.a, u_input.b, !(!var_0.b & true));
    var var_2 = vec3<u32>(1u, 1u, 1u);
    var var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-429f, -859f, -673f) * vec3<f32>(329f, -1883f, 1688f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(413f, -726f, 768f) + vec3<f32>(-503f, 878f, 450f)))))));
    var var_4 = _wgslsmith_div_vec3_i32(-vec3<i32>(u_input.b, ~firstLeadingBit(u_input.b), u_input.b), vec3<i32>(_wgslsmith_clamp_i32(max(1i, firstLeadingBit(0i)), 1i, -2147483647i), -2147483647i, _wgslsmith_mod_i32(0i, ~(u_input.c.x >> (4219u % 32u)))));
    global0 = array<bool, 14>();
    var var_5 = var_2.x;
    var_4 = vec3<i32>(abs(-_wgslsmith_sub_i32(var_4.x, var_1)), reverseBits(-3465i), var_1) | vec3<i32>(12156i, select(~2147483647i, i32(-1i) * -1i, ~var_4.x == -2147483647i), i32(-1i) * -firstTrailingBit(-1i));
    var_2 = _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(20596u, 87008u, var_2.x), vec3<u32>(1u, var_2.x, 45632u) << (vec3<u32>(93101u, var_2.x, var_2.x) % vec3<u32>(32u)), ~vec3<u32>(0u, var_2.x, 1u)) & ~vec3<u32>(4294967295u, 0u, var_2.x), vec3<u32>(45049u ^ var_2.x, 7474u, abs(0u)) << (vec3<u32>(1u >> (var_2.x % 32u), var_2.x, 0u) % vec3<u32>(32u))) | _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(~reverseBits(vec3<u32>(var_2.x, 4294967295u, var_2.x)), vec3<u32>(var_2.x, ~var_2.x, _wgslsmith_mult_u32(var_2.x, 4294967295u)), vec3<u32>(~18748u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, 19160u, 43813u, 36193u), vec4<u32>(38145u, var_2.x, 4294967295u, 3362u)), ~var_2.x)), _wgslsmith_mod_vec3_u32(~max(vec3<u32>(var_2.x, 44032u, 13742u), vec3<u32>(var_2.x, 0u, 0u)), ~(~vec3<u32>(var_2.x, var_2.x, var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(countOneBits(vec4<i32>(-1i) * -vec4<i32>(-42618i, 35147i, 0i, var_4.x))), -255f);
}

