struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: f32,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: vec4<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<bool>(true, true), vec3<i32>(2147483647i, 1i, -25640i), Struct_1(vec4<u32>(0u, 0u, 0u, 28194u), vec4<f32>(836f, -922f, 795f, -1523f), -2641f, vec3<i32>(2147483647i, 0i, 0i), 1i), Struct_1(vec4<u32>(1u, 52851u, 4294967295u, 28542u), vec4<f32>(411f, -236f, -1010f, -1401f), 1553f, vec3<i32>(1i, 14342i, 28959i), 47282i));

var<private> global1: array<u32, 1> = array<u32, 1>(15245u);

var<private> global2: u32 = 1u;

var<private> global3: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(vec2<bool>(false, false), vec3<i32>(0i, -1i, 47649i), Struct_1(vec4<u32>(0u, 4294967295u, 21484u, 0u), vec4<f32>(-1208f, -1283f, 225f, -656f), 2037f, vec3<i32>(2147483647i, 28304i, -5048i), -56903i), Struct_1(vec4<u32>(23252u, 74351u, 27804u, 0u), vec4<f32>(-1280f, 448f, -627f, -614f), 1374f, vec3<i32>(i32(-2147483648), 2147483647i, -1i), 0i)), Struct_2(vec2<bool>(true, true), vec3<i32>(-9702i, -1305i, -1i), Struct_1(vec4<u32>(4294967295u, 62472u, 13931u, 45038u), vec4<f32>(805f, -1000f, -1571f, 1000f), 1589f, vec3<i32>(43110i, 1i, -6443i), 19918i), Struct_1(vec4<u32>(0u, 56672u, 26179u, 4294967295u), vec4<f32>(-1000f, 916f, 726f, 521f), -1069f, vec3<i32>(-12195i, i32(-2147483648), -28279i), 0i)), Struct_2(vec2<bool>(true, true), vec3<i32>(-95050i, -1i, 0i), Struct_1(vec4<u32>(4294967295u, 24245u, 4294967295u, 13308u), vec4<f32>(514f, -255f, 572f, -531f), 906f, vec3<i32>(-1i, 41965i, 0i), 0i), Struct_1(vec4<u32>(16584u, 12470u, 15358u, 4294967295u), vec4<f32>(2105f, -1757f, -430f, -402f), -2435f, vec3<i32>(2147483647i, 17900i, 2147483647i), -14304i)), Struct_2(vec2<bool>(false, false), vec3<i32>(42714i, -51340i, i32(-2147483648)), Struct_1(vec4<u32>(1u, 1u, 59392u, 4294967295u), vec4<f32>(-209f, 529f, 1855f, -746f), -697f, vec3<i32>(31205i, 0i, 1i), 2147483647i), Struct_1(vec4<u32>(1u, 0u, 50268u, 47549u), vec4<f32>(848f, 212f, -324f, -870f), -825f, vec3<i32>(0i, -8694i, 0i), -38875i)), Struct_2(vec2<bool>(true, true), vec3<i32>(1i, 2147483647i, -1i), Struct_1(vec4<u32>(44391u, 0u, 1u, 38496u), vec4<f32>(-158f, 1004f, 765f, -2197f), -1343f, vec3<i32>(2147483647i, -58034i, 38262i), 3630i), Struct_1(vec4<u32>(4294967295u, 1u, 0u, 41606u), vec4<f32>(-959f, 753f, -1313f, 432f), 1423f, vec3<i32>(0i, i32(-2147483648), 1i), i32(-2147483648))), Struct_2(vec2<bool>(true, false), vec3<i32>(-1i, -20089i, -27892i), Struct_1(vec4<u32>(0u, 4294967295u, 1u, 3195u), vec4<f32>(-1146f, -578f, 565f, -415f), -1000f, vec3<i32>(1i, -29004i, 93568i), -10795i), Struct_1(vec4<u32>(40851u, 0u, 68141u, 4294967295u), vec4<f32>(-382f, -374f, -997f, 636f), -126f, vec3<i32>(27210i, 2147483647i, 2147483647i), 0i)), Struct_2(vec2<bool>(true, false), vec3<i32>(1i, -28318i, -6579i), Struct_1(vec4<u32>(54729u, 12991u, 4294967295u, 53197u), vec4<f32>(2081f, -1000f, 485f, 1719f), 538f, vec3<i32>(-1i, i32(-2147483648), 1i), 4006i), Struct_1(vec4<u32>(30990u, 11530u, 1u, 0u), vec4<f32>(-476f, 516f, 1269f, 1096f), -152f, vec3<i32>(-1i, 0i, 1i), 0i)), Struct_2(vec2<bool>(false, false), vec3<i32>(0i, -1i, -1i), Struct_1(vec4<u32>(19357u, 17816u, 4294967295u, 14985u), vec4<f32>(149f, -413f, 130f, -1106f), 447f, vec3<i32>(2147483647i, 1i, 25591i), 2147483647i), Struct_1(vec4<u32>(4294967295u, 41034u, 51858u, 4294967295u), vec4<f32>(2097f, 828f, -155f, -1000f), 847f, vec3<i32>(i32(-2147483648), 1i, 2147483647i), -1i)));

