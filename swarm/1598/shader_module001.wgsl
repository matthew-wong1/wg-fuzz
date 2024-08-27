struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: Struct_2,
    d: u32,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: Struct_3,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec2<bool>, 16> = array<vec2<bool>, 16>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true));

var<private> global2: vec3<u32> = vec3<u32>(13596u, 4294967295u, 0u);

var<private> global3: u32 = 80234u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    var var_0 = Struct_4(global0.c.a, _wgslsmith_f_op_f32(select(-716f, -1183f, false)), true && (14543i < u_input.c), Struct_3(!select(select(global0.c.b.yxy, global0.c.b.zzy, vec3<bool>(global0.a.x, global0.e.x, global0.c.b.x)), global0.a, vec3<bool>(false, global0.a.x, global0.e.x)), select(vec2<bool>(all(vec4<bool>(global0.b.x, global0.c.b.x, false, false)), all(global0.c.b)), vec2<bool>(true, true), false), Struct_2(Struct_1(select(global0.c.b.zw, vec2<bool>(global0.a.x, global0.e.x), global1[_wgslsmith_index_u32(u_input.a, 16u)]), _wgslsmith_div_vec3_u32(global0.c.a.b, global0.c.a.b), global0.c.a.c | vec3<i32>(0i, -3088i, u_input.b), any(global0.a)), global0.c.b), ~(~_wgslsmith_add_u32(74907u, 1u)), select(!global1[_wgslsmith_index_u32(reverseBits(u_input.a), 16u)], !select(global0.a.yy, global0.b, vec2<bool>(true, true)), all(global0.c.b.wxy))), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(global0.c.a.c.x, -2147483647i, -1i) >> (global2.x % 32u), u_input.c, -2147483647i, _wgslsmith_clamp_i32(global0.c.a.c.x, -u_input.c, _wgslsmith_dot_vec3_i32(global0.c.a.c, vec3<i32>(-54629i, u_input.c, global0.c.a.c.x)))), vec4<i32>(0i, _wgslsmith_clamp_i32(min(27640i, global0.c.a.c.x), _wgslsmith_clamp_i32(1i, 49910i, u_input.b), _wgslsmith_div_i32(global0.c.a.c.x, 57955i)), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, -2147483647i, 3459i, 2147483647i), vec4<i32>(2147483647i, global0.c.a.c.x, global0.c.a.c.x, -52298i) & vec4<i32>(global0.c.a.c.x, global0.c.a.c.x, -2147483647i, global0.c.a.c.x)), _wgslsmith_clamp_i32(firstTrailingBit(u_input.c), global0.c.a.c.x, u_input.c))));
    global2 = vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(abs(u_input.a), _wgslsmith_mod_u32(41242u, u_input.a)) << (_wgslsmith_mult_u32(~u_input.a, _wgslsmith_mod_u32(20046u, 16530u)) % 32u), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(global0.c.a.b.yy, vec2<u32>(25u, 1u)) >> (vec2<u32>(var_0.d.d, var_0.a.b.x) % vec2<u32>(32u)), ~vec2<u32>(1u, var_0.d.c.a.b.x))), ~(~(~38119u)), global2.x);
    global1 = array<vec2<bool>, 16>();
    var var_1 = vec2<i32>(select(i32(-1i) * -_wgslsmith_add_i32(1i, -1i), _wgslsmith_div_i32(u_input.c & -28392i, 1i), global0.e.x), -2147483647i);
    var var_2 = reverseBits(max(_wgslsmith_clamp_vec2_u32(vec2<u32>(~1u, ~global0.c.a.b.x), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 60697u, global2.x, global2.x), vec4<u32>(u_input.a, var_0.d.d, global0.d, var_0.a.b.x)), 1u), ~reverseBits(global2.zy)), ~vec2<u32>(max(global0.c.a.b.x, 0u), ~global2.x)));
    return var_0.b;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: vec3<f32>) -> Struct_3 {
    global0 = Struct_3(global0.a, select(global1[_wgslsmith_index_u32(global0.c.a.b.x, 16u)], vec2<bool>(_wgslsmith_f_op_f32(func_3()) < 645f, !any(vec3<bool>(false, global0.e.x, true))), !(!global1[_wgslsmith_index_u32(0u, 16u)])), Struct_2(Struct_1(vec2<bool>(true & global0.b.x, true), vec3<u32>(countOneBits(0u), global2.x & global0.c.a.b.x, _wgslsmith_clamp_u32(global2.x, u_input.a, 0u)), -vec3<i32>(14473i, 0i, u_input.c), global0.a.x), select(vec4<bool>(global0.a.x || global0.b.x, all(vec2<bool>(global0.c.a.d, global0.a.x)), false, true), global0.c.b, any(select(vec3<bool>(false, global0.b.x, true), vec3<bool>(true, true, global0.c.a.d), vec3<bool>(true, true, false))))), ~_wgslsmith_mod_u32(0u, select(~1u, global0.d | global0.d, global0.b.x)), vec2<bool>(false, (abs(u_input.c) << (~global2.x % 32u)) == -(~global0.c.a.c.x)));
    global3 = ~(~_wgslsmith_add_u32(43871u, u_input.a) << (global2.x % 32u));
    global0 = Struct_3(global0.c.b.zxy, vec2<bool>(0i > firstTrailingBit(1i), any(!(!vec3<bool>(true, false, global0.c.a.d)))), global0.c, global2.x, select(global1[_wgslsmith_index_u32(select(_wgslsmith_add_u32(global2.x, 0u) << (~28694u % 32u), _wgslsmith_add_u32(u_input.a, global2.x), false), 16u)], select(!global1[_wgslsmith_index_u32(global0.d, 16u)], select(vec2<bool>(true, true), global1[_wgslsmith_index_u32(firstTrailingBit(25071u), 16u)], global0.c.a.a), vec2<bool>(true, u_input.a < global2.x)), _wgslsmith_f_op_f32(min(-690f, arg_0.x)) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(arg_0.x, 946f))))));
    var var_0 = ~(~(~(u_input.a | (global0.d << (global0.d % 32u)))));
    global3 = 9234u;
    return Struct_3(select(select(!global0.c.b.xww, select(vec3<bool>(true, true, true), vec3<bool>(global0.e.x, true, global0.a.x), vec3<bool>(global0.b.x, global0.c.b.x, global0.a.x)), select(select(global0.a, global0.c.b.wxy, global0.c.b.yyy), !global0.a, vec3<bool>(true, false, global0.a.x))), vec3<bool>(!all(global0.c.b.xwx), true, true), !select(select(vec3<bool>(global0.e.x, global0.a.x, true), vec3<bool>(false, true, false), false), !global0.c.b.yzw, any(global1[_wgslsmith_index_u32(4294967295u, 16u)]))), select(select(!select(vec2<bool>(global0.c.b.x, true), global1[_wgslsmith_index_u32(global2.x, 16u)], global0.e.x), select(vec2<bool>(global0.c.a.a.x, false), select(vec2<bool>(true, global0.b.x), vec2<bool>(global0.e.x, global0.e.x), global1[_wgslsmith_index_u32(u_input.a, 16u)]), select(vec2<bool>(false, false), global1[_wgslsmith_index_u32(4294967295u, 16u)], vec2<bool>(false, true))), vec2<bool>(!global0.b.x, !global0.c.b.x)), global0.e, global1[_wgslsmith_index_u32(~(~(12790u ^ global0.c.a.b.x)), 16u)]), global0.c, 0u, select(!select(!vec2<bool>(global0.b.x, false), vec2<bool>(true, false), true), global0.c.a.a, vec2<bool>(true, global0.b.x || true)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: vec3<f32>) -> Struct_3 {
    var var_0 = firstTrailingBit(-7586i);
    var var_1 = true;
    let var_2 = global0.e.x;
    global0 = func_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(229f, arg_3.x, arg_1.b, 210f) - vec4<f32>(arg_1.b, 595f, -1037f, arg_3.x)))))), arg_1.e.ywy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_3 + arg_3)))));
    global3 = ~u_input.a;
    return arg_0;
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_1) -> f32 {
    var var_0 = func_4(func_2(vec4<f32>(arg_0, _wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(arg_0)))), _wgslsmith_f_op_f32(f32(-1f) * -327f)), ~(~global0.c.a.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(947f, 805f)), arg_0, 217f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-998f, arg_0, 116f) * vec3<f32>(arg_0, 1113f, -787f))))), Struct_4(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(2954f, arg_0, -940f, arg_0)))), min(global0.c.a.c, vec3<i32>(global0.c.a.c.x, u_input.c, global0.c.a.c.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1154f, arg_0, arg_0))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)))).c.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + arg_0), -2081f)), true, Struct_3(vec3<bool>(true, true, true), vec2<bool>(false, select(arg_2.d, true, arg_2.d)), global0.c, global2.x, arg_2.a), arg_1), global0.c.b, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -993f), -428f))));
    var var_1 = func_4(Struct_3(vec3<bool>(!func_4(Struct_3(vec3<bool>(var_0.b.x, arg_2.d, true), vec2<bool>(arg_2.a.x, var_0.e.x), Struct_2(Struct_1(var_0.a.yz, vec3<u32>(global2.x, u_input.a, u_input.a), arg_1.yxx, false), global0.c.b), global2.x, var_0.e), Struct_4(global0.c.a, arg_0, false, Struct_3(vec3<bool>(arg_2.d, var_0.a.x, arg_2.a.x), var_0.b, Struct_2(arg_2, vec4<bool>(global0.b.x, true, false, global0.a.x)), u_input.a, vec2<bool>(global0.e.x, false)), vec4<i32>(var_0.c.a.c.x, arg_1.x, arg_1.x, -1i)), vec4<bool>(true, global0.b.x, false, global0.a.x), vec3<f32>(arg_0, 265f, arg_0)).c.b.x, true, false), func_4(Struct_3(global0.c.b.xyw, !var_0.a.xx, func_4(Struct_3(global0.c.b.wwy, arg_2.a, Struct_2(global0.c.a, global0.c.b), global2.x, vec2<bool>(false, var_0.a.x)), Struct_4(Struct_1(vec2<bool>(arg_2.d, true), vec3<u32>(arg_2.b.x, arg_2.b.x, 0u), global0.c.a.c, false), arg_0, true, Struct_3(var_0.c.b.yzz, vec2<bool>(global0.c.a.d, false), var_0.c, u_input.a, vec2<bool>(false, false)), arg_1), vec4<bool>(false, false, false, false), vec3<f32>(arg_0, arg_0, 577f)).c, ~1u, select(vec2<bool>(false, false), global0.a.yy, arg_2.a.x)), Struct_4(Struct_1(var_0.c.a.a, global0.c.a.b, arg_2.c, global0.a.x), _wgslsmith_f_op_f32(-arg_0), any(global1[_wgslsmith_index_u32(global0.c.a.b.x, 16u)]), Struct_3(var_0.c.b.yxz, var_0.b, Struct_2(Struct_1(vec2<bool>(false, arg_2.d), vec3<u32>(1u, 36569u, global2.x), arg_2.c, global0.c.b.x), vec4<bool>(false, false, false, var_0.b.x)), 49509u, global0.e), -arg_1), func_4(Struct_3(vec3<bool>(global0.a.x, global0.b.x, global0.e.x), vec2<bool>(arg_2.a.x, var_0.a.x), global0.c, global2.x, global0.e), Struct_4(Struct_1(vec2<bool>(true, global0.e.x), arg_2.b, vec3<i32>(-1i, u_input.c, 11184i), false), arg_0, arg_2.d, Struct_3(vec3<bool>(true, var_0.c.b.x, var_0.b.x), global0.e, var_0.c, arg_2.b.x, var_0.b), vec4<i32>(18135i, global0.c.a.c.x, -1i, u_input.c)), vec4<bool>(true, true, true, true), vec3<f32>(552f, arg_0, -191f)).c.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, -1989f, arg_0), vec3<f32>(924f, -363f, arg_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-220f, -1250f, 427f)), func_2(vec4<f32>(arg_0, -2584f, 811f, arg_0), arg_1.ywy, vec3<f32>(arg_0, -351f, 1586f)).c.b.wyz))).a.xx, func_4(Struct_3(vec3<bool>(arg_2.a.x, true, false), !var_0.e, var_0.c, 1u, select(arg_2.a, vec2<bool>(true, arg_2.d), vec2<bool>(true, arg_2.a.x))), Struct_4(var_0.c.a, _wgslsmith_f_op_f32(func_3()), !var_0.b.x, func_4(Struct_3(vec3<bool>(false, true, false), global0.b, global0.c, global2.x, global1[_wgslsmith_index_u32(global0.c.a.b.x, 16u)]), Struct_4(Struct_1(vec2<bool>(true, global0.b.x), var_0.c.a.b, var_0.c.a.c, var_0.a.x), arg_0, false, Struct_3(vec3<bool>(false, false, arg_2.a.x), vec2<bool>(true, false), Struct_2(var_0.c.a, var_0.c.b), 1u, global0.c.b.yz), vec4<i32>(arg_2.c.x, var_0.c.a.c.x, global0.c.a.c.x, 1i)), vec4<bool>(arg_2.a.x, true, true, var_0.c.a.a.x), vec3<f32>(270f, arg_0, 477f)), -vec4<i32>(var_0.c.a.c.x, var_0.c.a.c.x, -41899i, 0i)), func_4(Struct_3(vec3<bool>(var_0.c.a.a.x, global0.e.x, false), global0.b, Struct_2(arg_2, var_0.c.b), 33416u, arg_2.a), Struct_4(global0.c.a, 145f, false, Struct_3(var_0.a, arg_2.a, var_0.c, global2.x, vec2<bool>(true, var_0.b.x)), vec4<i32>(arg_1.x, u_input.c, u_input.c, arg_1.x)), !vec4<bool>(arg_2.d, true, false, arg_2.d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-123f, -570f, 1019f))).c.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-261f, 381f, arg_0)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -781f, -1770f)))).c, ~0u, func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, -1241f, -985f) * vec4<f32>(259f, arg_0, arg_0, arg_0)), select(select(vec3<i32>(0i, global0.c.a.c.x, var_0.c.a.c.x), vec3<i32>(u_input.c, -12767i, 29229i), var_0.a), vec3<i32>(arg_1.x, 34339i, 0i), vec3<bool>(true, global0.a.x, false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, arg_0, 1852f), vec3<f32>(arg_0, arg_0, 179f), false)))).e), Struct_4(func_4(Struct_3(var_0.a, vec2<bool>(var_0.a.x, true), Struct_2(Struct_1(vec2<bool>(false, global0.b.x), global0.c.a.b, arg_2.c, false), vec4<bool>(false, arg_2.d, arg_2.a.x, global0.e.x)), u_input.a ^ global0.c.a.b.x, global1[_wgslsmith_index_u32(func_2(vec4<f32>(-1624f, arg_0, -318f, 1251f), vec3<i32>(global0.c.a.c.x, u_input.c, u_input.b), vec3<f32>(-227f, arg_0, arg_0)).c.a.b.x, 16u)]), Struct_4(Struct_1(vec2<bool>(false, false), vec3<u32>(49791u, 99714u, 1u), vec3<i32>(global0.c.a.c.x, arg_2.c.x, 1i), true), -1187f, true, Struct_3(vec3<bool>(global0.b.x, true, var_0.c.b.x), global1[_wgslsmith_index_u32(u_input.a, 16u)], Struct_2(Struct_1(vec2<bool>(var_0.a.x, arg_2.a.x), vec3<u32>(global0.c.a.b.x, 4294967295u, u_input.a), arg_1.yxy, arg_2.a.x), var_0.c.b), var_0.d, global1[_wgslsmith_index_u32(37918u, 16u)]), _wgslsmith_mult_vec4_i32(vec4<i32>(-22434i, 2147483647i, 14356i, global0.c.a.c.x), arg_1)), var_0.c.b, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(713f, 1989f, 931f), vec3<f32>(arg_0, arg_0, arg_0))))).c.a, -1000f, abs(_wgslsmith_mult_u32(0u, u_input.a)) >= _wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_2.b.x) | vec2<u32>(1u, 6699u), global0.c.a.b.yz), Struct_3(select(func_2(vec4<f32>(arg_0, arg_0, arg_0, 818f), vec3<i32>(arg_1.x, 0i, -45889i), vec3<f32>(-861f, arg_0, arg_0)).c.b.wwx, global0.a, !var_0.a), vec2<bool>(false, func_2(vec4<f32>(1961f, arg_0, arg_0, -879f), vec3<i32>(arg_2.c.x, arg_1.x, arg_1.x), vec3<f32>(-240f, arg_0, -1215f)).c.b.x), func_4(Struct_3(vec3<bool>(true, global0.c.a.a.x, true), global0.e, var_0.c, global2.x, vec2<bool>(arg_2.d, false)), Struct_4(global0.c.a, -121f, false, Struct_3(vec3<bool>(true, var_0.a.x, global0.e.x), global1[_wgslsmith_index_u32(arg_2.b.x, 16u)], global0.c, 36409u, global1[_wgslsmith_index_u32(0u, 16u)]), arg_1), vec4<bool>(true, true, var_0.e.x, true), vec3<f32>(-644f, arg_0, arg_0)).c, global0.d, vec2<bool>(false, false)), select(arg_1, (arg_1 ^ vec4<i32>(arg_1.x, -23684i, -1i, 1i)) & max(arg_1, vec4<i32>(-17566i, u_input.c, 58700i, arg_2.c.x)), select(true, true, -1026f > arg_0))), select(!var_0.c.b, vec4<bool>(any(!vec4<bool>(global0.e.x, arg_2.d, var_0.e.x, true)), true, true, func_2(vec4<f32>(-179f, arg_0, arg_0, 597f), arg_2.c, vec3<f32>(arg_0, arg_0, 1158f)).e.x), func_2(vec4<f32>(_wgslsmith_div_f32(arg_0, arg_0), 1387f, _wgslsmith_f_op_f32(f32(-1f) * -1574f), _wgslsmith_f_op_f32(-arg_0)), reverseBits(_wgslsmith_sub_vec3_i32(var_0.c.a.c, var_0.c.a.c)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-296f, arg_0, arg_0) + vec3<f32>(-863f, -2059f, 1000f))))).c.b), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(473f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-282f + 331f) - 427f)), arg_0));
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, arg_0) + vec2<f32>(609f, -942f)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-375f, 643f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0, arg_0), vec2<f32>(1825f, arg_0))))))));
    var var_4 = countOneBits(_wgslsmith_mod_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, -13352i, var_1.c.a.c.x, global0.c.a.c.x), ~vec4<i32>(4745i, arg_2.c.x, var_0.c.a.c.x, 19219i), arg_1), select(vec4<i32>(-1i) * -arg_1, _wgslsmith_mod_vec4_i32(arg_1, _wgslsmith_sub_vec4_i32(vec4<i32>(-59902i, arg_2.c.x, -78605i, global0.c.a.c.x), arg_1)), any(!vec2<bool>(var_0.a.x, false)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1037f)));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32, arg_3: u32) -> Struct_1 {
    var var_0 = Struct_3(func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1962f, arg_2, 1000f, arg_2) + vec4<f32>(489f, arg_2, 111f, arg_2)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_2, -1026f, -332f) - vec4<f32>(1277f, arg_2, arg_2, 1107f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(609f, arg_2, -1000f, -464f) + vec4<f32>(arg_2, arg_2, -642f, -707f))))), vec3<i32>(global0.c.a.c.x, -1i, global0.c.a.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_2, arg_2, arg_2), vec3<f32>(481f, arg_2, 524f)))))).c.b.yxy, select(!func_2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2, 152f, -444f, arg_2))), _wgslsmith_clamp_vec3_i32(global0.c.a.c, global0.c.a.c, arg_0.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1085f, arg_2, arg_2))).e, vec2<bool>(true, true), true), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 1229f, 1712f, arg_2))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 2750f, arg_2, -438f)))), -_wgslsmith_mod_vec3_i32(~global0.c.a.c, min(vec3<i32>(1i, -1i, arg_0.c.x), arg_0.c)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1000f, arg_2) - vec3<f32>(arg_2, arg_2, 633f)) + vec3<f32>(arg_2, arg_2, -881f))))).c, _wgslsmith_mod_u32(~abs(arg_0.b.x) & ~0u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a, 4294967295u), global2.x | 1u) & ~_wgslsmith_add_u32(4294967295u, arg_0.b.x)), select(vec2<bool>(_wgslsmith_f_op_f32(round(arg_2)) <= _wgslsmith_f_op_f32(f32(-1f) * -1355f), func_4(func_4(Struct_3(vec3<bool>(true, arg_1.x, arg_0.a.x), arg_0.a, global0.c, arg_3, global1[_wgslsmith_index_u32(arg_0.b.x, 16u)]), Struct_4(Struct_1(arg_1.xx, arg_0.b, arg_0.c, arg_1.x), 1217f, true, Struct_3(vec3<bool>(arg_1.x, false, true), global0.a.xy, Struct_2(arg_0, vec4<bool>(true, arg_1.x, arg_0.a.x, arg_1.x)), u_input.a, arg_0.a), vec4<i32>(41194i, -1i, -2147483647i, arg_0.c.x)), vec4<bool>(global0.b.x, global0.a.x, false, true), vec3<f32>(505f, arg_2, arg_2)), Struct_4(arg_0, 812f, arg_1.x, Struct_3(vec3<bool>(global0.a.x, arg_1.x, arg_1.x), vec2<bool>(true, false), global0.c, global2.x, vec2<bool>(arg_1.x, arg_0.a.x)), vec4<i32>(-60913i, global0.c.a.c.x, global0.c.a.c.x, -2147483647i)), select(global0.c.b, vec4<bool>(global0.e.x, arg_0.d, false, global0.e.x), false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, -782f))).c.b.x), arg_1.zz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2, 175f, false)) * _wgslsmith_f_op_f32(func_1(arg_2, vec4<i32>(1i, arg_0.c.x, arg_0.c.x, global0.c.a.c.x), Struct_1(global0.b, vec3<u32>(4294967295u, 76397u, arg_0.b.x), vec3<i32>(global0.c.a.c.x, -19805i, arg_0.c.x), true)))) > _wgslsmith_f_op_f32(-178f + _wgslsmith_f_op_f32(func_1(arg_2, vec4<i32>(arg_0.c.x, 32566i, u_input.c, -32351i), arg_0)))));
    var var_1 = _wgslsmith_sub_i32(-(~arg_0.c.x ^ var_0.c.a.c.x), var_0.c.a.c.x);
    var var_2 = _wgslsmith_f_op_f32(-arg_2);
    var_2 = arg_2;
    global3 = countOneBits(~1u);
    return Struct_1(vec2<bool>((select(u_input.b, 2147483647i, true) > _wgslsmith_add_i32(2147483647i, -46404i)) || false, global0.c.a.a.x), firstLeadingBit(arg_0.b), global0.c.a.c, global0.e.x == (((var_0.c.a.c.x < 2147483647i) && all(global0.a)) && arg_1.x));
}

