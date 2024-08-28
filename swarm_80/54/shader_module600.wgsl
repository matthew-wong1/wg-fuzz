struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec4<u32>,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: vec3<f32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec3<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: bool,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_4, 4>;

var<private> global2: array<vec2<u32>, 23>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> u32 {
    return u_input.c;
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: vec2<f32>) -> vec3<bool> {
    var var_0 = ~(~(~(vec2<i32>(-1i) * -u_input.b.yy)));
    global1 = array<Struct_4, 4>();
    var_0 = firstTrailingBit(~arg_1.a.xx);
    var_0 = countOneBits(vec2<i32>(arg_0 ^ _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -2147483647i, arg_1.a.x) & u_input.b, vec3<i32>(arg_1.a.x, var_0.x, arg_1.a.x)), _wgslsmith_sub_i32(1i & -var_0.x, _wgslsmith_mod_i32(arg_1.a.x, u_input.b.x >> (0u % 32u)))));
    global1 = array<Struct_4, 4>();
    return vec3<bool>(!(!arg_1.b), all(select(!select(arg_1.c.xyw, vec3<bool>(false, arg_1.b, true), arg_1.c.x), !vec3<bool>(false, true, arg_1.b), select(select(arg_1.c.zwy, arg_1.c.xyx, arg_1.b), arg_1.c.zxw, !arg_1.b))), false || any(arg_1.c.xzx));
}

fn func_1() -> f32 {
    let var_0 = func_2();
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1984f)))));
    global2 = array<vec2<u32>, 23>();
    var var_1 = -vec4<i32>(u_input.b.x, 15209i, -(u_input.b.x ^ (u_input.b.x ^ -1i)), select(_wgslsmith_div_i32(u_input.b.x, -1i), u_input.b.x, true));
    var var_2 = Struct_1(~1u, !select(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), func_3(var_1.x, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, u_input.c), 4u)], vec2<f32>(-1015f, 207f)), true), ~(min(select(vec4<u32>(u_input.c, 69830u, 7627u, var_0), vec4<u32>(0u, 4294967295u, 0u, u_input.a.x), false), vec4<u32>(u_input.c, 4294967295u, u_input.a.x, 1u)) >> (abs(vec4<u32>(4294967295u, u_input.c, 3486u, u_input.a.x)) % vec4<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(235f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1711f)) - -1334f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1709f * 1002f))) - 1f), _wgslsmith_f_op_f32(sign(801f))), any(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, false), true)) && true);
    return _wgslsmith_f_op_f32(f32(-1f) * -1585f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(!all(vec3<bool>(true, true, true)), true, _wgslsmith_f_op_f32(func_1()) != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1281f))))), true);
    let var_1 = _wgslsmith_clamp_i32(u_input.b.x, 21472i, u_input.b.x);
    global1 = array<Struct_4, 4>();
    global1 = array<Struct_4, 4>();
    global1 = array<Struct_4, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(1u, 17195u << (u_input.c % 32u)), ~(-abs(-vec3<i32>(var_1, u_input.b.x, 2147483647i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(222f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(619f, 910f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -332f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(498f)))))), _wgslsmith_f_op_f32(round(1466f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -364f)), -2413f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-213f * 1401f))), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(abs(-1307f))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -553f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -611f), _wgslsmith_f_op_f32(-502f - -719f))), -102f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -733f)))));
}

