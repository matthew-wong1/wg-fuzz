struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec2<u32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-36886i, i32(-2147483648));

var<private> global1: Struct_2 = Struct_2(145f, 341f);

var<private> global2: array<Struct_2, 29>;

var<private> global3: array<Struct_1, 6>;

var<private> global4: array<f32, 29> = array<f32, 29>(138f, -1377f, -473f, 622f, -193f, -1017f, -483f, 675f, 109f, -1000f, -212f, -1000f, -1540f, 1601f, -849f, 759f, -567f, -1000f, 786f, -995f, -575f, 1026f, 1436f, 223f, -939f, 887f, 902f, 766f, -462f);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec3<i32>) -> u32 {
    global1 = Struct_2(global1.a, 2157f);
    global3 = array<Struct_1, 6>();
    global1 = Struct_2(global4[_wgslsmith_index_u32(~(~(~(~u_input.b.x))), 29u)], global4[_wgslsmith_index_u32(reverseBits(~max(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 7149u, u_input.b.x, u_input.b.x), u_input.b))), 29u)]);
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global4[_wgslsmith_index_u32(select(4294967295u, _wgslsmith_add_u32(u_input.b.x, 1u), select(false, false, arg_0)), 29u)]))), 641f);
    global1 = Struct_2(_wgslsmith_f_op_f32(var_0.a * -1635f), 531f);
    return min(0u, u_input.b.x << (~(~_wgslsmith_add_u32(u_input.b.x, 72960u)) % 32u));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<u32>) -> Struct_2 {
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, u_input.b.x ^ 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, 4294967295u), arg_1)), u_input.b.wxz >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, 1u), firstLeadingBit(u_input.b.zzz), reverseBits(u_input.b.wyz)) % vec3<u32>(32u))), 1u), 29u)];
    global3 = array<Struct_1, 6>();
    let var_0 = Struct_1(~4294967295u, vec3<bool>(194i != u_input.e, !(!any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true))), arg_0.x), firstTrailingBit(~arg_1), false, global4[_wgslsmith_index_u32(~func_3(arg_0.x, _wgslsmith_mod_i32(u_input.d, 11295i) <= global0.x, -_wgslsmith_div_vec3_i32(u_input.a, vec3<i32>(global0.x, u_input.a.x, -52833i))), 29u)]);
    var var_1 = Struct_1(_wgslsmith_sub_u32(arg_1.x, 44593u), var_0.b, u_input.b.yz, false, global4[_wgslsmith_index_u32(_wgslsmith_add_u32(~var_0.c.x, _wgslsmith_add_u32(1u, 1u)), 29u)]);
    var var_2 = global3[_wgslsmith_index_u32(~(1u & var_1.c.x), 6u)];
    return global2[_wgslsmith_index_u32(~(~select(max(max(arg_1.x, var_1.a), ~4294967295u), abs(~arg_1.x), any(vec4<bool>(true, false, false, var_1.b.x)))), 29u)];
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> bool {
    let var_0 = func_2(select(select(vec2<bool>(true, all(vec3<bool>(false, false, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(false, false), true)), !(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false))), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), ~(u_input.b.wy >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.b.x), u_input.b.zw, vec2<u32>(4294967295u, 0u)) % vec2<u32>(32u))) & vec2<u32>(select(u_input.b.x, u_input.b.x, true), (u_input.b.x & 37228u) << (~9957u % 32u)));
    global3 = array<Struct_1, 6>();
    global4 = array<f32, 29>();
    let var_1 = u_input.a.xy;
    global4 = array<f32, 29>();
    return false;
}

fn func_1() -> vec4<f32> {
    var var_0 = !(true || func_4(-1112f, func_2(select(vec2<bool>(true, true), vec2<bool>(true, true), false), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.yx))));
    let var_1 = Struct_1(~_wgslsmith_mult_u32(u_input.b.x, reverseBits(1524u)), select(select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), global1.a >= -438f), (4294967295u >= u_input.b.x) || true), vec3<bool>(all(vec2<bool>(false, false)), true, -1965f >= global4[_wgslsmith_index_u32(~1u, 29u)]), vec3<bool>(false, select(true, all(vec4<bool>(false, false, true, true)), all(vec3<bool>(true, true, true))), all(vec4<bool>(true, true, true, true)))), firstLeadingBit(vec2<u32>(~_wgslsmith_mult_u32(3777u, u_input.b.x), abs(~u_input.b.x))), any(vec2<bool>(false, true)), 772f);
    global2 = array<Struct_2, 29>();
    global4 = array<f32, 29>();
    var var_2 = ~(-44248i) <= -global0.x;
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1432f, var_1.e, 163f, -563f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(895f, global1.a, 143f, -643f))), vec4<f32>(2400f, global4[_wgslsmith_index_u32(u_input.b.x, 29u)], _wgslsmith_f_op_f32(291f * -1300f), _wgslsmith_f_op_f32(f32(-1f) * -340f)), vec4<bool>(all(var_1.b), all(var_1.b), !var_1.d, var_1.b.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<f32, 29>();
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_1())));
    global2 = array<Struct_2, 29>();
    let var_1 = -1591f < var_0.x;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global4[_wgslsmith_index_u32(16449u, 29u)])))), var_0.x)), _wgslsmith_f_op_f32(-global1.a));
    let var_3 = Struct_1(u_input.b.x, !(!(!(!vec3<bool>(var_1, var_1, true)))), vec2<u32>(u_input.b.x, ~(~abs(u_input.b.x))), var_1, -1170f);
    let x = u_input.a;
    s_output = StorageBuffer(17029u, global0.x, firstTrailingBit(min(vec4<i32>(_wgslsmith_sub_i32(80175i, 10958i), u_input.a.x, u_input.a.x, ~u_input.c), ~vec4<i32>(0i, global0.x, -1i, -409i))), -(~(~(-2147483647i))), vec4<u32>(u_input.b.x, _wgslsmith_mod_u32(_wgslsmith_add_u32(~69755u, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x)), ~4294967295u), 50417u, u_input.b.x << (19250u % 32u)));
}

