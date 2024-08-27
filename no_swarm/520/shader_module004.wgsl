struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: Struct_3,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<u32>,
    c: u32,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18> = array<f32, 18>(156f, 757f, -893f, -2529f, -751f, 183f, 1265f, -1391f, 1798f, -1772f, 1000f, -652f, 1043f, -567f, -531f, 797f, -746f, -1642f);

var<private> global1: array<Struct_1, 18>;

var<private> global2: Struct_1 = Struct_1(1i, 11099u, vec2<i32>(26438i, 9368i));

var<private> global3: vec2<i32>;

var<private> global4: vec4<bool>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1) -> bool {
    global0 = array<f32, 18>();
    var var_0 = arg_0.b.wyw;
    var var_1 = !select(!select(vec3<bool>(true, true, true), select(vec3<bool>(global4.x, true, true), vec3<bool>(global4.x, global4.x, global4.x), global4.wzw), select(global4.zwy, global4.zwz, true)), select(select(vec3<bool>(false, global4.x, false), !global4.xyx, global4.zzz), vec3<bool>(true, true, all(global4.wxx)), false), !vec3<bool>(global4.x, true, true));
    global2 = Struct_1(i32(-1i) * -2147483647i, _wgslsmith_clamp_u32(43678u, ~(~39016u) ^ _wgslsmith_div_u32(51582u >> (arg_0.d.e % 32u), 0u), ~arg_0.d.c.x), arg_1.c);
    var_0 = arg_0.b.zzw;
    return global4.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> vec2<f32> {
    global4 = arg_1;
    global4 = vec4<bool>(all(select(vec2<bool>(func_3(Struct_4(Struct_3(27946u, Struct_2(global1[_wgslsmith_index_u32(global2.b, 18u)], Struct_1(2147483647i, global2.b, u_input.a), vec2<u32>(arg_2.b, 662u), vec4<u32>(4294967295u, arg_0.b, 43327u, arg_2.b), arg_2.b)), vec4<i32>(arg_0.a, 21755i, 13759i, arg_2.c.x), Struct_3(arg_0.b, Struct_2(arg_0, Struct_1(u_input.a.x, global2.b, arg_0.c), vec2<u32>(arg_0.b, 0u), vec4<u32>(global2.b, arg_2.b, 22325u, 9156u), 1u)), Struct_2(Struct_1(41273i, 1u, vec2<i32>(5431i, u_input.a.x)), Struct_1(-1i, 0u, vec2<i32>(-1i, 2136i)), vec2<u32>(global2.b, 0u), vec4<u32>(91344u, 4294967295u, 1u, arg_2.b), arg_2.b)), Struct_1(-2147483647i, 17167u, vec2<i32>(-2147483647i, 48226i))), false), vec2<bool>(any(global4.zz), any(vec4<bool>(global4.x, global4.x, true, arg_1.x))), false)), false, !global4.x, select(arg_1.x, !(!arg_1.x), any(select(select(arg_1.zw, vec2<bool>(global4.x, global4.x), arg_1.x), arg_1.zx, !arg_1.zz))));
    global3 = arg_0.c ^ arg_2.c;
    global4 = vec4<bool>(global4.x, all(!select(vec3<bool>(true, false, arg_1.x), !vec3<bool>(true, arg_1.x, global4.x), arg_0.b >= 4294967295u)), 1i < arg_0.c.x, arg_1.x != true);
    global4 = !arg_1;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(arg_2.b, 18u)], global0[_wgslsmith_index_u32(0u, 18u)]) - vec2<f32>(global0[_wgslsmith_index_u32(global2.b, 18u)], global0[_wgslsmith_index_u32(global2.b, 18u)])))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(315f, global0[_wgslsmith_index_u32(arg_0.b, 18u)]))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 416f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-327f, 545f)) + vec2<f32>(-215f, 1569f)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_5, arg_2: Struct_1, arg_3: bool) -> f32 {
    let var_0 = arg_1.d.c;
    let var_1 = vec2<i32>(37162i, arg_2.a >> (_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(var_0.b.d.zxw << (arg_1.d.c.b.d.yzw % vec3<u32>(32u)), vec3<u32>(92116u, 17838u, 16179u)), _wgslsmith_mult_vec3_u32(vec3<u32>(43679u, 25638u, arg_2.b), vec3<u32>(arg_1.d.a.b.e, global2.b, 4294967295u) ^ var_0.b.d.ywy)) % 32u));
    var var_2 = Struct_5(arg_1.a, ~_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_1.d.a.b.d.zzx, var_0.b.d.wwz & var_0.b.d.xxw, vec3<u32>(global2.b, arg_1.a.b, 10497u)), arg_1.d.d.d.yxx), 33027u, arg_1.d);
    var var_3 = min(~22777u ^ arg_2.b, _wgslsmith_dot_vec4_u32(~(~var_2.d.a.b.d) ^ var_0.b.d, ~(~(~vec4<u32>(19272u, var_2.b.x, var_2.c, 83842u)))));
    global4 = select(!select(vec4<bool>(any(global4.wzy), true, true, true), !(!vec4<bool>(global4.x, true, true, false)), select(!vec4<bool>(arg_3, arg_3, global4.x, arg_3), vec4<bool>(global4.x, true, arg_3, true), vec4<bool>(global4.x, false, true, true))), vec4<bool>(arg_3, !(!func_3(Struct_4(arg_1.d.a, var_2.d.b, arg_1.d.c, arg_1.d.c.b), Struct_1(-10673i, 740u, vec2<i32>(6055i, global3.x)))), 5917u == _wgslsmith_mod_u32(27171u, global2.b), false), (global4.x || arg_3) || !arg_3);
    return global0[_wgslsmith_index_u32(global2.b, 18u)];
}

