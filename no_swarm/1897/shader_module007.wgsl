struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec3<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(true), 19932i);

var<private> global1: array<bool, 21>;

var<private> global2: Struct_2 = Struct_2(Struct_1(true), i32(-2147483648));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    let var_0 = global0.a;
    global0 = Struct_2(Struct_1(all(select(select(arg_0.wzx, arg_0.yzz, arg_0.yyz), arg_0.xzw, all(arg_0)))), 60349i);
    var var_1 = vec3<i32>(_wgslsmith_mult_i32(~(-max(-1i, -17289i)), global2.b), _wgslsmith_sub_i32(_wgslsmith_div_i32(1i, global2.b), (global2.b ^ 32503i) >> (~_wgslsmith_clamp_u32(u_input.a.x, 1u, u_input.a.x) % 32u)), 0i);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), vec3<f32>(1077f, 469f, 444f))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(539f - -855f), _wgslsmith_f_op_f32(-375f + _wgslsmith_f_op_f32(ceil(-958f))), -1334f) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1000f, 108f) * vec3<f32>(1297f, -374f, -365f))))));
    var var_3 = Struct_4(Struct_2(global0.a, _wgslsmith_div_i32(var_1.x, u_input.c.x) << (~select(4708u, 71541u, false) % 32u)));
    return 1u;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: Struct_3) -> Struct_2 {
    global1 = array<bool, 21>();
    let var_0 = -735f;
    global1 = array<bool, 21>();
    let var_1 = reverseBits(-36099i) >> (func_3(vec4<bool>(any(select(arg_2.c, arg_2.c, global0.a.a)), global1[_wgslsmith_index_u32(4294967295u >> (1u % 32u), 21u)], false, true)) % 32u);
    global0 = arg_2.d;
    return arg_2.d;
}

