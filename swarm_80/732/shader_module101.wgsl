struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: vec3<i32>,
    d: bool,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21> = array<f32, 21>(-460f, -119f, -913f, -279f, 200f, 625f, -1125f, -278f, -862f, 1076f, -1202f, -997f, 322f, -793f, -554f, 1000f, -1537f, -1455f, 1378f, -173f, 176f);

var<private> global1: Struct_1 = Struct_1(vec2<bool>(false, true), vec4<bool>(true, true, false, false), vec3<i32>(29013i, 35266i, 0i), true, vec2<u32>(19882u, 54001u));

var<private> global2: u32;

var<private> global3: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec2<bool>(false, true), vec4<bool>(true, false, true, false), vec3<i32>(-1i, 0i, 68553i), true, vec2<u32>(4294967295u, 38343u)), Struct_1(vec2<bool>(false, true), vec4<bool>(false, false, true, false), vec3<i32>(-49993i, 2147483647i, 12461i), true, vec2<u32>(4294967295u, 48520u)), Struct_1(vec2<bool>(false, true), vec4<bool>(true, true, false, false), vec3<i32>(-3974i, i32(-2147483648), 0i), false, vec2<u32>(0u, 4294967295u)), Struct_1(vec2<bool>(true, false), vec4<bool>(true, true, false, true), vec3<i32>(16441i, 7046i, 26404i), true, vec2<u32>(4294967295u, 16743u)), Struct_1(vec2<bool>(false, false), vec4<bool>(true, true, false, true), vec3<i32>(-42870i, -53600i, -84049i), true, vec2<u32>(1u, 13116u)), Struct_1(vec2<bool>(true, false), vec4<bool>(false, true, true, false), vec3<i32>(1i, 15912i, -1i), false, vec2<u32>(1u, 8781u)), Struct_1(vec2<bool>(true, true), vec4<bool>(false, true, true, true), vec3<i32>(-63492i, -1i, 11193i), true, vec2<u32>(18336u, 73820u)), Struct_1(vec2<bool>(true, false), vec4<bool>(true, true, true, true), vec3<i32>(2147483647i, 1i, i32(-2147483648)), false, vec2<u32>(38716u, 0u)), Struct_1(vec2<bool>(true, true), vec4<bool>(true, false, true, false), vec3<i32>(-6432i, 1i, -220i), true, vec2<u32>(16485u, 9716u)), Struct_1(vec2<bool>(false, false), vec4<bool>(true, false, true, false), vec3<i32>(4251i, 2147483647i, 2147483647i), true, vec2<u32>(4294967295u, 59915u)), Struct_1(vec2<bool>(false, true), vec4<bool>(false, true, false, false), vec3<i32>(2147483647i, -1i, 1i), false, vec2<u32>(22365u, 4294967295u)), Struct_1(vec2<bool>(true, true), vec4<bool>(true, true, false, true), vec3<i32>(38949i, 2147483647i, 3793i), false, vec2<u32>(1u, 1u)), Struct_1(vec2<bool>(false, false), vec4<bool>(false, true, true, true), vec3<i32>(1i, 30242i, -12916i), true, vec2<u32>(0u, 42240u)), Struct_1(vec2<bool>(true, true), vec4<bool>(false, true, false, false), vec3<i32>(-43572i, i32(-2147483648), 2147483647i), false, vec2<u32>(0u, 55473u)), Struct_1(vec2<bool>(false, false), vec4<bool>(false, false, true, false), vec3<i32>(28263i, 0i, -3605i), false, vec2<u32>(4294967295u, 1u)), Struct_1(vec2<bool>(true, false), vec4<bool>(false, true, false, false), vec3<i32>(-1i, i32(-2147483648), -9002i), true, vec2<u32>(21419u, 64348u)), Struct_1(vec2<bool>(true, true), vec4<bool>(false, false, true, true), vec3<i32>(33260i, -41348i, 1i), true, vec2<u32>(28478u, 1u)), Struct_1(vec2<bool>(true, false), vec4<bool>(false, true, false, false), vec3<i32>(-24297i, 3527i, -1i), false, vec2<u32>(0u, 4294967295u)), Struct_1(vec2<bool>(true, true), vec4<bool>(true, true, false, true), vec3<i32>(-1i, i32(-2147483648), -11689i), false, vec2<u32>(0u, 11282u)), Struct_1(vec2<bool>(true, true), vec4<bool>(true, true, false, false), vec3<i32>(-19666i, 19782i, 51437i), false, vec2<u32>(42761u, 109822u)), Struct_1(vec2<bool>(false, true), vec4<bool>(true, false, false, false), vec3<i32>(i32(-2147483648), 0i, -3434i), true, vec2<u32>(4294967295u, 87355u)), Struct_1(vec2<bool>(true, false), vec4<bool>(true, false, true, true), vec3<i32>(2885i, 10839i, 46483i), true, vec2<u32>(21920u, 8321u)), Struct_1(vec2<bool>(false, false), vec4<bool>(true, true, true, true), vec3<i32>(-21743i, -21186i, 0i), true, vec2<u32>(115623u, 1u)), Struct_1(vec2<bool>(true, true), vec4<bool>(true, false, false, false), vec3<i32>(1i, 1i, 39164i), true, vec2<u32>(52713u, 42828u)), Struct_1(vec2<bool>(false, false), vec4<bool>(true, false, false, true), vec3<i32>(-1i, 1i, 2318i), false, vec2<u32>(12675u, 16481u)), Struct_1(vec2<bool>(true, true), vec4<bool>(true, false, false, false), vec3<i32>(3192i, -13216i, 2147483647i), false, vec2<u32>(62147u, 15996u)), Struct_1(vec2<bool>(true, false), vec4<bool>(true, false, false, true), vec3<i32>(-84040i, i32(-2147483648), 1i), false, vec2<u32>(41965u, 36162u)), Struct_1(vec2<bool>(false, true), vec4<bool>(false, false, false, false), vec3<i32>(-18487i, 1i, 36657i), false, vec2<u32>(4294967295u, 22667u)), Struct_1(vec2<bool>(false, true), vec4<bool>(false, true, true, true), vec3<i32>(2147483647i, -62566i, i32(-2147483648)), true, vec2<u32>(4294967295u, 1u)), Struct_1(vec2<bool>(true, true), vec4<bool>(false, false, true, true), vec3<i32>(4240i, -58626i, -74352i), true, vec2<u32>(4294967295u, 0u)));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> f32 {
    return 219f;
}

