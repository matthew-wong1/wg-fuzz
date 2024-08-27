struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32 = -910f;

var<private> global2: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(0u, 81094u, false, false), Struct_1(4294967295u, 1u, true, false), Struct_1(4294967295u, 1u, true, false), Struct_1(33722u, 14812u, false, false), Struct_1(4294967295u, 79914u, true, false), Struct_1(26599u, 0u, false, true), Struct_1(0u, 1u, false, true), Struct_1(34602u, 0u, true, true), Struct_1(0u, 0u, false, false), Struct_1(51234u, 13220u, true, false), Struct_1(17139u, 66475u, true, true), Struct_1(63281u, 23149u, false, false), Struct_1(12920u, 1799u, true, false), Struct_1(5002u, 16396u, false, false), Struct_1(26158u, 4294967295u, false, true), Struct_1(37058u, 60232u, false, true), Struct_1(14635u, 3322u, false, true), Struct_1(0u, 31398u, false, true), Struct_1(4294967295u, 4294967295u, true, false), Struct_1(0u, 75450u, false, false), Struct_1(12969u, 19511u, true, false), Struct_1(88160u, 54032u, false, false), Struct_1(1u, 4294967295u, false, false), Struct_1(87438u, 1489u, false, false), Struct_1(40277u, 11668u, true, false), Struct_1(62564u, 1u, false, false), Struct_1(18845u, 47301u, true, true), Struct_1(1u, 21869u, true, false), Struct_1(40580u, 0u, false, false), Struct_1(2223u, 9561u, true, true), Struct_1(0u, 50138u, true, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: vec3<f32>) -> vec2<bool> {
    let var_0 = !select(select(vec3<bool>(true, -5324i < arg_1.x, all(vec4<bool>(global0.c, global0.c, false, global0.d))), select(vec3<bool>(true, false, false), vec3<bool>(false, global0.d, false), select(vec3<bool>(global0.c, global0.c, global0.c), vec3<bool>(true, global0.c, global0.d), global0.d)), (true | global0.d) & global0.d), select(select(select(vec3<bool>(true, global0.d, true), vec3<bool>(global0.d, global0.c, global0.d), vec3<bool>(global0.c, global0.d, true)), vec3<bool>(true, global0.c, true), vec3<bool>(false, true, global0.d)), vec3<bool>(global0.c, !global0.c, global0.c), vec3<bool>(global0.c && global0.c, true, global0.c)), (arg_2.x == arg_2.x) | all(vec3<bool>(true, true, true)));
    var var_1 = !var_0.zz;
    var var_2 = ~max(vec4<i32>(arg_1.x, select(-1i, arg_1.x, false), 0i, ~(-2147483647i)), (arg_1 | vec4<i32>(-20593i, 64778i, 1i, u_input.c)) >> (vec4<u32>(u_input.a, 10183u, 4536u, u_input.b) % vec4<u32>(32u))) ^ -reverseBits(select(arg_1, arg_1, !vec4<bool>(global0.d, var_0.x, true, true)));
    var_1 = !select(var_0.xy, vec2<bool>(false, select(true, false, true)), var_0.zz);
    let var_3 = arg_0;
    return vec2<bool>(global0.c, !var_1.x);
}

fn func_2() -> Struct_1 {
    let var_0 = select(select(func_3(global0.a, min(firstTrailingBit(vec4<i32>(u_input.c, u_input.c, u_input.c, 0i)), vec4<i32>(u_input.c, 25535i, u_input.c, u_input.c)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -696f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -382f)), vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(global0.c, false))), u_input.e < 0u), all(!select(vec2<bool>(global0.c, false), vec2<bool>(false, true), global0.d))), func_3(~(_wgslsmith_div_u32(u_input.b, 4294967295u) | reverseBits(u_input.a)), -_wgslsmith_add_vec4_i32(-vec4<i32>(0i, 23591i, -2147483647i, u_input.c), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2623i, u_input.c, -2147483647i, 1i), vec4<i32>(-4580i, u_input.c, -21729i, -1i), vec4<i32>(2147483647i, 1i, u_input.c, u_input.c))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1886f, 1000f))), _wgslsmith_f_op_f32(-592f * -1140f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -144f), -463f))), !(!vec2<bool>(global0.c, true)));
    var var_1 = ~30170u;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1043f, 1000f, -270f)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-541f, 407f, -364f), vec3<f32>(1680f, 256f, 821f)))) * vec3<f32>(1298f, _wgslsmith_f_op_f32(abs(620f)), _wgslsmith_f_op_f32(step(1000f, 1360f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(679f, 683f, 563f)))))));
    var var_3 = -37236i;
    let var_4 = var_0.x;
    return Struct_1(abs(22027u), 21692u | ~(~(u_input.d ^ global0.a)), global0.d, false);
}

