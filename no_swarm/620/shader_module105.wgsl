struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<bool>,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 24> = array<vec2<i32>, 24>(vec2<i32>(-16221i, 23356i), vec2<i32>(0i, 32903i), vec2<i32>(i32(-2147483648), 15127i), vec2<i32>(-24957i, -12209i), vec2<i32>(-10465i, 38818i), vec2<i32>(2147483647i, 24269i), vec2<i32>(0i, 0i), vec2<i32>(-10654i, 70206i), vec2<i32>(1i, 0i), vec2<i32>(6647i, -25552i), vec2<i32>(0i, 6024i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-1i, -1i), vec2<i32>(-22252i, -43099i), vec2<i32>(19221i, 10782i), vec2<i32>(0i, 13111i), vec2<i32>(1i, 1i), vec2<i32>(2147483647i, -11245i), vec2<i32>(-1i, 1i), vec2<i32>(2147483647i, -16481i), vec2<i32>(26100i, -41863i), vec2<i32>(-22105i, 0i), vec2<i32>(-1823i, 0i), vec2<i32>(-52299i, -1i));

var<private> global1: vec3<i32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> bool {
    global0 = array<vec2<i32>, 24>();
    let var_0 = 1i;
    return select(false, select(!select(all(vec4<bool>(true, false, true, true)), true, true), true, true || !any(vec2<bool>(false, true))), true);
}

fn func_2() -> Struct_1 {
    var var_0 = !(!(!(_wgslsmith_f_op_f32(-296f * 146f) != _wgslsmith_f_op_f32(round(-1457f)))));
    let var_1 = Struct_1((true && any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)))) & (!func_3() & true), select(~(~reverseBits(0u)), 43596u, true | (879u == u_input.d)), select(vec2<bool>(any(vec3<bool>(false, true, true)), any(vec2<bool>(true, true))), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), true), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(283f, -498f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-905f, 328f)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1694f, 2490f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, 2153f)))))), abs(firstLeadingBit(u_input.c.zw ^ vec2<u32>(u_input.d, 0u))) >> (vec2<u32>(_wgslsmith_sub_u32(1u, abs(u_input.d)), abs(_wgslsmith_mod_u32(u_input.b, 1u))) % vec2<u32>(32u)));
    var var_2 = Struct_1(var_1.c.x, ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, 4294967295u, u_input.c.x, u_input.c.x) >> (u_input.c % vec4<u32>(32u)), select(vec4<u32>(1u, u_input.c.x, 27855u, 1u), u_input.c, var_1.a)), var_1.b | _wgslsmith_div_u32(var_1.b, var_1.e.x)), var_1.c, _wgslsmith_f_op_vec2_f32(-var_1.d), _wgslsmith_sub_vec2_u32(var_1.e, var_1.e));
    var var_3 = _wgslsmith_f_op_f32(-var_2.d.x);
    var var_4 = Struct_1(all(select(vec3<bool>(var_1.b == 4294967295u, var_2.e.x != u_input.b, func_3()), !select(vec3<bool>(var_1.a, var_1.a, true), vec3<bool>(var_2.a, var_2.c.x, true), vec3<bool>(var_1.a, true, var_1.c.x)), !vec3<bool>(var_1.a, var_1.a, var_1.c.x))), 0u, var_1.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.d - var_2.d) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.d.x, -154f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.d.x, 243f)))))), vec2<u32>(var_2.b & 4294967295u, ~4294967295u));
    return Struct_1(true, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b, var_2.e.x), vec2<u32>(u_input.d, var_4.b)), !select(var_1.c, var_4.c, select(vec2<bool>(true, true), var_1.c, !var_1.c.x)), vec2<f32>(766f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-299f, _wgslsmith_div_f32(var_1.d.x, var_2.d.x), true)), _wgslsmith_f_op_f32(ceil(938f)))), min(var_1.e, vec2<u32>(1u | max(30136u, var_4.e.x), ~1u)));
}

fn func_1() -> vec3<i32> {
    global0 = array<vec2<i32>, 24>();
    var var_0 = ~countOneBits(vec2<u32>(42304u, firstLeadingBit(4294967295u)));
    var var_1 = func_2();
    var var_2 = _wgslsmith_add_vec2_u32(func_2().e, ~_wgslsmith_mod_vec2_u32(vec2<u32>(32562u, u_input.d), var_1.e) ^ _wgslsmith_sub_vec2_u32(u_input.c.wz, vec2<u32>(16903u, _wgslsmith_mod_u32(17848u, var_0.x))));
    var var_3 = 0u;
    return vec3<i32>(-_wgslsmith_add_i32(countOneBits(global1.x), firstLeadingBit(global1.x) & 2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(-9315i), -51245i, -(-30918i >> (var_2.x % 32u)), reverseBits(-2147483647i)), -vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, -8003i), vec3<i32>(56258i, 48588i, 21548i)), global1.x, 4626i, -65263i)), -abs(0i) & ~reverseBits(u_input.a ^ 0i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 90285u;
    global0 = array<vec2<i32>, 24>();
    global1 = select(func_1(), vec3<i32>(global1.x, 2147483647i, 2147483647i), false);
    global0 = array<vec2<i32>, 24>();
    var var_1 = true;
    global1 = _wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(-1i, u_input.a, 1i)), _wgslsmith_clamp_vec3_i32(~(~countOneBits(vec3<i32>(global1.x, 83563i, -21050i))), firstLeadingBit(~vec3<i32>(2147483647i, 24i, 2576i)), max((vec3<i32>(u_input.a, -2147483647i, -43893i) | vec3<i32>(global1.x, global1.x, global1.x)) ^ (vec3<i32>(-1i, 2147483647i, u_input.a) & vec3<i32>(u_input.a, u_input.a, global1.x)), (vec3<i32>(-1i, u_input.a, u_input.a) << (u_input.c.xzz % vec3<u32>(32u))) << (u_input.c.zzz % vec3<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(global1.x), 1458f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1349f)))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-563f, 503f), _wgslsmith_f_op_f32(f32(-1f) * -549f))))));
}

