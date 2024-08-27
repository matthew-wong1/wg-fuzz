struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<i32, 22> = array<i32, 22>(-18599i, 0i, i32(-2147483648), 31125i, -14174i, -46210i, -1i, -1i, 72727i, -16621i, 1i, i32(-2147483648), i32(-2147483648), i32(-2147483648), 1i, 19272i, i32(-2147483648), -40000i, 4770i, i32(-2147483648), -1i, 2147483647i);

var<private> global2: Struct_2;

var<private> global3: array<vec2<i32>, 12>;

var<private> global4: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(26718i, vec2<i32>(0i, -33963i), vec2<u32>(82664u, 29175u), 2147483647i, vec4<i32>(-35352i, -24326i, 1i, 1i)), Struct_1(52449i, vec2<i32>(1i, -1i), vec2<u32>(4294967295u, 0u), -19710i, vec4<i32>(15387i, -33333i, -46026i, 1i)), Struct_1(0i, vec2<i32>(-27891i, 2147483647i), vec2<u32>(19417u, 4294967295u), 1i, vec4<i32>(-1i, 0i, 0i, 25106i)), Struct_1(1i, vec2<i32>(-1i, -1i), vec2<u32>(1u, 4294967295u), -1i, vec4<i32>(i32(-2147483648), 0i, 1i, 0i)), Struct_1(1i, vec2<i32>(0i, 0i), vec2<u32>(0u, 11091u), -10390i, vec4<i32>(1i, i32(-2147483648), 1i, -1i)), Struct_1(-36632i, vec2<i32>(6367i, 2147483647i), vec2<u32>(26423u, 29773u), 0i, vec4<i32>(-1i, -1i, 0i, -8757i)), Struct_1(i32(-2147483648), vec2<i32>(-10455i, 2015i), vec2<u32>(39445u, 4294967295u), -1i, vec4<i32>(-30741i, -4321i, -20917i, 30544i)), Struct_1(12238i, vec2<i32>(-1i, 1i), vec2<u32>(4294967295u, 12177u), -19549i, vec4<i32>(-40112i, -44818i, 2147483647i, -28655i)), Struct_1(0i, vec2<i32>(19109i, -8887i), vec2<u32>(1u, 32280u), 18133i, vec4<i32>(2147483647i, i32(-2147483648), -30416i, 11451i)), Struct_1(2147483647i, vec2<i32>(1i, i32(-2147483648)), vec2<u32>(4294967295u, 4294967295u), 59449i, vec4<i32>(4499i, i32(-2147483648), -1i, 0i)), Struct_1(55280i, vec2<i32>(-1i, 3267i), vec2<u32>(736u, 1u), -31199i, vec4<i32>(i32(-2147483648), -16217i, -1i, 10354i)), Struct_1(-51728i, vec2<i32>(41272i, 18447i), vec2<u32>(22457u, 120284u), 0i, vec4<i32>(-1i, -31315i, 2147483647i, 7624i)), Struct_1(-1i, vec2<i32>(1i, i32(-2147483648)), vec2<u32>(0u, 46803u), -29806i, vec4<i32>(i32(-2147483648), 2147483647i, 1i, 9193i)), Struct_1(35335i, vec2<i32>(-1i, 4463i), vec2<u32>(6982u, 1u), 17092i, vec4<i32>(25460i, i32(-2147483648), 63297i, 1i)), Struct_1(23574i, vec2<i32>(40175i, -1i), vec2<u32>(102474u, 0u), i32(-2147483648), vec4<i32>(i32(-2147483648), 2147483647i, -1i, -12383i)), Struct_1(-8085i, vec2<i32>(5572i, 2147483647i), vec2<u32>(1u, 4294967295u), -29962i, vec4<i32>(5200i, -41987i, 1i, 2147483647i)), Struct_1(4084i, vec2<i32>(-34928i, -1i), vec2<u32>(4294967295u, 30537u), -13724i, vec4<i32>(23226i, -60914i, 2147483647i, -10685i)), Struct_1(15905i, vec2<i32>(46269i, -1i), vec2<u32>(0u, 83724u), 0i, vec4<i32>(0i, 2147483647i, 15122i, 0i)), Struct_1(11859i, vec2<i32>(i32(-2147483648), 55173i), vec2<u32>(49112u, 31005u), -40770i, vec4<i32>(1i, 0i, -2950i, i32(-2147483648))), Struct_1(1i, vec2<i32>(-20689i, 1i), vec2<u32>(25573u, 54318u), 38071i, vec4<i32>(-51120i, 1i, 1i, 0i)), Struct_1(2147483647i, vec2<i32>(23445i, i32(-2147483648)), vec2<u32>(0u, 1u), 2147483647i, vec4<i32>(-14873i, 58294i, 0i, 2147483647i)), Struct_1(-1i, vec2<i32>(-1i, 1i), vec2<u32>(0u, 1u), -15115i, vec4<i32>(-1i, 0i, 1i, i32(-2147483648))), Struct_1(0i, vec2<i32>(-12196i, i32(-2147483648)), vec2<u32>(34598u, 1u), 1i, vec4<i32>(-1i, 49749i, -18409i, 1i)), Struct_1(2147483647i, vec2<i32>(2513i, -14361i), vec2<u32>(19284u, 4294967295u), -45849i, vec4<i32>(-1i, 2147483647i, -7738i, 1i)), Struct_1(-60365i, vec2<i32>(1i, -61304i), vec2<u32>(63773u, 1u), 3795i, vec4<i32>(2147483647i, 18146i, 2147483647i, -7625i)), Struct_1(0i, vec2<i32>(49224i, -2175i), vec2<u32>(1u, 38594u), i32(-2147483648), vec4<i32>(i32(-2147483648), 34297i, 10237i, 24195i)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: bool, arg_1: u32) -> vec2<u32> {
    var var_0 = ~(vec4<i32>(-1i) * -vec4<i32>(global1[_wgslsmith_index_u32(~0u, 22u)], global1[_wgslsmith_index_u32(countOneBits(u_input.d), 22u)], _wgslsmith_mod_i32(global2.b, u_input.a.x), _wgslsmith_add_i32(global2.b, 1i)));
    var_0 = vec4<i32>(7202i, ~(-2147483647i) ^ (-global2.b & var_0.x), -2147483647i, var_0.x);
    return u_input.c.xy;
}

