struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<f32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec4<u32>(1u, 1u, 0u, 70931u), vec4<i32>(-13173i, -1i, -18656i, 9962i), vec2<i32>(2147483647i, 68010i), vec4<i32>(0i, 2147483647i, i32(-2147483648), 21426i)), Struct_1(vec4<u32>(1u, 1u, 42423u, 49829u), vec4<i32>(-4074i, 0i, 35035i, 0i), vec2<i32>(1i, 0i), vec4<i32>(-16286i, 40954i, 13663i, 2147483647i)), Struct_1(vec4<u32>(2641u, 1u, 1u, 43536u), vec4<i32>(0i, -78636i, 2147483647i, -33388i), vec2<i32>(-32367i, 28617i), vec4<i32>(61183i, i32(-2147483648), 9001i, 11576i)), Struct_1(vec4<u32>(7017u, 20917u, 1u, 0u), vec4<i32>(-37940i, 44246i, 1i, 41954i), vec2<i32>(1i, -7247i), vec4<i32>(i32(-2147483648), 0i, -63078i, -1i)), Struct_1(vec4<u32>(0u, 1u, 52167u, 47163u), vec4<i32>(30978i, -38400i, 80672i, -12895i), vec2<i32>(12752i, 14908i), vec4<i32>(-45314i, 1i, -22776i, -1i)), Struct_1(vec4<u32>(43229u, 59623u, 4294967295u, 19882u), vec4<i32>(20244i, 28979i, i32(-2147483648), 0i), vec2<i32>(1i, 39822i), vec4<i32>(-52792i, 0i, -1i, 2147483647i)), Struct_1(vec4<u32>(55426u, 1u, 0u, 1u), vec4<i32>(59602i, 0i, 6813i, -35105i), vec2<i32>(2147483647i, -6254i), vec4<i32>(2147483647i, 0i, 1i, 45835i)), Struct_1(vec4<u32>(0u, 0u, 46690u, 21332u), vec4<i32>(55606i, 25079i, 66819i, -25083i), vec2<i32>(15508i, -1i), vec4<i32>(i32(-2147483648), 28619i, -8640i, 7726i)), Struct_1(vec4<u32>(17600u, 0u, 19057u, 1u), vec4<i32>(1i, 2147483647i, 29334i, -27954i), vec2<i32>(-87750i, -19965i), vec4<i32>(20520i, -17374i, -11908i, i32(-2147483648))), Struct_1(vec4<u32>(15065u, 18645u, 42964u, 61325u), vec4<i32>(-1i, 20773i, 21505i, 1i), vec2<i32>(i32(-2147483648), 34474i), vec4<i32>(-29558i, 1i, 0i, 109753i)), Struct_1(vec4<u32>(27142u, 36731u, 25768u, 0u), vec4<i32>(-16676i, -39221i, 0i, 15260i), vec2<i32>(2147483647i, 24065i), vec4<i32>(2147483647i, 2147483647i, 1i, 26144i)), Struct_1(vec4<u32>(0u, 18203u, 71882u, 4294967295u), vec4<i32>(-29877i, -9794i, -1048i, 1i), vec2<i32>(30643i, i32(-2147483648)), vec4<i32>(13995i, 2147483647i, 2147483647i, -1i)), Struct_1(vec4<u32>(0u, 4294967295u, 27001u, 5471u), vec4<i32>(-1i, 20591i, 0i, 34617i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec4<i32>(0i, -1i, -16046i, 1i)));

var<private> global1: Struct_1 = Struct_1(vec4<u32>(62540u, 4294967295u, 19551u, 0u), vec4<i32>(0i, 1i, 1i, 0i), vec2<i32>(11980i, -50821i), vec4<i32>(2147483647i, 0i, -15413i, -4407i));

var<private> global2: array<vec2<u32>, 4> = array<vec2<u32>, 4>(vec2<u32>(26279u, 0u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(35378u, 69020u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: vec3<f32>) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.x)) + arg_1.x), arg_1.x, arg_1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1) - arg_1))));
    let var_1 = vec3<u32>(_wgslsmith_sub_u32(global1.a.x, 33882u), ~(~9988u), 61866u);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, arg_1.x, -842f, arg_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, var_0.x, arg_1.x, var_0.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1177f * var_0.x), _wgslsmith_f_op_f32(-var_0.x), 701f, _wgslsmith_f_op_f32(425f * var_0.x))), select(vec4<bool>(true, true, false, all(vec4<bool>(true, false, true, false))), vec4<bool>(any(vec4<bool>(true, true, true, false)), u_input.b <= global1.a.x, 23255u >= global1.a.x, 2453i >= global1.d.x), vec4<bool>(true, true, all(vec2<bool>(true, false)), false)))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.x)))), arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) - arg_1.x), _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -169f))));
}

fn func_2(arg_0: i32) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~(~31497u | ~global1.a.x)), global1.a.x, 48878u), 13u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(func_3(~(-2147483647i), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1000f, 1000f), _wgslsmith_div_f32(-265f, 1226f), false)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-712f * 1003f)))), 607f)));
    global0 = array<Struct_1, 13>();
    var var_2 = Struct_1(select(vec4<u32>(~48523u, var_0.a.x, u_input.a.x, 15331u), min(_wgslsmith_add_vec4_u32(~global1.a, var_0.a), ~(vec4<u32>(34207u, u_input.c.x, 22030u, u_input.a.x) << (vec4<u32>(69925u, 4294967295u, 0u, global1.a.x) % vec4<u32>(32u)))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), true)), -countOneBits(firstTrailingBit(var_0.b)), _wgslsmith_add_vec2_i32(vec2<i32>(abs(-var_0.d.x), var_0.d.x), abs(_wgslsmith_div_vec2_i32(~vec2<i32>(var_0.b.x, 11152i), vec2<i32>(0i, arg_0)))), _wgslsmith_mod_vec4_i32(~(-global1.d), vec4<i32>(abs(arg_0), abs(arg_0), 1i, global1.c.x)));
    var var_3 = 0i;
    return ~u_input.a.x;
}

