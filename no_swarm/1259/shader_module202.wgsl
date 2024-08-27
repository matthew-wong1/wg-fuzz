struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<u32>,
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

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec3<u32>(42070u, 52232u, 1u), vec3<u32>(2573u, 1194u, 5629u)), Struct_1(vec3<u32>(1u, 14154u, 0u), vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(14905u, 0u, 105682u), vec3<u32>(4256u, 102066u, 7895u)), Struct_1(vec3<u32>(4294967295u, 1u, 54319u), vec3<u32>(4294967295u, 1039u, 1935u)), Struct_1(vec3<u32>(4294967295u, 68819u, 16020u), vec3<u32>(54137u, 0u, 4294967295u)), Struct_1(vec3<u32>(1u, 0u, 183572u), vec3<u32>(4294967295u, 4294967295u, 4303u)), Struct_1(vec3<u32>(54674u, 0u, 1u), vec3<u32>(1u, 0u, 1u)), Struct_1(vec3<u32>(40953u, 111051u, 0u), vec3<u32>(4294967295u, 0u, 4294967295u)), Struct_1(vec3<u32>(37557u, 1u, 123919u), vec3<u32>(61049u, 50344u, 2774u)), Struct_1(vec3<u32>(13687u, 7163u, 4294967295u), vec3<u32>(0u, 4294967295u, 41555u)), Struct_1(vec3<u32>(1u, 31102u, 0u), vec3<u32>(89945u, 30143u, 0u)), Struct_1(vec3<u32>(92805u, 121812u, 1u), vec3<u32>(93982u, 68340u, 59471u)), Struct_1(vec3<u32>(1u, 0u, 29102u), vec3<u32>(4294967295u, 10655u, 2928u)), Struct_1(vec3<u32>(1u, 2621u, 4294967295u), vec3<u32>(34313u, 33944u, 1u)), Struct_1(vec3<u32>(44465u, 28047u, 0u), vec3<u32>(1u, 51654u, 16216u)), Struct_1(vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(0u, 80208u, 4294967295u)), Struct_1(vec3<u32>(1u, 45840u, 4294967295u), vec3<u32>(1u, 15807u, 45390u)), Struct_1(vec3<u32>(1u, 0u, 1727u), vec3<u32>(0u, 45766u, 1u)), Struct_1(vec3<u32>(1u, 0u, 37187u), vec3<u32>(0u, 53236u, 1u)), Struct_1(vec3<u32>(34011u, 77709u, 4294967295u), vec3<u32>(12855u, 1u, 17285u)), Struct_1(vec3<u32>(4294967295u, 75164u, 21660u), vec3<u32>(0u, 63377u, 11297u)), Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(119520u, 0u, 4294967295u)), Struct_1(vec3<u32>(0u, 16533u, 0u), vec3<u32>(55658u, 42003u, 1u)), Struct_1(vec3<u32>(1u, 1u, 0u), vec3<u32>(2697u, 13147u, 24235u)), Struct_1(vec3<u32>(0u, 53430u, 0u), vec3<u32>(109346u, 7290u, 1u)), Struct_1(vec3<u32>(0u, 0u, 6197u), vec3<u32>(2828u, 0u, 27000u)), Struct_1(vec3<u32>(50560u, 1u, 0u), vec3<u32>(1u, 17891u, 4294967295u)), Struct_1(vec3<u32>(84357u, 0u, 39854u), vec3<u32>(0u, 1u, 1u)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: i32, arg_3: i32) -> u32 {
    let var_0 = Struct_3(vec3<f32>(942f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0.c, _wgslsmith_f_op_f32(min(1099f, -368f))))), 606f), 1u, !vec3<bool>(false, arg_0.b.x, all(select(vec4<bool>(false, arg_0.b.x, true, arg_0.b.x), vec4<bool>(false, true, true, true), vec4<bool>(arg_0.b.x, true, arg_0.b.x, arg_0.b.x)))));
    var var_1 = min(vec4<u32>(max(abs(u_input.a), u_input.a), (u_input.b | var_0.b) | _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, 1u, var_0.b), vec4<u32>(var_0.b, var_0.b, u_input.b, 1u)), 35628u, 4294967295u), vec4<u32>(firstLeadingBit(0u) >> ((var_0.b >> (4294967295u % 32u)) % 32u), ~_wgslsmith_mult_u32(var_0.b, var_0.b), 0u << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, var_0.b, var_0.b), vec3<u32>(var_0.b, 55704u, 0u)) % 32u), reverseBits(~14392u))) ^ (~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.b, 1u, u_input.b, 3357u), ~vec4<u32>(0u, var_0.b, 0u, 7328u)) | vec4<u32>(firstLeadingBit(1u), 64535u, 36485u, 4294967295u));
    var var_2 = arg_0.a;
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_4 = Struct_3(var_0.a, 0u, select(vec3<bool>(false, arg_0.b.x, !(arg_0.b.x && true)), !var_0.c, var_0.c));
    return _wgslsmith_mod_u32(firstLeadingBit(min(var_4.b, var_0.b)), ~0u);
}

