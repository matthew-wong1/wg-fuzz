struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: i32,
    d: vec2<f32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(-5758i, vec3<u32>(39510u, 31138u, 4294967295u), vec4<bool>(false, true, false, true)), Struct_2(-19308i, vec3<u32>(38031u, 25903u, 74190u), vec4<bool>(true, true, true, true)), Struct_2(-26461i, vec3<u32>(1u, 1u, 29479u), vec4<bool>(false, true, false, true)), Struct_2(-65666i, vec3<u32>(4294967295u, 1u, 65964u), vec4<bool>(true, false, false, false)), Struct_2(-5119i, vec3<u32>(4294967295u, 1u, 1u), vec4<bool>(true, false, false, true)), Struct_2(23988i, vec3<u32>(4294967295u, 4294967295u, 46197u), vec4<bool>(true, false, false, true)), Struct_2(i32(-2147483648), vec3<u32>(74991u, 4294967295u, 4661u), vec4<bool>(false, true, true, true)), Struct_2(-1i, vec3<u32>(1u, 36554u, 93344u), vec4<bool>(false, true, false, true)), Struct_2(3364i, vec3<u32>(1u, 1u, 0u), vec4<bool>(false, false, false, false)), Struct_2(-1i, vec3<u32>(0u, 0u, 4294967295u), vec4<bool>(false, true, true, false)), Struct_2(0i, vec3<u32>(21282u, 1u, 0u), vec4<bool>(false, false, false, false)), Struct_2(8431i, vec3<u32>(1u, 1u, 4294967295u), vec4<bool>(false, true, false, true)), Struct_2(2147483647i, vec3<u32>(4294967295u, 28500u, 0u), vec4<bool>(true, true, true, true)), Struct_2(13698i, vec3<u32>(102561u, 52084u, 49085u), vec4<bool>(true, true, true, false)), Struct_2(1i, vec3<u32>(6448u, 66017u, 61992u), vec4<bool>(false, true, false, true)), Struct_2(35918i, vec3<u32>(10159u, 0u, 0u), vec4<bool>(true, false, false, true)), Struct_2(i32(-2147483648), vec3<u32>(22504u, 51560u, 17969u), vec4<bool>(true, false, false, true)), Struct_2(-22470i, vec3<u32>(15161u, 0u, 0u), vec4<bool>(false, false, false, false)), Struct_2(1i, vec3<u32>(0u, 51109u, 29613u), vec4<bool>(false, true, true, true)), Struct_2(-1i, vec3<u32>(15735u, 4294967295u, 4294967295u), vec4<bool>(false, true, true, false)), Struct_2(-33204i, vec3<u32>(16102u, 46932u, 4294967295u), vec4<bool>(true, false, false, true)), Struct_2(-7732i, vec3<u32>(59657u, 1u, 1u), vec4<bool>(true, true, false, false)), Struct_2(25633i, vec3<u32>(5900u, 61116u, 17893u), vec4<bool>(false, false, false, false)), Struct_2(1i, vec3<u32>(47533u, 20314u, 298u), vec4<bool>(true, true, false, false)), Struct_2(-23264i, vec3<u32>(4294967295u, 56991u, 4294967295u), vec4<bool>(true, false, true, false)), Struct_2(-45049i, vec3<u32>(0u, 4294967295u, 1u), vec4<bool>(false, false, false, true)));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32) -> f32 {
    global0 = Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(99485i, global0.a.x, u_input.c.x), ~vec3<i32>(-40276i, 1i, -1i)), -_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, global0.a.x, -545i), vec3<i32>(31784i, global0.a.x, 1i))), min(u_input.e, reverseBits(arg_0) & _wgslsmith_div_i32(-4851i, arg_0))), all(vec3<bool>(!all(vec3<bool>(false, global0.b, global0.b)), _wgslsmith_dot_vec2_i32(global0.a, global0.a) != arg_0, global0.e.x)), 14059i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d.x, global0.d.x))))), !global0.e);
    let var_0 = global0.d;
    var var_1 = ~4643u;
    var var_2 = countOneBits(u_input.e);
    global0 = Struct_1(max(vec2<i32>(u_input.c.x, -49668i), vec2<i32>(-33350i, -2147483647i)), global0.b, ~((i32(-1i) * -32073i) | global0.c), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-718f, var_0.x), vec2<f32>(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_div_f32(1000f, var_0.x))))), select(vec2<bool>(global0.e.x, any(vec2<bool>(global0.e.x, false))), global0.e, vec2<bool>(all(!vec3<bool>(global0.e.x, global0.e.x, true)), all(vec4<bool>(global0.b, global0.b, global0.b, global0.e.x)) | (global0.d.x > global0.d.x))));
    return _wgslsmith_f_op_f32(abs(global0.d.x));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> i32 {
    var var_0 = ~(~vec3<i32>(2147483647i, _wgslsmith_sub_i32(arg_1 | global0.c, -arg_1), min(-13164i, arg_1) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_2.c, 0i, global0.c), vec4<i32>(6291i, 43774i, arg_1, -2147483647i))));
    global1 = array<Struct_2, 26>();
    var var_1 = _wgslsmith_f_op_f32(func_3(u_input.e));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-330f)) + _wgslsmith_f_op_f32(-global0.d.x)), 1868f);
    var_1 = arg_2.d.x;
    return 0i & (_wgslsmith_add_i32(_wgslsmith_sub_i32(14146i, arg_2.c) ^ -var_0.x, _wgslsmith_clamp_i32(~(-1i), abs(arg_2.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-530i, 44798i, arg_2.c, u_input.e), vec4<i32>(global0.a.x, 1i, 36573i, 6861i)))) >> (u_input.d.x % 32u));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<u32>, arg_3: Struct_1) -> vec4<bool> {
    global0 = arg_0;
    let var_0 = Struct_1(vec2<i32>(-15355i, u_input.e), _wgslsmith_div_u32(~1u, 4294967295u) <= (1u << (select(abs(u_input.d.x), 14411u, !global0.b) % 32u)), _wgslsmith_dot_vec2_i32(~arg_3.a, vec2<i32>(_wgslsmith_mult_i32(arg_3.a.x, ~(-30469i)), countOneBits(1i))), vec2<f32>(-113f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(857f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1439f)))), !select(select(select(vec2<bool>(arg_1.x, false), arg_1.xx, arg_1.x), select(vec2<bool>(true, true), arg_3.e, true), global0.e), !select(vec2<bool>(false, false), global0.e, true), arg_2.x < (17567u | arg_2.x)));
    let var_1 = vec3<i32>(firstTrailingBit(abs(min(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(76030i, global0.a.x, -22184i), vec3<i32>(-2147483647i, u_input.b, arg_3.c))))), ~_wgslsmith_add_i32(_wgslsmith_sub_i32(var_0.c >> (0u % 32u), max(-7285i, arg_0.c)), -func_2(global0.d.x, 0i, Struct_1(u_input.c, false, 1i, vec2<f32>(-1000f, arg_3.d.x), arg_3.e))), 1888i);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(global0.d.x * _wgslsmith_div_f32(937f, _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(sign(496f)), 1141f);
    var var_3 = Struct_1(~vec2<i32>(_wgslsmith_div_i32(33414i, 17890i), _wgslsmith_add_i32(global0.c, -2147483647i)) >> ((vec2<u32>(_wgslsmith_add_u32(arg_2.x, u_input.d.x), ~1u) ^ reverseBits(arg_2.zx)) % vec2<u32>(32u)), any(vec2<bool>(!arg_3.e.x, arg_2.x <= countOneBits(36366u))), firstLeadingBit(-(var_1.x << (u_input.d.x % 32u))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.d.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d.x - _wgslsmith_f_op_f32(-251f * global0.d.x)) + _wgslsmith_f_op_f32(global0.d.x + 1f))), select(arg_3.e, select(arg_0.e, vec2<bool>(arg_0.b, !arg_1.x), !all(vec3<bool>(var_0.e.x, false, true))), !select(arg_1.yy, vec2<bool>(var_0.e.x, arg_3.e.x), any(var_0.e))));
    return vec4<bool>(!select(var_3.d.x >= _wgslsmith_f_op_f32(-var_2.x), u_input.d.x > u_input.d.x, true), var_0.e.x, all(select(select(vec4<bool>(false, var_3.e.x, var_3.e.x, var_3.b), vec4<bool>(arg_0.e.x, arg_0.e.x, var_3.b, var_3.b), vec4<bool>(true, arg_3.b, arg_3.b, false)), vec4<bool>(true, var_3.a.x >= var_0.c, any(vec3<bool>(true, true, true)), false), !select(vec4<bool>(arg_3.e.x, false, false, arg_1.x), vec4<bool>(false, arg_0.b, var_0.e.x, arg_3.e.x), true))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-894f, var_3.d.x)))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(888f * 1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.d.x * -1397f))));
}

