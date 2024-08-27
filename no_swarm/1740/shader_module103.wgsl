struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -583f;

var<private> global1: vec2<u32> = vec2<u32>(1u, 1u);

var<private> global2: array<f32, 23> = array<f32, 23>(281f, -849f, -1698f, -394f, 693f, 1000f, -985f, -100f, -719f, 529f, 1000f, -763f, -1517f, 464f, 586f, 1000f, -1650f, 328f, 264f, -1292f, -1372f, -371f, 328f);

var<private> global3: array<bool, 2> = array<bool, 2>(true, true);

var<private> global4: Struct_3;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = any(select(vec3<bool>(all(global4.b), !(global3[_wgslsmith_index_u32(4294967295u, 2u)] || true), true), vec3<bool>(arg_0, global4.b.x, global4.b.x), !select(select(vec3<bool>(arg_0, global4.a.b, true), vec3<bool>(true, true, true), true), !vec3<bool>(false, arg_0, global3[_wgslsmith_index_u32(u_input.a.x, 2u)]), global4.a.b)));
    global0 = 709f;
    global2 = array<f32, 23>();
    let var_1 = Struct_3(global4.c, !(!global4.b), Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-918f, global4.d, global2[_wgslsmith_index_u32(global4.c.c, 23u)], 892f))), vec4<f32>(global4.a.a.x, _wgslsmith_f_op_f32(step(global4.d, -2898f)), 1f, -209f))), all(!select(vec4<bool>(var_0, var_0, false, false), vec4<bool>(false, arg_0, false, global4.a.b), global4.b.x)), u_input.a.x), 371f, -35714i);
    global1 = vec2<u32>(_wgslsmith_dot_vec3_u32(select(u_input.a.yyx, min(vec3<u32>(var_1.c.c, 1u, 16413u), u_input.a.wwz), vec3<bool>(all(vec3<bool>(arg_0, false, true)), any(var_1.b), select(false, false, true))), vec3<u32>(firstLeadingBit(_wgslsmith_clamp_u32(10075u, var_1.c.c, u_input.a.x)), ~abs(51163u), _wgslsmith_dot_vec4_u32(~u_input.a, ~u_input.a))), ~1u);
    return 39485u;
}

fn func_4(arg_0: vec4<u32>, arg_1: u32, arg_2: u32) -> i32 {
    var var_0 = _wgslsmith_sub_vec3_u32(abs(vec3<u32>(18301u, _wgslsmith_div_u32(u_input.a.x, global4.a.c), _wgslsmith_mult_u32(89708u, 11908u))), select(firstLeadingBit(vec3<u32>(global4.a.c, global1.x, 30154u)) & u_input.a.zyw, (vec3<u32>(55410u, 1u, arg_0.x) ^ vec3<u32>(global1.x, arg_0.x, arg_2)) | arg_0.yxw, vec3<bool>(true, true, true))) >> (_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(arg_2, 60716u), func_3(true), 2424u), _wgslsmith_sub_u32(global4.a.c ^ arg_0.x, _wgslsmith_mod_u32(global1.x, 1u)), _wgslsmith_add_u32(0u, arg_1)), ~arg_0.wxy) % vec3<u32>(32u));
    let var_1 = Struct_3(global4.a, vec2<bool>(all(!(!global4.b)), global4.a.b), Struct_1(vec4<f32>(global2[_wgslsmith_index_u32(arg_1, 23u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-219f, global2[_wgslsmith_index_u32(41681u, 23u)]))), _wgslsmith_f_op_f32(sign(-596f)), global4.c.a.x), true, arg_2), -164f, countOneBits(countOneBits(-17892i)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(global4.c.a - vec4<f32>(_wgslsmith_f_op_f32(floor(-649f)), 874f, _wgslsmith_f_op_f32(round(568f)), _wgslsmith_f_op_f32(-global4.c.a.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, 972f, var_1.c.a.x, 915f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(58659u, 23u)], -1445f, var_1.a.a.x, -636f))))))), (36936u >> (~_wgslsmith_div_u32(arg_0.x, global4.a.c) % 32u)) >= ~_wgslsmith_clamp_u32(func_3(true), var_0.x, abs(0u)), _wgslsmith_mod_u32(~_wgslsmith_mod_u32(var_1.c.c, 1u), ~_wgslsmith_div_u32(0u, 38369u)));
    global2 = array<f32, 23>();
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1826f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.d, global4.d) * _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(var_0.x, 23u)]))), var_2.a.x)), -1041f, ~(~31572i));
    return _wgslsmith_mod_i32(max(~(-1i), u_input.b.x), 1i);
}

