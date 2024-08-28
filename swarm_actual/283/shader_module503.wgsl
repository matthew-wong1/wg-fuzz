struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: vec2<i32>,
    d: Struct_2,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_5 = Struct_5(vec3<f32>(1874f, 1202f, -1274f));

var<private> global2: array<Struct_5, 20> = array<Struct_5, 20>(Struct_5(vec3<f32>(-595f, 1000f, 1000f)), Struct_5(vec3<f32>(-823f, 1449f, -2178f)), Struct_5(vec3<f32>(-1566f, 1846f, 388f)), Struct_5(vec3<f32>(479f, 363f, -1260f)), Struct_5(vec3<f32>(1571f, -569f, -348f)), Struct_5(vec3<f32>(514f, -623f, -444f)), Struct_5(vec3<f32>(861f, -1000f, -353f)), Struct_5(vec3<f32>(1026f, -1695f, 1045f)), Struct_5(vec3<f32>(789f, -322f, 528f)), Struct_5(vec3<f32>(-1372f, -713f, 343f)), Struct_5(vec3<f32>(1230f, -1275f, 243f)), Struct_5(vec3<f32>(1393f, -1849f, 1235f)), Struct_5(vec3<f32>(-529f, -929f, 475f)), Struct_5(vec3<f32>(200f, -1721f, -760f)), Struct_5(vec3<f32>(1000f, 450f, 2458f)), Struct_5(vec3<f32>(-481f, -234f, 728f)), Struct_5(vec3<f32>(2973f, 1000f, -1000f)), Struct_5(vec3<f32>(-807f, 1022f, -183f)), Struct_5(vec3<f32>(-1529f, 692f, 529f)), Struct_5(vec3<f32>(1796f, 1000f, 437f)));

var<private> global3: array<Struct_1, 29>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: u32, arg_3: vec3<bool>) -> vec3<bool> {
    global2 = array<Struct_5, 20>();
    let var_0 = -123i ^ u_input.b.x;
    var var_1 = u_input.c.x & _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(_wgslsmith_clamp_u32(u_input.c.x, 57014u, u_input.c.x), _wgslsmith_mod_u32(1u, arg_2))), ~vec2<u32>(u_input.c.x, abs(arg_2)));
    var var_2 = global3[_wgslsmith_index_u32(33654u, 29u)];
    var var_3 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(993f, -618f))) >= global1.a.x);
    return select(arg_3, select(select(arg_3, select(vec3<bool>(arg_3.x, arg_3.x, false), vec3<bool>(false, true, false), true), select(select(vec3<bool>(arg_1.b.a, false, arg_3.x), arg_3, arg_3.x), !arg_3, select(vec3<bool>(arg_1.b.a, true, false), vec3<bool>(true, arg_1.b.a, arg_0), arg_3.x))), !(!arg_3), any(select(vec4<bool>(arg_1.b.a, arg_3.x, arg_3.x, arg_1.b.a), vec4<bool>(arg_3.x, true, false, arg_1.b.a), vec4<bool>(arg_1.b.a, true, true, false))) & arg_0), !(!arg_3));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_5, arg_2: i32) -> u32 {
    var var_0 = _wgslsmith_div_i32(arg_2, arg_2);
    let var_1 = vec4<u32>(u_input.c.x, u_input.c.x, 1u, countOneBits(u_input.c.x) & 4294967295u);
    global0 = arg_0.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(157f, _wgslsmith_f_op_f32(-arg_1.a.x), global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -187f) + arg_1.a.x) - _wgslsmith_f_op_f32(max(arg_1.a.x, _wgslsmith_f_op_f32(step(arg_1.a.x, -311f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -265f), _wgslsmith_f_op_f32(round(global1.a.x)))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_1.a.x)), -1593f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(965f + global1.a.x)))));
    var var_3 = Struct_4(~_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(11342u, u_input.c.x), ~4294967295u, _wgslsmith_mod_u32(4294967295u, 1u), max(126484u, 0u)), firstLeadingBit(var_1)), select(!select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), select(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, true, false, true), vec4<bool>(true, arg_0.x, false, true)), select(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(false, false, arg_0.x, true), arg_0.x)), !select(!vec4<bool>(true, false, true, arg_0.x), vec4<bool>(true, arg_0.x, true, arg_0.x), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), false), u_input.b.xx, Struct_2(true));
    return ~var_3.a.x;
}

