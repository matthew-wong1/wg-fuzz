struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: i32,
    d: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
    c: f32,
    d: bool,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

var<private> global1: vec3<u32> = vec3<u32>(37134u, 0u, 3659u);

var<private> global2: Struct_4 = Struct_4(vec3<bool>(true, false, false), Struct_1(true, vec3<f32>(-969f, 944f, 389f)), -1662f, false, vec3<i32>(30778i, 23024i, 1i));

var<private> global3: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(vec3<bool>(false, true, true), Struct_1(true, vec3<f32>(584f, -201f, -1297f)), -1246f, true, vec3<i32>(2147483647i, 0i, 2147483647i)), Struct_4(vec3<bool>(true, false, true), Struct_1(false, vec3<f32>(-1452f, -810f, -427f)), 311f, false, vec3<i32>(-557i, -24527i, -1i)), Struct_4(vec3<bool>(false, true, true), Struct_1(false, vec3<f32>(623f, 825f, -1223f)), 367f, true, vec3<i32>(-37757i, 42871i, -19719i)), Struct_4(vec3<bool>(true, false, true), Struct_1(true, vec3<f32>(1745f, -145f, -2428f)), -1898f, true, vec3<i32>(-1i, 2147483647i, -40426i)), Struct_4(vec3<bool>(true, true, true), Struct_1(false, vec3<f32>(-175f, -161f, -1072f)), 1000f, false, vec3<i32>(-1i, 1i, -12235i)), Struct_4(vec3<bool>(true, false, false), Struct_1(true, vec3<f32>(-671f, -851f, -132f)), -1593f, false, vec3<i32>(34507i, 0i, -1i)), Struct_4(vec3<bool>(true, false, true), Struct_1(false, vec3<f32>(969f, -1864f, 2008f)), 2177f, true, vec3<i32>(2147483647i, 1i, -3946i)), Struct_4(vec3<bool>(false, false, true), Struct_1(false, vec3<f32>(542f, -345f, 881f)), 450f, false, vec3<i32>(-869i, 1i, 9378i)), Struct_4(vec3<bool>(true, true, false), Struct_1(false, vec3<f32>(-661f, -636f, -701f)), 127f, false, vec3<i32>(2147483647i, -2929i, -10948i)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    global1 = vec3<u32>(_wgslsmith_div_u32(~(1u | _wgslsmith_mod_u32(global1.x, u_input.b.x)), max(_wgslsmith_dot_vec4_u32(vec4<u32>(32127u, 4294967295u, 0u, global1.x) | vec4<u32>(global1.x, 0u, global1.x, 0u), vec4<u32>(4294967295u, global1.x, u_input.b.x, 8294u) ^ vec4<u32>(1u, 41756u, global1.x, 1u)), 60310u >> (max(global1.x, global1.x) % 32u))), u_input.b.x, firstLeadingBit(u_input.b.x));
    global0 = array<Struct_1, 3>();
    let var_0 = Struct_3(vec2<bool>(!(true & all(vec2<bool>(global2.b.a, false))), global2.a.x), Struct_2(u_input.b.x, _wgslsmith_mod_vec4_i32(max(-vec4<i32>(global2.e.x, global2.e.x, global2.e.x, u_input.c.x), abs(vec4<i32>(-1i, 1029i, 0i, 18123i))), -(~vec4<i32>(1i, -1i, u_input.c.x, global2.e.x))), vec3<i32>(_wgslsmith_mod_i32(u_input.c.x, 38595i), u_input.c.x, ~0i) ^ global2.e, Struct_1(any(vec3<bool>(global2.b.a, global2.b.a, true)) | false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.b.b))), select(countOneBits(1i), _wgslsmith_div_i32(-46609i, reverseBits(-1i)), global2.b.a)), _wgslsmith_mult_i32(0i, u_input.c.x), ~_wgslsmith_clamp_i32(u_input.c.x, global2.e.x, -firstTrailingBit(120829i)));
    let var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(select(vec3<u32>(var_0.b.a, 90452u, 22158u), vec3<u32>(4294967295u, 0u, 1u), var_0.b.d.a), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, var_0.b.a, var_0.b.a), vec3<u32>(var_0.b.a, u_input.a, 46152u))), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.x, 1518u, global1.x), vec3<u32>(u_input.a, 1u, 4294967295u), vec3<u32>(u_input.b.x, global1.x, 56264u)), abs(vec3<u32>(1u, u_input.a, 36953u)))), _wgslsmith_dot_vec3_u32(max(vec3<u32>(var_0.b.a, 0u, var_0.b.a), vec3<u32>(var_0.b.a, u_input.b.x, global1.x)) << (~vec3<u32>(5066u, 4294967295u, 1u) % vec3<u32>(32u)), ~vec3<u32>(var_0.b.a, 0u, 0u) << ((vec3<u32>(var_0.b.a, u_input.a, global1.x) | vec3<u32>(global1.x, 1u, 4294967295u)) % vec3<u32>(32u))), _wgslsmith_dot_vec3_u32(firstLeadingBit(firstTrailingBit(vec3<u32>(u_input.b.x, 1u, 1u))), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 54208u), vec3<u32>(0u, var_0.b.a, 11231u))))), ~(~firstLeadingBit(vec4<u32>(u_input.b.x, 72194u, 0u, global1.x)) ^ abs(vec4<u32>(u_input.b.x, 72906u, u_input.a, 1u) << (vec4<u32>(u_input.b.x, 74650u, var_0.b.a, 4294967295u) % vec4<u32>(32u)))));
    global1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.b.a, u_input.b.x, u_input.a), var_1.zwy, _wgslsmith_div_vec3_u32(var_1.zxx, _wgslsmith_mult_vec3_u32(var_1.xyw, ~vec3<u32>(u_input.a, 4294967295u, 45600u))) ^ ~abs(var_1.zww & var_1.yxz));
    return 1745f;
}

