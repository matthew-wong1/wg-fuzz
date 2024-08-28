struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec2<i32>,
    d: vec2<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: u32) -> vec2<i32> {
    var var_0 = Struct_3(~u_input.b.xz);
    let var_1 = _wgslsmith_f_op_f32(-1f) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1043f, -496f)), -159f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(894f, -1443f)))) - _wgslsmith_f_op_f32(-1394f * -1014f)));
    var var_2 = Struct_3(select(u_input.b.yz, ~vec2<u32>(arg_1 >> (var_0.a.x % 32u), arg_1), vec2<bool>(true, all(vec4<bool>(true, false, true, arg_0)))));
    var_0 = Struct_3(~vec2<u32>(~_wgslsmith_mod_u32(75981u, 54245u), 81183u));
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(509f, 1035f), vec2<f32>(-592f, -529f)))), vec2<f32>(_wgslsmith_f_op_f32(select(418f, -125f, arg_0)), _wgslsmith_f_op_f32(floor(-148f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(-1577f + -179f))))), vec4<u32>(~u_input.a, _wgslsmith_dot_vec3_u32(u_input.b, countOneBits(vec3<u32>(arg_1, var_2.a.x, 0u) ^ vec3<u32>(u_input.a, arg_1, var_2.a.x))), 4294967295u, _wgslsmith_add_u32(max(var_0.a.x, arg_1) >> (~var_0.a.x % 32u), arg_1)), _wgslsmith_div_vec4_i32(select(-(~vec4<i32>(3550i, u_input.c, u_input.c, u_input.c)), firstLeadingBit(-vec4<i32>(-20887i, -53249i, 59375i, -1i)), true), -reverseBits(select(vec4<i32>(28454i, u_input.c, u_input.c, 0i), vec4<i32>(u_input.c, 34295i, -1i, u_input.c), arg_0))), Struct_1(reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(4565u, 98336u, arg_1, 0u) & vec4<u32>(1u, var_2.a.x, 22963u, var_2.a.x), _wgslsmith_add_vec4_u32(vec4<u32>(25373u, 1u, 4294967295u, arg_1), vec4<u32>(arg_1, var_2.a.x, arg_1, arg_1)))), 1930f, countOneBits(select(vec2<i32>(2147483647i, u_input.c) >> (vec2<u32>(0u, 15654u) % vec2<u32>(32u)), ~vec2<i32>(11937i, -51646i), select(vec2<bool>(var_1, arg_0), vec2<bool>(arg_0, true), var_1))), select(vec2<bool>(!arg_0, any(vec3<bool>(true, arg_0, arg_0))), !vec2<bool>(false, arg_0), var_1), vec4<bool>(any(!vec4<bool>(false, true, true, var_1)), var_1, 4294967295u != (var_0.a.x & var_0.a.x), true)));
    return _wgslsmith_add_vec2_i32(-vec2<i32>(~firstTrailingBit(var_3.d.c.x), ~(-4554i)), var_3.d.c);
}

fn func_2() -> Struct_2 {
    var var_0 = u_input.a;
    var_0 = ~(~(~_wgslsmith_mult_u32(u_input.b.x >> (4294967295u % 32u), ~12025u)));
    var_0 = u_input.a;
    let var_1 = Struct_3(~u_input.b.yy);
    let var_2 = Struct_1(_wgslsmith_div_vec4_u32(abs(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.a), u_input.b.zy), u_input.a, 11844u, min(var_1.a.x, u_input.b.x))), ~_wgslsmith_div_vec4_u32(vec4<u32>(10182u, var_1.a.x, u_input.b.x, 6150u), abs(vec4<u32>(0u, 1u, 4294967295u, 31070u)))), _wgslsmith_f_op_f32(trunc(-472f)), ~(_wgslsmith_div_vec2_i32(min(vec2<i32>(u_input.c, u_input.c), vec2<i32>(59490i, u_input.c)), func_3(true, 63210u)) >> (var_1.a % vec2<u32>(32u))), select(select(vec2<bool>(u_input.c != -14319i, select(true, false, false)), vec2<bool>(all(vec2<bool>(true, true)), true), select(vec2<bool>(false, false), vec2<bool>(false, true), true)), vec2<bool>(false, true), !any(vec4<bool>(true, true, true, true))), vec4<bool>(false, true, true, true));
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(829f, -274f), -243f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-745f, var_2.b)) * vec2<f32>(var_2.b, -936f))))), var_2.a, vec4<i32>(var_2.c.x, ~abs(u_input.c | 7241i), 60855i, 4322i), var_2);
}

