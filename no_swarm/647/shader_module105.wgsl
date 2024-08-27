struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21> = array<u32, 21>(2737u, 1u, 51386u, 5905u, 30336u, 57112u, 51968u, 67468u, 0u, 70557u, 18226u, 4294967295u, 115451u, 4294967295u, 1u, 21441u, 1u, 43665u, 19482u, 0u, 1u);

var<private> global1: Struct_2;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec2<u32>(0u, 1u), vec4<u32>(10962u, 0u, 12359u, 3079u), vec2<f32>(1109f, -964f), 1000f), Struct_1(vec2<u32>(17287u, 17118u), vec4<u32>(4294967295u, 14861u, 51590u, 41493u), vec2<f32>(282f, 304f), 1184f), vec2<f32>(-177f, 534f), false);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec2<i32> {
    let var_0 = vec2<u32>(_wgslsmith_mod_u32(global2.b.b.x, 27387u), u_input.b.x);
    global1 = Struct_2(Struct_1(vec2<u32>(min(1u, global0[_wgslsmith_index_u32(~33338u, 21u)]), 11704u), ~vec4<u32>(~4294967295u, reverseBits(4294967295u), abs(14927u), _wgslsmith_dot_vec3_u32(vec3<u32>(33560u, 50831u, 3288u), u_input.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global1.a.c))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global1.a.c, vec2<f32>(global2.a.d, -617f))) + vec2<f32>(1155f, 1527f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(332f)) - _wgslsmith_f_op_f32(max(1221f, 533f))) - global2.b.d)), global2.a, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.b.c - vec2<f32>(global1.b.c.x, 1340f)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(243f, global2.b.d)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(134f, global1.a.c.x)) + _wgslsmith_div_vec2_f32(global2.c, global2.b.c))))), !global2.d);
    var var_1 = Struct_3(global2.d, Struct_2(Struct_1(vec2<u32>(var_0.x, 0u), global2.a.b, _wgslsmith_f_op_vec2_f32(floor(global2.c)), _wgslsmith_f_op_f32(select(global2.b.d, global1.c.x, global2.d))), global2.b, vec2<f32>(_wgslsmith_f_op_f32(min(-388f, _wgslsmith_f_op_f32(select(global2.a.d, global2.a.d, global1.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.x))), global1.d), ~_wgslsmith_add_u32(~var_0.x, ~var_0.x));
    var var_2 = _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(1i, u_input.a.x | abs(1i))), vec2<i32>(23946i, min(~(~(-1i)), u_input.a.x | -1i)));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1468f, global1.c.x) - var_1.b.c.x), _wgslsmith_div_f32(global1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -2001f))), _wgslsmith_f_op_f32(min(global2.b.c.x, 176f))), _wgslsmith_f_op_f32(1308f * _wgslsmith_f_op_f32(515f + _wgslsmith_f_op_f32(f32(-1f) * -505f))));
    return -reverseBits(vec2<i32>(u_input.a.x, 1i));
}

fn func_2() -> u32 {
    var var_0 = Struct_4(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, 21673i), u_input.a.xy), vec2<i32>(i32(-1i) * -1i, 479i)), max(func_3(), vec2<i32>(~6025i, 38071i))), select(vec2<bool>(!global1.d | all(vec3<bool>(global2.d, global2.d, global2.d)), !any(vec4<bool>(false, global1.d, global2.d, global2.d))), select(vec2<bool>(global1.c.x <= 256f, global2.d || global2.d), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(global1.d, global2.d, global2.d))), true), all(select(vec4<bool>(global2.d, false, global2.d, true), !vec4<bool>(true, global2.d, false, global2.d), global1.d))), global1.b);
    global1 = Struct_2(Struct_1(vec2<u32>(_wgslsmith_add_u32(1u, ~37645u), ~global1.a.b.x), ~var_0.c.b, vec2<f32>(global2.b.d, global2.a.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.d - 197f) - var_0.c.c.x))), var_0.c, vec2<f32>(706f, _wgslsmith_f_op_f32(ceil(-570f))), var_0.b.x);
    var var_1 = global2.b;
    var_0 = Struct_4(vec2<i32>(45204i, -(_wgslsmith_sub_i32(31342i, u_input.a.x) & (var_0.a.x << (u_input.b.x % 32u)))), vec2<bool>(global1.d, !all(!vec4<bool>(global2.d, false, var_0.b.x, true))), Struct_1(min(~var_1.a, ~u_input.b.xx), abs(global2.a.b) | vec4<u32>(_wgslsmith_mult_u32(1u, global2.a.a.x), var_0.c.b.x, global1.a.a.x << (4294967295u % 32u), var_1.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(801f, global1.c.x)) * global2.b.c), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)), _wgslsmith_f_op_f32(-var_1.c.x)))));
    global2 = Struct_2(Struct_1(countOneBits(global2.a.b.ww), abs(global2.b.b) >> (countOneBits(vec4<u32>(4294967295u, 14420u, global1.b.a.x, global1.a.b.x)) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b.c.x, var_0.c.d) + _wgslsmith_f_op_vec2_f32(vec2<f32>(655f, global1.a.c.x) - global1.a.c)))), _wgslsmith_f_op_f32(f32(-1f) * -729f)), Struct_1(var_1.b.zx, vec4<u32>(firstLeadingBit(0u), _wgslsmith_dot_vec3_u32(var_0.c.b.yxx, global2.b.b.xxy), global0[_wgslsmith_index_u32(var_1.a.x, 21u)] | global2.b.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(27541u, global2.b.b.x, var_0.c.b.x), u_input.b)) >> (global2.a.b % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(632f, -197f), _wgslsmith_f_op_f32(f32(-1f) * -136f)) + vec2<f32>(_wgslsmith_f_op_f32(exp2(global2.b.d)), 607f)), 1000f), vec2<f32>(_wgslsmith_f_op_f32(sign(1163f)), var_1.d), !any(var_0.b));
    return ~countOneBits(~(~(~global1.a.b.x)));
}

