struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: i32,
    b: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24>;

var<private> global1: array<Struct_4, 16> = array<Struct_4, 16>(Struct_4(7342u, Struct_1(29519u), 53259i, vec3<u32>(16046u, 10397u, 29353u)), Struct_4(0u, Struct_1(26737u), i32(-2147483648), vec3<u32>(4294967295u, 58659u, 1u)), Struct_4(51834u, Struct_1(45325u), i32(-2147483648), vec3<u32>(70329u, 4294967295u, 1u)), Struct_4(0u, Struct_1(0u), 1i, vec3<u32>(3935u, 66626u, 1u)), Struct_4(33285u, Struct_1(4294967295u), i32(-2147483648), vec3<u32>(45045u, 1u, 1u)), Struct_4(1u, Struct_1(58666u), 2147483647i, vec3<u32>(4294967295u, 38529u, 4294967295u)), Struct_4(0u, Struct_1(0u), -1i, vec3<u32>(0u, 4294967295u, 9759u)), Struct_4(4294967295u, Struct_1(1u), 9479i, vec3<u32>(76551u, 0u, 4294967295u)), Struct_4(4294967295u, Struct_1(4294967295u), 0i, vec3<u32>(66407u, 4294967295u, 30809u)), Struct_4(4294967295u, Struct_1(5204u), 5234i, vec3<u32>(0u, 0u, 0u)), Struct_4(20046u, Struct_1(11787u), -23694i, vec3<u32>(10413u, 25880u, 4294967295u)), Struct_4(4294967295u, Struct_1(1u), 55445i, vec3<u32>(43549u, 4294967295u, 16118u)), Struct_4(4294967295u, Struct_1(12394u), -21290i, vec3<u32>(1u, 35172u, 9342u)), Struct_4(20026u, Struct_1(1u), 2147483647i, vec3<u32>(0u, 0u, 51410u)), Struct_4(0u, Struct_1(74809u), 35109i, vec3<u32>(1u, 1u, 48300u)), Struct_4(1u, Struct_1(1u), -8151i, vec3<u32>(17000u, 0u, 4294967295u)));

var<private> global2: array<vec2<bool>, 1>;

var<private> global3: array<Struct_3, 31>;