fn func_4(arg_0: vec4<bool>) -> bool {
    var var_0 = ~countOneBits(u_input.c);
    var var_1 = Struct_1(abs(vec2<i32>(~var_0.x, -77268i) << (u_input.d.zx % vec2<u32>(32u))), arg_0.x, 1i, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(global0.d)))), vec2<bool>(arg_0.x, !arg_0.x));
    var var_2 = global1[_wgslsmith_index_u32(u_input.d.x, 26u)];
    global0 = Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(abs(1i), var_2.a, ~var_0.x), select(u_input.e ^ var_1.c, 17372i, any(var_1.e))), select(abs(-vec2<i32>(global0.c, var_0.x)), vec2<i32>(~var_0.x, 28564i), true)), all(vec2<bool>(!(arg_0.x && var_2.c.x), !var_2.c.x & global0.b)), i32(-1i) * -_wgslsmith_dot_vec4_i32(max(vec4<i32>(15460i, global0.a.x, -5843i, global0.a.x), vec4<i32>(2147483647i, var_1.a.x, 30689i, -2147483647i)), vec4<i32>(-1i, 12887i, -61385i, -2147483647i)), _wgslsmith_f_op_vec2_f32(var_1.d * _wgslsmith_f_op_vec2_f32(ceil(var_1.d))), select(select(select(vec2<bool>(false, false), !var_2.c.zw, vec2<bool>(true, false)), arg_0.wx, any(vec3<bool>(false, var_2.c.x, false))), vec2<bool>(true | var_1.b, true), func_1(Struct_1(vec2<i32>(0i, var_2.a), false, var_2.a, global0.d, vec2<bool>(var_1.e.x, true)), vec3<bool>(global0.b, true, true), vec3<u32>(var_2.b.x, u_input.d.x, 37990u), Struct_1(var_1.a, var_2.c.x, var_1.a.x, global0.d, var_1.e)).x == (true || any(var_1.e))));
    return func_1(Struct_1(~(-vec2<i32>(-52607i, var_2.a)), arg_0.x, -global0.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.d.x, -581f), var_1.d) - global0.d)), select(var_1.e, vec2<bool>(true, true), any(select(vec2<bool>(false, false), var_2.c.wz, global0.e.x)))), select(var_2.c.zzw, select(vec3<bool>(var_1.d.x > 256f, true, global0.e.x), !(!var_2.c.yzz), select(global0.e.x && false, global0.b, var_1.e.x)), vec3<bool>(true, global0.e.x, true)), vec3<u32>(~var_2.b.x, abs(max(1u ^ u_input.d.x, var_2.b.x & 1u)), _wgslsmith_add_u32(_wgslsmith_clamp_u32(var_2.b.x, 4294967295u, 46461u), _wgslsmith_sub_u32(68084u, _wgslsmith_dot_vec3_u32(u_input.d, var_2.b)))), Struct_1(u_input.c, true, -(~(-2147483647i)), var_1.d, func_1(Struct_1(-vec2<i32>(1i, -27757i), global0.b, -2147483647i, _wgslsmith_f_op_vec2_f32(global0.d - vec2<f32>(271f, global0.d.x)), var_2.c.wz), func_1(Struct_1(vec2<i32>(var_2.a, -1i), global0.e.x, var_0.x, vec2<f32>(452f, var_1.d.x), global0.e), arg_0.ywy, var_2.b >> (vec3<u32>(u_input.d.x, var_2.b.x, 4294967295u) % vec3<u32>(32u)), Struct_1(global0.a, global0.b, var_1.a.x, vec2<f32>(-438f, global0.d.x), vec2<bool>(false, false))).ywz, u_input.d << (select(vec3<u32>(u_input.d.x, var_2.b.x, 12260u), vec3<u32>(4294967295u, 4294967295u, var_2.b.x), false) % vec3<u32>(32u)), Struct_1(u_input.c & u_input.c, true, ~(-2147483647i), _wgslsmith_f_op_vec2_f32(vec2<f32>(981f, var_1.d.x) + var_1.d), select(vec2<bool>(false, false), var_2.c.zy, vec2<bool>(var_1.e.x, true)))).yz)).x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(select(select(vec4<bool>(true, global0.b, all(global0.e), false), select(func_1(Struct_1(u_input.c, true, -43301i, global0.d, vec2<bool>(true, false)), vec3<bool>(true, global0.b, global0.e.x), u_input.d, Struct_1(u_input.c, global0.b, global0.a.x, vec2<f32>(-1436f, global0.d.x), global0.e)), select(vec4<bool>(global0.e.x, global0.e.x, false, false), vec4<bool>(true, true, true, false), global0.e.x), true), select(!vec4<bool>(global0.b, false, true, global0.b), select(vec4<bool>(global0.b, global0.b, false, true), vec4<bool>(true, global0.b, global0.e.x, true), vec4<bool>(true, true, true, global0.e.x)), !vec4<bool>(true, global0.e.x, global0.b, false))), !(!vec4<bool>(global0.b, true, true, false)), !(!vec4<bool>(global0.e.x, global0.b, true, false))));
    let var_1 = u_input.d.x;
    var var_2 = firstLeadingBit(max(u_input.d ^ vec3<u32>(_wgslsmith_mod_u32(8217u, 1u), ~u_input.d.x, u_input.d.x), ~u_input.d));
    let var_3 = ~(vec3<i32>(-1i) * -(~_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, u_input.b, u_input.e), vec3<i32>(global0.a.x, 18289i, global0.c), vec3<i32>(42992i, global0.c, 0i))));
    var var_4 = vec2<i32>(global0.a.x, firstLeadingBit(u_input.c.x ^ 2147483647i));
    let var_5 = true;
    var_4 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(var_1), 1i << ((var_1 >> (countOneBits(_wgslsmith_div_u32(85550u, 28796u)) % 32u)) % 32u), vec3<i32>(firstTrailingBit(_wgslsmith_clamp_i32(firstTrailingBit(u_input.b), -67941i | global0.a.x, select(var_3.x, -22409i, true))), 0i, ~(_wgslsmith_sub_i32(var_4.x, var_3.x) & ~2147483647i)), countOneBits(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(var_2.x, var_2.x, var_2.x, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(36252u, 20318u, var_2.x, 1u), vec4<u32>(87223u, 49371u, 4294967295u, 1u))), ~vec4<u32>(14655u, 22863u, u_input.d.x, u_input.d.x) | vec4<u32>(0u, var_2.x, 4294967295u, 0u))), vec4<u32>(abs(reverseBits(4294967295u)) >> (0u % 32u), _wgslsmith_dot_vec3_u32(~min(vec3<u32>(u_input.d.x, 1u, u_input.d.x), u_input.d), vec3<u32>(firstLeadingBit(1u), ~4294967295u, u_input.d.x)), _wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(var_1, var_2.x, var_1, 1u)), abs(vec4<u32>(var_1, 42637u, 71768u, u_input.d.x))), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, 27141u), ~var_2.x, var_2.x), ~vec3<u32>(1u, 4294967295u, var_2.x))));
}

