struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 21>;

var<private> global1: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(783f, vec4<i32>(3213i, 41352i, 39347i, 1i), -327f), Struct_2(-510f, vec4<i32>(-21125i, -51952i, -53413i, -1i), -1070f), Struct_2(469f, vec4<i32>(94033i, -28781i, -18063i, -39643i), 625f), Struct_2(162f, vec4<i32>(-61055i, -32564i, 1i, 23107i), -587f), Struct_2(-491f, vec4<i32>(31501i, 72757i, -18852i, 33382i), 2342f), Struct_2(210f, vec4<i32>(22445i, 2147483647i, 2147483647i, -3884i), 953f), Struct_2(648f, vec4<i32>(47894i, -1i, 2147483647i, i32(-2147483648)), 738f), Struct_2(-1311f, vec4<i32>(-1i, -24328i, 11669i, 0i), 656f), Struct_2(-357f, vec4<i32>(-29473i, -53122i, 0i, 0i), -640f), Struct_2(1511f, vec4<i32>(43531i, 2147483647i, 2147483647i, -3875i), -167f), Struct_2(130f, vec4<i32>(-48003i, 20525i, -19518i, i32(-2147483648)), 187f), Struct_2(248f, vec4<i32>(-5707i, i32(-2147483648), 2147483647i, i32(-2147483648)), 830f), Struct_2(647f, vec4<i32>(-13082i, i32(-2147483648), -1i, -23518i), 1568f), Struct_2(-985f, vec4<i32>(0i, 24312i, -27540i, 1i), -741f), Struct_2(330f, vec4<i32>(1i, 17199i, -42524i, -29811i), 1712f), Struct_2(-1255f, vec4<i32>(i32(-2147483648), 0i, -12607i, -1i), 486f), Struct_2(-1000f, vec4<i32>(-40829i, 0i, 9783i, 16433i), 539f), Struct_2(800f, vec4<i32>(i32(-2147483648), 18790i, 17271i, 2147483647i), -1104f), Struct_2(-1958f, vec4<i32>(-6183i, -1i, i32(-2147483648), 2147483647i), -1641f), Struct_2(-218f, vec4<i32>(0i, -1i, -20280i, 8737i), -519f), Struct_2(-172f, vec4<i32>(-42958i, 2147483647i, 1i, -52404i), 136f), Struct_2(-461f, vec4<i32>(-17432i, -41640i, i32(-2147483648), 2147483647i), -1358f), Struct_2(195f, vec4<i32>(86846i, 33736i, 0i, 0i), 569f), Struct_2(-2195f, vec4<i32>(-2016i, -11709i, -25915i, 2147483647i), 1283f), Struct_2(325f, vec4<i32>(61736i, 0i, 1i, -18016i), -1294f));

var<private> global2: array<f32, 29>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1() -> bool {
    var var_0 = true || !(any(vec2<bool>(true, true)) | false);
    return false;
}

