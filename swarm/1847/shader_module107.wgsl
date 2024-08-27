struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec2<u32>,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
    c: vec2<bool>,
    d: vec4<u32>,
    e: vec4<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<f32>,
    c: Struct_2,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<vec4<i32>, 1>;

var<private> global2: Struct_5;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: Struct_4) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(global0.a.a.c.b.x)))))), _wgslsmith_f_op_f32(max(-884f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_3.a.a.c.a.x), _wgslsmith_f_op_f32(289f - 342f))))), global0.a.a.c.c.x));
    let var_1 = _wgslsmith_dot_vec2_u32(~global2.d.xx, vec2<u32>(_wgslsmith_sub_u32(37238u, arg_3.b.x), 0u));
    var var_2 = 0u;
    let var_3 = Struct_5(arg_3, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-414f, global0.a.a.d.b.x))), vec2<f32>(_wgslsmith_f_op_f32(-global0.a.a.c.b.x), _wgslsmith_f_op_f32(sign(1341f)))) - _wgslsmith_f_op_vec2_f32(-arg_3.a.a.c.c.yz)), global0.a.a, firstLeadingBit(~vec3<u32>(var_1, 24936u, 84049u)) & _wgslsmith_mod_vec3_u32(u_input.c, _wgslsmith_sub_vec3_u32(global2.d, ~vec3<u32>(u_input.c.x, var_1, u_input.b.x))));
    var var_4 = 10057u;
    return select(abs(firstLeadingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1, 0u, global0.d.x, 4294967295u), global0.d))), reverseBits(global0.d.x), any(vec2<bool>(false, true)));
}

fn func_2(arg_0: bool, arg_1: vec3<u32>) -> Struct_5 {
    global0 = Struct_4(global0.a, ~arg_1.xz, global2.a.c, vec4<u32>(1u, min(u_input.c.x, 1u & global0.b.x), func_3(vec3<i32>(24783i, u_input.e, u_input.d), select(global0.e.www, global2.a.a.b, vec3<bool>(arg_0, global0.e.x, true)), vec2<i32>(-36262i, global0.a.a.a.x), global2.a) << (arg_1.x % 32u), _wgslsmith_mult_u32(~4294967295u, _wgslsmith_clamp_u32(global2.d.x, 50615u, ~global2.d.x))), vec4<bool>(global2.a.a.d, global0.a.d && (select(false, false, global2.a.a.d) | global0.a.b.x), false, true));
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(global0.a.a.c.a));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global2.c.c.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0.x)), 2002f))), global2.c.c.c);
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -519f), var_0.x));
    var var_3 = Struct_2(global0.a.a.a, vec4<i32>(_wgslsmith_div_i32(global2.c.b.x, 13053i), _wgslsmith_dot_vec2_i32(min(vec2<i32>(-2147483647i, 0i), vec2<i32>(-2147483647i, global2.a.a.a.a.x) ^ global0.a.a.a.yx), global0.a.a.a.xz), abs(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(global2.a.a.a.a.xz, global0.a.a.a.zy), select(vec2<i32>(-38111i, global0.a.a.b.x), vec2<i32>(-15174i, global2.c.b.x), vec2<bool>(false, global0.e.x)))), ~select(0i ^ global2.c.b.x, u_input.d, arg_0)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-509f)), _wgslsmith_f_op_f32(-910f * 313f), var_1.b.x) + var_1.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-843f)), _wgslsmith_f_op_f32(global0.a.a.c.b.x * global0.a.a.d.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(var_0, vec3<f32>(var_1.c.x, global2.b.x, -908f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1171f, -1540f, -138f) - global2.c.d.c))))), Struct_1(vec3<f32>(global2.c.c.c.x, -2098f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(step(-3105f, 481f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_0.xz)) - vec2<f32>(_wgslsmith_f_op_f32(floor(-476f)), _wgslsmith_f_op_f32(var_1.b.x + var_1.c.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.x, -358f, 313f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(996f, -1000f, global0.a.a.d.a.x) - _wgslsmith_f_op_vec3_f32(max(var_1.c, var_1.c))))));
    return Struct_5(Struct_4(Struct_3(Struct_2(var_3.a, _wgslsmith_div_vec4_i32(global1[_wgslsmith_index_u32(27008u, 1u)], vec4<i32>(global0.a.a.b.x, -1i, -2147483647i, var_3.b.x)), global2.c.c, Struct_1(var_3.d.a, global2.c.d.a.zy, global2.a.a.a.c.c)), select(!vec3<bool>(false, false, arg_0), !global2.a.e.xzw, select(global2.a.e.zxw, vec3<bool>(true, false, false), global0.e.x)), _wgslsmith_mod_vec2_u32(u_input.c.yz, vec2<u32>(u_input.a.x, global2.a.b.x)) << (vec2<u32>(global2.d.x, arg_1.x) % vec2<u32>(32u)), false), vec2<u32>(~global0.b.x, 1u), vec2<bool>(false, false != !arg_0), _wgslsmith_mod_vec4_u32(global0.d, max(vec4<u32>(60859u, arg_1.x, 1u, 128740u), min(vec4<u32>(1u, 38319u, 66863u, 0u), u_input.b))), !(!(!vec4<bool>(arg_0, global0.a.d, global2.a.e.x, true)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.yy)))))), Struct_2(global2.a.a.a.a, _wgslsmith_add_vec4_i32(var_3.b, firstTrailingBit(reverseBits(global1[_wgslsmith_index_u32(4294967295u, 1u)]))), global0.a.a.c, Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_0))), var_0.zz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a.a.d.c)))), select(firstTrailingBit(~min(vec3<u32>(u_input.a.x, u_input.c.x, 1u), vec3<u32>(global0.b.x, arg_1.x, u_input.a.x))), ~global0.d.yxz, select(global2.a.a.b, select(!vec3<bool>(true, true, arg_0), global0.e.ywy, global0.e.yzx), global0.a.b)));
}