fn func_5(arg_0: f32, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-1625f, _wgslsmith_f_op_f32(trunc(-156f)), any(vec4<bool>(false, arg_1.x, arg_1.x, false)))), _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(69493u, 18u)]))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(531f + 1000f), _wgslsmith_f_op_f32(min(-1108f, global0[_wgslsmith_index_u32(0u, 18u)]))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0, 336f), vec2<f32>(2419f, -196f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(113657u, 18u)], arg_0)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -620f) + vec2<f32>(arg_0, 1670f))) * vec2<f32>(_wgslsmith_f_op_f32(trunc(-806f)), arg_0))), true && global4.x));
    let var_1 = select(vec4<bool>(arg_1.x, true, true || arg_1.x, false), select(vec4<bool>(global4.x, arg_1.x && !arg_1.x, !(global3.x != global3.x), global4.x & arg_1.x), !vec4<bool>(all(global4.zxy), false | global4.x, true, true), ((97416u & global2.b) >= ~1u) && select(any(vec4<bool>(global4.x, arg_1.x, global4.x, true)), true | global4.x, all(vec2<bool>(global4.x, true)))), !vec4<bool>(!(arg_1.x && arg_1.x), global4.x, true, arg_1.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(global2.b, 18u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))), var_0.x, _wgslsmith_f_op_f32(-915f + -758f))));
    var var_3 = Struct_2(global1[_wgslsmith_index_u32(28653u, 18u)], global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global2.b, 1u), ~vec3<u32>(global2.b, global2.b, global2.b))) ^ firstTrailingBit(17645u), 18u)], vec2<u32>(1u, abs(select(global2.b >> (4294967295u % 32u), ~global2.b, true))), reverseBits(~vec4<u32>(global2.b, 28199u, global2.b, global2.b) | vec4<u32>(global2.b, 1u, global2.b, global2.b)), _wgslsmith_clamp_u32(1u, ~0u, 19044u));
    let var_4 = min(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(-30387i, 6509i, 0i), vec3<i32>(-1i, global3.x, global3.x)), abs(~vec3<i32>(-2147483647i, -1i, 0i))), vec3<i32>(countOneBits(global3.x), u_input.a.x, ~1i), countOneBits(~(~vec3<i32>(2147483647i, global2.a, 19339i)))), firstTrailingBit(vec3<i32>(-48400i, global3.x, ~1i)));
    return Struct_1(_wgslsmith_div_i32(abs(-abs(-1i)), -1i), ~4294967295u, _wgslsmith_mult_vec2_i32(vec2<i32>(var_4.x, -(~(-2147483647i))), ~vec2<i32>(~(-45481i), reverseBits(var_4.x))));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(-27619i, 4294967295u, u_input.a), vec4<bool>(global4.x, true, false, true), global1[_wgslsmith_index_u32(1u, 18u)])) - arg_2.xx), Struct_5(global1[_wgslsmith_index_u32(global2.b >> (4294967295u % 32u), 18u)], min(vec3<u32>(global2.b, 147378u, 25940u), vec3<u32>(global2.b, global2.b, global2.b)), ~global2.b, Struct_4(Struct_3(132809u, Struct_2(global1[_wgslsmith_index_u32(63511u, 18u)], Struct_1(global2.a, 40186u, vec2<i32>(-13874i, -653i)), vec2<u32>(4294967295u, 4034u), vec4<u32>(25982u, 8814u, global2.b, global2.b), 0u)), vec4<i32>(1i, -2147483647i, 1i, -1i), Struct_3(global2.b, Struct_2(global1[_wgslsmith_index_u32(global2.b, 18u)], global1[_wgslsmith_index_u32(33890u, 18u)], vec2<u32>(1u, global2.b), vec4<u32>(global2.b, global2.b, global2.b, 4294967295u), global2.b)), Struct_2(global1[_wgslsmith_index_u32(global2.b, 18u)], global1[_wgslsmith_index_u32(global2.b, 18u)], vec2<u32>(4294967295u, 4294967295u), vec4<u32>(global2.b, global2.b, 56114u, global2.b), 7619u))), Struct_1(1i, 1u, ~u_input.a), false)) - _wgslsmith_f_op_f32(-arg_2.x)), vec2<bool>(u_input.a.x <= max(global3.x | -47476i, global3.x), arg_1));
    var var_1 = Struct_2(Struct_1(-abs(26727i & global3.x), (reverseBits(global2.b) >> (~global2.b % 32u)) << (1u % 32u), u_input.a), func_5(_wgslsmith_f_op_f32(round(arg_0)), vec2<bool>(func_3(Struct_4(Struct_3(var_0.b, Struct_2(global1[_wgslsmith_index_u32(global2.b, 18u)], global1[_wgslsmith_index_u32(4294967295u, 18u)], vec2<u32>(global2.b, var_0.b), vec4<u32>(global2.b, 18533u, 29345u, var_0.b), var_0.b)), vec4<i32>(8530i, -2147483647i, u_input.a.x, 1i), Struct_3(var_0.b, Struct_2(global1[_wgslsmith_index_u32(51904u, 18u)], Struct_1(u_input.a.x, 1u, u_input.a), vec2<u32>(global2.b, 0u), vec4<u32>(global2.b, global2.b, global2.b, 53947u), 4294967295u)), Struct_2(global1[_wgslsmith_index_u32(var_0.b, 18u)], global1[_wgslsmith_index_u32(var_0.b, 18u)], vec2<u32>(1u, var_0.b), vec4<u32>(60767u, 24155u, global2.b, var_0.b), 4294967295u)), func_5(arg_0, global4.zy)), true)), _wgslsmith_add_vec2_u32(select(_wgslsmith_add_vec2_u32(select(vec2<u32>(global2.b, 0u), vec2<u32>(1u, 65918u), true), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, global2.b), vec2<u32>(var_0.b, 0u))), vec2<u32>(_wgslsmith_mult_u32(72933u, var_0.b), var_0.b), true), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(8659u, 43162u), countOneBits(vec2<u32>(global2.b, global2.b)), vec2<u32>(global2.b, var_0.b))), ~vec4<u32>(_wgslsmith_mod_u32(global2.b, global2.b), countOneBits(var_0.b), ~1u, firstLeadingBit(25444u >> (global2.b % 32u))), firstTrailingBit(max(global2.b, max(min(var_0.b, 3576u), 0u << (global2.b % 32u)))));
    var_1 = Struct_2(Struct_1(var_0.c.x, 4294967295u, var_0.c), Struct_1(global3.x, global2.b, u_input.a >> (vec2<u32>(global2.b, var_0.b) % vec2<u32>(32u))), max(vec2<u32>(4294967295u, var_1.b.b), vec2<u32>(_wgslsmith_sub_u32(19345u, max(var_1.b.b, global2.b)), min(global2.b, var_1.b.b & 1u))), ~(~firstTrailingBit(~vec4<u32>(4294967295u, 43450u, global2.b, var_0.b))), 90661u);
    var var_2 = var_1.d & select(~(~vec4<u32>(34839u, 47428u, var_1.c.x, var_1.a.b)), ~vec4<u32>(~global2.b, var_1.e, 0u, _wgslsmith_mult_u32(var_0.b, var_0.b)), true);
    var var_3 = Struct_2(Struct_1(-reverseBits(func_5(-650f, global4.xw).c.x), ~var_0.b, vec2<i32>(-1i) * -(vec2<i32>(6589i, 20196i) ^ vec2<i32>(var_1.b.a, var_0.a))), func_5(890f, vec2<bool>(true, false)), select(abs(vec2<u32>(global2.b, 0u)), ~vec2<u32>(firstLeadingBit(var_2.x), var_1.d.x), false), vec4<u32>(var_0.b, ~global2.b, global2.b, var_2.x), var_0.b);
    return Struct_1(var_3.a.a, var_0.b, -var_0.c);
}

