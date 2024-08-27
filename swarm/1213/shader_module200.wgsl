struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: bool,
    d: f32,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: bool = true;

var<private> global2: Struct_5 = Struct_5(Struct_4(true, Struct_3(Struct_1(true, i32(-2147483648)), Struct_1(true, 33959i), 1000f, Struct_2(1000f, Struct_1(true, -2808i), vec3<u32>(0u, 4294967295u, 1u))), false, -440f, Struct_1(true, 4164i)));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> u32 {
    var var_0 = vec3<i32>(-(global0.e.b & u_input.b.x), -19872i, _wgslsmith_div_i32(12047i, global0.b.b.b));
    let var_1 = -1260f;
    var_0 = _wgslsmith_clamp_vec3_i32(-u_input.b, vec3<i32>(_wgslsmith_sub_i32(~(-4259i), firstTrailingBit(firstLeadingBit(u_input.b.x))), firstLeadingBit(_wgslsmith_mod_i32(global2.a.e.b, min(-1i, 1i))), firstLeadingBit(u_input.b.x)), select(u_input.b, vec3<i32>(global0.e.b, i32(-1i) * -19379i, -5397i), select(vec3<bool>(!global2.a.b.d.b.a, true, all(vec2<bool>(false, true))), vec3<bool>(true, global2.a.e.a, global0.b.d.b.a), ~global2.a.b.d.c.x == ~1u)));
    var_0 = ((_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-49546i, global0.b.a.b, -1i), u_input.b), _wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(6941i, 0i, 0i))) >> ((_wgslsmith_clamp_vec3_u32(vec3<u32>(58520u, 0u, global0.b.d.c.x), global0.b.d.c, vec3<u32>(1u, 1053u, 4294967295u)) & global0.b.d.c) % vec3<u32>(32u))) & vec3<i32>(-u_input.b.x >> (~41142u % 32u), abs(_wgslsmith_mod_i32(u_input.b.x, var_0.x)), -2147483647i)) << (global0.b.d.c % vec3<u32>(32u));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1)) + 1719f);
    return ~_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(global2.a.b.d.c.x, 20053u), _wgslsmith_dot_vec3_u32(vec3<u32>(25005u, 17176u, 1u), global2.a.b.d.c)), ~global2.a.b.d.c.x & 4294967295u) | 1u;
}

