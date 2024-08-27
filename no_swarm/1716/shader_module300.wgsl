struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: bool,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<bool>, 4>;

var<private> global2: vec3<bool>;

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> i32 {
    global1 = array<vec4<bool>, 4>();
    let var_0 = -select(u_input.d.x, arg_0, !global2.x);
    global3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.a * _wgslsmith_f_op_vec3_f32(global0.a - vec3<f32>(global0.a.x, global3.a.x, global3.d.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global0.a, global0.a)) - global0.a)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(global0.a)), global0.a, select(vec3<bool>(global2.x, false, global0.c), vec3<bool>(global2.x, true, global2.x), true))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(global0.a)))))), 105498u, global3.c != false, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.a.xz + global3.a.zx), _wgslsmith_f_op_vec2_f32(abs(global3.d))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-700f, -2253f))))), _wgslsmith_f_op_vec2_f32(-global0.a.yy))), i32(-1i) * -1i);
    var var_1 = -965f;
    global2 = !select(!(!vec3<bool>(false, global3.c, true)), !vec3<bool>(global3.c, select(true, false, global2.x), any(vec3<bool>(false, global3.c, true))), true);
    return global3.e;
}

fn func_2() -> Struct_1 {
    global3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-292f))), _wgslsmith_f_op_f32(global3.d.x - -415f), global3.a.x), ~8657u, false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.d) + global0.a.xy), _wgslsmith_mult_i32(global0.e >> (4294967295u % 32u), _wgslsmith_sub_i32(func_3(-2052i), _wgslsmith_mult_i32(u_input.c.x, global3.e ^ -1047i))));
    var var_0 = Struct_2(~(firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.b, 12018u, global3.b, global0.b), vec4<u32>(global3.b, global3.b, 33563u, 13221u), vec4<u32>(global0.b, global0.b, global3.b, 0u))) >> (reverseBits(reverseBits(vec4<u32>(1846u, 0u, global3.b, global3.b))) % vec4<u32>(32u))));
    global1 = array<vec4<bool>, 4>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global3.a.x * global0.d.x), _wgslsmith_f_op_f32(floor(global3.a.x)), global0.a.x, 1314f)) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-1711f)), -883f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.d.x), _wgslsmith_f_op_f32(-110f * global0.a.x)), _wgslsmith_f_op_f32(min(-2140f, _wgslsmith_f_op_f32(min(1000f, global3.a.x))))), vec4<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(global3.a.x + -807f)), _wgslsmith_f_op_f32(-477f * _wgslsmith_f_op_f32(-global3.a.x)), _wgslsmith_f_op_f32(-528f - _wgslsmith_f_op_f32(select(-405f, -654f, false))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global3.d.x, -1014f), _wgslsmith_f_op_f32(round(global3.a.x)))))));
    global2 = !(!vec3<bool>(true, global2.x, global3.c));
    return Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_1.yyw, global0.a))), _wgslsmith_f_op_vec3_f32(select(global0.a, vec3<f32>(-736f, -1731f, _wgslsmith_f_op_f32(539f - var_1.x)), select(vec3<bool>(global2.x, global0.c, false), vec3<bool>(true, false, false), any(global2.zy)))))), global3.b, true, vec2<f32>(1534f, _wgslsmith_f_op_f32(sign(global0.d.x))), _wgslsmith_mult_i32(0i, u_input.c.x) | ~(~global3.e | (global0.e | -1i)));
}

fn func_1(arg_0: f32) -> vec3<bool> {
    global0 = func_2();
    var var_0 = global0.b;
    let var_1 = Struct_2(vec4<u32>(~reverseBits(global0.b ^ 76280u), ~(~4294967295u | global3.b), global3.b, ~(~global0.b) << (global3.b % 32u)));
    let var_2 = Struct_3(var_1, Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(-global3.d.x), -2610f))), 4294967295u, true, _wgslsmith_f_op_vec2_f32(-global0.a.xy), _wgslsmith_dot_vec2_i32(abs(-u_input.d), -u_input.b.yz)), var_1.a, ~(~_wgslsmith_clamp_u32(global0.b, _wgslsmith_dot_vec4_u32(var_1.a, var_1.a), firstTrailingBit(global3.b))), 56749u);
    global0 = func_2();
    return vec3<bool>(any(vec4<bool>(true == (-1566f == global3.d.x), _wgslsmith_f_op_f32(471f + global3.d.x) != -125f, (true | global3.c) | true, false)), !global2.x, any(!(!vec3<bool>(global0.c, false, global2.x))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: Struct_3) -> Struct_3 {
    var var_0 = vec4<f32>(1791f, -1642f, global0.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1014f * global3.d.x) - 1f))))));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) * _wgslsmith_f_op_f32(max(668f, _wgslsmith_f_op_f32(903f * -1595f)))))) == 305f;
    let var_2 = arg_2;
    let var_3 = var_2;
    let var_4 = 13966i;
    return Struct_3(var_3.a, func_2(), vec4<u32>(~(~1u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a.a.x, global3.b & 1u), arg_2.c.zw), select(abs(~var_3.e), var_2.e, true), global3.b), firstTrailingBit(min(firstLeadingBit(arg_2.c.x) << (arg_2.e % 32u), 8006u)), var_2.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_1 = true;
    var var_2 = select(-global0.e, _wgslsmith_clamp_i32(u_input.d.x, _wgslsmith_mod_i32(reverseBits(~(-1i)), _wgslsmith_dot_vec2_i32(~u_input.c.yy, u_input.a.yz << (vec2<u32>(24343u, global0.b) % vec2<u32>(32u)))), _wgslsmith_add_i32(-180i, -global0.e)), global0.c);
    let var_3 = func_4(select(select(vec3<bool>(all(vec4<bool>(true, global3.c, global3.c, global0.c)), true, any(vec2<bool>(global3.c, false))), vec3<bool>(true, true, false), all(!vec3<bool>(true, global0.c, false))), !func_1(-2149f), vec3<bool>(true, !(!global2.x), global0.c)), ~(~vec4<i32>(_wgslsmith_mod_i32(global0.e, 28955i), 0i, _wgslsmith_div_i32(u_input.b.x, u_input.a.x), global0.e)), Struct_3(Struct_2(abs(vec4<u32>(global3.b, global0.b, global3.b, 19538u) >> (vec4<u32>(0u, 1u, global3.b, global3.b) % vec4<u32>(32u)))), func_2(), vec4<u32>(14360u, global0.b << (~global3.b % 32u), ~func_2().b, 1u), func_2().b, func_2().b));
    let var_4 = vec3<i32>(u_input.d.x, ~(~reverseBits(0i)) ^ _wgslsmith_mod_i32(var_3.b.e, -1i), min(global3.e & _wgslsmith_mult_i32(-9604i, global0.e), max(-39019i, -11431i)));
    var var_5 = var_3.a;
    var_2 = i32(-1i) * -2147483647i;
    global1 = array<vec4<bool>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(min(firstLeadingBit(~vec3<u32>(4294967295u, 1u, global0.b)) | vec3<u32>(0u, 4294967295u ^ global0.b, ~14917u), vec3<u32>(44392u, 0u ^ _wgslsmith_clamp_u32(15776u, global3.b, global3.b), (54027u ^ var_3.c.x) << (firstTrailingBit(9906u) % 32u))), 118420u);
}

