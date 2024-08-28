struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: Struct_2,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24> = array<i32, 24>(-10011i, -23180i, 2147483647i, 12295i, 9511i, 28650i, 1i, 48016i, -1i, 17696i, -52668i, -24114i, -13668i, i32(-2147483648), 1i, i32(-2147483648), -4800i, 17871i, 53047i, 1i, 2147483647i, -12915i, -24231i, 27477i);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_4) -> vec4<u32> {
    global0 = array<i32, 24>();
    let var_0 = vec2<bool>(true, true);
    global0 = array<i32, 24>();
    global0 = array<i32, 24>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_f32(arg_0.d.a.b, arg_0.d.a.a), arg_0.d.a.a, global0[_wgslsmith_index_u32(arg_0.a, 24u)] > ~u_input.c));
    return ~(~vec4<u32>(u_input.b, 1u, ~(~u_input.b), _wgslsmith_add_u32(firstTrailingBit(6584u), _wgslsmith_sub_u32(u_input.b, 14135u))));
}

fn func_2(arg_0: vec2<f32>) -> vec4<bool> {
    var var_0 = _wgslsmith_div_vec4_u32(~(~_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 4294967295u, u_input.b, u_input.b), ~vec4<u32>(u_input.b, u_input.a, 12770u, 103101u))), vec4<u32>(u_input.a, ~1u << (~_wgslsmith_mult_u32(u_input.b, 4294967295u) % 32u), u_input.b ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b), func_3(Struct_4(477u, vec3<i32>(u_input.c, global0[_wgslsmith_index_u32(0u, 24u)], u_input.c), u_input.a, Struct_2(Struct_1(arg_0.x, 2076f, false))))), 1u));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(920f)) - _wgslsmith_f_op_f32(exp2(arg_0.x))) - 2619f);
    var_0 = ~vec4<u32>(u_input.a, 79247u >> (~min(25082u, u_input.a) % 32u), 350u, abs(~_wgslsmith_mult_u32(var_0.x, 4294967295u)));
    var var_2 = vec2<i32>(-7403i, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(~28503u, 0u), (var_0.x | 15458u) & _wgslsmith_dot_vec2_u32(var_0.zz, var_0.yw)) ^ 4294967295u, 24u)]);
    let var_3 = all(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    return vec4<bool>(var_3, all(vec3<bool>(true, true, true)), any(!vec2<bool>(var_3, !var_3)), var_3);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a ^ ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(73055u, 17963u) ^ vec2<u32>(u_input.a, u_input.b), abs(vec2<u32>(1u, u_input.b))), _wgslsmith_mult_vec2_u32(~vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, u_input.b))), 24u)];
    var var_1 = ~(~(~(~vec3<u32>(u_input.a, u_input.a, 39585u) >> ((vec3<u32>(17682u, u_input.a, 49223u) >> (vec3<u32>(39817u, u_input.a, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)))));
    var var_2 = Struct_3(all(arg_1.zz), select(arg_1.ywy, !arg_1.zxw, !select(select(vec3<bool>(arg_1.x, arg_0.c, false), vec3<bool>(false, arg_0.c, arg_0.c), true), !arg_1.xzx, vec3<bool>(arg_1.x, true, arg_0.c))), arg_0);
    var_0 = _wgslsmith_mod_i32(u_input.c, -u_input.c) ^ global0[_wgslsmith_index_u32(1u, 24u)];
    global0 = array<i32, 24>();
    return var_2.c;
}

fn func_1(arg_0: vec3<bool>) -> vec2<bool> {
    let var_0 = (u_input.c ^ ~global0[_wgslsmith_index_u32(u_input.a, 24u)]) ^ global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(72638u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.a, u_input.a) ^ vec3<u32>(4294967295u, u_input.a, u_input.a), ~vec3<u32>(u_input.b, 0u, 4294967295u)), ~select(u_input.b, u_input.b, true)), max(vec3<u32>(u_input.b | u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 5977u), vec2<u32>(u_input.b, u_input.b)), 46278u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 12121u, 0u), vec3<u32>(3005u, 30454u, 0u)))), 24u)];
    global0 = array<i32, 24>();
    let var_1 = func_4(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -751f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1854f, 106f, arg_0.x))) - _wgslsmith_f_op_f32(-1f)), true), select(vec4<bool>(true, !(!arg_0.x), any(!vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)), !(arg_0.x || arg_0.x)), !select(vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, true, true, true), func_2(vec2<f32>(132f, -774f))), any(!arg_0.yz)));
    let var_2 = arg_0.x;
    return select(!arg_0.xy, !vec2<bool>(~u_input.a != (u_input.a >> (u_input.a % 32u)), var_1.c), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!func_1(vec3<bool>(false, true, true))), func_1(vec3<bool>(any(vec2<bool>(true, true)), (u_input.a << (u_input.b % 32u)) >= u_input.a, func_4(func_4(Struct_1(-815f, 382f, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), true)).c)), func_2(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(621f, -465f), vec2<f32>(1589f, -386f))), vec2<f32>(-590f, 641f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1085f, -874f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(483f, 816f) - vec2<f32>(1488f, 326f))))).xy);
    global0 = array<i32, 24>();
    let var_1 = Struct_3(all(!select(vec2<bool>(var_0.x, var_0.x), !vec2<bool>(var_0.x, var_0.x), var_0.x)), !(!select(vec3<bool>(var_0.x, false, true), vec3<bool>(false, false, var_0.x), true)), Struct_1(-2138f, 309f, all(select(func_2(vec2<f32>(1084f, 845f)).yyw, !vec3<bool>(false, true, var_0.x), true))));
    let var_2 = Struct_4(_wgslsmith_mod_u32(75416u, ~1u), abs(~_wgslsmith_add_vec3_i32(~vec3<i32>(u_input.c, -21994i, 1i), vec3<i32>(u_input.c, u_input.c, -1i))), min(u_input.b, ~u_input.a), Struct_2(func_4(func_4(var_1.c, vec4<bool>(var_0.x, false, var_1.a, var_1.c.c)), !vec4<bool>(var_0.x, var_1.c.c, true, var_0.x))));
    var var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-861f * _wgslsmith_f_op_f32(abs(-2440f))), _wgslsmith_f_op_f32(-var_2.d.a.b)))));
    var var_4 = var_2.d;
    var var_5 = var_1.b.xz;
    global0 = array<i32, 24>();
    let var_6 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.c.b)) - -242f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c.a - 288f), -1350f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.b + 543f)), 148f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_6.xyx)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(553f, -1043f, var_2.d.a.a, var_3.x) + vec4<f32>(var_2.d.a.b, -656f, 1142f, 917f)) + vec4<f32>(_wgslsmith_div_f32(326f, var_1.c.b), _wgslsmith_f_op_f32(step(624f, 1012f)), var_3.x, var_3.x)) + vec4<f32>(_wgslsmith_div_f32(304f, 935f), -1300f, var_1.c.b, _wgslsmith_f_op_f32(-func_4(Struct_1(var_3.x, -1503f, var_4.a.c), vec4<bool>(var_2.d.a.c, var_0.x, var_4.a.c, false)).a))));
}

