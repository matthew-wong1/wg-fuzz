struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: vec2<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: Struct_1;

var<private> global2: vec2<i32> = vec2<i32>(1i, -1i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec3<u32>) -> vec2<bool> {
    return select(vec2<bool>(true, !global0.b.a), vec2<bool>(global0.b.a && (1u > global1.a), !(!all(vec3<bool>(global0.b.a, global0.b.a, global0.b.a)))), select(vec2<bool>(!(16117u <= u_input.b), true), vec2<bool>(global0.b.a, true), !vec2<bool>(u_input.a.x <= 13539i, global0.b.a && false)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> f32 {
    let var_0 = select(vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(global0.b.a, true), vec2<bool>(global0.b.a, true))) && true, any(select(!vec3<bool>(false, global0.b.a, true), !vec3<bool>(global0.b.a, global0.b.a, false), true)), !select(any(vec4<bool>(false, global0.b.a, true, true)), true, func_1(vec3<u32>(2881u, arg_1.c.x, global0.b.d.b)).x)), select(select(vec3<bool>(!global0.b.a, global0.b.a, any(vec3<bool>(true, global0.b.a, true))), select(vec3<bool>(false, global0.b.a, global0.b.a), vec3<bool>(global0.b.a, global0.b.a, global0.b.a), vec3<bool>(global0.b.a, global0.b.a, false)), select(select(vec3<bool>(global0.b.a, global0.b.a, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), select(vec3<bool>(global0.b.a, global0.b.a, false), vec3<bool>(false, false, global0.b.a), false))), vec3<bool>(~(-2147483647i) > min(global2.x, 2147483647i), false, false), !(!vec3<bool>(global0.b.a, false, global0.b.a))), select(select(vec3<bool>(!global0.b.a, global0.b.a, all(vec4<bool>(global0.b.a, false, true, true))), !select(vec3<bool>(global0.b.a, global0.b.a, global0.b.a), vec3<bool>(global0.b.a, global0.b.a, true), vec3<bool>(global0.b.a, true, global0.b.a)), !global0.b.a), vec3<bool>(any(vec2<bool>(global0.b.a, global0.b.a)), any(!vec4<bool>(global0.b.a, global0.b.a, true, global0.b.a)), false), any(vec3<bool>(global0.b.a, true, global0.b.a))));
    global0 = Struct_5(global0.a, global0.b, abs(min(vec2<u32>(67355u, reverseBits(global1.b)), arg_1.c.zy)), Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global1.a, global1.a), vec2<u32>(global0.d.b, u_input.b), global1.c.xx) ^ global1.c.xz, select(vec2<u32>(arg_1.b, global1.c.x), vec2<u32>(40099u, 42675u), !vec2<bool>(global0.b.a, false))), arg_1.c.x, _wgslsmith_sub_vec3_u32(max(global1.c, abs(vec3<u32>(u_input.b, 1u, 6294u))), vec3<u32>(global0.d.b ^ u_input.b, ~24165u, 0u))));
    var var_1 = global1.b;
    var_1 = arg_1.a;
    var var_2 = ~select(_wgslsmith_add_vec4_u32(~(~vec4<u32>(u_input.c, arg_1.b, global1.a, 4294967295u)), vec4<u32>(~arg_1.c.x, 80707u, global1.b, 8579u)), ~abs(~vec4<u32>(arg_1.a, arg_1.a, 53807u, arg_1.b)), true & (global1.c.x > _wgslsmith_mod_u32(arg_1.c.x, u_input.b)));
    return _wgslsmith_f_op_f32(-global0.b.b.x);
}