var<private> global4: array<bool, 8>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> f32 {
    global4 = array<bool, 8>();
    let var_0 = vec4<u32>(u_input.a.x, u_input.a.x, countOneBits(_wgslsmith_sub_u32(u_input.a.x, ~u_input.a.x) >> (1u % 32u)), 4294967295u);
    global0 = array<f32, 24>();
    global3 = array<Struct_3, 31>();
    global0 = array<f32, 24>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1645f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1731f - global0[_wgslsmith_index_u32(0u, 24u)])) * global0[_wgslsmith_index_u32(4294967295u, 24u)]))), _wgslsmith_f_op_f32(-730f * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(firstTrailingBit(0u), 24u)] * _wgslsmith_f_op_f32(-537f + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.x, 24u)])))));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: f32, arg_3: vec4<i32>) -> vec3<i32> {
    global4 = array<bool, 8>();
    var var_0 = -966f;
    var var_1 = _wgslsmith_f_op_f32(func_3());
    var var_2 = ~u_input.a;
    global0 = array<f32, 24>();
    return arg_3.yxy;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2) -> f32 {
    var var_0 = -(~func_2(vec3<u32>(arg_1.a.a, u_input.a.x, arg_1.a.a), arg_1, arg_0.x, -vec4<i32>(u_input.b, u_input.b, u_input.b, -2147483647i))) | ~(-(~(vec3<i32>(-1i, u_input.b, -1i) >> (u_input.a.wyw % vec3<u32>(32u)))));
    global3 = array<Struct_3, 31>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0[_wgslsmith_index_u32(72913u, 24u)], global0[_wgslsmith_index_u32(31300u, 24u)], 502f, -1475f)))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1372f, arg_0.x, -769f, arg_1.b)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], global0[_wgslsmith_index_u32(39059u, 24u)], arg_1.b, -2186f))), !vec4<bool>(global4[_wgslsmith_index_u32(20234u, 8u)], global4[_wgslsmith_index_u32(37679u, 8u)], global4[_wgslsmith_index_u32(4294967295u, 8u)], true)))))));
    var var_2 = _wgslsmith_sub_i32(var_0.x, -4775i);
    var var_3 = any(select(select(select(select(vec3<bool>(global4[_wgslsmith_index_u32(arg_1.a.a, 8u)], global4[_wgslsmith_index_u32(4294967295u, 8u)], global4[_wgslsmith_index_u32(4794u, 8u)]), vec3<bool>(global4[_wgslsmith_index_u32(0u, 8u)], false, true), vec3<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 8u)], global4[_wgslsmith_index_u32(0u, 8u)], true)), vec3<bool>(global4[_wgslsmith_index_u32(0u, 8u)], true, true), !vec3<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 8u)], global4[_wgslsmith_index_u32(4294967295u, 8u)], global4[_wgslsmith_index_u32(46182u, 8u)])), select(select(vec3<bool>(true, true, global4[_wgslsmith_index_u32(u_input.a.x, 8u)]), vec3<bool>(global4[_wgslsmith_index_u32(arg_1.a.a, 8u)], false, true), vec3<bool>(global4[_wgslsmith_index_u32(1u, 8u)], true, false)), select(vec3<bool>(false, global4[_wgslsmith_index_u32(arg_1.a.a, 8u)], global4[_wgslsmith_index_u32(24357u, 8u)]), vec3<bool>(global4[_wgslsmith_index_u32(62003u, 8u)], global4[_wgslsmith_index_u32(u_input.a.x, 8u)], false), true), vec3<bool>(false, false, global4[_wgslsmith_index_u32(60312u, 8u)])), select(vec3<bool>(false, false, false), select(vec3<bool>(global4[_wgslsmith_index_u32(arg_1.a.a, 8u)], true, false), vec3<bool>(true, global4[_wgslsmith_index_u32(arg_1.a.a, 8u)], global4[_wgslsmith_index_u32(arg_1.a.a, 8u)]), vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 8u)], false, false)), select(vec3<bool>(false, global4[_wgslsmith_index_u32(arg_1.a.a, 8u)], true), vec3<bool>(global4[_wgslsmith_index_u32(arg_1.a.a, 8u)], global4[_wgslsmith_index_u32(u_input.a.x, 8u)], global4[_wgslsmith_index_u32(arg_1.a.a, 8u)]), vec3<bool>(global4[_wgslsmith_index_u32(54948u, 8u)], global4[_wgslsmith_index_u32(u_input.a.x, 8u)], false)))), select(vec3<bool>(any(vec3<bool>(true, true, global4[_wgslsmith_index_u32(4294967295u, 8u)])), global4[_wgslsmith_index_u32(arg_1.a.a, 8u)], !global4[_wgslsmith_index_u32(arg_1.a.a, 8u)]), vec3<bool>(!global4[_wgslsmith_index_u32(140099u, 8u)], !global4[_wgslsmith_index_u32(4294967295u, 8u)], true), !select(vec3<bool>(true, true, true), vec3<bool>(global4[_wgslsmith_index_u32(arg_1.a.a, 8u)], true, global4[_wgslsmith_index_u32(arg_1.a.a, 8u)]), false)), vec3<bool>(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~41518u, ~u_input.a.x, arg_1.a.a), 8u)], _wgslsmith_f_op_f32(ceil(arg_0.x)) > _wgslsmith_f_op_f32(max(-734f, arg_0.x)), any(vec2<bool>(false, global4[_wgslsmith_index_u32(0u, 8u)])))));
    return global0[_wgslsmith_index_u32(u_input.a.x, 24u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: u32, arg_3: vec4<bool>) -> u32 {
    var var_0 = _wgslsmith_mult_u32(firstLeadingBit(27035u), min(~arg_0.a, u_input.a.x)) ^ 1u;
    global2 = array<vec2<bool>, 1>();
    let var_1 = 65345u;
    var var_2 = true;
    let var_3 = global3[_wgslsmith_index_u32(1u, 31u)];
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, reverseBits(countOneBits(4294967295u))));
    var var_1 = global1[_wgslsmith_index_u32(~(~var_0.a) & ~func_4(Struct_1(var_0.a), vec4<f32>(-1079f, -1408f, _wgslsmith_f_op_f32(func_1(vec3<f32>(1277f, 1000f, 947f), Struct_2(Struct_1(4294967295u), 228f))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(39413u, 24u)] * 510f)), 0u, vec4<bool>(true, true, !global4[_wgslsmith_index_u32(u_input.a.x, 8u)], false)), 16u)];
    let var_2 = -1618f;
    var var_3 = firstLeadingBit(~min(u_input.a.zzw, firstLeadingBit(u_input.a.zyy) & vec3<u32>(91778u, 1u, 4294967295u)));
    var var_4 = u_input.b ^ u_input.b;
    var var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.xz, u_input.a.zx), ~(~vec2<u32>(u_input.a.x, var_3.x)))), _wgslsmith_f_op_f32(f32(-1f) * -542f));
}

