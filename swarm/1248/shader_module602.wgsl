struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1 = Struct_1(-609f, vec3<u32>(25357u, 21209u, 397u), true);

var<private> global2: array<u32, 2>;

var<private> global3: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: Struct_1) -> vec3<u32> {
    global2 = array<u32, 2>();
    global2 = array<u32, 2>();
    var var_0 = Struct_2(!(~_wgslsmith_add_u32(arg_3.b.x, 0u) <= _wgslsmith_dot_vec3_u32(global0.b.b >> (arg_3.b % vec3<u32>(32u)), arg_0.b.b)), arg_0.c, Struct_1(-182f, reverseBits(global1.b), true), !(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-global1.a), global0.c.c)) > global1.a));
    return ~(~(~var_0.c.b ^ ~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.c.b.x, arg_3.b.x, 50973u), vec3<u32>(4294967295u, arg_3.b.x, 4294967295u))));
}

fn func_2(arg_0: f32, arg_1: vec3<i32>) -> vec4<bool> {
    let var_0 = vec4<bool>(true, any(vec3<bool>(select(true, true, all(global3.xy)), _wgslsmith_f_op_f32(-935f * global1.a) < _wgslsmith_f_op_f32(global0.b.a * arg_0), true)), global0.b.c, true);
    var var_1 = Struct_2(true, global0.c, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 - global0.c.a), global0.c.a), ~func_3(Struct_2(global0.d, global0.b, global0.c, false), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.a, global0.b.a))), global1.b.yy | vec2<u32>(84235u, 0u), Struct_1(298f, vec3<u32>(global2[_wgslsmith_index_u32(u_input.c, 2u)], 4294967295u, 4294967295u), true)), !global3.x && true), global3.x);
    global0 = Struct_2(true, global0.c, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1649f + _wgslsmith_f_op_f32(sign(var_1.c.a))) - 241f), global1.b, true), true);
    let var_2 = global3.x;
    global2 = array<u32, 2>();
    return select(var_0, var_0, var_0);
}

fn func_4(arg_0: vec4<bool>) -> Struct_2 {
    global1 = Struct_1(global0.b.a, ~(_wgslsmith_clamp_vec3_u32(global0.c.b, vec3<u32>(global0.b.b.x, 0u, 4294967295u) & u_input.b, _wgslsmith_clamp_vec3_u32(global1.b, u_input.b, global1.b)) << (~_wgslsmith_clamp_vec3_u32(global0.c.b, global0.b.b, vec3<u32>(global1.b.x, global0.c.b.x, 11601u)) % vec3<u32>(32u))), true);
    global1 = global0.b;
    global0 = Struct_2(true, Struct_1(global1.a, global1.b, _wgslsmith_f_op_f32(sign(global0.b.a)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.b.a)))), Struct_1(_wgslsmith_f_op_f32(exp2(global1.a)), vec3<u32>(~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(54658u, 92373u), vec2<u32>(0u, 0u)), 2u)], _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.c.b.x, 1u), global1.b.zx, vec2<u32>(global1.b.x, 66508u)), _wgslsmith_sub_vec2_u32(global1.b.zx, vec2<u32>(1u, 0u))), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(global0.b.b.x, global0.c.b.x, global1.b.x, u_input.c)), vec4<u32>(global2[_wgslsmith_index_u32(global1.b.x, 2u)], 0u, 4294967295u, 4294967295u))), !(!global3.x)), 45530i < ~_wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.a.x, -21321i), ~(-19966i)));
    var var_0 = _wgslsmith_mult_i32(reverseBits(_wgslsmith_dot_vec4_i32(max(vec4<i32>(0i, -2147483647i, u_input.a.x, 0i), vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, -2147483647i)), firstLeadingBit(vec4<i32>(-44743i, u_input.a.x, 2147483647i, u_input.a.x)))), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(~u_input.a, u_input.a << (global0.b.b % vec3<u32>(32u)), ~vec3<i32>(0i, u_input.a.x, -1i)), vec3<i32>(u_input.a.x, abs(-2171i), _wgslsmith_mod_i32(2147483647i, u_input.a.x)))) | (i32(-1i) * -18564i);
    let var_1 = Struct_2(true, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)), _wgslsmith_mult_vec3_u32(abs(vec3<u32>(global1.b.x, global0.c.b.x, 1u)), _wgslsmith_div_vec3_u32(global0.c.b, global1.b)) << (abs(firstLeadingBit(global1.b)) % vec3<u32>(32u)), true), Struct_1(2229f, ~reverseBits(vec3<u32>(0u, global1.b.x, global0.b.b.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.c.b.x, global1.b.x), min(vec2<u32>(global0.c.b.x, 65893u), u_input.b.xz)) > ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, global1.b.x, 3793u), vec4<u32>(global1.b.x, 20071u, 4294967295u, 0u))), global1.c);
    return var_1;
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.a.x;
    global0 = Struct_2(any(select(global3.xy, vec2<bool>(true, true), global3.yy)), Struct_1(global1.a, abs(vec3<u32>(1u ^ global0.b.b.x, 1u, 1u)), all(global3.zz)), Struct_1(_wgslsmith_f_op_f32(139f * _wgslsmith_f_op_f32(1090f * global1.a)), vec3<u32>(global0.c.b.x, _wgslsmith_sub_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(13403u, 2u)], 2u)], global1.b.x), 4294967295u), u_input.d), true), !any(!vec4<bool>(true, true, false, global0.b.c)));
    let var_1 = func_4(select(select(!vec4<bool>(false, global0.c.c, global3.x, global1.c), !select(vec4<bool>(true, false, global3.x, false), vec4<bool>(true, global1.c, global3.x, global1.c), false), !vec4<bool>(global3.x, true, global3.x, false)), func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b.a * -1000f), -1042f), abs(u_input.a)), false || (global0.c.c != any(vec3<bool>(false, global1.c, false)))));
    global1 = Struct_1(_wgslsmith_f_op_f32(-2372f - _wgslsmith_f_op_f32(var_1.b.a - 370f)), global1.b, !(~u_input.d >= _wgslsmith_sub_u32(abs(4294967295u), abs(1u))));
    global0 = var_1;
    return Struct_1(1000f, vec3<u32>(var_1.b.b.x, 2011u, _wgslsmith_mult_u32(1u, ~31097u)), true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 2>();
    global1 = func_1();
    global2 = array<u32, 2>();
    global2 = array<u32, 2>();
    global1 = Struct_1(global0.b.a, _wgslsmith_clamp_vec3_u32(~global0.b.b << (select(~u_input.b, ~vec3<u32>(global2[_wgslsmith_index_u32(23372u, 2u)], 19506u, 2509u), select(vec3<bool>(global0.c.c, true, global3.x), vec3<bool>(true, global1.c, false), global1.c)) % vec3<u32>(32u)), vec3<u32>(~8971u, 0u, ~global0.c.b.x), _wgslsmith_div_vec3_u32(~max(global0.c.b, global1.b), ~u_input.b)), !any(vec3<bool>(-306f <= global1.a, true, func_1().c)));
    global2 = array<u32, 2>();
    global1 = global0.c;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.b.a * -888f), global0.c.a)), ~_wgslsmith_clamp_i32(0i, u_input.a.x, u_input.a.x) | -2147483647i, -(~(-vec4<i32>(-2147483647i, -33742i, 1i, -52619i))));
}

