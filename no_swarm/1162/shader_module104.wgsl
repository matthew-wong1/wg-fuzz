struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -24342i;

var<private> global1: array<vec4<bool>, 11> = array<vec4<bool>, 11>(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false));

var<private> global2: array<vec4<bool>, 28> = array<vec4<bool>, 28>(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false));

var<private> global3: u32 = 25548u;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(803f)), _wgslsmith_f_op_f32(-1821f * -190f))), 1f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-549f, _wgslsmith_f_op_f32(floor(2019f)), true)), _wgslsmith_f_op_f32(f32(-1f) * -572f), !any(vec2<bool>(false, true)))))));
    let var_1 = u_input.d;
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1238f))) - _wgslsmith_f_op_f32(-var_0))));
    var var_3 = select(false, true, select(!all(vec3<bool>(false, false, true)), true, all(vec2<bool>(true, true)))) | true;
    var_3 = false;
    return 1i;
}

fn func_2(arg_0: vec3<f32>) -> vec3<i32> {
    global2 = array<vec4<bool>, 28>();
    global3 = 1u;
    var var_0 = func_3() != u_input.a.x;
    global2 = array<vec4<bool>, 28>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2195f - _wgslsmith_f_op_f32(-arg_0.x)))) > 1127f, reverseBits(u_input.d), u_input.a.x);
    return vec3<i32>(var_1.b, 9512i, -57086i);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<f32>) -> StorageBuffer {
    return StorageBuffer(vec4<u32>(abs(~1u), ~u_input.c, abs(_wgslsmith_add_u32(5520u, _wgslsmith_sub_u32(u_input.c, u_input.c))), ~4294967295u), ((vec3<i32>(-1i) * -u_input.b) | _wgslsmith_sub_vec3_i32(func_2(vec3<f32>(arg_1.x, 1000f, arg_0.x)), u_input.b)) & vec3<i32>(reverseBits(_wgslsmith_dot_vec2_i32(u_input.a, u_input.b.zx)), _wgslsmith_sub_i32(select(12126i, -1i, true), _wgslsmith_sub_i32(u_input.b.x, u_input.b.x)), _wgslsmith_dot_vec3_i32(u_input.b, countOneBits(vec3<i32>(0i, u_input.a.x, -2643i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(true, firstTrailingBit(max(_wgslsmith_sub_i32(32048i, ~0i), (7831i >> (u_input.c % 32u)) | u_input.a.x)), u_input.a.x | 1i);
    global3 = firstTrailingBit(~1u);
    var var_1 = var_0.b;
    let var_2 = reverseBits(~vec2<u32>(~_wgslsmith_clamp_u32(u_input.c, u_input.c, u_input.c), u_input.c));
    var var_3 = var_0.c;
    var var_4 = Struct_1(false, -_wgslsmith_dot_vec4_i32(abs(-vec4<i32>(0i, u_input.a.x, -2147483647i, u_input.b.x)), firstLeadingBit(vec4<i32>(var_0.b, u_input.a.x, 5135i, var_0.c) >> (vec4<u32>(1u, var_2.x, 1u, 21218u) % vec4<u32>(32u)))), _wgslsmith_sub_i32(17065i, 37033i) << (u_input.c % 32u));
    let var_5 = 7112u;
    let var_6 = !(!(!vec3<bool>(u_input.c > 0u, true, var_0.a || var_4.a)));
    var_3 = 70550i;
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1112f, -736f, 1326f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(423f)), -489f, _wgslsmith_f_op_f32(min(-652f, -1399f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-730f + _wgslsmith_f_op_f32(-570f + 1077f)), 191f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2139f) * -397f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-740f, 515f, 660f) - vec3<f32>(573f, 360f, -1000f))))));
}

