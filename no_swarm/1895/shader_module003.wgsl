struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 11> = array<i32, 11>(5302i, 0i, -1365i, -62355i, -1i, 45977i, -3744i, -1i, -33653i, 0i, i32(-2147483648));

var<private> global2: Struct_1 = Struct_1(-310f, vec4<u32>(5056u, 1u, 0u, 49126u), vec2<f32>(108f, -486f));

var<private> global3: bool;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, -962f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.c) - _wgslsmith_div_vec2_f32(global0.c, vec2<f32>(1043f, 197f)))) + _wgslsmith_f_op_vec2_f32(step(global0.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(534f, global0.c.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a, global0.a) - vec2<f32>(global2.c.x, global2.a)))));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, ~countOneBits(global2.b.x ^ 44844u)), ~max(~global0.b.x, ~_wgslsmith_add_u32(30795u, global2.b.x))), 11u)];
    var var_2 = arg_0;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(select(global2.a, -1322f, true)), global0.b, var_0);
    global2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a) - _wgslsmith_f_op_f32(step(172f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), vec4<u32>(_wgslsmith_dot_vec2_u32(~global0.b.xz, _wgslsmith_div_vec2_u32(abs(global2.b.zz), global2.b.zx)), 4823u, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(32282u, global2.b.x), 1u | arg_0, 32613u), var_3.b.zwx), ~global2.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(659f, _wgslsmith_f_op_f32(step(1582f, global0.c.x))))) + _wgslsmith_f_op_vec2_f32(select(global0.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.c)), false))));
    return global0.a == -143f;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: u32, arg_3: vec2<f32>) -> f32 {
    global3 = !(true & all(vec3<bool>(any(vec2<bool>(true, false)), true, func_3(global2.b.x))));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.a * -759f), -875f, any(vec3<bool>(true, true, false)))) + _wgslsmith_f_op_f32(-arg_1.x)), abs(vec4<u32>(arg_2, 1u, arg_2, 1u)), arg_3);
    global2 = Struct_1(arg_0.x, vec4<u32>(1u, ~_wgslsmith_clamp_u32(~57410u, 1u, firstTrailingBit(u_input.a)), 1u, arg_2), arg_0);
    global1 = array<i32, 11>();
    var var_1 = vec2<u32>(~7273u, ~((~arg_2 >> (firstTrailingBit(14309u) % 32u)) >> (_wgslsmith_mult_u32(_wgslsmith_div_u32(global0.b.x, 4294967295u), 20565u & global0.b.x) % 32u)));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c.x - _wgslsmith_f_op_f32(-arg_3.x)), 1108f), _wgslsmith_f_op_f32(955f + 1746f), func_3(global0.b.x)))));
}

