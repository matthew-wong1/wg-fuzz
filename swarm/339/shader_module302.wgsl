struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec3<bool>,
    d: vec2<u32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1) -> bool {
    let var_0 = arg_0.a.c.x;
    var var_1 = Struct_1(arg_0.b.yx);
    var var_2 = arg_0;
    var var_3 = true;
    var var_4 = u_input.d;
    return var_2.a.b.x;
}

fn func_2() -> Struct_4 {
    return Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-399f, 1387f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(267f, 741f)))), !select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), func_3(Struct_4(Struct_2(Struct_1(vec2<f32>(-1000f, 1631f)), vec2<bool>(true, true), u_input.d), vec3<f32>(705f, -1371f, 778f), vec3<bool>(true, true, false), vec2<u32>(u_input.e.x, u_input.e.x)), Struct_1(vec2<f32>(-759f, 429f)))), vec3<u32>(4294967295u, u_input.d.x, countOneBits(0u) >> (u_input.e.x % 32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1304f, -140f, -1031f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(696f, -941f, 536f)), vec3<bool>(true, false, true)))))), !vec3<bool>(select(true, func_3(Struct_4(Struct_2(Struct_1(vec2<f32>(-398f, -303f)), vec2<bool>(true, false), vec3<u32>(66279u, u_input.e.x, u_input.e.x)), vec3<f32>(-1000f, -702f, 937f), vec3<bool>(true, false, true), u_input.e), Struct_1(vec2<f32>(1677f, 1532f))), any(vec4<bool>(true, true, false, true))), false, any(vec2<bool>(true, false))), vec2<u32>(_wgslsmith_clamp_u32(10061u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(33159u, 50028u, 6182u, u_input.e.x), vec4<u32>(u_input.d.x, u_input.e.x, 26717u, u_input.e.x)), ~37313u), firstLeadingBit(~_wgslsmith_dot_vec2_u32(u_input.d.xx, vec2<u32>(1u, 1u)))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<i32>) -> vec2<i32> {
    let var_0 = _wgslsmith_mod_vec2_i32(u_input.a.xx, ~(~(~countOneBits(u_input.b.zy))));
    let var_1 = func_2();
    var var_2 = var_1.a.b.x;
    let var_3 = _wgslsmith_div_f32(arg_0.x, var_1.b.x);
    let var_4 = func_2().b.x;
    return -arg_1.yw;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(420f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-575f - _wgslsmith_f_op_f32(495f + -506f)))) - 1f), 2351f);
    let var_1 = vec3<i32>(_wgslsmith_add_i32(0i, u_input.a.x), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(~(-vec2<i32>(u_input.a.x, u_input.c)), -(~u_input.b.yw), min(func_1(vec4<f32>(var_0.x, -1470f, 156f, var_0.x), u_input.b), ~u_input.b.zz)), vec2<i32>(_wgslsmith_add_i32(u_input.a.x, _wgslsmith_mod_i32(-1i, 2147483647i)), _wgslsmith_dot_vec2_i32(-vec2<i32>(7198i, u_input.a.x), u_input.a.yz))), -2147483647i);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-548f, var_0.x))))));
    let var_3 = !all(vec2<bool>(~u_input.e.x >= _wgslsmith_dot_vec3_u32(u_input.d, u_input.d), true));
    var var_4 = ~firstTrailingBit(_wgslsmith_div_u32(abs(u_input.d.x), ~_wgslsmith_dot_vec2_u32(u_input.e, vec2<u32>(0u, u_input.e.x))));
    var_4 = u_input.d.x;
    var_4 = u_input.e.x;
    let var_5 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-802f, var_2)), 117f))), -946f);
    let var_6 = u_input.d.xz;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.x | var_6.x, firstLeadingBit(_wgslsmith_sub_vec2_i32(var_1.yz | (vec2<i32>(0i, 1i) << (vec2<u32>(20650u, u_input.e.x) % vec2<u32>(32u))), _wgslsmith_add_vec2_i32(abs(u_input.b.yz), vec2<i32>(u_input.b.x, var_1.x)))));
}

