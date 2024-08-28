struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec4<u32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: bool;

var<private> global2: i32;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec4<f32>) -> vec3<bool> {
    let var_0 = !vec2<bool>(global0.x, false);
    var var_1 = Struct_1(1u, select(select(select(!vec3<bool>(global0.x, false, var_0.x), vec3<bool>(var_0.x, false, false), !vec3<bool>(var_0.x, false, true)), vec3<bool>(false, var_0.x, !var_0.x), var_0.x), select(vec3<bool>(false & var_0.x, all(var_0), false), select(select(vec3<bool>(true, true, global0.x), vec3<bool>(false, false, global0.x), false), vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, false, false)), !select(vec3<bool>(true, true, false), vec3<bool>(false, var_0.x, var_0.x), var_0.x)), !(!(!vec3<bool>(true, global0.x, global0.x)))), ~(~vec4<u32>(arg_1, arg_0, arg_1, arg_1)), ~(~arg_0), _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.x, arg_2.x, global0.x))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -312f))))));
    var var_2 = ~reverseBits(min((u_input.d << (vec2<u32>(arg_1, arg_0) % vec2<u32>(32u))) >> (var_1.c.ww % vec2<u32>(32u)), var_1.c.wy));
    global1 = var_0.x;
    var_1 = Struct_1(~_wgslsmith_mult_u32(max(arg_0, _wgslsmith_mult_u32(var_2.x, arg_0)), 1u), select(var_1.b, select(select(select(vec3<bool>(global0.x, true, var_0.x), var_1.b, var_1.b.x), !vec3<bool>(var_0.x, global0.x, false), true), vec3<bool>(true, global0.x, var_1.b.x), all(var_1.b)), !select(var_1.b, select(vec3<bool>(var_0.x, var_1.b.x, false), var_1.b, var_1.b), !vec3<bool>(false, var_0.x, var_1.b.x))), min(_wgslsmith_mod_vec4_u32(select(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.a, var_1.d, 0u, arg_1), var_1.c), vec4<u32>(4294967295u, 4294967295u, 43270u, 68907u), !vec4<bool>(global0.x, false, global0.x, true)), vec4<u32>(var_2.x, 13721u, arg_0, 4294967295u) >> (var_1.c % vec4<u32>(32u))), ~(var_1.c >> ((var_1.c & var_1.c) % vec4<u32>(32u)))), max(~firstLeadingBit(_wgslsmith_div_u32(4294967295u, 27482u)), 0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.e))))));
    return !(!(!var_1.b));
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = arg_1;
    global0 = !vec2<bool>(true, all(!vec4<bool>(false, global0.x, false, false)));
    var var_1 = u_input.a;
    var_1 = _wgslsmith_mod_vec2_u32(abs(vec2<u32>(46812u, var_1.x) ^ vec2<u32>(var_1.x, 0u)) | arg_1.c.xy, arg_1.c.yw) & u_input.d;
    var var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1899f + var_0.e) - arg_1.e), arg_1.e, arg_1.e, _wgslsmith_f_op_f32(701f - 2269f)))));
    return -abs(vec2<i32>(_wgslsmith_add_i32(reverseBits(u_input.b), u_input.b ^ u_input.b), -_wgslsmith_sub_i32(-60594i, u_input.b)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> i32 {
    global2 = -63824i;
    var var_0 = arg_1;
    var var_1 = reverseBits(func_4(false, Struct_1(39946u, select(func_3(arg_2, arg_1.d, vec4<f32>(arg_0.e, -1192f, -1000f, arg_1.e)), vec3<bool>(false, arg_1.b.x, var_0.b.x), arg_0.b.x), firstTrailingBit(var_0.c | var_0.c), 1u, arg_0.e)));
    let var_2 = !arg_0.b.xy;
    let var_3 = Struct_2(any(!(!(!vec4<bool>(arg_0.b.x, var_0.b.x, false, arg_0.b.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e, arg_1.e, var_0.e)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1262f), 452f, 496f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(773f, -1980f, var_0.e))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.e, 859f))))));
    return ~(~(~u_input.b)) ^ -_wgslsmith_add_i32(1i, ~firstTrailingBit(var_1.x));
}

