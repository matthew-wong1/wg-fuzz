struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> vec4<f32> {
    let var_0 = Struct_1(countOneBits(arg_0.a), arg_0.c.xw, select(arg_0.c, select(select(vec4<bool>(false, false, false, true), arg_0.c, arg_0.c.x), arg_0.c, !arg_0.c), !select(true, arg_0.c.x, true)));
    global0 = array<Struct_2, 26>();
    var var_1 = vec4<bool>(arg_0.b.x, any(arg_0.c.xxz), ~27796u == u_input.b, !any(select(arg_0.b, select(vec2<bool>(arg_0.b.x, true), var_0.b, arg_0.b), !vec2<bool>(var_0.b.x, arg_0.b.x))));
    let var_2 = 30490u;
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(75450u, u_input.b, var_2, 3352u), vec4<u32>(4294967295u, u_input.b, 4294967295u, 4294967295u))), firstTrailingBit(select(_wgslsmith_mult_vec4_u32(vec4<u32>(var_2, var_2, 50800u, 0u), vec4<u32>(var_2, 4294967295u, var_2, 1u)), ~vec4<u32>(40155u, u_input.b, u_input.b, 1u), vec4<bool>(var_1.x, arg_0.c.x, true, false)))) ^ u_input.b, 26u)];
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 544f, -479f, -1254f), vec4<f32>(-143f, -588f, -1197f, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1032f, 851f, -1000f, -243f)), var_2 != var_2))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-264f, 101f, -250f, -524f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-822f, 1591f, -668f, 1102f))))))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>) -> f32 {
    global0 = array<Struct_2, 26>();
    global0 = array<Struct_2, 26>();
    var var_0 = Struct_2(Struct_1(arg_0.a, arg_0.b, select(arg_0.c, vec4<bool>(true, !arg_0.b.x, arg_0.c.x != true, false != arg_0.c.x), arg_0.b.x)));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1191f, -218f, 343f, 741f) * vec4<f32>(-539f, -1000f, -1300f, -1502f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(495f, 710f, -253f, -1927f) - vec4<f32>(1187f, -1938f, 1520f, -969f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1001f, 335f, -803f, 2542f), vec4<f32>(-322f, -126f, -342f, 1407f), false)))))), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(_wgslsmith_mult_i32(~arg_0.a, -1i), select(var_0.a.c.xx, vec2<bool>(var_0.a.c.x, arg_0.b.x), !var_0.a.c.x), var_0.a.c), select(u_input.a, firstTrailingBit(_wgslsmith_div_vec3_i32(u_input.a, u_input.a)), !select(vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.c.x), arg_0.c.yxy, vec3<bool>(true, false, var_0.a.b.x))))));
    let var_2 = Struct_2(Struct_1(u_input.a.x, var_0.a.b, !vec4<bool>(arg_0.c.x, false, arg_0.b.x | false, arg_1.x != arg_1.x)));
    return _wgslsmith_f_op_f32(f32(-1f) * -1055f);
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-1042f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-2350f - _wgslsmith_f_op_f32(sign(-1000f))), 267f, -804f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1878f)) * _wgslsmith_f_op_f32(f32(-1f) * -111f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_1(u_input.a.x, vec2<bool>(false, true), vec4<bool>(true, true, true, false)), u_input.a.zx)), -704f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-945f, 615f)), 167f, all(vec2<bool>(false, true)))), _wgslsmith_f_op_f32(-259f - _wgslsmith_f_op_vec4_f32(func_3(Struct_1(u_input.a.x, vec2<bool>(true, false), vec4<bool>(true, true, true, false)), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))).x))));
    let var_1 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -73532i, u_input.a.x), vec4<i32>(-23648i, u_input.a.x, -1i, 25142i)), -18747i) & -36531i, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 84142i), vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x) << (vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u)))), vec2<bool>(!(!all(vec2<bool>(true, true))), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, 507f > var_0.x, true), 1336f >= _wgslsmith_f_op_f32(step(-918f, 522f))));
    let var_2 = var_1.a;
    let var_3 = -820f;
    global0 = array<Struct_2, 26>();
    return global0[_wgslsmith_index_u32(firstLeadingBit(countOneBits(4294967295u)), 26u)];
}

fn func_4(arg_0: Struct_2) -> f32 {
    global0 = array<Struct_2, 26>();
    var var_0 = ((abs(2147483647i) > abs(arg_0.a.a)) & (_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a.x, 1i), u_input.a.x) < (u_input.a.x ^ u_input.a.x))) || true;
    var var_1 = abs(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.b, 1u), _wgslsmith_mod_u32(u_input.b, u_input.b)), vec2<u32>(~0u, min(0u, u_input.b))) | ~reverseBits(~vec2<u32>(u_input.b, u_input.b)));
    var var_2 = -16553i;
    let var_3 = Struct_2(func_1().a);
    return _wgslsmith_div_f32(-1186f, _wgslsmith_f_op_f32(-1689f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -499f) - _wgslsmith_f_op_f32(abs(-1744f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4(func_1())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(2532f, -708f)), _wgslsmith_f_op_f32(sign(294f)))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(424f, 206f))))))));
    var var_1 = func_1();
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(1000f)), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1090f, var_0))))) + vec3<f32>(var_0, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0)));
    let var_3 = -1i;
    let var_4 = select(u_input.a.xy, u_input.a.xx, var_1.a.c.xz) << (countOneBits((firstTrailingBit(vec2<u32>(u_input.b, u_input.b)) >> (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u))) | ~max(vec2<u32>(0u, 24819u), vec2<u32>(u_input.b, 7073u))) % vec2<u32>(32u));
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(Struct_1(var_1.a.a, var_1.a.c.wz, vec4<bool>(var_1.a.b.x, true, var_1.a.c.x, true)), vec2<i32>(8340i, u_input.a.x))))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1032f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(var_1.a, -vec3<i32>(1921i, -37997i, 24788i))).x) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * -716f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(668f, var_2.x) - -2032f))));
}