fn func_3(arg_0: Struct_2) -> vec2<f32> {
    let var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(62200u, ~min(1u, 50987u), 0u << ((_wgslsmith_clamp_u32(66825u, 37383u, 9310u) << ((1u >> (1u % 32u)) % 32u)) % 32u)), ~(~vec3<u32>(_wgslsmith_div_u32(6935u, 4294967295u), ~0u, _wgslsmith_mult_u32(1u, 46076u))), ~(~(~vec3<u32>(1u, 1u, 1u))));
    global0 = array<vec2<u32>, 21>();
    global2 = array<f32, 29>();
    global2 = array<f32, 29>();
    var var_1 = vec3<i32>(firstLeadingBit(u_input.b.x), _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.b.x, -1i), _wgslsmith_clamp_i32(max(~(-35403i), abs(-28728i)), countOneBits(16590i), -2147483647i)), -2147483647i);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * vec2<f32>(1079f, -470f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2[_wgslsmith_index_u32(53472u, 29u)], arg_0.a), vec2<f32>(-942f, -503f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(137f, global2[_wgslsmith_index_u32(92098u, 29u)]) * vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 29u)], arg_0.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(var_0.x, 29u)], -670f))))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<bool>) -> u32 {
    let var_0 = arg_1.x;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(15126u, 29u)], global2[_wgslsmith_index_u32(arg_0.x, 29u)]), vec2<f32>(-1000f, global2[_wgslsmith_index_u32(496u, 29u)])) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 29u)], -985f) * vec2<f32>(global2[_wgslsmith_index_u32(arg_0.x, 29u)], 650f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(13086u, 29u)], global2[_wgslsmith_index_u32(arg_0.x, 29u)]))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(19807u, 29u)], 1385f))))));
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_2(var_1.a.x, u_input.b, 566f))))));
    let var_2 = ~_wgslsmith_add_u32(_wgslsmith_add_u32(firstTrailingBit(arg_0.x), _wgslsmith_clamp_u32(arg_0.x, arg_0.x, 26251u)), _wgslsmith_sub_u32(0u, ~arg_0.x)) & ~_wgslsmith_clamp_u32(arg_0.x, ~(~arg_0.x), arg_0.x);
    global0 = array<vec2<u32>, 21>();
    return ~arg_0.x >> (_wgslsmith_mod_u32(55832u, _wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(15003u), var_2, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 31429u), vec2<u32>(1u, 21339u))), abs(~vec3<u32>(var_2, var_2, var_2)))) % 32u);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: u32) -> StorageBuffer {
    global1 = array<Struct_2, 25>();
    var var_0 = _wgslsmith_f_op_vec3_f32(arg_0 - arg_0);
    global0 = array<vec2<u32>, 21>();
    let var_1 = arg_2.zx;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(arg_3, 29u)], -1117f, arg_1.a.x, 537f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2[_wgslsmith_index_u32(66780u, 29u)], var_0.x, var_0.x, -580f), vec4<f32>(-1000f, 449f, arg_0.x, var_0.x)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 125f, -2006f, 279f)))) * vec4<f32>(-305f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(7756u, 29u)]))), global2[_wgslsmith_index_u32(~min(arg_3 << (arg_3 % 32u), ~arg_3), 29u)], _wgslsmith_f_op_f32(var_0.x * var_0.x)));
    return StorageBuffer(vec3<i32>(~u_input.b.x, ~firstLeadingBit(u_input.b.x) & _wgslsmith_sub_i32(-u_input.b.x, -1i), _wgslsmith_sub_i32(u_input.b.x, u_input.a.x)), var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -4657i;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1147f);
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(59436u, 29u)], global2[_wgslsmith_index_u32(1u, 29u)], -775f) * vec3<f32>(global2[_wgslsmith_index_u32(77158u, 29u)], 1332f, global2[_wgslsmith_index_u32(34803u, 29u)])))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(1u, 29u)], 449f, global2[_wgslsmith_index_u32(16983u, 29u)]) - vec3<f32>(global2[_wgslsmith_index_u32(1u, 29u)], 360f, global2[_wgslsmith_index_u32(1u, 29u)])) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2[_wgslsmith_index_u32(0u, 29u)], 1589f, global2[_wgslsmith_index_u32(32088u, 29u)]))))))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 29u)], -1000f), vec2<f32>(1273f, 345f), vec2<bool>(true, true))), vec2<f32>(-613f, global2[_wgslsmith_index_u32(4294967295u, 29u)])) - _wgslsmith_div_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(1u, 29u)], -1679f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 29u)], 756f)))))), vec4<bool>(all(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true))), (2179f < _wgslsmith_div_f32(global2[_wgslsmith_index_u32(0u, 29u)], global2[_wgslsmith_index_u32(1u, 29u)])) & func_1(), true, false), _wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_div_u32(1u, 6055u)) << (func_2(vec4<u32>(0u, 44327u, 0u, 11222u), vec2<bool>(true, true)) % 32u), ~_wgslsmith_mult_u32(func_2(vec4<u32>(32132u, 1u, 2336u, 4294967295u), vec2<bool>(false, true)), min(0u, 56398u))));
}