fn func_4(arg_0: vec4<u32>) -> f32 {
    let var_0 = abs(vec3<u32>(countOneBits(0u), 20512u, 4294967295u));
    let var_1 = Struct_1(vec4<u32>(var_0.x, u_input.c.x, _wgslsmith_add_u32(~69875u, var_0.x), 41251u), global1.d | vec4<i32>(global1.d.x, 1i, _wgslsmith_div_i32(global1.d.x, ~(-2147483647i)), global1.b.x), global1.b.yx, vec4<i32>(global1.d.x, 0i, _wgslsmith_mod_i32(countOneBits(global1.c.x), global1.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global1.c.x) | vec2<i32>(32798i, global1.b.x), vec2<i32>(global1.d.x, _wgslsmith_mult_i32(35438i, global1.b.x)))));
    let var_2 = _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(global1.d.x, i32(-1i) * -22375i)), max(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(global1.d, global1.b), 2808i), 44392i), global1.d.wy));
    let var_3 = var_1;
    let var_4 = vec4<u32>(min(max(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_3.a.x, 4294967295u, 32285u), vec3<u32>(14165u, var_0.x, 33167u)), vec3<u32>(u_input.a.x, arg_0.x, 70889u)), u_input.b), 53897u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u | var_1.a.x, _wgslsmith_sub_u32(global1.a.x, var_3.a.x), u_input.b) >> (~max(vec3<u32>(4294967295u, global1.a.x, 1u), var_1.a.xzw) % vec3<u32>(32u)), vec3<u32>(4807u, ~_wgslsmith_add_u32(var_3.a.x, 0u), _wgslsmith_dot_vec4_u32(~arg_0, vec4<u32>(var_0.x, var_0.x, arg_0.x, 4294967295u)))), u_input.b, ~var_1.a.x);
    return _wgslsmith_f_op_f32(floor(205f));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(func_4(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(36785u, 2353u, 0u, 12039u) & (vec4<u32>(global1.a.x, 27120u, 0u, global1.a.x) << (vec4<u32>(1u, 0u, 110023u, global1.a.x) % vec4<u32>(32u))), global1.a), ~55920u, select(u_input.c.x, ~u_input.b | ~global1.a.x, true), func_2(-2147483647i))));
    let var_1 = global0[_wgslsmith_index_u32(~global1.a.x, 13u)];
    return global0[_wgslsmith_index_u32(1u, 13u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global2 = array<vec2<u32>, 4>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1043f, -1001f) * _wgslsmith_f_op_f32(min(1373f, 225f))), _wgslsmith_f_op_f32(-345f * -1369f), _wgslsmith_f_op_f32(func_4(vec4<u32>(4294967295u, var_0.a.x, 53986u, 4294967295u)))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-751f, -1139f, 1142f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1183f, -277f, -436f)))))) - vec3<f32>(-1446f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-866f + 1585f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(984f - -1518f) - _wgslsmith_f_op_f32(1000f + 1605f))), -951f));
    global1 = global0[_wgslsmith_index_u32(0u, 13u)];
    global1 = Struct_1(vec4<u32>((~51845u << (_wgslsmith_div_u32(global1.a.x, var_0.a.x) % 32u)) & ~var_0.a.x, 30422u, _wgslsmith_mod_u32(max(func_1().a.x, _wgslsmith_mod_u32(u_input.a.x, 0u)), 45880u), u_input.a.x), vec4<i32>(-(global1.b.x ^ global1.b.x) << (var_0.a.x % 32u), ~(reverseBits(var_0.c.x) & var_0.b.x), var_0.b.x << (func_1().a.x % 32u), abs(_wgslsmith_sub_i32(32747i, var_0.b.x)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(43521u, 0u, 37646u, 1u), ~vec4<u32>(40919u, 0u, 4294967295u, var_0.a.x)) % 32u)), _wgslsmith_sub_vec2_i32(countOneBits(select(firstLeadingBit(global1.d.ww), abs(var_0.d.xy), all(vec4<bool>(false, true, false, false)))), firstLeadingBit(-(vec2<i32>(-66859i, var_0.b.x) << (global2[_wgslsmith_index_u32(4294967295u, 4u)] % vec2<u32>(32u))))), global1.b);
    let var_2 = _wgslsmith_f_op_f32(1270f - var_1.x);
    let var_3 = func_1();
    global1 = Struct_1(abs(reverseBits(var_3.a)), countOneBits(~_wgslsmith_mod_vec4_i32(~vec4<i32>(global1.c.x, -1i, var_0.c.x, var_3.b.x), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.b.x, var_3.d.x, var_0.d.x, -1i), global1.d))), global1.c | var_0.d.zz, var_3.b);
    let var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_1.xz - vec2<f32>(var_2, 1618f)))) + _wgslsmith_f_op_vec2_f32(-var_1.zy)) - _wgslsmith_f_op_vec4_f32(func_3(-13833i, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, var_1.x, 783f) + var_1), _wgslsmith_f_op_vec3_f32(var_1 + vec3<f32>(667f, var_2, 1000f)))))).yy), _wgslsmith_add_i32(select(_wgslsmith_add_i32(_wgslsmith_clamp_i32(-8748i, var_3.b.x, 0i), abs(global1.b.x)), 1i, !select(true, true, false)), -2147483647i), var_1.xz, var_3.a, min(-vec3<i32>(var_0.b.x, var_0.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-40435i, global1.d.x, 0i, -1i), global1.d)), var_4.b.xwx));
}

