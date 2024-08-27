struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: i32,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 15> = array<vec3<u32>, 15>(vec3<u32>(56291u, 45681u, 0u), vec3<u32>(4294967295u, 1u, 22813u), vec3<u32>(4294967295u, 45042u, 27181u), vec3<u32>(0u, 4581u, 22634u), vec3<u32>(93590u, 1u, 36553u), vec3<u32>(4294967295u, 0u, 120592u), vec3<u32>(40118u, 0u, 4294967295u), vec3<u32>(0u, 1u, 61526u), vec3<u32>(81302u, 9254u, 102071u), vec3<u32>(20601u, 27845u, 0u), vec3<u32>(16933u, 0u, 44379u), vec3<u32>(0u, 1u, 3555u), vec3<u32>(16677u, 0u, 58958u), vec3<u32>(35236u, 0u, 4294967295u), vec3<u32>(15989u, 69647u, 24558u));

var<private> global1: array<vec4<bool>, 2>;

var<private> global2: array<Struct_2, 10>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32) -> bool {
    return true;
}

fn func_2() -> f32 {
    global2 = array<Struct_2, 10>();
    let var_0 = -_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a, u_input.a & ~2147483647i), u_input.a);
    let var_1 = Struct_3(Struct_1(vec3<u32>(~38858u, 4294967295u, _wgslsmith_mult_u32(~1u, 1u)), 986f), ~(~(~1u)), 4294967295u, func_3(i32(-1i) * -18729i));
    let var_2 = var_1;
    var var_3 = ~firstLeadingBit(vec4<u32>(~_wgslsmith_dot_vec2_u32(var_1.a.a.zx, vec2<u32>(var_2.b, 1u)), ~(~28608u), 1u, abs(var_2.b << (var_1.c % 32u))));
    return 1555f;
}

fn func_1(arg_0: vec2<u32>, arg_1: bool) -> vec3<u32> {
    var var_0 = Struct_1(~global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(arg_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 4294967295u), vec2<u32>(arg_0.x, arg_0.x)), arg_0.x), 15u)], _wgslsmith_f_op_f32(-2113f * _wgslsmith_f_op_f32(f32(-1f) * -1192f)));
    let var_1 = arg_1;
    let var_2 = arg_0.x;
    var var_3 = var_0.b == _wgslsmith_f_op_f32(func_2());
    var var_4 = global2[_wgslsmith_index_u32(~4294967295u, 10u)];
    return ~var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(select(~_wgslsmith_add_u32(4294967295u, _wgslsmith_mult_u32(~0u, abs(0u))), 4294967295u, false), 10u)];
    global0 = array<vec3<u32>, 15>();
    var var_1 = Struct_3(Struct_1(vec3<u32>(75048u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 4294967295u)), 4294967295u), 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + var_0.a)))), 1u | (1u & abs(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, 0u), vec4<u32>(1u, 0u, 1u, 4294967295u)))), firstLeadingBit(45791u), any(!vec4<bool>(select(true, true, true), all(global1[_wgslsmith_index_u32(21810u, 2u)]), true, true)));
    var_1 = Struct_3(Struct_1(func_1(min(var_1.a.a.zx, var_1.a.a.yx), false) | var_1.a.a, var_1.a.b), 17187u | var_1.b, func_1(_wgslsmith_mod_vec2_u32(abs(var_1.a.a.yz), ~vec2<u32>(var_1.b, 0u)), var_1.d).x, false);
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, var_0.a, var_0.a) - vec3<f32>(var_1.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(ceil(-1000f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.b) - _wgslsmith_f_op_f32(round(642f)))), -411f));
    global2 = array<Struct_2, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(7271u, vec4<i32>(_wgslsmith_div_i32(-54640i, max(u_input.a, 0i) << (var_1.a.a.x % 32u)), -((u_input.a | -35293i) | ~u_input.a), u_input.a, _wgslsmith_mult_i32(-u_input.a, -u_input.a)), _wgslsmith_sub_vec2_u32(vec2<u32>(countOneBits(var_1.c), reverseBits(4294967295u)), vec2<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.a.x, 51229u, var_1.b), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.c, var_1.c, 2548u), vec3<u32>(9929u, 1u, var_1.c), var_1.a.a)))), _wgslsmith_dot_vec2_u32(~var_1.a.a.zx, countOneBits(var_1.a.a.zx)));
}

