struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec3<i32>) -> bool {
    let var_0 = Struct_3(Struct_2(~0u, vec2<bool>(true, true), Struct_1(~_wgslsmith_dot_vec2_i32(vec2<i32>(34953i, -1739i), vec2<i32>(-39664i, arg_1.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1584f)), _wgslsmith_f_op_f32(select(1912f, 1448f, false)))), vec2<bool>(true, true)), firstTrailingBit(u_input.a), Struct_1(_wgslsmith_clamp_i32(_wgslsmith_add_i32(2147483647i, arg_1.x), arg_0, arg_0), _wgslsmith_f_op_f32(_wgslsmith_div_f32(2183f, -1572f) - 503f), vec2<bool>(all(vec3<bool>(true, true, true)), true))), 0u);
    let var_1 = ~(~var_0.a.e.a);
    var var_2 = !(!vec4<bool>(true, any(vec4<bool>(var_0.a.e.c.x, true, false, var_0.a.e.c.x)), var_0.a.e.c.x, true));
    return !var_2.x;
}

fn func_2() -> Struct_2 {
    let var_0 = select(select(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), false)), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(func_3(-20096i, vec3<i32>(24306i, -2147483647i, 25327i)), true, false, true), vec4<bool>(any(vec4<bool>(false, false, true, true)), any(vec4<bool>(false, true, true, true)), true, any(vec3<bool>(false, true, false)))), select(vec4<bool>(false, true, false, any(vec2<bool>(false, true))), vec4<bool>(true, true, true, true), true)), vec4<bool>(true, true, true, true), !func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(40018i, 1i, 2147483647i, -1i), vec4<i32>(-3340i, -48427i, 1i, -48530i)) >> (abs(1u) % 32u), (vec3<i32>(1131i, 45201i, 1i) << (vec3<u32>(u_input.a, 137921u, 5982u) % vec3<u32>(32u))) >> (vec3<u32>(4294967295u, 121161u, 27102u) % vec3<u32>(32u))));
    let var_1 = Struct_2(u_input.a, vec2<bool>(all(vec2<bool>(var_0.x != var_0.x, true)), false), Struct_1(~(-1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2102f + 579f))), !select(var_0.yx, vec2<bool>(false, false), select(vec2<bool>(false, var_0.x), vec2<bool>(false, var_0.x), false))), 1u, Struct_1(countOneBits(~1i), 1127f, select(select(select(var_0.yw, vec2<bool>(true, var_0.x), true), vec2<bool>(var_0.x, true), var_0.x), var_0.xx, vec2<bool>(all(vec2<bool>(var_0.x, var_0.x)), var_0.x))));
    var var_2 = ~_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(u_input.a, 74250u, 1u)), vec3<u32>(4294967295u, 20336u, var_1.a)), 1u), vec2<u32>(firstLeadingBit(24593u), 13335u));
    var var_3 = Struct_4(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(863f, _wgslsmith_f_op_f32(f32(-1f) * -268f)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2141f - var_1.e.b))), var_1.e.b, _wgslsmith_f_op_f32(min(var_1.e.b, _wgslsmith_div_f32(var_1.c.b, var_1.e.b))), _wgslsmith_f_op_f32(-var_1.c.b)))));
    var_2 = vec2<u32>(~96u >> (var_1.d % 32u), _wgslsmith_clamp_u32(min(u_input.a, u_input.a) << (select(var_2.x, u_input.a, all(var_3.a.b)) % 32u), 46243u, ~4294967295u));
    return var_3.a;
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec2<u32>) -> u32 {
    let var_0 = -56803i;
    var var_1 = 1000f;
    var_1 = _wgslsmith_f_op_f32(arg_1 + arg_1);
    var var_2 = Struct_4(func_2(), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-515f, -1132f))))), -1000f, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-152f, -931f, -485f, 1f))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(1533f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -107f) + -104f))))) + arg_1);
    return ~func_2().d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(_wgslsmith_add_u32(45535u, 66566u), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a | u_input.a, u_input.a), vec2<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, 9947u), vec3<u32>(7240u, u_input.a, u_input.a)))), vec2<u32>(func_1(759i, -1608f, vec2<u32>(21914u, u_input.a)), firstTrailingBit(~u_input.a))), 16669u, u_input.a);
    var_0 = select(~(vec4<u32>(~u_input.a, _wgslsmith_add_u32(30866u, u_input.a), 0u, ~4730u) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(16642u, u_input.a, 4294967295u, var_0.x), firstLeadingBit(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x)))), abs(~(~countOneBits(vec4<u32>(57828u, var_0.x, 1u, 10985u)))), !select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), true))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -994f))))));
    var var_2 = !vec2<bool>(all(vec4<bool>(func_2().e.c.x, true, all(vec3<bool>(false, true, false)), true)), !any(vec4<bool>(true, true, false, true)));
    let var_3 = Struct_1(2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-301f)) - _wgslsmith_f_op_f32(-438f - 515f)))), vec2<bool>(true, true));
    var var_4 = _wgslsmith_mod_vec4_i32(~vec4<i32>(7750i, _wgslsmith_mod_i32(0i, var_3.a), _wgslsmith_dot_vec3_i32(min(vec3<i32>(-11538i, var_3.a, -1i), vec3<i32>(var_3.a, -25502i, var_3.a)), -vec3<i32>(var_3.a, var_3.a, -2147483647i)), var_3.a), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(select(vec4<i32>(4906i, var_3.a, 1i, 1i), vec4<i32>(var_3.a, var_3.a, -4069i, 0i), true), _wgslsmith_div_vec4_i32(vec4<i32>(var_3.a, -1i, 43897i, var_3.a), vec4<i32>(var_3.a, var_3.a, -33572i, 1i))), _wgslsmith_clamp_vec4_i32(vec4<i32>(33478i, var_3.a, var_3.a, var_3.a), vec4<i32>(var_3.a, var_3.a, var_3.a, -1i), vec4<i32>(0i, var_3.a, 2147483647i, -1i)) << (select(vec4<u32>(1u, 4294967295u, u_input.a, var_0.x), vec4<u32>(16850u, u_input.a, var_0.x, u_input.a), vec4<bool>(false, false, false, true)) % vec4<u32>(32u))) ^ vec4<i32>(select(-2147483647i, var_3.a, var_2.x || true), -49405i, countOneBits(_wgslsmith_mod_i32(-2147483647i, var_3.a)), var_3.a));
    var_0 = _wgslsmith_mod_vec4_u32(select(vec4<u32>(var_0.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, 0u), var_0.zww), u_input.a, u_input.a), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(0u, 58865u, var_0.x, 0u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 0u, var_0.x, var_0.x), vec4<u32>(4294967295u, var_0.x, 4294967295u, 27236u)), u_input.a, ~133175u, u_input.a & var_0.x)), var_2.x), ~vec4<u32>(u_input.a, min(u_input.a, 4294967295u) | 1u, ~(~u_input.a), u_input.a));
    let var_5 = ~(-4727i | (var_4.x >> (_wgslsmith_clamp_u32(4294967295u, ~var_0.x, 16045u) % 32u)));
    var_1 = _wgslsmith_f_op_f32(var_3.b - _wgslsmith_f_op_f32(1411f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -706f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec3_i32(reverseBits(var_4.wwz), var_4.zzx, var_4.wzy));
}

