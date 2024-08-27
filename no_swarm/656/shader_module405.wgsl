struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: vec2<bool>,
}

struct Struct_4 {
    a: bool,
    b: i32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: Struct_2,
    d: vec3<u32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: f32,
    d: vec3<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(false, -19519i);

var<private> global1: array<bool, 6>;

var<private> global2: array<f32, 29>;

var<private> global3: array<vec3<i32>, 6>;

var<private> global4: array<Struct_4, 27>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_5) -> bool {
    let var_0 = Struct_1(-1050f, 26142u, vec3<u32>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2.d.x, arg_2.d.x, 4294967295u, 1u), ~vec4<u32>(arg_1.a.b, arg_1.a.b, arg_2.d.x, 6463u)), min(1u, _wgslsmith_sub_u32(~u_input.a, firstLeadingBit(arg_2.b.x))), ~arg_2.b.x << (min(abs(1u), 1u) % 32u)), all(arg_0.xx), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-911f)), _wgslsmith_f_op_f32(arg_1.a.a + 1270f)) + _wgslsmith_f_op_f32(-2083f - 638f)), 450f));
    global2 = array<f32, 29>();
    var var_1 = vec4<bool>(!var_0.d, all(vec3<bool>(false, false, !(!global0.a))), all(arg_0.wz), global0.a);
    global1 = array<bool, 6>();
    let var_2 = u_input.c.yy;
    return all(var_1.xxz) & false;
}

fn func_2() -> vec2<bool> {
    var var_0 = ~abs(firstLeadingBit(-global0.b));
    let var_1 = Struct_4(!any(vec3<bool>(func_3(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 6u)], true, false, global0.a), Struct_2(Struct_1(global2[_wgslsmith_index_u32(4294967295u, 29u)], u_input.a, vec3<u32>(u_input.a, u_input.a, 4294967295u), global1[_wgslsmith_index_u32(u_input.a, 6u)], 681f)), Struct_5(vec4<u32>(0u, 4294967295u, u_input.a, u_input.a), vec4<u32>(u_input.a, 84873u, 13864u, 4294967295u), Struct_2(Struct_1(global2[_wgslsmith_index_u32(4294967295u, 29u)], u_input.a, vec3<u32>(u_input.a, u_input.a, u_input.a), global0.a, -1000f)), vec3<u32>(18026u, 1u, 4294967295u), false)), !global0.a, any(vec2<bool>(global0.a, false)))), u_input.b.x);
    global2 = array<f32, 29>();
    global4 = array<Struct_4, 27>();
    let var_2 = ~u_input.a;
    return vec2<bool>(any(select(vec2<bool>(true, false), !vec2<bool>(global0.a, var_1.a), select(select(vec2<bool>(global0.a, global1[_wgslsmith_index_u32(41428u, 6u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 6u)]), false), select(vec2<bool>(true, false), vec2<bool>(var_1.a, var_1.a), vec2<bool>(true, var_1.a)), true))), !func_3(select(!vec4<bool>(false, global0.a, global0.a, true), select(vec4<bool>(var_1.a, false, false, global0.a), vec4<bool>(global0.a, var_1.a, true, global0.a), vec4<bool>(false, true, false, global0.a)), vec4<bool>(false, false, true, false)), Struct_2(Struct_1(global2[_wgslsmith_index_u32(u_input.a, 29u)], var_2, vec3<u32>(var_2, 21665u, u_input.a), global1[_wgslsmith_index_u32(4294967295u, 6u)], global2[_wgslsmith_index_u32(u_input.a, 29u)])), Struct_5(vec4<u32>(var_2, 81717u, 1u, 75265u), select(vec4<u32>(var_2, var_2, 56536u, 1u), vec4<u32>(u_input.a, 36837u, u_input.a, 1u), false), Struct_2(Struct_1(-2250f, u_input.a, vec3<u32>(0u, 13279u, 21825u), global0.a, global2[_wgslsmith_index_u32(11950u, 29u)])), vec3<u32>(0u, 3090u, 57750u), true)));
}

