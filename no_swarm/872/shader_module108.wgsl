struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: i32;

var<private> global2: array<u32, 9>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> i32 {
    global1 = firstLeadingBit(u_input.c);
    var var_0 = Struct_2(global0.a, select(false, (_wgslsmith_clamp_u32(1u, 1u, 4294967295u) >> (min(global2[_wgslsmith_index_u32(1u, 9u)], global0.a.a) % 32u)) < abs(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 33403u), 9u)]), all(vec4<bool>(any(vec4<bool>(false, global0.b, global0.c, global0.c)), global0.c, u_input.d <= 0i, any(vec2<bool>(true, global0.c))))), ~37488u <= global2[_wgslsmith_index_u32(1u, 9u)], -u_input.b.x, global0.c);
    global1 = var_0.d;
    let var_1 = vec4<bool>(true, var_0.b, !any(vec4<bool>(true, true, true, true)), global0.e);
    global1 = _wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(-1022i, firstTrailingBit(global0.a.d)), global0.d), global0.a.d);
    return -2540i;
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> Struct_2 {
    global0 = Struct_2(arg_3.a, true, select(any(vec4<bool>(arg_0, false, arg_1.e, arg_3.e)) && (_wgslsmith_clamp_u32(arg_1.a.a, arg_3.a.a, arg_3.a.a) <= 0u), true, arg_1.a.d <= -(~(-54364i))), _wgslsmith_mod_i32(firstLeadingBit(-func_3()), -41069i), select(_wgslsmith_mod_u32(~global0.a.a, arg_3.a.a), firstTrailingBit(71334u << (global0.a.a % 32u)), false) >= ~4294967295u);
    var var_0 = Struct_1(~(~89554u), _wgslsmith_f_op_f32(f32(-1f) * -770f), _wgslsmith_mult_i32(global0.d, arg_3.a.d), _wgslsmith_mod_i32((_wgslsmith_div_i32(global0.a.d, 22300i) | arg_1.a.d) >> (57085u % 32u), abs(func_3())));
    let var_1 = Struct_2(arg_1.a, true, select(!all(select(vec3<bool>(arg_0, arg_1.b, arg_1.b), vec3<bool>(true, arg_1.e, arg_1.e), arg_1.e)), true, global0.e), abs(abs(i32(-1i) * -39856i) >> (~global2[_wgslsmith_index_u32(arg_1.a.a, 9u)] % 32u)), all(!vec3<bool>(true, true, arg_0)));
    let var_2 = vec4<u32>(arg_3.a.a, ~var_1.a.a, _wgslsmith_add_u32(~firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(51990u, 25764u), vec2<u32>(arg_1.a.a, 1u))), _wgslsmith_add_u32(~var_1.a.a << (5236u % 32u), ~max(78668u, arg_1.a.a))), _wgslsmith_div_u32(18438u, arg_3.a.a));
    let var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(269f, var_0.b))))))));
    return var_1;
}