fn func_2(arg_0: f32, arg_1: Struct_4, arg_2: f32, arg_3: Struct_5) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~(-12855i), arg_3.d))))) + _wgslsmith_f_op_f32(func_3(~global0.a.b, Struct_1(global0.d.a, ~select(global0.d.a, 0u, arg_1.a.x), arg_3.d.c))));
    let var_1 = arg_3.b;
    var var_2 = select(vec3<i32>(_wgslsmith_mod_i32(abs(~(-7003i)), u_input.a.x), arg_3.a.b, ~(~firstTrailingBit(global2.x))), -vec3<i32>(30595i, _wgslsmith_mod_i32(arg_3.a.b, 0i), _wgslsmith_sub_i32(-1i, countOneBits(34401i))), vec3<bool>(any(vec2<bool>(arg_2 <= -1066f, all(vec2<bool>(global0.b.a, true)))), all(vec4<bool>(false, !var_1.a, true, true)), -17645i > u_input.a.x));
    var var_3 = 0i << (var_1.d.c.x % 32u);
    global2 = vec2<i32>(arg_3.a.b | _wgslsmith_clamp_i32(-(0i << (global1.a % 32u)), _wgslsmith_sub_i32(~global2.x, -1i), _wgslsmith_sub_i32(~(-1i), _wgslsmith_clamp_i32(1i, -1i, -6239i))), min(countOneBits(_wgslsmith_mult_i32(~(-1i), _wgslsmith_dot_vec2_i32(var_2.xy, vec2<i32>(global2.x, u_input.a.x)))), 2147483647i));
    return global0.d;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_5, arg_2: Struct_5, arg_3: vec3<f32>) -> vec2<bool> {
    let var_0 = ~vec4<i32>(global0.a.b, u_input.a.x, -10991i, 0i);
    let var_1 = arg_1.b;
    let var_2 = abs(_wgslsmith_dot_vec3_i32(abs(firstLeadingBit(reverseBits(vec3<i32>(arg_2.a.b, -32229i, -2147483647i)))), vec3<i32>(global2.x, -31447i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_2.a.b, -2147483647i), vec3<i32>(global2.x, arg_2.a.b, -2147483647i)))));
    let var_3 = Struct_3(global0.a.a, ~arg_2.a.b);
    global2 = ~max(select(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 0i), -vec2<i32>(global2.x, global0.a.b)), select(var_0.zy, vec2<i32>(-32410i, var_3.b), true) ^ min(vec2<i32>(var_2, -45016i), vec2<i32>(global0.a.b, -43832i)), select(all(vec2<bool>(arg_2.b.a, false)), arg_2.a.b <= arg_1.a.b, true)), _wgslsmith_mult_vec2_i32(u_input.a << (arg_0.c.zx % vec2<u32>(32u)), ~var_0.yy));
    return func_1(arg_2.d.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec2<bool>(true, true), select(vec2<bool>(any(vec4<bool>(global0.b.a, global0.b.a, false, global0.b.a)), true), vec2<bool>(true, false), vec2<bool>(false, select(true, true, global0.b.a))), vec2<bool>(global0.b.a, any(func_1(global1.c)))), func_1(global1.c), select(func_4(global0.d, Struct_5(global0.a, global0.b, ~global0.b.c.c.xx, func_2(1222f, Struct_4(vec4<bool>(global0.b.a, global0.b.a, false, global0.b.a)), -518f, Struct_5(global0.a, global0.b, vec2<u32>(global0.d.a, 5258u), Struct_1(1754u, 50231u, vec3<u32>(global0.c.x, 21414u, global1.a))))), Struct_5(global0.a, global0.b, min(vec2<u32>(1u, global1.c.x), global1.c.yz), global0.b.c), global0.a.a.xww), func_4(Struct_1(~0u, u_input.b, global1.c), Struct_5(Struct_3(global0.a.a, global2.x), Struct_2(global0.b.a, vec2<f32>(global0.a.a.x, -1000f), global0.d, global0.d), ~global0.c, func_2(global0.b.b.x, Struct_4(vec4<bool>(true, global0.b.a, false, global0.b.a)), -577f, Struct_5(global0.a, global0.b, global0.b.d.c.yx, Struct_1(16176u, 5221u, global0.b.c.c)))), Struct_5(Struct_3(global0.a.a, u_input.a.x), global0.b, vec2<u32>(83364u, u_input.b), func_2(global0.a.a.x, Struct_4(vec4<bool>(true, true, global0.b.a, true)), global0.a.a.x, Struct_5(Struct_3(vec4<f32>(741f, 1056f, -264f, global0.b.b.x), 1i), global0.b, global0.d.c.yx, Struct_1(u_input.c, 38622u, global0.b.d.c)))), global0.a.a.xzx), false));
    let var_1 = _wgslsmith_mod_vec4_i32(select(vec4<i32>(-1i) * -(~vec4<i32>(18877i, u_input.a.x, -26243i, u_input.a.x)), vec4<i32>(~_wgslsmith_sub_i32(-1i, 32701i), u_input.a.x, -reverseBits(u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-14008i, global2.x, global0.a.b, u_input.a.x), abs(vec4<i32>(1i, -11140i, global0.a.b, global0.a.b)))), !(!vec4<bool>(false, global0.b.a, global0.b.a, var_0.x))), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(-4713i, global2.x, u_input.a.x, -2147483647i), vec4<i32>(0i, -1i, 23950i, global2.x)), ~select(vec4<i32>(7158i, -1i, 1i, global0.a.b), vec4<i32>(32125i, 2147483647i, global0.a.b, u_input.a.x), vec4<bool>(false, var_0.x, true, false))), ~vec4<i32>(countOneBits(global0.a.b), ~u_input.a.x, _wgslsmith_div_i32(global2.x, -31348i), _wgslsmith_add_i32(u_input.a.x, u_input.a.x))));
    let var_2 = 1u;
    var var_3 = global0.d;
    global0 = Struct_5(Struct_3(global0.a.a, -632i), global0.b, vec2<u32>(_wgslsmith_dot_vec3_u32(var_3.c, abs(func_2(-1049f, Struct_4(vec4<bool>(var_0.x, false, global0.b.a, false)), 1415f, Struct_5(Struct_3(global0.a.a, 1i), global0.b, vec2<u32>(global0.b.c.c.x, u_input.b), Struct_1(var_2, 4294967295u, global1.c))).c)), _wgslsmith_dot_vec3_u32(firstLeadingBit(global0.b.d.c), global1.c)), func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.a.a.x))))), Struct_4(select(vec4<bool>(global0.b.a, var_0.x, false, global0.b.a), select(vec4<bool>(false, false, var_0.x, true), vec4<bool>(false, true, true, var_0.x), var_0.x), select(vec4<bool>(true, true, false, false), vec4<bool>(var_0.x, var_0.x, global0.b.a, global0.b.a), false))), 671f, Struct_5(global0.a, Struct_2(var_0.x, global0.b.b, global0.b.c, Struct_1(4294967295u, 1u, var_3.c)), ~vec2<u32>(12839u, 3239u), func_2(-253f, Struct_4(vec4<bool>(var_0.x, global0.b.a, var_0.x, global0.b.a)), 2310f, Struct_5(Struct_3(global0.a.a, u_input.a.x), global0.b, vec2<u32>(u_input.b, 82445u), Struct_1(10211u, u_input.b, var_3.c))))));
    global0 = Struct_5(Struct_3(global0.a.a, global0.a.b), Struct_2(global0.b.a, global0.b.b, Struct_1(~global1.b, 2626u, vec3<u32>(select(var_2, 0u, false), ~var_2, func_2(global0.b.b.x, Struct_4(vec4<bool>(var_0.x, global0.b.a, true, var_0.x)), 440f, Struct_5(Struct_3(vec4<f32>(global0.a.a.x, global0.a.a.x, global0.a.a.x, 949f), global2.x), Struct_2(var_0.x, global0.b.b, Struct_1(var_2, u_input.b, var_3.c), Struct_1(var_2, 0u, vec3<u32>(var_3.c.x, 85627u, 9275u))), global0.b.d.c.xx, Struct_1(u_input.c, u_input.b, global1.c))).b)), global0.d), vec2<u32>(1u, firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(111733u, 44034u, var_2), abs(var_3.c)))), global0.b.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(global0.d.a & 16061u, global0.c.x, reverseBits(max(var_2, u_input.b) & _wgslsmith_div_u32(global1.c.x, var_3.b))), _wgslsmith_div_vec3_f32(global0.a.a.yww, vec3<f32>(-1000f, -131f, 591f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(753f + global0.b.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.b.b.x))), global0.a.a.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.b.x, global0.b.b.x, _wgslsmith_f_op_f32(f32(-1f) * -339f)))));
}

