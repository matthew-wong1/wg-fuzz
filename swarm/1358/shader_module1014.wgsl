struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec4<bool>,
    d: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23> = array<i32, 23>(5229i, 4223i, 26939i, 87699i, 2147483647i, -1i, 1i, -58216i, 0i, 0i, 0i, -15595i, 2147483647i, 2147483647i, i32(-2147483648), -1017i, -44038i, -39733i, 35376i, -70841i, -26303i, -34450i, 21104i);

var<private> global1: vec3<u32> = vec3<u32>(11399u, 76352u, 62969u);

var<private> global2: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(-19401i, Struct_1(vec3<f32>(1803f, -1158f, 1066f), 15772i, -1043f, true), vec4<bool>(false, false, false, false), vec2<u32>(3822u, 1u)), Struct_3(14293i, Struct_1(vec3<f32>(818f, 110f, 1460f), -38360i, -572f, true), vec4<bool>(false, false, false, true), vec2<u32>(1u, 34132u)), Struct_3(25327i, Struct_1(vec3<f32>(-1854f, -1403f, 1656f), 36590i, 708f, true), vec4<bool>(true, true, false, false), vec2<u32>(66718u, 48270u)), Struct_3(-1i, Struct_1(vec3<f32>(256f, 455f, -845f), -7159i, 1228f, true), vec4<bool>(false, true, false, false), vec2<u32>(33968u, 12481u)), Struct_3(1i, Struct_1(vec3<f32>(-1413f, 705f, -2351f), 416i, -249f, false), vec4<bool>(true, false, true, false), vec2<u32>(1u, 107596u)), Struct_3(2147483647i, Struct_1(vec3<f32>(-856f, -271f, -1313f), 1i, 1357f, true), vec4<bool>(false, false, false, true), vec2<u32>(51196u, 1u)), Struct_3(40923i, Struct_1(vec3<f32>(1012f, -442f, -1000f), -1i, 1157f, false), vec4<bool>(true, false, true, true), vec2<u32>(40716u, 4294967295u)), Struct_3(9725i, Struct_1(vec3<f32>(-451f, -284f, -689f), 0i, 1295f, true), vec4<bool>(false, true, true, false), vec2<u32>(0u, 2632u)), Struct_3(i32(-2147483648), Struct_1(vec3<f32>(887f, -1482f, 393f), i32(-2147483648), 332f, true), vec4<bool>(true, true, false, false), vec2<u32>(4294967295u, 30240u)), Struct_3(47367i, Struct_1(vec3<f32>(432f, 1022f, -953f), 2147483647i, -236f, false), vec4<bool>(true, true, true, false), vec2<u32>(25885u, 28840u)), Struct_3(i32(-2147483648), Struct_1(vec3<f32>(1905f, 2546f, -208f), -1i, 1657f, true), vec4<bool>(true, true, true, true), vec2<u32>(248u, 75622u)), Struct_3(-39848i, Struct_1(vec3<f32>(1000f, 369f, 1000f), -74711i, -650f, false), vec4<bool>(true, true, false, false), vec2<u32>(4294967295u, 4294967295u)), Struct_3(-29537i, Struct_1(vec3<f32>(-778f, -243f, -1000f), 1014i, -1043f, true), vec4<bool>(false, true, true, false), vec2<u32>(1u, 17027u)), Struct_3(-3109i, Struct_1(vec3<f32>(-1665f, 469f, 1000f), -52472i, -497f, false), vec4<bool>(false, true, false, false), vec2<u32>(4294967295u, 39448u)));

var<private> global3: i32;

