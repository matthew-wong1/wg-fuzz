struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: f32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: u32,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4>;

var<private> global1: bool = true;

var<private> global2: vec4<f32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1084f, 390f, arg_0, 836f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(1u, 4u)], arg_0, arg_0, 1000f) - vec4<f32>(-353f, -1320f, -1000f, global0[_wgslsmith_index_u32(u_input.a.x, 4u)]))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-707f, arg_0, -686f, arg_0)))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, ~u_input.a.x, 3105u), 4u)]) * var_0.x);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: bool) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-arg_2.a))))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-452f, _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(arg_1.e, 4u)])), _wgslsmith_f_op_f32(371f - global2.x), 910f), vec4<f32>(arg_2.a.x, 2845f, _wgslsmith_div_f32(arg_1.a, global2.x), 684f), arg_1.b.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 4u)] + -769f)), global2.x)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1296f)), _wgslsmith_f_op_f32(func_3(_wgslsmith_div_f32(-1801f, 1328f), any(vec3<bool>(true, true, false)), 0i))), _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(f32(-1f) * -1453f)), global0[_wgslsmith_index_u32(~(~4294967295u >> (min(u_input.a.x, 40310u) % 32u)), 4u)])));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(arg_2.a.x)), _wgslsmith_f_op_f32(select(-278f, global0[_wgslsmith_index_u32(u_input.a.x, 4u)], false))))) > var_0.b, firstLeadingBit(_wgslsmith_sub_vec2_i32(abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(arg_0.x, -33889i), vec2<i32>(9578i, 1i))), min(select(arg_0, arg_0, arg_1.b.x), abs(vec2<i32>(-2147483647i, -6110i))))), arg_1.e | _wgslsmith_sub_u32(4294967295u, 1u), arg_1, u_input.a.x <= _wgslsmith_div_u32(~(~4294967295u), 41387u));
    let var_3 = _wgslsmith_add_u32(abs(_wgslsmith_sub_u32(~u_input.a.x, ~arg_1.e)) >> (~var_2.d.e % 32u), ~61619u);
    let var_4 = min(vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(-1i, var_2.b.x, arg_1.d), abs(vec3<i32>(u_input.b, 1i, -2771i))), -(~vec3<i32>(var_2.b.x, arg_1.d, arg_0.x))), var_2.b.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, -22011i, 1i, var_2.d.d) << (vec4<u32>(74911u, 55320u, 8326u, 1u) % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(arg_0.x, u_input.b, u_input.b, 2147483647i))), 16294i << (0u % 32u)), _wgslsmith_add_vec4_i32(vec4<i32>(min(~arg_1.d, ~(-2147483647i)), -30243i, _wgslsmith_mod_i32(arg_0.x, 1i), _wgslsmith_mult_i32(-19103i, _wgslsmith_div_i32(-22656i, 25920i))), abs(firstLeadingBit(vec4<i32>(-1i, u_input.b, -1i, arg_0.x))) & countOneBits(~vec4<i32>(arg_0.x, var_2.d.d, -550i, 0i))));
    return Struct_1(arg_2.a.x, arg_1.b, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -276f) + arg_2.a.x), var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.x)) + -1177f)))), 0i, var_2.c);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<f32>) -> i32 {
    var var_0 = vec3<u32>(4294967295u, 59204u, 7625u ^ min(arg_1.e, firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 7495u), u_input.a.xx))));
    var var_1 = firstLeadingBit(vec3<u32>(countOneBits(abs(~28136u)), _wgslsmith_dot_vec3_u32(min(vec3<u32>(arg_1.e, u_input.a.x, arg_1.e), u_input.a.wyw), select(vec3<u32>(arg_1.e, 88114u, u_input.a.x), u_input.a.zxy, true) & _wgslsmith_sub_vec3_u32(u_input.a.wyw, u_input.a.xzx)), u_input.a.x));
    var var_2 = any(arg_0);
    var_0 = ~_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a.xwy, vec3<u32>(var_0.x, 0u, var_0.x)), ~u_input.a.xxx, abs(select(u_input.a.www, u_input.a.xyw, arg_0.xxz))), vec3<u32>((55243u & var_0.x) | ~1u, abs(_wgslsmith_div_u32(0u, 1u)), 16620u));
    var var_3 = vec4<bool>(all(!vec2<bool>(false, all(arg_0.yx))), arg_0.x, true, all(!select(select(arg_0, vec4<bool>(arg_0.x, true, true, true), true), vec4<bool>(arg_1.b.x, arg_0.x, arg_0.x, false), arg_1.b.x)));
    return 0i;
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_mult_u32(select(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), select(u_input.a.zxy, u_input.a.xzy, vec3<bool>(true, true, false))), 4294967295u), 4294967295u, !(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 4u)]) > _wgslsmith_f_op_f32(-694f + global0[_wgslsmith_index_u32(32240u, 4u)]))), 72972u);
    var var_1 = _wgslsmith_mult_i32(-35727i, _wgslsmith_dot_vec4_i32(vec4<i32>(min(1i, u_input.b), ~11573i, func_4(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false)), func_2(vec2<i32>(u_input.b, 46991i), Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], vec2<bool>(false, true), -1848f, u_input.b, u_input.a.x), Struct_2(vec4<f32>(global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(1u, 4u)], 119f, global2.x), global2.x), false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-244f, 1000f, 887f, global2.x))), -10640i), countOneBits(vec4<i32>(u_input.b, _wgslsmith_clamp_i32(u_input.b, -32821i, u_input.b), u_input.b, 31511i))));
    var var_2 = ~61240u;
    global0 = array<f32, 4>();
    var var_3 = Struct_3((~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 4294967295u), vec3<u32>(26638u, 0u, u_input.a.x)) >= _wgslsmith_clamp_u32(select(1u, 4294967295u, true), reverseBits(u_input.a.x), u_input.a.x)) | all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true))), min(select(vec2<i32>(0i, 1i) | vec2<i32>(u_input.b, u_input.b), firstTrailingBit(vec2<i32>(-1i, 13540i)), u_input.a.x >= 29072u), -reverseBits(vec2<i32>(u_input.b, u_input.b))) & vec2<i32>(u_input.b, u_input.b >> (abs(2043u) % 32u)), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(reverseBits(~u_input.a), select(countOneBits(vec4<u32>(0u, 6710u, u_input.a.x, 0u)), vec4<u32>(u_input.a.x, 55687u, u_input.a.x, 91272u), u_input.a.x == 16052u)), ~firstLeadingBit(74953u)), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1153f + -2237f) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 4u)])))), func_2(vec2<i32>(37176i, 8036i) ^ ~vec2<i32>(u_input.b, 5578i), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 4u)], vec2<bool>(true, true), _wgslsmith_f_op_f32(sign(global2.x)), -3679i, 0u), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1213f, global2.x, global2.x, global0[_wgslsmith_index_u32(u_input.a.x, 4u)])), -526f), true).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(341f * global0[_wgslsmith_index_u32(1u, 4u)])) * global2.x), _wgslsmith_clamp_i32(reverseBits(-6836i), ~(-2147483647i), countOneBits(~(-20811i))), 0u), any(select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, false), true), vec2<bool>(u_input.b <= 31444i, true))));
    return _wgslsmith_dot_vec2_u32(reverseBits(firstLeadingBit(u_input.a.xz)), ~_wgslsmith_add_vec2_u32(select(vec2<u32>(var_3.c, var_3.d.e), vec2<u32>(1u, 13158u), true) | ~vec2<u32>(var_3.d.e, 3853u), _wgslsmith_mult_vec2_u32(vec2<u32>(var_3.c, 1u), min(vec2<u32>(53992u, 1u), vec2<u32>(u_input.a.x, 1u)))));
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: Struct_2) -> vec4<f32> {
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(arg_3.a)));
    var var_0 = vec2<f32>(-1117f, _wgslsmith_f_op_f32(-arg_3.a.x));
    var var_1 = arg_3;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1287f));
    var var_3 = u_input.a.x;
    return _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_3.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.x)), arg_1.d.a), _wgslsmith_f_op_f32(select(-388f, _wgslsmith_f_op_f32(f32(-1f) * -366f), true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(~(i32(-1i) * -2147483647i));
    var var_1 = -_wgslsmith_dot_vec4_i32(~(-(~vec4<i32>(u_input.b, u_input.b, -14118i, 24917i))), -countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.b), vec4<i32>(u_input.b, -52325i, u_input.b, -1i))));
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_5(max(96663u, 303u) <= func_1(), Struct_3(true, select(vec2<i32>(-29119i, u_input.b), vec2<i32>(-23444i, u_input.b), true), 40121u, func_2(vec2<i32>(u_input.b, 57033i), Struct_1(747f, vec2<bool>(true, true), global2.x, 6059i, u_input.a.x), Struct_2(vec4<f32>(1090f, -325f, global0[_wgslsmith_index_u32(0u, 4u)], -823f), global2.x), true), u_input.a.x < 0u), (vec4<i32>(u_input.b, 2147483647i, -2147483647i, u_input.b) ^ vec4<i32>(15713i, u_input.b, u_input.b, u_input.b)) << (vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x) % vec4<u32>(32u)), Struct_2(vec4<f32>(-567f, global2.x, global2.x, global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), global0[_wgslsmith_index_u32(select(u_input.a.x, u_input.a.x, false), 4u)]))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(774f, global0[_wgslsmith_index_u32(28092u, 4u)], 992f, global2.x) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(560f, global2.x, global2.x, 218f)))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-437f)), global0[_wgslsmith_index_u32(0u, 4u)]), global2.x, _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -857f) + -1000f)), _wgslsmith_div_f32(global2.x, global0[_wgslsmith_index_u32(u_input.a.x, 4u)]))));
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(sign(var_2.x)), u_input.a.x <= 30780u, ~u_input.b)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], 1000f)), _wgslsmith_f_op_vec4_f32(func_5(false, Struct_3(false, vec2<i32>(0i, 1i), u_input.a.x, Struct_1(global2.x, vec2<bool>(true, false), global0[_wgslsmith_index_u32(5274u, 4u)], u_input.b, 0u), true), vec4<i32>(-1i, u_input.b, -2147483647i, -23745i), Struct_2(vec4<f32>(270f, 326f, -713f, 1000f), global2.x))).x, true)), _wgslsmith_div_f32(-1025f, var_2.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), global0[_wgslsmith_index_u32(1u, 4u)])), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1407f + global0[_wgslsmith_index_u32(u_input.a.x, 4u)])), _wgslsmith_f_op_f32(-906f + _wgslsmith_f_op_f32(floor(-359f))), -1000f, var_2.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), func_2(vec2<i32>(1i, 1i), Struct_1(var_2.x, vec2<bool>(false, false), -1674f, 0i, 0u), Struct_2(vec4<f32>(2432f, 599f, var_2.x, global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), 703f), false).c, -1245f, _wgslsmith_f_op_f32(-var_2.x))))));
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.wxz, _wgslsmith_mod_u32(1u, 10764u), max(u_input.a, ~_wgslsmith_clamp_vec4_u32(u_input.a, ~u_input.a, u_input.a)), _wgslsmith_f_op_vec3_f32(max(global2.zwx, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global2.wyx * _wgslsmith_f_op_vec3_f32(max(global2.yyy, vec3<f32>(779f, 2123f, -389f)))), _wgslsmith_f_op_vec3_f32(-global2.wxz), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec3<bool>(false, true, true))))))));
}

