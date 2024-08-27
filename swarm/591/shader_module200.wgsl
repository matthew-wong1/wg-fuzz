struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: u32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec3<i32>,
    d: bool,
    e: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_4,
    c: f32,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec3<bool>, 29>;

var<private> global2: vec3<bool> = vec3<bool>(true, true, true);

var<private> global3: array<vec3<i32>, 12> = array<vec3<i32>, 12>(vec3<i32>(0i, 1i, -1i), vec3<i32>(2147483647i, -8153i, -11818i), vec3<i32>(1i, 1i, i32(-2147483648)), vec3<i32>(2147483647i, 1951i, -1i), vec3<i32>(2147483647i, 2147483647i, -28122i), vec3<i32>(-1i, i32(-2147483648), 8983i), vec3<i32>(i32(-2147483648), 1i, -59193i), vec3<i32>(-1i, -7080i, 45123i), vec3<i32>(6990i, i32(-2147483648), -1i), vec3<i32>(-29218i, -37341i, -14277i), vec3<i32>(0i, 27882i, 55909i), vec3<i32>(-58829i, -20867i, -40537i));

var<private> global4: array<i32, 29>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: f32) -> f32 {
    var var_0 = 2147483647i;
    global1 = array<vec3<bool>, 29>();
    var var_1 = min(26793u, u_input.a.x);
    var var_2 = global2.xy;
    let var_3 = vec4<bool>(!(!(!var_2.x)), !global2.x, false, true);
    return 855f;
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_4, arg_3: Struct_3) -> vec2<i32> {
    var var_0 = (select(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a, 1u, 4294967295u), vec3<u32>(4294967295u, u_input.a.x, 58673u)), _wgslsmith_clamp_u32(_wgslsmith_div_u32(65338u, 35420u), ~22788u, 1u), arg_0.x) | u_input.b) >= arg_2.a.b.c;
    var var_1 = 1i;
    global2 = global1[_wgslsmith_index_u32(~(~(~arg_1.a)), 29u)];
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.b.d * arg_2.a.c.d))) + 1262f), arg_2.a.b.d, arg_1.b.e)));
    let var_3 = Struct_5(max(-(~firstTrailingBit(vec4<i32>(arg_2.c.x, 56836i, global4[_wgslsmith_index_u32(arg_2.b, 29u)], arg_2.a.d))), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.d, _wgslsmith_dot_vec3_i32(arg_3.a.wzy, vec3<i32>(arg_3.a.x, 18817i, arg_3.a.x)), arg_3.a.x, arg_1.d), -abs(vec4<i32>(63182i, arg_3.a.x, global4[_wgslsmith_index_u32(1u, 29u)], arg_1.d)))), arg_2, var_2, arg_1.c.e, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.e.c.a.x), _wgslsmith_f_op_f32(select(-1093f, _wgslsmith_f_op_f32(func_1(arg_1.c.a.x)), false && arg_2.a.b.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-704f)) - -348f), var_2), ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), arg_2.e.c.b) ^ u_input.a, ~arg_2.a.c.b.x, -1477f, all(!(!vec4<bool>(arg_0.x, false, false, false)))));
    return vec2<i32>(_wgslsmith_clamp_i32(global4[_wgslsmith_index_u32(1u, 29u)] << (_wgslsmith_clamp_u32(_wgslsmith_add_u32(arg_1.c.b.x, arg_2.e.c.c), arg_2.b, countOneBits(arg_2.b)) % 32u), -21836i, _wgslsmith_mod_i32(-2147483647i, -1584i | _wgslsmith_sub_i32(arg_3.a.x, var_3.b.a.d))), global4[_wgslsmith_index_u32(arg_1.a, 29u)]);
}

fn func_2() -> StorageBuffer {
    global2 = !vec3<bool>(!global2.x, true, true);
    let var_0 = Struct_3(vec4<i32>(~(-(~global4[_wgslsmith_index_u32(u_input.b, 29u)])), _wgslsmith_add_i32(-32706i, global4[_wgslsmith_index_u32(0u, 29u)]), global4[_wgslsmith_index_u32(~u_input.b, 29u)], ~(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 0u), 29u)] | 24913i)));
    global3 = array<vec3<i32>, 12>();
    return StorageBuffer(abs(func_3(global2.xz, Struct_2(u_input.a.x, Struct_1(vec4<f32>(309f, 1000f, 633f, 293f), vec2<u32>(u_input.a.x, 4294967295u), 1u, 1096f, global2.x), Struct_1(vec4<f32>(275f, 2702f, 558f, 513f), u_input.a, 67759u, 1489f, global2.x), -31194i), Struct_4(Struct_2(37714u, Struct_1(vec4<f32>(-409f, 1542f, 1588f, 438f), u_input.a, 1532u, -663f, true), Struct_1(vec4<f32>(-1044f, 557f, 182f, 769f), u_input.a, u_input.b, -758f, false), 57309i), 4294967295u, vec3<i32>(30154i, -2147483647i, var_0.a.x), false, Struct_2(61861u, Struct_1(vec4<f32>(-653f, -600f, 1452f, 1000f), vec2<u32>(u_input.a.x, 1u), 4294967295u, 893f, global2.x), Struct_1(vec4<f32>(591f, -687f, 946f, 526f), vec2<u32>(0u, u_input.b), u_input.b, 747f, true), 0i)), var_0) << (vec2<u32>(_wgslsmith_div_u32(u_input.b, u_input.b), ~36050u) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1248f), _wgslsmith_f_op_f32(534f - 551f), _wgslsmith_f_op_f32(-337f - -1252f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(363f, 741f, -721f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1756f, -1391f, 1296f), vec3<f32>(332f, -213f, 895f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(310f, 806f, -554f))))), vec2<i32>(~(-_wgslsmith_clamp_i32(14903i, 0i, -2147483647i)), var_0.a.x), -1i, _wgslsmith_dot_vec4_u32(~((vec4<u32>(u_input.a.x, u_input.a.x, 31771u, 1u) << (vec4<u32>(u_input.b, u_input.a.x, 13590u, 0u) % vec4<u32>(32u))) ^ ~vec4<u32>(4294967295u, u_input.a.x, u_input.b, 30063u)), ~(~vec4<u32>(140417u, 69553u, 0u, u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<i32>, 12>();
    global4 = array<i32, 29>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var var_1 = ~_wgslsmith_sub_vec3_u32(vec3<u32>(17205u, min(31370u, u_input.a.x), select(_wgslsmith_sub_u32(0u, 0u), ~u_input.a.x, global2.x)), ~(~abs(vec3<u32>(u_input.b, 37579u, 17211u))));
    global3 = array<vec3<i32>, 12>();
    let x = u_input.a;
    s_output = func_2();
}