var<private> global4: array<bool, 6> = array<bool, 6>(false, false, true, true, true, false);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool) -> f32 {
    global2 = array<Struct_3, 14>();
    var var_0 = -vec3<i32>(select(abs(_wgslsmith_dot_vec3_i32(u_input.b.zxw, u_input.b.ywy)), -abs(0i), !global4[_wgslsmith_index_u32(select(1u, 0u, global4[_wgslsmith_index_u32(4294967295u, 6u)]), 6u)]), -104180i, ~(-3300i) | _wgslsmith_div_i32(u_input.a.x, 1i));
    global2 = array<Struct_3, 14>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-631f, _wgslsmith_f_op_f32(-1377f * _wgslsmith_f_op_f32(f32(-1f) * -126f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(822f, 188f)))), countOneBits(var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1510f), all(!select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, true, false, global4[_wgslsmith_index_u32(63536u, 6u)]), true)) & true);
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(736f, 702f) * 454f), 395f, -352f), ~firstLeadingBit(0i), _wgslsmith_f_op_f32(-var_1.a.x), arg_0);
    return -296f;
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_4) -> u32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(all(vec3<bool>(true, true, false))))), arg_3.a.a.a.x, _wgslsmith_f_op_f32(min(arg_3.a.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a.a.a.x + arg_3.a.d.a.x) * 933f), -327f))), -627f);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_3.a.c, _wgslsmith_div_f32(-1015f, -1000f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), -1000f))))), 1i | min(-(-1i & arg_3.a.a.b), ~(arg_3.a.a.b ^ 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_3.a.a.a.x)))), global4[_wgslsmith_index_u32(~(~(select(global1.x, 0u, arg_3.a.d.d) & ~0u)), 6u)]);
    global0 = array<i32, 23>();
    var var_2 = Struct_3(reverseBits(arg_3.a.a.b), var_1, select(select(vec4<bool>(var_1.d, 1u < arg_1.x, arg_0, select(global4[_wgslsmith_index_u32(49793u, 6u)], arg_3.a.d.d, arg_3.a.b)), vec4<bool>(var_1.c > 501f, !arg_0, any(vec2<bool>(false, arg_3.a.a.d)), all(vec4<bool>(false, arg_0, arg_0, false))), false), select(vec4<bool>(false, arg_3.a.b | arg_3.a.a.d, true, all(vec4<bool>(false, false, true, true))), select(!vec4<bool>(var_1.d, global4[_wgslsmith_index_u32(arg_1.x, 6u)], var_1.d, false), select(vec4<bool>(false, false, arg_0, global4[_wgslsmith_index_u32(global1.x, 6u)]), vec4<bool>(false, false, arg_0, true), vec4<bool>(true, arg_3.a.d.d, arg_0, arg_0)), true && arg_0), any(select(vec4<bool>(false, arg_0, true, arg_3.a.b), vec4<bool>(true, arg_0, arg_0, arg_3.a.b), vec4<bool>(global4[_wgslsmith_index_u32(arg_1.x, 6u)], var_1.d, true, arg_0)))), vec4<bool>(arg_0, var_1.d, true && var_1.d, false)), vec2<u32>(~0u, arg_1.x));
    let var_3 = Struct_4(arg_3.a);
    return _wgslsmith_dot_vec2_u32(arg_1.zy, vec2<u32>(~global1.x, ~(17982u | _wgslsmith_div_u32(0u, global1.x))));
}

