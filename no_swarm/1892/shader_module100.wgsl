struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<vec4<i32>, 19> = array<vec4<i32>, 19>(vec4<i32>(13633i, -1i, 1i, 1i), vec4<i32>(-37547i, -10581i, 18823i, -23019i), vec4<i32>(-15217i, i32(-2147483648), -6151i, 23389i), vec4<i32>(-28393i, 1i, -40408i, -1i), vec4<i32>(i32(-2147483648), 2147483647i, 1i, 0i), vec4<i32>(-19558i, i32(-2147483648), i32(-2147483648), 25141i), vec4<i32>(1607i, -7773i, 18142i, 15726i), vec4<i32>(-63985i, i32(-2147483648), -31042i, 1i), vec4<i32>(37811i, -1i, 22455i, i32(-2147483648)), vec4<i32>(-5792i, 35665i, -23004i, -32391i), vec4<i32>(-21313i, 2147483647i, i32(-2147483648), 0i), vec4<i32>(-1i, 2147483647i, 14482i, 1364i), vec4<i32>(-1i, -6985i, -1i, 1i), vec4<i32>(13207i, -22058i, 43810i, 44471i), vec4<i32>(26187i, 0i, -1i, 10829i), vec4<i32>(7842i, i32(-2147483648), 10035i, 45814i), vec4<i32>(i32(-2147483648), -6352i, -5582i, 0i), vec4<i32>(17664i, -1666i, 1i, 16662i), vec4<i32>(30025i, -1i, 0i, 21467i));

var<private> global1: array<Struct_1, 1>;

var<private> global2: Struct_1 = Struct_1(vec2<f32>(-363f, -519f), vec2<u32>(0u, 4294967295u));

var<private> global3: array<Struct_1, 2>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec2<f32> {
    let var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, _wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, 7852i, u_input.a, u_input.a), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a), global0[_wgslsmith_index_u32(26577u, 19u)])), abs(u_input.a)), -firstLeadingBit(-vec3<i32>(u_input.a, u_input.a, 32283i))) & vec3<i32>(-24279i, 30023i, min(u_input.a, firstLeadingBit(_wgslsmith_clamp_i32(1i, -9463i, u_input.a))));
    global0 = array<vec4<i32>, 19>();
    var var_1 = max(~(~max(select(vec4<u32>(global2.b.x, global2.b.x, global2.b.x, global2.b.x), vec4<u32>(global2.b.x, 33023u, global2.b.x, global2.b.x), vec4<bool>(false, true, true, true)), firstTrailingBit(vec4<u32>(global2.b.x, global2.b.x, global2.b.x, 17064u)))), vec4<u32>(~global2.b.x, select(firstTrailingBit(abs(global2.b.x)), global2.b.x, any(vec4<bool>(true, true, true, true))), 0u, 22348u));
    let var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(trunc(global2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x - -2241f)))), min(~(~vec2<u32>(7149u, global2.b.x)), _wgslsmith_div_vec2_u32(global2.b, select(global2.b << (var_1.yw % vec2<u32>(32u)), ~vec2<u32>(5873u, var_1.x), vec2<bool>(true, false)))));
    var var_3 = global1[_wgslsmith_index_u32(~53435u, 1u)];
    return global2.a;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global2 = Struct_1(_wgslsmith_f_op_vec2_f32(arg_1.a - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.x, -541f) - arg_2.a))) * vec2<f32>(_wgslsmith_f_op_f32(arg_1.a.x - arg_0.a.x), _wgslsmith_f_op_f32(-global2.a.x)))), ~(~reverseBits(arg_1.b)));
    global0 = array<vec4<i32>, 19>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(func_3()), abs(min(~vec2<u32>(4294967295u, arg_3.b.x), vec2<u32>(firstLeadingBit(arg_0.b.x), arg_1.b.x))));
    var var_1 = !vec3<bool>(any(vec3<bool>(true, true, true)), all(vec2<bool>(any(vec3<bool>(true, false, false)), true)), true);
    global1 = array<Struct_1, 1>();
    return _wgslsmith_dot_vec2_u32(min(arg_2.b, vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(arg_1.b.x, arg_3.b.x), firstLeadingBit(global2.b.x)), reverseBits(_wgslsmith_mod_u32(4294967295u, 1u)))), arg_1.b);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1) -> i32 {
    global0 = array<vec4<i32>, 19>();
    global0 = array<vec4<i32>, 19>();
    var var_0 = global3[_wgslsmith_index_u32(21481u, 2u)];
    var var_1 = _wgslsmith_mod_u32(4294967295u, ~countOneBits(max(func_2(global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(global2.b.x, 1u)], global1[_wgslsmith_index_u32(4294967295u, 1u)], global3[_wgslsmith_index_u32(global2.b.x, 2u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.x, 4294967295u, arg_1.b.x), arg_0))));
    var_0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1047f, 788f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -364f) - -112f), _wgslsmith_f_op_f32(-var_0.a.x))), vec2<u32>(global2.b.x ^ arg_0.x, 7465u));
    return _wgslsmith_sub_i32(abs(u_input.a), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_i32(_wgslsmith_add_i32(i32(-1i) * -35314i, 1i), u_input.a);
    var var_1 = u_input.a > ~countOneBits(abs(func_1(vec3<u32>(4294967295u, global2.b.x, global2.b.x), global3[_wgslsmith_index_u32(global2.b.x, 2u)])));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-406f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.a.x)))))), select(vec2<u32>(global2.b.x, _wgslsmith_mult_u32(global2.b.x << (1u % 32u), firstLeadingBit(global2.b.x))), global2.b, !vec2<bool>(true, all(vec2<bool>(false, true)))));
    global0 = array<vec4<i32>, 19>();
    var_0 = -6718i;
    global0 = array<vec4<i32>, 19>();
    var var_3 = global3[_wgslsmith_index_u32(40103u, 2u)];
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_mult_vec2_u32(vec2<u32>(global2.b.x, ~var_3.b.x), ~(~var_2.b)), vec2<u32>(var_2.b.x, var_2.b.x)));
}

