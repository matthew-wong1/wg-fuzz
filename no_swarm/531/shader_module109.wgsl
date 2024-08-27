struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: Struct_1,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: vec2<f32>,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: bool,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23> = array<i32, 23>(-1i, 66965i, i32(-2147483648), 1i, 1i, 836i, -12221i, -45245i, 0i, 2147483647i, 2147483647i, 5732i, 53482i, -24734i, 1i, i32(-2147483648), -54852i, 0i, 1i, 0i, -3822i, 0i, -27708i);

var<private> global1: array<Struct_1, 1>;

var<private> global2: array<bool, 6> = array<bool, 6>(true, false, true, true, true, true);

var<private> global3: u32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: bool) -> f32 {
    global1 = array<Struct_1, 1>();
    global2 = array<bool, 6>();
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(arg_0)), -152f, any(select(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 6u)], true, false, true), vec4<bool>(arg_2, arg_1.x, global2[_wgslsmith_index_u32(u_input.a.x, 6u)], false), vec4<bool>(arg_1.x, true, arg_2, arg_1.x)), vec4<bool>(any(arg_1.wy), false, arg_2 & arg_2, true), arg_0 > arg_0))));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(287f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(2496f, 1015f) - _wgslsmith_div_f32(-2490f, -490f))), arg_1.a, arg_1.a.x))));
    global0 = array<i32, 23>();
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(268f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -997f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2165f, -821f))));
    var var_2 = u_input.b;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2049f, -339f, -515f), vec3<f32>(var_1.x, var_1.x, var_1.x), arg_2))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-280f, var_1.x, 1036f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-910f, -972f, var_1.x), vec3<f32>(var_1.x, var_1.x, -300f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, -497f, -670f), vec3<f32>(-245f, -1610f, var_1.x), vec3<bool>(arg_1.a.x, false, true))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.x, -1528f, 687f)))))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x))) * _wgslsmith_f_op_f32(-var_1.x)), var_1.x, var_1.x));
    return min(_wgslsmith_sub_u32(~1u, 49900u), 1u);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(1953f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(440f))))));
    var var_1 = u_input.b;
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, _wgslsmith_add_u32(1u, 0u), 0u >> (u_input.b % 32u), ~15313u), vec4<u32>(_wgslsmith_clamp_u32(~44150u, 41466u, _wgslsmith_mult_u32(u_input.a.x, u_input.b)), ~(~u_input.a.x), firstLeadingBit(func_2(vec4<bool>(false, arg_0.a.x, global2[_wgslsmith_index_u32(96762u, 6u)], true), Struct_1(arg_0.a), global2[_wgslsmith_index_u32(0u, 6u)])), 0u)) & (_wgslsmith_clamp_u32(7311u, firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.a.xy, u_input.a.yz)), 0u) & u_input.b), 1u)];
    global3 = u_input.a.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(arg_1)))));
    return Struct_5(_wgslsmith_clamp_u32(u_input.b, select(u_input.b, _wgslsmith_clamp_u32(u_input.b, u_input.b, 4294967295u), true), ~max(u_input.a.x, 4294967295u)) | _wgslsmith_mult_u32(1u, 4294967295u), Struct_4(Struct_3(-(vec3<i32>(u_input.c, -1i, -42851i) & vec3<i32>(38981i, u_input.d, 2147483647i)), u_input.a.x, _wgslsmith_f_op_f32(ceil(var_0)), vec2<f32>(var_0, _wgslsmith_f_op_f32(step(-515f, 308f))), ~vec4<u32>(42950u, 25346u, u_input.a.x, u_input.b)), Struct_1(arg_0.a), vec2<u32>(73387u, u_input.a.x << (~1871u % 32u))), true, Struct_3(firstLeadingBit(firstLeadingBit(vec3<i32>(-2147483647i, -78652i, 1i))) >> (_wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(u_input.b, u_input.a.x, 4294967295u)) % vec3<u32>(32u)), ~u_input.b, var_0, var_3.zy, ~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.b, 33388u, 22690u), vec4<u32>(u_input.a.x, u_input.b, 25493u, 1u)) | ~vec4<u32>(u_input.b, u_input.b, 1u, u_input.b)), Struct_1(select(select(!arg_0.a, select(vec4<bool>(true, arg_0.a.x, var_2.a.x, true), arg_0.a, global2[_wgslsmith_index_u32(4294967295u, 6u)]), any(vec2<bool>(var_2.a.x, var_2.a.x))), !vec4<bool>(false, var_2.a.x, false, global2[_wgslsmith_index_u32(u_input.a.x, 6u)]), select(select(var_2.a, vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.b, 6u)], global2[_wgslsmith_index_u32(u_input.b, 6u)], global2[_wgslsmith_index_u32(u_input.b, 6u)]), true), !var_2.a, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 6>();
    let var_0 = ~firstLeadingBit(u_input.b);
    var var_1 = func_1(global1[_wgslsmith_index_u32(0u & max(~var_0, _wgslsmith_mod_u32(countOneBits(1u), _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 4294967295u, 64451u)))), 1u)], vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-880f - -270f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -1315f, global2[_wgslsmith_index_u32(4294967295u, 6u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1273f, -619f)) - _wgslsmith_f_op_f32(f32(-1f) * -1560f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-516f - -1404f)) + _wgslsmith_f_op_f32(abs(-441f)))));
    let var_2 = var_1.d.e;
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1105f + var_1.d.c) * var_1.b.a.c), _wgslsmith_f_op_f32(-964f * var_1.b.a.d.x), -1272f), vec3<f32>(var_1.d.d.x, var_1.b.a.d.x, -975f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_1.d.c)), _wgslsmith_f_op_f32(f32(-1f) * -1523f), !var_1.b.b.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2185f), var_1.d.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.c) - -446f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1280f, -155f, -927f)))))));
    global0 = array<i32, 23>();
    var var_4 = 1000f;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_clamp_u32(15372u, 1u, u_input.a.x) >> (u_input.b % 32u)), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(var_1.d.a, vec3<i32>(8189i, global0[_wgslsmith_index_u32(76000u, 23u)], u_input.c), var_1.b.a.a) ^ var_1.b.a.a, reverseBits(vec3<i32>(0i, -1i, global0[_wgslsmith_index_u32(var_1.d.e.x, 23u)])) & vec3<i32>(var_1.d.a.x, u_input.c, global0[_wgslsmith_index_u32(var_1.b.c.x, 23u)])) | reverseBits(vec3<i32>(~u_input.c, global0[_wgslsmith_index_u32(1u, 23u)], abs(1i))), var_1.d.a.x, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d.d.x, 194f, _wgslsmith_f_op_f32(-var_3.x)) + var_3))), u_input.c << (var_0 % 32u));
}

