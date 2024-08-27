struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11> = array<bool, 11>(true, false, true, false, true, false, false, false, true, true, true);

var<private> global1: array<Struct_1, 24>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: bool) -> bool {
    var var_0 = arg_0;
    global1 = array<Struct_1, 24>();
    global1 = array<Struct_1, 24>();
    var var_1 = arg_0;
    var_1 = arg_0;
    return arg_2;
}

fn func_2() -> i32 {
    global0 = array<bool, 11>();
    global0 = array<bool, 11>();
    var var_0 = select(max(~abs(firstTrailingBit(12638u)), 83480u), ~1u, all(vec4<bool>(func_3(Struct_2(Struct_1(false, false, 1u)), 38156u, global0[_wgslsmith_index_u32(1u, 11u)]), true, !func_3(Struct_2(Struct_1(true, global0[_wgslsmith_index_u32(0u, 11u)], 64899u)), 1u, false), func_3(Struct_2(global1[_wgslsmith_index_u32(39440u, 24u)]), 13359u, global0[_wgslsmith_index_u32(38989u, 11u)]))));
    var var_1 = vec4<i32>(i32(-1i) * -2147483647i, u_input.a.x, abs(-38503i), u_input.a.x);
    let var_2 = global1[_wgslsmith_index_u32(~(~reverseBits(1u)), 24u)];
    return countOneBits(i32(-1i) * -firstTrailingBit(2147483647i));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = ~(~(-vec3<i32>(func_2(), ~u_input.a.x, abs(11122i))));
    var var_1 = global0[_wgslsmith_index_u32(1357u, 11u)];
    var_0 = vec3<i32>(-6604i, u_input.a.x, var_0.x) | vec3<i32>(max(u_input.a.x, _wgslsmith_dot_vec2_i32(-u_input.a, vec2<i32>(-2147483647i, var_0.x))), 0i, ~(-29431i));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(750f, 492f) * vec2<f32>(-789f, 234f)), vec2<f32>(-1184f, -1271f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(641f, 1383f)) + vec2<f32>(_wgslsmith_f_op_f32(trunc(180f)), 1f))), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 11u)], !(!all(vec2<bool>(arg_1.a.a, false))))));
    var var_3 = arg_1.a.b;
    return Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(arg_0.xz, vec2<u32>(1586u, arg_1.a.c)), _wgslsmith_mod_u32(arg_1.a.c, arg_0.x), _wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(4294967295u, arg_1.a.c, 0u)), arg_0.x), _wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, 34170u, 0u, arg_0.x), ~vec4<u32>(1u, arg_0.x, arg_0.x, 41389u))) < 19022u, false, max(min(1u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 26511u, arg_1.a.c, arg_0.x), vec4<u32>(4294967295u, 11389u, 10524u, 0u)), select(vec4<u32>(arg_1.a.c, arg_1.a.c, arg_1.a.c, 10459u), vec4<u32>(arg_0.x, 4294967295u, 35399u, arg_0.x), false))), 4294967295u));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: f32, arg_3: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, -769f, arg_2))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-306f, 1623f, -392f, arg_2)))))) - vec4<f32>(arg_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1150f)), _wgslsmith_div_f32(arg_2, arg_2)), arg_2, arg_2));
    var var_1 = Struct_2(arg_3);
    var var_2 = !(!(!(!(!vec3<bool>(arg_1.x, arg_0.b, global0[_wgslsmith_index_u32(var_1.a.c, 11u)])))));
    var_1 = Struct_2(func_1(_wgslsmith_clamp_vec3_u32(~firstLeadingBit(vec3<u32>(arg_3.c, 9896u, 1u)), ~vec3<u32>(arg_0.c, 4294967295u, 69374u), ~vec3<u32>(110523u, 21223u, arg_0.c)), Struct_2(func_1(vec3<u32>(var_1.a.c, arg_3.c, 1u), Struct_2(var_1.a)))));
    global0 = array<bool, 11>();
    return _wgslsmith_mod_u32(var_1.a.c, arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global0[_wgslsmith_index_u32(select(abs(_wgslsmith_clamp_u32(~1u, 1u, ~4294967295u)), ~3578u, global0[_wgslsmith_index_u32(func_4(Struct_1(global0[_wgslsmith_index_u32(55357u, 11u)], global0[_wgslsmith_index_u32(19383u, 11u)], 0u), vec2<bool>(global0[_wgslsmith_index_u32(10865u, 11u)], true), _wgslsmith_f_op_f32(-1000f + -1089f), func_1(vec3<u32>(1u, 2315u, 0u), Struct_2(global1[_wgslsmith_index_u32(1u, 24u)]))), 11u)] && global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(34440u, 2627u, 1u, 4294967295u), vec4<u32>(0u, 1u, 4294967295u, 2678u)) | reverseBits(3152u), 11u)]), 11u)];
    let var_1 = ~(~u_input.a.x);
    let var_2 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(1u, 1u)), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 56238u), vec2<u32>(20275u, 1u))), ~max(vec2<u32>(3033u, 0u), vec2<u32>(4294967295u, 4294967295u))) << (~(~1u) % 32u), 24u)]);
    global0 = array<bool, 11>();
    global1 = array<Struct_1, 24>();
    var_0 = true;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-744f)), _wgslsmith_div_f32(700f, -1251f), true)) + -1000f) * _wgslsmith_f_op_f32(f32(-1f) * -518f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2832f, -331f)) * -2128f)));
    let x = u_input.a;
    s_output = StorageBuffer(~74221u, abs(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, var_2.a.c, var_2.a.c), reverseBits(vec3<u32>(1u, 4294967295u, 0u))), vec3<u32>(1u, 98007u, var_2.a.c) ^ vec3<u32>(var_2.a.c, 4294967295u, var_2.a.c), max(vec3<u32>(var_2.a.c, var_2.a.c, 4294967295u), vec3<u32>(30041u, var_2.a.c, 1u)) | max(vec3<u32>(var_2.a.c, var_2.a.c, var_2.a.c), vec3<u32>(var_2.a.c, var_2.a.c, 4294967295u)))));
}

