struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: u32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(1i, -23345i, 4793i, 2147483647i);

var<private> global1: Struct_2;

var<private> global2: Struct_3;

var<private> global3: array<f32, 4>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1) -> vec3<f32> {
    var var_0 = countOneBits(~global2.a.a.x) > global2.a.a.x;
    let var_1 = all(select(vec3<bool>(global2.c, false || global2.c, global2.c), select(select(vec3<bool>(global2.c, true, true), select(vec3<bool>(true, false, global2.c), vec3<bool>(global2.c, global2.c, global2.c), false), !global2.c), !(!vec3<bool>(true, true, global2.c)), ~(-12276i) > (global1.a ^ u_input.a.x)), select(vec3<bool>(global2.c & global2.c, !global2.c, 1489f < global1.e.x), vec3<bool>(any(vec4<bool>(false, global2.c, true, global2.c)), global2.c, global2.c & global2.c), vec3<bool>(true, global2.c, global2.c))));
    let var_2 = 1u;
    let var_3 = Struct_2(-1i, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.b.x, 146f, 461f), _wgslsmith_f_op_vec3_f32(global1.b + global1.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1099f, global2.d.x, 325f) + global1.c))))), global1.e, var_2, _wgslsmith_f_op_vec3_f32(global1.b - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global3[_wgslsmith_index_u32(var_2, 4u)], arg_1)), vec3<f32>(-713f, arg_0.b.x, arg_1)) + global1.e)));
    var var_4 = Struct_1(vec4<u32>(countOneBits(~99007u << (_wgslsmith_dot_vec3_u32(arg_2.a.xzx, vec3<u32>(global2.a.a.x, global2.a.a.x, arg_2.a.x)) % 32u)), 25522u, _wgslsmith_dot_vec2_u32(max(vec2<u32>(global1.d, 20944u) >> (vec2<u32>(16116u, 0u) % vec2<u32>(32u)), vec2<u32>(4294967295u, global1.d)), select(vec2<u32>(arg_2.a.x, 2441u), vec2<u32>(0u, arg_2.a.x), false) >> (_wgslsmith_mod_vec2_u32(global2.a.a.xw, global2.a.a.zx) % vec2<u32>(32u))), 1u));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-315f, global1.c.x, -694f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.b), vec3<f32>(arg_1, 1000f, -1446f)))));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: i32) -> vec4<bool> {
    let var_0 = Struct_1((firstLeadingBit(global2.a.a) | _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(17118u, 45379u, 235u, 17723u)), vec4<u32>(global2.a.a.x, arg_1.d, 97974u, 12134u))) ^ _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(global2.a.a, vec4<u32>(51897u, 0u, global2.a.a.x, arg_0)), ~global2.a.a, ~global2.a.a), vec4<u32>(_wgslsmith_clamp_u32(1u, 60385u, 75464u), ~89578u, 5378u, abs(arg_0))));
    global2 = Struct_3(global2.a, arg_2, true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-473f, global2.d.x, global2.d.x)))));
    let var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(1697u, arg_0, arg_1.d), vec3<u32>(48034u, _wgslsmith_mod_u32(min(4294967295u, 17652u), 0u | arg_0), _wgslsmith_mult_u32(4294967295u | global2.a.a.x, ~arg_1.d)), vec3<u32>(firstLeadingBit(arg_0), global2.a.a.x, _wgslsmith_clamp_u32(28390u, arg_0, 4294967295u)) | vec3<u32>(~global2.a.a.x, ~22105u, select(var_0.a.x, arg_1.d, global2.c))) >> (global2.a.a.zzw % vec3<u32>(32u));
    global1 = arg_1;
    var var_2 = Struct_1(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, 4294967295u, ~34649u, _wgslsmith_sub_u32(80556u, var_1.x)), _wgslsmith_mult_vec4_u32(global2.a.a << (vec4<u32>(var_1.x, global2.a.a.x, global2.a.a.x, arg_0) % vec4<u32>(32u)), min(var_0.a, global2.a.a)))));
    return select(vec4<bool>(false, true, any(vec2<bool>(global2.c, 0i <= arg_2)), !(global2.d.x > -1445f)), select(!select(select(vec4<bool>(global2.c, global2.c, global2.c, false), vec4<bool>(global2.c, true, global2.c, global2.c), true), select(vec4<bool>(global2.c, global2.c, global2.c, global2.c), vec4<bool>(false, true, true, false), global2.c), any(vec2<bool>(false, global2.c))), !vec4<bool>(global2.c, global2.c, global2.c, true), global2.c), select(!select(!vec4<bool>(global2.c, global2.c, false, true), !vec4<bool>(true, global2.c, false, false), select(vec4<bool>(global2.c, global2.c, global2.c, global2.c), vec4<bool>(global2.c, global2.c, true, false), vec4<bool>(false, true, global2.c, true))), vec4<bool>(true, _wgslsmith_mult_i32(arg_2, 2147483647i) <= select(-30199i, 1i, true), all(select(vec4<bool>(global2.c, true, false, true), vec4<bool>(true, false, global2.c, false), vec4<bool>(true, false, global2.c, global2.c))), all(select(vec2<bool>(global2.c, false), vec2<bool>(false, true), false))), vec4<bool>((i32(-1i) * -13108i) <= -global0.x, global2.c, any(!vec2<bool>(false, global2.c)), false)));
}

