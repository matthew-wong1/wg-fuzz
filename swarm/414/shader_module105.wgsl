struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec2<f32>(571f, 1591f), 41142u), Struct_1(vec2<f32>(1309f, 470f), 38072u), Struct_1(vec2<f32>(129f, 1000f), 1u), Struct_1(vec2<f32>(-868f, 1587f), 4294967295u), Struct_1(vec2<f32>(384f, -388f), 68927u), Struct_1(vec2<f32>(1197f, -983f), 4294967295u), Struct_1(vec2<f32>(963f, -287f), 0u), Struct_1(vec2<f32>(-1000f, -339f), 4294967295u), Struct_1(vec2<f32>(-983f, 266f), 31996u), Struct_1(vec2<f32>(604f, -291f), 1u), Struct_1(vec2<f32>(1161f, -1359f), 35832u), Struct_1(vec2<f32>(694f, 1000f), 9930u), Struct_1(vec2<f32>(-460f, -505f), 1u), Struct_1(vec2<f32>(-395f, 923f), 56858u), Struct_1(vec2<f32>(-1226f, 2118f), 34407u), Struct_1(vec2<f32>(615f, -931f), 0u), Struct_1(vec2<f32>(448f, 1998f), 16281u), Struct_1(vec2<f32>(492f, 219f), 46295u), Struct_1(vec2<f32>(213f, 1286f), 11224u), Struct_1(vec2<f32>(362f, -1000f), 64940u), Struct_1(vec2<f32>(-1275f, 552f), 23536u), Struct_1(vec2<f32>(1446f, 1299f), 70623u), Struct_1(vec2<f32>(199f, -1511f), 1u), Struct_1(vec2<f32>(347f, 1148f), 34329u), Struct_1(vec2<f32>(514f, -659f), 19065u));

var<private> global2: Struct_1;

var<private> global3: vec4<i32> = vec4<i32>(-65686i, 16245i, 24626i, i32(-2147483648));

