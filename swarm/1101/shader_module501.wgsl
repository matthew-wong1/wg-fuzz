struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec2<i32>,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
    c: bool,
}

struct Struct_5 {
    a: bool,
    b: vec2<bool>,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<bool, 16>;

var<private> global2: bool;

var<private> global3: u32;

var<private> global4: Struct_5;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3) -> vec4<i32> {
    var var_0 = vec4<f32>(368f, -621f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.b))))), -2165f);
    var var_1 = reverseBits(min(4294967295u, 0u));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-821f + 1465f)))), _wgslsmith_div_f32(-1695f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -1743f) * _wgslsmith_f_op_f32(max(var_0.x, 160f))))), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(arg_0.b.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, -1000f)) * _wgslsmith_f_op_f32(-arg_0.b.a.b)))));
    let var_3 = all(global4.b);
    let var_4 = _wgslsmith_dot_vec4_i32(-arg_0.d.c, _wgslsmith_div_vec4_i32(abs(arg_0.d.c), min(abs(arg_0.d.c), vec4<i32>(2147483647i, select(global4.c, arg_0.c.x, false), global4.c, _wgslsmith_dot_vec4_i32(vec4<i32>(global4.c, 1i, global4.c, global4.c), vec4<i32>(2147483647i, 0i, -2147483647i, arg_0.c.x))))));
    return ~vec4<i32>(-1i, ~(~(i32(-1i) * -22649i)), 0i, -1i);
}

