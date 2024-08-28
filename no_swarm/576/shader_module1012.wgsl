struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 15> = array<vec2<i32>, 15>(vec2<i32>(i32(-2147483648), 1i), vec2<i32>(22767i, -17489i), vec2<i32>(0i, -75586i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-15500i, 0i), vec2<i32>(i32(-2147483648), -24245i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(2147483647i, -8970i), vec2<i32>(-16891i, -29341i), vec2<i32>(33879i, -31238i), vec2<i32>(-2280i, -15874i), vec2<i32>(26359i, 0i), vec2<i32>(i32(-2147483648), 47918i), vec2<i32>(-2043i, -4790i), vec2<i32>(2147483647i, 3534i));

var<private> global1: array<vec3<f32>, 5>;

var<private> global2: Struct_1 = Struct_1(true, true, 0u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    global2 = Struct_1(true, false, 62809u);
    let var_0 = Struct_4(~u_input.b ^ u_input.b, ~(4294967295u >> (~_wgslsmith_add_u32(19620u, u_input.b) % 32u)), u_input.b, vec2<i32>(-1i, 1i), ~countOneBits(54611u));
    return ~1u;
}

fn func_2() -> Struct_2 {
    var var_0 = -_wgslsmith_add_i32(~_wgslsmith_add_i32(-u_input.a, ~1i), u_input.a);
    global1 = array<vec3<f32>, 5>();
    global2 = Struct_1(global2.a, true, abs(global2.c));
    return Struct_2(Struct_1(global2.a, true, 1u), _wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(func_3(), 5u)] * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-673f, -467f, -412f), global1[_wgslsmith_index_u32(global2.c, 5u)]), vec3<f32>(1000f, -255f, -431f)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-533f, 1256f, -482f), global1[_wgslsmith_index_u32(4294967295u, 5u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(925f, -110f, 119f) + global1[_wgslsmith_index_u32(1u, 5u)])))));
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> Struct_3 {
    global2 = Struct_1(!(arg_0 & arg_0) & true, !arg_1.a.a, 4294967295u);
    var var_0 = _wgslsmith_f_op_f32(round(266f));
    let var_1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x - _wgslsmith_f_op_f32(trunc(arg_1.b.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) + -1717f))), Struct_1(false, any(!select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, false), global2.a)), _wgslsmith_div_u32(~(~21003u), ~1u)));
    var var_2 = !(0i <= u_input.a);
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.b.x)));
    return Struct_3(Struct_1((u_input.a >> (_wgslsmith_mult_u32(u_input.b, var_1.b.c) % 32u)) != -(~u_input.a), !(!arg_0 & true), ~u_input.b), Struct_1(!arg_0, false, u_input.b));
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: vec4<i32>) -> vec2<u32> {
    var var_0 = arg_1;
    global0 = array<vec2<i32>, 15>();
    let var_1 = Struct_2(func_4(all(!vec3<bool>(var_0.b.a, global2.b, var_0.b.b)), func_2()).b, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -689f), _wgslsmith_f_op_f32(f32(-1f) * -449f))), _wgslsmith_f_op_f32(-377f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(967f + -892f), -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(523f * 461f)))));
    let var_2 = Struct_5(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -474f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)))), func_4(any(!vec2<bool>(var_0.b.b, false)), Struct_2(arg_1.a, func_2().b)).b);
    global0 = array<vec2<i32>, 15>();
    return abs(~_wgslsmith_div_vec2_u32(~vec2<u32>(var_0.a.c, u_input.b), _wgslsmith_sub_vec2_u32(vec2<u32>(55979u, var_1.a.c), vec2<u32>(0u, 1u))) ^ vec2<u32>(_wgslsmith_dot_vec2_u32(max(vec2<u32>(arg_1.a.c, global2.c), vec2<u32>(var_2.b.c, 5231u)), ~vec2<u32>(var_1.a.c, var_1.a.c)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1.a.c, var_2.b.c, arg_1.a.c) | vec4<u32>(u_input.b, global2.c, 39452u, 2693u), max(vec4<u32>(1u, 4590u, 64517u, 4294967295u), vec4<u32>(arg_1.a.c, arg_1.a.c, 0u, var_2.b.c)))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, global2.c)), func_5(52932i, func_4(!global2.b, func_2()), vec4<i32>(u_input.a, 2147483647i, u_input.a, 2147483647i) >> (vec4<u32>(u_input.b, 5233u, 6785u, 43827u) % vec4<u32>(32u)))), u_input.b);
    var var_1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1008f)), -655f)))), func_4(!(true || global2.a), func_2()).a);
    let var_2 = !vec4<bool>(func_4((true == global2.b) && (true | var_1.b.b), func_2()).b.a, any(!select(vec2<bool>(true, global2.a), vec2<bool>(global2.a, false), vec2<bool>(var_1.b.b, false))), func_2().a.b, false);
    var_0 = ~(~max(4294967295u, var_1.b.c)) | _wgslsmith_sub_u32(~0u, _wgslsmith_dot_vec2_u32(~max(vec2<u32>(u_input.b, 47055u), vec2<u32>(var_1.b.c, 4294967295u)), ~(~vec2<u32>(global2.c, 54952u))));
    var var_3 = var_1.a;
    return Struct_1(!var_2.x, 530f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.a))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_1.a)), var_1.a))), _wgslsmith_add_u32(u_input.b, ~(4294967295u << (global2.c % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    global0 = array<vec2<i32>, 15>();
    var var_0 = ~firstTrailingBit(24889u);
    let var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(~(~(~u_input.a)), _wgslsmith_div_i32(u_input.a, u_input.a), _wgslsmith_mult_i32(i32(-1i) * -31736i, min(~u_input.a, ~u_input.a)), select(u_input.a, i32(-1i) * -39010i, true)), (_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a), vec4<i32>(-13742i, u_input.a, -2147483647i, -5775i)), vec4<i32>(-4539i, u_input.a, 1i, u_input.a)) | (~vec4<i32>(-5234i, u_input.a, 1i, 2147483647i) & vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a))) & _wgslsmith_mult_vec4_i32(-vec4<i32>(-2147483647i, 23263i, 1i, 1i), countOneBits(vec4<i32>(0i, u_input.a, u_input.a, 2147483647i))));
    var_0 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(select(vec2<u32>(global2.c, select(global2.c, 71405u, global2.b)), firstLeadingBit(countOneBits(vec2<u32>(58627u, u_input.b))), select(vec2<bool>(false, global2.b), select(vec2<bool>(global2.b, global2.a), vec2<bool>(global2.b, true), global2.b), !vec2<bool>(global2.b, global2.a))), vec2<u32>(select(~global2.c, 0u, global2.b), _wgslsmith_mult_u32(u_input.b, 6919u) << (~0u % 32u))), func_2().b.x, abs(-(30766i ^ _wgslsmith_div_i32(var_1.x, -1i))), func_2().b.x, countOneBits(firstLeadingBit(select(~vec4<u32>(0u, 4294967295u, u_input.b, 56982u), ~vec4<u32>(0u, 4294967295u, global2.c, 4294967295u), !vec4<bool>(false, global2.a, global2.b, global2.a)))));
}

