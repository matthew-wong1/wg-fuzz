struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec4<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<i32, 23> = array<i32, 23>(6347i, 1i, -1i, 6399i, 2147483647i, -4761i, 1i, -23610i, 12751i, 17165i, -15522i, -1i, 2147483647i, 5726i, 0i, 1i, 2147483647i, 43220i, -58102i, -40973i, 25296i, 0i, 2147483647i);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_3) -> f32 {
    global1 = array<i32, 23>();
    let var_0 = Struct_3(!global0.b, select(arg_0.d <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) + _wgslsmith_f_op_f32(-global0.d)), (~16429u | max(u_input.c, u_input.c)) > u_input.c, global0.a), global0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1448f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), 185f));
    return var_0.c.x;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2) -> u32 {
    let var_0 = Struct_3(true, select(!arg_0.x || true, arg_0.x, true) & arg_0.x, vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1181f, -1738f, arg_1.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(arg_0.x, true, arg_1.b.c, -1826f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(256f * arg_1.b.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(arg_1.a.x, true, global0.c, arg_1.b.c.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(327f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.x * global0.c.x) - -1079f))), 1000f);
    global1 = array<i32, 23>();
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.d))))), -617f), -708f));
    var var_2 = Struct_1((max(_wgslsmith_sub_vec2_u32(arg_1.b.e.zz, arg_1.b.e.zy), arg_1.b.e.zz) >> ((_wgslsmith_clamp_vec2_u32(arg_1.b.e.zz, vec2<u32>(arg_1.b.a.x, u_input.c), arg_1.b.a) >> (vec2<u32>(arg_1.b.a.x, 55166u) % vec2<u32>(32u))) % vec2<u32>(32u))) >> (countOneBits(~(~arg_1.b.a)) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-global0.c.zz), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(897f, global0.c.x, -941f, _wgslsmith_f_op_f32(sign(-1526f))))), u_input.a.zz, ~(arg_1.b.e & vec3<u32>(_wgslsmith_mult_u32(35346u, 1u), arg_1.b.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(96894u, 787u, 4294967295u), vec3<u32>(u_input.c, 4294967295u, arg_1.b.e.x)))));
    let var_3 = arg_1.b;
    return 105344u;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<bool>) -> f32 {
    var var_0 = _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(5743u, 1u, u_input.c), vec3<u32>(42840u, 120112u, u_input.c)), _wgslsmith_mult_u32(1u, 0u), ~20035u)), _wgslsmith_sub_vec3_u32(abs(select(vec3<u32>(u_input.c, u_input.c, 4294967295u), vec3<u32>(u_input.c, u_input.c, 1u), false)), ~(~vec3<u32>(1u, 0u, 4294967295u)))) ^ vec3<u32>(func_2(vec3<bool>(global0.b, false | arg_1.x, any(arg_1)), Struct_2(!vec3<bool>(global0.a, global0.a, false), Struct_1(vec2<u32>(u_input.c, 45657u), arg_0, global0.c, vec2<i32>(global1[_wgslsmith_index_u32(u_input.c, 23u)], 2147483647i), vec3<u32>(0u, 1u, u_input.c)))), _wgslsmith_mod_u32(1u << (~u_input.c % 32u), u_input.c), ~96224u ^ u_input.c);
    let var_1 = _wgslsmith_add_vec2_i32(-select(u_input.a.xx, vec2<i32>(_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(u_input.c, 23u)], global1[_wgslsmith_index_u32(4294967295u, 23u)], u_input.b), 1i), arg_1.zz), vec2<i32>(countOneBits(global1[_wgslsmith_index_u32(~(54870u ^ var_0.x), 23u)]), ~(-(i32(-1i) * -38977i))));
    var var_2 = Struct_1(~max(var_0.zy, ~(~var_0.yx)), global0.c.wx, global0.c, -u_input.a.yy, ~(~(~(~vec3<u32>(49434u, u_input.c, var_0.x)))));
    let var_3 = Struct_1(~reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(var_2.e.x, 10291u), ~vec2<u32>(u_input.c, u_input.c))), vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_3(true, !arg_1.x, _wgslsmith_f_op_vec4_f32(global0.c + var_2.c), -1268f))), -2780f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - -655f) - 155f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.c.x), var_2.b.x)), arg_0.x, _wgslsmith_f_op_f32(-global0.c.x), arg_0.x), vec2<i32>(_wgslsmith_div_i32(32968i, -31357i), -2147483647i), vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.e.x, var_0.x, var_0.x, var_0.x), vec4<u32>(u_input.c, var_2.a.x, 32565u, 4294967295u)), var_0.x, 21174u));
    let var_4 = !arg_1.xx;
    return var_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1(vec2<f32>(478f, 994f), !select(select(!vec3<bool>(global0.a, true, global0.a), select(vec3<bool>(false, global0.a, global0.a), vec3<bool>(true, false, false), global0.b), global1[_wgslsmith_index_u32(8305u, 23u)] < global1[_wgslsmith_index_u32(u_input.c, 23u)]), select(vec3<bool>(global0.a, true, false), vec3<bool>(false, global0.b, global0.b), vec3<bool>(global0.a, global0.b, false)), global0.a)));
    var var_1 = _wgslsmith_mult_vec3_i32(~vec3<i32>(~u_input.b, ~u_input.b, ~global1[_wgslsmith_index_u32(u_input.c, 23u)]), u_input.a);
    let var_2 = Struct_2(vec3<bool>(!any(!vec3<bool>(global0.b, global0.b, true)), select(global0.b, global0.a, false), false), Struct_1(vec2<u32>(countOneBits(1u), 1u) >> (~vec2<u32>(u_input.c, 27099u) % vec2<u32>(32u)), vec2<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * global0.d)), global0.c, ~(u_input.a.zx >> ((vec2<u32>(4294967295u, u_input.c) & vec2<u32>(u_input.c, 36771u)) % vec2<u32>(32u))), ~abs(vec3<u32>(22768u, 49455u, u_input.c) >> (vec3<u32>(102514u, u_input.c, u_input.c) % vec3<u32>(32u)))));
    let var_3 = Struct_3(false || (0u > (u_input.c >> (countOneBits(3347u) % 32u))), global0.a, _wgslsmith_f_op_vec4_f32(floor(global0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(abs(var_0))) - -867f)));
    let var_4 = vec2<bool>(all(vec2<bool>(false, !var_2.a.x)), var_1.x >= ~max(var_2.b.d.x, -31594i));
    let var_5 = !select(vec2<bool>(true, all(!vec4<bool>(var_2.a.x, var_2.a.x, false, var_4.x))), var_2.a.xz, false);
    var var_6 = -1196f;
    let x = u_input.a;
    s_output = StorageBuffer(-var_2.b.d | vec2<i32>(~2147483647i, select(~13519i, -u_input.a.x, any(var_2.a))), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(var_2.b.d, _wgslsmith_add_vec2_i32(abs(var_1.zz), _wgslsmith_mod_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(var_2.b.a.x, 23u)], 1i), vec2<i32>(-2147483647i, -1i)))), var_2.b.d.x));
}

