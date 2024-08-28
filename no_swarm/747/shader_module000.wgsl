struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3>;

var<private> global1: vec4<u32>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_3) -> vec4<u32> {
    let var_0 = ~(~_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 48590u, 64274u, u_input.a), vec4<u32>(56775u, 17537u, global1.x, 23910u)), vec4<u32>(0u, global1.x, u_input.b, 4294967295u)), ~vec4<u32>(1u, u_input.a, u_input.b, global1.x) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(80940u, 23823u, 1u, global1.x), vec4<u32>(u_input.a, 87213u, u_input.a, u_input.a))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -323f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(113f - _wgslsmith_f_op_f32(-267f + 517f))))));
    var var_2 = Struct_1(all(select(select(vec2<bool>(arg_1.a, arg_1.a), !vec2<bool>(arg_1.a, false), select(vec2<bool>(arg_1.a, false), vec2<bool>(arg_1.a, true), arg_1.a)), !select(vec2<bool>(arg_2.a, false), vec2<bool>(arg_2.a, false), false), !all(vec4<bool>(arg_2.a, true, false, arg_2.a)))), _wgslsmith_f_op_f32(trunc(-1605f)), vec3<i32>(-19873i, arg_0.x, ~(~_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(28797u, 3u)], -1i))));
    var var_3 = !vec4<bool>(false, true, ~(u_input.b >> (global1.x % 32u)) >= var_0.x, ~firstTrailingBit(1u) >= 18295u);
    var_2 = Struct_1(var_2.a, var_2.b, _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.x, 16315i, 40219i), vec3<i32>(-1i, 75792i, var_2.c.x)), var_2.c), firstLeadingBit(var_2.c)));
    return vec4<u32>(global1.x, 4294967295u, var_0.x, 66337u);
}

fn func_2(arg_0: f32, arg_1: Struct_4, arg_2: vec4<bool>) -> vec2<i32> {
    var var_0 = ~countOneBits(0u);
    let var_1 = false;
    var var_2 = !(!arg_2.zww);
    var var_3 = vec4<i32>(arg_1.b.x, _wgslsmith_clamp_i32(~firstLeadingBit(19276i), ~global0[_wgslsmith_index_u32(abs(global1.x), 3u)], global0[_wgslsmith_index_u32(0u, 3u)]), arg_1.b.x, ~arg_1.b.x) << ((_wgslsmith_mod_vec4_u32(func_3(vec2<i32>(2147483647i, -16947i), Struct_3(false), Struct_3(false)), vec4<u32>(max(1u, u_input.a), 21292u, countOneBits(global1.x), reverseBits(28956u))) << (~max(vec4<u32>(33251u, global1.x, 35021u, 1u), min(vec4<u32>(global1.x, 12788u, 5774u, 4294967295u), vec4<u32>(u_input.b, 4294967295u, global1.x, global1.x))) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_4 = Struct_2(Struct_1(any(arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -449f))), select(var_3.yzz, vec3<i32>(0i, var_3.x, -12852i), select(true, true, !arg_1.a.a))), 60872u, Struct_1(all(select(arg_2.xwy, vec3<bool>(var_1, arg_2.x, var_1), arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), vec3<i32>(-1i) * -(~vec3<i32>(7491i, global0[_wgslsmith_index_u32(u_input.b, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)]))));
    return countOneBits(select(vec2<i32>(~(var_4.c.c.x & -13675i), ~global0[_wgslsmith_index_u32(12132u, 3u)] >> (u_input.b % 32u)), min(var_3.xx, ~vec2<i32>(var_4.a.c.x, var_4.c.c.x)), vec2<bool>(var_4.a.a, _wgslsmith_f_op_f32(f32(-1f) * -675f) == var_4.a.b)));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = min(arg_2.x, _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(arg_0.x, 3u)], -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(29396u, 3u)], -24197i), -vec3<i32>(arg_2.x, 14541i, global0[_wgslsmith_index_u32(arg_0.x, 3u)])) >> (arg_0.x % 32u)));
    global1 = ~(~vec4<u32>(u_input.a, _wgslsmith_add_u32(u_input.b, _wgslsmith_add_u32(arg_0.x, arg_0.x)), ~global1.x & abs(92151u), 4294967295u));
    global1 = ~(~(~(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, 17965u, u_input.a, 88062u), vec4<u32>(62587u, 1u, 1u, 4220u)) << (max(vec4<u32>(18568u, global1.x, arg_0.x, 68420u), vec4<u32>(global1.x, arg_0.x, 61044u, 4294967295u)) % vec4<u32>(32u)))));
    let var_1 = vec2<bool>(_wgslsmith_clamp_i32(-13886i, _wgslsmith_mod_i32(abs(arg_2.x), _wgslsmith_clamp_i32(-1i, global0[_wgslsmith_index_u32(u_input.a, 3u)], arg_2.x)), max(var_0, -2147483647i) >> (global1.x % 32u)) <= 16913i, any(vec3<bool>(true, true, true)));
    let var_2 = Struct_1(all(!vec4<bool>(true, false | arg_1.x, false, true)), 587f, _wgslsmith_mult_vec3_i32((_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 2147483647i, var_0), vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(arg_0.x, 3u)], global0[_wgslsmith_index_u32(1u, 3u)])) & _wgslsmith_div_vec3_i32(vec3<i32>(arg_2.x, 1i, -1279i), vec3<i32>(var_0, global0[_wgslsmith_index_u32(global1.x, 3u)], 1i))) ^ -firstLeadingBit(vec3<i32>(31485i, var_0, var_0)), abs(vec3<i32>(~global0[_wgslsmith_index_u32(0u, 3u)], var_0, 13185i))));
    return Struct_1(false, _wgslsmith_f_op_f32(max(var_2.b, _wgslsmith_f_op_f32(-var_2.b))), -(vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(46203u, 3u)] ^ var_0, global0[_wgslsmith_index_u32(~2799u, 3u)]) | _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(var_2.c, var_2.c), min(var_2.c, var_2.c), vec3<i32>(1623i, -50224i, global0[_wgslsmith_index_u32(arg_0.x, 3u)]) ^ vec3<i32>(var_2.c.x, global0[_wgslsmith_index_u32(82912u, 3u)], 32531i))));
}

