struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

var<private> global1: f32;

var<private> global2: i32;

var<private> global3: array<vec3<i32>, 7>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    var var_0 = u_input.a;
    var var_1 = arg_1.b;
    global3 = array<vec3<i32>, 7>();
    let var_2 = (u_input.a ^ ~(-u_input.a)) << (abs(firstTrailingBit(arg_0.d.a)) % vec4<u32>(32u));
    var_1 = arg_0.d;
    return any(select(arg_0.d.c, arg_1.b.c, arg_0.d.c.x));
}

fn func_2(arg_0: vec3<f32>, arg_1: u32) -> bool {
    var var_0 = ~arg_1;
    let var_1 = Struct_1(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(100501u, 0u, u_input.c.x, u_input.c.x)), vec4<u32>(u_input.c.x, arg_1 >> (u_input.c.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(57728u, 39712u, 0u, 75283u), vec4<u32>(1u, arg_1, u_input.c.x, 0u)), ~25132u), vec4<u32>(4294967295u, 32565u, 1u, 26828u) << (~vec4<u32>(82721u, 4613u, arg_1, u_input.c.x) % vec4<u32>(32u))) & ~select(~vec4<u32>(arg_1, 4294967295u, 90890u, u_input.c.x), vec4<u32>(arg_1, 597u, arg_1, arg_1), global0.x), 26118i, global0.xx);
    let var_2 = !var_1.c.x;
    let var_3 = 690f;
    var var_4 = abs(_wgslsmith_div_vec3_u32(~var_1.a.zxz, ~(vec3<u32>(arg_1, u_input.c.x, u_input.c.x) << (~var_1.a.xyy % vec3<u32>(32u)))));
    return func_3(Struct_2(1627f, var_1, var_1, var_1, var_1), Struct_2(var_3, var_1, Struct_1(~reverseBits(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 11238u)), ~var_1.b, global0.zz), var_1, var_1));
}

fn func_1(arg_0: f32) -> Struct_2 {
    global0 = !vec3<bool>(func_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0, arg_0, arg_0), vec3<f32>(arg_0, 1771f, arg_0))))), 7637u), u_input.c.x <= 53060u, global0.x);
    var var_0 = _wgslsmith_f_op_f32(max(-690f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -511f), 439f))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(f32(-1f) * -471f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0 * 1365f))))))));
    let var_1 = !(!(firstLeadingBit(u_input.a.x) != _wgslsmith_div_i32(u_input.a.x, 54489i))) || global0.x;
    global2 = ~(~(-2147483647i));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(trunc(345f)), arg_0, 375f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 * arg_0))) - -1000f) - -769f));
    return Struct_2(_wgslsmith_f_op_f32(select(-1587f, _wgslsmith_f_op_f32(step(var_2.x, 141f)), var_1 & (countOneBits(u_input.d) <= (i32(-1i) * -6543i)))), Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u >> (u_input.c.x % 32u), 20013u << (u_input.c.x % 32u), 54675u, u_input.c.x), ~vec4<u32>(34116u, u_input.c.x, u_input.c.x, u_input.c.x), ~(~vec4<u32>(32450u, u_input.c.x, 18072u, u_input.c.x))), -(~u_input.a.x), global0.zz), Struct_1(_wgslsmith_div_vec4_u32(~(~vec4<u32>(44061u, u_input.c.x, 1u, 1u)), ~vec4<u32>(540u, 7866u, u_input.c.x, 1u)), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.zy, u_input.a.wx) | (vec2<i32>(u_input.e, u_input.b) << (u_input.c % vec2<u32>(32u))), abs(u_input.a.zx)), !select(global0.yy, !vec2<bool>(global0.x, var_1), 5773u > u_input.c.x)), Struct_1(vec4<u32>(~u_input.c.x, u_input.c.x, u_input.c.x, ~(~u_input.c.x)), -63258i, !(!select(global0.xy, global0.zy, global0.xx))), Struct_1(vec4<u32>(~(u_input.c.x & u_input.c.x), abs(u_input.c.x), _wgslsmith_mult_u32(u_input.c.x, u_input.c.x), ~u_input.c.x), abs(-2147483647i), select(global0.yx, vec2<bool>(any(vec4<bool>(var_1, var_1, global0.x, global0.x)), global0.x), !select(global0.xz, global0.zy, true))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    global3 = array<vec3<i32>, 7>();
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-595f)))), arg_0.a)) * 240f);
    return -arg_1.d.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (all(select(vec3<bool>(false, global0.x, global0.x), !vec3<bool>(true, false, global0.x), true == global0.x)) != (u_input.c.x > 1u)) & (false != global0.x);
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(519f, 197f, true)) + _wgslsmith_f_op_f32(1000f + 204f)))), 503f));
    let var_2 = _wgslsmith_clamp_u32(u_input.c.x, firstTrailingBit(max(~0u, 1u)), ~1u);
    var var_3 = -vec4<i32>(_wgslsmith_sub_i32(func_4(func_1(-1970f), func_1(599f)), 1i ^ -u_input.d), _wgslsmith_clamp_i32(22923i, -46498i, u_input.d), u_input.d, _wgslsmith_mult_i32(firstTrailingBit(~u_input.a.x), u_input.a.x));
    var var_4 = func_1(142f);
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, abs(vec3<i32>(_wgslsmith_mod_i32(u_input.b << (1u % 32u), u_input.e), u_input.d, u_input.b)), ~(~(_wgslsmith_mult_vec2_i32(u_input.a.ww, vec2<i32>(2147483647i, var_4.c.b)) >> (~vec2<u32>(var_2, u_input.c.x) % vec2<u32>(32u)))));
}