fn func_4(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = 1u;
    global0 = ~select(_wgslsmith_add_u32(1u, _wgslsmith_mod_u32(4294967295u, var_0)), arg_0.b.x, !(87130u > arg_0.d.a.x));
    var var_1 = vec2<i32>(8522i, 12492i);
    var var_2 = u_input.c;
    let var_3 = !vec2<bool>(all(func_2().d.e.yw), !arg_0.d.e.x);
    return func_2().d.e;
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: i32, arg_3: bool) -> i32 {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_mod_u32(19212u, firstLeadingBit(arg_0.d.a.x)), u_input.a);
    var var_1 = 17866u;
    let var_2 = Struct_1(~vec4<u32>(u_input.a, arg_0.d.a.x, ~u_input.a, 11812u), 715f, max((arg_0.c.zy >> (vec2<u32>(72566u, 1u) % vec2<u32>(32u))) | countOneBits(arg_0.d.c), abs(-_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, 13603i), arg_0.d.c, arg_0.c.yw))), vec2<bool>(true, arg_1), select(!func_4(func_2()), select(arg_0.d.e, vec4<bool>(all(vec3<bool>(false, false, arg_0.d.d.x)), arg_1, true, any(arg_0.d.e.zww)), !func_2().d.e), arg_0.d.e));
    var var_3 = vec3<u32>(~var_2.a.x, abs(4668u), ~min(_wgslsmith_div_u32(u_input.b.x, max(4294967295u, arg_0.d.a.x)), ~(~1u)));
    var var_4 = Struct_3(var_2.a.zz);
    return -1i & _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(arg_0.c.xxw, arg_0.c.yxy), vec3<i32>(-var_2.c.x, -1i, 1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (abs(_wgslsmith_mod_i32(u_input.c, 1i)) << (_wgslsmith_mult_u32(1u, ~min(u_input.a, 1u)) % 32u)) >= u_input.c;
    global0 = u_input.a;
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1213f))))), vec4<u32>(u_input.b.x, u_input.a, ~u_input.b.x, 27070u), vec4<i32>(func_1(Struct_2(vec2<f32>(-556f, -541f), vec4<u32>(u_input.b.x, u_input.b.x, u_input.a, u_input.b.x), vec4<i32>(-33809i, u_input.c, u_input.c, 2147483647i), Struct_1(vec4<u32>(u_input.a, 9782u, 17566u, u_input.b.x), 484f, vec2<i32>(u_input.c, -1i), vec2<bool>(var_0, var_0), vec4<bool>(var_0, false, true, var_0))), true, 2147483647i, true), ~_wgslsmith_dot_vec4_i32(vec4<i32>(31539i, u_input.c, u_input.c, 0i), vec4<i32>(u_input.c, 60538i, 2147483647i, u_input.c)), -1i << ((u_input.b.x << (1u % 32u)) % 32u), _wgslsmith_mod_i32(u_input.c, -1i) | ~u_input.c) ^ vec4<i32>(-max(u_input.c, -11025i), u_input.c, u_input.c, _wgslsmith_mult_i32(u_input.c, 2147483647i)), func_2().d);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(var_1.d.b)), _wgslsmith_f_op_f32(f32(-1f) * -446f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.a.x, -359f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(472f - -267f), _wgslsmith_f_op_f32(abs(var_1.d.b)))), var_1.a.x));
}