fn func_4(arg_0: Struct_5, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global0.a.a.c.c))), vec2<f32>(global2.c.d.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a.d.c.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.a.a.a.c.a.x - -775f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-1000f)), -588f, arg_0.c.d.c.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.a.a.a.d.c - global0.a.a.d.a) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1519f, 342f, global0.a.a.d.c.x))))));
    var var_1 = global0.b.x;
    global1 = array<vec4<i32>, 1>();
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-999f)))), global0.a.a.d.a.x);
    let var_3 = vec4<u32>(select(func_3(vec3<i32>(firstTrailingBit(global2.c.b.x), arg_0.c.b.x, -global0.a.a.a.x), vec3<bool>(func_2(arg_0.a.c.x, u_input.b.xyw).a.e.x, any(vec3<bool>(true, global2.a.c.x, global0.a.b.x)), 1000f > global2.a.a.a.d.a.x), _wgslsmith_sub_vec2_i32(func_2(arg_0.a.c.x, u_input.c).c.b.wz, global0.a.a.b.yy), func_2(!arg_0.a.e.x, select(u_input.c, vec3<u32>(global2.a.b.x, 4294967295u, 29714u), false)).a), 74440u, global0.a.b.x), 1u, 32977u, max(~func_3(arg_0.a.a.a.b.zyy, global2.a.e.xyx, func_2(true, vec3<u32>(1u, 4294967295u, 33833u)).a.a.a.b.xy, global2.a), 54786u));
    return func_2(global0.e.x | true, ~u_input.b.zww).c.d;
}

