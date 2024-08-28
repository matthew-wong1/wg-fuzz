struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: Struct_2,
    d: vec4<i32>,
    e: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(4294967295u, Struct_3(vec4<bool>(false, true, false, false), 107263u, Struct_2(-1390f, vec4<bool>(true, true, true, true)), vec4<i32>(1i, 2147483647i, 2147483647i, 0i), 24798u));

var<private> global1: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(vec4<bool>(true, true, false, true), 1u, Struct_2(-925f, vec4<bool>(true, false, false, false)), vec4<i32>(1i, 40794i, 1i, 25033i), 0u), Struct_3(vec4<bool>(true, false, true, false), 4294967295u, Struct_2(647f, vec4<bool>(true, false, false, false)), vec4<i32>(1i, 2147483647i, -1i, 0i), 41328u), Struct_3(vec4<bool>(false, false, true, true), 86617u, Struct_2(160f, vec4<bool>(false, false, true, false)), vec4<i32>(1i, -16804i, 2147483647i, 2147483647i), 1u), Struct_3(vec4<bool>(false, false, false, false), 33805u, Struct_2(-1261f, vec4<bool>(false, false, false, true)), vec4<i32>(0i, 1i, 42191i, -1i), 1u), Struct_3(vec4<bool>(false, false, true, false), 51708u, Struct_2(356f, vec4<bool>(false, true, true, false)), vec4<i32>(i32(-2147483648), 1i, 1i, -12734i), 50183u), Struct_3(vec4<bool>(false, true, false, true), 11176u, Struct_2(1000f, vec4<bool>(false, false, false, true)), vec4<i32>(i32(-2147483648), 1i, 6934i, 1i), 8872u), Struct_3(vec4<bool>(false, true, true, false), 1u, Struct_2(1000f, vec4<bool>(true, false, false, false)), vec4<i32>(-33628i, 21382i, 32933i, 11205i), 4294967295u), Struct_3(vec4<bool>(false, true, true, true), 1u, Struct_2(856f, vec4<bool>(true, true, false, false)), vec4<i32>(-78004i, i32(-2147483648), 2147483647i, 33792i), 59740u), Struct_3(vec4<bool>(false, true, true, true), 42449u, Struct_2(1000f, vec4<bool>(true, false, true, false)), vec4<i32>(1i, -47247i, i32(-2147483648), -1i), 86491u), Struct_3(vec4<bool>(false, false, true, true), 12828u, Struct_2(282f, vec4<bool>(true, false, true, true)), vec4<i32>(0i, -6950i, i32(-2147483648), i32(-2147483648)), 4294967295u), Struct_3(vec4<bool>(true, false, true, true), 4294967295u, Struct_2(966f, vec4<bool>(true, true, false, true)), vec4<i32>(-1873i, 2147483647i, 4489i, 1i), 23266u), Struct_3(vec4<bool>(false, true, false, true), 1u, Struct_2(-404f, vec4<bool>(true, false, true, true)), vec4<i32>(68327i, -1i, 0i, -26654i), 9574u), Struct_3(vec4<bool>(true, true, true, true), 4294967295u, Struct_2(-448f, vec4<bool>(false, false, true, true)), vec4<i32>(2147483647i, 2147483647i, -1i, 2147483647i), 1u), Struct_3(vec4<bool>(true, false, false, false), 4294967295u, Struct_2(-853f, vec4<bool>(true, false, false, false)), vec4<i32>(-1i, 2952i, 2147483647i, 0i), 4294967295u), Struct_3(vec4<bool>(true, true, false, true), 1u, Struct_2(-2439f, vec4<bool>(true, true, false, true)), vec4<i32>(-21264i, 0i, 2147483647i, 45237i), 4294967295u), Struct_3(vec4<bool>(false, true, false, true), 38283u, Struct_2(-532f, vec4<bool>(false, true, false, false)), vec4<i32>(-1i, 0i, i32(-2147483648), 0i), 1u), Struct_3(vec4<bool>(true, true, true, false), 99819u, Struct_2(232f, vec4<bool>(true, false, false, true)), vec4<i32>(25145i, -3780i, 0i, 0i), 19528u), Struct_3(vec4<bool>(true, true, true, true), 72005u, Struct_2(-1000f, vec4<bool>(true, true, false, false)), vec4<i32>(-17410i, 1i, 0i, -36024i), 20621u), Struct_3(vec4<bool>(false, true, false, false), 4294967295u, Struct_2(-1332f, vec4<bool>(false, false, true, false)), vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), -1i), 0u), Struct_3(vec4<bool>(true, false, false, false), 4294967295u, Struct_2(-1000f, vec4<bool>(true, false, true, true)), vec4<i32>(2147483647i, 2147483647i, 0i, 0i), 29205u), Struct_3(vec4<bool>(false, false, false, false), 0u, Struct_2(-277f, vec4<bool>(false, true, true, true)), vec4<i32>(-36773i, 0i, i32(-2147483648), 1i), 0u));

