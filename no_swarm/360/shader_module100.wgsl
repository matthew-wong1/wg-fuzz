struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec3<u32>,
    d: vec2<f32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22>;

var<private> global1: array<u32, 24> = array<u32, 24>(4294967295u, 4294967295u, 4294967295u, 5910u, 4294967295u, 9629u, 1u, 29921u, 0u, 47123u, 4294967295u, 20068u, 17349u, 1u, 45773u, 57744u, 33017u, 18768u, 45221u, 1u, 136u, 4294967295u, 46212u, 4294967295u);

var<private> global2: array<bool, 3> = array<bool, 3>(true, true, false);

var<private> global3: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec2<f32>(1557f, -747f), -476f, vec3<u32>(4294967295u, 1u, 15585u), vec2<f32>(-1435f, -358f), vec3<f32>(-732f, 285f, 521f)));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: vec2<f32>) -> vec4<bool> {
    var var_0 = select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(global2[_wgslsmith_index_u32(89036u, 3u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 24u)], 24u)], 3u)], false), vec3<bool>(false, false, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(84856u, 24u)], 3u)]), true), !vec3<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 24u)], 24u)], 3u)], global2[_wgslsmith_index_u32(24379u, 3u)], global2[_wgslsmith_index_u32(u_input.a.x, 3u)])), !select(select(vec3<bool>(false, false, global2[_wgslsmith_index_u32(4565u, 3u)]), vec3<bool>(false, false, true), global2[_wgslsmith_index_u32(u_input.a.x, 3u)]), !vec3<bool>(true, false, global2[_wgslsmith_index_u32(u_input.a.x, 3u)]), all(vec2<bool>(global2[_wgslsmith_index_u32(52571u, 3u)], true))), !select(!vec3<bool>(true, global2[_wgslsmith_index_u32(15756u, 3u)], global2[_wgslsmith_index_u32(u_input.a.x, 3u)]), vec3<bool>(true, true, false), 4294967295u >= u_input.a.x)), !(!(!select(vec3<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 24u)], 24u)], 3u)], false, true), vec3<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 24u)], 3u)], global2[_wgslsmith_index_u32(26359u, 3u)], global2[_wgslsmith_index_u32(49704u, 3u)]), true))), !vec3<bool>(true, !global2[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, u_input.a.x), 3u)], true));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.x), 1425f))), _wgslsmith_f_op_f32(-arg_2.x), reverseBits(~(~vec3<u32>(u_input.a.x, global1[_wgslsmith_index_u32(1u, 24u)], global1[_wgslsmith_index_u32(4294967295u, 24u)]))), arg_2, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, arg_2.x, arg_2.x) + vec3<f32>(-878f, -183f, arg_2.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-554f, arg_2.x, 1000f)))))), global3[_wgslsmith_index_u32(32638u, 1u)], Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_2, arg_2))), _wgslsmith_f_op_f32(floor(arg_2.x)), vec3<u32>(u_input.a.x, global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 24u)], 24u)], 24u)], ~u_input.a.x), arg_2, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 459f, arg_2.x), vec3<f32>(102f, -610f, -1636f)))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(593f, arg_2.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-arg_2.x), true | global2[_wgslsmith_index_u32(u_input.a.x, 3u)])), vec3<u32>(_wgslsmith_div_u32(u_input.a.x, 4294967295u), max(u_input.a.x, global1[_wgslsmith_index_u32(1u, 24u)]), ~global1[_wgslsmith_index_u32(u_input.a.x, 24u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1318f, arg_2.x) + vec2<f32>(1454f, arg_2.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(350f, 770f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-787f, -104f, arg_2.x))))), vec2<u32>(u_input.a.x, _wgslsmith_add_u32(30971u, u_input.a.x))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1275f, _wgslsmith_div_f32(292f, 342f))), 1931f, _wgslsmith_mult_vec3_u32(~(~vec3<u32>(u_input.a.x, u_input.a.x, global1[_wgslsmith_index_u32(4294967295u, 24u)])), ~vec3<u32>(4294967295u, 13404u, u_input.a.x)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.x, 1422f), vec2<f32>(arg_2.x, arg_2.x), var_0.yy)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(140f, arg_2.x, 296f)))));
    global1 = array<u32, 24>();
    let var_2 = global0[_wgslsmith_index_u32(u_input.a.x, 22u)];
    let var_3 = global0[_wgslsmith_index_u32(var_1.a.c.x, 22u)];
    return !select(select(select(!vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 3u)], true, false), !vec4<bool>(var_0.x, var_0.x, true, var_0.x), !vec4<bool>(global2[_wgslsmith_index_u32(31279u, 3u)], true, var_0.x, false)), vec4<bool>(!global2[_wgslsmith_index_u32(1u, 3u)], true, var_0.x, true), !select(vec4<bool>(var_0.x, global2[_wgslsmith_index_u32(var_2.b.c.x, 3u)], false, global2[_wgslsmith_index_u32(0u, 3u)]), vec4<bool>(global2[_wgslsmith_index_u32(53812u, 3u)], true, var_0.x, var_0.x), vec4<bool>(false, true, global2[_wgslsmith_index_u32(5204u, 3u)], global2[_wgslsmith_index_u32(0u, 3u)]))), vec4<bool>(var_1.b.c.x > ~87543u, any(!var_0.xx), !select(var_0.x, var_0.x, false), false), vec4<bool>(!all(vec3<bool>(true, false, false)), true, any(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 3u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 24u)], 3u)])), !any(vec4<bool>(false, true, var_0.x, var_0.x))));
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: vec2<i32>, arg_3: Struct_1) -> u32 {
    global0 = array<Struct_2, 22>();
    global3 = array<Struct_1, 1>();
    global0 = array<Struct_2, 22>();
    global0 = array<Struct_2, 22>();
    return global1[_wgslsmith_index_u32(~9875u, 24u)];
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: i32) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(~arg_1.x, 22u)];
    var var_1 = global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~func_4(var_0.b.d, all(func_3(u_input.b, vec3<i32>(-51673i, 1i, 272i), var_0.a.d)), firstLeadingBit(min(vec2<i32>(-4850i, arg_2), vec2<i32>(-7059i, -1i))), global3[_wgslsmith_index_u32(countOneBits(~4294967295u), 1u)]) << (~1u % 32u), 24u)], 1u)];
    global1 = array<u32, 24>();
    global0 = array<Struct_2, 22>();
    var var_2 = _wgslsmith_sub_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(23473u, 24u)], max(4294967295u | global1[_wgslsmith_index_u32(19518u, 24u)], ~71766u) << (44513u % 32u)), var_1.c.x);
    return _wgslsmith_sub_u32(48546u, global1[_wgslsmith_index_u32(0u, 24u)]);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<f32>) -> f32 {
    var var_0 = global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32((u_input.a.x >> (func_2(u_input.b.x, u_input.a, 11319i) % 32u)) << (~(~u_input.a.x) % 32u), firstTrailingBit(~(~u_input.a.x))), 24u)], 1u)];
    var var_1 = Struct_3(Struct_1(var_0.e.yz, 126f, select(var_0.c, _wgslsmith_mod_vec3_u32(var_0.c, firstTrailingBit(var_0.c)), select(!vec3<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 24u)], 24u)], 3u)], global2[_wgslsmith_index_u32(60850u, 3u)], true), vec3<bool>(true, true, true), !global2[_wgslsmith_index_u32(u_input.a.x, 3u)])), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-arg_1.zw), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.x, 1902f), arg_1.yw, vec2<bool>(global2[_wgslsmith_index_u32(2806u, 3u)], global2[_wgslsmith_index_u32(var_0.c.x, 3u)])))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1343f), _wgslsmith_f_op_f32(var_0.e.x * var_0.b), 359f))), Struct_1(arg_1.xw, var_0.b, abs(~var_0.c) & ~(~var_0.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1387f, arg_1.x)), vec2<f32>(-832f, -212f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-279f, arg_1.x, 1097f), var_0.e, vec3<bool>(global2[_wgslsmith_index_u32(978u, 3u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.c.x, 24u)], 24u)], 3u)], false))) * arg_1.yxy))), Struct_2(global3[_wgslsmith_index_u32(~(~(~4294967295u)), 1u)], global3[_wgslsmith_index_u32(32826u, 1u)], ~_wgslsmith_add_vec2_u32(var_0.c.yx, vec2<u32>(var_0.c.x, 4294967295u)) << (~(vec2<u32>(17879u, global1[_wgslsmith_index_u32(u_input.a.x, 24u)]) ^ var_0.c.zy) % vec2<u32>(32u))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a.x))), -416f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -810f)))), ~var_0.c, var_0.a, _wgslsmith_div_vec3_f32(arg_1.yyx, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.e.x, 376f, var_0.a.x), vec3<f32>(var_0.d.x, arg_1.x, var_0.b), vec3<bool>(false, global2[_wgslsmith_index_u32(0u, 3u)], global2[_wgslsmith_index_u32(0u, 3u)]))), vec3<f32>(arg_1.x, arg_1.x, 1449f)))));
    global3 = array<Struct_1, 1>();
    let var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(1u ^ global1[_wgslsmith_index_u32(var_1.b.c.x, 24u)], ~0u, _wgslsmith_sub_u32(~var_1.b.c.x, ~3361u)), 0u, 16322u), _wgslsmith_div_vec3_u32(vec3<u32>(select(var_0.c.x, abs(42193u), all(vec3<bool>(true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 24u)], 3u)], global2[_wgslsmith_index_u32(var_1.c.c.x, 3u)]))), var_0.c.x, 16168u), vec3<u32>(countOneBits(var_1.a.c.x >> (var_1.a.c.x % 32u)), ~(~var_1.b.c.x), ~69325u)));
    global2 = array<bool, 3>();
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-368f)), _wgslsmith_f_op_f32(func_1(~vec4<i32>(2147483647i, 2147483647i, -10610i, -2147483647i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1516f, 357f, 2116f, -946f)))))), true));
    global2 = array<bool, 3>();
    var var_1 = !select(vec4<bool>(false, global2[_wgslsmith_index_u32(44562u, 3u)], true, global2[_wgslsmith_index_u32(1u, 3u)]), func_3(reverseBits(u_input.b & vec3<i32>(u_input.e, -2147483647i, u_input.d)), _wgslsmith_div_vec3_i32(u_input.b, vec3<i32>(102326i, 2147483647i, u_input.c)) & _wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, u_input.e, 2147483647i)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1384f), -379f)), !any(select(vec3<bool>(global2[_wgslsmith_index_u32(3172u, 3u)], false, false), vec3<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(49816u, 24u)], 24u)], 3u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(72576u, 24u)], 3u)], true), false)));
    global2 = array<bool, 3>();
    global0 = array<Struct_2, 22>();
    var var_2 = (any(var_1.yw) & var_1.x) || false;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, 264f, vec3<u32>(func_2(-14767i, vec2<u32>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, u_input.a.x), 24u)], _wgslsmith_clamp_u32(u_input.a.x, 1u, 715u)), _wgslsmith_mult_i32(-u_input.c, abs(46109i))), func_4(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1458f, var_0))), true, _wgslsmith_clamp_vec2_i32(vec2<i32>(18876i, -29901i), vec2<i32>(u_input.b.x, u_input.d), u_input.b.xx), global3[_wgslsmith_index_u32(0u, 1u)]) | firstLeadingBit(~u_input.a.x), _wgslsmith_sub_u32(_wgslsmith_mod_u32(20265u, u_input.a.x) ^ 1u, ~61591u)), abs(vec3<i32>(-countOneBits(u_input.c), -34357i, -1i)), min(vec3<u32>(global1[_wgslsmith_index_u32(29450u, 24u)], 61998u, abs(4294967295u) << (global1[_wgslsmith_index_u32(~u_input.a.x, 24u)] % 32u)), ~vec3<u32>(1u, 1u, 1u) >> (~(~vec3<u32>(60418u, 31824u, global1[_wgslsmith_index_u32(1u, 24u)])) % vec3<u32>(32u))));
}

