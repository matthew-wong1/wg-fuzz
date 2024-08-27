struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<bool>,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = arg_0;
    let var_1 = vec3<i32>(-1i, ~u_input.a, arg_0.b);
    let var_2 = vec3<bool>(all(arg_0.c.xwx), true, select(var_0.b == ~u_input.a, any(vec2<bool>(true, var_0.b < var_1.x)), true));
    var var_3 = -1i;
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(arg_0.d.zx, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.d.yx) + _wgslsmith_f_op_vec2_f32(arg_0.d.yx - arg_0.d.yx)), vec2<f32>(_wgslsmith_div_f32(arg_0.a, var_0.d.x), _wgslsmith_f_op_f32(var_0.a * 1211f)), true)), any(var_0.c.yyx)))));
}

fn func_2() -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(674f, u_input.c, vec4<bool>(true, false, true, true), vec3<f32>(1515f, -717f, -501f), vec3<f32>(-250f, -591f, -514f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-338f, 266f), vec2<f32>(2538f, -119f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-560f, 1112f))))))));
    let var_1 = ~select(vec2<u32>(56903u, 80367u), u_input.b, 0u < u_input.b.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, var_0.x, 1523f, 251f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1011f, 454f, 372f, var_0.x), vec4<f32>(1382f, 318f, 960f, var_0.x), vec4<bool>(true, true, true, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(866f, var_0.x, var_0.x, var_0.x)))) + vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), -280f, var_0.x, 126f)));
    global0 = array<Struct_1, 9>();
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.d, min(4294967295u, var_1.x)), 9u)];
    return vec3<f32>(var_3.e.x, 1322f, _wgslsmith_f_op_f32(min(143f, -528f)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(u_input.e, u_input.e), u_input.e, 25467u, ~10989u), vec4<u32>(1u, ~u_input.d, countOneBits(u_input.e), ~u_input.e)), 10031u), 1u, 79407u);
    let var_1 = max(var_0.xy, vec2<u32>(~_wgslsmith_clamp_u32(var_0.x, var_0.x, 5517u) ^ (~53349u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 66622u, 1u), vec3<u32>(56654u, 4294967295u, 1u)) % 32u)), 64102u));
    var var_2 = _wgslsmith_f_op_f32(round(1401f)) < arg_0.e.x;
    let var_3 = firstLeadingBit(vec3<u32>(~var_0.x & ~countOneBits(var_1.x), 4294967295u, 1u));
    let var_4 = Struct_1(-405f, _wgslsmith_dot_vec2_i32(select(~_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.b, arg_3.b), vec2<i32>(18457i, arg_1.b)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, -67771i) ^ vec2<i32>(arg_3.b, u_input.a), vec2<i32>(-16238i, 22282i), vec2<i32>(u_input.c, 2147483647i)), !select(arg_0.c.ww, arg_0.c.xy, arg_3.c.x)), firstTrailingBit(vec2<i32>(arg_1.b, arg_0.b)) & _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-50906i, u_input.c), vec2<i32>(-1i, arg_3.b)), select(vec2<i32>(arg_0.b, 2147483647i), vec2<i32>(arg_3.b, arg_3.b), vec2<bool>(false, true)))), select(vec4<bool>(any(select(arg_3.c, vec4<bool>(arg_3.c.x, arg_1.c.x, arg_0.c.x, arg_1.c.x), arg_3.c)), false, !arg_3.c.x, all(vec4<bool>(arg_0.c.x, false, false, true))), vec4<bool>(arg_3.c.x || false, arg_0.c.x, true, any(select(vec4<bool>(true, arg_1.c.x, true, false), arg_3.c, arg_0.c.x))), !((arg_0.c.x == true) || (1u > u_input.e))), arg_3.d, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.x * -1678f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_3.e.x, -338f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-650f)) + _wgslsmith_f_op_f32(arg_3.e.x * -1000f)), -1604f)));
    return Struct_1(_wgslsmith_f_op_f32(-388f * 667f), _wgslsmith_div_i32(select(1i, 12905i, arg_0.c.x), _wgslsmith_mult_i32(arg_3.b ^ arg_1.b, _wgslsmith_sub_i32(u_input.a, -2147483647i))) & 70964i, vec4<bool>(!((-2147483647i ^ u_input.a) == -1i), !any(arg_3.c), any(select(arg_1.c, arg_0.c, vec4<bool>(arg_0.c.x, true, var_4.c.x, arg_3.c.x))) && arg_1.c.x, any(vec2<bool>(!arg_1.c.x, arg_0.c.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_2()), vec3<f32>(521f, -1514f, arg_3.a))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(310f, arg_1.d.x, arg_3.e.x) * vec3<f32>(arg_0.e.x, arg_1.e.x, arg_3.d.x))))), arg_1.d);
}