fn func_1(arg_0: Struct_1) -> vec2<i32> {
    global0 = func_2();
    var var_0 = arg_0;
    var var_1 = func_2();
    var_1 = global2[_wgslsmith_index_u32(var_0.b, 31u)];
    var var_2 = func_2();
    return vec2<i32>(-u_input.c, _wgslsmith_mult_i32(abs(u_input.c), _wgslsmith_add_i32(0i, ~u_input.c)) | (41867i >> (_wgslsmith_mod_u32(countOneBits(1u), 4294967295u) % 32u)));
}

fn func_4(arg_0: vec2<i32>) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1185f)) + -492f)))));
    let var_0 = !(!(!(!select(vec3<bool>(true, true, false), vec3<bool>(global0.d, false, false), true))));
    global1 = -357f;
    var var_1 = !global0.c;
    global2 = array<Struct_1, 31>();
    return func_2();
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global0 = Struct_1(1u, firstTrailingBit(~(~0u)), true, arg_0.d);
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -429f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(127f)) * -426f)))));
    global1 = _wgslsmith_f_op_f32(-var_0);
    var var_1 = vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_mod_u32(0u, 1896u), max(u_input.d, 66570u), u_input.a, ~1u), ~firstTrailingBit(min(vec4<u32>(arg_0.b, u_input.e, 4294967295u, global0.b), vec4<u32>(53326u, global0.a, 22438u, 4294967295u)))), ~(~4294967295u), arg_0.a);
    let var_2 = u_input.c;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(~func_1(global2[_wgslsmith_index_u32(reverseBits(12753u), 31u)])));
    let var_1 = func_5(global2[_wgslsmith_index_u32(reverseBits(~var_0.b), 31u)]);
    let var_2 = firstLeadingBit(_wgslsmith_div_vec2_i32(~vec2<i32>(u_input.c, u_input.c) ^ -(vec2<i32>(u_input.c, 7030i) | vec2<i32>(u_input.c, u_input.c)), select(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(u_input.c, u_input.c)), vec2<i32>(u_input.c, u_input.c)), ~(~vec2<i32>(u_input.c, u_input.c)), false & !var_0.d)));
    var var_3 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a ^ ~64824u, max(25924u, ~var_1.b)), _wgslsmith_add_vec2_u32(min(select(vec2<u32>(global0.b, 1u), vec2<u32>(0u, global0.b), true), ~vec2<u32>(4294967295u, var_0.b)), vec2<u32>(0u, 4294967295u) | ~vec2<u32>(var_0.b, var_0.b)));
    var_0 = func_4(vec2<i32>(_wgslsmith_add_i32(1i, _wgslsmith_add_i32(var_2.x, var_2.x) << (func_2().a % 32u)), _wgslsmith_div_i32(var_2.x, firstLeadingBit(-11542i) & select(-2566i, u_input.c, true))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~_wgslsmith_clamp_vec4_i32(vec4<i32>(3197i, -2450i, u_input.c, 2147483647i), -vec4<i32>(var_2.x, 5928i, var_2.x, 6723i), min(vec4<i32>(u_input.c, u_input.c, 0i, -50126i), vec4<i32>(-21435i, u_input.c, -8980i, 0i))), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(max(vec4<i32>(u_input.c, u_input.c, -1i, var_2.x), vec4<i32>(-22085i, -2147483647i, u_input.c, u_input.c)), _wgslsmith_add_vec4_i32(vec4<i32>(var_2.x, 2147483647i, u_input.c, var_2.x), vec4<i32>(u_input.c, var_2.x, u_input.c, -1i))), _wgslsmith_mult_vec4_i32(~vec4<i32>(-2147483647i, u_input.c, u_input.c, u_input.c), select(vec4<i32>(var_2.x, 0i, -12819i, u_input.c), vec4<i32>(var_2.x, -2147483647i, 6409i, 2147483647i), vec4<bool>(true, global0.c, true, var_0.c)))), select(!(!vec4<bool>(false, true, false, global0.d)), select(!vec4<bool>(true, false, global0.d, var_1.d), select(vec4<bool>(var_0.c, true, false, var_0.c), vec4<bool>(var_1.d, true, true, true), global0.c), select(vec4<bool>(true, false, var_0.c, var_0.c), vec4<bool>(true, var_1.c, true, true), vec4<bool>(true, global0.d, false, false))), vec4<bool>(global0.c, all(vec2<bool>(var_0.c, true)), var_0.c & var_1.d, true))), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.e, 56947u, ~global0.a, u_input.b), vec4<u32>(var_0.a, ~u_input.d, ~44650u, 29698u)) << (vec4<u32>(var_0.b, u_input.b, 51314u, ~(~1u)) % vec4<u32>(32u)), var_0.a);
}

