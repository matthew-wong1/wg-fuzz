struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec4<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3> = array<i32, 3>(27695i, 2147483647i, 1i);

var<private> global1: array<bool, 25> = array<bool, 25>(true, true, false, false, false, true, false, true, true, false, true, true, true, true, false, true, false, true, true, true, true, false, false, true, true);

var<private> global2: array<vec3<i32>, 22> = array<vec3<i32>, 22>(vec3<i32>(4975i, 0i, -19422i), vec3<i32>(-24537i, 1i, -30454i), vec3<i32>(2147483647i, -1i, 2147483647i), vec3<i32>(36836i, 0i, 57553i), vec3<i32>(25770i, 8449i, -87122i), vec3<i32>(2147483647i, -4971i, -1i), vec3<i32>(0i, -17818i, 2147483647i), vec3<i32>(-47687i, 52072i, 8695i), vec3<i32>(-1i, -49668i, 52341i), vec3<i32>(0i, 2147483647i, 7721i), vec3<i32>(-1808i, -2691i, -1i), vec3<i32>(2147483647i, -22799i, 2147483647i), vec3<i32>(-1i, 2147483647i, -10595i), vec3<i32>(21266i, 0i, 8855i), vec3<i32>(26731i, -65582i, 84758i), vec3<i32>(0i, -38790i, 18769i), vec3<i32>(2147483647i, -36607i, -5357i), vec3<i32>(-22357i, 41253i, 2147483647i), vec3<i32>(33224i, 21917i, 2147483647i), vec3<i32>(-49046i, -27229i, i32(-2147483648)), vec3<i32>(-9794i, -27788i, 21732i), vec3<i32>(1i, i32(-2147483648), i32(-2147483648)));

var<private> global3: Struct_3 = Struct_3(true, Struct_1(-1i, vec3<f32>(368f, -183f, 1000f)), 66182u);

var<private> global4: array<Struct_2, 18>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: vec2<f32>) -> i32 {
    global4 = array<Struct_2, 18>();
    let var_0 = _wgslsmith_f_op_vec2_f32(global3.b.b.zz * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(arg_0 * vec2<f32>(global3.b.b.x, 1550f)))), _wgslsmith_f_op_vec2_f32(exp2(arg_2))))));
    let var_1 = all(arg_1.b.wx);
    return 16206i;
}

fn func_2() -> Struct_3 {
    let var_0 = firstTrailingBit(firstTrailingBit(-vec4<i32>(-1i, -33368i, -16545i, -1i) | vec4<i32>(global0[_wgslsmith_index_u32(23685u, 3u)] & -11101i, global3.b.a, i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(global2[_wgslsmith_index_u32(global3.c, 22u)], global2[_wgslsmith_index_u32(u_input.a.x, 22u)]))));
    global0 = array<i32, 3>();
    let var_1 = 29995i;
    let var_2 = Struct_4(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(~min(firstLeadingBit(global3.c), 66274u >> (u_input.a.x % 32u)), ~(~max(67463u, 1u))), 18u)], !(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], any(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 25u)], false)), true, true)), var_0, true);
    var var_3 = select(vec4<i32>(~(-global0[_wgslsmith_index_u32(1u, 3u)]), 2147483647i, max(func_3(global3.b.b.xy, var_2, vec2<f32>(global3.b.b.x, 1000f)), i32(-1i) * -577i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.c.x, -20854i) & var_0.yz, var_2.c.yw)) << ((~(vec4<u32>(0u, 62320u, 1u, global3.c) ^ u_input.a) << (u_input.a % vec4<u32>(32u))) % vec4<u32>(32u)), -vec4<i32>(var_1, 2147483647i, -9781i, ~(2627i >> (u_input.a.x % 32u))), var_2.b);
    return Struct_3(global1[_wgslsmith_index_u32(reverseBits(global3.c) >> (u_input.a.x % 32u), 25u)], global3.b, 0u);
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2034f, _wgslsmith_f_op_f32(round(arg_0.b.b.x)), -418f, _wgslsmith_f_op_f32(984f * arg_0.b.b.x)))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b.b.x, global3.b.b.x, arg_0.b.b.x, global3.b.b.x), vec4<f32>(arg_0.b.b.x, -262f, -2249f, 1000f)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3.b.b.x, global3.b.b.x, -218f, arg_0.b.b.x), vec4<f32>(586f, -147f, global3.b.b.x, global3.b.b.x)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-591f, arg_0.b.b.x, arg_0.b.b.x, global3.b.b.x))), vec4<f32>(arg_0.b.b.x, arg_0.b.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3.b.b.x - 437f), arg_0.b.b.x)), _wgslsmith_f_op_f32(-func_2().b.b.x)))));
    var var_1 = arg_0.b.a;
    global2 = array<vec3<i32>, 22>();
    var var_2 = arg_0.b.b.x;
    let var_3 = arg_0;
    return func_2();
}

fn func_1() -> Struct_3 {
    global4 = array<Struct_2, 18>();
    var var_0 = func_4(func_2());
    global4 = array<Struct_2, 18>();
    global1 = array<bool, 25>();
    global3 = Struct_3(!var_0.a, Struct_1(_wgslsmith_clamp_i32(abs(i32(-1i) * -1i), func_3(_wgslsmith_f_op_vec2_f32(-var_0.b.b.yz), Struct_4(global4[_wgslsmith_index_u32(0u, 18u)], vec4<bool>(true, var_0.a, true, global1[_wgslsmith_index_u32(0u, 25u)]), vec4<i32>(-47296i, 31593i, -5579i, global0[_wgslsmith_index_u32(0u, 3u)]), var_0.a), _wgslsmith_f_op_vec2_f32(-global3.b.b.xz)), max(func_4(Struct_3(true, Struct_1(-12540i, global3.b.b), var_0.c)).b.a, 0i)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-1353f - 101f), 112f, 1000f)))), ~(~max(1u, ~4294967295u)));
    return Struct_3(var_0.c >= ~1u, func_4(func_2()).b, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(false, true, !global3.a);
    global3 = func_1();
    var var_1 = func_1().c;
    let var_2 = _wgslsmith_f_op_f32(trunc(global3.b.b.x)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1788f + 750f) + -1058f);
    global0 = array<i32, 3>();
    let var_3 = vec2<i32>(10648i, 56866i);
    var var_4 = global3.b;
    var var_5 = -1053f;
    var var_6 = Struct_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2().b.b.x - -339f)), Struct_1(func_4(Struct_3(var_2, Struct_1(var_3.x, vec3<f32>(global3.b.b.x, var_4.b.x, global3.b.b.x)), 3298u)).b.a, global3.b.b)), !vec4<bool>(var_0.x, all(vec4<bool>(global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(global3.c, 25u)], global1[_wgslsmith_index_u32(u_input.a.x, 25u)], true)), global1[_wgslsmith_index_u32(global3.c, 25u)], !var_2), -_wgslsmith_mult_vec4_i32(vec4<i32>(abs(var_3.x), _wgslsmith_mod_i32(-2147483647i, -23944i), global3.b.a | global3.b.a, global0[_wgslsmith_index_u32(global3.c, 3u)]), vec4<i32>(1i, global3.b.a, -2147483647i, global0[_wgslsmith_index_u32(1391u, 3u)]) << (_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(1u, u_input.a.x, 1u, 0u)) % vec4<u32>(32u))), ~var_4.a > var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(~var_3, u_input.a, global3.b.b.x, ~u_input.a.zzx);
}