fn func_2(arg_0: u32) -> f32 {
    let var_0 = Struct_4(select(global2.a, !global2.a, true), Struct_1(!(~1u >= _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 1u, 14529u), vec3<u32>(104816u, 1u, u_input.a))), _wgslsmith_f_op_vec3_f32(-global2.b.b)), _wgslsmith_f_op_f32(global2.b.b.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1000f, 1f)), global2.b.b.x)), !(!global2.a.x), ~global2.e);
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(265f, var_0.b.b.x, true))) * _wgslsmith_f_op_f32(var_0.b.b.x - _wgslsmith_f_op_f32(exp2(var_0.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(min(861f, global2.c))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c + global2.c) - -514f))) * vec3<f32>(-1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(-274f + global2.b.b.x)))), -147f));
    var var_2 = Struct_1(all(var_0.a.xy), var_0.b.b);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -891f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_div_f32(-1000f, 137f)));
    let var_4 = _wgslsmith_f_op_f32(-var_3.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-348f + var_4)))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_4, 2131f)))) * -378f);
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: u32) -> bool {
    var var_0 = Struct_1(global2.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_2(8219u)), global2.c, _wgslsmith_f_op_f32(func_2(arg_2))) + _wgslsmith_f_op_vec3_f32(max(global2.b.b, global2.b.b))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(970f, global2.c, 1192f) * global2.b.b))), global2.b.b))));
    var var_1 = Struct_3(global2.a.yx, Struct_2(16705u, ~(~vec4<i32>(-1i, 0i, -60735i, -42114i)), global2.e, global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.a, arg_1.x) & ~(~u_input.a), 3u)], select(-1i, _wgslsmith_div_i32(firstTrailingBit(53632i), -global2.e.x), true)), _wgslsmith_add_i32(2147483647i, u_input.c.x), countOneBits(max(2147483647i, abs(global2.e.x))) | 38444i);
    return 180f != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b.d.b.x, _wgslsmith_f_op_f32(sign(global2.b.b.x))) * _wgslsmith_f_op_f32(f32(-1f) * -155f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(!(!(!select(vec3<bool>(global2.a.x, global2.d, true), global2.a, global2.a))), Struct_1(all(!(!global2.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.b.b) + _wgslsmith_f_op_vec3_f32(-global2.b.b)))), 761f, all(select(vec4<bool>(func_1(global1.x, vec2<u32>(u_input.b.x, 4294967295u), global1.x), true, global2.d, true), select(select(vec4<bool>(global2.a.x, true, global2.d, true), vec4<bool>(false, global2.d, global2.b.a, global2.a.x), vec4<bool>(false, global2.a.x, true, true)), vec4<bool>(true, true, false, global2.b.a), global2.d), func_1(50125u, abs(global1.xz), ~u_input.b.x))), global2.e);
    let var_1 = -select(var_0.e.zy, var_0.e.yy, !select(global2.a.xx, !global2.a.xy, vec2<bool>(var_0.b.a, global2.a.x)));
    global3 = array<Struct_4, 9>();
    let var_2 = Struct_3(var_0.a.zy, Struct_2(_wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(global1.zy, vec2<u32>(global1.x, 615u)), ~min(vec2<u32>(27155u, global1.x), vec2<u32>(u_input.a, global1.x))), vec4<i32>(-max(18677i, 0i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_0.e.x, var_0.e.x), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, global2.e.x, -1i), global2.e)), var_0.e.x, countOneBits(3224i)), global2.e, Struct_1(var_0.a.x, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -503f), var_0.c, _wgslsmith_f_op_f32(-global2.c))), -58975i), 18105i, var_1.x);
    var var_3 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(max(7704u, firstLeadingBit(_wgslsmith_add_u32(u_input.a, 32516u))), min(0u << (_wgslsmith_mult_u32(global1.x, 34173u) % 32u), ~(~var_2.b.a)), u_input.a), ~(~(vec4<u32>(u_input.b.x, 1u, u_input.b.x, global1.x) & ~vec4<u32>(4294967295u, global1.x, 30750u, 1u))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(var_0.b.b.xy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.b.b.zz)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b.b.x * -192f) * _wgslsmith_f_op_f32(-1520f - var_0.c)), var_2.b.d.b.x)));
}

