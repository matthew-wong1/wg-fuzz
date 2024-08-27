struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 1> = array<vec4<i32>, 1>(vec4<i32>(10513i, 1i, 1i, 0i));

var<private> global1: u32 = 60427u;

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(false, false, false, false)), Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(false, false, false, false)), Struct_1(vec4<bool>(false, false, false, false)), Struct_1(vec4<bool>(false, true, false, true)), Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(false, true, false, true)), Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(false, true, true, false)));

var<private> global3: array<Struct_1, 27>;

var<private> global4: array<Struct_2, 1>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: u32, arg_3: vec3<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(max(-1103f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-189f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1641f))))));
    global2 = array<Struct_1, 22>();
    global0 = array<vec4<i32>, 1>();
    var var_1 = -810f;
    var var_2 = -1i;
    return false;
}

fn func_3(arg_0: i32, arg_1: bool) -> f32 {
    let var_0 = Struct_1(vec4<bool>(all(select(vec3<bool>(false, arg_1, true), !vec3<bool>(arg_1, false, arg_1), !vec3<bool>(arg_1, arg_1, false))), false, arg_1, false));
    var var_1 = var_0.a.yw;
    let var_2 = arg_0;
    let var_3 = Struct_1(vec4<bool>(true && any(vec2<bool>(var_1.x, false)), true, true, true));
    let var_4 = !select(!var_0.a.zw, select(var_3.a.xy, vec2<bool>(var_3.a.x && var_1.x, select(arg_1, var_0.a.x, var_1.x)), var_1.x), !select(vec2<bool>(false, false), var_0.a.zw, var_3.a.wy));
    return -1143f;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>) -> Struct_2 {
    global3 = array<Struct_1, 27>();
    let var_0 = arg_0.b.x;
    var var_1 = vec2<u32>(u_input.a.x, abs(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x >> (min(u_input.a.x, u_input.a.x) % 32u), 29305u)));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -821f)), _wgslsmith_mod_vec2_i32(vec2<i32>(~31062i, 49137i), ~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c.x, arg_0.e), vec2<i32>(46966i, 3700i) << (u_input.a % vec2<u32>(32u)))), _wgslsmith_f_op_f32(func_3(2147483647i, false & arg_0.d)), !(firstLeadingBit(~var_0) < -countOneBits(-36902i)), _wgslsmith_div_i32(1i >> (var_1.x % 32u), 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), true)), vec4<bool>(true, true, true, true), true == all(vec3<bool>(false, false, true))));
    var var_1 = func_2(Struct_2(-1207f, u_input.c, _wgslsmith_f_op_f32(f32(-1f) * -1036f), !func_1(Struct_1(var_0.a), vec4<i32>(u_input.b, -77579i, 2147483647i, u_input.b), u_input.a.x, vec3<i32>(-1i, -2147483647i, u_input.b)), u_input.b), !var_0.a.xy);
    let var_2 = global3[_wgslsmith_index_u32(1769u, 27u)];
    global2 = array<Struct_1, 22>();
    var var_3 = var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(firstTrailingBit(~vec3<u32>(u_input.a.x, u_input.a.x, 1u)), ~select(vec3<u32>(0u, 40593u, u_input.a.x), vec3<u32>(u_input.a.x, 1u, u_input.a.x), var_0.a.zzy)), ~vec3<u32>(53172u, ~17857u, 61174u)), 0i, var_1.b.x, -1745f);
}

