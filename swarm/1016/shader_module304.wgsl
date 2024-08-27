struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: u32,
    d: f32,
}

struct Struct_5 {
    a: u32,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<i32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1> = array<u32, 1>(23420u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_1) -> bool {
    let var_0 = abs(u_input.a);
    global0 = array<u32, 1>();
    global0 = array<u32, 1>();
    let var_1 = arg_1;
    let var_2 = !(arg_1.b <= u_input.b.x);
    return _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(arg_1.b, 33760u, 1u)), max(vec3<u32>(global0[_wgslsmith_index_u32(arg_1.b, 1u)], 0u, var_1.b), vec3<u32>(0u, var_1.b, 0u)) << (~vec3<u32>(var_1.b, u_input.b.x, arg_0.a.a) % vec3<u32>(32u))), 0u) > ~arg_0.a.a;
}

fn func_2(arg_0: vec4<i32>, arg_1: u32) -> u32 {
    var var_0 = Struct_2(!select(vec2<bool>(func_3(Struct_4(Struct_3(u_input.b.x), 260f, arg_1, 2927f), Struct_2(vec2<bool>(false, true), 63238u, vec4<f32>(1122f, -203f, 772f, -572f), vec3<f32>(-747f, -719f, -2390f)), Struct_1(-1237f, vec4<f32>(1175f, 522f, 2566f, 591f), vec3<bool>(true, false, false))), true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, false), true)), firstLeadingBit(select(abs(4294967295u), select(u_input.b.x, ~49815u, any(vec2<bool>(true, false))), any(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1578f), _wgslsmith_f_op_f32(step(-957f, -102f))), 1254f, 734f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(794f, 134f, -485f)), vec3<f32>(-1365f, 2001f, -200f), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1388f, 1000f, 244f) - vec3<f32>(308f, -769f, 290f))))))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-988f)) * _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(exp2(var_0.d.x)))), vec4<f32>(694f, -532f, -795f, 1297f), select(!(!vec3<bool>(var_0.a.x, true, var_0.a.x)), vec3<bool>(select(var_0.d.x >= 479f, true, any(vec3<bool>(false, var_0.a.x, false))), _wgslsmith_clamp_i32(u_input.e, -2147483647i, arg_0.x) >= _wgslsmith_dot_vec3_i32(arg_0.ywx, arg_0.yzy), all(var_0.a)), !(!vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x))));
    let var_2 = firstTrailingBit(1u);
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x - 110f) - -846f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -626f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(125f, _wgslsmith_div_f32(var_0.d.x, -248f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -738f), var_1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a * var_1.a)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-var_0.d.x))))));
    var var_4 = select(select(select(select(var_0.a, var_1.c.yy, vec2<bool>(var_1.c.x, var_1.c.x)), vec2<bool>(var_0.a.x, any(var_1.c)), select(!vec2<bool>(var_1.c.x, var_1.c.x), vec2<bool>(false, true), select(var_0.a, var_0.a, vec2<bool>(true, false)))), var_0.a, all(select(var_1.c, var_1.c, true))), var_0.a, var_1.c.zy);
    return u_input.b.x;
}

fn func_1(arg_0: bool, arg_1: bool) -> f32 {
    global0 = array<u32, 1>();
    global0 = array<u32, 1>();
    var var_0 = ~u_input.b.x;
    let var_1 = firstTrailingBit(countOneBits(vec4<u32>(func_2(vec4<i32>(40301i, u_input.c, u_input.e, -2147483647i), u_input.b.x), global0[_wgslsmith_index_u32(~0u, 1u)], ~global0[_wgslsmith_index_u32(56500u, 1u)], global0[_wgslsmith_index_u32(u_input.b.x, 1u)] << (u_input.b.x % 32u)) | vec4<u32>(4294967295u, ~u_input.b.x, 0u, u_input.b.x)));
    let var_2 = Struct_5(2860u, ~u_input.b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1688f)) * _wgslsmith_div_f32(-741f, 431f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1258f, 1192f, -468f, -705f)))), vec3<bool>(select(true, !arg_0, any(vec3<bool>(arg_1, false, arg_0))), arg_0, !select(true, false, arg_1))), Struct_4(Struct_3(~(global0[_wgslsmith_index_u32(var_1.x, 1u)] ^ 612u)), 1f, abs(0u), 1274f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(578f - var_2.d.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = -firstTrailingBit(vec2<i32>(-7809i, ~_wgslsmith_div_i32(0i, -10391i)));
    global0 = array<u32, 1>();
    var var_2 = Struct_2(vec2<bool>(select(var_0, any(vec2<bool>(var_0, false)), false) != false, any(!vec4<bool>(var_0, var_0, true, var_0))), 3396u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1059f, 415f, 624f, 643f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, 565f, -484f, -498f), vec4<f32>(837f, -1321f, -657f, -1114f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-263f, _wgslsmith_f_op_f32(731f + -1347f), _wgslsmith_div_f32(375f, -566f)), vec3<f32>(_wgslsmith_f_op_f32(func_1(true, true)), _wgslsmith_f_op_f32(min(-512f, -1545f)), _wgslsmith_f_op_f32(max(-311f, 1713f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, 731f, -1101f))) + vec3<f32>(-1188f, 1238f, -1517f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1187f, -1000f, 1159f) * vec3<f32>(-401f, 1890f, -1372f)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1465f, -143f, -656f), vec3<f32>(-209f, 511f, 1817f)))))));
    let var_3 = Struct_2(!var_2.a, firstTrailingBit(func_2(vec4<i32>(0i, var_1.x, -2147483647i, u_input.d), 1u)) << (u_input.b.x % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_2.c, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 687f, var_2.d.x, var_2.d.x), var_2.c, select(var_2.a.x, var_0, var_0)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.d.x, 276f, var_2.c.x), var_2.d))) + vec3<f32>(_wgslsmith_f_op_f32(var_2.d.x + var_2.c.x), var_2.d.x, var_2.d.x)) + _wgslsmith_div_vec3_f32(var_2.d, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(246f, -707f, var_2.d.x), _wgslsmith_f_op_vec3_f32(-var_2.d))))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(var_3.b, _wgslsmith_sub_u32(var_2.b, var_2.b)), _wgslsmith_div_f32(-763f, var_2.c.x), countOneBits(countOneBits(countOneBits(vec2<i32>(u_input.a, 1i) >> (vec2<u32>(var_2.b, 4294967295u) % vec2<u32>(32u))))), -1542f, vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_3.c.x, -1573f, false)) - var_3.d.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_2.d.x, 117f), -405f)), _wgslsmith_f_op_f32(abs(-1808f)))));
}