fn func_2() -> Struct_3 {
    let var_0 = -6955i;
    var var_1 = !func_4(1u, Struct_2(global0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_2(global1.a, global2.d, vec3<f32>(global1.c.x, 2768f, global3[_wgslsmith_index_u32(global1.d, 4u)]), 3536u, vec3<f32>(-396f, global3[_wgslsmith_index_u32(4294967295u, 4u)], -1159f)), global2.d.x, Struct_1(global2.a.a)))), _wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, global1.d), 1u), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global2.d), vec3<f32>(1095f, global2.d.x, global1.b.x), global2.c))), select(2147483647i, global1.a, true));
    var var_2 = global2.a.a.zzy;
    global2 = Struct_3(Struct_1(reverseBits(global2.a.a)), ~25081i, func_4(_wgslsmith_dot_vec4_u32(firstTrailingBit(global2.a.a), _wgslsmith_mult_vec4_u32(global2.a.a, global2.a.a | vec4<u32>(global1.d, 50141u, var_2.x, 34131u))), Struct_2(global1.a, vec3<f32>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global2.a.a.x), vec2<u32>(global1.d, 1u)), 4u)], global3[_wgslsmith_index_u32(global2.a.a.x >> (0u % 32u), 4u)], 360f), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(global1.b * vec3<f32>(-469f, -749f, 483f)))), abs(~0u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.d - global2.d))), 130865i).x, global2.d);
    var var_3 = select(select(vec4<bool>(true, var_1.x, any(vec4<bool>(var_1.x, false, var_1.x, global2.c)), var_1.x), vec4<bool>(1f > _wgslsmith_f_op_vec3_f32(func_3(Struct_2(global1.a, vec3<f32>(global2.d.x, global1.c.x, global2.d.x), vec3<f32>(575f, -1534f, -652f), global1.d, vec3<f32>(1598f, global2.d.x, global1.c.x)), 403f, global2.a)).x, all(var_1.xx), false, any(select(var_1.yzz, var_1.wxz, true))), true), !vec4<bool>(true | (global2.d.x <= 1022f), _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(var_2.x, 4u)], global2.d.x)) > _wgslsmith_f_op_f32(-534f - global1.c.x), global2.c, all(select(var_1.zw, var_1.zz, false))), _wgslsmith_sub_i32(global2.b, _wgslsmith_mod_i32(max(u_input.a.x, 22315i), _wgslsmith_sub_i32(var_0, global2.b))) < ~(-46884i));
    return Struct_3(global2.a, ~u_input.a.x, global2.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -793f), 3604f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global1.c.x)))))));
}

