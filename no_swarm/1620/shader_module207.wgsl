struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: vec2<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 4> = array<vec2<u32>, 4>(vec2<u32>(3437u, 1u), vec2<u32>(52023u, 48763u), vec2<u32>(181u, 22600u), vec2<u32>(47891u, 1u));

var<private> global1: array<Struct_2, 27>;

var<private> global2: vec2<i32>;

var<private> global3: array<Struct_1, 21>;

var<private> global4: array<vec2<i32>, 23>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(875f, -1707f, 353f) * vec3<f32>(-1378f, 660f, 680f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -210f), _wgslsmith_f_op_f32(f32(-1f) * -785f), -2009f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1486f, _wgslsmith_f_op_f32(f32(-1f) * -764f), -666f)) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(306f, -723f, 1000f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1034f, -159f, -466f))))))));
    global2 = vec2<i32>(~_wgslsmith_clamp_i32(~countOneBits(global2.x), -2147483647i, -17748i), 40397i);
    let var_1 = ~abs(~_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 0i, global2.x, -23939i), vec4<i32>(-6947i, -1i, 4365i, 1i)), firstTrailingBit(vec4<i32>(-38986i, u_input.b, -20796i, u_input.b))));
    global1 = array<Struct_2, 27>();
    global3 = array<Struct_1, 21>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-282f, -1737f) * vec2<f32>(var_0.x, 198f)) * var_0.zx), vec2<f32>(_wgslsmith_div_f32(var_0.x, var_0.x), -497f)))));
}

fn func_2() -> f32 {
    global1 = array<Struct_2, 27>();
    global0 = array<vec2<u32>, 4>();
    let var_0 = _wgslsmith_mult_u32(4294967295u, 1u);
    global1 = array<Struct_2, 27>();
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(func_3()));
    return -132f;
}

fn func_4(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(arg_0)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(305f, arg_0.x)), _wgslsmith_div_f32(arg_0.x, arg_0.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-328f, arg_0.x), arg_0) - arg_0))));
    var var_1 = select(~(~(global0[_wgslsmith_index_u32(4294967295u, 4u)] & u_input.a.xz)) << (firstTrailingBit(~u_input.a.xy ^ global0[_wgslsmith_index_u32(~24104u, 4u)]) % vec2<u32>(32u)), ~firstTrailingBit(~u_input.a.zz), true);
    let var_2 = global4[_wgslsmith_index_u32(~11296u & var_1.x, 23u)];
    global4 = array<vec2<i32>, 23>();
    let var_3 = vec3<i32>(u_input.b, firstLeadingBit(max(global2.x, 1i)), var_2.x);
    return Struct_1(~reverseBits(vec2<u32>(81064u, var_1.x)) ^ vec2<u32>(_wgslsmith_mod_u32(var_1.x, var_1.x) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 2113u, 21553u, var_1.x), vec4<u32>(0u, var_1.x, u_input.a.x, var_1.x)) % 32u), ~_wgslsmith_clamp_u32(3733u, u_input.a.x, 1u)), global0[_wgslsmith_index_u32(0u, 4u)], max(vec3<u32>(~_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(0u, var_1.x, var_1.x)), max(u_input.a.x, var_1.x), 3270u), u_input.a), abs(10299u), ~min(max(var_1.x, _wgslsmith_sub_u32(var_1.x, u_input.a.x)), _wgslsmith_sub_u32(~u_input.a.x, ~0u)));
}

fn func_1() -> vec4<f32> {
    global2 = vec2<i32>(-56512i, 1i);
    global4 = array<vec2<i32>, 23>();
    let var_0 = all(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    let var_1 = func_4(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(1000f - 726f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f)))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-1541f, -1000f)), _wgslsmith_f_op_f32(func_2()))), 415f))));
    global3 = array<Struct_1, 21>();
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(1130f, -144f, -1000f, -463f), vec4<f32>(1000f, -862f, 949f, -944f)), _wgslsmith_div_vec4_f32(vec4<f32>(-734f, -161f, -371f, -249f), vec4<f32>(186f, -405f, 641f, -333f)), select(vec4<bool>(var_0, true, false, true), vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(var_0, true, var_0, true)))) + vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(floor(416f)), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-272f - 1133f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2533f, 307f, 1833f, 121f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-463f, -1454f, 1000f, -144f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(735f, -495f, -1926f, -423f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1())), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1516f, -353f, 978f, -1000f) - vec4<f32>(-1000f, -1656f, -1056f, 1938f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(437f, -690f, 228f, -806f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-838f + 1000f)), _wgslsmith_f_op_f32(-365f + _wgslsmith_f_op_f32(495f * 196f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1017f) * -295f), _wgslsmith_f_op_f32(657f + 1198f))));
    global2 = ~global4[_wgslsmith_index_u32(u_input.a.x, 23u)];
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(316f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x) + _wgslsmith_div_f32(var_0.x, 633f)) * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-579f, var_0.x), var_0.x)))) + _wgslsmith_f_op_f32(floor(-1000f)));
    global2 = global4[_wgslsmith_index_u32(37996u, 23u)];
    let var_2 = _wgslsmith_f_op_vec2_f32(func_3());
    var var_3 = func_4(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(floor(101f))))), _wgslsmith_f_op_vec2_f32(floor(var_2)))));
    let var_4 = !(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)));
    var var_5 = func_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-566f, var_2.x), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -886f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x)))), var_4.x)));
    let var_6 = vec3<f32>(var_0.x, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + -544f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(var_0.yw, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(var_0.wx)))) + _wgslsmith_f_op_vec2_f32(var_6.xx - vec2<f32>(var_2.x, 472f))))), ~(-(~(-2147483647i >> (var_3.b.x % 32u)))), var_2.x, ~global4[_wgslsmith_index_u32(var_5.d, 23u)], _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(var_0.zxz * _wgslsmith_div_vec3_f32(vec3<f32>(-759f, var_0.x, var_2.x), _wgslsmith_f_op_vec3_f32(round(var_0.wzw)))), var_6)));
}