fn func_1(arg_0: u32, arg_1: u32) -> f32 {
    let var_0 = !(!(!func_2()));
    var var_1 = Struct_3(Struct_1(610f, abs(u_input.a), countOneBits(~(~vec3<u32>(1u, 4294967295u, arg_0))), !all(select(vec2<bool>(global1[_wgslsmith_index_u32(69831u, 6u)], false), vec2<bool>(global1[_wgslsmith_index_u32(74397u, 6u)], var_0.x), true)), _wgslsmith_f_op_f32(987f * global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.a), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), abs(vec3<u32>(arg_1, 70371u, 32371u))), 29u)])), -_wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(u_input.b.x, 2147483647i)) >> ((vec2<u32>(2509u, u_input.a) >> (vec2<u32>(69725u, 40297u) % vec2<u32>(32u))) % vec2<u32>(32u)), reverseBits(vec2<i32>(-2147483647i, 2147483647i)), vec2<i32>(countOneBits(u_input.b.x), abs(u_input.b.x))), 1u, countOneBits(abs(select(-52005i, -24789i, true))), vec2<bool>(u_input.b.x <= global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(13840u, 29u)]))) != _wgslsmith_f_op_f32(trunc(-829f))));
    let var_2 = !(!select(vec4<bool>(all(vec3<bool>(global0.a, true, true)), global1[_wgslsmith_index_u32(93803u, 6u)], true, true), vec4<bool>(func_2().x, var_0.x, global0.a, global1[_wgslsmith_index_u32(arg_1, 6u)] || true), select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(4294967295u, 6u)], false), !vec4<bool>(var_1.e.x, global0.a, global1[_wgslsmith_index_u32(69228u, 6u)], true), true)));
    var var_3 = var_2;
    global2 = array<f32, 29>();
    return _wgslsmith_f_op_f32(-var_1.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_dot_vec2_u32(firstTrailingBit(select(~vec2<u32>(1u, 27160u), abs(vec2<u32>(4294967295u, 5651u)), vec2<bool>(global0.a, false))), vec2<u32>(u_input.a << (u_input.a % 32u), 1u));
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2[_wgslsmith_index_u32(var_0, 29u)], global2[_wgslsmith_index_u32(u_input.a, 29u)], global2[_wgslsmith_index_u32(var_0, 29u)]))))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-334f, _wgslsmith_f_op_f32(200f + -1975f), 1000f))))));
    global0 = global4[_wgslsmith_index_u32(1u, 27u)];
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-1147f * var_1.x)))), 42142u, countOneBits(~vec3<u32>(var_0, 15330u, 53551u)), global0.a, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 29u)] * _wgslsmith_f_op_f32(func_1(u_input.a, var_0)))));
    var var_3 = -2147483647i;
    var var_4 = _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -55082i), u_input.c.yz);
    let var_5 = global4[_wgslsmith_index_u32(var_2.a.c.x, 27u)];
    let var_6 = firstTrailingBit(var_2.a.c.x);
    global3 = array<vec3<i32>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.yz * vec2<f32>(-827f, _wgslsmith_f_op_f32(sign(-112f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(floor(-1706f)), _wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(var_1.zz))))))), var_2.a.a, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(var_1, _wgslsmith_f_op_vec3_f32(max(var_1, var_1)), vec3<bool>(global1[_wgslsmith_index_u32(var_0, 6u)], true, false))), vec3<f32>(-781f, _wgslsmith_f_op_f32(f32(-1f) * -1101f), _wgslsmith_f_op_f32(max(var_2.a.e, 1491f))), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(step(var_1, _wgslsmith_f_op_vec3_f32(var_1 * vec3<f32>(global2[_wgslsmith_index_u32(0u, 29u)], 670f, var_1.x)))))), _wgslsmith_add_vec4_i32(min(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, -70434i, u_input.c.x, var_5.b), vec4<i32>(u_input.c.x, var_5.b, u_input.b.x, u_input.c.x))), abs(~vec4<i32>(-31185i, -5778i, 11451i, -4188i))), _wgslsmith_mod_vec4_i32(~select(vec4<i32>(0i, global0.b, 12774i, 41092i), vec4<i32>(u_input.b.x, 25424i, var_5.b, -2147483647i), var_5.a), ~vec4<i32>(2147483647i, u_input.b.x, -1i, u_input.b.x))));
}