fn func_1() -> Struct_2 {
    global2 = array<u32, 9>();
    var var_0 = global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global0.a.a & global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global0.a.a, 9u)], 9u)], 9u)], 9u)], 9u)];
    global0 = func_2(false, Struct_2(Struct_1(_wgslsmith_clamp_u32(~global0.a.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~13986u, 9u)], 9u)], ~global0.a.a), -229f, abs(global0.d), u_input.b.x), !global0.c, true, _wgslsmith_div_i32(-11192i, u_input.b.x), true), -_wgslsmith_div_i32(2147483647i, -1i), Struct_2(Struct_1(~41568u >> (1u % 32u), _wgslsmith_f_op_f32(-166f * 968f), min(~2147483647i, i32(-1i) * -2147483647i), _wgslsmith_mod_i32(-2147483647i, global0.d) ^ 2742i), true, true, 1498i, true));
    var var_1 = (global0.a.a << (~firstTrailingBit(~4294967295u) % 32u)) <= abs(~global0.a.a);
    global1 = 0i;
    return func_2(global0.b, func_2(global0.b, Struct_2(func_2(global0.b, func_2(false, Struct_2(Struct_1(14961u, 1223f, -1i, 6099i), global0.c, true, -1i, global0.e), u_input.d, Struct_2(global0.a, true, false, -2147483647i, global0.e)), _wgslsmith_add_i32(0i, u_input.b.x), Struct_2(global0.a, global0.e, global0.e, 2147483647i, global0.e)).a, global0.e, !all(vec3<bool>(true, true, false)), ~u_input.d, any(vec4<bool>(true, true, true, global0.b))), ~global0.d, Struct_2(global0.a, true, global0.b, firstLeadingBit(u_input.d), ~u_input.b.x >= _wgslsmith_div_i32(u_input.d, -29144i))), _wgslsmith_add_i32(abs(global0.d), _wgslsmith_div_i32(1i, global0.a.c)), Struct_2(func_2(any(!vec2<bool>(global0.b, global0.e)), func_2(global0.e, func_2(true, Struct_2(Struct_1(1u, global0.a.b, 2147483647i, global0.a.c), true, false, u_input.c, global0.e), global0.d, Struct_2(Struct_1(global2[_wgslsmith_index_u32(global0.a.a, 9u)], global0.a.b, u_input.c, global0.d), true, true, u_input.b.x, true)), u_input.d, func_2(false, Struct_2(global0.a, false, global0.c, -1i, global0.e), 5694i, Struct_2(global0.a, false, global0.b, 1i, global0.e))), 7945i, func_2(any(vec3<bool>(false, true, global0.c)), func_2(false, Struct_2(global0.a, true, global0.b, -4487i, true), -5964i, Struct_2(global0.a, global0.b, global0.c, 6031i, true)), _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(global0.a.d, u_input.c, u_input.d, u_input.b.x)), Struct_2(global0.a, global0.b, false, 1i, global0.b))).a, global0.e, select(true, (4136u ^ global0.a.a) >= 4294967295u, all(select(vec4<bool>(global0.b, global0.b, false, true), vec4<bool>(global0.b, global0.b, global0.c, false), vec4<bool>(global0.b, false, global0.e, true)))), _wgslsmith_add_i32(~global0.a.c, u_input.b.x) << (global0.a.a % 32u), select(!(!global0.e), global0.a.b == _wgslsmith_f_op_f32(f32(-1f) * -1000f), all(select(vec3<bool>(global0.b, global0.b, global0.e), vec3<bool>(global0.c, false, true), global0.e)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec2_i32(~_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_add_i32(global0.d, -41847i), 54212i), u_input.b.xz, -u_input.b.xy), vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.b.yyw, ~(~vec3<i32>(u_input.b.x, global0.d, global0.a.d))), max(global0.a.d, global0.d) & _wgslsmith_mult_i32(-u_input.c, global0.a.d)));
    var var_1 = Struct_2(global0.a, -21692i >= firstLeadingBit(u_input.d), global0.b, _wgslsmith_mult_i32(~14933i, 11142i), all(!select(select(vec2<bool>(false, global0.e), vec2<bool>(false, global0.e), vec2<bool>(global0.b, true)), !vec2<bool>(global0.b, false), !global0.b)));
    global0 = func_1();
    var var_2 = select(select(!vec2<bool>(global0.e == global0.c, var_1.e == var_1.c), !(!vec2<bool>(true, global0.b)), true), select(!select(!vec2<bool>(global0.b, var_1.c), select(vec2<bool>(true, global0.c), vec2<bool>(false, global0.c), false), func_2(true, Struct_2(global0.a, false, global0.b, u_input.d, true), 0i, Struct_2(global0.a, false, global0.c, 33011i, var_1.e)).b), vec2<bool>(true, -16224i < _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(var_1.d, 17237i, var_0.x, global0.a.c))), vec2<bool>(true, func_1().e)), global0.c);
    var var_3 = Struct_1(~var_1.a.a, global0.a.b, _wgslsmith_clamp_i32(u_input.d, min(2147483647i, global0.d), global0.d), -_wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(var_1.d, -1i), -var_1.d), -11988i));
    var var_4 = func_2(var_1.b, Struct_2(Struct_1(var_3.a, -765f, 1i << (~4294967295u % 32u), ~var_3.c), ((var_3.a >= 1u) && true) && true, any(select(vec4<bool>(var_2.x, var_1.c, var_1.e, false), !vec4<bool>(false, var_2.x, true, false), vec4<bool>(global0.c, false, false, false))), var_1.d, true), var_3.c | ~(~firstLeadingBit(var_0.x)), func_2(_wgslsmith_f_op_f32(var_3.b * _wgslsmith_f_op_f32(ceil(var_1.a.b))) >= _wgslsmith_f_op_f32(ceil(-1600f)), Struct_2(global0.a, !any(vec2<bool>(global0.b, false)), false, -7793i, any(select(vec3<bool>(var_1.e, false, var_2.x), vec3<bool>(false, false, var_2.x), vec3<bool>(var_2.x, true, global0.b)))), var_0.x ^ var_0.x, Struct_2(var_1.a, select(false, var_1.c && var_1.c, true), !(false | var_1.e), var_1.d, all(!vec2<bool>(var_1.b, global0.c)))));
    var_4 = func_2(var_4.e, func_2(false, Struct_2(func_2(all(vec3<bool>(true, var_2.x, true)), func_2(true, Struct_2(global0.a, false, var_2.x, global0.d, var_2.x), 31628i, Struct_2(Struct_1(0u, -470f, -35340i, global0.d), var_2.x, var_4.c, var_1.d, var_1.c)), ~var_3.d, func_2(var_2.x, Struct_2(Struct_1(var_1.a.a, -1000f, 1i, u_input.d), var_4.c, true, u_input.c, var_2.x), 78539i, Struct_2(var_1.a, var_2.x, false, u_input.d, var_1.e))).a, global0.c & var_2.x, true, min(43704i, var_4.d), all(vec2<bool>(true, true))), min(global0.d, u_input.a), Struct_2(Struct_1(var_1.a.a, 1000f, 0i, var_3.d), var_4.b, select(!var_4.c, global0.c, all(vec2<bool>(true, var_2.x))), _wgslsmith_sub_i32(_wgslsmith_div_i32(-47997i, global0.d), abs(2147483647i)), !all(vec2<bool>(false, global0.b)))), reverseBits(max(~var_1.a.c, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 9944i), vec2<i32>(var_0.x, global0.d))) ^ _wgslsmith_div_i32(-2147483647i, var_3.c)), Struct_2(Struct_1(max(54685u, ~var_3.a), global0.a.b, _wgslsmith_dot_vec4_i32(-u_input.b, u_input.b ^ u_input.b), 1i), !var_4.c, var_1.c, u_input.d, global0.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(896f, var_1.a.b, 175f, 857f)))))), firstTrailingBit(countOneBits(u_input.b.wzx)));
}

