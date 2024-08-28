struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: bool;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: Struct_3) -> i32 {
    global1 = arg_0.b.b.x;
    return _wgslsmith_mult_i32(-22962i, ~_wgslsmith_dot_vec4_i32(select(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, arg_0.b.a.b.x, 17473i), vec4<i32>(arg_0.c.x, -18508i, 16177i, -21874i)), -vec4<i32>(arg_0.c.x, 6861i, 2147483647i, u_input.a.x), false), -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -38498i) & -vec4<i32>(arg_0.c.x, arg_0.b.a.a, arg_0.b.a.b.x, -4659i)));
}

fn func_3(arg_0: i32, arg_1: bool) -> Struct_1 {
    var var_0 = abs(~(~vec2<u32>(abs(19072u), ~82044u)));
    var var_1 = Struct_4(arg_0, Struct_2(Struct_1(0i >> (1u % 32u), vec3<i32>(1i, 12918i, _wgslsmith_div_i32(-12873i, -2147483647i)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(4206u, 28830u, var_0.x, var_0.x) >> (vec4<u32>(var_0.x, var_0.x, 4294967295u, var_0.x) % vec4<u32>(32u)), ~vec4<u32>(var_0.x, var_0.x, 74859u, 0u)), vec4<f32>(_wgslsmith_f_op_f32(ceil(615f)), _wgslsmith_div_f32(784f, 193f), _wgslsmith_div_f32(979f, -1316f), _wgslsmith_div_f32(1118f, -525f))), !vec3<bool>(true, !arg_1, arg_1)), Struct_1(u_input.a.x, -min(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, arg_0, arg_0), vec3<i32>(0i, -1489i, 22165i)), -vec3<i32>(u_input.a.x, -1i, -2147483647i)), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(select(vec4<u32>(var_0.x, 4294967295u, var_0.x, var_0.x), vec4<u32>(70299u, var_0.x, 78870u, 15390u), vec4<bool>(false, arg_1, true, arg_1)), firstTrailingBit(vec4<u32>(var_0.x, 1u, var_0.x, var_0.x))), vec4<u32>(_wgslsmith_sub_u32(var_0.x, 1u), ~var_0.x, ~var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1211f, _wgslsmith_div_f32(-186f, -153f), -1089f, _wgslsmith_div_f32(-258f, 816f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-582f, 1477f, 919f, -758f), vec4<f32>(-335f, 549f, 608f, -1802f))))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-2256f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1705f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1817f), _wgslsmith_f_op_f32(736f - -742f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -122f))))), vec3<i32>(-_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, 6472i, -44838i, arg_0), vec4<i32>(u_input.a.x, 1i, 0i, arg_0)), vec4<i32>(arg_0, arg_0, 13199i, -2147483647i)), ~(-_wgslsmith_sub_i32(-2147483647i, -33696i)), 2147483647i | max(i32(-1i) * -39479i, -arg_0)));
    var var_2 = Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-844f, var_1.b.a.d.x, var_1.d.x) * vec3<f32>(1422f, -1236f, var_1.d.x)), _wgslsmith_f_op_vec3_f32(var_1.d - var_1.c.d.wzz))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d.x, var_1.c.d.x, 1000f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.a.d.x, var_1.b.a.d.x, -779f) * vec3<f32>(-1000f, -1140f, var_1.d.x))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.d.x, -1000f, 742f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1523f, var_1.d.x, -937f) - var_1.d)))), Struct_2(var_1.b.a, !select(var_1.b.b, var_1.b.b, var_1.b.b)), -select(-vec3<i32>(25993i, 2147483647i, 1i), vec3<i32>(u_input.a.x ^ arg_0, firstTrailingBit(1i), var_1.e.x), select(select(vec3<bool>(false, var_1.b.b.x, arg_1), vec3<bool>(arg_1, var_1.b.b.x, true), false), var_1.b.b, arg_1 & arg_1)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-var_1.c.d.yxz);
    var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1044f, var_3.x, -145f) * _wgslsmith_f_op_vec3_f32(var_1.c.d.wzz + vec3<f32>(-1000f, var_2.b.a.d.x, 554f))))), var_1.b, vec3<i32>(arg_0, 1i, u_input.a.x));
    return var_2.b.a;
}

