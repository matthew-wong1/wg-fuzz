struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec4<f32>,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec2<f32>,
    d: vec2<bool>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32> = array<f32, 32>(-225f, 229f, -511f, 598f, 1000f, -1979f, -2283f, -709f, -1343f, 371f, 1068f, 1785f, -1696f, -413f, 1594f, -1000f, 1726f, 204f, 1870f, -143f, -366f, 157f, -1562f, 268f, -682f, 326f, 895f, -367f, 336f, 972f, 475f, -329f);

var<private> global1: f32;

var<private> global2: u32;

var<private> global3: array<vec3<u32>, 19>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> vec2<bool> {
    global3 = array<vec3<u32>, 19>();
    var var_0 = vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(reverseBits(firstTrailingBit(u_input.b)), min(vec4<u32>(u_input.c, u_input.a, u_input.a, 21777u), _wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(11818u, u_input.c, 12070u, 0u)))), select(~vec4<u32>(40544u, 40902u, u_input.c, u_input.a), select(vec4<u32>(12614u, 59482u, u_input.a, u_input.b.x), ~vec4<u32>(4467u, u_input.b.x, 1u, u_input.c), vec4<bool>(arg_2, arg_0, arg_2, arg_2)), select(vec4<bool>(true, true, true, true), !vec4<bool>(false, true, false, arg_0), all(vec4<bool>(arg_0, arg_2, arg_0, true))))), u_input.a);
    let var_1 = Struct_3(abs(~74615u), _wgslsmith_sub_i32(2147483647i, 0i), arg_1);
    let var_2 = vec2<bool>(true, all(!select(select(vec2<bool>(true, arg_2), vec2<bool>(false, false), vec2<bool>(arg_2, arg_2)), vec2<bool>(false, false), true)));
    var var_3 = ~u_input.b.ww;
    return select(!select(select(vec2<bool>(false, arg_0), var_2, all(var_2)), vec2<bool>(arg_1.c.x > global0[_wgslsmith_index_u32(var_1.a, 32u)], var_2.x | false), vec2<bool>(select(arg_2, var_2.x, arg_2), var_2.x)), var_2, true);
}

