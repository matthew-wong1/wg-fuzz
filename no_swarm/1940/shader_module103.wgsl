struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec2<f32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> vec4<bool> {
    let var_0 = max(firstTrailingBit(vec3<u32>(55657u, ~1u, reverseBits(firstTrailingBit(0u)))), ~(vec3<u32>(abs(1u), countOneBits(7144u), select(0u, 0u, global0.b)) | ~vec3<u32>(62926u, 1u, 56854u)));
    let var_1 = Struct_1(vec2<bool>(true, (global0.b && false) && any(!vec4<bool>(global0.c.b.x, global0.b, false, global0.b))), select(vec3<bool>(true, false, !(!global0.c.a.x)), select(vec3<bool>(false && global0.b, false && global0.c.a.x, global0.c.b.x), vec3<bool>(false, false, true), global0.b), _wgslsmith_mod_i32(firstLeadingBit(-10156i), u_input.a.x) >= countOneBits(-u_input.a.x)), _wgslsmith_f_op_vec2_f32(round(global0.c.c)));
    var var_2 = vec2<u32>(~_wgslsmith_mult_u32(select(1u, ~16045u, true), 4294967295u), ~(~(~(~var_0.x))));
    let var_3 = Struct_2(_wgslsmith_add_vec3_u32(vec3<u32>(var_2.x, var_2.x >> (56899u % 32u), 4294967295u), vec3<u32>(var_0.x, var_2.x, var_2.x) << (select(vec3<u32>(var_0.x, var_0.x, 16911u), vec3<u32>(0u, 32085u, var_2.x), global0.b) % vec3<u32>(32u))) & select(vec3<u32>(45426u, var_0.x, ~var_0.x), ~max(var_0, var_0), vec3<bool>(var_1.a.x, true, var_1.a.x)));
    var var_4 = vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-u_input.a.x, -u_input.a.x), firstTrailingBit(u_input.a.x), ~_wgslsmith_dot_vec3_i32(select(u_input.a.yzw, u_input.a.zyx, global0.c.b), u_input.a.wzz)), _wgslsmith_dot_vec2_i32(~u_input.a.zy, u_input.a.yy), _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.a.x, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, 30834i, u_input.a.x))), ~_wgslsmith_dot_vec3_i32(u_input.a.www, u_input.a.zxx)), 1i));
    return select(select(select(!(!vec4<bool>(false, global0.c.b.x, false, true)), vec4<bool>(!global0.c.a.x, true, select(global0.b, false, false), true), _wgslsmith_f_op_f32(max(353f, -2223f)) >= global1.x), vec4<bool>(true, !(u_input.a.x == u_input.a.x), true, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 1i) < _wgslsmith_div_i32(u_input.a.x, 0i)), !select(vec4<bool>(global0.b, false, var_1.b.x, global0.b), !vec4<bool>(false, var_1.b.x, false, true), global0.c.b.x)), vec4<bool>(all(!vec4<bool>(false, true, true, var_1.a.x)), select(any(!vec3<bool>(global0.c.b.x, true, var_1.a.x)), false, true), !global0.b, false), vec4<bool>(var_1.a.x, global0.b, !all(vec2<bool>(var_1.b.x, var_1.a.x)), any(!vec4<bool>(global0.c.a.x, false, false, true))));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_3 {
    global0 = Struct_3(arg_1.x, all(select(!vec4<bool>(global0.c.a.x, global0.b, arg_2.a.x, true), select(select(vec4<bool>(global0.b, arg_2.b.x, global0.b, true), vec4<bool>(true, true, true, true), false), func_3(), true), func_3())), arg_2);
    let var_0 = min(arg_0, arg_0);
    let var_1 = all(func_3().wz);
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-954f, -1471f)))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(abs(global0.a)), _wgslsmith_f_op_f32(abs(1110f))))))));
    global0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.c.x), _wgslsmith_f_op_f32(arg_3.x * -1000f)))), !(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1663f)))) != _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1998f, -440f))), Struct_1(!select(vec2<bool>(true, false), !vec2<bool>(var_1, var_1), true), select(func_3().xwy, select(func_3().zwy, func_3().xzx, !arg_2.b), all(!vec4<bool>(global0.c.b.x, var_1, false, global0.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2517f, 322f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.x, -1629f))))));
    return Struct_3(976f, global0.c.a.x, arg_2);
}