fn func_1(arg_0: u32, arg_1: i32) -> i32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1916f + 649f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), 605f)), -1000f);
    var var_1 = vec4<i32>(-47631i << (_wgslsmith_div_u32(_wgslsmith_mod_u32(arg_0, global1.x), func_2(any(vec3<bool>(global4[_wgslsmith_index_u32(global1.x, 6u)], global4[_wgslsmith_index_u32(4294967295u, 6u)], global4[_wgslsmith_index_u32(global1.x, 6u)])), vec3<u32>(global1.x, arg_0, 1u) ^ vec3<u32>(0u, global1.x, arg_0), u_input.b.x << (21844u % 32u), Struct_4(Struct_2(Struct_1(vec3<f32>(-1000f, 1192f, 832f), u_input.b.x, -1000f, false), global4[_wgslsmith_index_u32(global1.x, 6u)], 819f, Struct_1(vec3<f32>(-802f, 1922f, -1746f), 0i, -827f, global4[_wgslsmith_index_u32(1u, 6u)]), 9867u)))) % 32u), _wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-43314i, -2147483647i, u_input.a.x, u_input.b.x), vec4<i32>(u_input.a.x, arg_1, 24468i, global0[_wgslsmith_index_u32(4294967295u, 23u)]), false), ~vec4<i32>(-17322i, global0[_wgslsmith_index_u32(arg_0, 23u)], -1i, 15674i)), arg_1), max(_wgslsmith_sub_i32(u_input.b.x, 22296i), abs(arg_1)) & abs(63123i)), 2147483647i, 0i);
    var_1 = firstTrailingBit(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(reverseBits(u_input.b | u_input.b), -vec4<i32>(1i, global0[_wgslsmith_index_u32(global1.x, 23u)], arg_1, 46030i)), countOneBits(_wgslsmith_div_vec4_i32(u_input.b, u_input.b)) & abs(_wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(arg_1, u_input.b.x, var_1.x, 14162i))), u_input.b));
    global2 = array<Struct_3, 14>();
    let var_2 = countOneBits(~_wgslsmith_clamp_i32(~max(var_1.x, u_input.b.x), ~(-19279i), _wgslsmith_clamp_i32(arg_1 & 1i, 2147483647i, var_1.x)));
    return 1i;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4) -> vec3<u32> {
    let var_0 = arg_0.a;
    var var_1 = select(select(select(select(vec3<bool>(true, global4[_wgslsmith_index_u32(0u, 6u)], false), vec3<bool>(false, global4[_wgslsmith_index_u32(global1.x, 6u)], true), vec3<bool>(arg_1.a.b, false, arg_0.d)), select(vec3<bool>(true, false, arg_1.a.a.d), vec3<bool>(true, true, true), !vec3<bool>(true, true, global4[_wgslsmith_index_u32(arg_1.a.e, 6u)])), select(vec3<bool>(arg_1.a.d.d, true, true), !vec3<bool>(arg_0.d, global4[_wgslsmith_index_u32(0u, 6u)], arg_1.a.d.d), true)), !vec3<bool>(arg_0.d, select(arg_0.d, true, false), !arg_0.d), arg_1.a.a.d), !(!vec3<bool>(false, true, all(vec3<bool>(arg_0.d, arg_1.a.a.d, arg_1.a.a.d)))), select(vec3<bool>(global4[_wgslsmith_index_u32(max(firstTrailingBit(72050u), 10296u << (0u % 32u)), 6u)], arg_1.a.b, false), select(!(!vec3<bool>(true, global4[_wgslsmith_index_u32(global1.x, 6u)], global4[_wgslsmith_index_u32(18161u, 6u)])), select(vec3<bool>(true, true, true), select(vec3<bool>(true, arg_1.a.d.d, false), vec3<bool>(arg_0.d, true, arg_1.a.b), vec3<bool>(false, true, arg_1.a.a.d)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), arg_0.d)), select(true, all(vec3<bool>(true, arg_1.a.d.d, arg_0.d)), all(vec3<bool>(true, global4[_wgslsmith_index_u32(959u, 6u)], true)))), vec3<bool>(16372u >= select(arg_1.a.e, global1.x, arg_0.d), true, arg_1.a.a.d)));
    global1 = vec3<u32>(37412u, func_2(var_1.x, abs(vec3<u32>(~global1.x, global1.x, arg_1.a.e)), i32(-1i) * -(~16935i), Struct_4(Struct_2(Struct_1(vec3<f32>(var_0.x, -507f, -1000f), global0[_wgslsmith_index_u32(global1.x, 23u)], 1035f, false), true, arg_0.a.x, arg_1.a.a, _wgslsmith_mod_u32(global1.x, arg_1.a.e)))), 67303u);
    let var_2 = select(~reverseBits(firstLeadingBit(1u)), _wgslsmith_mult_u32(1702u, 0u), false);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.c, -100f, false)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.d.c) - _wgslsmith_div_f32(1401f, -2737f))), arg_1.a.a.a.x, true)));
    return _wgslsmith_add_vec3_u32(max(abs(~vec3<u32>(var_2, arg_1.a.e, 30046u)), vec3<u32>(_wgslsmith_mod_u32(var_2, 0u), 4461u, _wgslsmith_mult_u32(4294967295u, 1u))) << (~vec3<u32>(~84234u, ~global1.x, 1u) % vec3<u32>(32u)), select(~(~(vec3<u32>(var_2, 0u, var_2) << (vec3<u32>(31910u, arg_1.a.e, global1.x) % vec3<u32>(32u)))), firstLeadingBit(~min(vec3<u32>(var_2, global1.x, 4294967295u), vec3<u32>(29998u, var_2, global1.x))), !(!(!vec3<bool>(var_1.x, arg_0.d, global4[_wgslsmith_index_u32(global1.x, 6u)])))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 23>();
    var var_0 = 1u;
    let var_1 = global1.x;
    let var_2 = countOneBits(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 234f, 1324f), vec3<f32>(-780f, 930f, 1411f), vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 6u)], global4[_wgslsmith_index_u32(4294967295u, 6u)], false))))), firstTrailingBit(-u_input.b.x), -460f, func_1(66587u, 0i) < 3541i), Struct_4(Struct_2(Struct_1(vec3<f32>(101f, 127f, -836f), global0[_wgslsmith_index_u32(global1.x, 23u)], -303f, false), global4[_wgslsmith_index_u32(global1.x, 6u)], -1553f, Struct_1(vec3<f32>(-1607f, 998f, -1000f), u_input.a.x, 499f, global4[_wgslsmith_index_u32(1u, 6u)]), _wgslsmith_clamp_u32(global1.x, 27563u, 1u)))));
    global4 = array<bool, 6>();
    global0 = array<i32, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-258f, 1114f), vec2<f32>(595f, -586f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(956f)), -2149f) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(113f, -162f))))))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1519f)) + _wgslsmith_div_f32(-2623f, 296f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(526f * -1024f), _wgslsmith_f_op_f32(step(-811f, 191f))), 1114f))));
}