fn func_3(arg_0: bool) -> f32 {
    global2 = Struct_2(global0.x, _wgslsmith_div_i32(u_input.b.x, (abs(global2.b) & ~(-5324i)) << (1u % 32u)), vec4<bool>(arg_0, any(global2.c.yzy), !(false & global2.c.x) || !any(global2.c), true));
    let var_0 = Struct_2(!any(!(!global2.c)), global2.b, !(!select(!vec4<bool>(global2.c.x, global0.x, arg_0, global2.a), vec4<bool>(false, arg_0, arg_0, arg_0), !global2.c)));
    let var_1 = global4[_wgslsmith_index_u32(~(~firstTrailingBit(117881u)), 26u)];
    var var_2 = min(vec4<i32>(-1i) * -vec4<i32>(global1[_wgslsmith_index_u32(73207u, 22u)], 1i, var_0.b, var_0.b), vec4<i32>(abs(var_1.b.x), countOneBits(_wgslsmith_dot_vec4_i32(var_1.e, vec4<i32>(global2.b, var_1.a, var_0.b, 0i))), 1i, 0i)) >> (vec4<u32>(min(min(~u_input.c.x, u_input.d), 46280u), 1u, firstTrailingBit(~(4294967295u << (0u % 32u))), var_1.c.x) % vec4<u32>(32u));
    var_2 = ~(abs(var_1.e | vec4<i32>(38512i, 47934i, u_input.a.x, 4118i)) >> (u_input.c % vec4<u32>(32u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1457f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), global2.c.x)))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: i32) -> u32 {
    global2 = Struct_2(true & ((any(global2.c.wwx) | (arg_0.x != -169f)) != select(true, global2.a, all(global2.c.xw))), u_input.b.x, vec4<bool>((all(global2.c.yy) | global0.x) & (global0.x || true), global0.x, any(global2.c), true || !all(vec2<bool>(global2.c.x, global2.a))));
    let var_0 = global4[_wgslsmith_index_u32(u_input.d, 26u)];
    var var_1 = u_input.d;
    let var_2 = abs(func_1(u_input.c.x < (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.x, var_0.c.x), vec2<u32>(30314u, 32025u)) & 21463u), _wgslsmith_clamp_u32(firstLeadingBit(var_0.c.x), 0u, ~0u)));
    var var_3 = Struct_1(~abs(-2147483647i), -abs(countOneBits(_wgslsmith_sub_vec2_i32(u_input.a.xx, var_0.b))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(12656u, 53176u), vec2<u32>(80686u, 20344u)) ^ var_2, global2.b, -vec4<i32>(global2.b, -(u_input.a.x >> (var_0.c.x % 32u)), -2147483647i, ~1i << (u_input.d % 32u)));
    return 0u;
}

