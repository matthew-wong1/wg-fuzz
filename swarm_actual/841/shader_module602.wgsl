struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: Struct_3,
    d: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: bool) -> vec3<bool> {
    let var_0 = 1410f;
    var var_1 = ~(reverseBits(vec4<i32>(firstLeadingBit(1i), firstTrailingBit(arg_1.a.x), ~arg_1.a.x, _wgslsmith_sub_i32(-2147483647i, arg_1.a.x))) << (~abs(vec4<u32>(53741u, arg_0.x, 1u, 92988u)) % vec4<u32>(32u)));
    var var_2 = 29170i;
    let var_3 = 1u;
    var var_4 = _wgslsmith_dot_vec4_i32(-abs(vec4<i32>(var_1.x, -1i, max(-2147483647i, u_input.c.x), _wgslsmith_mult_i32(var_1.x, 34507i))), select(select(_wgslsmith_div_vec4_i32(abs(u_input.a), vec4<i32>(var_1.x, u_input.a.x, var_1.x, -44728i) ^ vec4<i32>(arg_1.a.x, arg_1.a.x, u_input.a.x, arg_1.a.x)), ~u_input.a, !arg_2), u_input.a, arg_2));
    return vec3<bool>(!all(vec4<bool>(select(global0.x, global0.x, arg_2), global0.x, arg_1.a.x <= var_1.x, true)), arg_2, !(~arg_0.x >= 36992u));
}

