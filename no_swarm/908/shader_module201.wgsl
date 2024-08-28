struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: bool,
    d: vec4<bool>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<i32, 9>;

var<private> global2: vec2<f32>;

var<private> global3: vec3<bool> = vec3<bool>(false, false, true);

var<private> global4: vec4<f32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>) -> i32 {
    global1 = array<i32, 9>();
    let var_0 = Struct_1(true || (global2.x < _wgslsmith_f_op_f32(select(global2.x, _wgslsmith_f_op_f32(f32(-1f) * -519f), true))), ~_wgslsmith_sub_vec3_i32(firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 9u)], 2147483647i, global1[_wgslsmith_index_u32(1u, 9u)]), vec3<i32>(u_input.c, u_input.c, 0i))), ~vec3<i32>(1i, -2147483647i, -1i)), select(firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(1i, global1[_wgslsmith_index_u32(u_input.a, 9u)], global1[_wgslsmith_index_u32(u_input.b.x, 9u)], 1i), vec4<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 9u)], global1[_wgslsmith_index_u32(u_input.b.x, 9u)], 10981i, global1[_wgslsmith_index_u32(1u, 9u)]))), vec4<i32>(-2147483647i, 0i, u_input.c, -2147483647i), true) << (countOneBits(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.b.x, 4294967295u), vec4<u32>(u_input.b.x, u_input.b.x, 1315u, u_input.a))) % vec4<u32>(32u)), _wgslsmith_sub_i32(2147483647i, 8348i));
    global0 = !select(arg_0, vec3<bool>(any(vec3<bool>(true, true, true)), true, !global3.x), select(vec3<bool>(false && arg_0.x, any(vec4<bool>(false, global3.x, true, false)), var_0.a), arg_0, !vec3<bool>(global0.x, global3.x, arg_0.x)));
    global0 = !arg_0;
    global2 = global4.zz;
    return _wgslsmith_mult_i32(-global1[_wgslsmith_index_u32(0u, 9u)], _wgslsmith_dot_vec3_i32(-_wgslsmith_sub_vec3_i32(select(var_0.b, var_0.c.yzx, arg_0), abs(var_0.c.ywx)), ~var_0.b));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(sign(1f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-775f - global4.x) + _wgslsmith_f_op_f32(-1120f - -1132f))), ~vec3<i32>(_wgslsmith_dot_vec4_i32(arg_1.c, -vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(10528u, 9u)], arg_1.d, u_input.c)), global1[_wgslsmith_index_u32(u_input.a, 9u)], -1i), reverseBits(~(-firstTrailingBit(arg_1.c))), ~(~_wgslsmith_clamp_i32(_wgslsmith_add_i32(-18091i, 20575i), -1i ^ arg_1.d, _wgslsmith_clamp_i32(0i, 1i, 58488i))));
    var_0 = Struct_1(false, firstLeadingBit(~vec3<i32>(~arg_1.d, var_0.b.x << (0u % 32u), func_3(vec3<bool>(false, true, global0.x)))), var_0.c, -53896i);
    let var_1 = _wgslsmith_add_i32(var_0.b.x, -2147483647i);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-121f)) - _wgslsmith_f_op_f32(global2.x + global2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1063f + -880f), _wgslsmith_f_op_f32(exp2(global2.x))), false)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x + global4.x) - arg_0.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -220f)) + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global4.x, arg_0.x), _wgslsmith_f_op_f32(-global4.x)))))), global4.x);
    return Struct_1(false, vec3<i32>(~_wgslsmith_mult_i32(~global1[_wgslsmith_index_u32(u_input.b.x, 9u)], u_input.c), ~(~var_0.b.x << (_wgslsmith_add_u32(u_input.a, 15051u) % 32u)), _wgslsmith_div_i32(~(~var_0.c.x), 1i)), -(reverseBits(arg_1.c) | abs(~var_0.c)), _wgslsmith_mod_i32(func_3(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, var_0.a, arg_1.a))), 1i));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> bool {
    global3 = !arg_0.d.ywx;
    global2 = vec2<f32>(-1162f, _wgslsmith_f_op_f32(max(global2.x, -911f)));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * -1529f) - global2.x);
    var var_1 = vec4<i32>(-(~arg_1.c.x), -_wgslsmith_mod_i32(~(-arg_3.a.x), min(arg_2.a.x | 1i, arg_0.a.x)), _wgslsmith_sub_i32((-arg_0.a.x >> (41706u % 32u)) ^ global1[_wgslsmith_index_u32(37217u, 9u)], 0i), select(~(-35281i), -81033i, false));
    global1 = array<i32, 9>();
    return false;
}