fn func_1() -> vec4<u32> {
    let var_0 = u_input.c;
    global0 = array<Struct_1, 9>();
    let var_1 = func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -468f)), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, u_input.a, u_input.a), vec3<i32>(-1109i, u_input.a, 0i) << (vec3<u32>(u_input.e, 34889u, 48883u) % vec3<u32>(32u))), -10597i), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-191f, 1978f, -1306f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-592f, -1000f, 1413f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_2()), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(242f, -279f, -1250f)))), true))), global0[_wgslsmith_index_u32(u_input.e, 9u)], _wgslsmith_f_op_f32(max(1f, 919f)), global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(13492u, ~u_input.d), 9u)]);
    let var_2 = -1875f;
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1000f))))))))));
    return ~_wgslsmith_sub_vec4_u32(~vec4<u32>(select(4294967295u, 6143u, var_1.c.x), u_input.d, 7768u, 52294u), countOneBits(_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 11646u, u_input.e, u_input.e), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.e, 4294967295u, u_input.d, u_input.b.x), vec4<u32>(u_input.b.x, 0u, u_input.b.x, 0u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(vec4<u32>(~abs(1u), u_input.e | (u_input.e >> (u_input.d % 32u)), reverseBits(~35382u), ~2167u >> (0u % 32u))) & max(func_1(), vec4<u32>(_wgslsmith_sub_u32(1u, ~4294967295u), 0u, firstTrailingBit(max(38066u, u_input.d)), ~(~u_input.d)));
    var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(var_0.x, firstTrailingBit(~27119u)), _wgslsmith_div_u32(firstLeadingBit(u_input.d), 33099u), var_0.x, firstTrailingBit(~15485u)), firstLeadingBit(vec4<u32>(0u, ~u_input.e, 0u, u_input.d) | ~(vec4<u32>(var_0.x, 6593u, u_input.b.x, u_input.d) ^ vec4<u32>(u_input.e, 0u, 2961u, u_input.b.x))));
    var_0 = ~(~(~vec4<u32>(~u_input.d, _wgslsmith_dot_vec2_u32(u_input.b, var_0.xw), 55107u, var_0.x)));
    global0 = array<Struct_1, 9>();
    let var_1 = func_4(func_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(566f - -438f) + 658f), ~u_input.c, vec4<bool>(all(vec4<bool>(false, true, true, false)), true, true, true), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(259f, -851f, -275f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(820f, 1024f, 1484f) + vec3<f32>(-875f, 1000f, -1038f)), vec3<f32>(628f, 941f, 888f)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 244f), u_input.c, select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(730f, 774f, 786f))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1653f, -1000f, 258f), vec3<f32>(1484f, -2122f, 1109f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(306f, 1067f, 102f) + vec3<f32>(322f, -634f, -550f))))), _wgslsmith_div_f32(func_4(func_4(global0[_wgslsmith_index_u32(var_0.x, 9u)], Struct_1(-483f, u_input.a, vec4<bool>(true, false, false, false), vec3<f32>(193f, 1188f, 587f), vec3<f32>(1000f, 1115f, 825f)), 447f, Struct_1(-534f, u_input.c, vec4<bool>(true, true, false, true), vec3<f32>(317f, 558f, -1734f), vec3<f32>(-980f, 123f, 699f))), Struct_1(787f, 2147483647i, vec4<bool>(true, true, true, true), vec3<f32>(-205f, 1400f, -773f), vec3<f32>(970f, -385f, 954f)), 1f, func_4(Struct_1(-142f, -72839i, vec4<bool>(true, true, false, false), vec3<f32>(-493f, -709f, -1000f), vec3<f32>(2013f, -2570f, -694f)), Struct_1(-1424f, u_input.c, vec4<bool>(false, true, true, true), vec3<f32>(-252f, -1000f, 1000f), vec3<f32>(123f, -1000f, 100f)), -501f, global0[_wgslsmith_index_u32(u_input.e, 9u)])).a, 1f), global0[_wgslsmith_index_u32(1u, 9u)]), Struct_1(_wgslsmith_f_op_f32(abs(753f)), -13278i, vec4<bool>(true, all(vec4<bool>(true, true, true, true)), !all(vec2<bool>(false, true)), select(true, true, true)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_2()), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-727f, -1000f, 1510f)))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2296f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-442f)) + _wgslsmith_f_op_f32(2315f + 741f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1083f + -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(func_4(global0[_wgslsmith_index_u32(select(var_0.x, u_input.b.x, true), 9u)], global0[_wgslsmith_index_u32(var_0.x >> (37638u % 32u), 9u)], _wgslsmith_f_op_f32(trunc(745f)), func_4(global0[_wgslsmith_index_u32(32463u, 9u)], global0[_wgslsmith_index_u32(53408u, 9u)], 867f, Struct_1(1378f, u_input.a, vec4<bool>(true, true, true, true), vec3<f32>(1232f, 1895f, 336f), vec3<f32>(1000f, -790f, 827f)))))).x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(664f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_1(-451f, 27169i, vec4<bool>(false, false, false, true), vec3<f32>(-1000f, -703f, -271f), vec3<f32>(1244f, -1404f, -2075f)))).x))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(16559u, u_input.b.x), min(_wgslsmith_mult_u32(0u, ~23990u), var_0.x ^ ~var_0.x)), 9u)]).c.wx;
    var var_2 = vec3<u32>(~_wgslsmith_add_u32(~(~u_input.e), ~_wgslsmith_mult_u32(var_0.x, 5334u)), 26278u, 45975u);
    let var_3 = true;
    let var_4 = _wgslsmith_clamp_vec2_u32(var_2.xx | select(vec2<u32>(_wgslsmith_div_u32(40910u, 27478u), u_input.e), ~firstLeadingBit(var_0.xx), var_1), ~max(reverseBits(u_input.b), select(var_0.yx >> (vec2<u32>(var_0.x, var_2.x) % vec2<u32>(32u)), vec2<u32>(var_0.x, 3534u) | vec2<u32>(var_0.x, 4294967295u), var_1.x)), func_1().xx);
    let var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-158f, -1541f, _wgslsmith_f_op_f32(-1f))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(945f, -1000f, 1774f), vec3<f32>(2196f, -188f, 607f)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(716f, -1004f, 1988f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-441f, -301f, 1523f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-700f, -434f, -385f))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1566f, 637f, 1000f) + vec3<f32>(1000f, 547f, -1996f)) * _wgslsmith_div_vec3_f32(vec3<f32>(-1260f, 1058f, 1000f), vec3<f32>(-571f, -1268f, -461f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(463f, -1137f, -1257f) - vec3<f32>(832f, -1135f, -1892f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -412f))));
}

