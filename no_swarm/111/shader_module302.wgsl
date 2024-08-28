struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: i32,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(false, false, true), false, -40003i, 4148i, 1u);

var<private> global1: array<vec2<u32>, 28> = array<vec2<u32>, 28>(vec2<u32>(15480u, 4294967295u), vec2<u32>(19784u, 1u), vec2<u32>(28273u, 21161u), vec2<u32>(19441u, 23592u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 47715u), vec2<u32>(0u, 66181u), vec2<u32>(179u, 4294967295u), vec2<u32>(0u, 74399u), vec2<u32>(51845u, 1u), vec2<u32>(14767u, 32863u), vec2<u32>(12934u, 68785u), vec2<u32>(4294967295u, 19233u), vec2<u32>(97770u, 4294967295u), vec2<u32>(24090u, 4294967295u), vec2<u32>(17503u, 5258u), vec2<u32>(0u, 21239u), vec2<u32>(28024u, 5668u), vec2<u32>(25406u, 7133u), vec2<u32>(98816u, 4294967295u), vec2<u32>(64360u, 83755u), vec2<u32>(18544u, 64100u), vec2<u32>(1u, 27936u), vec2<u32>(0u, 21455u), vec2<u32>(12144u, 0u), vec2<u32>(68746u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(97679u, 1u));

var<private> global2: array<vec2<u32>, 1>;

var<private> global3: array<Struct_1, 18>;

var<private> global4: Struct_1 = Struct_1(vec3<bool>(true, false, true), true, 31352i, 14877i, 61223u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1(arg_0: bool) -> f32 {
    let var_0 = Struct_1(!global0.a, any(vec4<bool>(arg_0, true, global0.b, arg_0)), -30180i, global0.c, min(1u, 4294967295u));
    var var_1 = ~_wgslsmith_mod_u32(global0.e, ~0u) ^ 1u;
    global1 = array<vec2<u32>, 28>();
    global2 = array<vec2<u32>, 1>();
    var var_2 = var_0;
    return -426f;
}

fn func_3() -> vec4<u32> {
    return _wgslsmith_div_vec4_u32(~(~(~vec4<u32>(u_input.c, 4294967295u, 7481u, 0u))), firstTrailingBit(_wgslsmith_mod_vec4_u32(select(~vec4<u32>(global0.e, u_input.a.x, global0.e, 36260u), vec4<u32>(global4.e, global0.e, 23603u, global4.e), !vec4<bool>(true, global4.a.x, global0.b, true)), max(firstLeadingBit(vec4<u32>(global0.e, global0.e, 0u, 1u)), ~vec4<u32>(34031u, 43207u, 9170u, 4294967295u)))));
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = global4.a.x;
    var var_1 = Struct_1(vec3<bool>(global4.b, false, global0.b), global0.a.x, 33631i, countOneBits(1i), 99497u);
    global4 = global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(arg_0, func_3()), 18u)];
    var var_2 = 70996i;
    let var_3 = global3[_wgslsmith_index_u32(global0.e, 18u)];
    return Struct_1(global0.a, all(select(select(vec4<bool>(var_3.a.x, true, true, false), !vec4<bool>(true, var_3.b, false, false), false), vec4<bool>(any(vec3<bool>(true, false, false)), all(vec2<bool>(true, true)), true & var_3.a.x, -34478i >= global4.d), !(!vec4<bool>(true, var_3.b, true, false)))), -1i, -global4.c, var_3.e);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 28>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -199f) + _wgslsmith_f_op_f32(f32(-1f) * -1668f)) * _wgslsmith_div_f32(388f, _wgslsmith_f_op_f32(f32(-1f) * -437f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1((global4.b | global0.b) | (global0.e > global0.e)))));
    var var_1 = func_2(~(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.e, global4.e, u_input.a.x, 31388u), ~vec4<u32>(global0.e, global0.e, u_input.c, u_input.c)) << ((vec4<u32>(1u, global4.e, global4.e, global4.e) << (_wgslsmith_mult_vec4_u32(vec4<u32>(global0.e, 42888u, u_input.c, 4294967295u), vec4<u32>(global0.e, 4294967295u, 92915u, global4.e)) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-592f, 788f) + vec2<f32>(1199f, -323f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1589f, -899f))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 0u, 1u), vec3<u32>(1u, global0.e, global0.e) | vec3<u32>(global0.e, var_1.e, global4.e), ~vec3<u32>(u_input.a.x, global0.e, var_1.e))), abs(firstLeadingBit(-_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, global0.d), vec2<i32>(71959i, var_1.d)))));
}

