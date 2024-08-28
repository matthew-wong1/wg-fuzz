struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: f32,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: array<vec4<bool>, 15>;

var<private> global2: array<Struct_1, 28>;

var<private> global3: array<vec3<bool>, 9> = array<vec3<bool>, 9>(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true));

var<private> global4: f32 = -764f;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec2<bool> {
    let var_0 = global0.x;
    var var_1 = false;
    let var_2 = Struct_1(vec2<bool>(false, u_input.b.x <= 4867i), _wgslsmith_clamp_u32(u_input.c.x, ~(~0u), ~max(71061u, 29161u)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(420f))))), (0u >= _wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.a.x, 1u, 4294967295u, u_input.c.x), vec4<u32>(1u, u_input.c.x, 48770u, 0u)), vec4<u32>(u_input.c.x, 36225u, u_input.c.x, 1u) << (u_input.a % vec4<u32>(32u)))) | global0.x, true && any(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(21559u, 0u) & firstLeadingBit(u_input.a.x), 15u)]));
    global1 = array<vec4<bool>, 15>();
    let var_3 = u_input.b.x;
    return select(var_2.a, select(vec2<bool>(true, global0.x), select(var_2.a, var_2.a, var_2.a.x), any(vec4<bool>(any(vec2<bool>(true, true)), any(vec3<bool>(true, var_2.a.x, false)), var_2.c > var_2.c, var_2.e))), !var_2.e);
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    global3 = array<vec3<bool>, 9>();
    global0 = !func_3();
    var var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(min(countOneBits(select(0i, u_input.b.x, global0.x)), -reverseBits(-2147483647i)), u_input.b.x), countOneBits(vec2<i32>(select(-14690i, u_input.b.x, false), ~u_input.b.x)) | u_input.b);
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1559f))));
    let var_1 = reverseBits(0i);
    return global2[_wgslsmith_index_u32(17391u, 28u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec4<f32>) -> Struct_1 {
    return Struct_1(!vec2<bool>(true, !(arg_0.c > -940f)), arg_1.b, _wgslsmith_f_op_f32(710f + 1122f), select(_wgslsmith_f_op_f32(round(2982f)) > _wgslsmith_f_op_f32(sign(arg_1.c)), arg_1.e, ~(~arg_1.b) < abs(23219u)), true);
}

fn func_1() -> i32 {
    let var_0 = func_4(global2[_wgslsmith_index_u32(u_input.a.x, 28u)], func_2(u_input.a), select(!global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c.x, u_input.c.x) & u_input.a.x, 15u)], vec4<bool>(true || global0.x, select(u_input.b.x < u_input.b.x, false, u_input.c.x != u_input.c.x), _wgslsmith_f_op_f32(ceil(342f)) == 678f, true), vec4<bool>(global0.x, global0.x & true, func_3().x, global0.x && any(global1[_wgslsmith_index_u32(u_input.a.x, 15u)]))), vec4<f32>(_wgslsmith_f_op_f32(-690f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-203f))))), _wgslsmith_f_op_f32(789f + _wgslsmith_f_op_f32(f32(-1f) * -956f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -386f))), _wgslsmith_f_op_f32(-1025f * -632f)));
    global1 = array<vec4<bool>, 15>();
    global1 = array<vec4<bool>, 15>();
    var var_1 = func_4(global2[_wgslsmith_index_u32(~func_4(Struct_1(var_0.a, reverseBits(u_input.c.x), _wgslsmith_f_op_f32(var_0.c + 612f), true, global0.x), var_0, vec4<bool>(global0.x & global0.x, global0.x, true, true), vec4<f32>(-1183f, _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(1030f + var_0.c), _wgslsmith_f_op_f32(-var_0.c))).b, 28u)], global2[_wgslsmith_index_u32(0u, 28u)], !select(!vec4<bool>(var_0.e, global0.x, true, false), vec4<bool>(global0.x && global0.x, any(global3[_wgslsmith_index_u32(80165u, 9u)]), !var_0.d, true), select(!vec4<bool>(var_0.a.x, true, false, false), !global1[_wgslsmith_index_u32(34171u, 15u)], var_0.d)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, var_0.c, var_0.c, var_0.c)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.c, 2206f, 106f, var_0.c), vec4<f32>(var_0.c, 1000f, var_0.c, 682f), var_0.e)))))));
    let var_2 = func_2(vec4<u32>(55941u, 0u, 1u, ~_wgslsmith_mult_u32(_wgslsmith_div_u32(var_1.b, var_1.b), 1u)));
    return ~(~(~(u_input.b.x << (1u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-619f, 1019f, -157f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1600f, 1000f, -136f), vec3<f32>(-944f, -1600f, -610f)))) + vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(357f, -780f)))), -1796f, -956f)));
    let var_1 = vec3<i32>(u_input.b.x, u_input.b.x, func_1());
    var var_2 = func_2(u_input.a >> (u_input.a % vec4<u32>(32u)));
    global2 = array<Struct_1, 28>();
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-var_2.c), 564f);
    let x = u_input.a;
    s_output = StorageBuffer(max(-1i, -firstTrailingBit(54595i)), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_add_i32(u_input.b.x, 17081i) & u_input.b.x, firstTrailingBit(-45300i), -_wgslsmith_dot_vec4_i32(vec4<i32>(25916i, u_input.b.x, u_input.b.x, -20454i), vec4<i32>(0i, -2147483647i, u_input.b.x, var_1.x)), 11974i), (vec4<i32>(u_input.b.x, -1i, u_input.b.x, 1i) >> (max(vec4<u32>(0u, 44250u, var_2.b, 4294967295u), u_input.a) % vec4<u32>(32u))) | select(-vec4<i32>(u_input.b.x, 1i, var_1.x, 2707i), -vec4<i32>(u_input.b.x, u_input.b.x, -1i, var_1.x), global0.x)), _wgslsmith_f_op_f32(-var_2.c), firstTrailingBit(countOneBits(vec2<u32>(0u, u_input.a.x))) & vec2<u32>(max(8747u | u_input.a.x, 6796u), var_2.b), var_0.x);
}

