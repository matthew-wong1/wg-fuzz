struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: i32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: i32 = 1i;

var<private> global2: i32 = -45435i;

var<private> global3: array<i32, 5> = array<i32, 5>(1i, -43506i, i32(-2147483648), 1i, -1i);

var<private> global4: Struct_2 = Struct_2(Struct_1(vec4<u32>(0u, 4294967295u, 2377u, 0u)), vec4<bool>(false, false, true, false), i32(-2147483648), Struct_1(vec4<u32>(72723u, 1u, 22209u, 1u)), 2147483647i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: Struct_3, arg_3: i32) -> vec4<u32> {
    var var_0 = 54240u & arg_2.a.d.a.x;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1884f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global4 = Struct_2(arg_2.a.a, !arg_2.a.b, global4.e, arg_2.a.a, _wgslsmith_sub_i32(abs(_wgslsmith_add_i32(arg_3, _wgslsmith_mod_i32(1i, 1i))), reverseBits(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.a, arg_2.b.xz), u_input.a.x))));
    let var_2 = vec4<u32>(reverseBits(_wgslsmith_dot_vec4_u32(firstLeadingBit(global4.d.a), _wgslsmith_mult_vec4_u32(select(global4.d.a, vec4<u32>(1907u, arg_0, 4294967295u, 20785u), true), ~vec4<u32>(arg_2.a.d.a.x, 57824u, 1u, global4.d.a.x)))), arg_0, global4.d.a.x, _wgslsmith_dot_vec4_u32(~arg_2.a.d.a, reverseBits(~arg_2.a.d.a << ((arg_2.a.d.a ^ global4.d.a) % vec4<u32>(32u)))));
    global3 = array<i32, 5>();
    return reverseBits(vec4<u32>(~(_wgslsmith_sub_u32(52443u, 0u) >> (var_2.x % 32u)), ~(1962u & ~var_2.x), 0u, 11954u));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_1) -> u32 {
    let var_0 = max(_wgslsmith_mult_vec4_u32(max(arg_3.a, vec4<u32>(_wgslsmith_mult_u32(global4.d.a.x, 77684u), 34113u, _wgslsmith_mult_u32(0u, arg_3.a.x), arg_2)), ~max(_wgslsmith_add_vec4_u32(arg_3.a, arg_3.a), vec4<u32>(arg_3.a.x, arg_3.a.x, arg_2, arg_3.a.x) & vec4<u32>(4294967295u, arg_2, 14381u, arg_3.a.x))), ~func_3(max(~27914u, global4.a.a.x), 2889f, Struct_3(Struct_2(arg_3, vec4<bool>(false, true, global4.b.x, false), arg_0, Struct_1(vec4<u32>(arg_2, 0u, arg_2, 48808u)), u_input.a.x), vec4<i32>(-11995i, 2147483647i, global4.e, global4.c), !global0.x), u_input.a.x));
    let var_1 = 28685i;
    let var_2 = ~_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(10901i, 0i, 35275i, 0i), vec4<i32>(54207i, -2147483647i, 64006i, global3[_wgslsmith_index_u32(global4.d.a.x, 5u)])), -var_1, 2147483647i), vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, 0i, 1193i, 65071i), vec4<i32>(1i, global4.e, global4.e, -36160i)), -67472i, abs(1i)));
    var var_3 = Struct_1(global4.a.a);
    return abs(func_3(_wgslsmith_add_u32(~(global4.a.a.x << (var_0.x % 32u)), ~(~1u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-843f)) * _wgslsmith_div_f32(arg_1.x, 1100f)), 501f)), Struct_3(Struct_2(Struct_1(arg_3.a), global4.b, global3[_wgslsmith_index_u32(global4.a.a.x, 5u)], Struct_1(vec4<u32>(arg_2, 1u, 1u, global4.d.a.x)), ~var_1), -vec4<i32>(global4.c, u_input.a.x, global3[_wgslsmith_index_u32(42469u, 5u)], global4.c) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(32020u, var_3.a.x, 50671u, global4.d.a.x), vec4<u32>(70657u, var_0.x, 1u, global4.a.a.x)) % vec4<u32>(32u)), global0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, -1i, arg_0) << (~var_0.xyz % vec3<u32>(32u)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, global4.c, 26786i), var_2), firstLeadingBit(global3[_wgslsmith_index_u32(44906u, 5u)]), 0i))).x);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_3) -> vec4<bool> {
    global0 = global4.b.wyw;
    global1 = global4.c << (_wgslsmith_mod_u32(firstLeadingBit(12748u), _wgslsmith_mod_u32(func_2(global3[_wgslsmith_index_u32(17533u, 5u)], vec2<f32>(-1457f, -1000f), global4.d.a.x, Struct_1(arg_2.a.a.a)) | abs(12155u), max(arg_0.a.x, ~arg_2.a.a.a.x))) % 32u);
    var var_0 = global4.a.a.xw;
    var var_1 = arg_2.a.b.wzw;
    var var_2 = !vec2<bool>(arg_2.a.b.x, func_2(arg_2.a.c >> (global4.d.a.x % 32u), _wgslsmith_f_op_vec2_f32(vec2<f32>(-620f, -605f) - vec2<f32>(1221f, 387f)), firstTrailingBit(24058u), arg_2.a.d) > (firstLeadingBit(36045u) << (1u % 32u)));
    return global4.b;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = Struct_3(arg_1, reverseBits(select(vec4<i32>(-u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global4.c, global3[_wgslsmith_index_u32(28960u, 5u)], global4.e), vec3<i32>(2147483647i, global4.c, arg_1.e)), global3[_wgslsmith_index_u32(47158u | arg_1.d.a.x, 5u)], 4684i), vec4<i32>(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(-4160i, 0i, global3[_wgslsmith_index_u32(38645u, 5u)]), vec3<i32>(u_input.a.x, u_input.a.x, global3[_wgslsmith_index_u32(87077u, 5u)])), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(global4.d.a.x, global4.d.a.x), 5u)], u_input.a.x), arg_0.x)), arg_1.b.x);
    let var_1 = global4.a.a.x;
    var var_2 = arg_1.d.a;
    var var_3 = select(func_1(Struct_1(vec4<u32>(global4.a.a.x << (21517u % 32u), global4.a.a.x & 41984u, 4294967295u, ~var_2.x)), ~max(vec3<u32>(69692u, global4.d.a.x, var_2.x), vec3<u32>(10022u, var_2.x, 1u)), var_0).yzw, func_1(Struct_1(vec4<u32>(~global4.a.a.x, var_0.a.d.a.x, 70082u, var_2.x)), vec3<u32>(~arg_1.d.a.x, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a.a.x, 0u), global4.a.a.yx), _wgslsmith_div_u32(61478u, var_2.x)), 4294967295u), var_0).xzz, !((arg_0.x || true) && false));
    var var_4 = func_2(~(~(-11371i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -378f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(342f, 416f) - vec2<f32>(-493f, 1760f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-208f, 176f))))), ~1u, global4.a);
    return var_0.a;
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> f32 {
    let var_0 = Struct_3(arg_1, select(vec4<i32>(max(global3[_wgslsmith_index_u32(arg_1.a.a.x, 5u)], 14418i), firstTrailingBit(global4.e), func_4(vec4<bool>(true, global4.b.x, true, arg_1.b.x), arg_1).c, ~(-1i)) << (~global4.a.a % vec4<u32>(32u)), -vec4<i32>(-40097i, 2147483647i, global3[_wgslsmith_index_u32(0u, 5u)], arg_1.c), func_4(!select(global4.b, vec4<bool>(false, false, arg_1.b.x, global0.x), true), arg_1).b), true);
    global0 = select(!arg_1.b.zyy, arg_1.b.yzw, true || all(func_4(vec4<bool>(var_0.c, var_0.c, global4.b.x, arg_1.b.x), func_4(var_0.a.b, Struct_2(Struct_1(global4.a.a), vec4<bool>(false, true, global0.x, var_0.c), global4.c, Struct_1(var_0.a.d.a), global3[_wgslsmith_index_u32(1u, 5u)]))).b));
    let var_1 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(-1000f - arg_0))), arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(808f + arg_0)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1496f), _wgslsmith_f_op_f32(arg_0 - -2197f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(385f, -476f, 1f, _wgslsmith_f_op_f32(arg_0 - 428f)) + vec4<f32>(-1056f, _wgslsmith_f_op_f32(arg_0 + arg_0), arg_0, 348f))))));
    global1 = u_input.a.x;
    global0 = vec3<bool>(all(vec2<bool>(false, false)), global0.x | arg_1.b.x, false);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-653f + arg_0) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -124f), _wgslsmith_f_op_f32(floor(247f)))))) + 323f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a, ~vec2<i32>(global4.e, 40121i), vec2<i32>(global4.c, global3[_wgslsmith_index_u32(4294967295u, 5u)])), u_input.a);
    let var_1 = _wgslsmith_div_vec4_i32(max(max(vec4<i32>(~(-6957i), -49195i | global4.e, 30398i, u_input.a.x >> (59061u % 32u)), firstLeadingBit(abs(vec4<i32>(18598i, var_0.x, u_input.a.x, global4.e)))), vec4<i32>(-62648i, u_input.a.x, ~55529i, _wgslsmith_mult_i32(1i, 0i))), vec4<i32>(global3[_wgslsmith_index_u32(global4.a.a.x, 5u)], ~(~(-global3[_wgslsmith_index_u32(global4.d.a.x, 5u)])), global3[_wgslsmith_index_u32(1u, 5u)], global4.c));
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-726f - _wgslsmith_f_op_f32(ceil(1535f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f + 1565f), _wgslsmith_f_op_f32(393f - 1666f)))), func_4(!func_1(global4.a, vec3<u32>(global4.d.a.x, global4.d.a.x, 4294967295u), Struct_3(Struct_2(global4.a, vec4<bool>(true, false, false, global4.b.x), 1i, global4.d, global3[_wgslsmith_index_u32(0u, 5u)]), var_1, global0.x)), Struct_2(Struct_1(vec4<u32>(4294967295u, 1641u, 44487u, 1u)), select(vec4<bool>(global4.b.x, global4.b.x, global4.b.x, global0.x), global4.b, false), -24356i, Struct_1(vec4<u32>(global4.a.a.x, 0u, 4294967295u, 46118u)), -2147483647i)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-337f + 1246f), _wgslsmith_f_op_f32(sign(-136f))))))));
    let var_3 = func_4(global4.b, func_4(!vec4<bool>(global0.x, global4.b.x, all(global4.b), true), func_4(func_1(func_4(global4.b, Struct_2(Struct_1(global4.d.a), global4.b, u_input.a.x, Struct_1(global4.a.a), var_1.x)).a, ~vec3<u32>(global4.d.a.x, 27196u, 1u), Struct_3(Struct_2(Struct_1(global4.d.a), vec4<bool>(global0.x, true, global0.x, false), global3[_wgslsmith_index_u32(1u, 5u)], global4.a, var_0.x), vec4<i32>(-4470i, -9488i, 10855i, -10536i), true)), func_4(global4.b, Struct_2(Struct_1(global4.a.a), global4.b, u_input.a.x, Struct_1(global4.a.a), global4.c))))).d;
    global4 = func_4(!func_1(func_4(func_1(var_3, vec3<u32>(18642u, 53699u, 18047u), Struct_3(Struct_2(Struct_1(vec4<u32>(0u, 28272u, 16857u, 26716u)), global4.b, -1i, var_3, var_0.x), vec4<i32>(21081i, 0i, u_input.a.x, var_1.x), global4.b.x)), func_4(global4.b, Struct_2(Struct_1(var_3.a), global4.b, global4.e, Struct_1(global4.d.a), var_1.x))).a, vec3<u32>(global4.a.a.x, _wgslsmith_mod_u32(global4.a.a.x, 19869u), _wgslsmith_add_u32(0u, 4294967295u)), Struct_3(Struct_2(global4.d, global4.b, -55362i, Struct_1(global4.d.a), 2147483647i), var_1, false | global0.x)), func_4(select(vec4<bool>(global4.b.x && false, true, true, !global4.b.x), !func_1(global4.a, vec3<u32>(var_3.a.x, global4.a.a.x, global4.d.a.x), Struct_3(Struct_2(Struct_1(global4.d.a), vec4<bool>(global0.x, false, global0.x, false), 1i, var_3, 18867i), var_1, false)), func_4(vec4<bool>(true, global0.x, global0.x, global0.x), func_4(global4.b, Struct_2(var_3, global4.b, global3[_wgslsmith_index_u32(global4.a.a.x, 5u)], var_3, 32767i))).b), Struct_2(Struct_1(firstTrailingBit(global4.d.a)), vec4<bool>(global0.x | true, global4.b.x, true, global4.b.x), abs(4480i), Struct_1(global4.a.a >> (vec4<u32>(var_3.a.x, var_3.a.x, 1u, 33431u) % vec4<u32>(32u))), min(-var_0.x, -1i))));
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, _wgslsmith_f_op_f32(trunc(-818f)), _wgslsmith_div_i32(-2147483647i, -u_input.a.x), var_0.x);
}

