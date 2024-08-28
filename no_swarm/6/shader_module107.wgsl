struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: u32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: vec2<bool>,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_5, arg_1: Struct_5, arg_2: Struct_5, arg_3: bool) -> vec2<i32> {
    return -vec2<i32>(_wgslsmith_mod_i32(-10759i, arg_0.b), max(-26216i, arg_2.d.a.x));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: bool) -> vec2<bool> {
    var var_0 = Struct_4(global0.d, global0.c);
    var var_1 = vec4<u32>(u_input.a, 1u, arg_0, ~88263u);
    var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0 & global0.d.b.c, _wgslsmith_add_u32(~global0.d.e.b, var_0.a.e.b), _wgslsmith_mult_u32(u_input.c.x, _wgslsmith_mult_u32(0u, var_1.x) << (~46423u % 32u)), min(~(~4294967295u), arg_0)), _wgslsmith_mod_vec4_u32(max(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, 5804u, 14460u, var_1.x), vec4<u32>(79922u, 24343u, 0u, 4294967295u)), ~(~vec4<u32>(13835u, 0u, u_input.a, 4294967295u))), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, arg_0, arg_0, 4294967295u), vec4<u32>(0u, arg_0, 0u, 34680u)))));
    var var_2 = -max(-var_0.a.e.d.e.wyz, max(select(vec3<i32>(global0.d.e.d.e.x, u_input.b.x, 47252i), u_input.b.yyw, !global0.a), u_input.b.zwy));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1527f, -1617f, 509f, 1197f) + vec4<f32>(1095f, -376f, -634f, 188f))))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(1000f + -671f), _wgslsmith_f_op_f32(trunc(-780f)), -484f, _wgslsmith_f_op_f32(624f * -999f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-106f, -423f, -783f, 1178f)))))), select(vec4<bool>(arg_2, all(vec4<bool>(var_0.a.d, arg_2, true, false)), !var_0.b.x, arg_2 | true), !vec4<bool>(global0.a, arg_2, arg_2, true), select(select(vec4<bool>(true, global0.d.b.a.x, false, false), vec4<bool>(true, global0.d.b.a.x, false, false), vec4<bool>(true, false, true, true)), select(vec4<bool>(var_0.a.c, false, true, var_0.a.c), vec4<bool>(true, false, global0.c.x, false), vec4<bool>(true, true, false, global0.c.x)), select(arg_2, false, false))))) + vec4<f32>(1f, 872f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(940f * 412f)), _wgslsmith_div_f32(-1398f, _wgslsmith_f_op_f32(ceil(-1000f)))), 1462f));
    return var_0.a.e.d.a;
}

fn func_1(arg_0: u32) -> Struct_5 {
    global0 = Struct_5(false, _wgslsmith_dot_vec2_i32(-select(~vec2<i32>(u_input.b.x, -1i), func_2(Struct_5(true, u_input.d, global0.c, Struct_3(vec2<i32>(u_input.d, u_input.b.x), Struct_1(vec2<bool>(false, global0.d.d), false, global0.d.e.b, u_input.b.zww, u_input.b), true, global0.c.x, global0.d.e)), Struct_5(global0.a, u_input.b.x, global0.c, global0.d), Struct_5(global0.d.c, global0.d.a.x, global0.d.b.a, Struct_3(vec2<i32>(global0.b, -6538i), global0.d.b, global0.d.e.d.a.x, global0.d.d, global0.d.e)), false), vec2<bool>(false, false)), ~(reverseBits(vec2<i32>(4227i, 0i)) >> ((global0.d.e.a << (vec2<u32>(arg_0, u_input.c.x) % vec2<u32>(32u))) % vec2<u32>(32u)))), !vec2<bool>(!global0.c.x, true != global0.c.x), global0.d);
    var var_0 = select(!select(func_3(~arg_0, u_input.b.zxy & vec3<i32>(u_input.b.x, global0.d.e.d.e.x, u_input.b.x), true), vec2<bool>(all(vec3<bool>(false, global0.d.e.d.a.x, true)), global0.a), 1i > global0.d.a.x), select(global0.c, !global0.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-423f, 1000f, global0.c.x)))) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-186f * 682f), _wgslsmith_f_op_f32(1057f - 311f))), ~(~1u) != u_input.c.x);
    var_0 = global0.c;
    let var_1 = global0.d.b;
    let var_2 = Struct_4(global0.d, !var_1.a);
    return Struct_5(func_3(~reverseBits(var_1.c), reverseBits(var_1.e.wwy), !(true | global0.a)).x, -10909i, select(vec2<bool>(var_0.x, !var_2.a.c), !(!(!vec2<bool>(global0.a, false))), true), Struct_3(~u_input.b.zz, var_2.a.b, global0.a && all(vec2<bool>(true, true)), global0.d.e.d.a.x, var_2.a.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.c.x;
    global0 = func_1(8431u);
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-3167f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(102f))))))));
    global0 = func_1(u_input.a ^ ~global0.d.b.c);
    var var_2 = func_1((min(1u, max(u_input.a, global0.d.e.a.x)) & _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), ~u_input.c.zz)) | 0u).d.e.d;
    let var_3 = 0i;
    var var_4 = vec3<u32>(var_2.c, ~select(79414u & u_input.a, 39580u, global0.c.x | var_2.a.x), var_2.c) << (vec3<u32>(global0.d.b.c, u_input.c.x, u_input.c.x) % vec3<u32>(32u));
    var var_5 = 39277u;
    let var_6 = func_1(49691u).d;
    let x = u_input.a;
    s_output = StorageBuffer(~min(_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 39912u, var_2.c, 1u), ~vec4<u32>(var_2.c, var_6.b.c, 2960u, var_6.b.c)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, global0.d.e.c.x, var_4.x), vec4<u32>(var_4.x, global0.d.e.a.x, var_6.e.d.c, var_2.c)) & _wgslsmith_div_vec4_u32(vec4<u32>(var_6.e.b, var_6.b.c, 28563u, 0u), vec4<u32>(var_4.x, var_4.x, 7904u, var_6.b.c))), _wgslsmith_sub_u32(19031u, u_input.c.x), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(~global0.d.e.a, select(~vec2<u32>(44982u, global0.d.e.b), var_4.zz, global0.b >= var_2.e.x)), ~min(var_6.e.c.xy, _wgslsmith_mod_vec2_u32(vec2<u32>(10326u, var_6.b.c), global0.d.e.c.zy))));
}

