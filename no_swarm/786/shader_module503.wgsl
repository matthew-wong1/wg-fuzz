struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec3<bool>,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 22> = array<vec3<u32>, 22>(vec3<u32>(4294967295u, 72549u, 0u), vec3<u32>(48980u, 0u, 38142u), vec3<u32>(49363u, 44602u, 4294967295u), vec3<u32>(1u, 0u, 31435u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(52875u, 68289u, 1u), vec3<u32>(0u, 46709u, 1u), vec3<u32>(55650u, 1u, 48854u), vec3<u32>(82600u, 0u, 4294967295u), vec3<u32>(4942u, 6064u, 34173u), vec3<u32>(1u, 14332u, 30765u), vec3<u32>(46068u, 4294967295u, 1u), vec3<u32>(3679u, 11722u, 19707u), vec3<u32>(33448u, 12172u, 4294967295u), vec3<u32>(8233u, 24543u, 4294967295u), vec3<u32>(1u, 4294967295u, 21575u), vec3<u32>(64315u, 109076u, 35473u), vec3<u32>(4707u, 1u, 4294967295u), vec3<u32>(1u, 22318u, 1u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 96365u, 1u), vec3<u32>(4294967295u, 1u, 1u));

var<private> global1: array<vec4<i32>, 31> = array<vec4<i32>, 31>(vec4<i32>(-40596i, -1i, -1i, -48248i), vec4<i32>(-16806i, 2147483647i, -34617i, 1i), vec4<i32>(-26203i, 37959i, -45917i, -33182i), vec4<i32>(i32(-2147483648), 0i, -50452i, -1i), vec4<i32>(5870i, 2147483647i, 2123i, 2147483647i), vec4<i32>(1i, -5457i, 17765i, -2255i), vec4<i32>(2147483647i, -59434i, 8894i, 2147483647i), vec4<i32>(2147483647i, -34938i, 0i, -1i), vec4<i32>(20949i, -1i, 2147483647i, -1i), vec4<i32>(9781i, 1i, 2147483647i, 51490i), vec4<i32>(1i, -1i, 92051i, 5676i), vec4<i32>(-1i, -21581i, 3036i, -1i), vec4<i32>(9930i, 2147483647i, -1i, 2147483647i), vec4<i32>(-34541i, 56905i, 0i, 19434i), vec4<i32>(-1i, 38122i, 56465i, 2147483647i), vec4<i32>(-12321i, -6111i, -62944i, -7942i), vec4<i32>(-19451i, 16520i, -1i, -34958i), vec4<i32>(-40126i, -38924i, 0i, 1644i), vec4<i32>(i32(-2147483648), 0i, -22820i, -8993i), vec4<i32>(i32(-2147483648), i32(-2147483648), 12846i, 1i), vec4<i32>(2147483647i, i32(-2147483648), -1i, 18232i), vec4<i32>(34671i, i32(-2147483648), -5953i, 14610i), vec4<i32>(0i, -23017i, 0i, 2147483647i), vec4<i32>(0i, i32(-2147483648), 2147483647i, -4321i), vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 2147483647i), vec4<i32>(3816i, 11400i, -24762i, -23735i), vec4<i32>(19908i, 0i, 1i, 0i), vec4<i32>(-13655i, 2147483647i, 2147483647i, 24280i), vec4<i32>(2147483647i, -52415i, 8195i, 13710i), vec4<i32>(-7305i, 3923i, 39619i, 12170i), vec4<i32>(-1i, 15090i, 1i, -1i));

var<private> global2: vec2<bool> = vec2<bool>(true, false);

var<private> global3: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(1u), Struct_2(0u), Struct_2(4294967295u), Struct_2(22968u), Struct_2(15584u), Struct_2(8034u), Struct_2(0u), Struct_2(4294967295u), Struct_2(3377u), Struct_2(63284u), Struct_2(54128u), Struct_2(3546u), Struct_2(40085u), Struct_2(1u), Struct_2(55906u), Struct_2(4294967295u), Struct_2(96936u), Struct_2(0u), Struct_2(4294967295u), Struct_2(1u), Struct_2(1u), Struct_2(1u), Struct_2(77188u), Struct_2(3330u), Struct_2(0u), Struct_2(26231u), Struct_2(80480u), Struct_2(29844u), Struct_2(1u), Struct_2(1u), Struct_2(1294u));