fn func_2(arg_0: Struct_4, arg_1: f32) -> Struct_1 {
    global1 = array<bool, 16>();
    let var_0 = vec4<i32>(~2147483647i, global4.c, ~(-13931i), 0i);
    var var_1 = -(var_0.x << (firstTrailingBit(firstTrailingBit(32625u) | ~1u) % 32u));
    var var_2 = Struct_1(vec2<i32>(_wgslsmith_sub_i32(min(reverseBits(global4.c), 1i), -2753i), var_0.x), 224f, _wgslsmith_sub_vec4_i32(var_0, func_3(Struct_3(any(vec3<bool>(global1[_wgslsmith_index_u32(1u, 16u)], global4.b.x, true)), Struct_2(Struct_1(var_0.zx, -677f, var_0, vec2<i32>(0i, global4.c)), -1000f), var_0.zy, Struct_1(vec2<i32>(-26374i, var_0.x), arg_0.a.x, vec4<i32>(var_0.x, 43268i, -1i, 9034i), var_0.zw), ~vec4<u32>(51311u, 21400u, 4294967295u, u_input.a)))), vec2<i32>(global4.c, 1i));
    global3 = 1u;
    return Struct_1(~(select(_wgslsmith_mod_vec2_i32(vec2<i32>(global4.c, -62638i), var_0.xz), -vec2<i32>(var_2.d.x, var_2.d.x), !vec2<bool>(false, global4.a)) >> (~select(vec2<u32>(u_input.c, 1u), vec2<u32>(global4.d, u_input.b), false) % vec2<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(var_2.b * arg_0.a.x)) - _wgslsmith_f_op_f32(abs(var_2.b))) + _wgslsmith_f_op_f32(234f + 525f)), vec4<i32>(select(~0i, ~global4.c & global4.c, global4.b.x), 1i, -2147483647i, -_wgslsmith_dot_vec3_i32(~vec3<i32>(arg_0.b, arg_0.b, -8825i), var_0.yyy)), _wgslsmith_clamp_vec2_i32(~_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-14128i, global4.c), vec2<i32>(-1i, 1i)), var_0.yy), ~reverseBits(func_3(Struct_3(global1[_wgslsmith_index_u32(u_input.b, 16u)], Struct_2(Struct_1(vec2<i32>(-2147483647i, -67870i), -1132f, vec4<i32>(32117i, global4.c, 0i, 14400i), var_0.zy), -475f), vec2<i32>(var_2.c.x, -2147483647i), Struct_1(vec2<i32>(2147483647i, -10943i), 273f, vec4<i32>(0i, global4.c, -1i, -10306i), var_0.yy), vec4<u32>(77008u, 39920u, 4294967295u, u_input.b))).yy), _wgslsmith_mult_vec2_i32(~var_2.c.wx & var_0.yx, var_0.xz)));
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec2<u32>(8641u, global4.d);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1284f, _wgslsmith_f_op_f32(arg_2.b - arg_0.x), arg_2.b) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2.b, arg_0.x, 1000f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1416f, 545f, -1000f))))));
    var var_2 = arg_2;
    let var_3 = func_2(Struct_4(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b, var_1.x, arg_0.x, -608f)))))), max(_wgslsmith_mod_i32(var_2.d.x, reverseBits(51216i)), _wgslsmith_add_i32(arg_2.d.x, -5932i)), !select(global1[_wgslsmith_index_u32(var_0.x, 16u)], global1[_wgslsmith_index_u32(6498u, 16u)], false) & all(!vec4<bool>(global4.b.x, true, global1[_wgslsmith_index_u32(global4.d, 16u)], global1[_wgslsmith_index_u32(var_0.x, 16u)]))), arg_0.x);
    global4 = Struct_5(!(true == global4.a), select(vec2<bool>(global1[_wgslsmith_index_u32(4714u, 16u)], true), global4.b, false), -48735i, var_0.x);
    return arg_2;
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> Struct_5 {
    var var_0 = all(!(!vec2<bool>(arg_0.c.x != global4.c, true)));
    let var_1 = vec4<bool>(!(any(global4.b) || (global4.d == (arg_0.e.x << (global4.d % 32u)))), !arg_1, true, false);
    global0 = arg_1;
    var var_2 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(1884f * -896f), _wgslsmith_f_op_f32(arg_0.b.b + 423f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(574f + _wgslsmith_f_op_f32(sign(-1000f)))), _wgslsmith_f_op_f32(-1250f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1280f) + _wgslsmith_f_op_f32(-arg_0.b.b)))), ~firstTrailingBit(select(~28652i, global4.c ^ global4.c, true)), any(select(select(vec2<bool>(global4.a, true), vec2<bool>(var_1.x, true), true), select(select(vec2<bool>(global1[_wgslsmith_index_u32(global4.d, 16u)], true), var_1.zz, false), vec2<bool>(arg_0.a, global1[_wgslsmith_index_u32(u_input.b, 16u)]), vec2<bool>(true, false)), all(var_1.wz))));
    var var_3 = !(func_2(Struct_4(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.d.b, 110f, 1000f, -416f), vec4<f32>(var_2.a.x, arg_0.b.b, var_2.a.x, var_2.a.x))), -27386i, all(vec2<bool>(global4.a, var_1.x))), _wgslsmith_f_op_f32(f32(-1f) * -712f)).c.x == ~_wgslsmith_div_i32(reverseBits(42105i), var_2.b));
    return Struct_5(!arg_1, vec2<bool>(global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(arg_0.e.x, 1u), 16u)], !(min(arg_0.d.c.x, 0i) != firstTrailingBit(-1i))), arg_0.b.a.d.x, global4.d);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_4(Struct_3(true, Struct_2(func_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1018f, 1315f))), ~global4.c, Struct_1(vec2<i32>(global4.c, 1654i), 942f, vec4<i32>(16767i, global4.c, 6124i, -21547i), vec2<i32>(-44172i, global4.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, 1207f)))), vec2<i32>(2147483647i, ~_wgslsmith_div_i32(global4.c, 1i)), func_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-541f, -668f) - vec2<f32>(263f, -446f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1115f, 1124f)), !global1[_wgslsmith_index_u32(u_input.a, 16u)])), _wgslsmith_dot_vec4_i32(-vec4<i32>(global4.c, 2147483647i, -13423i, -2147483647i), abs(vec4<i32>(global4.c, global4.c, 9365i, -1i))), Struct_1(vec2<i32>(-2147483647i, -6310i) | vec2<i32>(global4.c, -16995i), _wgslsmith_f_op_f32(449f - 193f), vec4<i32>(global4.c, -33815i, global4.c, -7251i), vec2<i32>(global4.c, -18548i))), vec4<u32>(~1u, 20299u >> (global4.d % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 12405u, global4.d), vec4<u32>(global4.d, 6692u, 4294967295u, u_input.b)) >> ((global4.d >> (u_input.b % 32u)) % 32u), ~0u)), any(select(global4.b, select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 16u)], false), !vec2<bool>(true, global4.a), all(global4.b)), true)));
    var var_0 = Struct_2(Struct_1(vec2<i32>(max(-18127i, 0i), global4.c) >> (reverseBits(vec2<u32>(u_input.c, global4.d)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 828f)), _wgslsmith_mult_vec4_i32(func_2(Struct_4(vec4<f32>(-1000f, -1084f, 433f, 1000f), -11681i, global1[_wgslsmith_index_u32(1u, 16u)]), -1045f).c, _wgslsmith_mod_vec4_i32(vec4<i32>(global4.c, global4.c, global4.c, global4.c), vec4<i32>(0i, global4.c, global4.c, 11066i))), max(-vec2<i32>(global4.c, global4.c), func_2(Struct_4(vec4<f32>(-788f, -899f, 1040f, -327f), 16847i, global4.b.x), -296f).a) | vec2<i32>(34066i << (1u % 32u), _wgslsmith_sub_i32(57974i, 20480i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1085f) - vec2<f32>(102f, -825f)), 1i, func_1(vec2<f32>(-556f, 148f), global4.c, Struct_1(vec2<i32>(global4.c, global4.c), -758f, vec4<i32>(global4.c, 1i, 9654i, -51417i), vec2<i32>(-9763i, -6975i)))).b) - _wgslsmith_f_op_f32(ceil(-232f))));
    let var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(~22521u, _wgslsmith_dot_vec2_u32(vec2<u32>(15594u, u_input.b) >> (vec2<u32>(40169u, u_input.a) % vec2<u32>(32u)), max(vec2<u32>(0u, global4.d), vec2<u32>(4294967295u, 40204u))), ~(~u_input.b), select(_wgslsmith_div_u32(4294967295u, u_input.c), ~0u, !global4.a)), ~vec4<u32>(~u_input.b, ~global4.d, firstLeadingBit(1u), global4.d)) | vec4<u32>(abs(32954u), 62722u, ~4294967295u, u_input.c);
    global1 = array<bool, 16>();
    var var_2 = Struct_2(func_2(Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1806f, var_0.a.b, 1421f, var_0.b))), ~global4.c, any(!vec4<bool>(global1[_wgslsmith_index_u32(9731u, 16u)], false, true, global1[_wgslsmith_index_u32(4294967295u, 16u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b - 797f) + _wgslsmith_f_op_f32(-var_0.b)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.a.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-601f - -3419f))))));
    global3 = 0u;
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-547f, -580f, var_2.b) * vec3<f32>(var_2.a.b, var_2.b, var_0.a.b)))) + vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.a.b)), var_0.a.b, 846f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.b, _wgslsmith_f_op_f32(sign(436f)), 712f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(927f, var_2.a.b, -983f) + vec3<f32>(-137f, 455f, var_0.a.b)))))));
    var var_4 = Struct_1(countOneBits(vec2<i32>(45419i, countOneBits(1i))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.x))), firstTrailingBit(-vec4<i32>(_wgslsmith_add_i32(15367i, 44124i), -2147483647i, 2147483647i >> (1u % 32u), func_3(Struct_3(true, Struct_2(var_2.a, 622f), vec2<i32>(-3812i, var_2.a.a.x), var_2.a, vec4<u32>(var_1.x, var_1.x, global4.d, var_1.x))).x)), var_2.a.c.zz);
    var var_5 = abs(1u);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(_wgslsmith_sub_i32(var_2.a.c.x >> (var_1.x % 32u), 4135i), func_1(vec2<f32>(var_4.b, 1192f), -2147483647i, var_2.a).a.x, -2147483647i << (~global4.d % 32u), -var_0.a.d.x));
}

