struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(2147483647i, -19874i, 46699i, 56033i);

var<private> global1: Struct_3;

var<private> global2: Struct_2 = Struct_2(vec3<bool>(false, true, true), Struct_1(1367f, 5699u, vec4<u32>(1u, 4294967295u, 44997u, 1u), true), true, Struct_1(192f, 13440u, vec4<u32>(48385u, 52740u, 17281u, 45721u), false), 0i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>) -> vec4<bool> {
    global1 = Struct_3(Struct_2(vec3<bool>(true, !(!arg_1.x), true), Struct_1(_wgslsmith_f_op_f32(sign(global1.a.d.a)), global1.a.d.b, ~global2.d.c & (global2.b.c >> (vec4<u32>(global2.d.b, global2.d.c.x, global1.a.d.c.x, global2.d.b) % vec4<u32>(32u))), true), select((global1.a.d.d | global2.b.d) && false, select(all(arg_1.xx), any(vec2<bool>(true, global1.a.a.x)), true), all(vec4<bool>(arg_1.x, global1.a.b.d, true, true))), global2.b, arg_0));
    var var_0 = Struct_3(Struct_2(vec3<bool>(true, !(global1.a.d.b >= global1.a.b.b), !(!global1.a.d.d)), global1.a.b, !all(global1.a.a.xx), Struct_1(161f, abs(4294967295u), vec4<u32>(1u, global1.a.b.c.x, _wgslsmith_mult_u32(32062u, global1.a.d.b), _wgslsmith_sub_u32(global2.d.c.x, global1.a.d.c.x)), !(!global1.a.b.d)), -(global0.x << (1u % 32u))));
    var_0 = Struct_3(global1.a);
    global2 = Struct_2(!vec3<bool>(!any(vec4<bool>(global1.a.b.d, false, global2.d.d, false)), global2.c, !global1.a.c), global2.d, all(var_0.a.a), global1.a.d, _wgslsmith_div_i32(~26011i, -1i));
    global0 = abs(vec4<i32>(global1.a.e, ~_wgslsmith_clamp_i32(19493i, 33604i, global1.a.e), global0.x ^ _wgslsmith_sub_i32(u_input.a.x, 2147483647i), global0.x));
    return !select(vec4<bool>(false, true, true, global2.c), vec4<bool>(all(vec4<bool>(global2.b.d, false, global1.a.c, global2.c)), true && arg_1.x, true, _wgslsmith_clamp_u32(28521u, var_0.a.b.b, 4294967295u) < global1.a.d.b), vec4<bool>(global1.a.a.x, true, _wgslsmith_f_op_f32(max(var_0.a.d.a, global1.a.b.a)) <= var_0.a.b.a, !global1.a.b.d));
}

