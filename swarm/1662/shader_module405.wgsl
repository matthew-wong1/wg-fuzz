struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: i32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1000f, 1000f, -424f);

var<private> global1: vec3<u32> = vec3<u32>(12731u, 19591u, 38624u);

var<private> global2: u32 = 60063u;

var<private> global3: Struct_4;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: Struct_4) -> vec3<bool> {
    let var_0 = arg_2;
    let var_1 = global3.b.e;
    var var_2 = select(vec2<bool>(var_1.x, any(vec2<bool>(select(false, global3.a.x, var_0.a), arg_2.a))), var_1.yz, vec2<bool>(true, arg_2.a));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-global3.b.a), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global3.b.a + -1831f))), _wgslsmith_mod_vec3_i32(min(global3.b.b, global3.b.b), _wgslsmith_mult_vec3_i32(global3.b.b, vec3<i32>(var_0.c, -9658i, global3.b.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.c * arg_3.b.c))), all(arg_1.wx), select(arg_3.b.e, !vec3<bool>(arg_2.a, var_2.x, var_1.x), all(vec3<bool>(arg_1.x, true, false)))), vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(var_0.b.x, -29223i), global3.b.b.x, arg_2.b.x) | arg_3.b.b.x, -36732i, firstTrailingBit(45641i), (arg_3.b.b.x ^ 0i) << (_wgslsmith_dot_vec3_u32(abs(u_input.b.zyy), _wgslsmith_mod_vec3_u32(u_input.b.yzw, vec3<u32>(global1.x, global1.x, 1u))) % 32u)), u_input.b.wyy ^ vec3<u32>(6474u, global1.x, _wgslsmith_div_u32(20391u, _wgslsmith_mult_u32(14001u, global1.x))), vec2<i32>(-var_0.b.x, 2147483647i));
    var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(arg_3.b.c, -208f)), _wgslsmith_f_op_f32(trunc(arg_3.b.a)))))), var_3.b, vec4<i32>(-1i, var_3.b.b.x, -29477i, -(-1i >> (_wgslsmith_div_u32(u_input.b.x, u_input.a) % 32u))), firstLeadingBit(~vec3<u32>(1u, ~49343u, global1.x)), abs((_wgslsmith_div_vec2_i32(arg_2.b, arg_3.b.b.xz) << ((global1.yz ^ global1.yz) % vec2<u32>(32u))) >> (vec2<u32>(0u, var_3.d.x) % vec2<u32>(32u))));
    return select(vec3<bool>(!var_1.x, var_3.c.x != arg_3.b.b.x, any(vec3<bool>(global3.b.e.x, arg_1.x, false))), arg_1.wyx, select(select(!(!global3.b.e), !global3.b.e, var_3.b.e), arg_3.b.e, !arg_1.x));
}

fn func_2() -> vec3<u32> {
    global3 = Struct_4(vec2<bool>(all(select(vec3<bool>(false, global3.a.x, false), func_3(4294967295u, vec4<bool>(global3.b.d, true, true, false), Struct_3(global3.b.e.x, vec2<i32>(-2147483647i, -6530i), 25035i), Struct_4(vec2<bool>(false, global3.a.x), global3.b)), global3.b.e)), global3.a.x), global3.b);
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(global3.b.c - _wgslsmith_f_op_f32(-global3.b.a)), any(select(vec3<bool>(global3.a.x, true, global3.a.x), vec3<bool>(false, false, global3.a.x), false)))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1149f * -487f)))))), global3.b, select(-_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -69035i, -71442i, global3.b.b.x), vec4<i32>(global3.b.b.x, -5433i, global3.b.b.x, -2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-10106i, global3.b.b.x, global3.b.b.x, -5187i), vec4<i32>(2147483647i, -32330i, -67410i, global3.b.b.x))), abs(select(~vec4<i32>(31593i, 2147483647i, global3.b.b.x, -1i), vec4<i32>(global3.b.b.x, 0i, global3.b.b.x, global3.b.b.x), !vec4<bool>(global3.b.d, global3.b.e.x, global3.a.x, false))), !all(global3.b.e)), ~abs(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, global1.x, 4294967295u), u_input.b.zww)), countOneBits(vec2<i32>(_wgslsmith_mult_i32(2147483647i, _wgslsmith_sub_i32(global3.b.b.x, 12725i)), _wgslsmith_mod_i32(global3.b.b.x, _wgslsmith_add_i32(-4111i, global3.b.b.x)))));
    let var_1 = _wgslsmith_mult_vec2_u32(~global1.xx, reverseBits(global1.zx));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.x))))), _wgslsmith_f_op_f32(-518f + global0.x), global3.b.c);
    global3 = Struct_4(global3.a, global3.b);
    return reverseBits(u_input.b.wwx);
}

