struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26>;

var<private> global1: Struct_2 = Struct_2(vec2<bool>(true, false), vec2<i32>(i32(-2147483648), 2147483647i), vec2<u32>(109419u, 19988u));

var<private> global2: Struct_2;

var<private> global3: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(261f), Struct_1(1263f), Struct_1(127f));

var<private> global4: bool = true;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: f32) -> vec2<bool> {
    let var_0 = global1.c.x;
    let var_1 = Struct_3(Struct_2(global2.a, vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(35934i, global1.b.x, u_input.a, -2147483647i), vec4<i32>(global1.b.x, -2147483647i, global2.b.x, 25953i)), -1i), -_wgslsmith_div_i32(-2147483647i, global2.b.x)), _wgslsmith_add_vec2_u32(select(~global1.c, reverseBits(global2.c), true), ~_wgslsmith_mod_vec2_u32(global1.c, global1.c))), true, Struct_2(global1.a, -(select(vec2<i32>(arg_0, global1.b.x), vec2<i32>(arg_0, u_input.a), global2.a.x) & (vec2<i32>(1i, -50813i) >> (vec2<u32>(1u, 0u) % vec2<u32>(32u)))), ~select(~vec2<u32>(global1.c.x, 4294967295u), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 13067u), vec2<u32>(global1.c.x, 0u)), select(global1.a, vec2<bool>(global1.a.x, false), global1.a.x))), !select(!select(vec3<bool>(global1.a.x, false, false), vec3<bool>(true, false, global2.a.x), vec3<bool>(global1.a.x, false, global1.a.x)), !select(vec3<bool>(false, global2.a.x, false), vec3<bool>(global1.a.x, global1.a.x, global2.a.x), vec3<bool>(global1.a.x, true, false)), global2.a.x | true));
    var var_2 = Struct_2(select(var_1.d.xx, !global1.a, var_1.a.a), select(-vec2<i32>(global2.b.x, firstLeadingBit(14764i)), vec2<i32>(-2147483647i, ~global1.b.x), !vec2<bool>(u_input.a < arg_0, false)), vec2<u32>(arg_1, abs(1u)));
    let var_3 = var_1.a;
    var var_4 = global3[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(0u, abs(48628u) ^ abs(var_2.c.x))), 3u)];
    return var_3.a;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_3) -> i32 {
    global4 = false;
    let var_0 = Struct_3(Struct_2(vec2<bool>(true, true), ~(firstTrailingBit(global1.b) >> (vec2<u32>(4294967295u, 26356u) % vec2<u32>(32u))), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(67338u, u_input.c)), ~(vec2<u32>(4475u, 0u) << (vec2<u32>(22188u, global1.c.x) % vec2<u32>(32u))))), min(arg_3.a.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.c.c.x, 13700u, arg_2.a.c.x) & vec3<u32>(global1.c.x, 4294967295u, 65994u), ~vec3<u32>(global1.c.x, 49573u, 11769u))) != ~global2.c.x, Struct_2(select(select(vec2<bool>(false, arg_3.b), select(arg_0, global2.a, global2.a), true), vec2<bool>(select(false, arg_0.x, arg_3.b), !arg_0.x), any(!vec3<bool>(arg_2.a.a.x, false, true))), vec2<i32>(abs(global2.b.x), _wgslsmith_dot_vec2_i32(global2.b, vec2<i32>(-37811i, 37992i))), firstLeadingBit(_wgslsmith_mult_vec2_u32(select(global2.c, global1.c, global2.a), arg_2.a.c))), select(vec3<bool>(select(select(global2.a.x, global2.a.x, false), global1.b.x < arg_3.c.b.x, global1.a.x), all(select(vec2<bool>(false, arg_0.x), arg_0, arg_3.a.a)), func_3(select(-62888i, 13208i, arg_2.a.a.x), global1.c.x, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 26u)] + -158f)).x), !arg_2.d, any(vec3<bool>(true, true, true))));
    global2 = Struct_2(vec2<bool>(false, false), -countOneBits(firstTrailingBit(var_0.c.b)), var_0.c.c);
    global2 = Struct_2(select(select(vec2<bool>(true, all(arg_3.d)), vec2<bool>(all(var_0.d), 306f <= arg_1.a), true), arg_3.c.a, false), select(_wgslsmith_add_vec2_i32(~vec2<i32>(global2.b.x, 36647i), arg_3.a.b), _wgslsmith_mod_vec2_i32(min(arg_3.a.b, vec2<i32>(0i, 13776i)), global1.b), true), global1.c << (var_0.a.c % vec2<u32>(32u)));
    global1 = Struct_2(global2.a, _wgslsmith_mod_vec2_i32(global1.b, _wgslsmith_sub_vec2_i32(arg_3.a.b, select(vec2<i32>(global1.b.x, -24271i), _wgslsmith_mult_vec2_i32(global1.b, var_0.a.b), !global1.a.x))), global1.c);
    return -(var_0.a.b.x << (max(1u, 1u ^ ~arg_3.a.c.x) % 32u));
}