fn func_2(arg_0: f32, arg_1: bool) -> Struct_3 {
    global1 = !arg_1;
    var var_0 = global2.a.e;
    let var_1 = global2.a;
    global0 = global2.a;
    let var_2 = reverseBits(_wgslsmith_mod_u32(func_3(), 65711u | _wgslsmith_sub_u32(abs(15600u), firstTrailingBit(global0.b.d.c.x))));
    return global0.b;
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_3) -> vec2<bool> {
    let var_0 = global2.a.b.b;
    let var_1 = _wgslsmith_mult_vec2_u32(abs(vec2<u32>(31706u, min(0u, arg_0.d.c.x)) << ((global2.a.b.d.c.yz ^ _wgslsmith_sub_vec2_u32(vec2<u32>(arg_2.d.c.x, 4294967295u), vec2<u32>(u_input.a, global0.b.d.c.x))) % vec2<u32>(32u))), select(vec2<u32>(arg_2.d.c.x, ~u_input.a), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, arg_0.d.c.x), arg_2.d.c.yz), any(select(vec4<bool>(var_0.a, arg_0.d.b.a, true, arg_2.d.b.a), vec4<bool>(arg_0.a.a, false, false, global0.e.a), vec4<bool>(false, true, true, false)))) | arg_0.d.c.xy);
    let var_2 = select(vec3<bool>(true, true, !all(!vec3<bool>(false, global2.a.a, true))), vec3<bool>(all(vec4<bool>(true, false, select(arg_2.a.a, arg_2.b.a, true), true)), true, !((arg_2.d.a > 1429f) && true)), !(!(!(!vec3<bool>(true, var_0.a, var_0.a)))));
    global0 = Struct_4(all(select(!select(vec4<bool>(true, arg_0.a.a, var_2.x, global0.c), vec4<bool>(true, false, var_2.x, false), vec4<bool>(arg_0.d.b.a, var_2.x, false, arg_2.b.a)), select(vec4<bool>(false, var_2.x, arg_2.d.b.a, var_2.x), vec4<bool>(var_0.a, var_2.x, arg_0.d.b.a, false), vec4<bool>(false, true, arg_2.b.a, var_0.a)), !select(vec4<bool>(false, global0.b.a.a, var_0.a, true), vec4<bool>(false, true, var_0.a, false), vec4<bool>(global2.a.c, var_0.a, global2.a.a, var_0.a)))), Struct_3(func_2(arg_0.c, arg_0.d.b.a).d.b, func_2(arg_2.d.a, arg_2.d.b.a).a, _wgslsmith_f_op_f32(-1168f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c * arg_0.d.a))), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) + _wgslsmith_f_op_f32(f32(-1f) * -429f)), !(-13039i < arg_0.d.b.b)).d), any(select(vec4<bool>(true, false, var_0.a, arg_2.b.a | false), !(!vec4<bool>(var_0.a, global2.a.c, var_2.x, global0.b.d.b.a)), any(!var_2.zy))), -1696f, Struct_1(func_2(_wgslsmith_f_op_f32(abs(-1151f)), var_0.a).d.c.x > var_1.x, _wgslsmith_sub_i32(~arg_2.b.b, -(~arg_0.b.b))));
    global1 = true;
    return select(var_2.yz, vec2<bool>(true & any(!vec4<bool>(global2.a.c, false, false, false)), global2.a.b.d.c.x <= ~(~global2.a.b.d.c.x)), !select(var_2.yx, vec2<bool>(false, false), !var_2.xx));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool) -> f32 {
    let var_0 = func_4(func_2(_wgslsmith_f_op_f32(max(global2.a.b.c, -705f)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(239f)))) * 254f), Struct_3(Struct_1(arg_1, u_input.b.x), global0.e, global0.b.d.a, global2.a.b.d));
    let var_1 = 0i;
    global2 = Struct_5(Struct_4(false, global2.a.b, _wgslsmith_mult_u32(~global2.a.b.d.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.b.d.c.x, 4294967295u), vec2<u32>(1u, 1u))) < countOneBits(u_input.a ^ 0u), global2.a.b.d.a, global2.a.e));
    let var_2 = func_2(global2.a.d, var_0.x);
    global1 = var_0.x;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0.b.c, 766f), 852f, !var_2.d.b.a)) + _wgslsmith_f_op_f32(-611f + -801f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -2934i, 49958i, 1i), vec4<i32>(u_input.b.x, global0.e.b, u_input.b.x, 1i)), var_0)))));
    var var_2 = ~global2.a.b.d.c;
    var var_3 = global2.a;
    var_2 = ~var_3.b.d.c;
    let var_4 = ~(~(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(13131u, 43338u, global0.b.d.c.x, u_input.a), vec4<u32>(0u, 32102u, 1u, 4294967295u)), ~u_input.a, 12051u, 14365u)));
    var var_5 = !vec4<bool>(select(true, false, all(vec2<bool>(true, false))), !any(!vec2<bool>(false, global2.a.b.d.b.a)), any(select(select(vec4<bool>(global2.a.b.a.a, false, false, false), vec4<bool>(true, global2.a.a, global2.a.b.d.b.a, global2.a.e.a), vec4<bool>(true, global2.a.e.a, false, false)), select(vec4<bool>(var_3.b.a.a, global0.b.b.a, false, false), vec4<bool>(var_3.b.d.b.a, true, var_0, var_3.c), vec4<bool>(global0.a, global0.e.a, true, global2.a.a)), select(vec4<bool>(true, false, true, false), vec4<bool>(var_0, false, global2.a.e.a, var_0), vec4<bool>(true, false, global2.a.a, var_3.e.a)))), any(select(!vec4<bool>(global0.e.a, true, true, global2.a.b.a.a), vec4<bool>(false, false, true, var_0), true)));
    var var_6 = Struct_1(!global2.a.a, 1i);
    let var_7 = global2.a.b.c;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(global2.a.b.d.c.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(global0.b.c)), _wgslsmith_f_op_f32(round(1440f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1, -114f), vec2<f32>(485f, global0.d))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, global2.a.b.c)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(752f, -1194f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(745f, -681f) + vec2<f32>(-718f, global2.a.d)))), ~13234u);
}