fn func_2(arg_0: Struct_2) -> u32 {
    global0 = array<Struct_1, 28>();
    let var_0 = Struct_3(vec3<f32>(arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1031f)), _wgslsmith_f_op_f32(f32(-1f) * -1097f)), ~func_3(arg_0, max(vec4<i32>(-16509i, 0i, 36627i, u_input.c) >> (vec4<u32>(22243u, 0u, u_input.a, 8302u) % vec4<u32>(32u)), select(vec4<i32>(u_input.c, 2147483647i, u_input.c, 1i), vec4<i32>(947i, u_input.c, u_input.c, arg_0.a), vec4<bool>(arg_0.b.x, arg_0.b.x, true, false))), min(~(-971i), -77998i), arg_0.a), select(vec3<bool>(false, arg_0.b.x, arg_0.b.x), !select(select(vec3<bool>(true, true, true), vec3<bool>(false, arg_0.b.x, true), arg_0.b.x), !vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x), arg_0.c > arg_0.c), 423f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-278f)))));
    let var_1 = _wgslsmith_dot_vec2_u32(u_input.d, _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(1u, var_0.b << (4294967295u % 32u)), ~u_input.a), u_input.d));
    var var_2 = ~vec3<i32>(firstTrailingBit(_wgslsmith_clamp_i32(firstTrailingBit(u_input.c), reverseBits(1i), arg_0.a)), arg_0.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -2244i, -28213i), ~select(vec3<i32>(arg_0.a, u_input.c, arg_0.a), vec3<i32>(-54211i, u_input.c, arg_0.a), vec3<bool>(var_0.c.x, var_0.c.x, arg_0.b.x))));
    return _wgslsmith_sub_u32(select(~(_wgslsmith_dot_vec2_u32(u_input.d, u_input.d) ^ (66000u ^ var_1)), ~4294967295u, true), ~(~(~func_3(Struct_2(1i, var_0.c.yz, 530f), vec4<i32>(arg_0.a, arg_0.a, var_2.x, 1i), 9730i, -20425i))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: f32) -> Struct_2 {
    return Struct_2(countOneBits(_wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.c, 1i, u_input.c), vec4<i32>(-1i, u_input.c, u_input.c, u_input.c))), _wgslsmith_mult_vec4_i32(-vec4<i32>(-50028i, 0i, 0i, u_input.c), vec4<i32>(u_input.c, -2147483647i, -1i, u_input.c)))), vec2<bool>(!(~arg_0 < arg_1.b.x), any(vec4<bool>(true, true, true, true))), 641f);
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = func_4(_wgslsmith_clamp_u32(0u, arg_0, min(abs(12495u), func_2(Struct_2(-64764i, vec2<bool>(true, true), -297f))) | func_3(Struct_2(61021i, vec2<bool>(false, true), 1468f), ~vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), firstLeadingBit(u_input.c), u_input.c)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(28808u, 11962u), 28u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1143f)));
    let var_1 = u_input.d;
    global0 = array<Struct_1, 28>();
    global0 = array<Struct_1, 28>();
    var var_2 = _wgslsmith_clamp_vec3_i32(~vec3<i32>(var_0.a, u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -2147483647i, var_0.a), vec3<i32>(var_0.a, u_input.c, 13723i))), -vec3<i32>(var_0.a, var_0.a, 12618i) >> (max(vec3<u32>(arg_0, 0u, arg_0), vec3<u32>(4294967295u, 4294967295u, 0u)) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_mod_i32(u_input.c, -1i), 0i, var_0.a)) ^ ((vec3<i32>(-1i) * -vec3<i32>(-20063i, u_input.c, var_0.a)) & min(~(-vec3<i32>(-18133i, 1i, -2147483647i)), vec3<i32>(_wgslsmith_div_i32(-2147483647i, var_0.a), _wgslsmith_div_i32(var_0.a, 1i), 41813i)));
    return Struct_2(var_2.x, select(var_0.b, !(!var_0.b), true), var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(48836u);
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, -790f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - 1003f)));
    let var_2 = Struct_3(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, 831f) * var_1.x), -1070f, _wgslsmith_f_op_f32(679f - _wgslsmith_div_f32(var_1.x, 325f))), var_1), ~u_input.d.x, vec3<bool>(false, !(var_0.b.x || var_0.b.x), true));
    var var_3 = vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b, _wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(2566u, var_2.b)), countOneBits(var_2.b)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(12746u, 0u, u_input.a), vec3<u32>(var_2.b, 12444u, u_input.d.x))), u_input.a << (~u_input.b % 32u), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, 4294967295u, 22142u, 100974u)), _wgslsmith_mod_vec4_u32(countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.b, 1u, u_input.a, 6308u), vec4<u32>(u_input.b, var_2.b, 21180u, var_2.b))), vec4<u32>(var_2.b, ~2054u, ~u_input.d.x, u_input.b))));
    var_0 = func_1(var_2.b);
    var_0 = Struct_2(1i, select(vec2<bool>(all(vec3<bool>(var_0.b.x, var_0.b.x, false)), var_2.c.x), !func_1(_wgslsmith_mult_u32(var_2.b, 0u)).b, var_2.c.yy), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-514f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_0.c)), _wgslsmith_div_f32(-554f, var_1.x)))), -139f)));
    var var_4 = select(min(~(~var_3.zz), var_3.xx >> (u_input.d % vec2<u32>(32u))), abs(~max(vec2<u32>(1u, u_input.b), ~var_3.zx)), false & !(-1i > (-63482i | u_input.c)));
    let var_5 = Struct_2(u_input.c, !vec2<bool>(true, -var_0.a < ~2147483647i), _wgslsmith_f_op_f32(exp2(1f)));
    var var_6 = Struct_3(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(var_2.a)))))), 0u, vec3<bool>(select(var_5.b.x, all(!vec4<bool>(var_2.c.x, false, var_5.b.x, var_5.b.x)), true), !(true && var_0.b.x), var_2.c.x | (any(vec2<bool>(false, false)) && (-640f < var_0.c))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(i32(-1i) * -_wgslsmith_div_i32(1i, var_5.a), countOneBits(~u_input.c)));
}

