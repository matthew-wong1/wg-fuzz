struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: vec4<i32> = vec4<i32>(45596i, 0i, -93199i, -1534i);

var<private> global2: array<f32, 4>;

var<private> global3: vec3<bool> = vec3<bool>(false, false, true);

var<private> global4: Struct_1;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2() -> Struct_1 {
    var var_0 = vec2<bool>(global3.x, _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(u_input.d.x, 4u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(abs(96675u), 4u)]))) >= 288f);
    global0 = array<Struct_1, 17>();
    let var_1 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, ~u_input.d.x, 4294967295u), reverseBits(vec3<u32>(167u, u_input.d.x, u_input.a.x))), 17u)], Struct_1(-475f), Struct_1(_wgslsmith_div_f32(-821f, _wgslsmith_f_op_f32(global4.a * _wgslsmith_f_op_f32(-436f - global4.a)))), global0[_wgslsmith_index_u32(firstLeadingBit(u_input.d.x), 17u)]);
    global4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-485f, -511f)));
    global2 = array<f32, 4>();
    return Struct_1(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_div_u32(u_input.a.x, u_input.a.x)), 4u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(0u, 4u)], -1248f, false)) * -1835f), -1097f)), global3.x)));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec2<f32>, arg_3: u32) -> Struct_1 {
    let var_0 = ~arg_3;
    global1 = vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(~select(vec4<i32>(global1.x, -17346i, 0i, 44845i), vec4<i32>(global1.x, 0i, 37518i, 1i), vec4<bool>(false, true, arg_0, true)), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global1.x, 56215i, u_input.c.x, global1.x), vec4<i32>(6655i, global1.x, u_input.c.x, global1.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, -1i, global1.x, -1021i), vec4<i32>(u_input.c.x, 2147483647i, -2147483647i, u_input.b.x))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-547f, _wgslsmith_f_op_f32(step(891f, _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(-480f * arg_2.x)))), _wgslsmith_f_op_f32(-arg_1), -1704f));
    let var_2 = func_2();
    global0 = array<Struct_1, 17>();
    return Struct_1(arg_2.x);
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: f32) -> vec3<bool> {
    global2 = array<f32, 4>();
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(134785u, _wgslsmith_clamp_u32(~u_input.a.x, u_input.a.x, ~u_input.a.x)), 17u)], global0[_wgslsmith_index_u32(u_input.d.x, 17u)], global0[_wgslsmith_index_u32(u_input.d.x, 17u)], func_2());
    global2 = array<f32, 4>();
    let var_1 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d.x << (18015u % 32u), firstTrailingBit(select(~1u, 0u, arg_0))), 17u)], Struct_1(global2[_wgslsmith_index_u32(~30740u, 4u)]), Struct_1(_wgslsmith_f_op_f32(floor(arg_1.x))), global0[_wgslsmith_index_u32(~u_input.d.x, 17u)]);
    var var_2 = select(~(vec4<u32>(~u_input.d.x, 0u, firstTrailingBit(u_input.d.x), u_input.d.x << (45387u % 32u)) & (_wgslsmith_mult_vec4_u32(u_input.d, vec4<u32>(4294967295u, 1418u, u_input.d.x, u_input.d.x)) >> (u_input.d % vec4<u32>(32u)))), abs(min(u_input.d ^ select(vec4<u32>(41886u, 4294967295u, u_input.a.x, 4294967295u), vec4<u32>(28799u, 55638u, u_input.a.x, u_input.d.x), true), _wgslsmith_div_vec4_u32(select(u_input.d, u_input.d, vec4<bool>(true, false, global3.x, true)), u_input.d & u_input.d))), select(!select(select(vec4<bool>(global3.x, arg_0, true, false), vec4<bool>(global3.x, global3.x, arg_0, false), false), select(vec4<bool>(global3.x, arg_0, arg_0, global3.x), vec4<bool>(arg_0, false, true, arg_0), vec4<bool>(true, global3.x, arg_0, false)), !vec4<bool>(arg_0, false, global3.x, arg_0)), vec4<bool>(any(select(vec4<bool>(global3.x, false, global3.x, true), vec4<bool>(true, false, global3.x, false), vec4<bool>(true, false, true, global3.x))), global3.x, false, select(global3.x && false, false, false)), select(!select(vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(global3.x, global3.x, true, global3.x), vec4<bool>(global3.x, arg_0, arg_0, arg_0)), select(!vec4<bool>(arg_0, global3.x, global3.x, arg_0), vec4<bool>(true, true, true, true), !vec4<bool>(true, false, true, global3.x)), true)));
    return vec3<bool>(any(!vec4<bool>(true, arg_0 != global3.x, true, any(vec3<bool>(global3.x, true, true)))), all(select(vec3<bool>(false, arg_0, false), vec3<bool>(true, arg_0, !global3.x), vec3<bool>(true, true, true))), any(!(!select(vec3<bool>(global3.x, global3.x, false), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, false, global3.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-554f)) + -1000f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a))), _wgslsmith_div_f32(-534f, 1554f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-869f, global2[_wgslsmith_index_u32(u_input.d.x, 4u)]) + vec2<f32>(global4.a, -524f))))), 4294967295u);
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(788f, global4.a, global4.a, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(10583u, u_input.a.x, false), u_input.d.x), 4u)]))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a, global4.a, global2[_wgslsmith_index_u32(u_input.d.x, 4u)], global4.a))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a, 862f, global4.a, global4.a)))))));
    let var_1 = vec2<u32>(_wgslsmith_mult_u32(u_input.d.x | (17620u >> (_wgslsmith_mod_u32(1u, 17229u) % 32u)), _wgslsmith_add_u32(abs(firstLeadingBit(u_input.a.x)), firstLeadingBit(u_input.d.x) ^ ~u_input.a.x)), ~(~0u));
    global3 = select(select(!func_3(global1.x >= global1.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(98642u, 4u)], global4.a, 1000f)), _wgslsmith_f_op_f32(select(1294f, global4.a, global3.x))), !select(select(vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(false, global3.x, false), vec3<bool>(false, global3.x, false)), !vec3<bool>(global3.x, true, global3.x), false), !select(vec3<bool>(true, true, global3.x), func_3(true, vec3<f32>(var_0.x, global2[_wgslsmith_index_u32(var_1.x, 4u)], 1000f), 675f), 878f >= var_0.x)), !func_3(true & (var_1.x < u_input.a.x), vec3<f32>(var_0.x, var_0.x, 241f), 116f), any(select(select(!vec3<bool>(global3.x, global3.x, false), vec3<bool>(true, false, true), vec3<bool>(false, global3.x, global3.x)), !select(vec3<bool>(true, true, global3.x), vec3<bool>(global3.x, global3.x, false), true), func_3(true, vec3<f32>(-282f, 858f, global4.a), global2[_wgslsmith_index_u32(var_1.x, 4u)]))));
    global3 = select(select(!vec3<bool>(var_1.x >= u_input.d.x, any(vec3<bool>(global3.x, true, global3.x)), u_input.a.x != 0u), !(!vec3<bool>(global3.x, global3.x, global3.x)), !global3.x), !(!(!select(vec3<bool>(global3.x, false, false), vec3<bool>(true, global3.x, true), true))), func_3(true, var_0.wzw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + -2568f))));
    var var_2 = Struct_3(Struct_2(global0[_wgslsmith_index_u32(~(53816u & var_1.x), 17u)], func_2(), global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(49210u, 17u)]), global0[_wgslsmith_index_u32(select(firstTrailingBit(~5703u), 28186u, func_3(any(!vec3<bool>(false, global3.x, global3.x)), vec3<f32>(global4.a, global2[_wgslsmith_index_u32(abs(1u), 4u)], -982f), var_0.x).x), 17u)]);
    var var_3 = ~vec2<u32>(0u, 1u);
    let var_4 = !(!all(select(select(vec4<bool>(false, true, global3.x, true), vec4<bool>(false, false, false, false), vec4<bool>(true, global3.x, global3.x, global3.x)), !vec4<bool>(global3.x, global3.x, global3.x, false), !vec4<bool>(true, true, true, global3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-max(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.c.x, u_input.c.x), vec4<i32>(0i, u_input.c.x, u_input.c.x, 2147483647i)) >> (vec4<u32>(var_3.x, var_1.x, 61598u, var_3.x) % vec4<u32>(32u)), ~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, 0i, -1i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, global1.x, 1i))));
}