fn func_1(arg_0: Struct_4, arg_1: vec2<f32>) -> Struct_2 {
    var var_0 = 11320u;
    global1 = array<vec4<i32>, 1>();
    global2 = Struct_5(arg_0, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(arg_1.x * 955f), _wgslsmith_f_op_f32(global0.a.a.d.b.x * 161f)))))), arg_0.a.a, firstTrailingBit(vec3<u32>(37438u, global0.b.x, u_input.c.x & ~global0.a.c.x)));
    var var_1 = global0.d;
    let var_2 = Struct_3(Struct_2(abs(reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 36822i, 1332i), arg_0.a.a.b.wzy))), vec4<i32>(~min(u_input.e, -83145i), ~_wgslsmith_mod_i32(u_input.e, global0.a.a.a.x), reverseBits(-2147483647i), 31752i), func_4(func_2(any(vec3<bool>(false, global0.e.x, false)), ~vec3<u32>(global0.d.x, arg_0.b.x, global0.a.c.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.a.a.a.c.b.x, 1109f), vec2<f32>(arg_0.a.a.c.a.x, arg_1.x))) + _wgslsmith_f_op_vec2_f32(exp2(global0.a.a.d.c.zz)))), func_4(func_2(global0.a.a.d.c.x > -702f, vec3<u32>(62085u, global0.b.x, 1u)), _wgslsmith_div_vec2_f32(arg_1, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-906f, 1955f))))), vec3<bool>(any(vec4<bool>(true, true, any(vec2<bool>(global0.a.b.x, true)), true)), _wgslsmith_div_u32(1u, func_3(arg_0.a.a.b.xww, arg_0.e.yyw, vec2<i32>(-50821i, 7566i), arg_0)) <= ~(global2.d.x << (global2.a.a.c.x % 32u)), false), func_2(true, ~u_input.c).a.d.xy, all(global2.a.e));
    return func_2(global2.a.a.b.x, select(_wgslsmith_sub_vec3_u32(global2.a.d.zyz, vec3<u32>(firstLeadingBit(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(global2.a.a.c.x, 14622u), arg_0.a.c), var_1.x)), u_input.c, !(!vec3<bool>(true, true, global0.c.x)))).a.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_1(global2.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(-827f)), _wgslsmith_f_op_f32(ceil(global2.b.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1377f))))), !(!select(vec3<bool>(true, true, false), !global0.a.b, func_2(true, global2.d).a.a.b)), select(reverseBits(abs(global2.d.zy)), global2.a.a.c ^ ~vec2<u32>(global0.b.x, global0.b.x), func_2(true, min(u_input.c, u_input.c)).a.a.b.x) ^ (firstLeadingBit(global2.a.d.yy) << (global2.d.zx % vec2<u32>(32u))), -717f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.a.a.d.b.x, global2.c.c.c.x)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-818f, 188f, -481f, global0.a.a.c.a.x), vec4<f32>(var_0.a.d.c.x, -1000f, global2.c.c.a.x, 145f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.a.d.c.x, global0.a.a.c.c.x, global2.c.c.a.x, -1636f) + vec4<f32>(181f, global2.a.a.a.d.c.x, global2.c.c.a.x, 533f)))), true))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1556f + global0.a.a.d.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -656f), global2.b.x, -428f)));
    global1 = array<vec4<i32>, 1>();
    let var_2 = firstLeadingBit(1088i);
    let var_3 = Struct_2(vec3<i32>(var_0.a.b.x, u_input.e, 1i), vec4<i32>(-1i) * -(-vec4<i32>(global0.a.a.a.x, 14829i, global0.a.a.b.x, u_input.e) << ((vec4<u32>(28879u, u_input.a.x, 23467u, u_input.b.x) >> (vec4<u32>(var_0.c.x, u_input.a.x, global0.d.x, 45136u) % vec4<u32>(32u))) % vec4<u32>(32u))), func_2(!global2.a.a.d & (var_0.c.x >= countOneBits(1u)), ~(~(vec3<u32>(1u, var_0.c.x, u_input.b.x) | global0.d.zxz))).a.a.a.c, func_2(all(vec4<bool>(!var_0.b.x, all(vec3<bool>(global0.c.x, global0.e.x, false)), var_2 >= -22129i, select(global2.a.e.x, false, true))), reverseBits(~global2.a.d.zyz)).a.a.a.d);
    let x = u_input.a;
    s_output = StorageBuffer(10257i, global2.b);
}

