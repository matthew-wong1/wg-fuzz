struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 18>;

var<private> global1: vec2<u32>;

var<private> global2: array<u32, 3>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: vec4<u32>) -> f32 {
    var var_0 = _wgslsmith_mult_vec2_u32(~vec2<u32>(15191u, abs(_wgslsmith_clamp_u32(60361u, 34669u, arg_0.x))), vec2<u32>(arg_0.x, ~_wgslsmith_sub_u32(_wgslsmith_add_u32(4228u, arg_2.x), countOneBits(0u))));
    var var_1 = Struct_2(arg_1.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(591f, 1290f, 1000f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(372f, -449f, -1638f)))))));
    var_0 = vec2<u32>(0u, ~4294967295u) ^ _wgslsmith_mult_vec2_u32(arg_0, (u_input.c.xx & abs(vec2<u32>(u_input.c.x, 27448u))) | _wgslsmith_add_vec2_u32(min(arg_0, arg_2.yw), abs(u_input.c.zz)));
    global0 = array<vec3<bool>, 18>();
    var var_2 = Struct_2(true, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -2319f), 263f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.b - var_1.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b) + var_1.b))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1377f))))));
}

fn func_2() -> Struct_1 {
    var var_0 = vec4<f32>(946f, 161f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -138f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<u32>(global1.x, 17818u), vec3<bool>(true, false, false), vec4<u32>(47697u, u_input.c.x, global1.x, 0u))))) + -1621f));
    let var_1 = false;
    global2 = array<u32, 3>();
    var var_2 = Struct_3(Struct_2(select(true, false != var_1, any(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-491f, _wgslsmith_f_op_f32(func_3(vec2<u32>(4294967295u, global1.x), vec3<bool>(false, var_1, var_1), vec4<u32>(0u, u_input.c.x, u_input.c.x, u_input.a))), _wgslsmith_f_op_f32(var_0.x + var_0.x)))), var_0.zw);
    var var_3 = Struct_3(Struct_2(!var_1, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_0.zxx - var_2.a.b)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.wz + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_2.b.x))))));
    return Struct_1(global0[_wgslsmith_index_u32(max(u_input.c.x, ~13294u), 18u)], ~(-62378i) & _wgslsmith_mult_i32(~(-u_input.b.x), -1i));
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    global0 = array<vec3<bool>, 18>();
    let var_0 = !select(vec4<bool>(true, arg_0.a.x, true, arg_0.a.x), !(!select(vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x), vec4<bool>(arg_0.a.x, arg_0.a.x, true, true), vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, true))), true);
    let var_1 = func_2();
    var var_2 = _wgslsmith_mod_i32(_wgslsmith_div_i32(arg_0.b, arg_0.b), (var_1.b ^ ~abs(u_input.b.x)) << (_wgslsmith_sub_u32(firstLeadingBit(~4294967295u), 1u) % 32u));
    var var_3 = Struct_3(Struct_2(true, _wgslsmith_f_op_vec3_f32(vec3<f32>(649f, -1000f, _wgslsmith_f_op_f32(-2196f - 573f)) + vec3<f32>(212f, -791f, _wgslsmith_f_op_f32(ceil(-1084f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-153f, -1000f), vec2<f32>(809f, 586f), false))) + vec2<f32>(1715f, 1000f)));
    return var_3.a;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_3, arg_3: u32) -> f32 {
    let var_0 = ~19047i;
    global0 = array<vec3<bool>, 18>();
    let var_1 = 2147483647i;
    var var_2 = Struct_1(func_2().a, ~_wgslsmith_dot_vec3_i32(firstTrailingBit(~vec3<i32>(u_input.d, -22717i, var_0)), max(vec3<i32>(u_input.d, 35096i, u_input.b.x) >> (vec3<u32>(0u, 22510u, 1u) % vec3<u32>(32u)), -vec3<i32>(2147483647i, 9249i, 0i))));
    let var_3 = ~countOneBits(~countOneBits(arg_3));
    return arg_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_f32(func_4(~1u, func_1(Struct_1(global0[_wgslsmith_index_u32(u_input.c.x, 18u)], -1i)), Struct_3(Struct_2(false, vec3<f32>(959f, 460f, 1090f)), vec2<f32>(-727f, 1811f)), 9710u)), true))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-594f * -829f)), _wgslsmith_f_op_f32(f32(-1f) * -1103f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -120f)))), all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -209f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(700f - 2497f), _wgslsmith_f_op_f32(round(-519f)))), true)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1057f - 1f) + _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -879f)))));
    let var_1 = -1200f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.xx - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-434f, 738f)))))), _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(abs(u_input.b), firstTrailingBit(u_input.b), vec2<i32>(~u_input.b.x, max(u_input.b.x, 11680i))), _wgslsmith_add_vec2_i32(u_input.b, u_input.b)), max(~1i, u_input.d));
}