fn func_1(arg_0: i32, arg_1: vec2<i32>) -> Struct_3 {
    global0 = func_2(2147483647i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.c.c.x * 1000f), _wgslsmith_f_op_f32(abs(-224f)))), global0.a)), Struct_1(vec2<bool>(arg_0 < -1i, false), !global0.c.b, global0.c.c), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a, global0.a) - _wgslsmith_f_op_f32(global1.x + global0.c.c.x)))), _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(ceil(global0.a))), 455f));
    var var_0 = func_2(~_wgslsmith_dot_vec4_i32(~u_input.a, ~(vec4<i32>(-26345i, u_input.a.x, arg_0, arg_1.x) << (vec4<u32>(49323u, 40057u, 9117u, 20978u) % vec4<u32>(32u)))), vec2<f32>(global0.c.c.x, global1.x), Struct_1(!vec2<bool>(all(global0.c.a), any(vec4<bool>(true, true, global0.b, global0.c.a.x))), global0.c.b, vec2<f32>(global0.a, _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.x, -399f, 559f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.c.c.x, global0.c.c.x, 428f), vec3<f32>(-1898f, global1.x, global1.x), vec3<bool>(global0.b, false, false))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-893f, global1.x, global1.x))))))));
    global0 = func_2(~(~(~max(u_input.a.x, arg_0))), var_0.c.c, Struct_1(vec2<bool>(!var_0.c.a.x | global0.b, all(vec2<bool>(true, true))), global0.c.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.c.c), vec2<f32>(global1.x, 1284f), vec2<bool>(global0.c.b.x, var_0.c.b.x))) - var_0.c.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global0.c.c.x, var_0.a)));
    let var_1 = var_0.c.c.x;
    let var_2 = func_3().yxw;
    return func_2(select(_wgslsmith_mod_i32(u_input.a.x, 32860i), arg_1.x, all(select(vec4<bool>(true, false, var_2.x, false), select(vec4<bool>(false, global0.b, var_2.x, false), vec4<bool>(false, false, var_2.x, global0.b), vec4<bool>(global0.c.a.x, true, var_2.x, true)), var_2.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1741f, global0.c.c.x))) * _wgslsmith_f_op_vec2_f32(-global0.c.c)) + _wgslsmith_div_vec2_f32(vec2<f32>(var_0.c.c.x, -1382f), vec2<f32>(global0.a, -1193f))) + vec2<f32>(_wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_f_op_f32(sign(var_0.c.c.x)), all(vec4<bool>(true, var_2.x, false, true)))), var_0.c.c.x)), Struct_1(select(var_0.c.a, !select(var_0.c.a, vec2<bool>(var_0.c.a.x, false), false), all(vec3<bool>(false, false, global0.b))), vec3<bool>(global0.a < _wgslsmith_f_op_f32(-var_0.a), var_2.x, var_0.b), var_0.c.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(501f, 340f, 2288f)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3) -> Struct_1 {
    var var_0 = func_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-5518i, u_input.a.x, u_input.a.x, ~u_input.a.x) << ((~vec4<u32>(arg_1.a.x, arg_1.a.x, 4294967295u, 0u) >> (_wgslsmith_add_vec4_u32(vec4<u32>(1u, 43413u, arg_1.a.x, arg_1.a.x), vec4<u32>(arg_1.a.x, 4294967295u, arg_1.a.x, arg_1.a.x)) % vec4<u32>(32u))) % vec4<u32>(32u)), u_input.a), abs(u_input.a.wx)).c;
    let var_1 = func_1(~select(u_input.a.x, ~u_input.a.x, var_0.a.x | true), -select(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.xz, select(vec2<bool>(global0.b, false), var_0.b.yx, vec2<bool>(arg_2.c.a.x, arg_2.c.b.x)))).b && func_1(countOneBits(abs(u_input.a.x)), vec2<i32>(2147483647i, -2147483647i)).b;
    var_0 = func_2(-1i, _wgslsmith_f_op_vec2_f32(var_0.c * arg_2.c.c), Struct_1(!select(select(vec2<bool>(var_0.b.x, false), vec2<bool>(true, true), false), func_3().zz, arg_0.c.a), select(select(func_2(u_input.a.x, var_0.c, global0.c, vec3<f32>(-1187f, 237f, global1.x)).c.b, select(var_0.b, vec3<bool>(true, true, true), var_1), any(vec4<bool>(true, true, false, false))), func_1(u_input.a.x, u_input.a.yx << (vec2<u32>(arg_1.a.x, 23552u) % vec2<u32>(32u))).c.b, !var_0.b), global0.c.c), vec3<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(939f * global0.a)))), _wgslsmith_f_op_f32(-global0.c.c.x))).c;
    var var_2 = u_input.a.x;
    var var_3 = _wgslsmith_f_op_f32(arg_0.c.c.x - global0.c.c.x);
    return arg_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.c;
    var var_1 = u_input.a.x;
    var_0 = func_4(func_1(_wgslsmith_div_i32(u_input.a.x, 20394i) >> (firstTrailingBit(_wgslsmith_add_u32(71974u, 99992u)) % 32u), firstLeadingBit(firstTrailingBit(select(u_input.a.zx, vec2<i32>(u_input.a.x, u_input.a.x), vec2<bool>(global0.b, var_0.b.x))))), Struct_2(vec3<u32>(~(~144474u), abs(1u), 38452u)), func_2(u_input.a.x, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1931f, 1000f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-972f, var_0.c.x))))), func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -51749i, u_input.a.x, u_input.a.x), u_input.a) >> (reverseBits(0u) % 32u), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1044f) + vec2<f32>(-1850f, 1175f)), Struct_1(global0.c.a, var_0.b, func_2(u_input.a.x, var_0.c, global0.c, vec3<f32>(var_0.c.x, -1000f, global0.a)).c.c), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.c.c.x, -591f, 133f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.x, global1.x, global1.x))), true))).c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-630f, 1000f, _wgslsmith_f_op_f32(floor(global1.x))))));
    let var_2 = Struct_3(global1.x, all(func_1(countOneBits(u_input.a.x), ~u_input.a.zy).c.a), global0.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-380f, global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(537f, -507f)))), ~(~u_input.a.x | -1i), ~(~max(4294967295u, 66521u)) >> (firstLeadingBit(4294967295u) % 32u), vec2<i32>(u_input.a.x, -(-u_input.a.x ^ ~u_input.a.x)));
}