var<private> global4: vec2<i32> = vec2<i32>(4634i, 2147483647i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> vec4<f32> {
    var var_0 = global3[_wgslsmith_index_u32(firstLeadingBit(~(~abs(1u)) >> (~global0.d.a.x % 32u)), 8u)];
    global4 = countOneBits(var_0.c.d.xz);
    let var_1 = select(select(select(!(!vec4<bool>(false, var_0.a.x, false, var_0.a.x)), !select(vec4<bool>(true, true, global0.a.x, global0.a.x), vec4<bool>(true, false, global0.a.x, false), false), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, true, false), true), vec4<bool>(select(select(any(var_0.a), true, any(vec3<bool>(false, global0.a.x, false))), global0.a.x, true), global0.a.x, var_0.a.x, true), vec4<bool>(true, true, true, all(global0.a)));
    var_0 = Struct_2(!(!var_1.zw), countOneBits(vec3<i32>(-global4.x, _wgslsmith_mod_i32(53818i, global4.x), _wgslsmith_dot_vec2_i32(var_0.b.xz, global0.c.d.zx))) << (_wgslsmith_div_vec3_u32(abs(global0.d.a.yxy), max(vec3<u32>(u_input.a, global0.c.a.x, var_0.d.a.x), ~vec3<u32>(global1[_wgslsmith_index_u32(11506u, 1u)], var_0.c.a.x, 59151u))) % vec3<u32>(32u)), Struct_1(abs(var_0.d.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_0.d.b))) + vec4<f32>(705f, _wgslsmith_f_op_f32(f32(-1f) * -681f), _wgslsmith_f_op_f32(-643f + global0.d.c), _wgslsmith_f_op_f32(var_0.d.b.x - 1167f))), -1010f, var_0.b, _wgslsmith_add_i32(2147483647i, global0.d.d.x) & -global4.x), global0.d);
    var var_2 = vec2<i32>(_wgslsmith_mult_i32(firstTrailingBit(global4.x), firstTrailingBit(-firstTrailingBit(global0.c.e))), -2147483647i);
    return vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-322f, 990f) * _wgslsmith_f_op_f32(2543f - var_0.c.c)))), 538f)), _wgslsmith_f_op_f32(-arg_0), 791f, arg_0);
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = !global0.a.x;
    var var_1 = ~1u;
    global2 = _wgslsmith_mult_u32(1u, u_input.a << (~firstTrailingBit(global0.c.a.x) % 32u));
    global3 = array<Struct_2, 8>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.d.b)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(arg_0.x)))))));
    return global0.c;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<u32>) -> Struct_1 {
    global4 = global0.d.d.yy;
    global3 = array<Struct_2, 8>();
    global0 = global3[_wgslsmith_index_u32(arg_1.x >> (firstLeadingBit(countOneBits(u_input.a)) % 32u), 8u)];
    var var_0 = func_2(global0.d.b.yyy);
    var var_1 = ~(~(firstTrailingBit(0u) >> (4294967295u % 32u))) ^ 0u;
    return func_2(_wgslsmith_f_op_vec3_f32(var_0.b.yzz + vec3<f32>(global0.c.c, var_0.b.x, global0.d.c)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1) -> f32 {
    let var_0 = func_2(global0.d.b.yzz);
    global2 = ~arg_0.a.x;
    global4 = arg_2.d.yx;
    var var_1 = _wgslsmith_div_vec4_f32(global0.d.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(112f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(404f, -565f) + func_1(vec3<bool>(global0.a.x, global0.a.x, global0.a.x), vec2<u32>(var_0.a.x, arg_0.a.x)).b.x), arg_1.x, _wgslsmith_div_f32(arg_0.b.x, _wgslsmith_div_f32(arg_0.c, var_0.b.x)))));
    let var_2 = reverseBits(vec2<i32>(_wgslsmith_mod_i32(~0i, firstTrailingBit(-var_0.d.x)), _wgslsmith_add_i32(0i, _wgslsmith_add_i32(-13151i, var_0.d.x) | _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1i, 1i), var_0.d))));
    return -1503f;
}

