struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -715f;

var<private> global1: array<Struct_1, 15>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: f32) -> f32 {
    global1 = array<Struct_1, 15>();
    var var_0 = arg_2;
    return arg_2;
}

fn func_1(arg_0: i32, arg_1: u32) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_mod_u32(arg_1 & 1u, countOneBits(0u) ^ u_input.a.x), ~u_input.b, 383f)));
    let var_0 = -_wgslsmith_dot_vec3_i32(vec3<i32>(~arg_0, _wgslsmith_add_i32(u_input.b, u_input.b), max(u_input.b, arg_0)) << (~max(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(0u, u_input.a.x, arg_1)) % vec3<u32>(32u)), -(~vec3<i32>(-2147483647i, arg_0, arg_0)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-200f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -179f)) + _wgslsmith_f_op_f32(f32(-1f) * -632f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1106f, _wgslsmith_div_f32(-1357f, _wgslsmith_f_op_f32(f32(-1f) * -443f)), true)) * 279f));
    let var_2 = select(16302u, ~36180u, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)))) >> (~_wgslsmith_mult_u32(u_input.a.x ^ 1u, abs(u_input.a.x)) % 32u);
    global0 = _wgslsmith_f_op_f32(-var_1);
    return Struct_1(var_2, u_input.a);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> f32 {
    var var_0 = vec2<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(~arg_2.b.x, _wgslsmith_dot_vec2_u32(arg_2.b.xz, u_input.a.zy)), _wgslsmith_clamp_u32(select(arg_1.a, 4294967295u, arg_3.x), ~4294967295u, ~arg_2.b.x)), arg_1.a), arg_1.a);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1920f + 101f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(516f)) - _wgslsmith_f_op_f32(abs(-1382f)))))));
    var var_1 = arg_3.x;
    var var_2 = vec2<u32>(firstTrailingBit(~(~abs(var_0.x))), 22455u);
    global1 = array<Struct_1, 15>();
    return _wgslsmith_f_op_f32(f32(-1f) * -312f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.a.yz;
    global1 = array<Struct_1, 15>();
    global1 = array<Struct_1, 15>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<bool>(true, true), func_1(u_input.b, select(var_0.x, 53364u, false)), Struct_1(u_input.a.x, vec3<u32>(u_input.a.x, var_0.x, 19951u)), vec3<bool>(true, true, true)))) - -983f);
    var var_2 = !select(vec3<bool>(true, true, 2147483647i > _wgslsmith_mult_i32(687i, u_input.b)), vec3<bool>(true, true, true), !(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-325f * var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-145f - -629f))))), _wgslsmith_mult_vec3_i32(vec3<i32>(~u_input.b & _wgslsmith_div_i32(21067i, -38215i), abs(u_input.b >> (var_0.x % 32u)), i32(-1i) * -u_input.b), -(~vec3<i32>(-14921i, -302i, u_input.b)) << (~(~u_input.a) % vec3<u32>(32u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, 1000f, 506f) + vec4<f32>(-770f, var_1, var_1, var_1))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(var_1 - -267f), 1870f, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(var_1 * -416f))))), var_0.x);
}

