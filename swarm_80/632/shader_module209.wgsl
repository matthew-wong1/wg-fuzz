struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec4<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec2<u32>(1u, 76829u), -5641i, vec4<bool>(false, true, true, false), vec2<f32>(-1533f, -1367f)), Struct_1(vec2<u32>(117528u, 1u), 0i, vec4<bool>(true, false, true, true), vec2<f32>(1667f, 1000f)), Struct_1(vec2<u32>(39238u, 0u), 39439i, vec4<bool>(false, false, false, true), vec2<f32>(206f, -131f)), Struct_1(vec2<u32>(1u, 68326u), 2211i, vec4<bool>(true, false, false, true), vec2<f32>(-847f, 549f)), Struct_1(vec2<u32>(29992u, 18017u), i32(-2147483648), vec4<bool>(false, true, false, true), vec2<f32>(987f, -487f)), Struct_1(vec2<u32>(1u, 0u), 2147483647i, vec4<bool>(false, false, true, false), vec2<f32>(-1005f, 419f)), Struct_1(vec2<u32>(16450u, 58722u), 26359i, vec4<bool>(false, true, true, true), vec2<f32>(-766f, 1051f)));

var<private> global1: vec2<bool>;

var<private> global2: array<Struct_2, 24>;

var<private> global3: array<vec2<bool>, 7> = array<vec2<bool>, 7>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> i32 {
    global2 = array<Struct_2, 24>();
    let var_0 = -1196f;
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, u_input.a), 24u)];
    var var_2 = global1.x;
    var var_3 = ~1u;
    return arg_0.b.b;
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = ~0u;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_2.d.x, arg_0.x)))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(113f - 365f), arg_0.x))));
}

fn func_2() -> vec4<f32> {
    var var_0 = !vec4<bool>(global1.x, select(any(vec2<bool>(false, global1.x)), ~0u <= u_input.b, all(global3[_wgslsmith_index_u32(1u, 7u)])), false, false);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-1670f, 442f, 1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-147f, -931f, 101f))))) - _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2083f, 1963f) - vec2<f32>(479f, -1197f))), countOneBits(1i), Struct_1(vec2<u32>(u_input.b, u_input.a), _wgslsmith_mult_i32(u_input.c.x, -1i), !vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec2<f32>(471f, -1233f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1556f, 1485f, -717f) * _wgslsmith_div_vec3_f32(vec3<f32>(2838f, 397f, -610f), vec3<f32>(-431f, -2461f, -843f))))));
    var var_2 = Struct_2(vec4<f32>(-901f, 1426f, var_1.x, var_1.x), global0[_wgslsmith_index_u32(~(~firstTrailingBit(u_input.a)), 7u)]);
    var_0 = vec4<bool>(false, var_2.b.c.x, any(var_2.b.c.wwy), true);
    var var_3 = _wgslsmith_f_op_vec2_f32(var_1.zz * var_2.b.d);
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(var_2.a.x, _wgslsmith_f_op_f32(step(var_3.x, var_3.x))), 1636f, -742f, 1f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.a + var_2.a) - vec4<f32>(_wgslsmith_f_op_f32(min(var_3.x, -463f)), var_2.a.x, var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -784f))) + _wgslsmith_f_op_vec4_f32(var_2.a * vec4<f32>(var_3.x, _wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_f_op_f32(select(var_2.a.x, 465f, true)), _wgslsmith_f_op_f32(806f + 217f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mod_i32(func_1(global2[_wgslsmith_index_u32(~1u, 24u)], !global1.x), u_input.c.x);
    var var_1 = ~select(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.a) >> (vec2<u32>(4294967295u, 37255u) % vec2<u32>(32u)), ~vec2<u32>(u_input.a, u_input.b)), u_input.b), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.a, 0u, u_input.b), vec4<u32>(24832u, 22124u, 67496u, 1u)) | _wgslsmith_sub_u32(0u, u_input.a), 16620u), true);
    global0 = array<Struct_1, 7>();
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -184f), _wgslsmith_f_op_f32(-516f - -291f), 1f) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(808f - 371f), -813f, -2697f))))));
    var var_3 = -10500i;
    global0 = array<Struct_1, 7>();
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), var_2.x, 221f, _wgslsmith_f_op_f32(-var_2.x)), vec4<f32>(_wgslsmith_f_op_vec3_f32(func_3(vec2<f32>(387f, 350f), -1i, global0[_wgslsmith_index_u32(21301u, 7u)])).x, _wgslsmith_f_op_f32(1007f - var_2.x), _wgslsmith_div_f32(636f, var_2.x), _wgslsmith_f_op_f32(987f - 1866f))))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_vec3_i32(~vec3<i32>(13839i, -2147483647i, 10009i), u_input.c.wxx, ~(~u_input.c.zxx)), -countOneBits(min(vec4<i32>(u_input.c.x, -31019i, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, 1987i, 1i, u_input.c.x))) << (~(~vec4<u32>(151867u, var_1.x, u_input.a, 1u)) % vec4<u32>(32u)));
}