fn func_5(arg_0: vec2<bool>) -> vec2<f32> {
    var var_0 = func_2(global4.ww, func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global4.ww)))), Struct_1(func_3(vec3<bool>(global3.x, true, global3.x)) == -u_input.c, vec3<i32>(-9767i, -47201i, -8749i) ^ select(vec3<i32>(0i, global1[_wgslsmith_index_u32(4294967295u, 9u)], u_input.c), vec3<i32>(2147483647i, u_input.c, 35166i), vec3<bool>(true, true, false)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(-9710i, 34730i, -1i, -2147483647i), vec4<i32>(u_input.c, 2147483647i, -9365i, u_input.c)), 13946i)));
    var var_1 = 1u;
    var var_2 = Struct_1(global3.x, vec3<i32>(i32(-1i) * -countOneBits(-2147483647i), global1[_wgslsmith_index_u32(u_input.a, 9u)], firstTrailingBit(-global1[_wgslsmith_index_u32(31342u, 9u)])), _wgslsmith_mod_vec4_i32(-firstTrailingBit(~var_0.c), vec4<i32>(-31267i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 9u)], 0i, u_input.c, -22328i), vec4<i32>(-14081i, var_0.b.x, -2147483647i, -1i)), reverseBits(2147483647i), firstLeadingBit(0i))), 6992i);
    let var_3 = !(!vec3<bool>(var_0.a, var_0.a, 14249u >= _wgslsmith_mult_u32(u_input.a, 4294967295u)));
    let var_4 = u_input.b;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global4.yy - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x))))));
}

fn func_1() -> bool {
    var var_0 = Struct_2(~(~(min(vec2<i32>(u_input.c, global1[_wgslsmith_index_u32(30328u, 9u)]), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 9u)], 8895i)) & ~vec2<i32>(global1[_wgslsmith_index_u32(33100u, 9u)], u_input.c))), select(vec3<bool>(global3.x, (u_input.b.x >= 0u) && all(vec3<bool>(global0.x, global0.x, global3.x)), true), !vec3<bool>(true, all(vec3<bool>(global0.x, global3.x, true)), !global3.x), !(!(!vec3<bool>(true, global0.x, true)))), ((all(vec4<bool>(false, global3.x, global0.x, global0.x)) || global3.x) != true) & all(!vec4<bool>(global0.x, false, true, false)), !vec4<bool>(!select(global3.x, global3.x, true), true, global3.x && all(vec3<bool>(false, true, true)), !(true & global0.x)), true);
    global2 = _wgslsmith_f_op_vec2_f32(func_5(!vec2<bool>(func_4(Struct_2(vec2<i32>(var_0.a.x, global1[_wgslsmith_index_u32(0u, 9u)]), vec3<bool>(global0.x, global0.x, var_0.e), false, var_0.d, false), func_2(vec2<f32>(global2.x, global4.x), Struct_1(global0.x, vec3<i32>(u_input.c, -12944i, 46358i), vec4<i32>(var_0.a.x, -29996i, 2147483647i, global1[_wgslsmith_index_u32(u_input.a, 9u)]), var_0.a.x)), Struct_2(vec2<i32>(1i, u_input.c), vec3<bool>(global0.x, global0.x, true), false, var_0.d, var_0.e), Struct_2(vec2<i32>(u_input.c, u_input.c), var_0.b, false, vec4<bool>(false, global0.x, false, global3.x), global0.x)), all(select(global0.xy, vec2<bool>(true, false), var_0.c)))));
    return func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global4.zw) - vec2<f32>(-1000f, global4.x)), Struct_1(false, vec3<i32>(u_input.c, firstTrailingBit(-var_0.a.x), min(global1[_wgslsmith_index_u32(11968u, 9u)], ~(-33578i))), vec4<i32>(u_input.c, u_input.c, u_input.c, ~max(var_0.a.x, u_input.c)), -2147483647i)).a;
}

