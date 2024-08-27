struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: u32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 13> = array<vec2<u32>, 13>(vec2<u32>(64926u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(49142u, 0u), vec2<u32>(4294967295u, 18470u), vec2<u32>(0u, 7996u), vec2<u32>(51210u, 4294967295u), vec2<u32>(0u, 27289u), vec2<u32>(10292u, 5835u), vec2<u32>(0u, 54708u), vec2<u32>(1u, 0u), vec2<u32>(29520u, 4294967295u), vec2<u32>(15541u, 7780u), vec2<u32>(4294967295u, 0u));

var<private> global1: vec4<i32>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: vec4<i32>) -> f32 {
    global1 = firstTrailingBit(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(countOneBits(arg_3), select(arg_3 ^ arg_3, -vec4<i32>(arg_3.x, global1.x, -2147483647i, global1.x), arg_1.a.b.x)), arg_3));
    let var_0 = arg_1.d;
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, -703f) - arg_1.d.b);
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(arg_1.d.a)), arg_1.d.a, arg_0));
    var var_3 = vec3<f32>(-1577f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -871f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1207f, arg_1.d.b.x, arg_2.x))))), -516f);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(round(-2683f))))));
}

fn func_2(arg_0: Struct_4) -> u32 {
    global0 = array<vec2<u32>, 13>();
    global1 = vec4<i32>(~global1.x, global1.x, global1.x, _wgslsmith_dot_vec4_i32(max((vec4<i32>(1i, 2147483647i, -1i, u_input.e) << (vec4<u32>(54632u, 21157u, arg_0.b.x, arg_0.c.x) % vec4<u32>(32u))) << (~arg_0.b % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(-vec4<i32>(-36255i, u_input.c, 6028i, -71588i), vec4<i32>(u_input.c, global1.x, -1i, 5168i))), -(~vec4<i32>(global1.x, -13653i, global1.x, 1i)) << (u_input.d % vec4<u32>(32u))));
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1558f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2008f + arg_0.d.b.x))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(arg_0.d.b.x, arg_0, vec4<bool>(arg_0.a.b.x, arg_0.a.b.x, arg_0.a.b.x, arg_0.a.b.x), vec4<i32>(21417i, 561i, global1.x, u_input.e))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.a * arg_0.d.a)), all(arg_0.a.b))))));
    global1 = vec4<i32>(-1i) * -countOneBits(-vec4<i32>(1i, -14612i, global1.x, u_input.e));
    global1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 1i, _wgslsmith_mult_i32(global1.x, 2147483647i), global1.x & ~u_input.e) >> (vec4<u32>(u_input.d.x, 44952u >> (1u % 32u), reverseBits(24128u), ~_wgslsmith_dot_vec4_u32(u_input.d, u_input.d)) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(~(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, 6949i, global1.x, global1.x), vec4<i32>(2147483647i, 72933i, -1i, global1.x))), max(vec4<i32>(-9393i, _wgslsmith_clamp_i32(global1.x, u_input.e, global1.x), global1.x, _wgslsmith_dot_vec2_i32(global1.wx, vec2<i32>(u_input.c, global1.x))), vec4<i32>(u_input.c, abs(u_input.e), select(u_input.e, 0i, arg_0.a.b.x), -u_input.e))), vec4<i32>(-1i) * -(~(vec4<i32>(global1.x, u_input.e, 25775i, global1.x) >> (vec4<u32>(52429u, 4523u, 1u, 13457u) % vec4<u32>(32u)))));
    return firstTrailingBit(firstTrailingBit(arg_0.c.x));
}

