struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_1,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23>;

var<private> global1: f32;

var<private> global2: Struct_2;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32) -> u32 {
    let var_0 = Struct_2(Struct_1(global2.a.a));
    var var_1 = !(!any(vec4<bool>(true, true, true, true)));
    var var_2 = ~vec4<i32>(u_input.a.x, 1i, u_input.a.x, -1i | _wgslsmith_add_i32(min(u_input.a.x, u_input.a.x), max(2147483647i, 29348i)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(507f, -1143f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1002f + -840f), _wgslsmith_f_op_f32(f32(-1f) * -1138f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(3162u, 23u)])) * -1085f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1289f, -1044f, global2.a.a.x, -128f), global2.a.a)))) * var_0.a.a)));
    let var_4 = !vec3<bool>((1427f >= _wgslsmith_div_f32(764f, var_3.a.x)) & true, !all(vec2<bool>(false, true)), any(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), false), vec4<bool>(false, true, false, false))));
    return firstLeadingBit(select(~countOneBits(4294967295u), reverseBits(0u), false)) & _wgslsmith_mult_u32(~87257u, _wgslsmith_div_u32(17974u, firstTrailingBit(15294u)));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: i32) -> Struct_2 {
    global1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 23u)] + arg_1) - global2.a.a.x), -782f)));
    var var_0 = vec2<u32>(~func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.a.x, global0[_wgslsmith_index_u32(3223u, 23u)])), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), ~reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(64060u, 37431u)))) ^ vec2<u32>(11395u, 17903u);
    return Struct_2(Struct_1(global2.a.a));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec4<u32>, arg_3: u32) -> Struct_2 {
    var var_0 = u_input.a.yz;
    global1 = arg_0.a.x;
    global2 = func_2(~_wgslsmith_add_i32(-u_input.a.x, var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-514f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 23u)] * global0[_wgslsmith_index_u32(arg_2.x, 23u)])))), _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, reverseBits(u_input.a.x)), ~(~u_input.a.zy)));
    var var_1 = -min(u_input.a.x >> (arg_3 % 32u), -41510i);
    global0 = array<f32, 23>();
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    var var_1 = u_input.a.x;
    var var_2 = vec4<i32>(select(2147483647i, ~(~(i32(-1i) * -17050i)), true), _wgslsmith_mod_i32(-(~_wgslsmith_div_i32(u_input.a.x, u_input.a.x)), u_input.a.x & u_input.a.x), u_input.a.x, u_input.a.x);
    var var_3 = func_1(global2.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_div_u32(var_0, var_0), _wgslsmith_sub_u32(4294967295u, 100554u), var_0 << (var_0 % 32u), _wgslsmith_mod_u32(4294967295u, 4294967295u)), _wgslsmith_div_vec4_u32(select(~vec4<u32>(var_0, var_0, 4294967295u, var_0), _wgslsmith_div_vec4_u32(vec4<u32>(var_0, var_0, 2270u, 1u), vec4<u32>(var_0, 76215u, var_0, var_0)), vec4<bool>(true, true, true, true)), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, var_0, var_0, var_0), vec4<u32>(var_0, var_0, 32071u, 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, var_0, var_0, var_0), vec4<u32>(var_0, 34035u, 2921u, var_0))))), ~vec4<u32>(var_0, ~reverseBits(var_0), reverseBits(~4294967295u), 22281u), _wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(59074u, 1u, 12509u, var_0)), vec4<u32>(var_0, var_0, 14461u, 43217u) >> (vec4<u32>(var_0, 4294967295u, var_0, 4294967295u) % vec4<u32>(32u)))), ~(~(~vec4<u32>(0u, 1u, var_0, 1u)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0 ^ countOneBits(~abs(4294967295u)), 10029i, vec2<i32>(max(max(u_input.a.x, 0i), _wgslsmith_mult_i32(23129i, 0i)), var_2.x) | vec2<i32>(var_2.x, u_input.a.x));
}