fn func_2(arg_0: vec2<u32>) -> i32 {
    let var_0 = ~(abs(vec2<u32>(~arg_0.x, arg_0.x)) << (vec2<u32>(arg_0.x, u_input.c.x) % vec2<u32>(32u)));
    global1 = array<i32, 22>();
    global4 = array<Struct_1, 26>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(117f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-200f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2037f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1075f + -167f)))), 1565f));
    let var_2 = Struct_1(u_input.b.x, u_input.a.zx, vec2<u32>(arg_0.x, _wgslsmith_mult_u32(~_wgslsmith_div_u32(u_input.d, arg_0.x), countOneBits(min(u_input.c.x, 53955u)))), _wgslsmith_add_i32(u_input.a.x, select(~(i32(-1i) * -1i), ~global1[_wgslsmith_index_u32(1u >> (0u % 32u), 22u)], firstTrailingBit(var_0.x) > ~arg_0.x)), vec4<i32>(max(_wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.a.xx), u_input.a.zy), ~0i), global1[_wgslsmith_index_u32(func_4(vec3<f32>(-852f, var_1.x, _wgslsmith_f_op_f32(func_3(global0.x))), ~1i), 22u)], _wgslsmith_dot_vec2_i32(-global3[_wgslsmith_index_u32(~u_input.c.x, 12u)], reverseBits(vec2<i32>(u_input.b.x, u_input.b.x) >> (var_0 % vec2<u32>(32u)))), ~u_input.b.x));
    return ~(-_wgslsmith_dot_vec4_i32(select(-var_2.e, vec4<i32>(global1[_wgslsmith_index_u32(123843u, 22u)], 1i, 38989i, global2.b), vec4<bool>(true, global0.x, false, false)), vec4<i32>(~u_input.b.x, ~2147483647i, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 0u), 22u)], _wgslsmith_sub_i32(-24366i, var_2.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-9430i, global2.b, global1[_wgslsmith_index_u32(58554u, 22u)]), vec3<i32>(1i, 25983i, 23438i)), _wgslsmith_sub_i32(firstLeadingBit(global2.b), u_input.b.x << (4294967295u % 32u)), (global1[_wgslsmith_index_u32(0u, 22u)] | -46317i) & -global2.b);
    var var_1 = Struct_2(true, global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_clamp_u32(firstLeadingBit(u_input.d), u_input.c.x | u_input.d, firstTrailingBit(u_input.c.x))), 22u)] & -22211i, !global2.c);
    var var_2 = Struct_2(true, _wgslsmith_mult_i32(~1i, -func_2(func_1(global0.x, 38191u))), !vec4<bool>(all(var_1.c.wyy) || (global1[_wgslsmith_index_u32(9208u, 22u)] != global1[_wgslsmith_index_u32(u_input.d, 22u)]), true, global0.x, global0.x));
    var var_3 = global4[_wgslsmith_index_u32(firstLeadingBit(~(~func_1(var_1.a, u_input.d).x)) | ~(13315u << ((func_4(vec3<f32>(-1503f, 1762f, 1116f), 1i) | 4294967295u) % 32u)), 26u)];
    let var_4 = Struct_2(all(select(select(!vec2<bool>(global0.x, true), global2.c.wz, var_1.a), !(!global2.c.wy), false)), (3286i ^ u_input.a.x) & -abs(firstTrailingBit(-58520i)), vec4<bool>(true, global0.x, true, !any(!var_1.c.xwx)));
    var var_5 = reverseBits(1i) & (u_input.b.x >> (1u % 32u));
    var var_6 = var_4.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(func_1(true, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.c.wyw, u_input.c.wzw), u_input.c.wxy)).x, func_1(true, var_3.c.x).x, _wgslsmith_add_u32(u_input.c.x, u_input.d ^ u_input.c.x)), ~var_3.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1000f, 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1928f + 1000f))))), var_3.c.x);
}