fn func_1(arg_0: vec3<bool>) -> vec3<f32> {
    var var_0 = abs(u_input.a.ww ^ select(~select(vec2<i32>(u_input.c, u_input.c), u_input.a.zy, true), -u_input.a.yy << (vec2<u32>(1u, global0[_wgslsmith_index_u32(10324u, 21u)]) % vec2<u32>(32u)), any(!vec3<bool>(global2.d, true, global2.d))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(448f * -1249f), _wgslsmith_f_op_f32(max(global1.b.d, -1982f)))), _wgslsmith_f_op_f32(f32(-1f) * -543f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.b.c.x), _wgslsmith_f_op_f32(select(global1.a.d, global1.c.x, true)))))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(floor(259f)), global2.b.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -963f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(637f, 789f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(845f, -768f, global2.a.d, global1.a.d)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(2051f, -1115f, -857f, 319f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-779f, global2.c.x, global2.b.d, -1868f), vec4<f32>(global2.b.c.x, global2.a.c.x, global2.b.c.x, -103f), true)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.x, 785f, 531f, global2.c.x)))))));
    var_0 = ~vec2<i32>(_wgslsmith_sub_i32(-15257i, var_0.x), _wgslsmith_dot_vec3_i32(u_input.a.wzy, u_input.a.wyy));
    var var_2 = Struct_1(global2.a.a, vec4<u32>(func_2(), global2.b.a.x, global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(1u | global0[_wgslsmith_index_u32(0u, 21u)], u_input.b.x), 21u)], 22868u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-236f, var_1.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.x, var_1.x)), arg_0.yx)) * global1.a.c), var_1.x);
    let var_3 = var_1;
    return vec3<f32>(global1.a.d, var_1.x, var_3.x);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: vec3<u32>, arg_3: vec2<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec3_f32(func_1(vec3<bool>(arg_3.x, arg_3.x, false))).x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.c.c.x)) * -206f))));
    let var_1 = vec3<bool>(arg_1.b.x, all(select(!select(vec2<bool>(global2.d, false), arg_3, vec2<bool>(arg_3.x, true)), vec2<bool>(arg_1.a.x <= arg_1.a.x, true), true)), true);
    let var_2 = arg_1;
    global2 = Struct_2(arg_1.c, Struct_1(~vec2<u32>(~87904u, 1u), reverseBits(var_2.c.b), _wgslsmith_f_op_vec2_f32(abs(var_2.c.c)), -1000f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_2.c.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.c.x, arg_0.x))) * vec2<f32>(_wgslsmith_f_op_f32(-var_2.c.c.x), _wgslsmith_f_op_f32(sign(global2.b.c.x))))), true);
    let var_3 = -_wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.x, 8125i, u_input.c, 5330i), vec4<i32>(89627i, -21278i, 2147483647i, var_2.a.x)) ^ func_3().x, ~(arg_1.a.x << (1u % 32u))), ~min(arg_1.a.x, countOneBits(var_2.a.x)));
    return var_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -firstLeadingBit(u_input.c);
    var var_1 = func_4(_wgslsmith_f_op_vec3_f32(func_1(!select(vec3<bool>(true, global2.d, false), !vec3<bool>(global1.d, true, false), vec3<bool>(true, false, false)))), Struct_4((u_input.a.zz & vec2<i32>(u_input.c, u_input.a.x)) ^ abs(vec2<i32>(u_input.a.x, 2147483647i) | u_input.a.zz), !select(vec2<bool>(true, true), vec2<bool>(false, global1.d), select(vec2<bool>(true, global1.d), vec2<bool>(global1.d, global1.d), false)), global1.b), u_input.b, vec2<bool>(_wgslsmith_dot_vec4_u32(global1.b.b, vec4<u32>(0u, global2.a.b.x, 0u, 30899u)) != global0[_wgslsmith_index_u32(min(global2.b.b.x, 4294967295u) & firstLeadingBit(global0[_wgslsmith_index_u32(u_input.b.x, 21u)]), 21u)], !((u_input.b.x >= global2.a.a.x) & any(vec3<bool>(global2.d, global2.d, global2.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, u_input.c, u_input.a, ~_wgslsmith_mod_i32((u_input.c >> (2224u % 32u)) | ~u_input.c, countOneBits(-2147483647i)));
}