fn func_1() -> bool {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.c - _wgslsmith_f_op_f32(round(-111f)))) - -755f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1143f)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-1226f + 156f)));
    let var_0 = global3.b.e.yy;
    global1 = ~vec3<u32>(4294967295u, 4294967295u, ~0u);
    var var_1 = Struct_3(global3.a.x, _wgslsmith_mod_vec2_i32(-vec2<i32>(-47525i, -2147483647i), _wgslsmith_mult_vec2_i32(global3.b.b.xx, vec2<i32>(global3.b.b.x, global3.b.b.x))) << ((~global1.yz | ~(~vec2<u32>(4294967295u, 27988u))) % vec2<u32>(32u)), global3.b.b.x);
    let var_2 = global3.b.b << (_wgslsmith_clamp_vec3_u32((firstTrailingBit(vec3<u32>(1u, global1.x, u_input.b.x)) << (func_2() % vec3<u32>(32u))) >> (vec3<u32>(u_input.a, select(global1.x, 11310u, var_0.x), u_input.c) % vec3<u32>(32u)), ~vec3<u32>(1u >> (u_input.c % 32u), 61749u, ~0u), vec3<u32>(global1.x, (u_input.b.x << (1u % 32u)) << (1u % 32u), 0u)) % vec3<u32>(32u));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_4(select(!global3.b.e.zy, vec2<bool>(false, _wgslsmith_mult_i32(-2147483647i, global3.b.b.x) <= -18734i), !func_1()), global3.b);
    var var_0 = ~(~min(max(31259u << (u_input.b.x % 32u), firstLeadingBit(u_input.d.x)), abs(global1.x)));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1742f)), global3.b.a)) + _wgslsmith_f_op_f32(-global3.b.a))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1140f), global3.b.b, -679f, select(4294967295u == global1.x, global3.b.d, global1.x > 4294967295u) & true, global3.b.e), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(~global3.b.b.x, _wgslsmith_mult_i32(0i, -37877i)), global3.b.b.x, 0i, -global3.b.b.x), _wgslsmith_add_vec4_i32(vec4<i32>(global3.b.b.x, global3.b.b.x, 7630i, 1i) & (vec4<i32>(56871i, global3.b.b.x, -40137i, global3.b.b.x) >> (vec4<u32>(1797u, 4294967295u, 35364u, 30646u) % vec4<u32>(32u))), vec4<i32>(-1i) * -vec4<i32>(-1i, -1i, -7074i, global3.b.b.x))), min(~abs(vec3<u32>(global1.x, 4294967295u, 27723u) & vec3<u32>(u_input.a, 4340u, global1.x)), vec3<u32>(1u, ~(~u_input.a), u_input.d.x)), global3.b.b.yy);
    var_0 = func_2().x;
    var var_2 = Struct_3(!(!(!any(vec4<bool>(false, global3.a.x, true, false)))), ~_wgslsmith_div_vec2_i32(var_1.b.b.zy, abs(var_1.c.zz)), select(firstTrailingBit(_wgslsmith_dot_vec2_i32(global3.b.b.zy, global3.b.b.yy)) ^ global3.b.b.x, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(-global3.b.b.yz, _wgslsmith_sub_vec2_i32(vec2<i32>(var_1.e.x, var_1.e.x), global3.b.b.zy)), vec2<i32>(var_1.c.x, -var_1.c.x)), false));
    let var_3 = ~vec2<i32>(0i, var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(-1i, reverseBits(global3.b.b.x | var_2.c), ~abs(global3.b.b.x)), min(_wgslsmith_mult_vec4_u32(u_input.b, u_input.b), u_input.b & ~u_input.b), 51032u, global3.b.b.x);
}

