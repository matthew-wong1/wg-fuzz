struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 5> = array<bool, 5>(false, true, true, true, false);

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec3<f32>(111f, -159f, -469f), 1u, true), Struct_1(vec3<f32>(-1137f, 1281f, 780f), 4294967295u, false), Struct_1(vec3<f32>(-275f, 977f, 2136f), 1u, false), Struct_1(vec3<f32>(-554f, -1143f, 1392f), 27139u, true), Struct_1(vec3<f32>(-1000f, 276f, -236f), 10262u, false), Struct_1(vec3<f32>(449f, 1286f, 949f), 4294967295u, false), Struct_1(vec3<f32>(-803f, 1650f, -711f), 12269u, false), Struct_1(vec3<f32>(-977f, 231f, -1323f), 1522u, true), Struct_1(vec3<f32>(-214f, -497f, -482f), 4294967295u, true), Struct_1(vec3<f32>(506f, 1336f, 1549f), 4294967295u, false), Struct_1(vec3<f32>(306f, 1968f, -432f), 17314u, true), Struct_1(vec3<f32>(-460f, -121f, -100f), 42058u, false), Struct_1(vec3<f32>(559f, -387f, -1891f), 111025u, false), Struct_1(vec3<f32>(1211f, -622f, 484f), 17424u, true), Struct_1(vec3<f32>(-810f, -169f, 667f), 0u, true), Struct_1(vec3<f32>(853f, 186f, -833f), 1u, false), Struct_1(vec3<f32>(454f, -124f, 2207f), 38285u, false), Struct_1(vec3<f32>(1000f, 636f, -1036f), 0u, true), Struct_1(vec3<f32>(503f, 328f, -656f), 21921u, true), Struct_1(vec3<f32>(656f, -710f, 1000f), 30845u, true), Struct_1(vec3<f32>(-609f, 712f, -1523f), 1u, false), Struct_1(vec3<f32>(503f, 524f, -1000f), 30599u, false));

var<private> global3: vec3<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec4<bool>) -> vec2<i32> {
    global2 = array<Struct_1, 22>();
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, u_input.b ^ ~_wgslsmith_div_u32(global0.b ^ u_input.b, 0u)), 22u)];
    var var_1 = _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b >> (abs(5645u) % 32u), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(1u, u_input.b, 3360u)), u_input.b), 0u, 1u), vec4<u32>(u_input.b ^ ~reverseBits(4294967295u), var_0.b, ~(~u_input.b) & max(16117u, global0.b), 35884u & countOneBits(var_0.b)));
    var var_2 = global2[_wgslsmith_index_u32(~u_input.b, 22u)];
    var var_3 = global2[_wgslsmith_index_u32(~min(abs(1u), var_1.x), 22u)];
    return _wgslsmith_add_vec2_i32(-vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(28944i, u_input.c, u_input.c, -1811i), vec4<i32>(u_input.c, -7678i, u_input.c, 9970i)), u_input.a), select(~(~(~vec2<i32>(u_input.a, u_input.c))), abs(abs(-vec2<i32>(2147483647i, u_input.c))), var_2.c));
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: i32) -> Struct_2 {
    let var_0 = ~(~func_3(Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, 1191f) - global0.a.zz)), vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(global0.a.x + 439f), global0.a.x, _wgslsmith_f_op_f32(sign(global0.a.x))), !vec4<bool>(true, arg_1, false, arg_1)));
    var var_1 = true;
    var var_2 = !select(select(select(vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.b, 5u)], false), vec4<bool>(false, false, arg_1, true), vec4<bool>(global1[_wgslsmith_index_u32(global0.b, 5u)], true, false, true)), select(vec4<bool>(true, true, global3.x, false), vec4<bool>(global0.c, true, arg_1, global3.x), select(vec4<bool>(arg_1, global3.x, true, true), vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.b, 5u)], false), true)), (global3.x | global1[_wgslsmith_index_u32(4294967295u, 5u)]) && (true & global1[_wgslsmith_index_u32(1u, 5u)])), vec4<bool>(false, global0.c, ~u_input.a <= abs(var_0.x), ~arg_0.x < arg_0.x), vec4<bool>(select(true, !arg_1, true), all(select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 5u)], global1[_wgslsmith_index_u32(u_input.b, 5u)], true), vec4<bool>(true, global3.x, global1[_wgslsmith_index_u32(arg_0.x, 5u)], true), vec4<bool>(false, global0.c, false, global1[_wgslsmith_index_u32(135034u, 5u)]))), arg_1, select(true, false, arg_1)));
    let var_3 = 4294967295u;
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global0.a), global0.a, vec3<bool>(true, true, true))))), u_input.b, any(!select(var_2.zzw, select(vec3<bool>(true, var_2.x, global0.c), vec3<bool>(true, global1[_wgslsmith_index_u32(20755u, 5u)], arg_1), global1[_wgslsmith_index_u32(var_3, 5u)]), var_2.wwx)));
    return Struct_2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1008f), _wgslsmith_f_op_f32(global0.a.x - var_4.a.x)))));
}