fn func_6(arg_0: f32, arg_1: Struct_3) -> bool {
    var var_0 = reverseBits(arg_1.b.b.c);
    let var_1 = global4.yxz;
    let var_2 = 50895u;
    var_0 = -arg_1.b.b.c;
    global4 = vec4<bool>((global0[_wgslsmith_index_u32(_wgslsmith_add_u32(max(global2.b, 0u), _wgslsmith_sub_u32(var_2, global2.b)), 18u)] >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(532f * 1089f)))) && all(global4.wzy), var_1.x, !(all(vec2<bool>(global4.x, false)) && func_3(Struct_4(arg_1, vec4<i32>(1i, 0i, -43055i, u_input.a.x), arg_1, Struct_2(Struct_1(u_input.a.x, 3225u, vec2<i32>(-1i, arg_1.b.b.a)), Struct_1(-21720i, var_2, global2.c), vec2<u32>(46985u, arg_1.a), arg_1.b.d, arg_1.b.b.b)), arg_1.b.a)), true);
    return global4.x;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = vec4<bool>((true || !(u_input.a.x >= 25542i)) | any(global4.xyz), false && global4.x, select(!(!any(vec4<bool>(true, true, true, global4.x))), !(global4.x | any(vec4<bool>(global4.x, false, global4.x, global4.x))), true & (global2.b > 1u)), func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(1u, 18u)])) - 1366f), Struct_3(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.b, 1u, global2.b) | vec3<u32>(32673u, 37009u, global2.b), vec3<u32>(6923u, global2.b, global2.b)), Struct_2(global1[_wgslsmith_index_u32(50975u | global2.b, 18u)], func_1(global0[_wgslsmith_index_u32(1u, 18u)], true, vec3<f32>(-1456f, global0[_wgslsmith_index_u32(global2.b, 18u)], global0[_wgslsmith_index_u32(global2.b, 18u)])), vec2<u32>(global2.b, 4294967295u) << (vec2<u32>(global2.b, 4294967295u) % vec2<u32>(32u)), vec4<u32>(global2.b, global2.b, 0u, 4294967295u) | vec4<u32>(46560u, 1u, global2.b, 0u), 4294967295u))));
    global0 = array<f32, 18>();
    let var_0 = Struct_1(countOneBits(firstLeadingBit(abs(u_input.a.x))), reverseBits(_wgslsmith_div_u32(reverseBits(~4294967295u), ~0u)), vec2<i32>(-1i) * -vec2<i32>(u_input.a.x, 23525i));
    global2 = Struct_1(u_input.a.x, ~global2.b, global2.c);
    global1 = array<Struct_1, 18>();
    let var_1 = Struct_5(func_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-264f - -1000f))))), true && all(vec2<bool>(true, true)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec2<f32>(global0[_wgslsmith_index_u32(global2.b, 18u)], -1199f), Struct_5(var_0, vec3<u32>(var_0.b, global2.b, global2.b), global2.b, Struct_4(Struct_3(global2.b, Struct_2(global1[_wgslsmith_index_u32(21026u, 18u)], Struct_1(-2147483647i, var_0.b, u_input.a), vec2<u32>(1u, 1u), vec4<u32>(global2.b, 1u, global2.b, global2.b), var_0.b)), vec4<i32>(-1i, var_0.c.x, -34608i, var_0.c.x), Struct_3(0u, Struct_2(Struct_1(2220i, global2.b, var_0.c), Struct_1(global3.x, global2.b, vec2<i32>(16949i, u_input.a.x)), vec2<u32>(1u, 40557u), vec4<u32>(2194u, 0u, global2.b, global2.b), 4294967295u)), Struct_2(Struct_1(-7023i, global2.b, u_input.a), global1[_wgslsmith_index_u32(0u, 18u)], vec2<u32>(global2.b, 38304u), vec4<u32>(4294967295u, 1u, global2.b, 105444u), var_0.b))), Struct_1(-12872i, 0u, var_0.c), global4.x))), 846f, global0[_wgslsmith_index_u32(~var_0.b, 18u)])), ~vec3<u32>(~4294967295u, _wgslsmith_dot_vec4_u32(max(vec4<u32>(global2.b, 19306u, var_0.b, var_0.b), vec4<u32>(var_0.b, 18179u, global2.b, global2.b)), vec4<u32>(57045u, 59238u, 1u, 34640u)), ~global2.b | var_0.b), _wgslsmith_mult_u32(~var_0.b, 1u) << (~_wgslsmith_add_u32(max(global2.b, var_0.b), 4294967295u) % 32u), Struct_4(Struct_3(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(global2.b, 1u, 0u), global2.b, global2.b), Struct_2(func_1(1000f, global4.x, vec3<f32>(1488f, -606f, global0[_wgslsmith_index_u32(global2.b, 18u)])), func_5(global0[_wgslsmith_index_u32(var_0.b, 18u)], vec2<bool>(global4.x, global4.x)), ~vec2<u32>(7925u, var_0.b), vec4<u32>(global2.b, global2.b, 0u, 81912u), 0u)), -vec4<i32>(firstTrailingBit(0i), min(global3.x, var_0.a), 1i, u_input.a.x << (global2.b % 32u)), Struct_3(~var_0.b, Struct_2(func_5(2634f, vec2<bool>(global4.x, false)), Struct_1(-2147483647i, 33344u, vec2<i32>(1i, global2.a)), vec2<u32>(97901u, 4294967295u), vec4<u32>(global2.b, global2.b, 22486u, 0u) << (vec4<u32>(global2.b, 1u, 79544u, 72071u) % vec4<u32>(32u)), _wgslsmith_add_u32(109764u, var_0.b))), Struct_2(func_5(_wgslsmith_f_op_f32(f32(-1f) * -454f), vec2<bool>(global4.x, global4.x)), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.a, 22685i), u_input.a), abs(var_0.b), var_0.c), firstLeadingBit(vec2<u32>(1u, global2.b)) | vec2<u32>(45682u, global2.b), ~(vec4<u32>(global2.b, global2.b, var_0.b, 68762u) >> (vec4<u32>(var_0.b, var_0.b, var_0.b, 60373u) % vec4<u32>(32u))), _wgslsmith_dot_vec2_u32(vec2<u32>(global2.b, 29292u) | vec2<u32>(28885u, 0u), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.b, var_0.b), vec2<u32>(global2.b, 4294967295u))))));
    global4 = select(vec4<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1233f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.b, 18u)] + global0[_wgslsmith_index_u32(var_0.b, 18u)])) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(global2.b, 18u)], -371f)))), !((global2.c.x ^ -50076i) > (u_input.a.x >> (4549u % 32u))), !global4.x, !(!global4.x)), !vec4<bool>((global0[_wgslsmith_index_u32(3937u, 18u)] <= -1055f) | !global4.x, global4.x, any(global4.zy), !(!global4.x)), select(select(vec4<bool>(true, true, var_0.b > global2.b, global4.x), select(select(vec4<bool>(global4.x, global4.x, false, global4.x), vec4<bool>(true, false, global4.x, false), true), vec4<bool>(true, global4.x, false, global4.x), vec4<bool>(true, false, false, global4.x)), select(select(vec4<bool>(true, true, global4.x, true), vec4<bool>(true, false, false, false), global4.x), vec4<bool>(global4.x, global4.x, true, true), true || global4.x)), !vec4<bool>(global4.x, func_6(1000f, var_1.d.a), false, false), global4.x));
    var var_2 = var_1.d.c.b;
    let x = u_input.a;
    s_output = StorageBuffer(global2.c.x);
}