var<private> global2: Struct_3 = Struct_3(vec4<bool>(false, true, true, false), 0u, Struct_2(-1102f, vec4<bool>(true, false, false, false)), vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), 25606i), 0u);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec4<u32> {
    global0 = Struct_4(select(reverseBits(_wgslsmith_clamp_u32(u_input.c, 1u, 42332u) | min(0u, 0u)), global0.a, global0.b.a.x), global1[_wgslsmith_index_u32(3693u, 21u)]);
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.b.c.a, global2.c.a, 962f), vec3<f32>(global0.b.c.a, 685f, 795f), false)), vec3<f32>(-1220f, global0.b.c.a, 822f)))))))));
    let var_1 = !global2.c.b.x;
    let var_2 = select(global0.b.a.xyx, select(select(global0.b.c.b.zxx, !(!global0.b.c.b.zxw), !select(global0.b.c.b.xxz, global2.c.b.xyx, true)), vec3<bool>(global0.b.c.b.x, false, var_1), !select(vec3<bool>(false, var_1, global2.c.b.x), select(global2.c.b.xzz, global0.b.a.wzx, var_1), true)), false);
    let var_3 = _wgslsmith_div_vec3_u32(vec3<u32>(~u_input.c, reverseBits(countOneBits(_wgslsmith_mult_u32(u_input.c, global0.a))), global2.e), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.c << (u_input.c % 32u), 4294967295u, 4294967295u), _wgslsmith_sub_vec3_u32(min(vec3<u32>(103059u, 0u, 0u) & vec3<u32>(global2.b, global0.b.e, u_input.c), vec3<u32>(global2.b, 4294967295u, global2.b) ^ vec3<u32>(global2.b, 12905u, u_input.c)), ~vec3<u32>(1u, global0.a, u_input.c) | ~vec3<u32>(global0.a, 29565u, 14687u)), min(abs(vec3<u32>(global2.b, 4294967295u, global0.b.e)), ~firstTrailingBit(vec3<u32>(global2.e, u_input.c, u_input.c)))));
    return select(vec4<u32>(var_3.x, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(abs(u_input.c), _wgslsmith_mult_u32(0u, 1u)), var_3.xy), firstTrailingBit(u_input.c)), ~(~(~vec4<u32>(var_3.x, 50426u, 3255u, global0.b.e))) | vec4<u32>(max(global0.b.e, _wgslsmith_mod_u32(1u, u_input.c)), global2.e, global2.e, 13223u), true);
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = select(select(global0.b.c.b.www, vec3<bool>(true, _wgslsmith_div_i32(global0.b.d.x, global0.b.d.x) >= (23134i << (global2.b % 32u)), !(4294967295u > global2.e)), vec3<bool>(global2.a.x, true, !arg_0)), vec3<bool>(true, global2.a.x, true), select(any(global2.c.b), !(max(1597i, u_input.e) != 1i), arg_0));
    global0 = Struct_4(57873u, Struct_3(!vec4<bool>(global0.b.c.a >= global0.b.c.a, any(vec3<bool>(arg_0, false, var_0.x)), true, !global2.a.x), u_input.c, global0.b.c, vec4<i32>(6275i, global2.d.x, -select(12289i, 2147483647i, global2.a.x), -2147483647i), _wgslsmith_dot_vec4_u32(func_3(), firstLeadingBit(firstLeadingBit(vec4<u32>(global0.b.e, 31511u, u_input.c, global2.e))))));
    global0 = Struct_4(~(~global0.b.b), Struct_3(select(select(vec4<bool>(true, true, global2.a.x, true), select(vec4<bool>(true, arg_0, true, global0.b.a.x), vec4<bool>(false, true, true, false), vec4<bool>(true, false, var_0.x, true)), vec4<bool>(true, global0.b.c.b.x, global2.c.b.x, true)), select(global0.b.a, !global2.c.b, select(global2.c.b, vec4<bool>(false, global2.a.x, false, true), global0.b.a.x)), global0.b.a.x), 78027u, Struct_2(global0.b.c.a, !select(global2.a, global0.b.c.b, vec4<bool>(false, global0.b.c.b.x, arg_0, global0.b.c.b.x))), vec4<i32>(global0.b.d.x, ~33262i, -1i, ~(-global2.d.x)), 4294967295u));
    global0 = Struct_4(18549u >> (1u % 32u), global0.b);
    var_0 = vec3<bool>(true, var_0.x, true);
    return Struct_1(false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-2145f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-476f)) * global0.b.c.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.c.a * global0.b.c.a)), -759f)));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2) -> f32 {
    var var_0 = vec2<i32>(_wgslsmith_dot_vec3_i32(global2.d.wzx, vec3<i32>(i32(-1i) * -3506i, ~u_input.d.x, -20664i) >> (reverseBits(vec3<u32>(49783u, 74306u, 4294967295u) | vec3<u32>(u_input.c, global2.b, u_input.c)) % vec3<u32>(32u))), reverseBits(_wgslsmith_clamp_i32(global0.b.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b.d.x, 29472i, -2147483647i), ~vec3<i32>(global0.b.d.x, global2.d.x, -36402i)), u_input.b)));
    var_0 = vec2<i32>(min(25710i, global2.d.x), ~15192i);
    var var_1 = func_2(true);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.a)) + -836f))), global0.b.c.a);
}

