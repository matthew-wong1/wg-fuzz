struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: vec3<i32>,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> i32 {
    var var_0 = -1i & _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(select(vec4<i32>(arg_2.x, arg_2.x, 0i, arg_2.x), vec4<i32>(arg_2.x, 1i, -45711i, arg_2.x), false) >> (vec4<u32>(arg_3.c.x, arg_3.a.x, 0u, 4294967295u) % vec4<u32>(32u)), ~(-vec4<i32>(arg_2.x, 1i, -50508i, arg_2.x))), -firstTrailingBit(vec4<i32>(arg_2.x, arg_2.x, -2147483647i, -1i)));
    var_0 = max(i32(-1i) * -2147483647i, -30567i);
    var_0 = arg_2.x;
    global0 = _wgslsmith_dot_vec2_u32(~max(arg_3.c.zz ^ arg_3.d.zy, _wgslsmith_sub_vec2_u32(arg_3.c.xx, vec2<u32>(4294967295u, 14285u))), _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(~arg_1.a.zx, vec2<u32>(arg_1.b, 4294967295u)), select(vec2<u32>(27448u, 13744u), vec2<u32>(13226u, 0u), true || arg_0))) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, _wgslsmith_mult_u32(10551u, _wgslsmith_dot_vec3_u32(arg_1.d, arg_3.d)), abs(arg_3.d.x), 4294967295u), vec4<u32>(53433u, ~(~9974u), ~abs(46886u), ~4294967295u));
    var_0 = arg_2.x;
    return _wgslsmith_div_i32(_wgslsmith_add_i32(-2147483647i, arg_2.x), -(_wgslsmith_add_i32(arg_2.x, arg_2.x) ^ arg_2.x));
}

fn func_2(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_2) -> i32 {
    var var_0 = arg_2.c & -vec3<i32>(~arg_2.c.x, 30859i, func_3(false, arg_2.d, vec3<i32>(arg_2.c.x, 5171i, 2147483647i), Struct_1(vec3<u32>(4294967295u, 3538u, u_input.a), 1u, vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), vec3<u32>(arg_2.d.a.x, 4294967295u, 1u))));
    var_0 = arg_2.c;
    var var_1 = Struct_2(!(false || arg_0), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.e.x), _wgslsmith_f_op_f32(284f * 739f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.x * arg_2.e.x))), 1304f), vec3<i32>(-24779i, ~(var_0.x >> (99967u % 32u)), 1i), arg_2.d, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.e.x, 744f), arg_2.e.x), arg_2.b.x, _wgslsmith_f_op_f32(-arg_2.b.x)))));
    let var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, firstTrailingBit(_wgslsmith_dot_vec3_i32(arg_2.c, vec3<i32>(arg_1.x, var_1.c.x, 2147483647i))), -_wgslsmith_add_i32(arg_1.x, ~arg_1.x), 2147483647i), arg_1);
    let var_3 = Struct_1(firstTrailingBit(var_1.d.c.yyw), 76461u, ~(~arg_2.d.c << (_wgslsmith_sub_vec4_u32(arg_2.d.c, vec4<u32>(4294967295u, 4294967295u, u_input.a, 4294967295u)) % vec4<u32>(32u))) >> (abs(~(vec4<u32>(47242u, arg_2.d.d.x, u_input.a, arg_2.d.a.x) >> (var_1.d.c % vec4<u32>(32u)))) % vec4<u32>(32u)), _wgslsmith_div_vec3_u32(arg_2.d.d >> (~(vec3<u32>(u_input.a, 1u, u_input.a) ^ arg_2.d.d) % vec3<u32>(32u)), arg_2.d.d));
    return ~countOneBits(25986i);
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec3<i32>) -> vec3<i32> {
    global0 = reverseBits(u_input.a);
    global0 = ~(~0u) >> (u_input.a % 32u);
    global0 = 0u;
    return arg_2;
}