fn func_1(arg_0: bool, arg_1: vec3<i32>) -> Struct_1 {
    global1 = array<i32, 11>();
    global1 = array<i32, 11>();
    let var_0 = vec4<bool>(true, true, 1000f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(global0.c, vec3<f32>(-1621f, global0.c.x, global0.c.x), global2.b.x, global0.c)) - _wgslsmith_f_op_f32(exp2(global0.c.x)))), any(vec2<bool>(!arg_0, (2113f > global0.a) | !arg_0)));
    global1 = array<i32, 11>();
    let var_1 = !var_0.yxx;
    return Struct_1(global2.c.x, vec4<u32>(global0.b.x, 4294967295u, u_input.a, global0.b.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-647f, global0.c.x)), false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.c) - global0.c)));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    global1 = array<i32, 11>();
    let var_0 = countOneBits(~(~_wgslsmith_dot_vec3_u32(global2.b.zwy, ~global2.b.wyw)));
    let var_1 = min(_wgslsmith_div_vec4_i32(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(global2.b.x, 11u)], 1i, -1i, arg_1), vec4<i32>(global1[_wgslsmith_index_u32(56257u, 11u)], arg_1, global1[_wgslsmith_index_u32(arg_0.b.x, 11u)], 6342i) & vec4<i32>(-40261i, global1[_wgslsmith_index_u32(4294967295u, 11u)], arg_1, 2147483647i))), max(_wgslsmith_mult_vec4_i32(~vec4<i32>(-48503i, global1[_wgslsmith_index_u32(75783u, 11u)], -1905i, arg_1), vec4<i32>(29826i, 0i, arg_1, arg_1)), _wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(7891i, arg_1, arg_1, global1[_wgslsmith_index_u32(1u, 11u)])), vec4<i32>(arg_1, 41164i, arg_1, arg_1)))), vec4<i32>(min(reverseBits(~arg_1), _wgslsmith_mod_i32(_wgslsmith_div_i32(arg_1, arg_1), abs(-1i))), arg_1 & global1[_wgslsmith_index_u32(~(var_0 >> (u_input.a % 32u)), 11u)], global1[_wgslsmith_index_u32(4294967295u, 11u)], -_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, global1[_wgslsmith_index_u32(67469u, 11u)], 29633i, -18244i), vec4<i32>(-5715i, -31855i, 2147483647i, 50747i)), firstTrailingBit(global1[_wgslsmith_index_u32(36709u, 11u)]))));
    var var_2 = func_1(true, vec3<i32>(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(arg_0.b.wy, vec2<u32>(27550u, 4294967295u))), 11u)], _wgslsmith_div_i32(global1[_wgslsmith_index_u32(56460u, 11u)], -2147483647i) ^ abs(-2147483647i)), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(-var_1.yx, var_1.xz), abs(firstLeadingBit(vec2<i32>(var_1.x, var_1.x)))), _wgslsmith_dot_vec3_i32(countOneBits(var_1.zyz) << ((vec3<u32>(4294967295u, arg_0.b.x, 42778u) >> (vec3<u32>(global0.b.x, arg_0.b.x, global0.b.x) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<i32>(abs(1683i), firstTrailingBit(var_1.x), select(-1i, 1i, true)))));
    global1 = array<i32, 11>();
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -821f), _wgslsmith_mult_vec4_u32(select(vec4<u32>(4294967295u, max(63020u, 1u), var_2.b.x, ~26158u), func_1(false, var_1.wwx).b | global0.b, true), vec4<u32>(abs(arg_2.b.x), _wgslsmith_add_u32(global2.b.x, u_input.a) ^ 0u, ~0u, _wgslsmith_mod_u32(func_1(false, var_1.yxz).b.x, global2.b.x))), _wgslsmith_f_op_vec2_f32(floor(global2.c)));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global0 = func_4(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1036f, _wgslsmith_f_op_f32(-global0.c.x), true)), _wgslsmith_f_op_f32(-global0.a)), max(~global0.b, ~arg_0.b), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1718f, -838f)))), global1[_wgslsmith_index_u32(15908u, 11u)], Struct_1(_wgslsmith_f_op_f32(step(global2.a, arg_0.c.x)), ~firstLeadingBit(firstTrailingBit(vec4<u32>(global0.b.x, arg_0.b.x, 1u, u_input.a))), global0.c));
    global1 = array<i32, 11>();
    global1 = array<i32, 11>();
    let var_0 = arg_0;
    let var_1 = 4294967295u;
    return func_1(!any(vec3<bool>(true, select(false, false, false), true)), reverseBits(~_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 1i, -2147483647i), vec3<i32>(global1[_wgslsmith_index_u32(var_0.b.x, 11u)], global1[_wgslsmith_index_u32(global2.b.x, 11u)], global1[_wgslsmith_index_u32(135513u, 11u)])) | -(vec3<i32>(-26608i, 0i, global1[_wgslsmith_index_u32(var_1, 11u)]) >> (global2.b.zzy % vec3<u32>(32u)))));
}

fn func_6(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = (vec4<u32>(72967u, global2.b.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(global2.b.yy, vec2<u32>(4294967295u, global0.b.x)), _wgslsmith_add_u32(0u, 42146u)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 6532u) | arg_0.b.zy, ~global2.b.zy)) << (_wgslsmith_sub_vec4_u32(func_4(func_4(Struct_1(global0.a, vec4<u32>(arg_0.b.x, 1u, 4294967295u, 4294967295u), vec2<f32>(global0.c.x, global0.c.x)), 46021i, arg_0), 0i, Struct_1(-390f, vec4<u32>(1u, global0.b.x, 1363u, global0.b.x), global2.c)).b, vec4<u32>(~u_input.a, firstLeadingBit(global0.b.x), reverseBits(52213u), firstTrailingBit(u_input.a))) % vec4<u32>(32u))) >> (arg_0.b % vec4<u32>(32u));
    global1 = array<i32, 11>();
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)) - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global0.c.x, global2.c.x), _wgslsmith_f_op_f32(-global2.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -238f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a - 137f) * _wgslsmith_f_op_f32(global2.a * global0.a)))), select(_wgslsmith_sub_vec4_u32(abs(arg_0.b), vec4<u32>(func_4(Struct_1(-411f, global2.b, vec2<f32>(arg_0.c.x, 169f)), -2147483647i, arg_0).b.x, ~global2.b.x, ~arg_0.b.x, ~64975u)), select(~func_1(false, vec3<i32>(global1[_wgslsmith_index_u32(arg_0.b.x, 11u)], 2816i, global1[_wgslsmith_index_u32(arg_0.b.x, 11u)])).b, vec4<u32>(_wgslsmith_mult_u32(0u, 0u), 4294967295u, func_1(true, vec3<i32>(global1[_wgslsmith_index_u32(34371u, 11u)], -2147483647i, 6977i)).b.x, 27785u), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false))), false), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(arg_0.c.x, _wgslsmith_f_op_f32(ceil(544f)))))), global2.a));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-768f, _wgslsmith_f_op_f32(global0.c.x * global2.a)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)));
    let var_3 = select(vec2<bool>(true, true), select(!vec2<bool>(func_3(arg_0.b.x), true), !vec2<bool>(u_input.a >= global0.b.x, true), all(vec3<bool>(true, true, true))), true);
    return Struct_1(913f, global0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1489f, arg_0.c.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-619f, var_1.a)))))));
}