fn func_2() -> i32 {
    global0 = array<f32, 21>();
    var var_0 = Struct_1(select(select(!global1.a, select(vec2<bool>(false, global1.b.x), !global1.b.yx, select(global1.a, vec2<bool>(global1.d, global1.d), global1.a.x)), global1.a), global1.a, vec2<bool>(true, false)), vec4<bool>(global1.c.x < (0i >> (u_input.b.x % 32u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, global1.e.x), vec2<u32>(89069u, u_input.d)) < ~28612u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(global3[_wgslsmith_index_u32(4294967295u, 30u)])), 1959f, false)) <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 21u)]), _wgslsmith_f_op_f32(-1129f * -706f))), global1.d), vec3<i32>(global1.c.x, 4438i, 1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global1.e.x, 21u)] - -1261f)) - _wgslsmith_f_op_f32(floor(-340f))) > global0[_wgslsmith_index_u32(~20616u, 21u)], ~(vec2<u32>(~0u, u_input.d) & u_input.b.zx));
    let var_1 = vec4<bool>(!global1.d, any(vec3<bool>(false, all(vec2<bool>(var_0.b.x, global1.d)), true)), any(vec3<bool>(true, false, true)), false);
    let var_2 = !(!(!global1.d)) & false;
    global1 = global3[_wgslsmith_index_u32(4294967295u, 30u)];
    return -31673i;
}

fn func_1(arg_0: vec2<f32>) -> vec2<u32> {
    var var_0 = abs(vec3<i32>(min(abs(func_2()), max(_wgslsmith_clamp_i32(-10328i, global1.c.x, global1.c.x), u_input.a)), _wgslsmith_add_i32(_wgslsmith_mult_i32(1i, u_input.a), u_input.e), global1.c.x));
    global0 = array<f32, 21>();
    var var_1 = -299f;
    var_1 = 1257f;
    global1 = global3[_wgslsmith_index_u32(global1.e.x >> (select(global1.e.x, countOneBits(min(1u, ~1u)), global1.d) % 32u), 30u)];
    return _wgslsmith_div_vec2_u32(vec2<u32>(22713u, firstTrailingBit(71768u)), firstTrailingBit(select(reverseBits(vec2<u32>(9451u, u_input.b.x)) | ~u_input.b.xx, vec2<u32>(global1.e.x, 4294967295u), global1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(vec2<bool>(true, true), vec4<bool>(true, global1.a.x, true, !all(select(vec2<bool>(global1.b.x, global1.b.x), global1.a, vec2<bool>(false, global1.a.x)))), -abs(_wgslsmith_mod_vec3_i32(vec3<i32>(-139i, global1.c.x, -2147483647i), global1.c)) | ~global1.c, ~(~1u) < (~1u | global1.e.x), reverseBits(reverseBits(vec2<u32>(global1.e.x, global1.e.x)) | ~func_1(vec2<f32>(714f, 299f))));
    var var_0 = 12568i;
    var var_1 = -1578f;
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-382f, global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(954u, 21u)], 334f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1184f, global0[_wgslsmith_index_u32(u_input.d, 21u)], -170f, global0[_wgslsmith_index_u32(0u, 21u)]), vec4<f32>(1000f, global0[_wgslsmith_index_u32(4294967295u, 21u)], -643f, 606f), global1.b)))))))));
    global1 = global3[_wgslsmith_index_u32(func_1(_wgslsmith_div_vec2_f32(var_2.wx, vec2<f32>(var_2.x, 207f))).x, 30u)];
    global2 = global1.e.x;
    global3 = array<Struct_1, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(495f, -1095f), 1u, _wgslsmith_sub_vec3_i32(vec3<i32>(global1.c.x, ~1i, 38554i), countOneBits(global1.c)), -1i, func_2());
}

