struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18> = array<i32, 18>(1i, -1i, 0i, 1i, 1i, i32(-2147483648), 0i, 7528i, 10873i, -1i, 2147483647i, -24338i, 0i, 8654i, -1628i, -10713i, 14752i, -38871i);

var<private> global1: bool;

var<private> global2: array<vec4<bool>, 12>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(u_input.d.x, 18u)];
    global0 = array<i32, 18>();
    var var_1 = -1661f;
    global2 = array<vec4<bool>, 12>();
    var var_2 = 4294967295u;
    return -35047i;
}

fn func_3(arg_0: vec3<u32>, arg_1: i32) -> u32 {
    global2 = array<vec4<bool>, 12>();
    global1 = true;
    var var_0 = Struct_3(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, select(true, true, false))));
    var_0 = Struct_3(var_0.a);
    var var_1 = arg_0.x;
    return u_input.d.x;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: f32) -> vec2<bool> {
    var var_0 = -vec2<i32>(2147483647i, reverseBits(arg_2.x)) | -vec2<i32>(-(u_input.b | u_input.b), _wgslsmith_mult_i32(u_input.b >> (27166u % 32u), u_input.b & 42458i));
    global2 = array<vec4<bool>, 12>();
    let var_1 = Struct_1(arg_0.c.a);
    global2 = array<vec4<bool>, 12>();
    global2 = array<vec4<bool>, 12>();
    return !vec2<bool>(arg_0.a, any(select(vec2<bool>(true, true), !vec2<bool>(arg_0.a, true), arg_0.a || false)));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec3<f32>, arg_3: vec4<f32>) -> i32 {
    var var_0 = Struct_4(Struct_3(select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), true), vec3<bool>(true, false, true), true)), Struct_3(vec3<bool>(!(0u < u_input.c.x), true, true)), _wgslsmith_f_op_f32(-arg_1));
    var var_1 = any(func_4(Struct_2(var_0.b.a.x, vec4<u32>(func_3(vec3<u32>(u_input.a.x, 50778u, 1u), -2147483647i), u_input.c.x, 60569u | u_input.d.x, 1u), Struct_1(~u_input.d)), Struct_1(_wgslsmith_clamp_vec3_u32(u_input.d, u_input.d, vec3<u32>(3529u, u_input.c.x, u_input.c.x))), ~vec4<i32>(-2452i, ~19578i, global0[_wgslsmith_index_u32(116799u, 18u)], u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -453f))) + _wgslsmith_f_op_f32(788f + _wgslsmith_f_op_f32(arg_2.x - 700f)))));
    var_1 = !var_0.b.a.x;
    var var_2 = -52626i;
    let var_3 = Struct_4(Struct_3(var_0.a.a), var_0.b, 661f);
    return reverseBits(~(~u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(select(select(vec3<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 18u)], 13402i, u_input.b), vec3<i32>(u_input.b, 2147483647i, u_input.b), true) ^ vec3<i32>(1i & global0[_wgslsmith_index_u32(32129u, 18u)], _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(4294967295u, 18u)], -3259i), u_input.b), vec3<i32>(u_input.b, func_1() << ((u_input.d.x ^ u_input.c.x) % 32u), global0[_wgslsmith_index_u32(~0u, 18u)]), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(false, true, all(vec2<bool>(false, true))), vec3<bool>(true, true, true))));
    global2 = array<vec4<bool>, 12>();
    var_0 = reverseBits(vec3<i32>(select(~(-2147483647i ^ global0[_wgslsmith_index_u32(0u, 18u)]), -2147483647i, !(u_input.a.x == 18001u)), -func_2(1f, _wgslsmith_div_f32(-1000f, 1622f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(500f, 1021f, -435f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1182f, -504f, 408f, -759f) + vec4<f32>(617f, 787f, -1528f, 140f))), _wgslsmith_mod_i32(firstLeadingBit(abs(11369i)), var_0.x)));
    global2 = array<vec4<bool>, 12>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1883f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1133f), _wgslsmith_f_op_f32(abs(-1093f)))), -287f));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, ~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 10094u << (u_input.d.x % 32u), firstLeadingBit(90990u), _wgslsmith_mult_u32(u_input.a.x, 28995u)), ~abs(u_input.a)), vec3<f32>(-149f, var_1.x, var_1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(1000f)), var_1.x))));
}