fn func_2(arg_0: vec3<i32>, arg_1: f32) -> Struct_3 {
    let var_0 = Struct_3(firstTrailingBit(~(~0u)), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(-36291i, -51130i, arg_0.x, arg_0.x), vec4<i32>(arg_0.x, 24787i, arg_0.x, 0i) | vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), -1i) | -_wgslsmith_add_i32(1i, _wgslsmith_mod_i32(arg_0.x, -1i)), Struct_1(~vec4<i32>(_wgslsmith_mod_i32(arg_0.x, -2147483647i), arg_0.x, i32(-1i) * -1i, max(arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2592f)) + arg_1), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 32u)], 199f, 114f, global0[_wgslsmith_index_u32(26678u, 32u)]), vec4<f32>(718f, 972f, -2100f, 625f)))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], 2036f, -577f, global0[_wgslsmith_index_u32(17781u, 32u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(508f, -2676f, global0[_wgslsmith_index_u32(u_input.a, 32u)], 461f) * vec4<f32>(-379f, arg_1, -1161f, -1262f)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, global0[_wgslsmith_index_u32(u_input.a, 32u)]) + vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], 602f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], -2227f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(2623f, -1413f) + vec2<f32>(1675f, global0[_wgslsmith_index_u32(u_input.a, 32u)]))))), vec4<f32>(-314f, _wgslsmith_f_op_f32(-arg_1), arg_1, arg_1)));
    let var_1 = var_0.c;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.c.b, 871f, true)) - 463f));
    var var_2 = Struct_2(var_1, -(vec3<i32>(-1i) * -vec3<i32>(-30207i, var_0.c.a.x, var_0.b)), var_1, any(!func_3(true, var_0.c, true)), countOneBits(-(var_1.a.x << (~u_input.c % 32u))));
    global2 = _wgslsmith_sub_u32(~select(~0u, 4294967295u, all(vec2<bool>(var_2.d, false))), firstLeadingBit(max(firstTrailingBit(4707u), 4294967295u))) << (39115u % 32u);
    return var_0;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>) -> Struct_2 {
    var var_0 = select(arg_1, select(select(select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), select(vec3<bool>(arg_1.x, arg_1.x, true), arg_1, arg_1), vec3<bool>(arg_1.x, arg_1.x, true)), !vec3<bool>(arg_1.x, true, arg_1.x), !(!arg_1)), select(arg_1, vec3<bool>(arg_1.x, arg_1.x, arg_0.a >= 1u), !arg_1.x), arg_1), false && (_wgslsmith_f_op_f32(max(func_2(arg_0.c.a.xyz, global0[_wgslsmith_index_u32(arg_0.a, 32u)]).c.e.x, _wgslsmith_f_op_f32(min(-705f, arg_0.c.e.x)))) > arg_0.c.e.x));
    var var_1 = (arg_1.x || arg_1.x) || !(_wgslsmith_f_op_f32(step(-391f, global0[_wgslsmith_index_u32(u_input.c, 32u)])) > _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(~4294967295u, 32u)], _wgslsmith_f_op_f32(arg_0.c.d.x * arg_0.c.d.x))));
    let var_2 = Struct_4(Struct_2(arg_0.c, firstLeadingBit(arg_0.c.a.zyx), arg_0.c, arg_1.x, -2147483647i), ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(arg_0.a ^ 1u, 1u, 21316u), 41105u), arg_0.c.d, !vec2<bool>(select(true | arg_1.x, false, false), true), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(arg_0.c.e, arg_0.c.e)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(765f, global0[_wgslsmith_index_u32(arg_0.a, 32u)], 1000f, -803f) + arg_0.c.e)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(arg_0.c.e)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.e.x, global0[_wgslsmith_index_u32(602u, 32u)], arg_0.c.c.x, 1000f)))))));
    var var_3 = var_2.a.a.a.yx & firstTrailingBit(select(_wgslsmith_clamp_vec2_i32(-var_2.a.b.yz, var_2.a.c.a.zx, _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 42714i), vec2<i32>(var_2.a.e, var_2.a.b.x))), min(-var_2.a.c.a.xz, arg_0.c.a.zw), select(vec2<bool>(var_0.x, var_0.x), select(var_2.d, arg_1.yz, true), vec2<bool>(true, true))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.e.x) + arg_0.c.e.x));
    return Struct_2(arg_0.c, arg_0.c.a.xzz, Struct_1(arg_0.c.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-600f, var_4, var_2.a.d)))), arg_0.c.c.x), _wgslsmith_div_vec4_f32(func_2(-arg_0.c.a.zwy, _wgslsmith_f_op_f32(f32(-1f) * -700f)).c.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_2.a.c.e, vec4<f32>(-433f, -1342f, 1280f, global0[_wgslsmith_index_u32(30756u, 32u)]), arg_1.x)), _wgslsmith_f_op_vec4_f32(trunc(arg_0.c.e)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4, -1225f)) * _wgslsmith_f_op_vec2_f32(floor(var_2.c))) + var_2.a.c.e.yz), vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 32u)] - global0[_wgslsmith_index_u32(1u, 32u)]), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(arg_0.a), ~69256u), 32u)])), true, abs(_wgslsmith_mult_i32(func_2(arg_0.c.a.wwz ^ var_2.a.a.a.xxx, -377f).b, arg_0.b)));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_4(func_4(func_2(vec3<i32>(_wgslsmith_clamp_i32(30449i, -41009i, 26193i), -39796i, select(-72156i, -2147483647i, false)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 32u)])), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), true)), _wgslsmith_mult_u32(~(~_wgslsmith_dot_vec2_u32(u_input.b.ww, vec2<u32>(u_input.a, u_input.c))), u_input.c), _wgslsmith_f_op_vec2_f32(func_4(func_2(-vec3<i32>(-19910i, 1i, -1i), global0[_wgslsmith_index_u32(47397u, 32u)]), vec3<bool>(true, true, true)).a.d * vec2<f32>(-1782f, _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(select(u_input.c, u_input.a, true), 32u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(42870u, 32u)] + global0[_wgslsmith_index_u32(u_input.a, 32u)]), true)))), select(!(!func_3(false, Struct_1(vec4<i32>(-9055i, 2147483647i, 0i, 0i), 134f, vec4<f32>(920f, global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(u_input.a, 32u)], 129f), vec2<f32>(global0[_wgslsmith_index_u32(u_input.c, 32u)], 495f), vec4<f32>(global0[_wgslsmith_index_u32(1u, 32u)], -1113f, 1293f, global0[_wgslsmith_index_u32(u_input.a, 32u)])), false)), vec2<bool>(true, select(any(vec3<bool>(false, false, false)), true, true)), vec2<bool>(true, true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.c, 32u)], -287f, global0[_wgslsmith_index_u32(u_input.a, 32u)], global0[_wgslsmith_index_u32(43598u, 32u)]))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(618f, global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)]))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(1u, 32u)], -912f, -1060f, global0[_wgslsmith_index_u32(u_input.c, 32u)]) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global0[_wgslsmith_index_u32(u_input.a, 32u)], -602f, global0[_wgslsmith_index_u32(u_input.c, 32u)]) - vec4<f32>(1000f, -2309f, -819f, global0[_wgslsmith_index_u32(4294967295u, 32u)])))))));
    var var_1 = var_0.d.x;
    var var_2 = Struct_2(var_0.a.a, ~vec3<i32>(var_0.a.b.x, -56125i, ~1i), func_2(vec3<i32>(-3143i, i32(-1i) * -2147483647i, 16438i), -905f).c, var_0.d.x, _wgslsmith_dot_vec3_i32(reverseBits(var_0.a.c.a.xyz), _wgslsmith_clamp_vec3_i32(abs(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.a.c.a.x, 7274i, 0i), vec3<i32>(-39891i, -21199i, -2147483647i))), vec3<i32>(var_0.a.c.a.x, var_0.a.b.x, -2147483647i), abs(var_0.a.a.a.xzy))));
    var_2 = func_4(Struct_3(max(_wgslsmith_dot_vec3_u32(u_input.b.zxz, vec3<u32>(var_0.b, u_input.c, 188u)), max(u_input.c, u_input.a)) << (4294967295u % 32u), var_0.a.c.a.x & 0i, Struct_1(firstLeadingBit(-var_0.a.c.a), _wgslsmith_f_op_f32(var_2.c.b + _wgslsmith_div_f32(var_2.c.b, global0[_wgslsmith_index_u32(88329u, 32u)])), _wgslsmith_f_op_vec4_f32(-var_2.c.c), vec2<f32>(_wgslsmith_f_op_f32(138f - 988f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.b, 32u)] + 1146f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.a.c.x, -271f, var_0.e.x, -580f))) - _wgslsmith_f_op_vec4_f32(exp2(var_2.c.c))))), select(select(select(vec3<bool>(var_2.d, var_2.d, false), select(vec3<bool>(true, var_0.d.x, true), vec3<bool>(var_2.d, false, true), vec3<bool>(false, true, var_0.d.x)), all(vec4<bool>(false, var_0.d.x, true, var_0.a.d))), select(!vec3<bool>(var_0.a.d, var_0.d.x, var_0.d.x), vec3<bool>(var_0.a.d, var_2.d, true), func_4(Struct_3(var_0.b, 43794i, var_0.a.c), vec3<bool>(true, var_2.d, var_0.d.x)).d), !(!vec3<bool>(var_0.a.d, true, false))), !select(!vec3<bool>(false, var_0.a.d, var_0.a.d), vec3<bool>(var_0.a.d, true, var_2.d), true && var_2.d), !(!(!vec3<bool>(false, var_2.d, false)))));
    global1 = var_2.c.b;
    return Struct_1(var_2.c.a, var_2.a.e.x, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.e.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(962f)) * var_0.a.c.b), global0[_wgslsmith_index_u32(var_0.b | var_0.b, 32u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-262f + global0[_wgslsmith_index_u32(var_0.b, 32u)]))), vec4<f32>(_wgslsmith_f_op_f32(-var_2.c.e.x), 638f, 1390f, var_0.a.c.d.x)), _wgslsmith_f_op_vec2_f32(trunc(var_2.c.c.zx)), vec4<f32>(166f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.c.e.x + _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(var_0.b, 32u)], var_0.e.x, false))) + 890f), _wgslsmith_f_op_f32(-var_2.c.b), _wgslsmith_f_op_f32(select(var_2.c.d.x, global0[_wgslsmith_index_u32(countOneBits(var_0.b), 32u)], all(vec2<bool>(true, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(-1i, abs(11706i), 12527i);
    let var_1 = func_1();
    let var_2 = ~(~_wgslsmith_mod_vec2_u32(~(~u_input.b.wx), ~(vec2<u32>(u_input.c, u_input.b.x) ^ vec2<u32>(17064u, 54091u))));
    let var_3 = Struct_2(func_2(-var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-998f * func_2(vec3<i32>(-1i, 0i, var_1.a.x), var_1.e.x).c.e.x))).c, max(var_1.a.xyx, _wgslsmith_add_vec3_i32(var_1.a.wyw, vec3<i32>(1i, -22968i, 0i) & var_1.a.wyy)), var_1, false && !any(vec3<bool>(true, true, true)), var_0.x);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c.c.x)));
    let var_4 = _wgslsmith_f_op_f32(abs(521f));
    global0 = array<f32, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.wzw, _wgslsmith_f_op_vec2_f32(func_1().d - vec2<f32>(-380f, var_1.e.x)), _wgslsmith_clamp_u32(4294967295u, _wgslsmith_mod_u32((var_2.x >> (u_input.b.x % 32u)) ^ 23105u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(global3[_wgslsmith_index_u32(u_input.a, 19u)], vec3<u32>(var_2.x, 1u, 1u)), func_2(vec3<i32>(var_3.a.a.x, -24213i, 1281i), 279f).a)), var_2.x));
}

