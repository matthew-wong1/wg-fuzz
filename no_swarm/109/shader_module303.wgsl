struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: vec3<f32>,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
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

var<private> global0: f32 = 415f;

var<private> global1: array<u32, 7> = array<u32, 7>(4294967295u, 1u, 27563u, 35369u, 4981u, 4294967295u, 1u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>) -> vec4<bool> {
    global1 = array<u32, 7>();
    var var_0 = Struct_3(1424f, vec2<u32>(_wgslsmith_mod_u32(1u, ~u_input.c), 1u), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -736f), 384f), !arg_0.x, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(591f, -1000f), _wgslsmith_f_op_f32(1000f + -911f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1913f, -622f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-820f, -904f)))))));
    let var_1 = select(vec2<u32>(global1[_wgslsmith_index_u32(u_input.d.x, 7u)], reverseBits(1393u)), firstTrailingBit(~vec2<u32>(u_input.c, u_input.b)), arg_0.x);
    let var_2 = Struct_2(!(-u_input.a.x >= (i32(-1i) * -1i)), vec3<u32>(var_0.b.x, max(var_0.b.x, 0u), 40731u), vec3<f32>(var_0.c.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), var_0.a)), _wgslsmith_f_op_f32(round(var_0.c.a))), -275f, _wgslsmith_dot_vec4_i32(vec4<i32>(~countOneBits(u_input.a.x), firstLeadingBit(u_input.a.x), -19616i, u_input.a.x), ~select(u_input.a, u_input.a, arg_0.x)));
    global0 = 537f;
    return vec4<bool>(all(!vec3<bool>(any(vec3<bool>(var_0.c.b, var_0.c.b, true)), true, true)), arg_0.x, !all(vec2<bool>(arg_0.x, any(vec4<bool>(true, var_0.c.b, var_2.a, var_0.c.b)))), _wgslsmith_f_op_f32(round(1f)) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.c.x + 1619f) * -744f))));
}

fn func_2(arg_0: u32) -> Struct_1 {
    global0 = _wgslsmith_div_f32(-1264f, 1126f);
    let var_0 = vec2<bool>(true, all(!func_3(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))));
    let var_1 = u_input.a.x;
    let var_2 = u_input.a.x;
    global0 = 847f;
    return Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(638f)) + _wgslsmith_div_f32(-1553f, 130f)) * _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_div_f32(-174f, 465f), any(vec3<bool>(true, false, var_0.x))))), -1343f)), var_0.x, vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(706f)))), _wgslsmith_f_op_f32(f32(-1f) * -1026f), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1083f)) + -1000f)));
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_3, arg_3: u32) -> vec3<bool> {
    var var_0 = abs(firstTrailingBit(arg_0.x) | -_wgslsmith_add_i32(_wgslsmith_add_i32(arg_1, arg_0.x), 1i));
    var var_1 = func_2(~(~global1[_wgslsmith_index_u32(u_input.d.x, 7u)]));
    var var_2 = Struct_4(true, ~(~_wgslsmith_div_vec3_u32(abs(vec3<u32>(u_input.b, arg_3, u_input.d.x)), max(u_input.d, vec3<u32>(66052u, arg_2.b.x, global1[_wgslsmith_index_u32(17104u, 7u)])))));
    let var_3 = select(vec2<bool>(false, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a), 1f)) > _wgslsmith_f_op_f32(sign(func_2(5080u).a))), select(vec2<bool>(arg_2.c.b, var_1.b), !vec2<bool>(false, !arg_2.c.b), select(vec2<bool>(false, !arg_2.c.b), vec2<bool>(true, var_1.b), vec2<bool>(all(vec3<bool>(true, var_1.b, arg_2.c.b)), arg_2.b.x >= arg_2.b.x))), 18112i < arg_0.x);
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(602f, 155f)))), -152f);
    return select(vec3<bool>(true, true, true), !vec3<bool>(select(true, -2147483647i > arg_1, true), func_3(select(vec3<bool>(true, false, false), vec3<bool>(var_3.x, true, var_1.b), false)).x, any(func_3(vec3<bool>(var_3.x, false, arg_2.c.b)).wwx)), vec3<bool>(true, false && var_2.a, !arg_2.c.b | true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-784f * 607f)))));
    let var_0 = select(vec3<bool>(true, all(vec3<bool>(true, true, true)), any(!func_1(vec2<i32>(0i, 52546i), 1i, Struct_3(1201f, u_input.d.yx, Struct_1(202f, true, vec2<f32>(919f, 1813f))), 125844u))), vec3<bool>(true, true, true), !vec3<bool>(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x) > abs(0i), func_3(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true))).x, true));
    global1 = array<u32, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(global1[_wgslsmith_index_u32(17110u, 7u)], abs(global1[_wgslsmith_index_u32(1u, 7u)]) & (u_input.c & 0u), max(4294967295u, ~13379u), 1u) << (_wgslsmith_clamp_vec4_u32(countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 0u, u_input.d.x, 11548u), vec4<u32>(1u, 1u, 29845u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 7u)], 7u)]))), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(u_input.c, 7u)], 4294967295u, u_input.d.x, u_input.c), reverseBits(vec4<u32>(u_input.c, 38120u, u_input.c, 1u)), ~vec4<u32>(1u, 1u, u_input.c, 4294967295u)), min(vec4<u32>(global1[_wgslsmith_index_u32(u_input.b, 7u)], u_input.b, 30879u, 1u), vec4<u32>(54800u, 140818u, 4294967295u, 21636u)) >> (~vec4<u32>(u_input.b, 0u, 1u, u_input.c) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x)), vec2<i32>(1i, 0i), -1000f, vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(551f, 814f)))))), 308f));
}