var<private> global4: array<u32, 19> = array<u32, 19>(14623u, 26499u, 91779u, 0u, 0u, 1u, 4294967295u, 46350u, 1u, 19823u, 11907u, 4294967295u, 4294967295u, 1u, 0u, 27129u, 66145u, 1u, 4294967295u);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(-global0.x);
    let var_1 = global1[_wgslsmith_index_u32(0u, 25u)];
    global3 = vec4<i32>(global3.x, global3.x, 71425i, -_wgslsmith_mult_i32(_wgslsmith_div_i32(-19009i, ~global3.x), ~global3.x));
    let var_2 = arg_1;
    let var_3 = _wgslsmith_f_op_vec2_f32(arg_1.a * vec2<f32>(_wgslsmith_f_op_f32(min(438f, _wgslsmith_f_op_f32(trunc(-239f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-977f * var_0))));
    return vec4<u32>(_wgslsmith_dot_vec4_u32(select(select(vec4<u32>(11847u, arg_0.b, arg_1.b, u_input.a), vec4<u32>(0u, arg_1.b, var_2.b, 0u), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false))), ~firstTrailingBit(vec4<u32>(1u, u_input.a, 0u, global4[_wgslsmith_index_u32(var_2.b, 19u)])), select(true, true, false)), ~max(~vec4<u32>(global2.b, 26975u, arg_0.b, global4[_wgslsmith_index_u32(var_1.b, 19u)]), ~vec4<u32>(global2.b, arg_1.b, global4[_wgslsmith_index_u32(global2.b, 19u)], 84766u))), ~arg_1.b, ~9063u, 0u);
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = vec4<f32>(-1801f, -471f, arg_2.a.x, 908f);
    let var_1 = global2.a.x;
    var var_2 = _wgslsmith_mult_vec4_u32(~(func_3(Struct_1(vec2<f32>(global2.a.x, global2.a.x), 4294967295u), Struct_1(vec2<f32>(var_0.x, global0.x), 0u)) << (vec4<u32>(arg_2.b, ~arg_2.b, ~11376u, _wgslsmith_div_u32(arg_2.b, arg_2.b)) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(~firstTrailingBit(max(vec4<u32>(1673u, arg_1.b, arg_2.b, u_input.a), vec4<u32>(4294967295u, global4[_wgslsmith_index_u32(u_input.a, 19u)], arg_2.b, 4294967295u))), ~vec4<u32>(~u_input.a, _wgslsmith_mod_u32(1098u, global2.b), arg_1.b, 1u)));
    let var_3 = arg_2;
    return vec3<bool>(all(vec3<bool>(true, true, true)), true || arg_0, all(vec3<bool>(arg_0, true, !(!arg_0))));
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: f32) -> u32 {
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global2.a.x)))) - _wgslsmith_f_op_f32(global2.a.x + _wgslsmith_f_op_f32(sign(-1191f)))), 494f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.x)) + global0.x)))));
    let var_0 = firstLeadingBit(21096i);
    return ~u_input.a;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = 4294967295u;
    var var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-503f - _wgslsmith_f_op_f32(round(arg_0.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.x + arg_1.a.x) - -962f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -339f)))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_2.x, 156f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_f_op_f32(f32(-1f) * -216f)), var_1.a.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(global0.x)), 1372f, global0.x) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.x, -268f, 1208f))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.a.x, 1923f, 1098f), vec3<f32>(arg_1.a.x, global2.a.x, global2.a.x)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-533f, var_2.x, var_1.a.x)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(global2.a * _wgslsmith_f_op_vec2_f32(select(var_2, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a), arg_0), _wgslsmith_f_op_vec2_f32(-arg_0))), !vec2<bool>(any(vec4<bool>(true, true, false, false)), true))));
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(arg_1.a.x + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.a.x - global2.a.x)))), 602f), ~arg_1.b & u_input.a);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    global2 = func_5(vec2<f32>(global2.a.x, _wgslsmith_f_op_f32(arg_1.a.x - -154f)), global1[_wgslsmith_index_u32(4072u >> (func_4(select(func_2(false, arg_2, arg_1), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), ~global2.b < ~1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -567f))) % 32u), 25u)], _wgslsmith_mod_vec4_u32(abs(vec4<u32>(arg_2.b, arg_2.b, 4294967295u, 2256u) >> (min(vec4<u32>(0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], global4[_wgslsmith_index_u32(0u, 19u)], u_input.a), vec4<u32>(1u, 4294967295u, 1u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global2.b, 19u)], 19u)])) % vec4<u32>(32u))), vec4<u32>(~func_3(Struct_1(vec2<f32>(-631f, -1365f), 0u), Struct_1(vec2<f32>(347f, -1038f), arg_1.b)).x, 1u, 0u & u_input.a, global2.b)), vec2<i32>(-2147483647i, ~(-10296i)));
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a, ~u_input.a) ^ ~global4[_wgslsmith_index_u32(func_5(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, global2.a.x), vec2<f32>(1313f, 253f))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, u_input.a), 25u)], _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 35411u, 1u, u_input.a), vec4<u32>(global2.b, 4294967295u, 29701u, 1u), vec4<u32>(35043u, arg_2.b, 0u, 10302u)), vec2<i32>(1i, global3.x)).b, 19u)], ~(~0u)), 25u)];
    var var_1 = vec2<bool>(func_2(!func_2(all(vec4<bool>(false, true, false, false)), func_5(vec2<f32>(arg_2.a.x, global2.a.x), arg_2, vec4<u32>(global4[_wgslsmith_index_u32(u_input.a, 19u)], arg_1.b, 0u, 4294967295u), vec2<i32>(global3.x, global3.x)), arg_2).x, func_5(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-112f, -552f))), Struct_1(func_5(var_0.a, Struct_1(arg_2.a, var_0.b), vec4<u32>(2306u, global4[_wgslsmith_index_u32(global2.b, 19u)], arg_1.b, 28376u), vec2<i32>(-12589i, global3.x)).a, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(global2.b, 1728u, arg_2.b, arg_1.b), abs(vec4<u32>(0u, global2.b, global2.b, u_input.a))), global3.zw), func_5(global2.a, Struct_1(global2.a, u_input.a), vec4<u32>(~1u, u_input.a, 1u, 73042u), -(global3.wx | global3.zy))).x, !(false || (any(vec4<bool>(true, true, true, false)) | false)));
    global2 = arg_1;
    global4 = array<u32, 19>();
    return Struct_1(var_0.a, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = abs(~vec4<i32>(-1i, 1i, -24162i, -(~0i)));
    let var_0 = firstLeadingBit(-20957i);
    let var_1 = !(global2.b >= global2.b);
    var var_2 = func_1(var_0, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global2.a.x), global0.xx) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(272f, 671f), vec2<f32>(892f, global0.x)))), ~(~(~0u))), Struct_1(vec2<f32>(global0.x, _wgslsmith_f_op_f32(global2.a.x * 1f)), u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x))))));
    global0 = vec3<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -814f), _wgslsmith_f_op_f32(ceil(global2.a.x)));
    global4 = array<u32, 19>();
    global2 = global1[_wgslsmith_index_u32(0u, 25u)];
    var var_3 = true;
    var var_4 = func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(864f, -414f)))), vec2<f32>(global0.x, global0.x)))), global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~4294967295u, _wgslsmith_add_u32(104203u, global4[_wgslsmith_index_u32(4294967295u, 19u)])) ^ (~(global4[_wgslsmith_index_u32(21159u, 19u)] | var_2.b) >> (global4[_wgslsmith_index_u32(global2.b, 19u)] % 32u)), 25u)], vec4<u32>(_wgslsmith_sub_u32(firstTrailingBit(u_input.a), firstTrailingBit(0u)), func_1(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 20035i, var_0), global3.xxx), func_5(vec2<f32>(var_2.a.x, global0.x), global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(51576u, 19u)], 25u)], vec4<u32>(global4[_wgslsmith_index_u32(1u, 19u)], 1u, 1u, global2.b), vec2<i32>(-1630i, -1i)), func_5(var_2.a, global1[_wgslsmith_index_u32(0u, 25u)], vec4<u32>(global2.b, 4294967295u, global4[_wgslsmith_index_u32(u_input.a, 19u)], global4[_wgslsmith_index_u32(17294u, 19u)]), global3.zx), var_2.a.x).b, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.b, 15675u, 1u, var_2.b), vec4<u32>(var_2.b, 1u, global4[_wgslsmith_index_u32(201u, 19u)], var_2.b)), firstTrailingBit(~var_2.b)) >> (vec4<u32>(abs(global2.b & 49451u), global4[_wgslsmith_index_u32(global2.b, 19u)] >> (_wgslsmith_add_u32(global2.b, var_2.b) % 32u), u_input.a, 59004u) % vec4<u32>(32u)), vec2<i32>(var_0, ~(~(-2147483647i << (global2.b % 32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(68122u, ~1u, 1u), vec2<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, firstLeadingBit(6233u), 4294967295u), var_2.b), abs(select(func_1(67702i, global1[_wgslsmith_index_u32(1u, 25u)], Struct_1(var_2.a, 4294967295u), -181f).b, ~global2.b, true))), vec2<u32>(var_4.b, global2.b), vec4<i32>(var_0, 1i, ~(-firstTrailingBit(-9155i)), -2147483647i));
}

