struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: bool, arg_1: vec4<i32>, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = -821f;
    global0 = array<bool, 27>();
    global0 = array<bool, 27>();
    global0 = array<bool, 27>();
    var var_1 = arg_3;
    return arg_3;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<f32> {
    global0 = array<bool, 27>();
    var var_0 = ~vec2<i32>(u_input.a, countOneBits(u_input.c.x));
    var_0 = vec2<i32>(firstLeadingBit(-var_0.x), u_input.a);
    var var_1 = vec3<i32>(~(~(i32(-1i) * -38047i)), 13369i, (i32(-1i) * -u_input.a) & -(~u_input.c.x)) << (u_input.b % vec3<u32>(32u));
    var var_2 = arg_2.a;
    return _wgslsmith_div_vec4_f32(arg_2.b, vec4<f32>(arg_1.b.x, -1075f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-245f)))), _wgslsmith_f_op_f32(round(arg_0.x))));
}

fn func_1() -> vec3<i32> {
    let var_0 = _wgslsmith_div_u32(u_input.d, countOneBits(0u));
    var var_1 = Struct_1(true, _wgslsmith_f_op_vec4_f32(vec4<f32>(917f, -1995f, _wgslsmith_f_op_f32(sign(1598f)), 476f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec4<f32>(2356f, -3135f, -1124f, 338f), Struct_1(false, vec4<f32>(-1000f, 919f, -603f, -587f), 1233f), func_2(global0[_wgslsmith_index_u32(1u, 27u)], vec4<i32>(u_input.a, u_input.c.x, u_input.a, -30826i), vec4<i32>(1i, u_input.c.x, 0i, u_input.c.x), Struct_1(false, vec4<f32>(1000f, 1551f, -927f, -1670f), 429f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1590f))))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    global0 = array<bool, 27>();
    global0 = array<bool, 27>();
    var var_2 = abs(1u);
    return _wgslsmith_mod_vec3_i32(vec3<i32>(-(-1i ^ u_input.a), ~(-(u_input.a << (111996u % 32u))), 14816i), select(~(~(vec3<i32>(u_input.a, u_input.a, u_input.c.x) & vec3<i32>(u_input.a, 49003i, 1i))), vec3<i32>(~max(2147483647i, -12131i), -29415i & min(u_input.c.x, u_input.c.x), 43281i), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = u_input.b.zz;
    let var_2 = func_2(true, ~vec4<i32>(~(u_input.c.x >> (38996u % 32u)), _wgslsmith_sub_i32(_wgslsmith_div_i32(21035i, var_0.x), _wgslsmith_div_i32(var_0.x, u_input.a)), abs(~1i), var_0.x), ~(-vec4<i32>(var_0.x, ~var_0.x, u_input.c.x, var_0.x >> (var_1.x % 32u))), func_2(false && all(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 27u)], false, global0[_wgslsmith_index_u32(u_input.d, 27u)], false), vec4<bool>(global0[_wgslsmith_index_u32(15510u, 27u)], global0[_wgslsmith_index_u32(var_1.x, 27u)], global0[_wgslsmith_index_u32(1u, 27u)], false), vec4<bool>(false, global0[_wgslsmith_index_u32(6593u, 27u)], false, true))), firstTrailingBit(-vec4<i32>(1i, 2147483647i, u_input.a, -1i)), (reverseBits(vec4<i32>(var_0.x, u_input.a, -2147483647i, u_input.c.x)) ^ ~vec4<i32>(u_input.a, -2147483647i, -126686i, 2705i)) | vec4<i32>(-2147483647i, 24309i, u_input.c.x ^ u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(34285i, 16339i, u_input.c.x), vec3<i32>(u_input.a, var_0.x, -14382i))), func_2(global0[_wgslsmith_index_u32(4294967295u, 27u)], reverseBits(~vec4<i32>(u_input.c.x, 9506i, -2147483647i, 1i)), -countOneBits(vec4<i32>(u_input.a, var_0.x, 10327i, -1i)), func_2(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.x, 1u), 27u)], _wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.c.x, 1i, u_input.c.x), vec4<i32>(var_0.x, var_0.x, -7618i, -1944i)), vec4<i32>(0i, var_0.x, 4517i, u_input.a), Struct_1(true, vec4<f32>(-296f, 482f, -1120f, -537f), -1188f)))));
    let var_3 = func_1();
    var_1 = abs(vec2<u32>(77571u, 1u));
    let var_4 = var_2;
    global0 = array<bool, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(func_1().x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.c) - func_2(!any(vec2<bool>(global0[_wgslsmith_index_u32(var_1.x, 27u)], global0[_wgslsmith_index_u32(u_input.b.x, 27u)])), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(43571i, u_input.a, 2147483647i, 24571i), vec4<i32>(-2147483647i, var_0.x, 2147483647i, -2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(-36792i, -2147483647i, -2147483647i, var_0.x), vec4<i32>(2147483647i, -13969i, var_3.x, var_0.x))), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, u_input.c.x, u_input.a, 26709i), _wgslsmith_mod_vec4_i32(vec4<i32>(41402i, 0i, 32716i, var_0.x), vec4<i32>(var_0.x, var_0.x, var_3.x, 38197i))), Struct_1(true, _wgslsmith_f_op_vec4_f32(var_2.b - vec4<f32>(var_4.b.x, 786f, -203f, var_4.c)), 511f)).b.x), u_input.c.x);
}