fn func_5(arg_0: vec4<f32>, arg_1: u32) -> u32 {
    global0 = Struct_2(!select(select(global0.a, select(vec2<bool>(true, false), vec2<bool>(false, global0.a.x), true), any(vec4<bool>(global0.a.x, false, global0.a.x, global0.a.x))), !select(global0.a, global0.a, global0.a), select(true, any(vec4<bool>(false, global0.a.x, false, false)), all(vec4<bool>(false, true, global0.a.x, true)))), -select(abs(global0.b >> (global0.c.a.xxz % vec3<u32>(32u))), vec3<i32>(~(-14748i), -46220i, 36968i), select(vec3<bool>(false, global0.a.x, global0.a.x), vec3<bool>(global0.a.x, true, global0.a.x), !global0.a.x)), func_1(vec3<bool>(true, true, true), vec2<u32>(~arg_1, func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 1510f, -428f))).a.x)), global0.c);
    let var_0 = global0.c;
    let var_1 = ~2147483647i;
    global2 = 4294967295u;
    return ~_wgslsmith_add_u32(0u, abs(~55926u)) & global0.c.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 8>();
    global2 = func_5(vec4<f32>(_wgslsmith_f_op_f32(-global0.d.b.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_4(Struct_1(global0.c.a, vec4<f32>(-1072f, 1690f, 404f, global0.c.b.x), 355f, vec3<i32>(global4.x, -20686i, global4.x), global4.x), _wgslsmith_f_op_vec2_f32(ceil(global0.d.b.wy)), func_1(vec3<bool>(false, global0.a.x, false), global0.c.a.zw))))), _wgslsmith_f_op_f32(global0.c.c - -478f), -2261f), 4294967295u);
    var var_0 = Struct_1(~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.c.a.x, 13141u, 8755u, 4294967295u), vec4<u32>(4294967295u, u_input.a, 15155u, 112u)), vec4<u32>(15894u, 31995u, 4294967295u, u_input.a) ^ global0.c.a) & (countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 77487u, 4915u, 66013u), vec4<u32>(global1[_wgslsmith_index_u32(9115u, 1u)], u_input.a, 1u, 1u))) ^ global0.d.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.d.b) * vec4<f32>(_wgslsmith_f_op_f32(func_4(func_2(global0.d.b.yyx), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d.c, global0.d.b.x) + global0.c.b.xy), global0.c)), 1615f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1695f * 340f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))))), global0.d.c, reverseBits(select(countOneBits(max(vec3<i32>(-2147483647i, global4.x, global0.c.d.x), vec3<i32>(global0.c.e, global0.c.d.x, -33000i))), _wgslsmith_mult_vec3_i32(abs(global0.d.d), global0.b), !select(global0.a.x, global0.a.x, global0.a.x))), countOneBits(global0.d.d.x));
    global4 = -var_0.d.xx;
    global1 = array<u32, 1>();
    var var_1 = _wgslsmith_clamp_i32(-2166i, -1i, -global4.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.xz, ~var_0.a.x, 182f, ~reverseBits(~global0.d.a), var_0.b.yx);
}

