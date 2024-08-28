struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec3<u32>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<f32, 12> = array<f32, 12>(1398f, -300f, 1859f, -444f, 800f, 1513f, -979f, -1169f, 406f, -3129f, -1148f, -1100f);

var<private> global2: array<i32, 11>;

var<private> global3: Struct_2 = Struct_2(vec3<i32>(11977i, i32(-2147483648), 0i), -1245f, Struct_1(vec4<f32>(1165f, 2419f, 395f, 145f), i32(-2147483648), vec3<u32>(74961u, 1u, 1u), 2242f, vec4<i32>(2688i, -11853i, -20111i, 2147483647i)));

var<private> global4: array<vec2<bool>, 5> = array<vec2<bool>, 5>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> u32 {
    let var_0 = Struct_2(_wgslsmith_sub_vec3_i32(~(-(~global3.a)), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, global2[_wgslsmith_index_u32(u_input.c.x, 11u)]), global3.c.e.wxz), reverseBits(abs(global3.a)))), _wgslsmith_f_op_f32(-1194f + global3.b), global3.c);
    let var_1 = _wgslsmith_clamp_u32(1u, u_input.d, var_0.c.c.x);
    let var_2 = var_0;
    let var_3 = var_2;
    global1 = array<f32, 12>();
    return ~min(_wgslsmith_dot_vec2_u32(~reverseBits(var_3.c.c.yy), var_0.c.c.zz), ~u_input.c.x);
}

fn func_2() -> vec4<u32> {
    var var_0 = global3.c;
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1394f, -626f)) * global3.c.a.wx)));
    let var_2 = abs(vec2<u32>(var_0.c.x, global3.c.c.x));
    global2 = array<i32, 11>();
    var var_3 = vec4<f32>(-463f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b * _wgslsmith_f_op_f32(round(var_0.d))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -885f) + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 12u)] - 829f))) - 952f), var_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(19948u >> (~4294967295u % 32u), 12u)], -431f))));
    return vec4<u32>(global3.c.c.x, global3.c.c.x, ~_wgslsmith_clamp_u32(~var_2.x, ~func_3(), var_0.c.x), 4294967295u);
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = global3.b;
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -773f)));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(countOneBits(~(~vec4<u32>(u_input.c.x, 18908u, global3.c.c.x, 0u))), func_2()), abs(vec4<u32>(abs(0u), 0u, min(global3.c.c.x, _wgslsmith_sub_u32(global3.c.c.x, 4294967295u)), countOneBits(reverseBits(4294967295u))))), 12u)];
    global4 = array<vec2<bool>, 5>();
    var var_3 = global3.c.a.ww;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec2<bool>, 5>();
    let var_0 = global3.c;
    let var_1 = vec4<u32>(select(~max(_wgslsmith_clamp_u32(u_input.c.x, 4294967295u, 4294967295u), ~1u), global3.c.c.x, func_1(_wgslsmith_dot_vec4_i32(-vec4<i32>(26283i, 0i, 58705i, global2[_wgslsmith_index_u32(u_input.d, 11u)]), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.b, global2[_wgslsmith_index_u32(4294967295u, 11u)], 2194i, -2147483647i), var_0.e)))), 1u, var_0.c.x, firstTrailingBit(abs(~global3.c.c.x)) | min(u_input.d, ~21418u));
    let var_2 = abs(2147483647i);
    global2 = array<i32, 11>();
    global0 = max(global2[_wgslsmith_index_u32(4294967295u, 11u)], var_0.b);
    var var_3 = vec2<bool>(!all(vec2<bool>(true, true)), !any(vec4<bool>(false, any(vec4<bool>(false, true, true, true)), true, var_0.d == global3.c.d)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.a.x * global1[_wgslsmith_index_u32(var_1.x, 12u)]), countOneBits(var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -515f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global3.c.a.zyy)), vec3<f32>(177f, var_0.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.b))))));
}