fn func_2(arg_0: f32, arg_1: Struct_5, arg_2: u32, arg_3: Struct_1) -> i32 {
    global0 = !select(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, global0.x, global0.x))), select(!vec3<bool>(global0.x, global0.x, true), func_3(firstTrailingBit(u_input.b), Struct_2(u_input.c, u_input.e.x, 0u), !global0.x), func_3(abs(u_input.b), Struct_2(vec3<i32>(26320i, arg_1.b, u_input.a.x), 4294967295u, 1u), true)), global0.x);
    let var_0 = Struct_4(~(u_input.c.zz & (_wgslsmith_sub_vec2_i32(u_input.a.yy, u_input.c.yx) >> (~vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)))), select(~u_input.b.xzw, (u_input.e.xxy << (_wgslsmith_mult_vec3_u32(vec3<u32>(14711u, 0u, 4294967295u), u_input.b.yxx) % vec3<u32>(32u))) | u_input.b.wzz, true && (~16285i != ~u_input.a.x)), Struct_3(_wgslsmith_f_op_vec2_f32(select(arg_3.a.xy, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_3.b.yw))), all(vec4<bool>(true, true, true, true)))), countOneBits(arg_1.b & ~arg_1.b), arg_3, Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, -665f, -1789f, arg_1.a))), arg_3.b), Struct_1(_wgslsmith_f_op_vec4_f32(arg_3.b - _wgslsmith_f_op_vec4_f32(arg_3.b - vec4<f32>(arg_0, 285f, 1219f, 1481f))), arg_3.a)), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3.a.xx))), u_input.a.x, Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 508f, arg_3.a.x, 594f)), vec4<f32>(-739f, -1579f, 450f, arg_3.b.x)), _wgslsmith_div_vec4_f32(arg_3.a, _wgslsmith_div_vec4_f32(arg_3.b, vec4<f32>(-950f, arg_0, -1761f, arg_0)))), arg_3, arg_3));
    global0 = select(select(select(vec3<bool>(false, global0.x, true), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, true, true), !vec3<bool>(global0.x, true, global0.x)), any(select(vec3<bool>(true, false, global0.x), vec3<bool>(false, global0.x, global0.x), vec3<bool>(true, false, global0.x)))), func_3(~vec4<u32>(0u, 4294967295u, u_input.b.x, 49421u), Struct_2(max(vec3<i32>(34669i, u_input.a.x, u_input.c.x), u_input.a.xwx), _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(var_0.b.x, 35748u, var_0.b.x, var_0.b.x)), ~1u), false), func_3(u_input.b, Struct_2(-vec3<i32>(arg_1.b, var_0.a.x, var_0.a.x), 15341u, reverseBits(21006u)), true)), select(vec3<bool>(!(!global0.x), global0.x, false), !vec3<bool>(global0.x || global0.x, false, any(vec4<bool>(global0.x, true, global0.x, global0.x))), !all(func_3(vec4<u32>(u_input.e.x, 1u, 1u, 1u), Struct_2(arg_1.c, arg_2, arg_2), false))), -475f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-390f, _wgslsmith_f_op_f32(arg_0 - -235f)))));
    let var_1 = 1u;
    global0 = vec3<bool>(any(!func_3(u_input.b, Struct_2(vec3<i32>(u_input.a.x, 2147483647i, 6112i), 1u, var_1), !global0.x)), !global0.x, all(global0.xy));
    return 1i;
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: vec4<u32>) -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(986f, arg_0, 1000f, arg_1.x))))), vec4<f32>(1337f, 404f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, -1001f)) - arg_0), _wgslsmith_f_op_f32(-1413f * _wgslsmith_div_f32(arg_1.x, -1865f)), func_2(-708f, Struct_5(arg_0, -2371i, u_input.c), u_input.b.x, Struct_1(vec4<f32>(arg_0, 2207f, arg_0, arg_1.x), vec4<f32>(1488f, 1852f, -1000f, 748f))) != (i32(-1i) * -38238i))), 1160f));
    global0 = select(select(vec3<bool>(!(global0.x & global0.x), any(vec3<bool>(true, global0.x, global0.x)), global0.x), select(select(select(vec3<bool>(true, false, global0.x), vec3<bool>(true, false, global0.x), vec3<bool>(false, global0.x, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, global0.x, global0.x), global0.x), func_3(arg_2, Struct_2(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), 0u, u_input.d), false)), !(!vec3<bool>(global0.x, false, global0.x)), select(vec3<bool>(true, false, global0.x), !vec3<bool>(false, global0.x, false), vec3<bool>(false, true, true))), any(vec3<bool>(true, true, global0.x))), select(!func_3(vec4<u32>(4294967295u, u_input.e.x, 7038u, u_input.e.x), Struct_2(vec3<i32>(4588i, -13804i, 2147483647i), 1u, 0u), true), select(vec3<bool>(global0.x & true, global0.x && false, !global0.x), select(!vec3<bool>(global0.x, global0.x, false), vec3<bool>(false, true, global0.x), func_3(u_input.e, Struct_2(vec3<i32>(u_input.a.x, u_input.c.x, u_input.a.x), 0u, 19690u), global0.x)), select(vec3<bool>(global0.x, false, false), !vec3<bool>(global0.x, global0.x, global0.x), true)), select(global0.x, global0.x & any(vec4<bool>(false, global0.x, global0.x, false)), true)), vec3<bool>(global0.x && global0.x, true, !global0.x & true));
    global0 = !(!select(select(!vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, false, true), !vec3<bool>(global0.x, true, global0.x)), select(vec3<bool>(true, true, false), vec3<bool>(global0.x, global0.x, global0.x), !global0.x), _wgslsmith_f_op_f32(-var_0.a.x) == _wgslsmith_f_op_f32(-arg_1.x)));
    let var_1 = select(_wgslsmith_add_vec2_i32(u_input.c.xy >> (~vec2<u32>(u_input.b.x, 4294967295u) % vec2<u32>(32u)), ~vec2<i32>(u_input.a.x, u_input.c.x)) >> (~firstLeadingBit(~vec2<u32>(u_input.d, 5586u)) % vec2<u32>(32u)), vec2<i32>(u_input.a.x, u_input.c.x), global0.yy);
    var var_2 = vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, arg_1.x, false)) + _wgslsmith_f_op_f32(-var_0.a.x)))))), -427f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_1.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(609f - arg_1.x) - _wgslsmith_f_op_f32(floor(-716f)))), var_0.a.x)));
    return select(select(!(!(!vec4<bool>(false, false, global0.x, global0.x))), select(!(!vec4<bool>(true, global0.x, global0.x, global0.x)), !(!vec4<bool>(global0.x, global0.x, true, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(global0.x, false, global0.x, global0.x), !vec4<bool>(global0.x, global0.x, true, false))), vec4<bool>(any(func_3(vec4<u32>(u_input.e.x, 51856u, arg_2.x, 0u), Struct_2(u_input.a.zzz, u_input.e.x, u_input.e.x), global0.x)), false, global0.x || all(vec2<bool>(false, global0.x)), global0.x)), !vec4<bool>(global0.x, global0.x, any(select(vec4<bool>(global0.x, true, false, false), vec4<bool>(true, global0.x, false, true), global0.x)), true), select(select(!(!vec4<bool>(true, global0.x, false, global0.x)), select(select(vec4<bool>(false, true, global0.x, true), vec4<bool>(global0.x, global0.x, global0.x, true), false), select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(true, false, false, global0.x), vec4<bool>(false, true, true, global0.x)), true), !vec4<bool>(global0.x, global0.x, global0.x, global0.x)), select(select(select(vec4<bool>(false, false, true, global0.x), vec4<bool>(true, global0.x, global0.x, false), false), !vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(false, false, true, true)), !vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(true, true, true, true)), select(select(select(vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x)), !vec4<bool>(global0.x, true, false, global0.x), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), false)), vec4<bool>(arg_2.x < u_input.b.x, global0.x && false, global0.x || global0.x, global0.x), global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32(u_input.c.x, u_input.c.x);
    global0 = vec3<bool>(false, true, true);
    var var_1 = ~(~(~(~0u)) & (u_input.e.x << (abs(~15214u) % 32u)));
    var var_2 = !any(select(vec4<bool>(false, any(vec4<bool>(false, global0.x, false, true)), global0.x, u_input.a.x == 20397i), func_1(1102f, vec3<f32>(-1553f, 502f, -395f), u_input.b), select(vec4<bool>(false, true, global0.x, true), select(vec4<bool>(false, global0.x, false, false), vec4<bool>(global0.x, true, global0.x, true), global0.x), func_3(u_input.e, Struct_2(u_input.a.zxz, u_input.e.x, 1u), true).x)));
    var var_3 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1871f * -1144f)), -52859i, -_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(u_input.c.x, u_input.a.x), -u_input.a.x, 0i), vec3<i32>(1i, abs(u_input.c.x), u_input.a.x)));
    let var_4 = min(var_3.c, abs(~u_input.a.zzz));
    var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3.a))))) > var_3.a;
    global0 = vec3<bool>(true, true, true);
    let var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c, u_input.e, _wgslsmith_div_u32(abs(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, u_input.d, u_input.d), u_input.b.wyy), u_input.e.yww)), firstLeadingBit(38405u)), vec2<f32>(_wgslsmith_div_f32(-979f, var_3.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a * var_3.a))), u_input.b.ywz);
}