fn func_2() -> Struct_2 {
    global0 = array<f32, 26>();
    var var_0 = 4294967295u;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -965f), _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(global1.c.x, 26u)]))))))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 26u)]));
    let var_2 = func_4(select(global1.a, vec2<bool>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global2.c.x, 26u)]) >= _wgslsmith_f_op_f32(-934f + -889f), false), vec2<bool>(global2.a.x, true)), Struct_1(-1053f), Struct_3(Struct_2(select(select(global1.a, global1.a, false), vec2<bool>(false, global2.a.x), global1.a.x), _wgslsmith_div_vec2_i32(vec2<i32>(-1i, u_input.a), global2.b), global1.c), !(!global2.a.x), Struct_2(global1.a, _wgslsmith_sub_vec2_i32(vec2<i32>(-25609i, global1.b.x), global2.b), ~(~vec2<u32>(32503u, 0u))), vec3<bool>(false, all(!global2.a), false)), Struct_3(Struct_2(func_3(~(-42656i), 1u, _wgslsmith_div_f32(-1225f, 119f)), min(global2.b, global1.b), vec2<u32>(3501u, ~1u)), any(global1.a), Struct_2(!vec2<bool>(global1.a.x, global1.a.x), global2.b, ~global1.c), select(select(!vec3<bool>(global1.a.x, global1.a.x, global1.a.x), !vec3<bool>(global2.a.x, true, true), !global2.a.x), vec3<bool>(any(vec3<bool>(false, false, global2.a.x)), !global1.a.x, func_3(global2.b.x, 20492u, 727f).x), false)));
    var var_3 = 4294967295u;
    return Struct_2(vec2<bool>(false, !(-var_2 >= min(global1.b.x, global1.b.x))), vec2<i32>(~global1.b.x, ~(u_input.a >> (u_input.d % 32u))) << ((~(~vec2<u32>(global1.c.x, global1.c.x)) & vec2<u32>(0u, 44905u)) % vec2<u32>(32u)), max(global1.c, vec2<u32>(max(26455u, 33435u), 1u) | global1.c));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-608f)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(arg_0, abs(select(vec3<u32>(10213u, u_input.b, arg_0.x), arg_0, vec3<bool>(true, true, global2.a.x)))), _wgslsmith_mult_u32(u_input.c, 1u) >> (~0u % 32u)), 26u)]));
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-1234f)), _wgslsmith_f_op_f32(f32(-1f) * -320f), _wgslsmith_div_f32(1530f, global0[_wgslsmith_index_u32(63878u, 26u)]))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-365f, 897f, 1124f)) * vec3<f32>(-856f, _wgslsmith_f_op_f32(round(-1000f)), var_0))))));
    var var_2 = func_2();
    var_1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(abs(-728f))), 331f)), _wgslsmith_f_op_f32(sign(-2367f)), _wgslsmith_f_op_f32(var_0 + var_1.x))));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1361f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 26u)])))), _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(0u, 1u), 26u)], var_0)), -1067f);
    return arg_1;
}

fn func_1(arg_0: vec3<f32>) -> i32 {
    let var_0 = global2.a.x;
    let var_1 = func_5(~(~vec3<u32>(global1.c.x, select(0u, u_input.d, global1.a.x), reverseBits(0u))), func_2());
    var var_2 = Struct_3(var_1, select(global1.c.x < 28229u, (all(var_1.a) || true) & (true || select(global1.a.x, false, true)), var_1.a.x), var_1, !vec3<bool>(!any(global2.a), global0[_wgslsmith_index_u32(global1.c.x << (u_input.b % 32u), 26u)] < -848f, any(var_1.a)));
    var var_3 = func_5(_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(~0u, abs(1u)), ~(~var_1.c.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, var_2.c.c.x), firstTrailingBit(vec2<u32>(global1.c.x, 0u)))), ~vec3<u32>(firstLeadingBit(var_2.a.c.x), 0u, _wgslsmith_mult_u32(22712u, u_input.c)), abs(countOneBits(select(vec3<u32>(global1.c.x, var_2.c.c.x, 1u), vec3<u32>(90306u, 81164u, var_1.c.x), global2.a.x)))), func_2());
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1272f, 1650f) - global0[_wgslsmith_index_u32(global1.c.x, 26u)]);
    return firstTrailingBit(countOneBits(~_wgslsmith_mult_i32(-11767i, -3250i)) >> (~var_3.c.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(~(~vec2<i32>(1i, -2147483647i)), _wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(-2147483647i, 25524i)), global2.b)) & global2.b, vec2<i32>(1i, min(abs(u_input.a ^ global2.b.x), u_input.a)));
    var var_1 = ~min(~select(vec3<i32>(u_input.a, 48633i, 9581i), vec3<i32>(var_0.x, var_0.x, u_input.a), vec3<bool>(false, global2.a.x, false)) | ~(-vec3<i32>(1i, 22702i, 0i)), vec3<i32>(max(_wgslsmith_div_i32(global1.b.x, global1.b.x), func_1(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 26u)], 2918f, -512f))), reverseBits(9199i >> (u_input.d % 32u)), i32(-1i) * -20224i));
    global3 = array<Struct_1, 3>();
    global0 = array<f32, 26>();
    global3 = array<Struct_1, 3>();
    global4 = !global1.a.x;
    var var_2 = _wgslsmith_div_u32(global2.c.x, 0u ^ u_input.d);
    var var_3 = _wgslsmith_mult_i32(select(-3651i, select(-(2147483647i >> (u_input.d % 32u)), -69470i, true), select(all(vec3<bool>(global1.a.x, false, true)), !global2.a.x, false)), 8773i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(~_wgslsmith_mult_vec2_i32(global1.b, var_0), ~_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(var_0, var_1.xx), vec2<i32>(-2147483647i, var_1.x))), 1i, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(8281u, global2.c.x, 11679u), 26u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1082f + -299f)))), 1u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(global1.c.x, 26u)], global0[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)], -647f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(297f, global0[_wgslsmith_index_u32(global2.c.x, 26u)], -1356f, global0[_wgslsmith_index_u32(u_input.c, 26u)]), vec4<f32>(628f, global0[_wgslsmith_index_u32(7496u, 26u)], global0[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(23225u, 26u)])))), all(!global1.a))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(11196u, 26u)], global0[_wgslsmith_index_u32(56296u, 26u)], -1033f, -356f) + vec4<f32>(-676f, global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(19921u, 26u)], -1206f))))));
}