fn func_5(arg_0: Struct_1) -> vec4<u32> {
    global0 = array<i32, 3>();
    global0 = array<i32, 3>();
    var var_0 = Struct_2(Struct_1(arg_0.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1792f, 1523f))))), select(_wgslsmith_add_vec3_i32(-vec3<i32>(81970i, -1i, -1i), ~vec3<i32>(35462i, global0[_wgslsmith_index_u32(0u, 3u)], 0i)), _wgslsmith_div_vec3_i32(vec3<i32>(arg_0.c.x, global0[_wgslsmith_index_u32(27261u, 3u)], 2147483647i), ~arg_0.c), false)), 23606u, func_4(global1.yzw, !select(!vec4<bool>(false, false, false, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, false, arg_0.a), !vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a)), _wgslsmith_mult_vec2_i32(vec2<i32>(-5204i, arg_0.c.x), vec2<i32>(_wgslsmith_clamp_i32(-20710i, 0i, arg_0.c.x), -3605i))));
    let var_1 = max(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(global1.x, 51286u, var_0.b) & _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.b), vec3<u32>(u_input.a, 0u, 0u)), vec3<u32>(abs(global1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, 7900u, 49438u, var_0.b), vec4<u32>(0u, var_0.b, var_0.b, u_input.a)), 43866u))), abs(_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.a, 31312u), ~global1.xyw) | (global1.yww ^ global1.yxw)));
    var var_2 = Struct_4(Struct_3(31835i <= _wgslsmith_div_i32(func_4(global1.xwy, vec4<bool>(true, arg_0.a, arg_0.a, true), vec2<i32>(-1i, 2147483647i)).c.x, max(global0[_wgslsmith_index_u32(global1.x, 3u)], 1i))), min(arg_0.c, arg_0.c) | ~_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(var_0.a.c, vec3<i32>(var_0.c.c.x, global0[_wgslsmith_index_u32(var_1.x, 3u)], 1i)), min(arg_0.c, arg_0.c), arg_0.c));
    return vec4<u32>(~2612u, 0u, ~reverseBits(~var_0.b), _wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_add_u32(~global1.x, 1u)), ~1u));
}