fn func_4(arg_0: Struct_2) -> vec4<f32> {
    let var_0 = reverseBits(countOneBits(1u << (~_wgslsmith_mult_u32(u_input.a.x, 4294967295u) % 32u)));
    global0 = Struct_2(func_2(-_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.c.xz, vec2<i32>(1i, 18393i), u_input.b.yz), vec2<i32>(arg_0.b, arg_0.b)), !vec3<bool>(global0.a.a, global1[_wgslsmith_index_u32(var_0, 21u)], any(vec2<bool>(true, false))), Struct_3(countOneBits(vec3<u32>(32175u, 4294967295u, 77178u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(513f, -1000f, -279f, 201f)), select(vec3<bool>(true, global1[_wgslsmith_index_u32(32119u, 21u)], true), select(vec3<bool>(true, global2.a.a, arg_0.a.a), vec3<bool>(false, global2.a.a, true), global0.a.a), vec3<bool>(true, arg_0.a.a, true)), func_2(countOneBits(u_input.c.zy), !vec3<bool>(global0.a.a, global0.a.a, global2.a.a), Struct_3(u_input.a, vec4<f32>(1000f, -173f, -490f, 256f), vec3<bool>(true, false, global0.a.a), arg_0)))).a, global2.b);
    global2 = Struct_2(arg_0.a, func_2(abs(u_input.c.yz) ^ u_input.b.xy, select(select(select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 21u)], global2.a.a, arg_0.a.a), vec3<bool>(true, false, arg_0.a.a), vec3<bool>(global1[_wgslsmith_index_u32(1u, 21u)], false, global1[_wgslsmith_index_u32(4294967295u, 21u)])), select(vec3<bool>(global2.a.a, true, false), vec3<bool>(false, global2.a.a, false), global1[_wgslsmith_index_u32(u_input.a.x, 21u)]), true), !select(vec3<bool>(arg_0.a.a, global2.a.a, false), vec3<bool>(global0.a.a, global1[_wgslsmith_index_u32(var_0, 21u)], false), vec3<bool>(false, false, arg_0.a.a)), !(!global1[_wgslsmith_index_u32(10692u, 21u)])), Struct_3(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0, 0u, 0u), countOneBits(vec3<u32>(u_input.a.x, var_0, u_input.a.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(434f, -1002f, 472f, 210f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(860f, 570f, -1178f, 570f)), select(vec4<bool>(false, true, arg_0.a.a, global2.a.a), vec4<bool>(arg_0.a.a, false, true, true), vec4<bool>(true, false, true, true)))), !select(vec3<bool>(false, false, arg_0.a.a), vec3<bool>(true, false, global1[_wgslsmith_index_u32(var_0, 21u)]), arg_0.a.a), func_2(vec2<i32>(u_input.b.x, arg_0.b) | u_input.c.yx, select(vec3<bool>(true, false, arg_0.a.a), vec3<bool>(true, true, arg_0.a.a), false), Struct_3(vec3<u32>(var_0, u_input.a.x, 4294967295u), vec4<f32>(1652f, 432f, -148f, 778f), vec3<bool>(true, global2.a.a, true), arg_0)))).b);
    let var_1 = var_0;
    global0 = arg_0;
    return vec4<f32>(-1451f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-544f, -1211f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(608f, -1484f) * _wgslsmith_f_op_f32(1417f * 478f)))) - -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -531f), 1f)) + -411f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1143f))))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: i32) -> Struct_3 {
    global0 = Struct_2(func_2(u_input.b.zx, vec3<bool>(false, true, true), Struct_3(vec3<u32>(4294967295u, 21902u, _wgslsmith_clamp_u32(35073u, 1u, u_input.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-810f, -1484f, arg_1.x, arg_1.x)))), select(vec3<bool>(true, true, global0.a.a), vec3<bool>(global1[_wgslsmith_index_u32(32169u, 21u)], arg_0.a, false), true), Struct_2(Struct_1(global2.a.a), -35710i))).a, 0i);
    let var_0 = _wgslsmith_f_op_f32(-arg_1.x);
    global1 = array<bool, 21>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec4_f32(func_4(func_2(_wgslsmith_mod_vec2_i32(vec2<i32>(36326i, global0.b), u_input.c.yz), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], true, false), Struct_3(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), vec4<f32>(-600f, var_0, -2136f, 327f), vec3<bool>(global0.a.a, false, true), Struct_2(global0.a, global2.b))))).xxz)));
    var var_2 = func_2(reverseBits(min(firstTrailingBit(u_input.b.yz), u_input.b.xz)), select(!vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 21u)], any(vec3<bool>(global1[_wgslsmith_index_u32(0u, 21u)], false, true))), vec3<bool>(_wgslsmith_f_op_f32(round(var_1.x)) >= _wgslsmith_div_f32(1000f, -1499f), any(select(vec3<bool>(global2.a.a, global1[_wgslsmith_index_u32(4294967295u, 21u)], true), vec3<bool>(false, global1[_wgslsmith_index_u32(27007u, 21u)], arg_0.a), vec3<bool>(true, false, global2.a.a))), -48381i > (0i | global0.b)), !vec3<bool>(true, global0.a.a | true, arg_0.a)), Struct_3(~(~vec3<u32>(u_input.a.x, 71353u, 5531u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1 * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(539f, -776f, -1096f, var_1.x), vec4<f32>(var_1.x, var_0, 675f, var_0))))), !vec3<bool>(all(vec4<bool>(global2.a.a, global2.a.a, global1[_wgslsmith_index_u32(u_input.a.x, 21u)], false)), false, arg_0.a), Struct_2(func_2(vec2<i32>(global2.b, global0.b), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 21u)], arg_0.a), Struct_3(u_input.a, arg_1, vec3<bool>(true, false, global0.a.a), Struct_2(Struct_1(false), 2675i))).a, global0.b)));
    return Struct_3(select(firstTrailingBit(u_input.a & u_input.a) | ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), abs(vec3<u32>(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), ~0u, ~4294967295u)), true), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-271f, _wgslsmith_f_op_f32(f32(-1f) * -819f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.x, -803f)) * _wgslsmith_f_op_f32(f32(-1f) * -204f)))), _wgslsmith_f_op_f32(-497f - -1735f), _wgslsmith_f_op_f32(var_1.x * 355f), var_1.x), !vec3<bool>(var_0 > var_1.x, false, all(!vec4<bool>(true, true, var_2.a.a, arg_0.a))), func_2(u_input.c.zx, select(!vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 21u)], false), vec3<bool>(global2.a.a, global0.a.a, true), select(!vec3<bool>(var_2.a.a, false, arg_0.a), !vec3<bool>(global1[_wgslsmith_index_u32(1u, 21u)], global0.a.a, var_2.a.a), true)), Struct_3(u_input.a, vec4<f32>(2259f, 1388f, _wgslsmith_f_op_f32(floor(var_0)), _wgslsmith_f_op_f32(-arg_1.x)), vec3<bool>(var_2.a.a, select(global2.a.a, global0.a.a, global1[_wgslsmith_index_u32(7005u, 21u)]), true), Struct_2(func_2(vec2<i32>(global0.b, -489i), vec3<bool>(arg_0.a, false, global0.a.a), Struct_3(vec3<u32>(u_input.a.x, 34084u, 1u), arg_1, vec3<bool>(false, true, global2.a.a), Struct_2(global0.a, global0.b))).a, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2, -38864i), u_input.b.yx)))));
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = func_5(global2.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(func_2(vec2<i32>(18614i, -1i), vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 21u)], false), Struct_3(u_input.a, vec4<f32>(arg_0.x, 218f, arg_0.x, arg_0.x), vec3<bool>(true, false, global0.a.a), Struct_2(Struct_1(true), global2.b))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -1231f, arg_0.x, 824f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-469f, 844f, arg_0.x, arg_0.x) + vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -337f)))) * vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -819f))), _wgslsmith_f_op_f32(-arg_0.x))), -19060i);
    let var_1 = ~vec4<u32>(select(1u & u_input.a.x, func_3(select(vec4<bool>(global0.a.a, global0.a.a, false, false), vec4<bool>(true, true, global0.a.a, true), vec4<bool>(false, global2.a.a, global0.a.a, false))), abs(u_input.a.x) == ~77758u), _wgslsmith_div_u32(~u_input.a.x, 4452u), ~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(65789u, u_input.a.x, u_input.a.x), u_input.a), ~u_input.a), ~1u);
    let var_2 = select(all(!vec3<bool>(!var_0.c.x, global0.a.a, false)), var_0.d.a.a, false);
    global2 = func_2(u_input.b.xy, vec3<bool>(!var_0.d.a.a, global2.a.a, any(!vec4<bool>(var_2, global2.a.a, true, global2.a.a))), func_5(Struct_1(!global1[_wgslsmith_index_u32(u_input.a.x, 21u)]), var_0.b, reverseBits(-(i32(-1i) * -11333i))));
    global2 = func_2(vec2<i32>(global2.b, -_wgslsmith_mult_i32(var_0.d.b, 3197i)), !(!select(!var_0.c, var_0.c, !var_0.c)), func_5(global0.a, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_0.b)), _wgslsmith_f_op_vec4_f32(-var_0.b)), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.x, arg_0.x, 776f, 537f), var_0.b)), global0.b << (~u_input.a.x % 32u)));
    return global0.a;
}