var<private> global4: vec2<f32> = vec2<f32>(-1356f, -358f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1(arg_0: i32) -> i32 {
    global0 = array<vec3<u32>, 22>();
    var var_0 = _wgslsmith_mod_u32(~u_input.a.x, _wgslsmith_add_u32(u_input.b.x, ~u_input.c.x));
    return arg_0;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: vec4<bool>) -> vec3<bool> {
    var var_0 = Struct_2(1u);
    global3 = array<Struct_2, 31>();
    global3 = array<Struct_2, 31>();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1104f, 750f, arg_2.x))) - 1165f)), arg_1.a.x, _wgslsmith_f_op_f32(floor(arg_1.a.x)));
    var var_2 = arg_1.b;
    return vec3<bool>(!all(vec2<bool>(false, true)), true, all(vec3<bool>(!(91219u <= var_2.a), false, arg_3.x)));
}

fn func_2(arg_0: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(global4.x)))), 1793f, -238f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-672f, _wgslsmith_f_op_f32(279f - global4.x))), global4.x, _wgslsmith_f_op_f32(f32(-1f) * -124f)), select(!select(!vec3<bool>(global2.x, false, false), !vec3<bool>(global2.x, global2.x, global2.x), select(vec3<bool>(global2.x, global2.x, false), vec3<bool>(global2.x, true, global2.x), vec3<bool>(true, true, global2.x))), func_3(Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-506f, global4.x, global4.x)), Struct_2(u_input.b.x)), Struct_3(vec3<f32>(2047f, 1597f, -317f), Struct_2(1u)), !select(vec3<bool>(false, global2.x, global2.x), vec3<bool>(false, global2.x, true), global2.x), select(select(vec4<bool>(global2.x, global2.x, global2.x, false), vec4<bool>(true, true, global2.x, false), global2.x), !vec4<bool>(global2.x, false, global2.x, global2.x), !vec4<bool>(false, true, false, global2.x))), select(vec3<bool>(!global2.x, false, u_input.c.x > u_input.c.x), !vec3<bool>(global2.x, global2.x, true), vec3<bool>(true, any(vec4<bool>(true, global2.x, global2.x, false)), global2.x)))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1527f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -962f) - _wgslsmith_f_op_f32(1052f - var_0.x))))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-global4.x));
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + 1000f))), _wgslsmith_f_op_f32(ceil(921f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, var_0.x, _wgslsmith_div_f32(global4.x, 811f))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global4.x, _wgslsmith_f_op_f32(-1000f * var_1.x), _wgslsmith_f_op_f32(-var_1.x)))))));
    let var_3 = !func_3(Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, 787f, var_1.x), vec3<f32>(557f, global4.x, global4.x), vec3<bool>(global2.x, global2.x, false))), vec3<f32>(-1285f, var_1.x, 182f)), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 21636u), 31u)]), Struct_3(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-421f, var_1.x, global4.x)))), Struct_2(0u)), !select(!vec3<bool>(global2.x, false, true), vec3<bool>(global2.x, global2.x, global2.x), all(vec2<bool>(global2.x, global2.x))), vec4<bool>(all(select(vec2<bool>(global2.x, true), vec2<bool>(false, global2.x), vec2<bool>(true, global2.x))), !(!global2.x), global2.x, !(global2.x & global2.x))).x;
    return ~arg_0 << (~6734u % 32u);
}