fn func_2() -> i32 {
    let var_0 = vec2<u32>(max(func_4(func_3(true, Struct_3(vec4<f32>(798f, global1.a.x, 1000f, global1.a.x), Struct_2(false)), _wgslsmith_dot_vec3_u32(vec3<u32>(74799u, 4294967295u, 66358u), vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), global2[_wgslsmith_index_u32(~48227u, 20u)], -u_input.a << (~u_input.c.x % 32u)), 4294967295u), 0u);
    let var_1 = Struct_2(!all(vec3<bool>(true, true, true)) && all(vec4<bool>(false, true, true, all(vec4<bool>(true, false, false, false)))));
    var var_2 = abs(vec4<u32>(var_0.x, var_0.x, ~1u, 4294967295u));
    var var_3 = _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(~(vec4<i32>(-12252i, u_input.a, u_input.b.x, -26920i) << (~vec4<u32>(var_0.x, 13581u, var_2.x, 46732u) % vec4<u32>(32u))), abs(countOneBits(~vec4<i32>(-96990i, 38018i, u_input.a, u_input.b.x)))), abs(abs(_wgslsmith_div_vec4_i32(select(vec4<i32>(u_input.b.x, -25385i, u_input.a, -9340i), vec4<i32>(12394i, u_input.b.x, -11646i, u_input.a), vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a)), vec4<i32>(2754i, -1i, u_input.a, u_input.a)))));
    var var_4 = u_input.a;
    return var_3.x;
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_2 {
    var var_0 = arg_1;
    var var_1 = -_wgslsmith_dot_vec4_i32(vec4<i32>(func_2(), ~u_input.a, (i32(-1i) * -2147483647i) >> ((u_input.c.x << (u_input.c.x % 32u)) % 32u), -1694i), max(select(vec4<i32>(-33441i, 12677i, -21517i, u_input.b.x) | vec4<i32>(u_input.b.x, -27229i, -4905i, 2147483647i), ~vec4<i32>(u_input.b.x, u_input.a, -23153i, u_input.a), true), vec4<i32>(4758i, -1i, 1i, -20917i)));
    var var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(959f, -254f, arg_0, -446f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, 946f, 458f, 291f), vec4<f32>(global1.a.x, 354f, 843f, -362f), true)))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-692f, -359f, global1.a.x, 1000f)) - vec4<f32>(1514f, -1000f, global1.a.x, arg_0))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(340f, 428f, -1010f, -1771f)), vec4<f32>(global1.a.x, 882f, -730f, -1363f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1523f, global1.a.x, 353f, arg_0)), vec4<bool>(true, u_input.c.x > u_input.c.x, true == arg_1, arg_1))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-993f, _wgslsmith_f_op_f32(trunc(arg_0)), global1.a.x, global1.a.x) + vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(arg_0 + 1703f), _wgslsmith_f_op_f32(trunc(global1.a.x)))))));
    var var_3 = global3[_wgslsmith_index_u32(~(~u_input.c.x), 29u)];
    let var_4 = _wgslsmith_sub_i32(select(u_input.a, u_input.b.x, false), 31650i);
    return Struct_2(-2147483647i >= ~min(-u_input.b.x, u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(global1.a);
    let var_1 = 0i;
    global3 = array<Struct_1, 29>();
    let var_2 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, 1000f) + vec4<f32>(312f, 508f, var_0.a.x, 550f))))), vec4<f32>(_wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(-var_0.a.x)), global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -139f) + _wgslsmith_f_op_f32(floor(global1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.a.x))))), Struct_2(!(!(var_1 <= 22100i))));
    var var_3 = var_2;
    global0 = !(!(_wgslsmith_mult_i32(-2147483647i, var_1) >= -1i) & (var_1 <= ~_wgslsmith_sub_i32(u_input.a, -28675i)));
    let var_4 = Struct_3(_wgslsmith_f_op_vec4_f32(var_2.a - var_3.a), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) * 1000f), var_3.b.a));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.xy);
}