fn func_1(arg_0: vec2<bool>, arg_1: u32) -> vec4<f32> {
    global2 = func_2();
    global0 = vec4<i32>(u_input.a.x, 0i, -17872i, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(~0i, -2147483647i), global1.a, global1.a, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-1i, 27081i, global1.a), u_input.a.x)), ~(-vec4<i32>(2147483647i, -2223i, global1.a, global1.a))));
    let var_0 = -u_input.a.zy;
    var var_1 = vec3<i32>(global0.x, -var_0.x, -1i) | u_input.a;
    let var_2 = Struct_2(-1i, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(global2.d.x, _wgslsmith_div_f32(global3[_wgslsmith_index_u32(4294967295u, 4u)], global3[_wgslsmith_index_u32(1u, 4u)])), global3[_wgslsmith_index_u32(1u, 4u)], _wgslsmith_f_op_f32(-global1.e.x)))), global2.d, ~45378u, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-1453f, _wgslsmith_f_op_f32(-global2.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.d.x + 260f) * global1.b.x)), global3[_wgslsmith_index_u32(global1.d, 4u)], global3[_wgslsmith_index_u32(38087u, 4u)]));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-386f)), _wgslsmith_f_op_f32(-1205f - 927f))), -1244f, global1.e.x, _wgslsmith_f_op_f32(var_2.e.x - _wgslsmith_f_op_f32(f32(-1f) * -252f))))) + vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, global3[_wgslsmith_index_u32(arg_1, 4u)])) * global1.c.x))), _wgslsmith_f_op_f32(-1615f + global2.d.x), _wgslsmith_f_op_f32(944f * 532f), global2.d.x));
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: vec4<f32>) -> vec4<i32> {
    global2 = func_2();
    let var_0 = _wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_vec3_f32(func_3(Struct_2(global2.b, vec3<f32>(global2.d.x, _wgslsmith_f_op_vec3_f32(func_3(Struct_2(-17944i, vec3<f32>(arg_2.x, arg_2.x, -2028f), global1.e, 52910u, vec3<f32>(-182f, -1286f, 1386f)), -492f, Struct_1(global2.a.a))).x, _wgslsmith_f_op_f32(select(1518f, 341f, global2.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(467f, global1.c.x, 649f) - vec3<f32>(539f, arg_2.x, -2186f))), 10026u, global1.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global2.a.a.x, 4u)] - arg_0) - _wgslsmith_f_op_vec3_f32(func_3(Struct_2(-21355i, global1.e, vec3<f32>(-253f, arg_0, 490f), 4294967295u, arg_2.wzy), arg_0, Struct_1(vec4<u32>(1u, 77646u, global2.a.a.x, global1.d)))).x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * _wgslsmith_f_op_f32(-867f - arg_2.x))), Struct_1(vec4<u32>(global2.a.a.x, global2.a.a.x, 25069u, global2.a.a.x) & global2.a.a))).x));
    return vec4<i32>(_wgslsmith_mult_i32(-34267i, max(~u_input.a.x, 2147483647i)), -1i, 2147483647i, 0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.x;
    global0 = vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(func_5(_wgslsmith_f_op_f32(f32(-1f) * -630f), -2147483647i, _wgslsmith_f_op_vec4_f32(func_1(vec2<bool>(true, false), 72765u))), -(vec4<i32>(0i, u_input.a.x, global2.b, -2147483647i) >> (vec4<u32>(4294967295u, 0u, global1.d, 1u) % vec4<u32>(32u))));
    global3 = array<f32, 4>();
    var var_1 = !vec3<bool>(func_2().c, false, global2.c);
    let var_2 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(-1243f)), global2.d.x, global1.b.x, 4704i);
}

