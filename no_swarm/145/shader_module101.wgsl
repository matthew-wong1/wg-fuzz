struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec2<i32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec3<u32>(0u, 0u, 0u), vec3<bool>(false, false, true), vec2<i32>(-2326i, 36573i), -734f, 2147483647i), Struct_1(vec3<u32>(809u, 1u, 1u), vec3<bool>(false, true, false), vec2<i32>(12308i, 2147483647i), 1000f, -50430i), Struct_1(vec3<u32>(1u, 0u, 1u), vec3<bool>(true, true, true), vec2<i32>(12761i, -6095i), 469f, i32(-2147483648)), Struct_1(vec3<u32>(0u, 57499u, 35177u), vec3<bool>(true, true, false), vec2<i32>(-1i, 1i), 2153f, 0i), Struct_1(vec3<u32>(0u, 53749u, 50540u), vec3<bool>(false, true, true), vec2<i32>(1046i, 2147483647i), 326f, -23889i), Struct_1(vec3<u32>(53854u, 48267u, 5736u), vec3<bool>(true, true, true), vec2<i32>(0i, 2147483647i), -619f, 2147483647i), Struct_1(vec3<u32>(4294967295u, 19314u, 37265u), vec3<bool>(false, true, false), vec2<i32>(45480i, 2147483647i), 401f, -39514i), Struct_1(vec3<u32>(11541u, 5174u, 1u), vec3<bool>(true, false, false), vec2<i32>(-1i, -32428i), 174f, -39680i), Struct_1(vec3<u32>(1u, 32144u, 24929u), vec3<bool>(true, true, true), vec2<i32>(0i, -1i), 100f, -1i), Struct_1(vec3<u32>(4294967295u, 51858u, 3503u), vec3<bool>(false, false, false), vec2<i32>(-33215i, -1i), 1212f, -2185i), Struct_1(vec3<u32>(25647u, 1u, 39542u), vec3<bool>(false, false, false), vec2<i32>(14010i, 6704i), -775f, -55541i), Struct_1(vec3<u32>(25793u, 16611u, 0u), vec3<bool>(true, true, true), vec2<i32>(-17288i, 7i), 1600f, 33145i));

var<private> global1: array<bool, 9> = array<bool, 9>(true, true, false, false, true, false, true, false, false);

var<private> global2: array<vec3<u32>, 5>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    global0 = array<Struct_1, 12>();
    let var_0 = Struct_2(u_input.a.x, 436f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -291f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1535f, -893f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(295f, -1272f)))))), Struct_1(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(global2[_wgslsmith_index_u32(1u, 5u)], _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 38549u, 24113u), vec3<u32>(59405u, 99938u, 16738u), vec3<u32>(21750u, 22627u, 2161u))), vec3<u32>(~1u, 11246u, countOneBits(52279u))), !(!select(vec3<bool>(true, false, global1[_wgslsmith_index_u32(4294967295u, 9u)]), vec3<bool>(arg_0, false, true), true)), vec2<i32>(u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(646f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) * _wgslsmith_f_op_f32(step(1033f, -140f)))), u_input.a.x));
    global0 = array<Struct_1, 12>();
    let var_1 = u_input.a.xz;
    var var_2 = Struct_2(_wgslsmith_mult_i32(var_1.x, var_0.a) << (var_0.d.a.x % 32u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d.d), -1154f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) * var_0.c)))), -420f, var_0.d);
    return var_0.d;
}