fn func_4(arg_0: bool, arg_1: vec4<i32>) -> vec2<bool> {
    global4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-995f, global4.x) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global4.x, -1238f), vec2<f32>(global4.x, global4.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, global4.x)))), vec2<bool>(true, true))));
    global1 = array<vec4<i32>, 31>();
    global3 = array<Struct_2, 31>();
    global4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-238f, global4.x) + vec2<f32>(global4.x, 1035f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global4.x, -651f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-525f, 1137f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-170f, -467f)))) - vec2<f32>(_wgslsmith_f_op_f32(-global4.x), -1000f)));
    var var_0 = -(~arg_1.x) ^ arg_1.x;
    return func_3(Struct_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, 1536f, 2269f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, -2218f, global4.x)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, global4.x, global4.x)))))), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(32204u, u_input.a.x), countOneBits(1u)), 31u)]), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-193f, -1000f, global4.x), vec3<f32>(-1184f, global4.x, global4.x)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(260f, global4.x, global4.x), vec3<f32>(-845f, global4.x, 141f))))), Struct_2(15042u)), vec3<bool>(!select(541f != global4.x, true, global2.x), 1i <= min(-2147483647i, arg_1.x), false), vec4<bool>(global2.x, true, true, true)).yz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    global2 = func_4(global2.x, _wgslsmith_mult_vec4_i32(vec4<i32>(func_1(firstLeadingBit(-1i)), -_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(2147483647i, -63359i)), _wgslsmith_div_i32(1i, ~1i), func_2(1i)), vec4<i32>(-1i) * -global1[_wgslsmith_index_u32(u_input.a.x, 31u)]));
    let var_1 = vec4<f32>(_wgslsmith_div_f32(global4.x, _wgslsmith_f_op_f32(-564f - _wgslsmith_f_op_f32(f32(-1f) * -1409f))), global4.x, _wgslsmith_f_op_f32(global4.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1305f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(121f - 1113f)))) + _wgslsmith_f_op_f32(-global4.x)));
    var var_2 = Struct_4(var_1.xz);
    let var_3 = _wgslsmith_sub_vec3_u32(global0[_wgslsmith_index_u32(~min(4294967295u, u_input.a.x) >> (46413u % 32u), 22u)], global0[_wgslsmith_index_u32(min(u_input.c.x, 4294967295u), 22u)]) & vec3<u32>(~u_input.b.x, ~u_input.c.x, 38375u);
    var var_4 = ~(~vec4<u32>(firstTrailingBit(u_input.a.x ^ var_3.x), _wgslsmith_clamp_u32(0u, ~u_input.b.x, ~var_3.x), 4294967295u, ~19680u));
    global3 = array<Struct_2, 31>();
    let var_5 = select(vec2<bool>(global2.x, !global2.x), select(vec2<bool>(global2.x, global2.x), !vec2<bool>(global2.x, func_4(global2.x, global1[_wgslsmith_index_u32(u_input.c.x, 31u)]).x), vec2<bool>(true, func_3(Struct_3(var_1.yxx, Struct_2(u_input.a.x)), Struct_3(vec3<f32>(-1000f, -868f, var_2.a.x), global3[_wgslsmith_index_u32(var_4.x, 31u)]), func_3(Struct_3(vec3<f32>(var_2.a.x, global4.x, 141f), global3[_wgslsmith_index_u32(4294967295u, 31u)]), Struct_3(var_1.xzz, global3[_wgslsmith_index_u32(1u, 31u)]), vec3<bool>(false, false, global2.x), vec4<bool>(false, false, global2.x, true)), select(vec4<bool>(global2.x, false, global2.x, true), vec4<bool>(false, true, global2.x, global2.x), global2.x)).x)), ~5826i <= func_1(-(~(-26867i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(u_input.b.x, min(~0u >> (_wgslsmith_mult_u32(107982u, var_3.x) % 32u), var_3.x), _wgslsmith_sub_u32(4294967295u, 4294967295u)), select(var_4.zw, vec2<u32>(var_3.x, var_4.x), false) & vec2<u32>(_wgslsmith_sub_u32(4294967295u, 45253u) | _wgslsmith_mult_u32(4294967295u, u_input.b.x), ~u_input.a.x), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-813f, 337f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.wz, var_1.xy, true))))))));
}

