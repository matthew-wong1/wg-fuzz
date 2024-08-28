struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14>;

var<private> global1: bool = false;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<f32>) -> i32 {
    let var_0 = ~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(~4294967295u ^ global0[_wgslsmith_index_u32(~12396u, 14u)], 14u)], 14u)], 14u)]);
    global0 = array<u32, 14>();
    let var_1 = Struct_1(~(-_wgslsmith_mult_vec4_i32(vec4<i32>(-20476i, u_input.a.x, u_input.a.x, u_input.b) >> (vec4<u32>(0u, 7424u, var_0, global0[_wgslsmith_index_u32(40906u, 14u)]) % vec4<u32>(32u)), -vec4<i32>(u_input.c, -1488i, 7757i, 2147483647i))), abs(~(~vec2<u32>(4194u, 4294967295u))), var_0);
    global1 = any(vec2<bool>(any(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false)), true)), any(vec4<bool>(any(vec2<bool>(true, true)), true, true, true))));
    let var_2 = min(min(var_1.b, ~_wgslsmith_clamp_vec2_u32(var_1.b, vec2<u32>(6580u, 35069u), firstTrailingBit(var_1.b))), var_1.b);
    return var_1.a.x;
}

fn func_2() -> vec2<u32> {
    global1 = -u_input.b <= _wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(-26759i) | func_3(vec2<f32>(-1640f, -1381f)), -78720i, u_input.b, -(15907i << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43903u, 14u)], 14u)], 14u)], 14u)] % 32u))), -vec4<i32>(-2147483647i, -14713i, -96198i, 2147483647i));
    var var_0 = Struct_1(max(vec4<i32>(_wgslsmith_clamp_i32(16579i, -9586i, 0i), 3215i, -_wgslsmith_dot_vec4_i32(vec4<i32>(47362i, u_input.c, u_input.c, u_input.c), vec4<i32>(2147483647i, 37517i, 67769i, u_input.c)), ~59633i), ((vec4<i32>(u_input.a.x, u_input.b, u_input.c, u_input.c) | vec4<i32>(u_input.c, u_input.a.x, u_input.b, u_input.a.x)) >> (~vec4<u32>(4925u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 14u)], 14u)], 14u)], 14u)], global0[_wgslsmith_index_u32(34274u, 14u)]) % vec4<u32>(32u))) | countOneBits(-vec4<i32>(45291i, 1i, 1296i, -16419i))), ~firstTrailingBit(~(~vec2<u32>(global0[_wgslsmith_index_u32(33496u, 14u)], 4294967295u))), 20310u);
    let var_1 = ~var_0.c;
    let var_2 = Struct_2(u_input.a.x, _wgslsmith_f_op_f32(-586f + _wgslsmith_f_op_f32(-142f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1462f - 1087f) - _wgslsmith_f_op_f32(507f - 1203f)))), var_0.b, Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(~u_input.c, firstTrailingBit(0i), 0i, _wgslsmith_dot_vec2_i32(u_input.a.yz, var_0.a.yz)), min(abs(vec4<i32>(var_0.a.x, var_0.a.x, u_input.c, var_0.a.x)), -vec4<i32>(24628i, -49766i, -2147483647i, u_input.c))), vec2<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(var_1, 28711u, global0[_wgslsmith_index_u32(55773u, 14u)]), vec3<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1, 14u)], 14u)], 14u)], 20499u), true), ~vec3<u32>(4294967295u, var_0.b.x, var_0.b.x)), 38552u ^ abs(var_0.b.x)), ~abs(firstLeadingBit(global0[_wgslsmith_index_u32(4294967295u, 14u)]))), -(~_wgslsmith_mod_i32(-2147483647i ^ u_input.b, _wgslsmith_add_i32(u_input.b, 20717i))));
    global1 = false || !(!any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)));
    return vec2<u32>(~min(select(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(var_0.b.x, 14u)], var_0.b.x), var_2.d.b.x ^ 1u, true), var_1), 1u);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_2) -> i32 {
    var var_0 = !(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)))));
    let var_1 = !(!(abs(17681i) > _wgslsmith_sub_i32(arg_2.a, 0i)) && any(select(!vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x), var_0.x)));
    let var_2 = vec4<i32>(_wgslsmith_clamp_i32(arg_2.d.a.x, -1i, arg_2.e), _wgslsmith_div_i32(-1i, ~abs(-42129i)), ~reverseBits(i32(-1i) * -20632i), reverseBits(108240i)) << (~(~_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(20994u, 34217u, arg_2.d.c, arg_2.d.b.x)), vec4<u32>(arg_0.c.x, 4294967295u, global0[_wgslsmith_index_u32(arg_0.d.c, 14u)], 0u), min(vec4<u32>(arg_0.d.c, global0[_wgslsmith_index_u32(44494u, 14u)], global0[_wgslsmith_index_u32(0u, 14u)], 0u), vec4<u32>(arg_0.c.x, arg_2.d.c, arg_0.d.b.x, arg_0.d.b.x)))) % vec4<u32>(32u));
    global1 = !var_0.x;
    global0 = array<u32, 14>();
    return arg_0.e;
}