fn func_3() -> u32 {
    let var_0 = select(any(func_2(all(vec4<bool>(true, true, true, true))).b.yx), true, (max(max(38052u, 4294967295u), func_2(global1[_wgslsmith_index_u32(4294967295u, 9u)]).a.x) & 73484u) > firstTrailingBit(~4294967295u));
    var var_1 = Struct_2(u_input.a.x, _wgslsmith_f_op_f32(ceil(344f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -729f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1551f)))), -2021f), global0[_wgslsmith_index_u32(1u, 12u)]);
    var var_2 = var_1.c;
    global1 = array<bool, 9>();
    let var_3 = u_input.a.wx;
    return ~1u;
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.d * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.d))))));
    var var_1 = _wgslsmith_f_op_f32(-191f - arg_3.d);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -254f))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-207f, arg_3.d, 313f, arg_3.d)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1916f, arg_3.d, arg_3.d, 852f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-549f, 1858f, 1000f, arg_3.d))))));
    var var_4 = Struct_3(func_2(any(arg_2)));
    return Struct_2(firstTrailingBit((-34484i >> (func_3() % 32u)) & ~(u_input.a.x | -14681i)), _wgslsmith_f_op_f32(-1153f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -282f) - _wgslsmith_f_op_f32(var_4.a.d * var_4.a.d))), arg_3.d, func_2(!all(!arg_2)));
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    global1 = array<bool, 9>();
    global2 = array<vec3<u32>, 5>();
    global2 = array<vec3<u32>, 5>();
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(923f, arg_0.c, -1729f)))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(760f, arg_0.b, arg_0.d.d), vec3<f32>(arg_0.b, 342f, 725f)))), vec3<f32>(arg_0.d.d, 1299f, _wgslsmith_f_op_f32(f32(-1f) * -1350f))), vec3<f32>(func_2(all(select(arg_0.d.b, vec3<bool>(global1[_wgslsmith_index_u32(33515u, 9u)], true, true), false))).d, -136f, _wgslsmith_f_op_f32(f32(-1f) * -580f)));
    var_0 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(342f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1009f, -488f, global1[_wgslsmith_index_u32(45261u, 9u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, 2093f)) + -1380f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0.c)), -1000f, -2323f))))));
    return Struct_3(global0[_wgslsmith_index_u32(4294967295u >> (func_1(global1[_wgslsmith_index_u32(min(arg_0.d.a.x, ~0u), 9u)], 1i, select(select(vec4<bool>(global1[_wgslsmith_index_u32(arg_0.d.a.x, 9u)], global1[_wgslsmith_index_u32(32374u, 9u)], arg_0.d.b.x, arg_0.d.b.x), vec4<bool>(true, arg_0.d.b.x, global1[_wgslsmith_index_u32(65462u, 9u)], global1[_wgslsmith_index_u32(21952u, 9u)]), vec4<bool>(arg_0.d.b.x, true, global1[_wgslsmith_index_u32(arg_0.d.a.x, 9u)], arg_0.d.b.x)), vec4<bool>(false, false, arg_0.d.b.x, global1[_wgslsmith_index_u32(1u, 9u)]), any(vec4<bool>(true, false, false, arg_0.d.b.x))), Struct_1(~global2[_wgslsmith_index_u32(0u, 5u)], !arg_0.d.b, func_1(true, 1i, vec4<bool>(arg_0.d.b.x, false, false, false), global0[_wgslsmith_index_u32(4294967295u, 12u)]).d.c, func_1(true, u_input.a.x, vec4<bool>(true, arg_0.d.b.x, false, false), Struct_1(global2[_wgslsmith_index_u32(arg_0.d.a.x, 5u)], arg_0.d.b, vec2<i32>(u_input.a.x, arg_0.d.c.x), -1596f, u_input.a.x)).d.d, arg_0.d.c.x)).d.a.x % 32u), 12u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(false, 0i, !select(vec4<bool>(true, true, true, true), !vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 9u)], global1[_wgslsmith_index_u32(50823u, 9u)], false, global1[_wgslsmith_index_u32(1u, 9u)]), true), global0[_wgslsmith_index_u32(4294967295u, 12u)]));
    let var_1 = func_1(all(var_0.a.b), var_0.a.e, vec4<bool>(!(!func_1(false, 0i, vec4<bool>(true, var_0.a.b.x, var_0.a.b.x, true), global0[_wgslsmith_index_u32(1u, 12u)]).d.b.x), var_0.a.b.x, (var_0.a.e << (~var_0.a.a.x % 32u)) <= u_input.a.x, var_0.a.b.x), func_4(func_1(true, ~abs(var_0.a.e), vec4<bool>(!var_0.a.b.x, true, var_0.a.b.x, true), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(func_4(Struct_2(26908i, var_0.a.d, 1409f, Struct_1(var_0.a.a, vec3<bool>(true, var_0.a.b.x, true), vec2<i32>(-53220i, var_0.a.c.x), var_0.a.d, var_0.a.c.x))).a.a.x, 0u & var_0.a.a.x), 12u)])).a);
    var var_2 = global0[_wgslsmith_index_u32(var_1.d.a.x, 12u)];
    global1 = array<bool, 9>();
    var var_3 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a.x, _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(var_2.a.x, var_2.a.x, var_2.a.x, var_0.a.a.x)), vec4<u32>(var_1.d.a.x, _wgslsmith_clamp_u32(0u, 24244u, var_0.a.a.x), ~571u, ~30059u)), ~vec4<u32>(var_0.a.a.x, var_0.a.a.x, 0u, 41542u) & abs(vec4<u32>(1u, 1u, 1u, 1u) >> (vec4<u32>(6675u, 1u, var_0.a.a.x, 1u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(vec4<u32>(~15604u, ~var_2.a.x, _wgslsmith_sub_u32(4294967295u, 4294967295u), ~1u), select(~vec4<u32>(1u, 4294967295u, var_0.a.a.x, var_0.a.a.x), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a.a.x, 0u, var_1.d.a.x, 4294967295u), vec4<u32>(45786u, 0u, var_0.a.a.x, var_2.a.x)), vec4<bool>(var_2.b.x, true, true, false)))), firstLeadingBit(vec3<i32>(~abs(-35360i), _wgslsmith_dot_vec3_i32(abs(u_input.a.zyx), ~u_input.a.yyy), ~u_input.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_div_f32(var_1.c, var_1.d.d), 576f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1203f, -357f))))))));
}

