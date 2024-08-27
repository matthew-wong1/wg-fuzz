struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 21> = array<vec2<u32>, 21>(vec2<u32>(1u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 48676u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 15806u), vec2<u32>(4294967295u, 1u), vec2<u32>(15686u, 1u), vec2<u32>(0u, 16828u), vec2<u32>(4294967295u, 92584u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 68016u), vec2<u32>(56389u, 7956u), vec2<u32>(1u, 0u), vec2<u32>(53059u, 40370u), vec2<u32>(8139u, 0u), vec2<u32>(1260u, 1u), vec2<u32>(0u, 64192u), vec2<u32>(2025u, 67723u), vec2<u32>(75567u, 0u), vec2<u32>(18331u, 1u));

var<private> global1: array<Struct_3, 3>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> u32 {
    global1 = array<Struct_3, 3>();
    let var_0 = true | all(!(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false))));
    global0 = array<vec2<u32>, 21>();
    let var_1 = !(!vec3<bool>(var_0, false, false));
    let var_2 = global1[_wgslsmith_index_u32(48280u, 3u)];
    return _wgslsmith_add_u32(u_input.b.x >> (~_wgslsmith_dot_vec3_u32(select(u_input.b, u_input.b, var_2.a.d.d.yxx), ~u_input.b) % 32u), firstTrailingBit(~1u));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: bool, arg_3: vec2<i32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1115f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1709f + -408f), -274f)))), 389f)));
    var var_1 = vec3<i32>(_wgslsmith_add_i32(0i, -48929i), 2147483647i, u_input.d.x);
    var var_2 = Struct_3(Struct_2(select(vec4<bool>(all(vec4<bool>(arg_2, true, false, arg_2)), true, all(vec2<bool>(arg_2, true)), !arg_2), !vec4<bool>(arg_2, false, arg_2, false), !vec4<bool>(false, arg_2, true, arg_2)), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(517f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1503f, -739f))), ~arg_0.x & min(23548u, 4294967295u), !(!vec4<bool>(arg_2, arg_2, false, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1638f, 571f) + _wgslsmith_f_op_f32(f32(-1f) * -1892f)), -1271f), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(279f)))), vec2<f32>(342f, _wgslsmith_f_op_f32(select(274f, -399f, false))), 0u, !select(vec4<bool>(true, arg_2, arg_2, true), vec4<bool>(arg_2, arg_2, arg_2, true), vec4<bool>(true, true, false, true))), Struct_1(1f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(961f, 529f)))), ~_wgslsmith_div_u32(37435u, u_input.b.x), vec4<bool>(all(vec4<bool>(false, false, arg_2, false)), arg_2, !arg_2, arg_2))));
    let var_3 = vec2<f32>(var_2.a.d.a, 1000f);
    let var_4 = var_2.a;
    return 2147483647i;
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_3) -> vec4<bool> {
    let var_0 = arg_3.a;
    global0 = array<vec2<u32>, 21>();
    var var_1 = vec2<i32>(-_wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.c.x, u_input.a), -u_input.d.x), firstTrailingBit(-27951i)), ~max(-37703i, abs(0i)));
    let var_2 = arg_3;
    global0 = array<vec2<u32>, 21>();
    return var_0.a;
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = select(select(false, true, ~4294967295u != _wgslsmith_add_u32(max(4294967295u, u_input.b.x), func_2())), false, !(~u_input.d.x > ~(-arg_0)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1083f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1471f)) - _wgslsmith_div_f32(155f, 1378f))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1868f + -675f)), -232f)) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(283f))));
    return Struct_1(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(sign(var_1.x))), vec2<f32>(var_1.x, var_1.x), 77578u, !func_4(vec4<bool>(var_0, true, select(false, false, var_0), var_0 | true), func_3(~vec4<u32>(u_input.b.x, u_input.b.x, 0u, 4294967295u), u_input.b.x, !var_0, _wgslsmith_add_vec2_i32(u_input.d.zz, vec2<i32>(-1i, arg_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1170f, -1269f, var_1.x, -1000f)))), Struct_3(Struct_2(vec4<bool>(var_0, var_0, true, var_0), Struct_1(var_1.x, vec2<f32>(1000f, var_1.x), 24442u, vec4<bool>(false, false, true, true)), var_1.x, Struct_1(664f, vec2<f32>(var_1.x, 134f), 1u, vec4<bool>(var_0, false, false, var_0)), Struct_1(var_1.x, vec2<f32>(-827f, var_1.x), 46851u, vec4<bool>(true, var_0, var_0, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 3>();
    let var_0 = Struct_3(Struct_2(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true), func_1(_wgslsmith_dot_vec4_i32(min(u_input.c, u_input.c), firstLeadingBit(vec4<i32>(31694i, u_input.a, u_input.d.x, u_input.d.x)))), -2133f, Struct_1(410f, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-603f, 916f))), 1u, vec4<bool>(true, true, true, true)), func_1(-1i)));
    var var_1 = ~vec3<u32>(u_input.b.x, var_0.a.d.c, min(_wgslsmith_mult_u32(11839u, 1u), 36592u)) >> ((u_input.b >> (min(~u_input.b, u_input.b) % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_2 = var_0.a;
    global0 = array<vec2<u32>, 21>();
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-var_0.a.b.a), var_0.a.e.b, firstTrailingBit(~(var_1.x << (~u_input.b.x % 32u))), !var_0.a.e.d);
    let var_4 = Struct_4(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a.e.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1028f * -512f))), vec2<f32>(_wgslsmith_f_op_f32(floor(var_2.b.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.e.a) - _wgslsmith_f_op_f32(sign(-251f)))), ~u_input.b.x, vec4<bool>(var_2.b.d.x, all(vec3<bool>(var_3.d.x, var_2.a.x, var_0.a.e.d.x)), true, var_3.d.x)), 159f, func_1(-u_input.d.x), var_0.a.c);
    global1 = array<Struct_3, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2.e.b.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_0.a.c, -1353f)))))), -select(u_input.d, vec3<i32>(u_input.d.x, u_input.d.x, 0i), select(var_4.a.d.yyz, vec3<bool>(false, false, false), var_3.d.yxw)) >> (vec3<u32>(abs(27995u), var_0.a.d.c, _wgslsmith_div_u32(var_2.b.c, func_1(-21938i).c)) % vec3<u32>(32u)), ~68570u);
}

