struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: i32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, true);

var<private> global1: array<vec3<f32>, 13> = array<vec3<f32>, 13>(vec3<f32>(-831f, -332f, -1000f), vec3<f32>(-1000f, -552f, -152f), vec3<f32>(-622f, 1070f, 125f), vec3<f32>(220f, 1314f, 655f), vec3<f32>(1498f, 539f, -1243f), vec3<f32>(1576f, 1998f, -1084f), vec3<f32>(484f, -300f, 1436f), vec3<f32>(286f, -188f, -845f), vec3<f32>(-1249f, 651f, 771f), vec3<f32>(1000f, -1742f, 412f), vec3<f32>(-767f, 1534f, -747f), vec3<f32>(-1138f, 129f, -272f), vec3<f32>(1000f, 1583f, 474f));

var<private> global2: array<vec3<bool>, 1> = array<vec3<bool>, 1>(vec3<bool>(true, true, false));

var<private> global3: array<i32, 1> = array<i32, 1>(1i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = 64416i;
    global1 = array<vec3<f32>, 13>();
    return _wgslsmith_clamp_vec3_u32(arg_3.c.ywx, vec3<u32>(min(_wgslsmith_sub_u32(4294967295u, arg_2.c.x), u_input.c), 1u, arg_2.c.x), abs(vec3<u32>(~arg_2.c.x ^ _wgslsmith_add_u32(arg_3.c.x, 0u), 1u, abs(firstLeadingBit(0u)))));
}

fn func_1() -> vec3<u32> {
    global1 = array<vec3<f32>, 13>();
    global3 = array<i32, 1>();
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(firstLeadingBit(70995u), 13u)]), vec3<f32>(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -308f), _wgslsmith_f_op_f32(select(590f, 1662f, false))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(232f, -641f)) * _wgslsmith_f_op_f32(1384f - 1464f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1230f * 330f) - -1184f))), 1271f)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1324f) + -2015f);
    var var_2 = var_0.x;
    return reverseBits(vec3<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, 23983u, u_input.b) & vec3<u32>(213u, u_input.c, u_input.b)), ~func_2(true, global3[_wgslsmith_index_u32(32823u, 1u)], Struct_1(4784i, u_input.b, vec4<u32>(u_input.c, 0u, u_input.b, 15604u), u_input.d), Struct_1(global3[_wgslsmith_index_u32(0u, 1u)], u_input.c, vec4<u32>(62980u, u_input.c, 18378u, u_input.b), u_input.a.x))), ~39952u, u_input.b));
}

fn func_3(arg_0: f32, arg_1: u32) -> u32 {
    global3 = array<i32, 1>();
    let var_0 = global0.zy;
    let var_1 = Struct_2(Struct_1(u_input.a.x, _wgslsmith_clamp_u32(arg_1, ~1u, ~(~48552u)), ~(~firstLeadingBit(vec4<u32>(arg_1, 93686u, arg_1, 35650u))), ~1i << (max(arg_1, ~arg_1) % 32u)), any(vec2<bool>(select(global3[_wgslsmith_index_u32(21812u, 1u)], u_input.a.x, var_0.x) == (u_input.e >> (24785u % 32u)), global0.x)), 543f);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0, 512f))))))));
    let var_3 = all(vec4<bool>(false, true, ((var_1.b & true) & var_1.b) && true, !(!(arg_0 > var_1.c))));
    return ~(~(~min(24077u >> (0u % 32u), u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -343f);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), var_0))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    global1 = array<vec3<f32>, 13>();
    global3 = array<i32, 1>();
    let var_2 = select(~min(vec3<u32>(max(5793u, u_input.b), _wgslsmith_sub_u32(u_input.c, u_input.c), 55757u << (u_input.c % 32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 54875u, u_input.b), vec3<u32>(u_input.c, 0u, 27340u)) << (func_1() % vec3<u32>(32u))), vec3<u32>(~min(_wgslsmith_sub_u32(98340u, u_input.b), func_1().x), countOneBits(u_input.c) << (~_wgslsmith_mult_u32(u_input.c, 38944u) % 32u), func_3(_wgslsmith_f_op_f32(ceil(var_1)), func_2(all(vec3<bool>(global0.x, global0.x, false)), ~1i, Struct_1(-2147483647i, u_input.b, vec4<u32>(u_input.c, u_input.b, u_input.c, u_input.c), u_input.d), Struct_1(u_input.a.x, 4294967295u, vec4<u32>(u_input.b, 44231u, 0u, u_input.c), global3[_wgslsmith_index_u32(1u, 1u)])).x)), global2[_wgslsmith_index_u32(u_input.b >> ((~_wgslsmith_add_u32(u_input.b, u_input.b) ^ max(u_input.b, _wgslsmith_sub_u32(u_input.b, 2919u))) % 32u), 1u)]);
    global2 = array<vec3<bool>, 1>();
    var var_3 = !global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(917f * -986f), _wgslsmith_f_op_f32(abs(-1994f)), _wgslsmith_f_op_f32(step(975f, 1000f)), _wgslsmith_f_op_f32(step(var_0, var_0)))))), _wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(9764u, 13u)] + global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, var_2.x), 13u)]), (vec4<u32>(~u_input.c, 0u, ~0u, _wgslsmith_div_u32(u_input.b, u_input.c)) << (min(vec4<u32>(u_input.b, 4294967295u, 48647u, u_input.b) << (vec4<u32>(0u, 146554u, 6183u, 13718u) % vec4<u32>(32u)), select(vec4<u32>(4294967295u, 6667u, 1u, var_2.x), vec4<u32>(var_2.x, u_input.c, var_2.x, 5981u), vec4<bool>(false, true, true, true))) % vec4<u32>(32u))) << (~abs(vec4<u32>(var_2.x, 32057u, var_2.x, var_2.x)) % vec4<u32>(32u)), select(~max(~vec4<u32>(u_input.b, 1u, var_2.x, var_2.x), select(vec4<u32>(4294967295u, 4294967295u, var_2.x, 1u), vec4<u32>(var_2.x, var_2.x, u_input.b, u_input.c), false)), vec4<u32>(1u, var_2.x, u_input.c, firstLeadingBit(u_input.b)), !select(vec4<bool>(true, true, false, true), select(vec4<bool>(global0.x, true, global0.x, true), vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x)), global0.x)));
}

