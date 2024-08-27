struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1219f, 857f, -1000f, -613f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1440f, 452f, -1293f, 154f) + vec4<f32>(1330f, 1144f, -283f, -797f)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, -1112f, -1000f, 1790f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1197f, 1000f, 245f, 1781f))))))), arg_0, _wgslsmith_clamp_i32(arg_0.x | ~(-arg_0.x), u_input.b, abs(~_wgslsmith_div_i32(arg_0.x, 0i))), -(-71156i >> (u_input.c.x % 32u)), vec3<bool>(true, true, true));
    var var_1 = var_0;
    var_1 = var_0;
    let var_2 = true;
    let var_3 = _wgslsmith_div_vec3_u32(u_input.c.xzw, _wgslsmith_mod_vec3_u32(select(select(firstTrailingBit(u_input.c.ywx), vec3<u32>(u_input.c.x, u_input.c.x, 1u), any(vec3<bool>(var_0.e.x, var_1.e.x, var_1.e.x))), vec3<u32>(0u << (0u % 32u), 0u, ~1u), !select(var_0.e, vec3<bool>(var_0.e.x, true, var_0.e.x), vec3<bool>(false, false, false))), _wgslsmith_clamp_vec3_u32(~u_input.c.zwz, u_input.c.xyy >> (~u_input.c.zyx % vec3<u32>(32u)), vec3<u32>(~9767u, 55410u, 4294967295u))));
    return var_1.a.x;
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1108f);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1447f)))) - _wgslsmith_f_op_f32(f32(-1f) * -1434f));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, -53625i), vec2<i32>(u_input.a, -15491i), vec2<i32>(u_input.b, u_input.a)))))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1264f, 112f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(142f * 342f) * -138f))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-329f, 1794f)), 104f, _wgslsmith_f_op_f32(min(-517f, 952f)), _wgslsmith_f_op_f32(max(-920f, -1442f)))), -select(min(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(u_input.a, u_input.b)), -vec2<i32>(1i, u_input.b), true), ~(~2147483647i), u_input.b, select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), true)));
    let var_2 = var_1.a;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_2.a), vec4<f32>(var_2.a.x, var_2.a.x, var_1.a.a.x, -678f), var_1.a.e.x & true)) + var_1.a.a), -vec2<i32>(_wgslsmith_mod_i32(u_input.b, -2707i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, 18775i), vec3<i32>(-31522i, 33347i, var_1.a.d))), var_1.a.d, 1i, select(select(vec3<bool>(true, var_2.e.x, true), var_1.a.e, all(vec4<bool>(false, true, var_1.a.e.x, var_1.a.e.x))), select(!var_2.e, vec3<bool>(true, false, var_2.e.x), var_2.e), vec3<bool>(var_2.a.x == 416f, var_1.a.e.x, !var_1.a.e.x))));
}

fn func_1() -> i32 {
    let var_0 = func_2();
    let var_1 = vec4<bool>(!var_0.a.e.x, true, !var_0.a.e.x, -(i32(-1i) * -u_input.b) > _wgslsmith_dot_vec4_i32(abs(-vec4<i32>(-23485i, u_input.a, 30718i, var_0.a.d)), vec4<i32>(-16090i, select(u_input.a, u_input.b, true), u_input.a ^ u_input.a, _wgslsmith_sub_i32(2147483647i, var_0.a.b.x))));
    var var_2 = vec2<bool>(true, var_0.a.d != 1i);
    var_2 = !vec2<bool>(!all(vec4<bool>(var_2.x, false, true, true)), !(!var_2.x));
    var var_3 = Struct_2(var_0.a);
    return var_0.a.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<u32>(~(~1u >> (u_input.c.x % 32u)), u_input.c.x);
    var var_1 = vec4<i32>(min(-1i, u_input.a), _wgslsmith_div_i32(-51466i, u_input.b), func_1(), firstLeadingBit(max(_wgslsmith_add_i32(-1i, 51004i), 5942i))) >> (reverseBits(reverseBits(max(u_input.c, u_input.c) ^ u_input.c)) % vec4<u32>(32u));
    var var_2 = 15512i;
    var var_3 = ~(~var_0.x);
    var_1 = vec4<i32>(~select(~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -40647i), var_1.zy), 24127i << (~var_0.x % 32u), func_2().a.e.x), u_input.a, i32(-1i) * -2147483647i, -(var_1.x & ~(-5091i)));
    var_1 = max(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-7290i, u_input.b, u_input.a, var_1.x), vec4<i32>(reverseBits(22608i), 1i, 0i, 21292i)), ~(-vec4<i32>(1i, 71447i, var_1.x, u_input.a) ^ select(vec4<i32>(u_input.a, 45045i, u_input.a, u_input.b), vec4<i32>(-26569i, 47444i, 0i, -2147483647i), true))), vec4<i32>(i32(-1i) * -1i, u_input.a, 0i, _wgslsmith_mult_i32(var_1.x, -_wgslsmith_mod_i32(u_input.a, 1i))));
    let var_4 = _wgslsmith_mult_vec2_i32(~func_2().a.b, _wgslsmith_mod_vec2_i32(~(var_1.wx >> (var_0 % vec2<u32>(32u))), var_1.xy) ^ -var_1.wy);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c & vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, u_input.c.x, u_input.c.x), select(u_input.c, vec4<u32>(0u, 4345u, 1u, var_0.x), true)), ~_wgslsmith_clamp_u32(4294967295u, var_0.x, u_input.c.x), _wgslsmith_mult_u32(u_input.c.x, u_input.c.x), u_input.c.x));
}

