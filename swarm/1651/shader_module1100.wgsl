struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(66725u, 59828u);

var<private> global1: i32;

var<private> global2: i32;

var<private> global3: array<u32, 12> = array<u32, 12>(16048u, 4294967295u, 47066u, 1u, 64583u, 0u, 7768u, 0u, 0u, 104654u, 12646u, 42454u);

var<private> global4: vec2<i32> = vec2<i32>(39173i, -19181i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = Struct_1(arg_0.a.zy, select(global3[_wgslsmith_index_u32(abs(global0.x) | 0u, 12u)], 31307u, true) <= ~global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~global3[_wgslsmith_index_u32(0u, 12u)], _wgslsmith_div_u32(global3[_wgslsmith_index_u32(u_input.d, 12u)], 4294967295u)), 12u)], firstTrailingBit(global3[_wgslsmith_index_u32(u_input.b, 12u)]));
    let var_1 = Struct_3(Struct_2(vec3<f32>(-873f, 373f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + arg_0.a.x))), !vec3<bool>(false, var_0.b, !(var_0.b || false)), arg_0, arg_0);
    return 4294967295u;
}

fn func_2() -> f32 {
    global3 = array<u32, 12>();
    var var_0 = u_input.a;
    global0 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_add_u32(func_3(Struct_2(vec3<f32>(-412f, -681f, 113f))), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global0.x, 18977u, 0u), vec4<u32>(global0.x, 8203u, global3[_wgslsmith_index_u32(100786u, 12u)], global0.x))), u_input.a), ~u_input.c.xx);
    global2 = firstLeadingBit(global4.x);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1909f, 491f)), true, 43605u);
    return var_1.a.x;
}

fn func_1() -> u32 {
    var var_0 = Struct_2(vec3<f32>(2635f, _wgslsmith_f_op_f32(func_2()), -582f));
    var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(step(var_0.a.x, var_0.a.x))))), var_0.a.x, var_0.a.x));
    let var_1 = 1u;
    var var_2 = select(u_input.d, _wgslsmith_mod_u32(abs(select(5930u, _wgslsmith_clamp_u32(1u, global3[_wgslsmith_index_u32(var_1, 12u)], u_input.d), var_0.a.x == var_0.a.x)), _wgslsmith_clamp_u32(~global0.x, ~(~21937u), ~u_input.a)), -_wgslsmith_sub_i32(2147483647i, abs(global4.x)) < global4.x);
    var var_3 = Struct_3(Struct_2(vec3<f32>(581f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1246f)), var_0.a.x), var_0.a.x)), !select(vec3<bool>(true, true, false), vec3<bool>(all(vec2<bool>(true, true)), false, true), true | (-546f > var_0.a.x)), Struct_2(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(step(var_0.a.x, -627f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.x + -1201f), var_0.a.x))), Struct_2(var_0.a));
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (u_input.a << (min(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_1(), 8268u), 12u)], 1u | _wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(0u, 12u)], global0.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 12u)], 12u)])) % 32u)) << (global3[_wgslsmith_index_u32(func_3(Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-130f, 145f, -247f) + vec3<f32>(-417f, -686f, 1759f)))), 12u)] % 32u);
    let var_1 = vec4<bool>(!(_wgslsmith_dot_vec2_u32(u_input.c.yz, u_input.c.xz) >= ~1u) && true, any(vec2<bool>(true, !all(vec3<bool>(true, false, false)))), !select(true, true && any(vec4<bool>(false, true, false, false)), false), any(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true)))));
    global2 = max(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(~global4.x, 2147483647i << (global3[_wgslsmith_index_u32(218u, 12u)] % 32u)), -abs(32007i)), -reverseBits(vec2<i32>(1i, 1i))), ~(reverseBits(abs(0i)) >> (countOneBits(abs(u_input.a)) % 32u)));
    global0 = _wgslsmith_clamp_vec2_u32(abs(~_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, global0.x), vec2<u32>(4294967295u, 0u)), _wgslsmith_add_vec2_u32(u_input.c.xz, u_input.c.zy))), ~firstTrailingBit(~vec2<u32>(1u, 5676u)), _wgslsmith_div_vec2_u32(~max(_wgslsmith_sub_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(4294967295u, 325u)), u_input.c.xz | u_input.c.xy), ~max(reverseBits(vec2<u32>(var_0, global3[_wgslsmith_index_u32(var_0, 12u)])), abs(vec2<u32>(u_input.a, 55579u)))));
    global1 = _wgslsmith_add_i32(-1i, global4.x);
    global2 = global4.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1735f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2075f) - -313f) - _wgslsmith_f_op_f32(f32(-1f) * -1374f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) * -1322f) * _wgslsmith_f_op_f32(-514f + -2303f)))), -(~_wgslsmith_clamp_vec2_i32(vec2<i32>(global4.x, -2147483647i), vec2<i32>(-2147483647i, global4.x), vec2<i32>(global4.x, -43702i))) << (u_input.c.yx % vec2<u32>(32u)));
}

