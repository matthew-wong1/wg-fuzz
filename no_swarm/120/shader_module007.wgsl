struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32> = array<u32, 32>(4294967295u, 0u, 16691u, 14563u, 19045u, 37576u, 4704u, 12751u, 54141u, 12499u, 0u, 28537u, 127807u, 55171u, 31347u, 1u, 1u, 4294967295u, 0u, 14377u, 91261u, 0u, 45525u, 0u, 4294967295u, 0u, 0u, 25334u, 7571u, 29900u, 4294967295u, 53036u);

var<private> global1: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(Struct_1(-613f, vec3<i32>(1i, 1i, 0i), true, 143f), Struct_1(928f, vec3<i32>(5092i, -1i, 22506i), true, 256f), Struct_1(407f, vec3<i32>(24740i, 3878i, -26129i), false, 1644f)), Struct_2(Struct_1(-440f, vec3<i32>(i32(-2147483648), i32(-2147483648), 0i), true, 164f), Struct_1(227f, vec3<i32>(i32(-2147483648), -49134i, 0i), true, -1198f), Struct_1(-660f, vec3<i32>(26755i, 5454i, 14846i), false, -334f)), Struct_2(Struct_1(815f, vec3<i32>(-2090i, i32(-2147483648), 1i), true, -330f), Struct_1(1364f, vec3<i32>(0i, 54381i, 25492i), false, 1246f), Struct_1(-2033f, vec3<i32>(-1i, 0i, 45058i), true, 1224f)), Struct_2(Struct_1(1013f, vec3<i32>(0i, -7998i, 2147483647i), true, 129f), Struct_1(-163f, vec3<i32>(-7733i, -8270i, -44402i), true, -275f), Struct_1(-1035f, vec3<i32>(2147483647i, 1i, i32(-2147483648)), true, -298f)), Struct_2(Struct_1(1585f, vec3<i32>(33390i, -1i, 2147483647i), false, 245f), Struct_1(-545f, vec3<i32>(0i, -19123i, 3896i), true, -189f), Struct_1(-312f, vec3<i32>(-38666i, i32(-2147483648), 9258i), false, 465f)), Struct_2(Struct_1(-896f, vec3<i32>(2147483647i, 38395i, 0i), false, -482f), Struct_1(-1281f, vec3<i32>(51830i, 63135i, -31128i), true, 1116f), Struct_1(-337f, vec3<i32>(2147483647i, -57377i, i32(-2147483648)), true, 514f)), Struct_2(Struct_1(306f, vec3<i32>(46044i, -44735i, 1i), true, 1386f), Struct_1(-160f, vec3<i32>(-1i, 399i, 1i), false, 920f), Struct_1(-1478f, vec3<i32>(63403i, i32(-2147483648), -16039i), false, 921f)), Struct_2(Struct_1(175f, vec3<i32>(-1i, i32(-2147483648), 1i), false, -1000f), Struct_1(796f, vec3<i32>(-59928i, 1i, 2147483647i), false, -1149f), Struct_1(770f, vec3<i32>(-3484i, -27607i, 2147483647i), false, 241f)), Struct_2(Struct_1(1439f, vec3<i32>(1i, 1i, -45428i), false, 910f), Struct_1(-1061f, vec3<i32>(12907i, 48125i, -2513i), true, -204f), Struct_1(-1000f, vec3<i32>(1959i, i32(-2147483648), -40150i), false, -715f)), Struct_2(Struct_1(-1000f, vec3<i32>(2147483647i, -44465i, -16029i), true, -1302f), Struct_1(-1510f, vec3<i32>(0i, 24133i, 1409i), false, 559f), Struct_1(-2431f, vec3<i32>(1i, 39505i, 1i), false, 650f)), Struct_2(Struct_1(-291f, vec3<i32>(-17481i, 0i, 30164i), false, -814f), Struct_1(291f, vec3<i32>(8960i, -1i, -10535i), false, 497f), Struct_1(793f, vec3<i32>(-12698i, -1i, 12717i), false, 418f)));

