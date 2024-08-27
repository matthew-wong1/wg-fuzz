struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec3<u32>,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 29>;

var<private> global1: Struct_1 = Struct_1(vec4<u32>(39277u, 0u, 46054u, 0u), true, vec3<u32>(0u, 4294967295u, 11709u), vec3<u32>(0u, 1u, 4294967295u), true);

var<private> global2: vec4<bool> = vec4<bool>(false, true, false, false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    var var_0 = arg_0;
    var var_1 = vec2<f32>(arg_0.c.x, _wgslsmith_f_op_f32(min(-326f, _wgslsmith_f_op_f32(-1000f + arg_2.c.x))));
    let var_2 = arg_0.a.e;
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1516f, arg_3.c.x, var_2))) + var_1.x))));
    let var_4 = true;
    return 7870u;
}

fn func_2() -> Struct_2 {
    global1 = Struct_1(global1.a, any(global2.xww), vec3<u32>(~min(~global1.d.x, ~u_input.a.x), ~_wgslsmith_mult_u32(u_input.a.x, 0u) | 31227u, 0u), global0[_wgslsmith_index_u32(max(u_input.a.x, u_input.a.x), 29u)], global2.x && true);
    global1 = Struct_1(vec4<u32>(global1.a.x, countOneBits(5570u & u_input.a.x), abs(23007u), 60976u), true, _wgslsmith_div_vec3_u32(~global0[_wgslsmith_index_u32(~u_input.a.x, 29u)] ^ vec3<u32>(6580u, u_input.a.x, u_input.a.x), vec3<u32>(countOneBits(u_input.a.x), ~abs(global1.c.x), ~17940u)), ~vec3<u32>(abs(33886u), func_3(Struct_2(Struct_1(global1.a, false, vec3<u32>(0u, 0u, global1.d.x), vec3<u32>(4294967295u, u_input.a.x, 0u), global1.e), Struct_1(vec4<u32>(global1.d.x, 50227u, global1.d.x, 15987u), global1.b, vec3<u32>(u_input.a.x, global1.a.x, 47552u), vec3<u32>(0u, 0u, global1.a.x), false), vec4<f32>(1127f, 569f, 1205f, 501f)), global1.d.x, Struct_2(Struct_1(global1.a, false, vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(u_input.a.x, 0u, global1.d.x), false), Struct_1(global1.a, true, vec3<u32>(global1.d.x, global1.d.x, 49441u), global0[_wgslsmith_index_u32(45933u, 29u)], global1.b), vec4<f32>(182f, 819f, 1215f, 1326f)), Struct_2(Struct_1(vec4<u32>(65857u, u_input.a.x, 39102u, global1.a.x), global2.x, global0[_wgslsmith_index_u32(u_input.a.x, 29u)], global1.c, global1.e), Struct_1(vec4<u32>(5396u, 39231u, global1.d.x, u_input.a.x), global1.e, global1.c, global1.c, false), vec4<f32>(251f, 1271f, 1000f, -415f))), global1.d.x) ^ _wgslsmith_add_vec3_u32(~global1.d, ~global0[_wgslsmith_index_u32(1u, 29u)]), !(u_input.a.x != 51060u));
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(-1059f, 2097f), 1f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-525f, 1215f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-657f, -588f)), global2.yz)), !(!global2.xw))), vec2<f32>(-1020f, _wgslsmith_f_op_f32(285f * 1f)))));
    let var_1 = vec4<i32>(-1i) * -reverseBits(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-23640i, 2441i, -18326i), vec3<i32>(5065i, -2147483647i, -1i)), 2147483647i, ~28346i, 0i));
    global1 = Struct_1(firstTrailingBit(max(vec4<u32>(~4294967295u, 53953u, 26861u, _wgslsmith_mod_u32(0u, global1.d.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 4294967295u), global1.a) >> (~vec4<u32>(25336u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)))), true, ~global1.d, _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(global1.c.x), ~0u), 29u)], ~(~vec3<u32>(4294967295u, 24873u, 20203u))), vec3<u32>(_wgslsmith_add_u32(global1.c.x, _wgslsmith_div_u32(u_input.a.x, 0u)), 4294967295u, firstTrailingBit(~4294967295u))), false);
    return Struct_2(Struct_1(~(vec4<u32>(10472u, 4294967295u, 60721u, u_input.a.x) >> (vec4<u32>(54462u, global1.a.x, global1.c.x, global1.c.x) % vec4<u32>(32u))) >> (vec4<u32>(_wgslsmith_mod_u32(71024u, u_input.a.x), 5704u, global1.a.x, global1.d.x << (47147u % 32u)) % vec4<u32>(32u)), any(!global2.xx), vec3<u32>(abs(_wgslsmith_add_u32(u_input.a.x, u_input.a.x)), 19304u, abs(_wgslsmith_dot_vec2_u32(global1.a.xw, u_input.a))), ((vec3<u32>(8254u, global1.c.x, 26795u) >> (global0[_wgslsmith_index_u32(1u, 29u)] % vec3<u32>(32u))) >> (~vec3<u32>(41396u, global1.a.x, u_input.a.x) % vec3<u32>(32u))) ^ _wgslsmith_mult_vec3_u32(select(global0[_wgslsmith_index_u32(u_input.a.x, 29u)], vec3<u32>(26244u, global1.a.x, global1.d.x), global2.x), _wgslsmith_mod_vec3_u32(global1.a.zzx, vec3<u32>(56755u, 1u, u_input.a.x))), any(vec4<bool>(any(vec4<bool>(global1.e, global2.x, false, false)), true, !global1.b, global1.b & global1.b))), Struct_1(~global1.a, all(global2.ywz), abs((vec3<u32>(u_input.a.x, 36360u, 48502u) & global1.c) << (_wgslsmith_clamp_vec3_u32(global1.c, global1.c, vec3<u32>(u_input.a.x, 0u, 843u)) % vec3<u32>(32u))), ~(~vec3<u32>(1u, 48242u, 38707u)) & global1.c, !(_wgslsmith_f_op_f32(-var_0.x) > var_0.x)), vec4<f32>(544f, _wgslsmith_f_op_f32(1247f + _wgslsmith_f_op_f32(f32(-1f) * -721f)), var_0.x, var_0.x));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: Struct_2) -> bool {
    let var_0 = -vec4<i32>(_wgslsmith_dot_vec2_i32(~abs(vec2<i32>(11269i, -1i)), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), -vec2<i32>(47505i, 62890i))), ~countOneBits(~30430i), 1i, max(-1i, ~(~2147483647i)));
    let var_1 = !(!global2.xy);
    var var_2 = func_2().b;
    var var_3 = func_2();
    var var_4 = ~(-vec3<i32>(-2147483647i, -1i, var_0.x)) << (vec3<u32>(u_input.a.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(global1.a.zx ^ vec2<u32>(u_input.a.x, 1u), var_3.b.d.xy), 1u), ~(min(arg_2.b.c.x, var_2.a.x) >> (arg_2.a.a.x % 32u))) % vec3<u32>(32u));
    return true;
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    global1 = Struct_1(global1.a, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.x, 4294967295u), arg_0), arg_0 ^ vec2<u32>(arg_0.x, u_input.a.x)), ~vec2<u32>(990u, u_input.a.x)) <= global1.d.x, countOneBits(~(~global1.d)), ~(firstLeadingBit(vec3<u32>(1u, 27787u, u_input.a.x)) | _wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(58066u, arg_0.x, global1.c.x)), ~global0[_wgslsmith_index_u32(1u, 29u)])), true);
    global1 = Struct_1(abs(countOneBits(~firstTrailingBit(vec4<u32>(u_input.a.x, global1.c.x, u_input.a.x, arg_0.x)))), (~abs(-1i) << (select(arg_0.x, ~u_input.a.x, any(vec4<bool>(false, true, global1.b, global2.x))) % 32u)) < ~(-2147483647i), firstTrailingBit(global1.c), vec3<u32>(select(~1u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(global1.d, vec3<u32>(47068u, arg_0.x, arg_0.x)), _wgslsmith_div_u32(arg_0.x, global1.c.x)), func_4(select(vec4<bool>(true, global2.x, global2.x, true), vec4<bool>(global2.x, true, false, global2.x), global1.e), _wgslsmith_f_op_vec3_f32(vec3<f32>(-242f, -1266f, -877f) - vec3<f32>(-1272f, 159f, -635f)), func_2())), ~92443u, 0u), global1.e && true);
    global1 = Struct_1(firstTrailingBit(min(~vec4<u32>(5809u, 32803u, 1520u, 73340u), vec4<u32>(arg_0.x, 0u, reverseBits(0u), select(u_input.a.x, 4294967295u, global2.x)))), func_2().b.b, ~(~(global0[_wgslsmith_index_u32(global1.c.x ^ 71526u, 29u)] & min(vec3<u32>(9100u, u_input.a.x, 4294967295u), global1.c))), select(_wgslsmith_mult_vec3_u32(vec3<u32>(global1.c.x, u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(global1.d.x, 29u)]), vec3<u32>(1u, u_input.a.x ^ 62339u, arg_0.x), all(vec4<bool>(true, global2.x, false, true))) | firstTrailingBit(firstTrailingBit(vec3<u32>(u_input.a.x, 86439u, 52788u))), select(any(vec4<bool>(true, select(global1.b, global2.x, false), true, true | global1.b)), global2.x, all(global2.xwz) & true));
    var var_0 = func_2();
    global1 = var_0.a;
    return Struct_2(func_2().a, Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(~global1.d.x, abs(1u), u_input.a.x, arg_0.x), vec4<u32>(_wgslsmith_clamp_u32(53298u, 1u, arg_0.x), var_0.a.d.x, 4294967295u, _wgslsmith_mult_u32(var_0.b.c.x, u_input.a.x)), global1.a), all(!vec3<bool>(var_0.a.b, global1.e, var_0.b.b)), ~(~global1.a.wwy), vec3<u32>(var_0.a.c.x, reverseBits(4294967295u), 1u), true), var_0.c);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32) -> bool {
    global2 = vec4<bool>(true, !(!select(true, global2.x, global1.b) != true), !all(vec4<bool>(arg_1.b, false, arg_0.a.e, arg_0.a.e)) && global1.e, global1.e);
    let var_0 = abs(global1.a.yyz);
    return global1.e;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 29>();
    let var_0 = Struct_1(_wgslsmith_add_vec4_u32(~firstLeadingBit(vec4<u32>(u_input.a.x, 46784u, 33412u, u_input.a.x)), abs((vec4<u32>(0u, 6102u, 73874u, 81568u) & global1.a) & vec4<u32>(u_input.a.x, 1u, 37276u, u_input.a.x))), any(vec4<bool>(true, func_5(func_1(vec2<u32>(4294967295u, 12814u)), Struct_1(vec4<u32>(u_input.a.x, 1u, 9544u, global1.a.x), false, vec3<u32>(33137u, 0u, 1498u), vec3<u32>(u_input.a.x, 4294967295u, global1.d.x), false), 1u), true, true)), vec3<u32>(32657u, func_3(Struct_2(Struct_1(global1.a, global2.x, global0[_wgslsmith_index_u32(27333u, 29u)], vec3<u32>(u_input.a.x, 41833u, u_input.a.x), true), func_2().b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1117f, -1026f, 943f, 528f))), countOneBits(global1.c.x), Struct_2(Struct_1(global1.a, false, global0[_wgslsmith_index_u32(global1.c.x, 29u)], global1.c, global1.e), func_2().a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1505f, -1310f, 370f, -643f))), Struct_2(func_2().a, Struct_1(vec4<u32>(u_input.a.x, 1986u, u_input.a.x, u_input.a.x), false, vec3<u32>(global1.d.x, 4294967295u, u_input.a.x), global0[_wgslsmith_index_u32(u_input.a.x, 29u)], global2.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 726f, -1000f, -1956f)))), _wgslsmith_div_u32(~u_input.a.x, ~global1.a.x)), global1.d, global1.d.x != u_input.a.x);
    global2 = !select(select(select(!vec4<bool>(true, true, global2.x, false), select(vec4<bool>(global1.b, global1.e, global1.b, false), vec4<bool>(global2.x, false, global1.e, true), vec4<bool>(var_0.e, global1.b, false, true)), true), select(!vec4<bool>(true, false, var_0.b, global1.b), select(vec4<bool>(true, true, global2.x, false), vec4<bool>(global1.b, global2.x, var_0.e, var_0.b), vec4<bool>(true, global2.x, global1.e, true)), any(vec3<bool>(global1.e, false, global2.x))), func_5(func_1(global1.d.xy), Struct_1(global1.a, global2.x, var_0.d, global1.c, true), ~global1.d.x)), vec4<bool>(true, true, any(global2.yxw) || true, global2.x), vec4<bool>(global1.b, select(true, var_0.e != false, true), true, true));
    var var_1 = ~countOneBits(_wgslsmith_add_vec2_u32(global1.d.yx >> (vec2<u32>(u_input.a.x, var_0.a.x) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_add_u32(var_0.c.x, u_input.a.x), 40199u)));
    let var_2 = func_1(_wgslsmith_add_vec2_u32(u_input.a, u_input.a & vec2<u32>(~10275u, max(var_0.a.x, 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.x, countOneBits(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(20938i, 86309i, 0i) << (0u % 32u), (i32(-1i) * -40679i) >> (_wgslsmith_add_u32(16074u, var_0.a.x) % 32u))));
}