fn func_1() -> u32 {
    let var_0 = Struct_2(any(!select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), true)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -127f), 718f, _wgslsmith_f_op_f32(f32(-1f) * -948f)), func_4(-(func_2(false, vec4<i32>(32412i, 0i, 1i, 0i), Struct_2(true, vec3<f32>(884f, -229f, 1023f), vec3<i32>(0i, 1i, 9264i), Struct_1(vec3<u32>(68153u, 1u, 16446u), 30581u, vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), vec3<u32>(u_input.a, 36136u, u_input.a)), vec3<f32>(-976f, -1444f, 1294f))) & -2147483647i), 1i, ~countOneBits(~vec3<i32>(-7358i, -35886i, 2147483647i))), Struct_1(min(max(vec3<u32>(u_input.a, 0u, 49870u), ~vec3<u32>(4584u, 343u, u_input.a)), vec3<u32>(1u, 1u, 1u)), 15814u, vec4<u32>(u_input.a, ~u_input.a | 0u, ~u_input.a, ~_wgslsmith_div_u32(u_input.a, u_input.a)), vec3<u32>(0u, 71248u, ~(u_input.a ^ 32172u))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1519f, _wgslsmith_f_op_f32(trunc(-237f)), 1003f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1242f, -609f, -543f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-153f, -246f, 621f) * vec3<f32>(723f, 607f, -549f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 606f, -753f), vec3<f32>(-774f, -693f, -219f), vec3<bool>(false, true, false))), vec3<f32>(1f, 1f, 1f), true)))))));
    var var_1 = Struct_2(!(_wgslsmith_div_f32(var_0.e.x, 660f) != var_0.b.x), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.b.x)), _wgslsmith_f_op_f32(round(var_0.b.x)), 1326f) + _wgslsmith_f_op_vec3_f32(-var_0.b)))), var_0.c, var_0.d, vec3<f32>(1513f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-223f)) - 241f))));
    var var_2 = select(!vec3<bool>(var_1.a, !(var_1.c.x < 1i), all(!vec3<bool>(var_1.a, true, var_1.a))), select(select(select(!vec3<bool>(var_1.a, var_0.a, var_1.a), select(vec3<bool>(var_1.a, true, var_1.a), vec3<bool>(var_0.a, var_1.a, var_0.a), var_0.a), var_0.d.d.x <= var_1.d.c.x), !vec3<bool>(true, true, var_0.a), select(!vec3<bool>(var_0.a, false, false), select(vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(false, var_0.a, false), vec3<bool>(false, false, true)), all(vec4<bool>(true, var_1.a, var_1.a, true)))), select(select(vec3<bool>(var_1.a, var_0.a, var_1.a), select(vec3<bool>(var_1.a, var_0.a, true), vec3<bool>(var_0.a, var_1.a, var_1.a), var_1.a), true), vec3<bool>(all(vec2<bool>(var_1.a, var_1.a)), !var_0.a, var_0.b.x > -834f), any(!vec4<bool>(false, true, var_0.a, true))), select(select(vec3<bool>(var_1.a, false, false), !vec3<bool>(var_0.a, true, var_0.a), !vec3<bool>(var_1.a, var_0.a, false)), !(!vec3<bool>(false, var_1.a, var_0.a)), all(select(vec4<bool>(var_1.a, var_1.a, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, var_1.a, false))))), var_0.a);
    let var_3 = var_1.d.c << (vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(55914u, 69922u), ~vec2<u32>(var_1.d.a.x, var_1.d.b)), var_0.d.d.x, var_0.d.a.x & min(0u, min(69357u, var_1.d.a.x))) % vec4<u32>(32u));
    var var_4 = any(!(!(!vec4<bool>(var_1.a, var_2.x, var_0.a, true))));
    return _wgslsmith_div_u32(_wgslsmith_sub_u32(var_0.d.a.x | var_3.x, u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(var_3.x, var_1.d.c.x), ~1u), u_input.a | 18240u, _wgslsmith_add_u32(~0u, ~var_0.d.c.x)), vec3<u32>(var_0.d.a.x, 8688u, abs(_wgslsmith_mod_u32(3922u, u_input.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, func_1(), min(4294967295u, u_input.a)), vec3<u32>(u_input.a, abs(~u_input.a), 22007u));
    global0 = select(_wgslsmith_dot_vec4_u32(abs(~(~vec4<u32>(u_input.a, 37542u, 104548u, u_input.a))), max(abs(vec4<u32>(u_input.a, 4853u, 1470u, u_input.a)), ~vec4<u32>(2634u, u_input.a, u_input.a, 1u) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(40531u, 10923u, 54321u, 22978u), vec4<u32>(19383u, u_input.a, 0u, u_input.a)) % vec4<u32>(32u)))), ~((countOneBits(u_input.a) >> (25611u % 32u)) | ~(~0u)), all(vec4<bool>(true, true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(18098u, ~(~(~vec2<u32>(1u, 1u))), 1u);
}