fn func_1(arg_0: vec2<bool>) -> f32 {
    global0 = array<i32, 3>();
    global0 = array<i32, 3>();
    let var_0 = false;
    global1 = max(_wgslsmith_mult_vec4_u32(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 6187u, global1.x, global1.x), vec4<u32>(7901u, global1.x, 1u, 0u), vec4<u32>(18404u, 29311u, u_input.b, 26733u))), vec4<u32>(u_input.b, 4294967295u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(global1.x, u_input.b)))), func_5(func_4(global1.xxx, select(!vec4<bool>(arg_0.x, true, false, false), !vec4<bool>(var_0, var_0, arg_0.x, false), !vec4<bool>(true, var_0, false, var_0)), func_2(_wgslsmith_f_op_f32(sign(-248f)), Struct_4(Struct_3(arg_0.x), vec3<i32>(global0[_wgslsmith_index_u32(global1.x, 3u)], global0[_wgslsmith_index_u32(u_input.b, 3u)], 55192i)), !vec4<bool>(true, false, false, var_0)))));
    let var_1 = _wgslsmith_f_op_f32(min(-182f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1018f * -256f) - _wgslsmith_f_op_f32(round(-1000f))))))));
    return _wgslsmith_f_op_f32(-1108f + func_4(global1.yyx, !(!select(vec4<bool>(var_0, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, var_0, true, true), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false))), vec2<i32>(-global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 3u)], 0i)).b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = (~vec4<u32>(_wgslsmith_div_u32(0u, global1.x), ~47247u, _wgslsmith_mod_u32(29610u, global1.x), ~global1.x) | ~((vec4<u32>(4294967295u, global1.x, 0u, 0u) | vec4<u32>(u_input.b, 4294967295u, 102611u, global1.x)) & firstTrailingBit(vec4<u32>(0u, global1.x, 23809u, 33775u)))) >> (_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, global1.x, u_input.b, 37085u), vec4<u32>(global1.x, global1.x, global1.x, 29570u)) ^ vec4<u32>(65779u, 1u, global1.x, 65804u), vec4<u32>(_wgslsmith_mod_u32(u_input.a, u_input.a), u_input.b, 1u, global1.x)), ~(~vec4<u32>(32657u, 0u, u_input.b, global1.x))) % vec4<u32>(32u));
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_1(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), !select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(any(vec2<bool>(true, true)), u_input.b < 0u)))), _wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -117f)));
    var var_1 = 0u;
    global0 = array<i32, 3>();
    var var_2 = vec4<i32>(min(1i, 1273i) & _wgslsmith_add_i32(1i, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.b, u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.a, global1.x, 594u), vec4<u32>(global1.x, 4294967295u, u_input.b, global1.x))), 3u)]), global0[_wgslsmith_index_u32(1u | select(18224u, 0u, !all(vec3<bool>(false, false, true))), 3u)], ~global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, u_input.a), _wgslsmith_div_vec3_u32(global1.xyx, vec3<u32>(4294967295u, u_input.b, u_input.a))), ~(~1u), ~abs(u_input.b)), 3u)], firstLeadingBit(-(~global0[_wgslsmith_index_u32(4294967295u, 3u)])));
    var_1 = 6670u;
    var var_3 = Struct_4(Struct_3(true | (_wgslsmith_f_op_f32(298f + 282f) >= var_0.x)), vec3<i32>(var_2.x, min(i32(-1i) * -43289i, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(var_2.x, global0[_wgslsmith_index_u32(26813u, 3u)], global0[_wgslsmith_index_u32(66582u, 3u)], var_2.x)), -vec4<i32>(global0[_wgslsmith_index_u32(0u, 3u)], 1i, -42003i, global0[_wgslsmith_index_u32(47124u, 3u)]))), abs(0i)));
    let var_4 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - 1474f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x))), var_0.x);
    var var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 903f, var_0.x, 902f)) + vec4<f32>(var_4, 844f, var_4, -1127f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-163f, var_4, var_4, 1561f)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, var_0.x, _wgslsmith_f_op_f32(min(-1167f, -2044f))))), vec4<f32>(_wgslsmith_f_op_f32(floor(var_4)), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(253f))), var_4))));
    let x = u_input.a;
    s_output = StorageBuffer(1f, ~(-_wgslsmith_mod_i32(var_3.b.x, 1i)), select(~global1.xz, ~(reverseBits(vec2<u32>(62988u, 59033u)) | global1.yx), var_3.a.a));
}

