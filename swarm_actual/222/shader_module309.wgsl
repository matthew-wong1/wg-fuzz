struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec3<f32>, 21>;

var<private> global2: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(false, true)));

var<private> global3: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(vec4<i32>(0i, 2147483647i, -7828i, 33052i)), Struct_2(vec4<i32>(2147483647i, -1i, 21542i, i32(-2147483648))), Struct_2(vec4<i32>(1i, 0i, 0i, -17426i)), Struct_2(vec4<i32>(i32(-2147483648), 2147483647i, 7949i, 0i)), Struct_2(vec4<i32>(-2528i, 0i, 2147483647i, 2260i)), Struct_2(vec4<i32>(5063i, -32253i, 18470i, 0i)), Struct_2(vec4<i32>(-10242i, -40947i, 0i, -33637i)), Struct_2(vec4<i32>(34195i, -28974i, -15246i, -22769i)), Struct_2(vec4<i32>(-31034i, -4334i, -1i, -50003i)), Struct_2(vec4<i32>(-37866i, i32(-2147483648), -26343i, 50690i)), Struct_2(vec4<i32>(0i, i32(-2147483648), 5438i, 22568i)), Struct_2(vec4<i32>(-20287i, 64785i, 26273i, 18307i)), Struct_2(vec4<i32>(9265i, 1i, 0i, i32(-2147483648))), Struct_2(vec4<i32>(i32(-2147483648), -3283i, -1i, 4887i)), Struct_2(vec4<i32>(2147483647i, 7758i, 54395i, 2147483647i)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = !(!(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), 6608u < u_input.b.x)));
    global2 = array<Struct_3, 20>();
    var var_1 = 1i;
    let var_2 = 0i;
    global3 = array<Struct_2, 15>();
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(722f)) - -1199f)))));
}

fn func_2() -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-226f, -510f), vec2<f32>(1796f, -1575f))))))) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(132f)) * _wgslsmith_f_op_f32(-1759f - -1000f)), _wgslsmith_f_op_f32(858f * _wgslsmith_f_op_f32(func_3(global3[_wgslsmith_index_u32(u_input.b.x, 15u)])))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-898f, -365f))))));
    var var_1 = -2147483647i & ((-countOneBits(18695i) ^ _wgslsmith_dot_vec3_i32(~vec3<i32>(-41278i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, 20725i, 38359i))) & -2147483647i);
    var var_2 = Struct_1(abs(~firstLeadingBit(max(vec4<u32>(u_input.b.x, 37719u, 108979u, u_input.b.x), vec4<u32>(19673u, 4294967295u, 4294967295u, u_input.b.x)))));
    let var_3 = !(_wgslsmith_clamp_u32(u_input.b.x, firstLeadingBit(68u), ~0u >> (var_2.a.x % 32u)) != _wgslsmith_dot_vec4_u32(~(~var_2.a), ~vec4<u32>(u_input.b.x, var_2.a.x, 0u, u_input.b.x) >> (var_2.a % vec4<u32>(32u))));
    let var_4 = Struct_1(var_2.a);
    return StorageBuffer(abs(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(0i, -35979i, 1i)), abs(vec3<i32>(12318i, 2147483647i, u_input.a.x))), vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, -2629i, -28367i))), abs(vec4<i32>(-9568i, 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(38658i, u_input.a.x, -2147483647i), min(vec3<i32>(u_input.a.x, -32021i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, 48490i))), reverseBits(~67434i))), var_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(160f, var_0.x, var_0.x, var_0.x)))))));
}

fn func_1() -> StorageBuffer {
    global0 = false;
    global3 = array<Struct_2, 15>();
    global3 = array<Struct_2, 15>();
    var var_0 = ~(-_wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, -3589i, 15938i), vec3<i32>(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -37262i), vec3<i32>(-2147483647i, 34747i, 2147483647i)), select(2147483647i, u_input.a.x, true))));
    global1 = array<vec3<f32>, 21>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 21>();
    global2 = array<Struct_3, 20>();
    global1 = array<vec3<f32>, 21>();
    global2 = array<Struct_3, 20>();
    let var_0 = u_input.b;
    let x = u_input.a;
    s_output = func_1();
}

