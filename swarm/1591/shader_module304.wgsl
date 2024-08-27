struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: i32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-15761i, 2147483647i);

var<private> global1: vec4<f32>;

var<private> global2: array<Struct_2, 1>;

var<private> global3: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(-1059f), Struct_1(2128f), Struct_1(954f), Struct_1(-405f), Struct_1(-502f), Struct_1(-960f), Struct_1(2140f), Struct_1(-578f), Struct_1(-2207f), Struct_1(-1307f), Struct_1(2168f), Struct_1(-430f), Struct_1(-225f), Struct_1(1000f), Struct_1(-479f), Struct_1(389f), Struct_1(-1236f), Struct_1(326f), Struct_1(609f), Struct_1(-527f), Struct_1(-760f), Struct_1(-1006f), Struct_1(-117f), Struct_1(205f), Struct_1(-1678f), Struct_1(750f), Struct_1(-185f), Struct_1(-665f), Struct_1(-691f), Struct_1(-345f));

var<private> global4: array<i32, 3> = array<i32, 3>(-31108i, 20324i, 39090i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> Struct_2 {
    let var_0 = global3[_wgslsmith_index_u32(39962u, 30u)];
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1635f, -1918f)) + global1.x), var_0.a), global1.yy);
    global4 = array<i32, 3>();
    global0 = vec2<i32>(abs(1i << (reverseBits(u_input.a) % 32u)), 0i);
    global4 = array<i32, 3>();
    return Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(firstLeadingBit(u_input.a), u_input.a), ~_wgslsmith_mod_u32(reverseBits(u_input.a), 12235u)), 30u)], Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_0.a)))))), !(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    let var_0 = func_1().b;
    return _wgslsmith_f_op_f32(round(-1000f));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    let var_0 = !(!func_1().c.xyz);
    global3 = array<Struct_1, 30>();
    let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(879f, global1.x)))))));
    let var_2 = Struct_2(arg_0.a, func_1().a, !arg_0.c);
    global1 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.a.a + arg_0.a.a))), func_1().a.a, _wgslsmith_f_op_f32(global1.x * 926f), 1200f);
    return Struct_2(func_1().a, arg_0.a, vec4<bool>(1f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(598f), arg_0.b, var_2.c), vec2<bool>(true, false), var_2.b, global2[_wgslsmith_index_u32(72077u, 1u)]))), any(!vec3<bool>(arg_0.c.x, false, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-504f + 663f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + var_1.x), arg_0.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a << (17958u % 32u);
    global2 = array<Struct_2, 1>();
    global3 = array<Struct_1, 30>();
    var_0 = _wgslsmith_clamp_u32(max(_wgslsmith_div_u32(_wgslsmith_mod_u32(1u, ~57758u), _wgslsmith_mod_u32(max(1u, 40834u), _wgslsmith_sub_u32(u_input.a, u_input.a))), 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.a | u_input.a, u_input.a), _wgslsmith_mod_u32(~u_input.a, ~44299u)), _wgslsmith_div_vec2_u32(~(~vec2<u32>(53637u, 24426u)), max(~vec2<u32>(u_input.a, 0u), firstLeadingBit(vec2<u32>(25768u, 1u))))), countOneBits(0u));
    var var_1 = func_2(func_1());
    let var_2 = _wgslsmith_dot_vec3_u32(reverseBits(firstLeadingBit(vec3<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, u_input.a)), ~u_input.a))), ~countOneBits(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(4294967295u, 37245u, u_input.a)), vec3<u32>(1u, 53817u, 18685u) ^ vec3<u32>(u_input.a, 1u, 1u), ~vec3<u32>(u_input.a, u_input.a, u_input.a))));
    var_0 = ~85696u;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(17632u, _wgslsmith_add_u32(var_2, 56575u), ~u_input.a, _wgslsmith_mult_u32(31864u, var_2)), ~abs(vec4<u32>(62193u, 26474u, u_input.a, 36983u)))), global1.zyx, global0.x, global1.xyy, global1.x);
}

