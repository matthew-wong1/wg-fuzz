struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: bool,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: f32,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: array<f32, 5>;

var<private> global1: i32 = 0i;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec3<bool>(true, true, true), -1000f, vec2<f32>(435f, -1000f)), Struct_1(vec3<bool>(false, false, false), -1208f, vec2<f32>(489f, -913f)), 0u, Struct_1(vec3<bool>(false, true, false), -631f, vec2<f32>(327f, 900f)), 25054i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: i32, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = global2.a.a.yy;
    global1 = arg_0;
    var var_1 = vec3<u32>(~global2.c, global2.c, ~abs(~23936u));
    let var_2 = any(global2.d.a);
    var var_3 = u_input.a.wxy;
    return Struct_1(select(!(!global2.b.a), !(!global2.b.a), select(!vec3<bool>(false, true, var_0.x), !(!vec3<bool>(true, true, var_0.x)), !all(vec2<bool>(global2.d.a.x, var_0.x)))), 1619f, global2.d.c);
}

fn func_3() -> vec2<f32> {
    let var_0 = Struct_2(Struct_1(global2.d.a, _wgslsmith_f_op_f32(f32(-1f) * -2249f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.b.c) - global2.d.c)), global2.a, global2.c, Struct_1(vec3<bool>(any(!vec4<bool>(false, global2.a.a.x, global2.b.a.x, global2.d.a.x)), u_input.a.x < 33647u, false), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, 0u, 46464u, 0u)), u_input.a), 5u)], _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.d.c))))), _wgslsmith_div_i32(-15622i, 1i));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.c.x) - var_0.d.c.x))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2406f)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-320f)) - 1268f));
    global0 = array<f32, 5>();
    let var_2 = Struct_1(var_0.b.a, _wgslsmith_f_op_f32(f32(-1f) * -292f), _wgslsmith_f_op_vec2_f32(-func_1(46587i, ~vec2<i32>(var_0.e, 7701i)).c));
    let var_3 = func_1(-global2.e, vec2<i32>(~_wgslsmith_clamp_i32(-2147483647i, var_0.e, 2724i), global2.e | max(global2.e, 50488i)) >> (vec2<u32>(~_wgslsmith_mod_u32(global2.c, global2.c), ~u_input.a.x & (global2.c & global2.c)) % vec2<u32>(32u)));
    return _wgslsmith_f_op_vec2_f32(select(var_2.c, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(283f, var_3.b) * vec2<f32>(-874f, 819f)) - var_2.c), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a.c + vec2<f32>(-1000f, -1307f)) * _wgslsmith_f_op_vec2_f32(-var_0.b.c)), _wgslsmith_f_op_vec2_f32(-var_3.c))))), select(func_1(var_0.e, ~abs(vec2<i32>(33222i, -9010i))).a.xy, !var_3.a.xx, select(!(!vec2<bool>(false, global2.a.a.x)), global2.d.a.xz, !select(global2.d.a.yz, vec2<bool>(false, var_0.b.a.x), var_0.d.a.xy)))));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec2<f32>, arg_3: vec4<u32>) -> Struct_3 {
    var var_0 = -214f;
    global0 = array<f32, 5>();
    return Struct_3(Struct_2(func_1(1i, vec2<i32>(_wgslsmith_div_i32(-2147483647i, arg_1), _wgslsmith_div_i32(arg_1, -29690i))), arg_0, ~reverseBits(~1u), Struct_1(global2.d.a, -406f, _wgslsmith_f_op_vec2_f32(func_3())), global2.e & firstLeadingBit(firstTrailingBit(-1089i))), arg_0, Struct_2(Struct_1(global2.b.a, -1000f, vec2<f32>(arg_0.c.x, _wgslsmith_f_op_f32(1000f + -509f))), func_1(global2.e, vec2<i32>(arg_1, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1687i, arg_1, global2.e), vec4<i32>(2147483647i, 0i, 1i, global2.e)))), ~(~(~4294967295u)), arg_0, 17840i), arg_0.a.x, vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(-12526i, arg_1, arg_1), vec3<i32>(1i, arg_1, 2147483647i)), -global2.e) ^ (vec2<i32>(i32(-1i) * -52752i, ~2026i) & ((vec2<i32>(global2.e, global2.e) | vec2<i32>(0i, global2.e)) >> (vec2<u32>(40878u, u_input.a.x) % vec2<u32>(32u)))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: f32) -> i32 {
    var var_0 = !func_2(func_1(_wgslsmith_div_i32(global2.e, global2.e ^ -55952i), vec2<i32>(global2.e, global2.e)), 36873i ^ _wgslsmith_mult_i32(global2.e, 1i), vec2<f32>(func_2(global2.d, _wgslsmith_mod_i32(-12216i, 1i), _wgslsmith_f_op_vec2_f32(select(arg_1.a.b.c, global2.b.c, global2.a.a.x)), _wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(arg_1.c.c, 37483u, 0u, 0u))).c.a.c.x, -559f), u_input.a).c.a.a;
    var var_1 = arg_1.b.c.x;
    global1 = global2.e;
    var var_2 = global2.e ^ _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(~(-72293i), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a.e, arg_1.a.e, arg_1.c.e), vec3<i32>(global2.e, -4644i, -1i)), -1891i)), select(vec3<i32>(global2.e, 39805i, 1i), ~vec3<i32>(arg_1.c.e, global2.e, 2147483647i) >> (u_input.a.www % vec3<u32>(32u)), true));
    global1 = ~(-16758i);
    return ~arg_1.a.e;
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: Struct_3) -> Struct_1 {
    return Struct_1(select(global2.b.a, global2.a.a, true), arg_2.c.a.b, vec2<f32>(1383f, global0[_wgslsmith_index_u32(arg_2.c.c, 5u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(func_5(_wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(11848u, global2.c, u_input.a.x, 0u)), 4294967295u), func_4(select(global2.b.a.zz, vec2<bool>(global2.d.a.x, true), !vec2<bool>(global2.d.a.x, true)), func_2(func_1(-1i, vec2<i32>(global2.e, 0i)), global2.e, global2.b.c, _wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(global2.c, global2.c, u_input.a.x, global2.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d.b) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 5u)] + 754f))), Struct_3(Struct_2(func_1(-19482i, vec2<i32>(2147483647i, global2.e)), Struct_1(global2.b.a, 1035f, global2.d.c), global2.c, Struct_1(global2.a.a, 457f, vec2<f32>(-109f, 712f)), _wgslsmith_clamp_i32(global2.e, 14689i, -1i)), Struct_1(!global2.a.a, 1821f, _wgslsmith_f_op_vec2_f32(global2.d.c * vec2<f32>(global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(global2.c, 5u)]))), Struct_2(Struct_1(vec3<bool>(true, true, global2.d.a.x), global0[_wgslsmith_index_u32(global2.c, 5u)], vec2<f32>(948f, global2.d.b)), Struct_1(vec3<bool>(true, global2.d.a.x, true), 236f, vec2<f32>(global0[_wgslsmith_index_u32(global2.c, 5u)], 836f)), global2.c, Struct_1(global2.a.a, global2.d.b, vec2<f32>(273f, global2.d.c.x)), global2.e), global2.a.a.x, vec2<i32>(_wgslsmith_clamp_i32(global2.e, global2.e, 0i), global2.e))), Struct_1(vec3<bool>(global2.a.a.x, true, true), 606f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(global2.d.c)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-121f, -391f))))))), _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.c, global2.c, 0u) | vec3<u32>(global2.c, global2.c, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(27558u, 1u, 59716u), vec3<u32>(1u, u_input.a.x, 4294967295u))), firstLeadingBit(global2.c)), reverseBits(1u)), func_5(4294967295u, 25177i, func_2(func_1(~global2.e, select(vec2<i32>(-2147483647i, -39816i), vec2<i32>(global2.e, -19372i), global2.d.a.yx)), 9827i, global2.d.c, u_input.a)), 1i);
    var var_0 = abs(u_input.a);
    let var_1 = ~_wgslsmith_mult_vec3_i32(firstLeadingBit(-(~vec3<i32>(25493i, global2.e, 2147483647i))), abs(vec3<i32>(global2.e, global2.e, -75461i)) & ~select(vec3<i32>(global2.e, global2.e, 14999i), vec3<i32>(0i, global2.e, global2.e), global2.b.a.x));
    var var_2 = Struct_4(Struct_2(global2.a, global2.b, ~(~(~var_0.x)), global2.a, i32(-1i) * -2147483647i), Struct_3(Struct_2(func_1(~25298i, reverseBits(var_1.xx)), Struct_1(!global2.d.a, _wgslsmith_f_op_f32(global2.b.b - global2.a.c.x), vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global2.b.c.x)), global2.c, global2.b, -var_1.x), func_1(var_1.x, ~vec2<i32>(var_1.x, var_1.x)), func_2(func_1(firstLeadingBit(var_1.x), reverseBits(var_1.xy)), global2.e, _wgslsmith_f_op_vec2_f32(-global2.a.c), ~u_input.a | ~u_input.a).c, global2.d.a.x, func_2(func_5(func_2(Struct_1(global2.b.a, global0[_wgslsmith_index_u32(var_0.x, 5u)], global2.b.c), -2147483647i, vec2<f32>(-565f, global0[_wgslsmith_index_u32(var_0.x, 5u)]), u_input.a).c.c, 2147483647i, Struct_3(Struct_2(global2.d, Struct_1(vec3<bool>(false, global2.d.a.x, global2.b.a.x), 1145f, global2.a.c), 5540u, global2.a, 0i), global2.a, Struct_2(Struct_1(global2.a.a, 1160f, vec2<f32>(290f, global2.b.c.x)), global2.b, 24320u, global2.a, global2.e), global2.b.a.x, var_1.yz)), -_wgslsmith_add_i32(2147483647i, global2.e), vec2<f32>(global0[_wgslsmith_index_u32(~global2.c, 5u)], _wgslsmith_f_op_f32(-global2.d.c.x)), u_input.a).e), global2.d.b, global0[_wgslsmith_index_u32(var_0.x, 5u)], select(!vec4<bool>(global2.d.a.x, !global2.a.a.x, true, false), !vec4<bool>(global2.a.a.x, global2.d.a.x, any(vec4<bool>(true, global2.a.a.x, global2.b.a.x, false)), true), !global2.b.a.x));
    let var_3 = -1359f;
    global0 = array<f32, 5>();
    var_2 = Struct_4(var_2.b.c, Struct_3(func_2(var_2.a.d, global2.e, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 372f)))), _wgslsmith_mod_vec4_u32(u_input.a, abs(vec4<u32>(var_2.a.c, 1u, 1u, 39457u)))).a, Struct_1(var_2.b.c.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1229f - 1646f) - 1427f), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1255f, -1203f) - vec2<f32>(245f, global0[_wgslsmith_index_u32(var_2.a.c, 5u)]))))), func_2(func_1(_wgslsmith_dot_vec4_i32(vec4<i32>(4953i, global2.e, 28740i, 38812i), vec4<i32>(-1i, -1i, var_1.x, 15494i)), ~var_2.b.e), 5841i, var_2.a.b.c, select(_wgslsmith_sub_vec4_u32(vec4<u32>(95878u, u_input.a.x, 0u, 0u), vec4<u32>(4294967295u, var_0.x, 1u, 4294967295u)), abs(u_input.a), !var_2.e)).a, ~var_2.b.a.c < 10866u, _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(var_1.xz, vec2<i32>(global2.e, var_2.a.e)) ^ vec2<i32>(-2147483647i, var_1.x), vec2<i32>(_wgslsmith_clamp_i32(-2147483647i, var_2.a.e, var_2.a.e), 1i >> (0u % 32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(global2.c, 5u)], var_2.a.d.b)) - _wgslsmith_f_op_f32(-var_2.c))) + global0[_wgslsmith_index_u32(u_input.a.x, 5u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1242f)), _wgslsmith_f_op_f32(round(var_2.c)))), var_2.a.a.c.x), vec4<bool>(var_2.a.b.a.x, true, all(select(select(vec4<bool>(true, true, global2.a.a.x, global2.b.a.x), var_2.e, vec4<bool>(global2.a.a.x, global2.d.a.x, false, global2.b.a.x)), var_2.e, true)), var_2.b.b.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x);
}

