struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: i32,
    d: Struct_3,
    e: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: f32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0i, -12827i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: bool, arg_3: Struct_2) -> i32 {
    var var_0 = Struct_1(reverseBits(u_input.a.x), _wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_mod_i32(~2147483647i, arg_3.b.b), ~21803i), arg_3.a));
    let var_1 = select(~u_input.b.yzx, ~firstLeadingBit(vec3<u32>(~1u, _wgslsmith_mod_u32(33335u, 4294967295u), _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 95448u))), !vec3<bool>(false, any(select(vec4<bool>(false, true, true, arg_2), vec4<bool>(arg_3.c.x, true, true, true), arg_3.c.x)), any(select(vec3<bool>(arg_3.c.x, arg_3.c.x, false), vec3<bool>(false, true, true), false))));
    var_0 = Struct_1(2147483647i, u_input.a.x);
    return 1i;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: f32) -> u32 {
    var var_0 = Struct_5(Struct_3(select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false)), vec3<bool>(false, false, false), vec3<bool>(all(vec2<bool>(true, false)), true, true)), Struct_1(abs(_wgslsmith_mod_i32(arg_0.a, u_input.a.x)), 2147483647i), vec2<bool>(true, true), Struct_1(arg_1.x, ~func_3(vec3<f32>(arg_2, -306f, -1000f), vec3<i32>(-59920i, -1i, 0i), false, Struct_2(arg_1.x, arg_0, vec2<bool>(true, false))))), Struct_2(global0.b, Struct_1(min(17235i ^ global0.b, 0i), u_input.a.x), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2)) + 757f), -2145f)))), Struct_3(vec3<bool>(true, true, !(-3840i >= arg_0.b)), arg_0, select(vec2<bool>(true, true), vec2<bool>(true, true), true), arg_0));
    global0 = Struct_1(countOneBits(var_0.d.d.b & ~(i32(-1i) * -1i)), _wgslsmith_mod_i32(-1392i, -arg_0.a));
    global0 = Struct_1(1i, 2147483647i);
    var var_1 = ~_wgslsmith_div_u32(u_input.b.x, _wgslsmith_add_u32(_wgslsmith_clamp_u32(~u_input.b.x, _wgslsmith_mult_u32(u_input.b.x, u_input.b.x), u_input.b.x), ~(~u_input.b.x)));
    var var_2 = firstTrailingBit(vec2<i32>(~_wgslsmith_dot_vec4_i32(u_input.a, _wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, -2147483647i, var_0.d.d.a, 22235i))), abs(global0.b)));
    return _wgslsmith_dot_vec4_u32(abs(_wgslsmith_mod_vec4_u32(u_input.b, u_input.b)), vec4<u32>(firstTrailingBit(~(~14209u)), countOneBits(u_input.b.x), u_input.b.x, _wgslsmith_add_u32(~(~u_input.b.x), _wgslsmith_clamp_u32(u_input.b.x << (u_input.b.x % 32u), 23678u, ~1u))));
}

fn func_2(arg_0: u32) -> i32 {
    let var_0 = _wgslsmith_dot_vec2_i32(u_input.a.xw, u_input.a.wy);
    var var_1 = func_4(Struct_1(countOneBits(_wgslsmith_dot_vec3_i32(-vec3<i32>(var_0, -1553i, -24128i), vec3<i32>(global0.b, 0i, 24709i))), reverseBits(func_3(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1944f, -497f, 110f))), _wgslsmith_mult_vec3_i32(u_input.a.yxx, u_input.a.yxx), all(vec3<bool>(true, true, false)), Struct_2(var_0, Struct_1(u_input.a.x, var_0), vec2<bool>(false, false))))), vec3<i32>(global0.a, -10715i, -1i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -421f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-318f + -939f))));
    return -14167i;
}

fn func_1(arg_0: vec2<i32>) -> f32 {
    global0 = Struct_1(11439i, global0.b);
    global0 = Struct_1(_wgslsmith_dot_vec3_i32(~vec3<i32>(func_2(45347u), countOneBits(global0.a), -u_input.a.x), vec3<i32>(28072i, func_2(u_input.b.x) >> (_wgslsmith_sub_u32(51199u, u_input.b.x) % 32u), 29988i)), i32(-1i) * -max(_wgslsmith_clamp_i32(30622i, global0.a, -5631i), ~global0.b));
    var var_0 = u_input.b.x;
    let var_1 = max(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 28232u), u_input.b.xy), select(~u_input.b.xz, _wgslsmith_mult_vec2_u32(u_input.b.yy, vec2<u32>(4294967295u, 0u)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)))), u_input.b.zw), firstLeadingBit(select(firstTrailingBit(u_input.b.zz), select(u_input.b.xy, select(vec2<u32>(u_input.b.x, 36786u), u_input.b.xw, false), true), vec2<bool>(true, true))));
    global0 = Struct_1(2147483647i, -min(max(abs(-1i), 2147483647i), min(arg_0.x, -3921i) & (i32(-1i) * -5906i)));
    return 180f;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> StorageBuffer {
    var var_0 = !(!(_wgslsmith_f_op_f32(-217f - _wgslsmith_f_op_f32(arg_0 + -1301f)) < _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_0, 607f), arg_0))));
    var_0 = select(!(!(u_input.b.x != 4294967295u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0 + 503f))) - _wgslsmith_f_op_f32(func_1(u_input.a.xy))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - 1000f) + _wgslsmith_f_op_f32(f32(-1f) * -1542f)) - arg_0), any(vec2<bool>(true, _wgslsmith_mult_u32(0u, 21738u) <= (22022u ^ u_input.b.x))));
    var var_1 = true;
    let var_2 = select(select(vec4<bool>(!any(vec3<bool>(false, true, true)), true, false, true), vec4<bool>(true, true, false, true), true), !vec4<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false))), arg_1.a >= 1i, false, _wgslsmith_f_op_f32(-1000f - arg_0) >= arg_0), select(select(vec4<bool>(true, true, true, true), vec4<bool>(select(true, true, false), any(vec4<bool>(true, false, true, false)), any(vec3<bool>(true, false, false)), all(vec3<bool>(false, true, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), true), true)), !(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false))), false));
    var var_3 = _wgslsmith_mult_vec4_u32(~(~(~vec4<u32>(u_input.b.x, 77961u, 4294967295u, 0u))), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 32021u, 4294967295u, 0u) ^ u_input.b, u_input.b));
    return StorageBuffer(~1u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x >> (1u % 32u), u_input.a.x, ~u_input.a.x, firstTrailingBit(-83578i)) >> (u_input.b % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(global0.b, -11826i, global0.b, global0.a)) >> (vec4<u32>(u_input.b.x >> (0u % 32u), 1u, 4294967295u, _wgslsmith_dot_vec2_u32(u_input.b.zx, vec2<u32>(4294967295u, 12216u))) % vec4<u32>(32u))), _wgslsmith_mult_i32(u_input.a.x, ~2147483647i) & ~_wgslsmith_clamp_i32(~global0.a, _wgslsmith_div_i32(global0.b, u_input.a.x), _wgslsmith_add_i32(-2147483647i, 33220i)));
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<i32>(u_input.a.x, u_input.a.x)))))))), Struct_1(1i, func_2(58620u)), Struct_1(~(~(-4654i)), -7490i));
}

