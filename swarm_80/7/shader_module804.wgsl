struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false));

var<private> global1: array<vec2<i32>, 5> = array<vec2<i32>, 5>(vec2<i32>(32103i, -5702i), vec2<i32>(-5391i, -1i), vec2<i32>(-39968i, 28321i), vec2<i32>(-3257i, -77713i), vec2<i32>(2147483647i, 9047i));

var<private> global2: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false));

var<private> global3: array<vec3<f32>, 17>;

var<private> global4: vec3<u32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: f32, arg_3: vec3<u32>) -> i32 {
    var var_0 = vec3<u32>(firstTrailingBit(countOneBits(countOneBits(10032u))), _wgslsmith_div_u32(21731u, (u_input.e.x << (24667u % 32u)) >> (arg_3.x % 32u)), u_input.b) & arg_3;
    let var_1 = vec3<f32>(-1131f, _wgslsmith_f_op_f32(floor(arg_0.c)), arg_2);
    let var_2 = select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), !vec2<bool>(true, any(vec4<bool>(false, true, true, false)))), vec2<bool>(false, true), vec2<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, global4.x) >> (vec2<u32>(var_0.x, 11410u) % vec2<u32>(32u)), arg_0.a.xy) == ~arg_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(707f - var_1.x))) >= arg_2));
    global0 = array<Struct_2, 17>();
    let var_3 = global0[_wgslsmith_index_u32(arg_0.a.x, 17u)];
    return arg_0.b ^ max(_wgslsmith_dot_vec4_i32((vec4<i32>(u_input.a, u_input.a, -2147483647i, arg_0.b) ^ u_input.c) | ~u_input.c, ~(-vec4<i32>(-2147483647i, 36023i, -15413i, u_input.d.x))), _wgslsmith_mult_i32(u_input.c.x, max(-2147483647i, abs(u_input.d.x))));
}

fn func_2() -> vec3<u32> {
    var var_0 = Struct_2(true);
    var_0 = global0[_wgslsmith_index_u32(~(~(0u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(7484u, global4.x, 33172u), ~vec3<u32>(6219u, 24092u, 18879u)))), 17u)];
    global3 = array<vec3<f32>, 17>();
    var var_1 = ~(~select(max(_wgslsmith_add_vec3_u32(vec3<u32>(1u, global4.x, 15128u), vec3<u32>(global4.x, 4294967295u, global4.x)), countOneBits(vec3<u32>(1u, 63135u, global4.x))), ~reverseBits(vec3<u32>(global4.x, 1u, global4.x)), vec3<bool>(var_0.a, var_0.a, var_0.a)));
    var var_2 = Struct_1(abs(~(~vec4<u32>(6483u, var_1.x, 12019u, 4294967295u) & ~vec4<u32>(u_input.b, 4979u, u_input.b, var_1.x))), abs(u_input.c.x ^ countOneBits(func_3(Struct_1(vec4<u32>(var_1.x, global4.x, 13246u, var_1.x), u_input.c.x, 802f, -1187f), u_input.e, -1020f, vec3<u32>(global4.x, var_1.x, var_1.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1527f), 1132f);
    return var_2.a.zxw;
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: vec3<u32>) -> u32 {
    global4 = ~(arg_2 & _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, arg_0, global4.x), vec3<u32>(arg_2.x, global4.x, 90164u) | arg_2)) & func_2();
    return _wgslsmith_div_u32(global4.x, global4.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<f32>, 17>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 329f, _wgslsmith_div_f32(-1648f, _wgslsmith_f_op_f32(trunc(1000f))), 227f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1477f, -1431f, -1151f, -575f) + vec4<f32>(175f, -1671f, 1209f, -869f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(822f, 343f, -107f, 2149f) - vec4<f32>(-1286f, -574f, 431f, 780f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-378f, 1000f, -1889f, 1330f), vec4<f32>(-1095f, -503f, 1314f, -172f), vec4<bool>(false, false, true, true))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1134f, 1337f, 473f, 195f)))))));
    var var_1 = func_1(~(u_input.b & ~33636u), select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(true, false)), false, true, true), vec4<bool>(false, false, true, any(vec3<bool>(false, true, false)))), ~vec3<u32>(~4294967295u, 0u, 1u)) ^ firstLeadingBit(global4.x);
    let var_2 = vec4<u32>(global4.x, abs(global4.x), _wgslsmith_sub_u32(abs(min(countOneBits(0u), _wgslsmith_sub_u32(u_input.e.x, u_input.e.x))), _wgslsmith_mult_u32(u_input.b, ~abs(u_input.e.x))), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(u_input.b, 35646u), 72411u) >> (vec2<u32>(global4.x, _wgslsmith_mod_u32(global4.x, 4294967295u)) % vec2<u32>(32u)), vec2<u32>(1u, 1u) | _wgslsmith_mult_vec2_u32(~vec2<u32>(20733u, 27883u), ~global4.yx)));
    global3 = array<vec3<f32>, 17>();
    var var_3 = i32(-1i) * -_wgslsmith_clamp_i32(~(-1i), u_input.c.x, u_input.c.x);
    let var_4 = vec3<u32>(1u, ~1u, _wgslsmith_mult_u32(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, var_2.x), vec2<u32>(0u, u_input.e.x))), _wgslsmith_dot_vec2_u32(~u_input.e, ~func_2().xy)));
    var var_5 = global2[_wgslsmith_index_u32(9758u, 26u)];
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -(~2147483647i), u_input.a, global3[_wgslsmith_index_u32(global4.x, 17u)], vec4<u32>(var_4.x, 1u, var_4.x, select(~0u, 38462u, true) << (_wgslsmith_mult_u32(var_4.x, 0u) % 32u)));
}