fn func_2() -> Struct_3 {
    var var_0 = -func_4(vec4<u32>(~1u, ~5565u ^ func_3(false), _wgslsmith_add_u32(~1u, _wgslsmith_dot_vec2_u32(u_input.a.wz, vec2<u32>(0u, global1.x))), min(_wgslsmith_div_u32(4294967295u, u_input.a.x), 0u)), global4.a.c, ~(~1u));
    return Struct_3(global4.a, select(!vec2<bool>(true, global4.a.c < u_input.a.x), vec2<bool>(all(!global4.b), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.a.x, 48692u), 2u)]), global4.a.b), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(68112u, 23u)]), global2[_wgslsmith_index_u32(global4.c.c, 23u)], _wgslsmith_f_op_f32(-582f - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 23u)])), global4.d), false, _wgslsmith_dot_vec3_u32(u_input.a.xwy, u_input.a.wyz)), _wgslsmith_div_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(~(10232u ^ u_input.a.x), 23u)], _wgslsmith_f_op_f32(-global4.c.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(104f)) + global2[_wgslsmith_index_u32(u_input.a.x, 23u)]) - -524f)), ~(-1i ^ _wgslsmith_dot_vec2_i32(u_input.b.xy, vec2<i32>(1i, -1i))));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    var var_1 = !select(select(vec4<bool>(!var_0.c.b, func_2().b.x, select(global3[_wgslsmith_index_u32(global4.c.c, 2u)], global3[_wgslsmith_index_u32(global1.x, 2u)], global4.c.b), true), vec4<bool>(var_0.b.x, var_0.a.b, any(global4.b), global3[_wgslsmith_index_u32(~11594u, 2u)]), select(!vec4<bool>(global4.a.b, false, global4.a.b, global4.a.b), select(vec4<bool>(global4.c.b, false, global3[_wgslsmith_index_u32(10206u, 2u)], false), vec4<bool>(global3[_wgslsmith_index_u32(var_0.a.c, 2u)], false, true, global3[_wgslsmith_index_u32(28954u, 2u)]), vec4<bool>(true, true, true, global3[_wgslsmith_index_u32(var_0.c.c, 2u)])), vec4<bool>(global4.b.x, false, var_0.c.b, var_0.c.b))), vec4<bool>(all(vec2<bool>(false, global3[_wgslsmith_index_u32(global4.c.c, 2u)])) && any(vec4<bool>(true, false, true, global4.a.b)), true, all(!vec3<bool>(false, var_0.a.b, true)), select(!var_0.b.x, select(true, global4.a.b, global3[_wgslsmith_index_u32(global1.x, 2u)]), true)), vec4<bool>(false | (global4.a.b == global4.b.x), !global4.b.x, true, global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(var_0.c.c, var_0.c.c)), 2u)]));
    global3 = array<bool, 2>();
    global4 = var_0;
    let var_2 = var_0.b;
    return Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1378f) + _wgslsmith_f_op_f32(-501f - global2[_wgslsmith_index_u32(global4.a.c, 23u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(969f + global4.c.a.x), global4.d), _wgslsmith_f_op_f32(func_2().a.a.x - _wgslsmith_f_op_f32(sign(global4.c.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-568f, var_0.a.a.x)) - _wgslsmith_f_op_f32(abs(var_0.c.a.x))), global2[_wgslsmith_index_u32(13982u, 23u)], _wgslsmith_f_op_f32(587f + 367f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.c.a.x, var_0.a.a.x))))), select(true, select(true, true, !func_2().b.x), !var_1.x), 10267u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4.b;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2213f + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global4.c.c, global1.x, u_input.a.x, u_input.a.x), vec4<u32>(0u, 4294967295u, 0u, global1.x)), 23u)] * 1000f)) + global4.c.a.x);
    var var_1 = any(global4.b);
    var var_2 = Struct_3(func_1(), func_2().b, global4.a, 1000f, max(_wgslsmith_mult_i32(_wgslsmith_add_i32(26393i, -6147i) << (_wgslsmith_dot_vec2_u32(u_input.a.yw, u_input.a.xz) % 32u), -66692i), _wgslsmith_clamp_i32(-u_input.b.x, -abs(u_input.c), i32(-1i) * -u_input.c)));
    global2 = array<f32, 23>();
    var_2 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, u_input.a.x, 0u), u_input.a.xzz)), _wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(0i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.e, 2147483647i, u_input.b.x, 633i), vec4<i32>(-31761i, -52094i, u_input.c, -1i))) << (firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(10861u, global4.c.c), u_input.a.zw)) % vec2<u32>(32u)), abs(_wgslsmith_add_vec2_i32(vec2<i32>(-7926i, u_input.c), ~u_input.b.yy))), reverseBits(~(abs(vec4<i32>(var_2.e, u_input.b.x, -2147483647i, 2147483647i)) << (u_input.a % vec4<u32>(32u)))), reverseBits(max(u_input.a.zzx, vec3<u32>(14312u, 1u & global1.x, 0u))));
}