var<private> global2: bool;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> u32 {
    let var_0 = true;
    global1 = array<Struct_2, 11>();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(1262f, 333f), -1745f, _wgslsmith_f_op_f32(-865f - 322f), _wgslsmith_f_op_f32(step(2855f, 168f)))))) + vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -950f), _wgslsmith_f_op_f32(f32(-1f) * -631f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(934f)))), _wgslsmith_f_op_f32(-1f), -241f));
    var var_2 = Struct_1(-567f, vec3<i32>(_wgslsmith_sub_i32(u_input.c, 11258i), u_input.b.x, ~u_input.c), !(!(!any(vec4<bool>(var_0, var_0, false, var_0)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * -1642f) + -237f))));
    global1 = array<Struct_2, 11>();
    return global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x & ((0u & _wgslsmith_mult_u32(23415u, global0[_wgslsmith_index_u32(0u, 32u)])) >> (1u % 32u))), 32u)];
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    global2 = any(vec4<bool>(!arg_2.c.c, arg_1.c, any(vec3<bool>(arg_1.c, arg_2.a.c, true)), arg_1.c)) && any(vec3<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(false, arg_1.c), vec2<bool>(arg_2.a.c, arg_2.c.c))), true));
    global2 = !(global0[_wgslsmith_index_u32(arg_0.x, 32u)] != 4294967295u);
    var var_0 = arg_1.b.yz;
    let var_1 = ~func_3();
    global1 = array<Struct_2, 11>();
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2.c.d, arg_1.d, false)) * arg_2.b.d)))), vec3<i32>(abs(_wgslsmith_add_i32(var_0.x, u_input.c) | firstLeadingBit(arg_2.b.b.x)), 22912i, _wgslsmith_clamp_i32(var_0.x, ~(-33630i), _wgslsmith_sub_i32(_wgslsmith_add_i32(arg_2.c.b.x, var_0.x), 2147483647i))), select(55618i, ~countOneBits(-12770i), !arg_2.c.c) != (_wgslsmith_div_i32(var_0.x, ~arg_2.b.b.x) << (firstTrailingBit(1u) % 32u)), 453f);
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_2) -> vec2<bool> {
    global2 = false;
    var var_0 = arg_3.c.b.zx;
    let var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(~min(_wgslsmith_mod_u32(0u, global0[_wgslsmith_index_u32(0u, 32u)]), firstTrailingBit(4583u)), 32u)], 53763u), select(reverseBits(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 32u)] >> (1u % 32u), _wgslsmith_sub_u32(1u, global0[_wgslsmith_index_u32(1u, 32u)]))), u_input.a.yz, any(vec2<bool>(false, arg_3.a.c)) & all(!vec4<bool>(false, arg_3.c.c, true, arg_3.c.c))));
    var var_2 = arg_3.b;
    var var_3 = func_2(var_1 ^ select(vec2<u32>(28426u, 4294967295u), ~max(vec2<u32>(u_input.a.x, 4294967295u), u_input.a.yx), !vec2<bool>(var_2.c, arg_3.a.c)), arg_3.b, Struct_2(arg_3.c, func_2(vec2<u32>(~0u, ~u_input.a.x), arg_3.a, Struct_2(arg_3.c, Struct_1(1609f, u_input.b.yzx, false, arg_3.b.a), arg_3.b)), arg_3.b));
    return !vec2<bool>(func_2(~(~u_input.a.zx), arg_3.c, arg_3).c, false);
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> bool {
    global2 = true;
    global2 = arg_0.a.c;
    var var_0 = arg_0.a;
    let var_1 = select(select(select(vec2<bool>(false, !var_0.c), vec2<bool>(arg_0.a.a < var_0.a, !var_0.c), select(!vec2<bool>(true, arg_0.b.c), !vec2<bool>(var_0.c, true), vec2<bool>(true, true))), vec2<bool>(true, var_0.c), select(!select(vec2<bool>(var_0.c, false), vec2<bool>(var_0.c, arg_0.c.c), true), !(!vec2<bool>(false, var_0.c)), var_0.c)), select(func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, -538f, arg_0.b.a) - vec3<f32>(var_0.d, var_0.a, 254f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.d * arg_0.c.d)), vec2<i32>(~21439i, u_input.b.x), Struct_2(func_2(vec2<u32>(global0[_wgslsmith_index_u32(arg_1, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)]), arg_0.b, Struct_2(arg_0.c, arg_0.a, Struct_1(-537f, vec3<i32>(46555i, 0i, var_0.b.x), true, 734f))), Struct_1(arg_0.c.a, u_input.b.yzy, arg_0.b.c, -336f), func_2(u_input.a.yy, Struct_1(-467f, vec3<i32>(arg_0.a.b.x, u_input.b.x, 2147483647i), arg_0.a.c, -1000f), Struct_2(Struct_1(-1001f, vec3<i32>(var_0.b.x, 0i, arg_0.a.b.x), false, 313f), Struct_1(var_0.d, vec3<i32>(arg_0.c.b.x, -2147483647i, u_input.c), false, 330f), Struct_1(2485f, u_input.b.xxw, false, -215f))))), !vec2<bool>(all(vec4<bool>(true, arg_0.a.c, arg_0.b.c, arg_0.a.c)), true), false), arg_0.b.c);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(abs(arg_0.c.a)), vec3<i32>(arg_0.c.b.x, _wgslsmith_div_i32(~var_0.b.x, _wgslsmith_add_i32(-18853i, u_input.b.x)), -30958i << (1u % 32u)) | ~(-u_input.b.zxx), !var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.d))) + _wgslsmith_div_f32(arg_0.c.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -721f) - arg_0.b.a))));
    return ~(~(~u_input.a.x)) < u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.yyx;
    global2 = any(!vec4<bool>(func_1(global1[_wgslsmith_index_u32(1u, 11u)], u_input.a.x) || true, true, any(vec3<bool>(true, true, true)), true));
    let var_1 = _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(min(vec3<i32>(~9094i, u_input.c, var_0.x), _wgslsmith_div_vec3_i32(var_0, select(vec3<i32>(u_input.b.x, 2147483647i, var_0.x), var_0, false))), select(u_input.b.zwz, vec3<i32>(-1i, 32569i, -1i) | func_2(vec2<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], 20503u), Struct_1(-494f, vec3<i32>(30081i, 7316i, 2147483647i), false, -252f), global1[_wgslsmith_index_u32(0u, 11u)]).b, select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false)))), 0i);
    var var_2 = global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], 11u)];
    var var_3 = -1i;
    var var_4 = var_2.a;
    var_2 = Struct_2(func_2(_wgslsmith_mult_vec2_u32(u_input.a.zy, ~u_input.a.zy >> (firstTrailingBit(vec2<u32>(1085u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 32u)], 32u)])) % vec2<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1333f), u_input.b.wzy, true, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2288f)))), global1[_wgslsmith_index_u32(firstTrailingBit(~_wgslsmith_add_u32(u_input.a.x, u_input.a.x)), 11u)]), func_2(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.xx, min(u_input.a.xy, vec2<u32>(u_input.a.x, u_input.a.x))), ~_wgslsmith_sub_vec2_u32(u_input.a.yx, vec2<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], 4294967295u))), func_2(max(_wgslsmith_mod_vec2_u32(u_input.a.xz, u_input.a.xx), u_input.a.zx ^ vec2<u32>(4294967295u, 0u)), Struct_1(1332f, _wgslsmith_div_vec3_i32(vec3<i32>(0i, var_2.a.b.x, u_input.c), u_input.b.zzw), func_4(vec3<f32>(1000f, var_2.a.a, var_4.d), var_4.a, var_4.b.xz, global1[_wgslsmith_index_u32(0u, 11u)]).x, -2031f), global1[_wgslsmith_index_u32(u_input.a.x >> (35182u % 32u), 11u)]), global1[_wgslsmith_index_u32(max(~(~1u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, global0[_wgslsmith_index_u32(31735u, 32u)]), ~u_input.a.zy)), 11u)]), var_2.c);
    var var_5 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.a.d, -724f, 128f), vec3<f32>(var_5.a, var_2.a.d, var_2.a.a)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(396f, var_2.a.d, 838f), vec3<f32>(var_2.b.a, var_4.a, var_5.d), vec3<bool>(false, var_4.c, true)))))), select(~max(reverseBits(vec4<u32>(1u, 76858u, 24076u, u_input.a.x)), vec4<u32>(11099u, 32968u, 0u, 1u) >> (vec4<u32>(4294967295u, u_input.a.x, 0u, 4294967295u) % vec4<u32>(32u))), firstTrailingBit(~(~vec4<u32>(20057u, 101391u, u_input.a.x, u_input.a.x))), vec4<bool>(var_2.c.c, true, var_4.c, !(!var_5.c))));
}

