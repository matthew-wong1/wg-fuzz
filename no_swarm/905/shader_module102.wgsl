struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec3<bool>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 25>;

var<private> global1: Struct_3 = Struct_3(vec3<u32>(71352u, 14348u, 64628u), Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec2<u32>(44525u, 12473u)), Struct_1(vec4<bool>(false, false, false, true), vec2<u32>(1u, 4294967295u)), vec4<i32>(-1i, 63499i, 41343i, -53392i), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), 0u);

var<private> global2: array<bool, 10> = array<bool, 10>(true, false, false, false, false, false, true, true, false, false);

var<private> global3: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec2<u32>(1u, 4294967295u)), Struct_1(vec4<bool>(true, true, false, false), vec2<u32>(35582u, 25238u)), vec4<i32>(55008i, i32(-2147483648), -94004i, 11603i), vec3<bool>(true, false, true)), Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec2<u32>(81836u, 4294967295u)), Struct_1(vec4<bool>(false, true, true, true), vec2<u32>(1933u, 0u)), vec4<i32>(1i, -44717i, 2147483647i, i32(-2147483648)), vec3<bool>(false, false, true)), Struct_2(Struct_1(vec4<bool>(true, false, false, false), vec2<u32>(1u, 4294967295u)), Struct_1(vec4<bool>(false, true, false, true), vec2<u32>(16319u, 59835u)), vec4<i32>(16286i, 17512i, 2147483647i, -23529i), vec3<bool>(true, true, false)), Struct_2(Struct_1(vec4<bool>(true, true, false, false), vec2<u32>(82185u, 19950u)), Struct_1(vec4<bool>(true, true, false, true), vec2<u32>(2153u, 1u)), vec4<i32>(-9130i, -61798i, -1734i, -1i), vec3<bool>(false, true, true)), Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec2<u32>(40289u, 64237u)), Struct_1(vec4<bool>(true, true, false, false), vec2<u32>(0u, 49070u)), vec4<i32>(2147483647i, -1i, -54400i, 2147483647i), vec3<bool>(false, true, false)), Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec2<u32>(4294967295u, 1u)), Struct_1(vec4<bool>(true, false, false, false), vec2<u32>(79753u, 59055u)), vec4<i32>(1948i, 2181i, 1i, 15367i), vec3<bool>(true, false, false)), Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec2<u32>(0u, 4294967295u)), Struct_1(vec4<bool>(true, true, false, true), vec2<u32>(14822u, 4981u)), vec4<i32>(-56513i, -24797i, -50829i, 2147483647i), vec3<bool>(false, false, false)), Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec2<u32>(9146u, 44645u)), Struct_1(vec4<bool>(false, false, false, false), vec2<u32>(0u, 4294967295u)), vec4<i32>(-6010i, 2147483647i, 0i, 25152i), vec3<bool>(true, true, false)), Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec2<u32>(62545u, 42486u)), Struct_1(vec4<bool>(false, false, true, false), vec2<u32>(1u, 63095u)), vec4<i32>(-1i, -243i, -48869i, i32(-2147483648)), vec3<bool>(false, false, true)), Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec2<u32>(1u, 27272u)), Struct_1(vec4<bool>(false, false, false, true), vec2<u32>(45551u, 0u)), vec4<i32>(1i, 2147483647i, 33348i, -11218i), vec3<bool>(true, false, true)), Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec2<u32>(39878u, 22767u)), Struct_1(vec4<bool>(false, false, false, false), vec2<u32>(4294967295u, 21029u)), vec4<i32>(0i, -23784i, -59136i, -6585i), vec3<bool>(false, false, true)), Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec2<u32>(45217u, 1u)), Struct_1(vec4<bool>(true, true, true, false), vec2<u32>(20277u, 51660u)), vec4<i32>(2147483647i, 30957i, -77515i, 2764i), vec3<bool>(true, true, false)), Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec2<u32>(1u, 0u)), Struct_1(vec4<bool>(false, false, true, true), vec2<u32>(30314u, 60566u)), vec4<i32>(-28844i, 2147483647i, i32(-2147483648), 1i), vec3<bool>(false, false, false)), Struct_2(Struct_1(vec4<bool>(true, true, true, true), vec2<u32>(47635u, 75810u)), Struct_1(vec4<bool>(false, false, true, true), vec2<u32>(72961u, 7215u)), vec4<i32>(26129i, -22811i, -5200i, -38754i), vec3<bool>(false, false, true)), Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec2<u32>(0u, 27030u)), Struct_1(vec4<bool>(false, false, false, true), vec2<u32>(4294967295u, 1129u)), vec4<i32>(1i, 1i, 38270i, -32884i), vec3<bool>(false, true, true)), Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec2<u32>(0u, 4415u)), Struct_1(vec4<bool>(false, true, true, true), vec2<u32>(1u, 1u)), vec4<i32>(54813i, -43965i, -173i, 1i), vec3<bool>(true, false, true)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> u32 {
    global3 = array<Struct_2, 16>();
    var var_0 = Struct_1(!global1.b.b.a, vec2<u32>(~71463u, 59113u));
    var var_1 = _wgslsmith_div_f32(794f, 710f);
    let var_2 = ~global1.b.c.zx;
    let var_3 = _wgslsmith_sub_u32(var_0.b.x, _wgslsmith_mod_u32(~countOneBits(global1.b.a.b.x), ~var_0.b.x ^ min(var_0.b.x, 1768u))) ^ global1.d;
    return countOneBits(max(9656u, min(var_3, ~var_0.b.x)) | abs(4294967295u));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_3) -> i32 {
    global1 = Struct_3(reverseBits(firstTrailingBit(abs(vec3<u32>(34716u, 1u, 47975u)))), Struct_2(global1.b.b, Struct_1(!(!global1.b.a.a), ~(~vec2<u32>(20118u, 0u))), select(global1.b.c, firstTrailingBit(vec4<i32>(arg_2.b.c.x, u_input.b, -1i, u_input.b)), !arg_1.a.x), !select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 10u)], false, global1.b.d.x), !vec3<bool>(true, arg_1.a.x, false), arg_1.a.yzw)), vec3<bool>(select(false, global1.c.x, true), select(i32(-1i) * -17080i, 0i << (u_input.a % 32u), any(global1.b.d)) == firstTrailingBit(arg_2.b.c.x), true), countOneBits(5063u));
    global0 = array<Struct_3, 25>();
    var var_0 = -519f;
    var var_1 = global1.b.c.wx;
    let var_2 = _wgslsmith_sub_u32(max(~global1.d, u_input.a), ~4294967295u);
    return _wgslsmith_add_i32(firstTrailingBit(_wgslsmith_mod_i32(i32(-1i) * -28947i, -(~global1.b.c.x))), global1.b.c.x);
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-866f)));
    let var_1 = func_3(arg_0.c.x, arg_0.b.b, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1.b.a.b.x, func_2()), 25u)]);
    var var_2 = select(vec2<bool>(true, true), !vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.d, 18081u, arg_0.b.b.b.x), ~vec3<u32>(global1.d, 4294967295u, arg_0.d)), 10u)], (-1775f <= var_0) && all(vec3<bool>(false, true, true))), arg_0.c.x);
    global2 = array<bool, 10>();
    let var_3 = global1.b.c.x;
    return global1.b.b;
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> StorageBuffer {
    global2 = array<bool, 10>();
    var var_0 = func_1(Struct_3(max(abs(global1.a), ~_wgslsmith_mod_vec3_u32(global1.a, global1.a)), Struct_2(arg_0.b, func_1(global0[_wgslsmith_index_u32(~global1.d, 25u)]), vec4<i32>(abs(u_input.b), -12255i, -8482i, global1.b.c.x), select(vec3<bool>(true, false, global2[_wgslsmith_index_u32(0u, 10u)]), global1.c, true)), global1.c, 1u | u_input.a));
    global1 = Struct_3(global1.a, global1.b, vec3<bool>(true, true & any(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 10u)], global1.c.x)), true), arg_0.b.b.x);
    global1 = global0[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(global1.a.x, 1u)), 25u)];
    global1 = global0[_wgslsmith_index_u32(~(~(((u_input.a ^ 69518u) | func_2()) << ((~global1.a.x >> (~1u % 32u)) % 32u))), 25u)];
    return StorageBuffer(_wgslsmith_sub_vec2_i32(abs(countOneBits(arg_0.c.zz)), select(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(34677i, -1i)), arg_0.c.xx, false & all(global1.b.d.zx))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1226f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1606f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(296f - 878f), _wgslsmith_div_f32(228f, 972f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 925f) + _wgslsmith_div_f32(-1410f, 748f))))));
    let x = u_input.a;
    s_output = func_4(Struct_2(func_1(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, min(37452u, 4294967295u)), 25u)]), Struct_1(global1.b.b.a, firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(63263u, 21072u), global1.b.b.b))), select(global1.b.c, vec4<i32>(-1i, select(global1.b.c.x, 1i, false), global1.b.c.x ^ 2147483647i, 0i), true), select(vec3<bool>(!global2[_wgslsmith_index_u32(0u, 10u)], global2[_wgslsmith_index_u32(global1.a.x, 10u)], !global1.b.d.x), global1.c, true)), global1.b.d.x);
}