fn func_6(arg_0: Struct_1) -> bool {
    global2 = Struct_2(Struct_1(global2.a.a), ~((i32(-1i) * -30435i) & _wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, -25751i, -2147483647i, -1i), firstLeadingBit(vec4<i32>(global2.b, 1i, -25913i, u_input.b.x)))));
    global2 = func_2(select(-vec2<i32>(i32(-1i) * -2147483647i, global2.b), ~firstLeadingBit(vec2<i32>(u_input.c.x, global0.b)), global2.a.a), vec3<bool>(all(vec2<bool>(arg_0.a, global2.a.a)) & true, global1[_wgslsmith_index_u32(func_3(vec4<bool>(false, false, !global2.a.a, !global1[_wgslsmith_index_u32(0u, 21u)])), 21u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(u_input.a.x & u_input.a.x), 411u), 21u)]), Struct_3(~_wgslsmith_mult_vec3_u32(~u_input.a, abs(vec3<u32>(u_input.a.x, 41050u, 24692u))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-518f, 1007f, _wgslsmith_f_op_f32(step(620f, 822f)), _wgslsmith_f_op_f32(f32(-1f) * -1478f)))), func_5(func_5(func_5(Struct_1(arg_0.a), vec4<f32>(-1000f, -1098f, 817f, -2250f), u_input.b.x).d.a, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1043f, -257f, 1256f, -874f))), 0i).d.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1424f, -1017f, 2015f, -336f), vec4<f32>(-1000f, -296f, 220f, 483f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(270f, -487f, -1509f, 429f))), -_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(global0.b, global2.b, 14870i))).c, func_2(vec2<i32>(-1i) * -u_input.b.yx, !select(vec3<bool>(true, global2.a.a, arg_0.a), vec3<bool>(arg_0.a, global1[_wgslsmith_index_u32(4294967295u, 21u)], false), vec3<bool>(global2.a.a, global2.a.a, false)), func_5(global0.a, vec4<f32>(-784f, -401f, -1677f, -977f), ~(-15339i)))));
    var var_0 = vec4<i32>(-13920i, func_5(func_2(-_wgslsmith_add_vec2_i32(vec2<i32>(49405i, global0.b), vec2<i32>(u_input.b.x, global0.b)), vec3<bool>(func_5(Struct_1(false), vec4<f32>(-1000f, -789f, -1128f, -277f), -18896i).c.x, !global0.a.a, true), func_5(global0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 684f, -158f, -185f) + vec4<f32>(-328f, 1932f, 366f, 1206f)), ~u_input.c.x)).a, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_2(global0.a, 1i)))))), u_input.b.x).d.b, _wgslsmith_add_i32(global0.b, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.b & -6096i, min(-2147483647i, 0i), _wgslsmith_mod_i32(global0.b, -22314i)), -vec3<i32>(-2147483647i, global2.b, global0.b))), firstLeadingBit(1i));
    var var_1 = Struct_3(vec3<u32>(1u, 0u, _wgslsmith_div_u32(u_input.a.x, u_input.a.x)) | ~(~firstTrailingBit(u_input.a)), vec4<f32>(1f, 1f, 1f, 1f), vec3<bool>(any(!(!vec2<bool>(global2.a.a, true))), true, global1[_wgslsmith_index_u32(u_input.a.x << (u_input.a.x % 32u), 21u)] || false), Struct_2(func_5(Struct_1(u_input.c.x < global2.b), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(761f, -1239f, 750f, -335f) + vec4<f32>(224f, -320f, 363f, 977f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(183f, 704f, 1458f, 673f)), true)), 27793i).d.a, u_input.b.x));
    var var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(func_3(!select(vec4<bool>(var_1.d.a.a, var_1.d.a.a, arg_0.a, global1[_wgslsmith_index_u32(var_1.a.x, 21u)]), vec4<bool>(false, arg_0.a, global2.a.a, global2.a.a), false)), u_input.a.x, ~u_input.a.x, ~_wgslsmith_add_u32(_wgslsmith_add_u32(4294967295u, 0u), ~var_1.a.x)), abs(~firstLeadingBit(vec4<u32>(6805u, u_input.a.x, 1u, 32291u))) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 4294967295u, var_1.a.x), vec4<u32>(var_1.a.x, var_1.a.x, 1u, 28823u), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), vec4<u32>(32775u, u_input.a.x, u_input.a.x, var_1.a.x)), 0u, _wgslsmith_mod_u32(55510u, var_1.a.x), max(u_input.a.x, var_1.a.x))) % vec4<u32>(32u)));
    return var_1.d.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_6(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-394f, -1000f)))));
    var var_1 = firstTrailingBit(~_wgslsmith_clamp_vec4_u32((vec4<u32>(4294967295u, u_input.a.x, 0u, 1u) >> (vec4<u32>(1u, u_input.a.x, u_input.a.x, 44274u) % vec4<u32>(32u))) << (_wgslsmith_sub_vec4_u32(vec4<u32>(39714u, u_input.a.x, u_input.a.x, 4258u), vec4<u32>(u_input.a.x, 15753u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), ~vec4<u32>(2020u, 4294967295u, 1u, 1u), ~min(vec4<u32>(u_input.a.x, 70211u, 54368u, u_input.a.x), vec4<u32>(0u, u_input.a.x, 334u, u_input.a.x))));
    var var_2 = Struct_4(Struct_2(Struct_1(select(func_1(vec2<f32>(2385f, -557f)).a, false, func_2(u_input.c.zx, vec3<bool>(true, true, var_0), Struct_3(vec3<u32>(var_1.x, u_input.a.x, 6929u), vec4<f32>(-139f, 395f, -244f, 1685f), vec3<bool>(false, true, global0.a.a), Struct_2(Struct_1(false), 4457i))).a.a)), _wgslsmith_mult_i32(35056i, ~(~31714i))));
    let var_3 = Struct_2(func_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-651f)) + _wgslsmith_f_op_f32(-1233f + -414f)), 931f)), global0.b);
    let var_4 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(min(~vec2<u32>(~0u, ~u_input.a.x), u_input.a.xz << (select(func_5(Struct_1(true), vec4<f32>(723f, -1000f, -544f, -872f), var_2.a.b).a.yx, vec2<u32>(var_1.x, 0u), !global0.a.a) % vec2<u32>(32u))), vec3<f32>(505f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1354f - -411f), _wgslsmith_div_f32(230f, 228f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1016f) * -446f)), global2.b, select(u_input.c, _wgslsmith_sub_vec3_i32(abs(u_input.c), _wgslsmith_mod_vec3_i32(-vec3<i32>(52105i, global2.b, -2147483647i), u_input.b)), select(!func_5(var_3.a, vec4<f32>(1194f, 228f, 164f, 577f), var_2.a.b).c, func_5(var_3.a, _wgslsmith_f_op_vec4_f32(func_4(var_3)), firstLeadingBit(-2147483647i)).c, true)), 4294967295u);
}