fn func_6(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_2;
    let var_1 = arg_3;
    var_0 = vec4<u32>(var_0.x, ~u_input.a, var_0.x, _wgslsmith_add_u32(~(~_wgslsmith_add_u32(u_input.a, 10142u)), var_0.x));
    let var_2 = vec3<u32>(~u_input.b.x, select(64476u, var_0.x, var_1.a), 1u) & var_0.yxy;
    let var_3 = ~min(var_2.xy, select(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, u_input.b.x), vec2<u32>(var_0.x, arg_2.x)), var_2.xy, any(!vec2<bool>(false, global3.x))));
    return func_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, 366f) + vec2<f32>(-1154f, global4.x))))))), func_2(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-190f, arg_1.x)), _wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-267f * -1029f)))), arg_3));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    global3 = vec3<bool>(global3.x, false, global3.x);
    var var_1 = _wgslsmith_sub_u32(var_0, ~u_input.a);
    var var_2 = func_6(Struct_2(vec2<i32>(31878i, -64260i), vec3<bool>(global3.x, !(!global3.x), global3.x), false, vec4<bool>(true, global0.x, !func_1(), all(!vec4<bool>(true, global3.x, false, global3.x))), func_4(Struct_2(vec2<i32>(-419i, global1[_wgslsmith_index_u32(var_0, 9u)]), vec3<bool>(global0.x, true, global0.x), global3.x, !vec4<bool>(true, true, global0.x, global3.x), true), Struct_1(true, _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, -7055i, global1[_wgslsmith_index_u32(var_0, 9u)]), vec3<i32>(u_input.c, -1i, u_input.c)), -vec4<i32>(u_input.c, -1i, global1[_wgslsmith_index_u32(19332u, 9u)], u_input.c), 12643i), Struct_2(vec2<i32>(27276i, u_input.c) | vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 9u)], global1[_wgslsmith_index_u32(39420u, 9u)]), vec3<bool>(global3.x, global0.x, false), false, !vec4<bool>(global0.x, global3.x, global0.x, global3.x), true), Struct_2(vec2<i32>(-2147483647i, 1i) ^ vec2<i32>(u_input.c, 0i), vec3<bool>(global3.x, false, global0.x), true, vec4<bool>(true, false, global3.x, global3.x), true))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 495f)), _wgslsmith_div_vec2_f32(global4.xz, global4.yz), -1200f <= global4.x)))))), u_input.b, func_2(vec2<f32>(-889f, -158f), Struct_1(true, _wgslsmith_sub_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 9u)], u_input.c, 8577i), vec3<i32>(17479i, 40486i, u_input.c)), vec4<i32>(_wgslsmith_mult_i32(-45770i, 0i), -51934i, _wgslsmith_div_i32(-10040i, u_input.c), global1[_wgslsmith_index_u32(~var_0, 9u)]), u_input.c)));
    let var_3 = -min(max(vec4<i32>(62304i, 22012i, global1[_wgslsmith_index_u32(351u, 9u)], 50941i), vec4<i32>(2668i, var_2.c.x, u_input.c, u_input.c)), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(var_2.c, vec4<i32>(var_2.b.x, global1[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(var_0, 9u)], -19495i)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, 0i, -2147483647i, u_input.c), vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(var_0, 9u)], global1[_wgslsmith_index_u32(1u, 9u)], u_input.c)))) & (vec4<i32>(32568i, global1[_wgslsmith_index_u32(countOneBits(var_0), 9u)], -global1[_wgslsmith_index_u32(4825u, 9u)] & -25940i, -_wgslsmith_clamp_i32(u_input.c, 10500i, -1i)) << (u_input.b % vec4<u32>(32u)));
    global3 = !(!vec3<bool>(true, global0.x, !(!global3.x)));
    let var_4 = Struct_2(vec2<i32>(var_3.x, var_3.x), select(!vec3<bool>(false, global0.x, func_1()), vec3<bool>(func_2(_wgslsmith_f_op_vec2_f32(global4.zy + global4.yz), Struct_1(true, var_3.zxw, vec4<i32>(-1i, 5700i, -1i, 2500i), 28557i)).a, global3.x, func_4(Struct_2(var_2.c.xz, vec3<bool>(global3.x, false, false), global3.x, vec4<bool>(true, false, global3.x, true), true), Struct_1(true, vec3<i32>(0i, 1i, -1186i), vec4<i32>(var_3.x, u_input.c, -2147483647i, -27336i), global1[_wgslsmith_index_u32(u_input.b.x, 9u)]), Struct_2(var_2.b.yz, vec3<bool>(global3.x, true, true), global3.x, vec4<bool>(global0.x, false, global0.x, true), false), Struct_2(var_2.b.xy, vec3<bool>(true, global3.x, global3.x), global0.x, vec4<bool>(true, global3.x, var_2.a, var_2.a), false))), select(vec3<bool>(true, var_2.a, true), vec3<bool>(!var_2.a, global0.x, !global0.x), !(!vec3<bool>(global0.x, false, true)))), global0.x, !select(!select(vec4<bool>(var_2.a, var_2.a, global0.x, var_2.a), vec4<bool>(global0.x, global3.x, var_2.a, global0.x), vec4<bool>(var_2.a, global3.x, true, var_2.a)), select(!vec4<bool>(global0.x, false, false, global3.x), select(vec4<bool>(global3.x, false, false, false), vec4<bool>(true, global0.x, global3.x, true), true), vec4<bool>(true, global0.x, false, false)), func_4(Struct_2(var_3.zx, vec3<bool>(var_2.a, global3.x, var_2.a), global0.x, vec4<bool>(var_2.a, global3.x, global3.x, global0.x), false), Struct_1(false, var_3.zxy, vec4<i32>(u_input.c, -40468i, global1[_wgslsmith_index_u32(u_input.a, 9u)], var_2.d), 2147483647i), Struct_2(var_3.wx, vec3<bool>(var_2.a, true, global3.x), true, vec4<bool>(true, global3.x, false, true), global3.x), Struct_2(var_3.xz, vec3<bool>(true, var_2.a, global3.x), var_2.a, vec4<bool>(global0.x, false, global0.x, true), true))), func_4(Struct_2(_wgslsmith_add_vec2_i32(var_3.zz, var_3.xz), select(!vec3<bool>(true, global3.x, var_2.a), select(vec3<bool>(var_2.a, true, true), vec3<bool>(global0.x, global3.x, global3.x), vec3<bool>(false, var_2.a, true)), global0.x), var_2.a, !select(vec4<bool>(false, false, global3.x, var_2.a), vec4<bool>(global0.x, var_2.a, false, global3.x), vec4<bool>(true, false, true, false)), false), Struct_1(all(select(vec4<bool>(global0.x, global3.x, global0.x, global3.x), vec4<bool>(global3.x, false, global0.x, global0.x), vec4<bool>(global0.x, global3.x, var_2.a, true))), _wgslsmith_add_vec3_i32(~vec3<i32>(var_2.c.x, -18271i, 1i), vec3<i32>(22939i, 2147483647i, 0i)), vec4<i32>(abs(var_3.x), ~u_input.c, 33034i, var_3.x), var_2.d), Struct_2(vec2<i32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(2445u, var_0, var_0, u_input.b.x)), 9u)], reverseBits(u_input.c)), vec3<bool>(true & var_2.a, true, all(vec3<bool>(var_2.a, global3.x, false))), true, !select(vec4<bool>(global3.x, var_2.a, var_2.a, var_2.a), vec4<bool>(true, true, global0.x, global3.x), vec4<bool>(var_2.a, global3.x, global3.x, false)), true), Struct_2(vec2<i32>(~global1[_wgslsmith_index_u32(var_0, 9u)], 2147483647i), !vec3<bool>(var_2.a, global3.x, global0.x), all(select(vec2<bool>(true, true), global0.xx, global3.xy)), vec4<bool>(true, 2204f < global4.x, true, func_1()), !(!global0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-(i32(-1i) * -32013i), _wgslsmith_dot_vec4_i32(~var_3, abs(var_2.c)), global2.x);
}