fn func_4(arg_0: f32) -> u32 {
    var var_0 = Struct_4(_wgslsmith_mod_u32(firstLeadingBit(global2.b), 17520u), global0.b);
    let var_1 = false;
    global2 = var_0.b;
    var var_2 = Struct_4(u_input.c, Struct_3(vec4<bool>(global0.b.c.b.x, 2147483647i > global2.d.x, var_0.b.a.x, global2.c.b.x), 66414u, Struct_2(-1300f, !var_0.b.c.b), ~select(vec4<i32>(global0.b.d.x, 1i, 0i, global2.d.x), vec4<i32>(0i, 2147483647i, 0i, -2147483647i), var_0.b.c.b), _wgslsmith_clamp_u32(~reverseBits(global2.e), ~(~22381u), 72921u)));
    var var_3 = func_2(!(countOneBits(u_input.b) > u_input.e)).b.x;
    return abs(abs(global2.b));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_3(global2.c.b, ~(~0u), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.c.a)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.c.a) - -939f)), vec4<bool>(all(vec2<bool>(false, true)), true, global2.a.x, true)), -abs(abs(abs(u_input.d))), ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(115083u, 25698u, 4294967295u) ^ 30933u, min(49389u, global2.b)));
    let var_0 = global1[_wgslsmith_index_u32(~global0.b.b ^ func_4(_wgslsmith_f_op_f32(func_1(Struct_4(~72323u, global0.b), Struct_2(global2.c.a, select(global0.b.a, vec4<bool>(false, false, global0.b.a.x, global2.c.b.x), false))))), 21u)];
    global2 = global1[_wgslsmith_index_u32(1u, 21u)];
    global2 = Struct_3(global0.b.c.b, ~(~(~71255u)), Struct_2(-542f, !vec4<bool>(func_2(true).a, global0.b.a.x, func_2(false).a, global2.a.x)), global2.d, _wgslsmith_add_u32(global2.b, ~(~func_3().x)));
    global2 = global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b);
}

