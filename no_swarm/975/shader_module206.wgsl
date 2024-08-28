struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 27> = array<vec3<u32>, 27>(vec3<u32>(63511u, 10144u, 1u), vec3<u32>(1u, 26260u, 1u), vec3<u32>(4294967295u, 70897u, 0u), vec3<u32>(1u, 30787u, 6801u), vec3<u32>(15047u, 0u, 0u), vec3<u32>(20354u, 1u, 5598u), vec3<u32>(0u, 10567u, 16160u), vec3<u32>(61367u, 0u, 15446u), vec3<u32>(34093u, 0u, 9341u), vec3<u32>(13658u, 1u, 15842u), vec3<u32>(4294967295u, 18675u, 1u), vec3<u32>(8259u, 0u, 18397u), vec3<u32>(0u, 1u, 74022u), vec3<u32>(27552u, 1u, 1u), vec3<u32>(73705u, 15004u, 17413u), vec3<u32>(24079u, 3507u, 46794u), vec3<u32>(4294967295u, 3626u, 27868u), vec3<u32>(20374u, 59780u, 0u), vec3<u32>(8377u, 27946u, 0u), vec3<u32>(0u, 58193u, 4294967295u), vec3<u32>(19631u, 48948u, 7763u), vec3<u32>(4294967295u, 16875u, 4758u), vec3<u32>(27657u, 0u, 21863u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(1u, 0u, 20683u));

var<private> global1: array<bool, 29>;

var<private> global2: array<u32, 27> = array<u32, 27>(0u, 18205u, 4294967295u, 78378u, 0u, 90687u, 0u, 54290u, 4294967295u, 32088u, 4294967295u, 1u, 16617u, 1u, 0u, 77127u, 101878u, 74688u, 100111u, 18774u, 9263u, 18429u, 1u, 1u, 0u, 43071u, 1u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<bool>) -> u32 {
    global1 = array<bool, 29>();
    global2 = array<u32, 27>();
    let var_0 = Struct_1(3471i, _wgslsmith_div_i32(firstTrailingBit(1i), 69022i), -1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1198f, -863f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-982f + 668f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1431f)))))));
    global0 = array<vec3<u32>, 27>();
    let var_1 = -vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(18784i, var_0.a, var_0.c, u_input.a), vec4<i32>(2147483647i, -1i, var_0.b, u_input.a)), 1i), ~u_input.a);
    return ~1u;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<f32>) -> i32 {
    global0 = array<vec3<u32>, 27>();
    global2 = array<u32, 27>();
    global1 = array<bool, 29>();
    let var_0 = Struct_2(Struct_1(2147483647i, abs(arg_0.x), min(arg_0.x ^ u_input.a, arg_0.x), arg_1.x), u_input.b);
    let var_1 = firstTrailingBit(reverseBits(u_input.d)) >> (countOneBits(~_wgslsmith_add_u32(~u_input.c, func_2(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 29u)], global1[_wgslsmith_index_u32(var_0.b.x, 29u)], global1[_wgslsmith_index_u32(0u, 29u)])))) % 32u);
    return u_input.a;
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> f32 {
    let var_0 = arg_2;
    global0 = array<vec3<u32>, 27>();
    var var_1 = 4294967295u;
    var var_2 = reverseBits(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(7956u, global2[_wgslsmith_index_u32(arg_1, 27u)], u_input.d, 0u)) | _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1, 4724u, arg_1, global2[_wgslsmith_index_u32(u_input.b.x, 27u)]), vec4<u32>(u_input.d, 99301u, u_input.d, u_input.d)), vec4<u32>(69722u, u_input.b.x, u_input.c, 14569u) | vec4<u32>(1013u, arg_1, 32442u, u_input.d)), firstLeadingBit(~vec4<u32>(u_input.b.x, global2[_wgslsmith_index_u32(1u, 27u)], 0u, arg_1))));
    global0 = array<vec3<u32>, 27>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-3195f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(u_input.c & 1u, u_input.d, 19692u);
    var var_1 = global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_mod_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.x, 27u)], 27u)], 1u), ~u_input.b.x)), 29u)];
    let var_2 = _wgslsmith_f_op_f32(round(763f));
    var var_3 = Struct_1(abs(-2147483647i), 0i, -32450i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-var_2), 1u, Struct_1(-2147483647i, func_1(vec2<i32>(48040i, -28812i), vec3<f32>(var_2, -409f, var_2)), 1i, _wgslsmith_f_op_f32(max(var_2, -267f)))))));
    var_3 = Struct_1(-32423i, u_input.a, _wgslsmith_sub_i32(countOneBits(min(64541i, -16662i)), u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -129f));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1148f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_3.d)), _wgslsmith_f_op_f32(-var_2)))) + var_3.d);
    global2 = array<u32, 27>();
    var_3 = Struct_1(-_wgslsmith_sub_i32(var_3.a, _wgslsmith_clamp_i32(var_3.a, -2147483647i, -42493i)), 18689i, -12924i, _wgslsmith_f_op_f32(var_3.d - 1090f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(_wgslsmith_mod_i32(firstLeadingBit(u_input.a), -u_input.a), ~(~_wgslsmith_clamp_i32(10763i, u_input.a, var_3.b))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(1u, 27u)]), 27u)], ~u_input.b.x, u_input.c, 11674u), _wgslsmith_sub_vec4_u32(vec4<u32>(87219u, ~4294967295u, 1u, _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(0u, 27u)], u_input.c)), select(~vec4<u32>(u_input.b.x, 1u, global2[_wgslsmith_index_u32(1u, 27u)], u_input.c), select(vec4<u32>(global2[_wgslsmith_index_u32(var_0.x, 27u)], global2[_wgslsmith_index_u32(36015u, 27u)], 0u, u_input.b.x), vec4<u32>(4294967295u, u_input.b.x, 21309u, global2[_wgslsmith_index_u32(var_0.x, 27u)]), vec4<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 27u)], 29u)], global1[_wgslsmith_index_u32(var_0.x, 29u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(29134u, 27u)], 29u)], true)), global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~u_input.d, 27u)], 27u)], 29u)])), ~vec4<u32>(global2[_wgslsmith_index_u32(0u, 27u)], var_0.x, u_input.c, var_0.x) << (~(vec4<u32>(global2[_wgslsmith_index_u32(u_input.d, 27u)], 1u, 27398u, var_0.x) | vec4<u32>(var_0.x, var_0.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 27u)], 27u)], global2[_wgslsmith_index_u32(var_0.x, 27u)])) % vec4<u32>(32u))), 2147483647i, u_input.b, _wgslsmith_f_op_f32(-var_2));
}

