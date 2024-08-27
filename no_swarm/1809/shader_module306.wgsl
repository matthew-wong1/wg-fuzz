struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 2>;

var<private> global1: u32 = 15185u;

var<private> global2: array<bool, 24>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<i32>) -> vec3<f32> {
    var var_0 = Struct_1(-996f, _wgslsmith_f_op_vec3_f32(step(arg_0.b, arg_2.b.b)), _wgslsmith_add_vec2_u32(vec2<u32>(max(1u, arg_2.c.x >> (u_input.c.x % 32u)), abs(arg_2.b.c.x << (0u % 32u))), arg_0.c));
    let var_1 = !select(vec4<bool>(false, !(!global2[_wgslsmith_index_u32(var_0.c.x, 24u)]), global2[_wgslsmith_index_u32(0u, 24u)], any(vec2<bool>(true, true))), select(vec4<bool>(arg_3.x == -1i, !global2[_wgslsmith_index_u32(arg_2.c.x, 24u)], global2[_wgslsmith_index_u32(arg_1.c.x, 24u)] || false, true), vec4<bool>(true, true, any(vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(arg_1.b.c.x, 24u)])), true), !select(vec4<bool>(true, global2[_wgslsmith_index_u32(37467u, 24u)], global2[_wgslsmith_index_u32(11295u, 24u)], false), vec4<bool>(false, false, global2[_wgslsmith_index_u32(arg_2.b.c.x, 24u)], true), false)), false);
    var_0 = arg_2.b;
    let var_2 = Struct_1(arg_2.b.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(953f, _wgslsmith_f_op_f32(-arg_2.b.a), _wgslsmith_div_f32(-1213f, arg_1.b.a)), arg_2.b.b)), select(select(abs(vec2<u32>(4294967295u, arg_1.c.x)), _wgslsmith_add_vec2_u32(vec2<u32>(31371u, u_input.c.x), arg_0.c), select(var_1.zx, vec2<bool>(var_1.x, false), all(var_1))), arg_2.c, vec2<bool>(!(-1000f != arg_0.a), global2[_wgslsmith_index_u32(arg_0.c.x, 24u)] & true)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(471f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1940f + -555f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_0.b, vec3<f32>(1632f, arg_0.a, var_2.b.x))))) - _wgslsmith_f_op_vec3_f32(sign(arg_1.b.b))), var_0.c);
    return vec3<f32>(_wgslsmith_f_op_f32(-1381f - arg_1.b.b.x), _wgslsmith_f_op_f32(f32(-1f) * -998f), arg_0.b.x);
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(-1640f, -1158f), _wgslsmith_div_f32(1061f, 1429f), 1988f, -1783f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0[_wgslsmith_index_u32(u_input.d, 2u)], global0[_wgslsmith_index_u32(u_input.c.x, 2u)])), any(!vec2<bool>(global2[_wgslsmith_index_u32(10666u, 24u)], false)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(386f, 561f, 1500f, -929f) + global0[_wgslsmith_index_u32(24703u, 2u)])) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-2752f, -119f, -660f, 118f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(662f, -783f, -927f, 596f) - global0[_wgslsmith_index_u32(u_input.d, 2u)])))));
    let var_1 = Struct_2(~(-(~vec2<i32>(u_input.a.x, -16416i))), Struct_1(var_0.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(-340f, vec3<f32>(-181f, -1302f, -1493f), vec2<u32>(u_input.c.x, 33324u)), Struct_2(u_input.b.xw, Struct_1(-544f, vec3<f32>(-751f, var_0.x, var_0.x), u_input.c.yw), vec2<u32>(u_input.d, 20383u)), Struct_2(vec2<i32>(u_input.a.x, 0i), Struct_1(1521f, vec3<f32>(var_0.x, -526f, var_0.x), vec2<u32>(u_input.d, u_input.c.x)), u_input.c.xw), vec2<i32>(-43561i, u_input.b.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.xwz))), _wgslsmith_mult_vec2_u32(~(vec2<u32>(4294967295u, u_input.c.x) & vec2<u32>(5116u, u_input.d)), ~u_input.c.ww)), _wgslsmith_add_vec2_u32(max(u_input.c.zx << (u_input.c.ww % vec2<u32>(32u)), vec2<u32>(u_input.c.x, 77667u)) << (vec2<u32>(select(81059u, 4294967295u, global2[_wgslsmith_index_u32(u_input.c.x, 24u)]), ~68300u) % vec2<u32>(32u)), u_input.c.zy));
    global2 = array<bool, 24>();
    let var_2 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_vec3_f32(func_3(var_1.b, var_1, Struct_2(vec2<i32>(-2147483647i, var_1.a.x), Struct_1(var_0.x, vec3<f32>(var_1.b.b.x, 755f, -432f), vec2<u32>(var_1.b.c.x, var_1.b.c.x)), u_input.c.zw), vec2<i32>(-5873i, 0i))).x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -889f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec3_f32(func_3(var_1.b, Struct_2(var_1.a, var_1.b, var_1.b.c), Struct_2(u_input.b.yx, var_1.b, u_input.c.yz), u_input.a)).x, _wgslsmith_f_op_f32(-var_0.x)))))), _wgslsmith_f_op_vec3_f32(var_1.b.b - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(step(1030f, -1270f)), -405f)))), abs(_wgslsmith_clamp_vec2_u32(~firstTrailingBit(u_input.c.yx), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, 24553u), u_input.c.wz), var_1.c)));
    let var_3 = select(vec2<u32>(var_1.c.x, min(1u, 14476u)), _wgslsmith_add_vec2_u32(abs(~u_input.c.yw), max(select(firstLeadingBit(u_input.c.xw), vec2<u32>(var_1.b.c.x, var_1.c.x), vec2<bool>(true, false)), u_input.c.yy >> (_wgslsmith_mult_vec2_u32(var_1.c, vec2<u32>(17982u, var_1.b.c.x)) % vec2<u32>(32u)))), global2[_wgslsmith_index_u32(u_input.d, 24u)]);
    return var_1.b;
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: vec2<bool>) -> i32 {
    global1 = 1u;
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_1.b.b.x, arg_0)), -909f)), -1000f))));
    let var_1 = Struct_2(~arg_1.a, func_2(), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.b.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_1.c.x, 25595u, arg_1.b.c.x), vec4<u32>(4294967295u, arg_1.b.c.x, 6876u, u_input.c.x))), _wgslsmith_add_vec2_u32(firstTrailingBit(arg_1.b.c), vec2<u32>(4294967295u, u_input.c.x))), countOneBits(~vec2<u32>(0u, arg_1.c.x)) << (u_input.c.xz % vec2<u32>(32u))));
    var var_2 = arg_1.b.c.x ^ 14623u;
    let var_3 = arg_1;
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -((i32(-1i) * -1i) | u_input.a.x) >> (_wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.d, u_input.d)), abs(_wgslsmith_add_vec2_u32(u_input.c.yx, u_input.c.yx)))) % 32u);
    global2 = array<bool, 24>();
    let var_1 = u_input.d;
    global0 = array<vec4<f32>, 2>();
    global0 = array<vec4<f32>, 2>();
    global2 = array<bool, 24>();
    var_0 = -10325i;
    var_0 = _wgslsmith_div_i32(2147483647i | -_wgslsmith_div_i32(~u_input.a.x, func_1(231f, Struct_2(u_input.a, Struct_1(-1200f, vec3<f32>(1404f, 537f, -907f), vec2<u32>(1u, var_1)), vec2<u32>(var_1, 48772u)), vec2<bool>(true, true))), 29404i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.yyy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(~select(u_input.d, 42936u, global2[_wgslsmith_index_u32(var_1, 24u)]), 2u)])));
}