fn func_2(arg_0: bool, arg_1: u32) -> bool {
    let var_0 = Struct_3(Struct_2(!vec3<bool>(any(global1.a.a.xx), global2.d.d, global1.a.b.d), Struct_1(global1.a.d.a, ~4294967295u & ~arg_1, vec4<u32>(_wgslsmith_div_u32(0u, global1.a.b.b), global1.a.b.b, 4247u, 2602u), !global1.a.a.x | global1.a.c), all(select(vec4<bool>(arg_0, true, arg_0, arg_0), !vec4<bool>(global1.a.c, false, false, global1.a.c), func_3(global0.x, global2.a))), global1.a.b, -57399i));
    global1 = Struct_3(Struct_2(func_3(_wgslsmith_add_i32(abs(global0.x), global0.x), select(vec3<bool>(global2.a.x, true, global1.a.d.d), global1.a.a, var_0.a.a)).zxw, global2.b, false & arg_0, global1.a.d, ~_wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, global0.x, 8133i, -62450i), min(vec4<i32>(39223i, global1.a.e, var_0.a.e, var_0.a.e), u_input.a))));
    let var_1 = !vec3<bool>(true, arg_0, false);
    global2 = var_0.a;
    let var_2 = global2.e;
    return any(global1.a.a.zy);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<bool>) -> vec4<i32> {
    var var_0 = Struct_2(vec3<bool>(true, !all(global1.a.a), any(global1.a.a)), global1.a.d, true && ((274u <= firstTrailingBit(11960u)) | !any(arg_0)), Struct_1(_wgslsmith_f_op_f32(-global1.a.d.a), 0u | (1u | global1.a.b.b), _wgslsmith_add_vec4_u32(~max(global1.a.d.c, vec4<u32>(global1.a.b.c.x, 4294967295u, global1.a.d.b, 4294967295u)), reverseBits(~global1.a.d.c)), true), max(u_input.a.x, (u_input.a.x | ~global0.x) ^ ~(~u_input.a.x)));
    global2 = global1.a;
    var var_1 = Struct_3(Struct_2(select(!(!global1.a.a), vec3<bool>(true, arg_1.x, func_3(-1i, global2.a).x), !arg_0.xzx), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.a.d.a))), ~(global2.d.c.x ^ 1u), (global2.b.c << (vec4<u32>(0u, var_0.b.b, global2.d.b, global2.b.b) % vec4<u32>(32u))) | vec4<u32>(global2.d.c.x, 12571u, 81292u, 1u), any(func_3(-17297i, global2.a).wz)), false | (!var_0.b.d != false), Struct_1(_wgslsmith_f_op_f32(-959f - _wgslsmith_f_op_f32(global2.b.a - 972f)), global1.a.d.c.x, ~(~vec4<u32>(var_0.b.b, 4294967295u, 4294967295u, 14158u)), reverseBits(0u) >= global1.a.d.c.x), _wgslsmith_add_i32(-global2.e, ~var_0.e) >> (countOneBits(var_0.b.b) % 32u)));
    let var_2 = _wgslsmith_clamp_vec2_u32(global2.d.c.yy, select(firstTrailingBit(abs(var_0.b.c.zx)) >> (~(~vec2<u32>(global2.b.b, 86824u)) % vec2<u32>(32u)), ~vec2<u32>(global1.a.b.c.x, 0u >> (global1.a.b.b % 32u)), global1.a.a.x), vec2<u32>(~abs(global1.a.b.b) & 0u, ~(abs(global1.a.b.c.x) << (firstLeadingBit(var_0.b.b) % 32u))));
    var var_3 = vec3<i32>(~(~(-1i)) >> ((55059u >> (_wgslsmith_dot_vec2_u32(firstTrailingBit(var_0.b.c.zx), firstLeadingBit(vec2<u32>(global2.d.c.x, var_1.a.d.b))) % 32u)) % 32u), _wgslsmith_sub_i32(-2147483647i, -15443i), -1i);
    return max(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(u_input.a, u_input.a), u_input.a), -u_input.a) ^ ~(-(~u_input.a)), vec4<i32>(-14802i, _wgslsmith_sub_i32(~(-1i), ~_wgslsmith_mult_i32(19361i, -1i)), _wgslsmith_mult_i32(var_1.a.e ^ global1.a.e, _wgslsmith_mult_i32(-2147483647i, var_0.e)) & -(~var_3.x), 2147483647i));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: bool, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = (-(global0.x << (~4294967295u % 32u)) < -1i) | any(!(!select(vec3<bool>(arg_2, global2.a.x, global1.a.b.d), vec3<bool>(arg_0.a.x, true, true), false)));
    var var_1 = global1.a.a.x;
    var var_2 = var_0 & !arg_3.x;
    global0 = func_4(vec4<bool>(!any(vec4<bool>(global2.b.d, var_0, true, arg_3.x)), func_2(arg_2, 1u), any(!global2.a.zx), true), vec4<bool>(true, true, true, true));
    let var_3 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(400f)) - -2247f))), global2.b.a), _wgslsmith_f_op_f32(-global2.d.a));
    return Struct_1(-661f, arg_1, ~(~_wgslsmith_mod_vec4_u32(global2.d.c ^ vec4<u32>(global1.a.b.c.x, arg_0.d.c.x, arg_0.b.b, 1u), vec4<u32>(33949u, 55065u, global1.a.d.c.x, 0u))), arg_0.b.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global1.a, min(~(~1u), abs(global1.a.b.b)) << (4294967295u % 32u), true, vec3<bool>(false, firstLeadingBit(0u) <= min(global1.a.b.b, global1.a.d.c.x), 350f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1418f + 1930f) * _wgslsmith_f_op_f32(-global2.b.a))));
    let var_1 = -(~(i32(-1i) * -18920i));
    var var_2 = global1.a.b.a;
    var_0 = func_1(global1.a, global1.a.b.c.x, !select(!global1.a.c & !global1.a.a.x, !all(vec4<bool>(true, true, global2.c, true)), false), vec3<bool>(true, global1.a.c, all(!global1.a.a) & (func_3(-2147483647i, global1.a.a).x != true)));
    let var_3 = func_1(Struct_2(vec3<bool>(0i != (-2147483647i | global0.x), global2.b.d | var_0.d, _wgslsmith_f_op_f32(global2.b.a * var_0.a) <= _wgslsmith_f_op_f32(-global2.b.a)), global1.a.b, func_1(Struct_2(!global2.a, func_1(Struct_2(vec3<bool>(global1.a.a.x, var_0.d, var_0.d), Struct_1(var_0.a, global2.d.c.x, vec4<u32>(1u, 71181u, var_0.b, 1u), var_0.d), false, Struct_1(955f, 4294967295u, global1.a.b.c, global2.d.d), global0.x), var_0.b, false, vec3<bool>(global1.a.b.d, false, global1.a.b.d)), func_1(Struct_2(global1.a.a, Struct_1(global2.d.a, 22400u, global2.b.c, true), var_0.d, Struct_1(373f, global2.d.c.x, vec4<u32>(global2.b.b, 25716u, global1.a.b.b, 13357u), false), global0.x), global1.a.d.b, global1.a.d.d, global2.a).d, global2.d, -global2.e), var_0.b, all(vec4<bool>(global1.a.d.d, var_0.d, global1.a.c, true)), vec3<bool>(global1.a.a.x, any(vec4<bool>(true, true, true, global2.c)), true)).d, func_1(Struct_2(!global1.a.a, func_1(global1.a, 0u, false, global1.a.a), func_2(global1.a.c, 10955u), Struct_1(global2.d.a, var_0.c.x, global2.b.c, global2.c), -global1.a.e), ~global2.d.b, true, select(select(global2.a, vec3<bool>(false, true, var_0.d), true), vec3<bool>(false, true, global2.b.d), true)), u_input.a.x), ~4294967295u, false, func_3(i32(-1i) * -15872i, func_3(0i, !select(vec3<bool>(false, global2.c, true), vec3<bool>(true, false, global1.a.c), true)).wzz).zwx);
    var_2 = -592f;
    global0 = select(~vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a.xy, vec2<i32>(2147483647i, var_1) | vec2<i32>(-135i, global0.x)), _wgslsmith_add_i32(1i, -1i), _wgslsmith_sub_i32(global0.x, global0.x) << (_wgslsmith_clamp_u32(var_0.c.x, 4294967295u, 1u) % 32u), 1i), reverseBits(~u_input.a), global2.b.d);
    let var_4 = var_3;
    let var_5 = global1.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-366f)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_0.a)))), _wgslsmith_div_f32(var_4.a, _wgslsmith_f_op_f32(global1.a.d.a - 943f)), _wgslsmith_f_op_f32(-633f - var_0.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.b.a, -1000f, 1000f) - vec3<f32>(var_5.b.a, 518f, 1000f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b.a, -1356f, -753f)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-605f, -1261f, var_0.a)))))), _wgslsmith_add_i32(1i, reverseBits(17188i)) | global2.e, vec4<i32>(_wgslsmith_add_i32(var_1, u_input.a.x), _wgslsmith_mod_i32(29658i, -countOneBits(-2147483647i)), global2.e, _wgslsmith_sub_i32(max(-44208i & global2.e, ~(-1i)), _wgslsmith_sub_i32(1i, global2.e | global2.e))));
}

