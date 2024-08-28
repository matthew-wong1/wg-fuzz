struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec2<i32>;

var<private> global2: u32 = 0u;

var<private> global3: bool;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> i32 {
    global1 = _wgslsmith_mod_vec2_i32(select(countOneBits(_wgslsmith_sub_vec2_i32(-vec2<i32>(-10399i, global1.x), vec2<i32>(global1.x, -5246i))), vec2<i32>(global0.c.a, _wgslsmith_add_i32(_wgslsmith_mod_i32(global0.c.a, 18015i), global0.c.a | -1i)), !any(vec4<bool>(global0.c.b, global0.b, true, global0.c.b)) || global0.c.b), ~((vec2<i32>(global1.x, global0.c.a) ^ vec2<i32>(global1.x, 2147483647i)) >> (select(vec2<u32>(1u, u_input.c), vec2<u32>(u_input.c, u_input.d), !global0.d.zz) % vec2<u32>(32u))));
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-431f, global0.a.x, 781f, global0.a.x) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(3133f, global0.a.x, global0.a.x, global0.a.x), vec4<f32>(global0.a.x, global0.a.x, 918f, global0.a.x)))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1000f, global0.a.x), global0.a.x, _wgslsmith_f_op_f32(880f * 640f), global0.a.x))));
    let var_1 = u_input.c;
    let var_2 = global0.b;
    global2 = 0u;
    return _wgslsmith_add_i32(max(~(-55669i), global1.x), _wgslsmith_dot_vec4_i32(firstLeadingBit(select(abs(vec4<i32>(global0.c.a, global1.x, global1.x, global1.x)), -vec4<i32>(-1i, global0.c.a, global1.x, global0.c.a), global0.b != global0.d.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(~1i, global1.x, 1i, global1.x), vec4<i32>(1i, 0i, 27068i, _wgslsmith_clamp_i32(global1.x, -95468i, -36501i)))));
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: u32, arg_3: Struct_2) -> vec2<i32> {
    let var_0 = arg_3;
    global2 = ~24243u << (~arg_2 % 32u);
    var var_1 = ~u_input.d;
    var var_2 = _wgslsmith_f_op_f32(round(-1019f));
    var var_3 = !(!(!vec4<bool>(true, -7575i == arg_1.c.a, var_0.a | global0.d.x, !arg_3.a)));
    return _wgslsmith_mod_vec2_i32(vec2<i32>(func_3(), min(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-19778i, -1i, 26012i)), vec3<i32>(11994i, 0i, arg_1.c.a) << (u_input.a.xzw % vec3<u32>(32u))), -18848i)), _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(~_wgslsmith_mult_vec2_i32(vec2<i32>(global1.x, global0.c.a), vec2<i32>(-45983i, global0.c.a)), vec2<i32>(~(-73249i), ~6752i)), vec2<i32>(_wgslsmith_clamp_i32(10333i & arg_0, global0.c.a ^ arg_1.c.a, firstTrailingBit(-57807i)), _wgslsmith_mult_i32(arg_1.c.a, _wgslsmith_div_i32(arg_1.c.a, global0.c.a)))));
}

fn func_1(arg_0: i32, arg_1: f32) -> Struct_2 {
    global1 = _wgslsmith_mod_vec2_i32(-func_2(abs(-9326i), Struct_3(global0.a, false, global0.c, vec3<bool>(true, global0.d.x, global0.d.x)), _wgslsmith_mult_u32(24648u, u_input.b.x), Struct_2(false)) >> (vec2<u32>(u_input.b.x, u_input.d) % vec2<u32>(32u)), vec2<i32>(-71393i, firstLeadingBit(~(-2147483647i)) << (((global0.c.c.x & 42913u) ^ u_input.b.x) % 32u)));
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-1132f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(exp2(arg_1)), global0.c.c.x != global0.c.c.x)))), _wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-431f, -326f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), global0.a.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.zz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(1399f)), _wgslsmith_f_op_f32(floor(1386f)))), select(any(select(vec3<bool>(global0.b, true, global0.d.x), vec3<bool>(true, true, global0.c.b), vec3<bool>(global0.c.b, global0.c.b, false))), true, true))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_0.xx))) * _wgslsmith_f_op_vec2_f32(sign(var_0.yw))));
    global3 = global0.b;
    let var_2 = !global0.c.b;
    return Struct_2(!all(select(vec2<bool>(true, global0.b), select(vec2<bool>(global0.b, false), global0.d.xy, global0.d.x), global0.c.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(847i);
    global3 = _wgslsmith_mod_u32(u_input.c & 4294967295u, ~u_input.c) > 38201u;
    var var_1 = _wgslsmith_f_op_f32(-global0.a.x);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) * 1314f);
    global1 = vec2<i32>(0i | (~firstTrailingBit(-1i) ^ -1i), ~(-(26066i & select(global0.c.a, global1.x, global0.b))));
    var var_2 = -1440f;
    var var_3 = func_1(global1.x, -1000f);
    var var_4 = Struct_1(0i, all(global0.d.zz), ~_wgslsmith_add_vec2_u32(~vec2<u32>(48770u, u_input.d), u_input.a.yz));
    let x = u_input.a;
    s_output = StorageBuffer(-584f, 38499i, 51310u, firstLeadingBit(vec3<i32>(abs(var_0) & -5341i, -min(2147483647i, -25221i), select(select(1i, var_4.a, true), _wgslsmith_sub_i32(20948i, var_4.a), var_3.a))));
}