fn func_4(arg_0: bool, arg_1: vec2<u32>, arg_2: bool) -> Struct_3 {
    global0 = array<vec2<u32>, 13>();
    let var_0 = select(vec3<bool>(!(!arg_2) && arg_2, arg_2, false), !select(select(!vec3<bool>(true, arg_0, arg_2), select(vec3<bool>(arg_2, arg_0, true), vec3<bool>(arg_0, true, arg_2), vec3<bool>(true, false, true)), true), select(!vec3<bool>(true, arg_2, arg_0), select(vec3<bool>(arg_2, false, false), vec3<bool>(arg_2, false, false), true), false && arg_2), select(!vec3<bool>(true, arg_0, false), select(vec3<bool>(arg_2, true, arg_0), vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_2, false, arg_2)), vec3<bool>(arg_0, true, arg_2))), vec3<bool>(true, any(select(vec3<bool>(false, arg_2, arg_2), vec3<bool>(arg_2, true, true), vec3<bool>(true, arg_2, arg_0))), !(!(!arg_0))));
    let var_1 = 4294967295u;
    let var_2 = any(select(select(vec4<bool>(-1i != global1.x, true, false, true), vec4<bool>(all(var_0.xz), true, !arg_0, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(arg_2, true && var_0.x, false, any(var_0)), true), vec4<bool>(all(select(vec4<bool>(var_0.x, arg_0, arg_2, true), vec4<bool>(var_0.x, true, var_0.x, arg_0), arg_2)), !(!var_0.x), !var_0.x, any(var_0.yx))));
    var var_3 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2034f + 1209f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(537f, 249f), vec2<f32>(-335f, -626f)))) * vec2<f32>(290f, 587f))), Struct_1(~global0[_wgslsmith_index_u32(1u, 13u)] | vec2<u32>(1u, ~1u), !var_0.zx, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 10824u, 35546u, u_input.b), u_input.d), vec2<u32>(arg_1.x, ~_wgslsmith_dot_vec3_u32(u_input.d.xzx, vec3<u32>(var_1, u_input.b, 28930u))), arg_1), Struct_1(global0[_wgslsmith_index_u32(arg_1.x, 13u)], var_0.xx, 1u << (_wgslsmith_div_u32(u_input.b, firstTrailingBit(96689u)) % 32u), u_input.d.yx, abs(reverseBits(max(global0[_wgslsmith_index_u32(var_1, 13u)], vec2<u32>(67911u, var_1))))), u_input.b);
    return Struct_3(Struct_2(var_3.a.b.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a.a, _wgslsmith_f_op_f32(-1160f + 470f)) - vec2<f32>(_wgslsmith_f_op_f32(-var_3.a.a), -831f))), var_3.c, var_3.b, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(~(~arg_1.x), var_1 & abs(var_1), u_input.b)));
}

fn func_1(arg_0: u32) -> Struct_3 {
    let var_0 = u_input.d.ww;
    return func_4(all(vec3<bool>(true, true, true)), _wgslsmith_mod_vec2_u32(vec2<u32>(~57638u, func_2(Struct_4(Struct_1(global0[_wgslsmith_index_u32(var_0.x, 13u)], vec2<bool>(true, false), arg_0, var_0, vec2<u32>(u_input.b, 34338u)), u_input.d, vec3<u32>(0u, 4294967295u, 20481u), Struct_2(-669f, vec2<f32>(-1284f, -1970f))))), select(vec2<u32>(36359u, arg_0), vec2<u32>(~u_input.d.x, _wgslsmith_sub_u32(u_input.a.x, arg_0)), true)), !(!any(vec4<bool>(true, false, false, false))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 13>();
    let var_0 = func_1(~u_input.b);
    global1 = _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(abs(-(~vec4<i32>(global1.x, global1.x, 1i, global1.x))), ~vec4<i32>(global1.x, u_input.e & global1.x, global1.x, 2440i ^ u_input.c)), reverseBits(vec4<i32>(countOneBits(global1.x), _wgslsmith_sub_i32(global1.x, u_input.e) << (98709u % 32u), u_input.e, ~0i)));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(556f, _wgslsmith_f_op_f32(-var_0.a.a), var_0.a.b.x) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-686f, 1313f, -309f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.a, -1058f, 1621f) + vec3<f32>(var_0.a.b.x, var_0.a.a, var_0.a.a))))), vec3<f32>(-189f, _wgslsmith_f_op_f32(trunc(2419f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-177f)) + var_0.a.b.x)), all(vec4<bool>(!var_0.b.b.x, true, any(func_4(false, vec2<u32>(4294967295u, u_input.a.x), true).b.b), true))));
    global1 = ~(-firstLeadingBit(~_wgslsmith_mult_vec4_i32(vec4<i32>(-19850i, global1.x, global1.x, global1.x), vec4<i32>(-8232i, global1.x, u_input.e, u_input.c))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.c, min(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(global1.xyw, vec3<i32>(-2147483647i, u_input.c, global1.x)), vec3<i32>(1i, global1.x, global1.x), _wgslsmith_div_vec3_i32(global1.ywy, global1.zxx)), global1.zyx), abs(min(vec3<i32>(1i, 65059i, u_input.c), vec3<i32>(u_input.c, u_input.c, -14169i)) << (_wgslsmith_div_vec3_u32(u_input.a, u_input.d.xzy) % vec3<u32>(32u)))), _wgslsmith_dot_vec4_u32(select(countOneBits(~u_input.d), ~min(u_input.d, u_input.d), vec4<bool>(var_0.b.b.x, true, var_0.b.b.x || false, var_0.c.b.x)), vec4<u32>(~_wgslsmith_mod_u32(var_0.b.d.x, u_input.b), _wgslsmith_mod_u32(func_4(var_0.b.b.x, u_input.d.ww, true).b.c, ~4294967295u), abs(u_input.b), _wgslsmith_mod_u32(~35703u, u_input.d.x))), u_input.e, u_input.e >> (u_input.d.x % 32u));
}