fn func_1() -> vec3<i32> {
    var var_0 = func_3(_wgslsmith_dot_vec2_i32(~(~_wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(2147483647i, u_input.a.x))), -vec2<i32>(func_2(Struct_3(vec3<f32>(-822f, 377f, 688f), Struct_2(Struct_1(-2147483647i, vec3<i32>(-31682i, -2147483647i, u_input.a.x), vec4<u32>(63503u, 59435u, 20366u, 76056u), vec4<f32>(1161f, 419f, 1410f, 145f)), vec3<bool>(false, true, true)), vec3<i32>(-5346i, -16175i, u_input.a.x))), u_input.a.x)), true);
    let var_1 = reverseBits(_wgslsmith_mult_vec3_u32(abs(_wgslsmith_div_vec3_u32(~vec3<u32>(26278u, var_0.c.x, 1u), vec3<u32>(3461u, 0u, var_0.c.x))), var_0.c.wxx << (_wgslsmith_div_vec3_u32(firstLeadingBit(var_0.c.xyz), var_0.c.xzx) % vec3<u32>(32u))));
    var var_2 = !select(!(!any(vec3<bool>(false, false, true))), false, true);
    var var_3 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -292f) * -1352f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(510f * 711f) - 657f))), _wgslsmith_div_f32(var_0.d.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-573f, var_0.d.x, true)), _wgslsmith_f_op_f32(min(var_0.d.x, var_0.d.x)), true))), var_0.d.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, var_0.d.x, 927f, var_0.d.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-711f, 631f, 354f, -998f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-515f, -1353f, -1590f, var_0.d.x))), true)))));
    global1 = true;
    return var_0.b;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: vec2<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(900f - 256f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1488f), _wgslsmith_f_op_f32(-1000f - arg_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1032f - arg_2.x))))));
    var var_1 = true;
    var_0 = _wgslsmith_f_op_vec2_f32(ceil(arg_2));
    let var_2 = func_3(-u_input.a.x, false).d.x;
    var var_3 = arg_0.x;
    return Struct_2(func_3(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-3101i, u_input.a.x), vec2<i32>(-15583i, arg_0.x)) >> (1u % 32u), 33702i), true), vec3<bool>(!(_wgslsmith_div_i32(1i, arg_0.x) != arg_0.x), true, arg_1.x));
}

fn func_5(arg_0: Struct_2) -> Struct_3 {
    var var_0 = Struct_2(func_4((vec3<i32>(-1i) * -vec3<i32>(arg_0.a.b.x, arg_0.a.a, 3049i)) << (min(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, arg_0.a.c.x, arg_0.a.c.x), arg_0.a.c.yzx), vec3<u32>(4783u, 12929u, arg_0.a.c.x)) % vec3<u32>(32u)), !arg_0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.a.d.wx - arg_0.a.d.yw)))).a, arg_0.b);
    var_0 = func_4(var_0.a.b, select(arg_0.b, select(arg_0.b, func_4(vec3<i32>(var_0.a.a, var_0.a.a, var_0.a.b.x), var_0.b, var_0.a.d.ww).b, func_4(abs(vec3<i32>(var_0.a.b.x, u_input.a.x, -1i)), arg_0.b, vec2<f32>(661f, 1858f)).b), vec3<bool>(arg_0.b.x, arg_0.b.x, true)), vec2<f32>(var_0.a.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.a.d.x)) - _wgslsmith_f_op_f32(min(1311f, -821f)))));
    global1 = !((arg_0.b.x && (!arg_0.b.x == !var_0.b.x)) == (any(select(vec4<bool>(false, var_0.b.x, false, arg_0.b.x), vec4<bool>(var_0.b.x, true, arg_0.b.x, var_0.b.x), false)) == (arg_0.a.d.x < _wgslsmith_f_op_f32(round(var_0.a.d.x)))));
    let var_1 = 10736u;
    var var_2 = _wgslsmith_f_op_f32(ceil(504f));
    return Struct_3(vec3<f32>(var_0.a.d.x, -504f, _wgslsmith_div_f32(func_3(_wgslsmith_div_i32(-14472i, u_input.a.x), var_0.b.x & true).d.x, -172f)), func_4(vec3<i32>(u_input.a.x, var_0.a.b.x, abs(-u_input.a.x)), vec3<bool>(!arg_0.b.x & true, 4294967295u <= ~arg_0.a.c.x, select(select(var_0.b.x, var_0.b.x, true), var_0.b.x, !var_0.b.x)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.a.d.x, var_0.a.d.x), vec2<f32>(arg_0.a.d.x, arg_0.a.d.x), vec2<bool>(false, true))))))), arg_0.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(func_1(), select(vec3<bool>(any(vec4<bool>(true, true, true, true)), true, true), vec3<bool>(all(vec3<bool>(true, false, false)), true, true), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(460f, -1282f) - vec2<f32>(642f, -217f))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_0.b.a.d.x)))));
    var_1 = func_4(func_4(_wgslsmith_add_vec3_i32(-var_0.c >> (_wgslsmith_div_vec3_u32(vec3<u32>(var_0.b.a.c.x, 0u, 4294967295u), var_0.b.a.c.wyz) % vec3<u32>(32u)), reverseBits(var_0.b.a.b)), var_0.b.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1366f, 641f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, var_0.a.x) + vec2<f32>(var_0.a.x, -2030f))))).a.b, func_4(-(~var_0.c), var_0.b.b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))).b, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-727f, var_0.a.x))) * _wgslsmith_f_op_vec2_f32(min(var_0.b.a.d.yz, vec2<f32>(-442f, var_0.a.x)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_0.a.zx * vec2<f32>(var_0.b.a.d.x, var_0.b.a.d.x)))))))).a.d.x;
    global1 = (var_0.a.x <= _wgslsmith_f_op_f32(min(2826f, _wgslsmith_f_op_f32(f32(-1f) * -1935f)))) || true;
    var var_2 = -firstLeadingBit(~min(u_input.a, u_input.a) ^ vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), vec2<i32>(var_0.c.x, -19149i)), var_0.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(155f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(var_0.b.a.d.x)), -909f)) * -1403f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.b.a.d.x)) + -1000f), ~(var_0.b.a.c.x | 57134u));
}

