struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 28>;

var<private> global1: array<vec4<bool>, 24> = array<vec4<bool>, 24>(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1166f), _wgslsmith_f_op_f32(round(1100f))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(step(-854f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-744f, _wgslsmith_f_op_f32(-arg_3.x))))));
    global1 = array<vec4<bool>, 24>();
    let var_1 = vec3<f32>(arg_1.a.x, 416f, _wgslsmith_f_op_f32(f32(-1f) * -1611f));
    global0 = array<Struct_4, 28>();
    global0 = array<Struct_4, 28>();
    return func_2();
}

fn func_1() -> Struct_4 {
    var var_0 = Struct_3(func_3(4294967295u, func_2(), Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-933f, 400f))), Struct_1(vec2<f32>(-1000f, -988f))), vec2<f32>(_wgslsmith_div_f32(-1009f, -730f), _wgslsmith_f_op_f32(-607f - _wgslsmith_f_op_f32(f32(-1f) * -1190f)))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(466f, 322f, true)), _wgslsmith_f_op_f32(1000f * -364f)))));
    let var_1 = Struct_2(func_2(), var_0.b);
    global1 = array<vec4<bool>, 24>();
    var_0 = Struct_3(var_0.b, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(var_0.b.a.x * var_0.a.a.x), var_0.b.a.x)));
    var var_2 = -3619i;
    return global0[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x | u_input.b.x), 28u)];
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    global1 = array<vec4<bool>, 24>();
    global1 = array<vec4<bool>, 24>();
    let var_0 = arg_1;
    let var_1 = -2147483647i;
    global1 = array<vec4<bool>, 24>();
    return func_1().c;
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: Struct_1, arg_3: Struct_3) -> StorageBuffer {
    let var_0 = func_1().a.wxx;
    global0 = array<Struct_4, 28>();
    let var_1 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.a, abs(-26790i)), countOneBits(~1i), ~_wgslsmith_clamp_i32(abs(reverseBits(2147483647i)), firstLeadingBit(10995i), min(0i, u_input.a) >> (~5277u % 32u)));
    let var_2 = Struct_2(func_2(), arg_0.b);
    var var_3 = min(vec2<i32>(-2813i, 26839i), vec2<i32>(-14400i, _wgslsmith_dot_vec2_i32(vec2<i32>(-56477i, -51921i), vec2<i32>(1i, -2147483647i) >> (u_input.b.yx % vec2<u32>(32u))))) | _wgslsmith_div_vec2_i32(countOneBits(firstTrailingBit(vec2<i32>(18013i, -2147483647i))), select(vec2<i32>(var_1, -2147483647i) ^ vec2<i32>(-1i, -40558i), -vec2<i32>(var_1, -2147483647i), var_0.yy) << (vec2<u32>(u_input.b.x, _wgslsmith_mod_u32(4294967295u, u_input.b.x)) % vec2<u32>(32u)));
    return StorageBuffer(vec3<u32>(u_input.b.x, select(u_input.b.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.b.wxx, u_input.b.zww), ~vec3<u32>(u_input.b.x, 1u, 23534u)), select(select(arg_1, true, true), false, func_1().a.x)), 1u), -(~select(~var_3.x, -2147483647i, false)), _wgslsmith_f_op_f32(arg_0.b.a.x * _wgslsmith_f_op_f32(-var_2.b.a.x)), var_1);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 24>();
    global0 = array<Struct_4, 28>();
    var var_0 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 12474i) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(-13402i, u_input.a), vec2<i32>(0i, -1i)), ~(vec2<i32>(-1i, u_input.a) ^ vec2<i32>(45897i, 2147483647i))), vec2<i32>(-_wgslsmith_add_i32(30395i, u_input.a), _wgslsmith_div_i32(u_input.a, 1i))), -u_input.a, -1i);
    var_0 = 11963i;
    var_0 = u_input.a;
    let var_1 = Struct_1(vec2<f32>(1f, -640f));
    let x = u_input.a;
    s_output = func_5(Struct_3(func_4(func_1(), Struct_2(var_1, var_1), var_1), func_4(Struct_4(select(global1[_wgslsmith_index_u32(u_input.b.x, 24u)], vec4<bool>(true, false, false, false), false), ~u_input.b.x, func_3(u_input.b.x, var_1, Struct_3(var_1, var_1), vec2<f32>(var_1.a.x, var_1.a.x))), Struct_2(var_1, func_3(32051u, var_1, Struct_3(var_1, Struct_1(vec2<f32>(-1915f, var_1.a.x))), var_1.a)), Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1029f, 946f)))))), any(vec3<bool>(true, true, true)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-837f, var_1.a.x) * var_1.a)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(930f, 1000f), vec2<f32>(var_1.a.x, var_1.a.x)) * var_1.a))), Struct_3(func_4(func_1(), Struct_2(func_2(), func_4(Struct_4(vec4<bool>(true, true, false, false), u_input.b.x, Struct_1(vec2<f32>(-911f, var_1.a.x))), Struct_2(var_1, var_1), var_1)), Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-728f, var_1.a.x))))), func_1().c));
}

