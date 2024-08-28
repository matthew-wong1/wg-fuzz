struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2>;

var<private> global1: array<bool, 20> = array<bool, 20>(false, true, false, true, true, true, false, true, false, true, false, false, false, false, true, true, true, true, true, false);

var<private> global2: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(Struct_1(false, vec4<f32>(1210f, -153f, -406f, -664f))), Struct_2(Struct_1(false, vec4<f32>(-1402f, 1730f, 1036f, 947f))), Struct_2(Struct_1(true, vec4<f32>(258f, -1851f, -1040f, 213f))), Struct_2(Struct_1(false, vec4<f32>(627f, 1290f, -1603f, 672f))), Struct_2(Struct_1(false, vec4<f32>(-1070f, -3360f, 140f, -340f))), Struct_2(Struct_1(true, vec4<f32>(287f, 270f, 1791f, -944f))), Struct_2(Struct_1(true, vec4<f32>(-306f, -378f, -2193f, 918f))), Struct_2(Struct_1(true, vec4<f32>(232f, -780f, 1000f, -1199f))), Struct_2(Struct_1(true, vec4<f32>(-1951f, 212f, 883f, 1307f))), Struct_2(Struct_1(true, vec4<f32>(555f, -1664f, 378f, 391f))));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec3<f32>, arg_3: Struct_2) -> Struct_2 {
    global1 = array<bool, 20>();
    global1 = array<bool, 20>();
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.b.x)))));
    let var_1 = -vec4<i32>((-2147483647i & u_input.a) << (_wgslsmith_mult_u32(1u, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(arg_1, 2u)], 55166u)) % 32u), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 61023i, -4758i), vec3<i32>(u_input.a, 7932i, 33324i)) & _wgslsmith_clamp_vec3_i32(vec3<i32>(-41456i, u_input.a, 36126i), vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(2147483647i, 1i, -17550i)), abs(firstLeadingBit(vec3<i32>(u_input.a, u_input.a, u_input.a)))), 49685i, firstLeadingBit(~(u_input.a ^ 26872i)));
    let var_2 = Struct_4(abs(var_1.xz), -2147483647i);
    return Struct_2(arg_0);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>) -> f32 {
    global2 = array<Struct_2, 10>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.x)));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.yz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-251f, 170f)))))));
    let var_2 = firstTrailingBit(vec3<i32>(u_input.a, 7428i, select(_wgslsmith_clamp_i32(~349i, -36057i, u_input.a << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3684u, 2u)], 2u)] % 32u)), -_wgslsmith_mult_i32(1i, u_input.a), false)));
    var var_3 = !(!(!select(select(vec3<bool>(false, true, global1[_wgslsmith_index_u32(4294967295u, 20u)]), vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(28904u, 2u)], 2u)], 2u)], 20u)], arg_0.a.a, arg_0.a.a), vec3<bool>(true, true, false)), vec3<bool>(global1[_wgslsmith_index_u32(51118u, 20u)], true, false), !vec3<bool>(arg_0.a.a, false, true))));
    return _wgslsmith_f_op_f32(trunc(var_1.x));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> u32 {
    global1 = array<bool, 20>();
    global1 = array<bool, 20>();
    global0 = array<u32, 2>();
    global2 = array<Struct_2, 10>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(func_2(Struct_1(true, vec4<f32>(482f, -1000f, arg_1.b.x, arg_2)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 2u)], 2u)], 23247u), vec3<u32>(6416u, global0[_wgslsmith_index_u32(arg_3, 2u)], 88694u)), arg_1.b.xyw, global2[_wgslsmith_index_u32(1u, 10u)]), _wgslsmith_f_op_vec3_f32(-arg_1.b.xzy))));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!global1[_wgslsmith_index_u32(select(global0[_wgslsmith_index_u32(1u, 2u)] | func_1(vec4<i32>(2147483647i, 1i, u_input.a, u_input.a), Struct_1(global1[_wgslsmith_index_u32(72190u, 20u)], vec4<f32>(-440f, 1071f, 611f, 1000f)), -658f, 4294967295u), select(global0[_wgslsmith_index_u32(~9481u, 2u)], global0[_wgslsmith_index_u32(4294967295u | global0[_wgslsmith_index_u32(628u, 2u)], 2u)], global1[_wgslsmith_index_u32(~0u, 20u)]), !global1[_wgslsmith_index_u32(1u, 20u)] && global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21932u, 2u)], 2u)], 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 2u)], 2u)]), vec3<u32>(13206u, 1u, global0[_wgslsmith_index_u32(1u, 2u)])), 20u)]), 20u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1264f, 1000f, -1000f, 1162f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(723f, -841f, 441f, -240f) + vec4<f32>(132f, 1000f, -248f, 1469f)), select(vec4<bool>(true, true, global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8509u, 2u)], 20u)]), vec4<bool>(global1[_wgslsmith_index_u32(35505u, 20u)], false, global1[_wgslsmith_index_u32(31002u, 20u)], global1[_wgslsmith_index_u32(17824u, 20u)]), global1[_wgslsmith_index_u32(3413u, 20u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-126f, 108f, 1047f, 112f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(493f, 928f, -781f, -562f)))))));
    global1 = array<bool, 20>();
    global0 = array<u32, 2>();
    let var_1 = vec2<u32>(1u, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(91760u, 2u)], 2u)] | countOneBits(global0[_wgslsmith_index_u32(24067u, 2u)])) | 1u, 2u)]);
    var var_2 = 806f;
    global1 = array<bool, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(~select(vec3<u32>(_wgslsmith_div_u32(30986u, var_1.x), ~4029u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 6819u, 49229u, 1u), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], 4294967295u, 14459u, global0[_wgslsmith_index_u32(var_1.x, 2u)]))), select(~vec3<u32>(4476u, var_1.x, 0u), select(vec3<u32>(global0[_wgslsmith_index_u32(0u, 2u)], 0u, var_1.x), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(67457u, 2u)], 2u)], 4294967295u, 0u), false), true | var_0.a), all(select(vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(var_1.x, 20u)], global1[_wgslsmith_index_u32(4294967295u, 20u)]), vec4<bool>(true, true, global1[_wgslsmith_index_u32(1u, 20u)], var_0.a), false))), ~(~global0[_wgslsmith_index_u32(4294967295u, 2u)]), -(~select(-vec2<i32>(u_input.a, -2147483647i), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(1i, u_input.a)), !vec2<bool>(true, var_0.a))), vec4<i32>((~26201i << (0u % 32u)) >> (global0[_wgslsmith_index_u32(~15501u, 2u)] % 32u), u_input.a, 1i, u_input.a), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -893f)), var_0.b.xz))));
}