fn func_7(arg_0: bool, arg_1: Struct_1, arg_2: vec2<f32>) -> StorageBuffer {
    global2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -634f), vec4<u32>(1u, global2.b.x, _wgslsmith_mult_u32(_wgslsmith_add_u32(1u, firstTrailingBit(1u)), func_1(false, vec3<i32>(global1[_wgslsmith_index_u32(arg_1.b.x, 11u)], -11337i, global1[_wgslsmith_index_u32(u_input.a, 11u)])).b.x | 1u), global0.b.x), _wgslsmith_f_op_vec2_f32(-arg_1.c));
    let var_0 = ((global1[_wgslsmith_index_u32(global0.b.x ^ 12761u, 11u)] << (31832u % 32u)) << (firstLeadingBit(4294967295u) % 32u)) << (37169u % 32u);
    global0 = Struct_1(-158f, ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(2084u, 29726u, 0u, 1u), global2.b)) | vec4<u32>(~global0.b.x, 66518u, select(u_input.a, 1u, arg_0) ^ _wgslsmith_add_u32(global0.b.x, global0.b.x), ~(~4294967295u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.c)));
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(func_1(func_3(4150u), vec3<i32>(0i, 14364i, var_0)).a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(491f, 447f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(global0.c.x - 810f), any(vec4<bool>(false, false, arg_0, arg_0))))))));
    let var_2 = ~(~(arg_1.b.x ^ global2.b.x));
    return StorageBuffer(_wgslsmith_sub_vec2_i32(reverseBits(~vec2<i32>(global1[_wgslsmith_index_u32(global2.b.x, 11u)], -10096i)) << (arg_1.b.zx % vec2<u32>(32u)), vec2<i32>(10403i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global1[_wgslsmith_index_u32(global0.b.x, 11u)], global1[_wgslsmith_index_u32(global0.b.x, 11u)]), vec3<i32>(var_0, 2147483647i, 2147483647i) >> (vec3<u32>(global2.b.x, global2.b.x, 0u) % vec3<u32>(32u))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(231f, arg_1.c.x), _wgslsmith_f_op_f32(abs(-1403f)), _wgslsmith_f_op_f32(global0.c.x * -2116f), _wgslsmith_f_op_f32(f32(-1f) * -127f)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1632f, -1360f, global2.a, global0.a))))) + vec4<f32>(_wgslsmith_f_op_f32(1080f * global0.c.x), -508f, -827f, global2.c.x)))), arg_2.x, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_2.x, arg_1.c.x, 1532f)) + vec4<f32>(-1482f, 145f, var_1.x, global2.c.x)) + vec4<f32>(-101f, -1287f, _wgslsmith_f_op_f32(-771f - 1304f), _wgslsmith_f_op_f32(-arg_1.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(650f * _wgslsmith_div_f32(863f, global0.c.x))), global2.b, global0.c);
    var var_1 = ~vec4<u32>(~4294967295u, ~1u, 32477u, _wgslsmith_add_u32(85387u, 27184u)) | vec4<u32>(0u, abs(1u), ~global2.b.x, var_0.b.x);
    let x = u_input.a;
    s_output = func_7(true, func_6(func_5(func_4(Struct_1(var_0.c.x, vec4<u32>(var_1.x, global0.b.x, 4294967295u, 86447u), var_0.c), i32(-1i) * -10026i, func_1(false, vec3<i32>(global1[_wgslsmith_index_u32(1u, 11u)], global1[_wgslsmith_index_u32(4294967295u, 11u)], global1[_wgslsmith_index_u32(var_0.b.x, 11u)])))), var_1.wx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global2.c)), vec2<f32>(_wgslsmith_f_op_f32(1076f + 118f), _wgslsmith_f_op_f32(-global2.a)))));
}