fn func_1(arg_0: bool, arg_1: vec4<u32>) -> vec3<bool> {
    var var_0 = !any(select(vec4<bool>(true, true, arg_0, !arg_0), !(!vec4<bool>(arg_0, arg_0, arg_0, arg_0)), !(!vec4<bool>(false, false, true, arg_0))));
    var var_1 = func_4(Struct_2(-2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1197f)), _wgslsmith_f_op_f32(-790f + -947f)))), select(min(vec2<u32>(global0[_wgslsmith_index_u32(arg_1.x, 14u)], arg_1.x), arg_1.zy), func_2(), true), Struct_1(vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, 2147483647i, -1i, u_input.b), vec2<u32>(50468u, select(1u, 1978u, arg_0)), ~arg_1.x), _wgslsmith_mod_i32(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(482f, -582f))), max(u_input.b, countOneBits(u_input.b)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-513f, 1542f, 1000f))))), vec3<f32>(371f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-450f, -1028f) * 1129f), 269f)), Struct_2(-_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.b, u_input.b, 2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, -2147483647i, -36069i, 56029i), vec4<i32>(u_input.c, -1i, u_input.b, -2147483647i))), 315f, arg_1.xz, Struct_1(vec4<i32>(u_input.c >> (0u % 32u), _wgslsmith_mod_i32(-2147483647i, u_input.c), 7863i, -1i), arg_1.zy, ~_wgslsmith_mult_u32(28429u, 1u)), 488i));
    let var_2 = Struct_1(select(vec4<i32>(firstLeadingBit(-2147483647i), ~u_input.b, u_input.a.x, u_input.a.x), min(-vec4<i32>(u_input.c, -2147483647i, u_input.c, 0i), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, u_input.b, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.b, u_input.a.x, u_input.a.x))) >> (~(vec4<u32>(0u, 4294967295u, 16102u, 4294967295u) ^ arg_1) % vec4<u32>(32u)), arg_0 && !arg_0), arg_1.xy & (firstTrailingBit(abs(arg_1.xw)) >> (arg_1.xy % vec2<u32>(32u))), countOneBits(4294967295u));
    let var_3 = vec2<bool>(!select(!(arg_0 == false), false, all(!vec3<bool>(arg_0, false, arg_0))), arg_0);
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(135f, -1150f, -1023f, -974f))))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(404f, -684f, 195f, -464f)))))));
    return vec3<bool>(419f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_4.x))), true, !var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(false, ~(~vec4<u32>(max(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 14u)], 14u)], 14u)], 14u)], 14u)], 1u), ~global0[_wgslsmith_index_u32(23326u, 14u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 14u)], 14u)], 14u)], 14u)], 1u)));
    let var_1 = -u_input.a;
    let var_2 = var_1.x;
    global1 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~42028i & -(~u_input.a.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-223f, 870f)), 426f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(860f, -168f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-587f, _wgslsmith_f_op_f32(f32(-1f) * -654f)))));
}