fn func_1() -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(402f + 501f));
    global3 = select(!vec3<bool>(true, !all(global3.yx), global3.x), select(select(vec3<bool>(true, global3.x, global1[_wgslsmith_index_u32(0u, 5u)] && false), !vec3<bool>(true, global3.x, global1[_wgslsmith_index_u32(26305u, 5u)]), global0.c), select(vec3<bool>(!global0.c, false, global0.a.x <= -443f), !(!vec3<bool>(global3.x, global3.x, true)), select(!vec3<bool>(global1[_wgslsmith_index_u32(global0.b, 5u)], global3.x, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), !(!(!vec3<bool>(global0.c, global0.c, global3.x)))), !(!(_wgslsmith_dot_vec3_i32(vec3<i32>(26347i, 49611i, 2147483647i), vec3<i32>(-30274i, u_input.c, u_input.c)) != -u_input.a)));
    global3 = select(vec3<bool>(global1[_wgslsmith_index_u32(7076u, 5u)], global3.x, !(!(!global3.x))), vec3<bool>(select(!(!global0.c), global3.x | select(global1[_wgslsmith_index_u32(u_input.b, 5u)], false, global0.c), _wgslsmith_f_op_f32(trunc(global0.a.x)) == _wgslsmith_f_op_f32(global0.a.x * 1697f)), any(!global3.zx), !any(vec3<bool>(global0.c, global1[_wgslsmith_index_u32(21388u, 5u)], false)) && true), all(vec4<bool>(641f >= _wgslsmith_f_op_f32(-global0.a.x), !global1[_wgslsmith_index_u32(0u, 5u)], u_input.b != select(28370u, global0.b, global0.c), all(!global3.zz))));
    let var_1 = func_2(~(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 36251u, 1u, global0.b), vec4<u32>(global0.b, global0.b, 92269u, u_input.b)))), global0.a.x == global0.a.x, i32(-1i) * -6669i);
    let var_2 = -24996i;
    return -(-(~vec4<i32>(u_input.c, var_2, -1i, 6163i)) ^ (~vec4<i32>(-1i, 43985i, u_input.a, -54660i) | vec4<i32>(countOneBits(u_input.c), u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, var_2), vec2<i32>(-2147483647i, 2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.a), vec2<i32>(u_input.c, u_input.c)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = false && (-706f != global0.a.x);
    let var_1 = arg_1.zz;
    let var_2 = false;
    var var_3 = vec2<u32>(91614u, firstLeadingBit(32718u));
    var var_4 = arg_0.x;
    return global2[_wgslsmith_index_u32(~(~countOneBits(3978u)), 22u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.a.x)) + global0.a.x))), -1360f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x * global0.a.x)), -761f), func_1(), func_2(abs(vec4<u32>(0u << (u_input.b % 32u), global0.b >> (1u % 32u), 1u, _wgslsmith_add_u32(1u, u_input.b))), global0.a.x < -218f, 2147483647i));
    global0 = global2[_wgslsmith_index_u32(func_4(vec4<f32>(-1148f, 378f, 808f, var_0.a.x), vec4<i32>(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-u_input.a, _wgslsmith_div_i32(u_input.a, u_input.c)), select(firstLeadingBit(vec2<i32>(-30361i, u_input.c)), abs(vec2<i32>(-1i, 2905i)), vec2<bool>(true, true))), reverseBits(u_input.c), _wgslsmith_sub_i32(min(func_3(Struct_2(vec2<f32>(-1192f, -1000f)), vec4<f32>(-1766f, global0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(true, false, global3.x, var_0.c)).x, firstTrailingBit(-18938i)), firstTrailingBit(u_input.c << (global0.b % 32u)))), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1483f, global0.a.x) - vec2<f32>(449f, global0.a.x)) + vec2<f32>(260f, -1000f))))).b, 22u)];
    global0 = func_4(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x - var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1284f, 1391f) + _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -223f))), _wgslsmith_sub_vec4_i32(select(vec4<i32>(u_input.c, u_input.a, func_1().x, i32(-1i) * -2147483647i), vec4<i32>(~u_input.a, func_3(Struct_2(vec2<f32>(-1275f, global0.a.x)), vec4<f32>(-428f, global0.a.x, -1630f, global0.a.x), vec4<bool>(var_0.c, global3.x, global3.x, true)).x, ~u_input.a, -u_input.c), !select(global3.x, var_0.c, global0.c)), countOneBits(func_1())), func_2(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, var_0.b, global0.b, 1u), vec4<u32>(global0.b, var_0.b, 22933u, 1u)) & vec4<u32>(13866u, u_input.b, 64369u, 54160u), ~(vec4<u32>(var_0.b, 41302u, var_0.b, u_input.b) & vec4<u32>(global0.b, 92174u, 31846u, var_0.b)), _wgslsmith_sub_vec4_u32(min(vec4<u32>(global0.b, 53794u, 4294967295u, 57608u), vec4<u32>(global0.b, global0.b, 29536u, 28853u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 23025u, u_input.b, u_input.b), vec4<u32>(42054u, var_0.b, global0.b, global0.b)))), global0.c, u_input.c));
    let var_1 = false;
    var var_2 = u_input.b;
    var var_3 = _wgslsmith_sub_vec4_i32(max(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(12090i, -19748i, -1i, -14005i), vec4<i32>(u_input.a, u_input.a, u_input.c, -38422i), vec4<i32>(u_input.a, u_input.c, 2147483647i, u_input.c)), -vec4<i32>(11462i, u_input.c, u_input.c, u_input.c)), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(53821i, 1i, 0i, 19602i), vec4<i32>(u_input.c, -20912i, 2147483647i, -23154i)), vec4<i32>(-7802i, 79206i, -30321i, u_input.a))), -vec4<i32>(u_input.c, 0i, -15737i, u_input.a)), abs(max(~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), -vec4<i32>(u_input.c, u_input.a, u_input.c, 0i))) << (vec4<u32>(~global0.b, 23978u, 1u, 5347u) % vec4<u32>(32u)));
    global1 = array<bool, 5>();
    var var_4 = -32094i;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.yx, ~(var_0.b << (36932u % 32u)), _wgslsmith_mod_u32(1u, ~_wgslsmith_add_u32(firstTrailingBit(31717u), 4294967295u & global0.b)), ~(~(~(~vec2<u32>(u_input.b, u_input.b)))));
}