fn func_1() -> Struct_2 {
    global0 = select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(global0.x, !(func_2(Struct_1(u_input.d.x, vec3<bool>(true, global0.x, true), vec4<u32>(64529u, u_input.a.x, u_input.e, 4294967295u), u_input.d.x, -962f), Struct_1(u_input.d.x, vec3<bool>(global0.x, false, global0.x), vec4<u32>(96501u, 43886u, u_input.a.x, u_input.e), 62655u, -1275f), u_input.c.x) < u_input.b)));
    let var_0 = ~u_input.e == 17077u;
    let var_1 = _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(~_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(u_input.c.yx, u_input.c.zy), vec2<u32>(4294967295u, u_input.c.x)), vec2<u32>(min(86052u, 64874u), u_input.e) | ~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, 50531u), vec2<u32>(4294967295u, u_input.a.x)), u_input.c.zz), ~vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, u_input.c.x), vec2<u32>(u_input.c.x, u_input.c.x)), 1u));
    global2 = -2147483647i;
    global1 = true;
    return Struct_2(false, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1161f, 1149f, 2111f), vec3<f32>(-696f, -1604f, -1151f)), _wgslsmith_div_vec3_f32(vec3<f32>(897f, -1132f, -512f), vec3<f32>(967f, -342f, -630f)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-1726f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-667f)))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1340f, 363f), vec2<f32>(1182f, 1909f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(548f, -805f))))));
}

fn func_5(arg_0: Struct_2) -> vec2<f32> {
    let var_0 = arg_0;
    var var_1 = vec3<bool>(arg_0.a, arg_0.a, false);
    let var_2 = Struct_1(4294967295u, vec3<bool>(any(func_3(1u, 1u, vec4<f32>(var_0.c.x, var_0.b.x, 305f, var_0.c.x))) & !arg_0.a, 657f < arg_0.b.x, func_1().a && !(var_1.x | var_1.x)), abs(_wgslsmith_div_vec4_u32(~countOneBits(vec4<u32>(1u, u_input.a.x, 0u, u_input.d.x)), (vec4<u32>(55484u, 4294967295u, 1u, u_input.e) | vec4<u32>(4294967295u, u_input.d.x, 49492u, 14301u)) ^ min(vec4<u32>(u_input.e, u_input.c.x, 35743u, u_input.e), vec4<u32>(u_input.e, 1u, 35052u, u_input.c.x)))), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(reverseBits(u_input.c & u_input.c), min(~vec3<u32>(u_input.d.x, u_input.c.x, 0u), max(vec3<u32>(1u, u_input.a.x, 1u), u_input.c))), ~0u), arg_0.c.x);
    var var_3 = var_0;
    var_3 = Struct_2(var_0.a, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2017f), 1808f, _wgslsmith_div_f32(-3313f, 1000f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1263f, -440f)), _wgslsmith_f_op_vec2_f32(select(var_0.c, vec2<f32>(-1653f, arg_0.c.x), false)), false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_0.b.zz, var_0.c))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-154f, var_0.b.x)))))));
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_3.b.zx, arg_0.b.yz))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -24800i;
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-503f, -168f, -313f), vec3<f32>(-1698f, 1145f, -1165f), global0.x)) * vec3<f32>(2418f, -785f, -975f)))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, 1f, 1f))))));
    let var_2 = Struct_2(!select(false, true, !global0.x) && !any(vec4<bool>(global0.x, false, false, false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.x, var_1.x, 1933f)))) * vec3<f32>(-222f, var_1.x, _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(abs(var_1.x))))), _wgslsmith_f_op_vec2_f32(func_5(func_1())));
    let var_3 = var_2.b.x;
    let var_4 = Struct_1(~(~u_input.d.x ^ 0u), select(!func_3(~121605u, u_input.a.x ^ 4294967295u, vec4<f32>(1000f, var_1.x, 706f, var_3)), !vec3<bool>(var_2.a & false, all(vec2<bool>(global0.x, true)), var_2.a || true), false), ~(~(~(~vec4<u32>(1u, u_input.a.x, u_input.a.x, 94909u)))), 50140u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.c.x)))));
    let var_5 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(~(-u_input.b) >> ((4294967295u | _wgslsmith_sub_u32(0u, var_4.d)) % 32u), -u_input.b), _wgslsmith_sub_i32(abs(u_input.b), _wgslsmith_mult_i32(35897i, ~u_input.b)));
    global0 = var_4.b.xz;
    let var_6 = select(_wgslsmith_mult_u32(0u, u_input.a.x), var_4.c.x, select((true && var_4.b.x) | var_2.a, any(var_4.b.xz), true)) != ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(14905u, var_4.a), reverseBits(5050u)), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1957f, -388f, var_2.b.x), var_1))))) - vec3<f32>(-532f, var_1.x, var_1.x)), _wgslsmith_f_op_f32(-var_3), 21553u, _wgslsmith_f_op_vec4_f32(vec4<f32>(145f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.c.x * var_3), _wgslsmith_f_op_f32(196f + 980f)), 1000f, func_1().c.x) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(ceil(138f)), _wgslsmith_f_op_f32(-1152f - var_3), -507f, _wgslsmith_f_op_f32(select(var_4.e, var_3, true)))))));
}

