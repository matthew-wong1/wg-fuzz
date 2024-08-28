struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_2,
    d: vec2<f32>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
    c: vec4<bool>,
    d: Struct_2,
    e: Struct_3,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec4<i32>;

var<private> global2: bool;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    global0 = vec2<u32>(~(~abs(1u)), ~u_input.c.x);
    let var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(global1.x, firstLeadingBit(-2588i), u_input.e.x, i32(-1i) * -2147483647i), -(_wgslsmith_div_vec4_i32(select(vec4<i32>(global1.x, u_input.e.x, u_input.d.x, 32123i), vec4<i32>(26808i, u_input.d.x, -8068i, 2147483647i), vec4<bool>(false, false, false, true)), _wgslsmith_mod_vec4_i32(vec4<i32>(-69124i, -17845i, 35796i, u_input.d.x), vec4<i32>(u_input.d.x, -1i, -19409i, 0i))) & ~select(vec4<i32>(-1i, u_input.e.x, -10724i, 2147483647i), vec4<i32>(-13572i, 0i, u_input.e.x, global1.x), true)));
    let var_1 = u_input.a;
    let var_2 = _wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.b, _wgslsmith_mod_u32(~28112u, u_input.a.x)) >> ((~var_1.wwz ^ _wgslsmith_mod_vec3_u32(u_input.a.zyx, firstLeadingBit(u_input.a.yyw))) % vec3<u32>(32u)), select(firstLeadingBit(vec3<u32>(u_input.b, firstLeadingBit(0u), global0.x)), var_1.wzx, !vec3<bool>(var_0.x < 6832i, true, true)));
    global0 = var_2.xx;
    return true;
}

fn func_2() -> vec2<bool> {
    let var_0 = select(!vec3<bool>(any(vec3<bool>(true, true, true)), func_3(), any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), false))), select(select(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), vec3<bool>(true, any(vec2<bool>(true, false)), true), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true))), true), true);
    global0 = ~u_input.a.yx;
    var var_1 = Struct_1(!(!(!vec4<bool>(true, false, var_0.x, var_0.x))));
    let var_2 = 4294967295u;
    var var_3 = 101793u;
    return !(!select(var_1.a.yx, !(!var_0.yx), !(!var_0.x)));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: i32, arg_3: vec2<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-214f, arg_1, 2452f, -748f) * vec4<f32>(559f, 533f, 487f, 634f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1, -584f, arg_1, -1323f))), false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-arg_1), arg_1, arg_1), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1549f, -497f, -1092f, 311f) - vec4<f32>(-729f, arg_1, -1724f, arg_1))))))));
    let var_1 = var_0.wzy;
    return Struct_3(Struct_2(Struct_1(!vec4<bool>(true, false, arg_3.x, false))), ~select(u_input.a.xzx, u_input.a.zxx, (arg_3.x & arg_3.x) && !arg_3.x), Struct_2(Struct_1(vec4<bool>(global1.x == 2147483647i, any(vec4<bool>(true, arg_3.x, arg_3.x, false)), false, true))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(105f, -197f, arg_3.x))), _wgslsmith_f_op_f32(-var_1.x), true))), vec4<bool>(true, !(!arg_3.x) | any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(arg_3.x, false, arg_3.x))), !any(select(vec2<bool>(true, arg_3.x), arg_3, arg_3.x)), all(vec3<bool>(arg_3.x, true & arg_3.x, true))));
}

fn func_1(arg_0: u32) -> Struct_3 {
    var var_0 = 34251i;
    let var_1 = vec4<i32>(~0i, 2147483647i, 1i, countOneBits(global1.x));
    let var_2 = func_4(_wgslsmith_div_u32(u_input.b, u_input.a.x), 1000f, -var_1.x, select(select(!func_2(), vec2<bool>(true, false), all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), true))), vec2<bool>(true, true), select(vec2<bool>(true, true), func_2(), all(vec3<bool>(true, true, true)))));
    var_0 = _wgslsmith_clamp_i32(global1.x << (1u % 32u), countOneBits(max(u_input.d.x ^ u_input.e.x, 1i)) << (_wgslsmith_mod_u32(var_2.b.x, ~(global0.x << (1u % 32u))) % 32u), -1i);
    var var_3 = Struct_5(true);
    return Struct_3(var_2.c, ~min(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, var_2.b.x, var_2.b.x), vec3<u32>(2688u, u_input.c.x, global0.x)), func_4(2569u, var_2.d.x, u_input.e.x, var_2.a.a.a.zw).b), ~max(var_2.b, var_2.b)), Struct_2(var_2.a.a), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2.d.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2156f + var_2.d.x)))), var_2.d)), vec4<bool>(var_3.a, all(select(var_2.c.a.a.yzx, var_2.a.a.a.xyw, true)) | (var_2.b.x < ~arg_0), any(vec2<bool>(true, func_4(u_input.c.x, var_2.d.x, global1.x, vec2<bool>(true, false)).a.a.a.x)), !any(!var_2.a.a.a.yx)));
}

fn func_5(arg_0: Struct_3) -> vec2<u32> {
    let var_0 = arg_0.e.yx;
    var var_1 = !(!arg_0.c.a.a);
    var var_2 = Struct_5(true);
    var var_3 = Struct_2(Struct_1(vec4<bool>(true, func_1(global0.x).e.x, _wgslsmith_f_op_f32(-439f * arg_0.d.x) <= 559f, false)));
    var var_4 = func_4(64656u, _wgslsmith_f_op_f32(-arg_0.d.x), u_input.d.x, vec2<bool>(((var_3.a.a.x || arg_0.e.x) | select(arg_0.c.a.a.x, false, false)) && !all(arg_0.c.a.a.ywz), var_1.x)).a.a.a.wwy;
    return vec2<u32>(12881u, _wgslsmith_mod_u32(func_4((arg_0.b.x >> (4294967295u % 32u)) | 51698u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.d.x))), -6094i, !(!arg_0.c.a.a.zx)).b.x, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(u_input.b));
    let var_1 = func_4(_wgslsmith_mod_u32(global0.x, 34259u), 726f, u_input.d.x << (0u % 32u), vec2<bool>(!any(vec2<bool>(true, true)), true)).a.a;
    global2 = all(var_1.a);
    global0 = ~(~vec2<u32>(countOneBits(43698u), ~global0.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -383f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1536f - -1502f) - _wgslsmith_div_f32(-1000f, -1965f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1149f, -1000f, true)), _wgslsmith_div_f32(-2380f, -1293f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-242f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-857f, -533f, 1578f, -115f)) - vec4<f32>(1217f, -797f, 1902f, -2511f))), vec4<f32>(-515f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-123f, 372f, false)) - 1531f), 1070f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-529f, -577f))))))));
    var var_3 = var_1.a;
    var var_4 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(-1399f, countOneBits((global1.zw & u_input.e) << (_wgslsmith_sub_vec2_u32(u_input.c.yx, u_input.a.zw) % vec2<u32>(32u))) ^ -u_input.e);
}