fn func_6(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec3<i32>) -> vec3<u32> {
    let var_0 = ~_wgslsmith_mod_vec4_i32(~arg_0.e, arg_0.e >> (_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.c.a.b.x, 1u, 9010u, 88180u), vec4<u32>(45016u, 0u, arg_0.d.c.a.b.x, 9834u)), ~vec4<u32>(global0.d, global0.d, arg_0.a.b.x, global2.x)) % vec4<u32>(32u)));
    var var_1 = select(!(!(!vec2<bool>(false, arg_1.a.d))), global0.a.zz, any(vec2<bool>(false, any(func_4(arg_0.d, Struct_4(Struct_1(arg_1.a.a, vec3<u32>(118119u, global0.c.a.b.x, 27349u), var_0.wxy, true), -425f, false, arg_0.d, vec4<i32>(-11795i, 1157i, -17551i, 1i)), arg_1.b, vec3<f32>(arg_0.b, 955f, 1089f)).a))));
    return vec3<u32>(~(1u & ((u_input.a & 1u) | global0.c.a.b.x)), ~(14231u >> (arg_1.a.b.x % 32u)), _wgslsmith_mult_u32(_wgslsmith_div_u32(arg_0.d.d, u_input.a), u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global0.c.a.b;
    global2 = _wgslsmith_mod_vec3_u32(~vec3<u32>(firstTrailingBit(u_input.a), 4294967295u & u_input.a, firstLeadingBit(0u)), ~global0.c.a.b ^ _wgslsmith_add_vec3_u32(global0.c.a.b, ~vec3<u32>(u_input.a, global0.d, 0u))) | func_6(Struct_4(func_5(global0.c.a, vec4<bool>(false, global0.c.b.x, true, true), _wgslsmith_f_op_f32(func_1(-153f, vec4<i32>(-12409i, global0.c.a.c.x, u_input.b, global0.c.a.c.x), Struct_1(global0.e, global0.c.a.b, global0.c.a.c, false))), _wgslsmith_mult_u32(u_input.a, global2.x)), _wgslsmith_f_op_f32(func_1(-132f, vec4<i32>(-10626i, -2147483647i, -2147483647i, -10583i) >> (vec4<u32>(global0.c.a.b.x, global2.x, 42140u, global0.c.a.b.x) % vec4<u32>(32u)), Struct_1(vec2<bool>(true, true), global0.c.a.b, global0.c.a.c, global0.c.b.x))), global0.b.x, Struct_3(func_4(Struct_3(vec3<bool>(global0.e.x, true, global0.a.x), vec2<bool>(false, global0.e.x), Struct_2(Struct_1(vec2<bool>(global0.c.a.d, false), global0.c.a.b, vec3<i32>(1i, 4342i, 6105i), global0.c.a.d), vec4<bool>(false, global0.a.x, false, global0.a.x)), 4294967295u, global1[_wgslsmith_index_u32(5784u, 16u)]), Struct_4(Struct_1(vec2<bool>(global0.e.x, global0.e.x), global0.c.a.b, global0.c.a.c, global0.e.x), -312f, true, Struct_3(vec3<bool>(global0.e.x, false, false), global0.a.yx, Struct_2(Struct_1(vec2<bool>(false, false), global0.c.a.b, vec3<i32>(u_input.b, u_input.c, u_input.c), global0.c.a.a.x), global0.c.b), u_input.a, global1[_wgslsmith_index_u32(4294967295u, 16u)]), vec4<i32>(u_input.b, u_input.b, -29505i, 0i)), global0.c.b, vec3<f32>(596f, 1724f, -188f)).a, !global1[_wgslsmith_index_u32(27402u, 16u)], Struct_2(global0.c.a, vec4<bool>(true, false, global0.a.x, global0.c.a.d)), u_input.a, select(vec2<bool>(global0.a.x, true), global0.a.yz, vec2<bool>(false, false))), vec4<i32>(i32(-1i) * -2147483647i, 1i, u_input.b, global0.c.a.c.x)), func_4(Struct_3(func_2(vec4<f32>(387f, -210f, 1495f, -1414f), vec3<i32>(-58064i, global0.c.a.c.x, -1i), vec3<f32>(1335f, -659f, 104f)).a, !global0.b, func_2(vec4<f32>(-589f, 1415f, 206f, -1000f), global0.c.a.c, vec3<f32>(1928f, -1322f, 1000f)).c, 4294967295u, func_5(global0.c.a, global0.c.b, 156f, 44285u).a), Struct_4(Struct_1(global0.c.a.a, vec3<u32>(global2.x, u_input.a, global0.c.a.b.x), vec3<i32>(u_input.b, 30926i, u_input.c), global0.a.x), 1130f, u_input.a <= global2.x, func_2(vec4<f32>(130f, -3186f, 100f, 2087f), vec3<i32>(global0.c.a.c.x, 97441i, u_input.b), vec3<f32>(-144f, -899f, -576f)), vec4<i32>(global0.c.a.c.x, -1i, u_input.b, global0.c.a.c.x)), !(!global0.c.b), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1253f, 580f, 1605f)))))).c, max(-_wgslsmith_clamp_vec3_i32(global0.c.a.c, global0.c.a.c, vec3<i32>(-2147483647i, -1i, u_input.b)), vec3<i32>(global0.c.a.c.x << (u_input.a % 32u), u_input.b, 0i)));
    let var_0 = Struct_4(Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, 4294967295u), 16u)], ~_wgslsmith_mod_vec3_u32(~global0.c.a.b, vec3<u32>(20921u, 17912u, global2.x)), _wgslsmith_mod_vec3_i32(global0.c.a.c, vec3<i32>(func_2(vec4<f32>(-1155f, -315f, -225f, 1473f), global0.c.a.c, vec3<f32>(517f, 742f, 1295f)).c.a.c.x, u_input.c | 913i, -1i | global0.c.a.c.x)), any(!vec4<bool>(false, global0.a.x, true, false))), _wgslsmith_div_f32(600f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -869f))), global0.c.b.x, Struct_3(!vec3<bool>(!global0.c.b.x, true, global0.b.x), global1[_wgslsmith_index_u32(global0.d, 16u)], func_2(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 476f, -971f, 157f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(888f, 763f, 865f, 135f))), global0.c.a.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(209f, -769f, 2415f), vec3<f32>(547f, -616f, 195f)) * _wgslsmith_div_vec3_f32(vec3<f32>(-2050f, -1364f, -677f), vec3<f32>(1879f, -502f, 149f)))).c, global2.x, vec2<bool>(true, global0.a.x)), ~vec4<i32>(abs(global0.c.a.c.x), u_input.c, min(func_5(global0.c.a, global0.c.b, 1787f, 8338u).c.x, -4031i), -36016i));
    var var_1 = 3016f == var_0.b;
    var var_2 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.b, _wgslsmith_f_op_f32(floor(var_0.b)), 915f, _wgslsmith_f_op_f32(var_0.b - 346f))))), global0.c.a.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.b, 1298f, var_0.b))), vec3<f32>(-687f, -297f, var_0.b)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, var_0.b, -679f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(595f, -1741f, 1041f) - vec3<f32>(-1893f, var_0.b, var_0.b)))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.b, 560f, var_0.b)))))))).c;
    var var_3 = vec3<bool>(var_0.c, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -24767i, _wgslsmith_dot_vec3_i32(vec3<i32>(35506i, 34906i, -23228i), vec3<i32>(-1i, 2147483647i, 0i))), -firstLeadingBit(vec3<i32>(-8302i, 2147483647i, global0.c.a.c.x))) != _wgslsmith_clamp_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, var_2.a.c.x, u_input.c), global0.c.a.c), abs(~u_input.b), var_2.a.c.x), global0.e.x);
    var var_4 = !global0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~global2.x, global2.x, _wgslsmith_f_op_f32(-var_0.b), vec4<f32>(_wgslsmith_f_op_f32(var_0.b + var_0.b), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-847f - var_0.b) * _wgslsmith_div_f32(494f, 853f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-538f - var_0.b))), _wgslsmith_f_op_f32(abs(var_0.b)), false)), var_0.b));
}

