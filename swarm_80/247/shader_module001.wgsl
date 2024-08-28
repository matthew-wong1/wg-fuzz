struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: f32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: vec3<i32>) -> f32 {
    global0 = _wgslsmith_clamp_i32(u_input.b, select(max(reverseBits(i32(-1i) * -48430i), ~(~4641i)), u_input.b, any(arg_1.zxw) && !arg_1.x), -2147483647i);
    global0 = arg_2.x;
    return arg_0.x;
}

fn func_2(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: u32) -> bool {
    var var_0 = Struct_2(~4294967295u, vec3<f32>(-1160f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.x)) + _wgslsmith_f_op_f32(-arg_1.x)))), 733f), -1000f);
    global0 = _wgslsmith_dot_vec3_i32(u_input.e, ~reverseBits(-abs(vec3<i32>(-2147483647i, u_input.c, u_input.e.x))));
    var var_1 = Struct_2(5488u, _wgslsmith_f_op_vec3_f32(trunc(var_0.b)), 635f);
    let var_2 = Struct_3(u_input.e);
    var_0 = Struct_2(abs(arg_3), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.b.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.b.x * var_0.c))), -387f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<f32>(1217f, var_0.b.x), vec4<bool>(arg_2.a, arg_2.a, arg_2.a, arg_0.a), vec3<i32>(-5624i, u_input.b, -2147483647i)))))));
    return arg_0.a;
}

fn func_1() -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1112f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1381f - 315f) - _wgslsmith_div_f32(533f, 483f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2201f, 1000f)) * -170f) - 1f));
    global0 = min(-2147483647i, abs(select(1i, select(-u_input.e.x, 5131i << (u_input.a % 32u), func_2(Struct_4(false), vec2<f32>(-564f, 533f), Struct_4(false), 4294967295u)), any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), false)))));
    let var_1 = ~(~(~reverseBits(firstLeadingBit(vec4<i32>(-44525i, u_input.c, u_input.b, u_input.b)))));
    let var_2 = Struct_4(true);
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1037f + _wgslsmith_div_f32(1248f, 680f))))));
    return vec4<u32>(_wgslsmith_div_u32(~abs(max(52524u, 4294967295u)), u_input.a), 7058u, ~(~abs(51014u)), 33743u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_dot_vec4_u32(abs(select(_wgslsmith_sub_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, 9942u, 29697u, 44008u)), func_1(), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), true))), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, 3098u, u_input.d.x), u_input.d) >> (vec4<u32>(72133u, 37579u, ~0u, ~0u) % vec4<u32>(32u)));
    let var_1 = Struct_2(firstTrailingBit(4294967295u), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(2093f, 807f, 342f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1098f, -916f, -826f)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(round(-677f)), _wgslsmith_f_op_f32(f32(-1f) * -560f), _wgslsmith_f_op_f32(trunc(1646f))), vec3<f32>(1f, 1f, 1f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(676f, -2099f, true)))) * _wgslsmith_div_f32(-316f, -1000f))));
    global0 = _wgslsmith_dot_vec2_i32(u_input.e.xz, u_input.e.zz);
    var var_2 = vec3<u32>(31110u, _wgslsmith_clamp_u32(~0u, 0u & (~u_input.a >> (var_1.a % 32u)), ~(~73582u) | func_1().x), 1u);
    var_2 = ~func_1().xzz;
    let var_3 = _wgslsmith_f_op_f32(trunc(var_1.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(-1496f, abs(u_input.d.yyz), 570f, var_2.x, vec4<i32>(-35976i, ~abs(_wgslsmith_mult_i32(u_input.e.x, -10736i)), min(firstLeadingBit(min(2147483647i, u_input.b)), u_input.e.x), firstLeadingBit(u_input.b) >> (u_input.a % 32u)));
}

