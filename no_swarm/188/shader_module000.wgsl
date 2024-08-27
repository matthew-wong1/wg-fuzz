struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
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

var<private> global0: array<bool, 24> = array<bool, 24>(false, true, true, true, true, false, true, false, false, true, false, false, true, true, false, false, false, false, true, false, false, true, true, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec4<u32>) -> i32 {
    let var_0 = Struct_1(u_input.e.xx);
    let var_1 = var_0;
    global0 = array<bool, 24>();
    let var_2 = u_input.a.x;
    let var_3 = u_input.e.wyw;
    return ~_wgslsmith_sub_i32(~(-select(var_3.x, 0i, global0[_wgslsmith_index_u32(49945u, 24u)])), ~(~(-13663i) << (abs(arg_0.x) % 32u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_dot_vec3_u32(abs(vec3<u32>(~abs(u_input.a.x), _wgslsmith_dot_vec4_u32(u_input.a, u_input.a) ^ ~0u, _wgslsmith_add_u32(_wgslsmith_div_u32(0u, 43344u), _wgslsmith_mult_u32(6143u, 7281u)))), ~(~u_input.a.wzw));
    let var_1 = !(!select(true, global0[_wgslsmith_index_u32(88066u, 24u)], arg_0.x));
    global0 = array<bool, 24>();
    let var_2 = any(arg_0.zx);
    let var_3 = ~_wgslsmith_mod_vec3_i32((firstLeadingBit(u_input.e.xzy) << (u_input.a.xxz % vec3<u32>(32u))) | u_input.e.xyy, vec3<i32>(-1i) * -vec3<i32>(-47719i, 30235i, -54023i));
    return arg_1.x;
}

fn func_2(arg_0: u32) -> Struct_1 {
    global0 = array<bool, 24>();
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(546f - -1328f), _wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, global0[_wgslsmith_index_u32(101101u, 24u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(-222f, -106f, 605f) - vec3<f32>(720f, -118f, -255f)), Struct_1(vec2<i32>(10192i, 2147483647i))))))));
    global0 = array<bool, 24>();
    let var_1 = vec3<bool>(true, all(vec4<bool>(all(select(vec4<bool>(true, global0[_wgslsmith_index_u32(arg_0, 24u)], true, false), vec4<bool>(global0[_wgslsmith_index_u32(944u, 24u)], global0[_wgslsmith_index_u32(arg_0, 24u)], global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(arg_0, 24u)], true, global0[_wgslsmith_index_u32(arg_0, 24u)]))), !global0[_wgslsmith_index_u32(reverseBits(4294967295u), 24u)], true, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~19279u, arg_0), 24u)])), true);
    let var_2 = select(vec2<bool>(true, !var_1.x), select(var_1.yy, select(var_1.zz, vec2<bool>(!global0[_wgslsmith_index_u32(u_input.a.x, 24u)], var_1.x), vec2<bool>(!global0[_wgslsmith_index_u32(arg_0, 24u)], global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0, 0u), 24u)])), var_1.zz), var_1.xx);
    return Struct_1(u_input.e.yy);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>) -> f32 {
    var var_0 = arg_1;
    var_0 = func_2(0u);
    var_0 = Struct_1(vec2<i32>(countOneBits(u_input.e.x), 1i));
    var_0 = Struct_1(var_0.a);
    let var_1 = ~(-1i);
    return 919f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 24>();
    var var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.d, u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, 1i, u_input.d), u_input.e.www), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-41438i, 19331i))) | u_input.b, _wgslsmith_div_i32(u_input.d, u_input.b), _wgslsmith_dot_vec3_i32(~u_input.e.yzy >> (u_input.a.www % vec3<u32>(32u)), vec3<i32>(-1i) * -u_input.e.yxz)), ~_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, u_input.e.x, 1i), -vec3<i32>(1i, u_input.e.x, 0i)), vec3<i32>(2147483647i, _wgslsmith_mult_i32(-1i, 0i), 2147483647i & u_input.b)));
    global0 = array<bool, 24>();
    var var_1 = vec4<i32>(func_1(abs(countOneBits(u_input.a & vec4<u32>(u_input.a.x, 4294967295u, 10830u, u_input.c)))), -1i, 65682i, -1i);
    var_1 = u_input.e;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c, -24344i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -591f) + _wgslsmith_f_op_f32(func_4(func_2(0u), func_2(u_input.a.x), vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(7837u, 24u)], true)))), 1587f), -40680i);
}

