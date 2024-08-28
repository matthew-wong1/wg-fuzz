struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec2<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: u32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6>;

var<private> global1: f32;

var<private> global2: Struct_2;

var<private> global3: vec4<bool>;

var<private> global4: array<f32, 6>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_4(vec3<bool>(!(u_input.a.x != max(-1i, u_input.a.x)), !any(vec4<bool>(false, true, global3.x, global3.x)), !(-53252i < reverseBits(u_input.a.x))), _wgslsmith_sub_vec2_u32(u_input.b.xx, u_input.b.zz), u_input.b.x);
    return vec4<bool>(false, global3.x & true, global2.a, u_input.a.x == 1i);
}

fn func_1() -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2316f - 1572f) - global2.b.x), 243f, -811f) + global2.b));
    global3 = select(!select(vec4<bool>(true, false, all(vec4<bool>(global2.a, global2.a, true, true)), true), !vec4<bool>(true, true, global3.x, true), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, global2.a, false, true), vec4<bool>(global2.a, global3.x, global3.x, global2.a)), vec4<bool>(true, global2.a, global2.a, true), func_2())), select(func_2(), !func_2(), any(select(vec3<bool>(global2.a, global2.a, false), global3.wxz, vec3<bool>(false, false, global3.x))) && !all(vec2<bool>(global3.x, true))), vec4<bool>(false, global3.x, false, (true && (global2.a && true)) == true));
    return Struct_4(vec3<bool>(var_0.x == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.x - global4[_wgslsmith_index_u32(4749u, 6u)])), global2.a, !(u_input.a.x != ~(-25553i))), vec2<u32>(~u_input.b.x, max(73807u, ~u_input.b.x)) << (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)), ~(~u_input.b.x));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: f32) -> vec4<f32> {
    global3 = func_2();
    let var_0 = !select(vec4<bool>(false, -39583i < u_input.a.x, global3.x, all(vec2<bool>(true, false)) && false), vec4<bool>(true, true, !global2.a, all(global3.xxx)), vec4<bool>(any(select(global3.xy, vec2<bool>(arg_1, global3.x), arg_1)), any(global3.ywx), global2.a, func_2().x));
    let var_1 = Struct_3(global0[_wgslsmith_index_u32(4294967295u, 6u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.b)), !var_0.wy);
    var var_2 = vec2<i32>(u_input.a.x, _wgslsmith_div_i32(u_input.a.x, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.a.x), ~vec4<i32>(11886i, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_add_i32(u_input.a.x, ~2147483647i))));
    let var_3 = ~(_wgslsmith_div_vec4_u32(~(~vec4<u32>(30934u, 4294967295u, u_input.b.x, u_input.b.x)), vec4<u32>(4294967295u, 1u, 30265u, 1u)) ^ min(~vec4<u32>(u_input.b.x, 1u, 32145u, 1u), ~vec4<u32>(4256u, u_input.b.x, u_input.b.x, 13321u)));
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4[_wgslsmith_index_u32(12396u, 6u)], arg_2)) - _wgslsmith_f_op_f32(step(-470f, -898f)))), global2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0))), _wgslsmith_f_op_f32(trunc(-879f)));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<f32>) -> f32 {
    global4 = array<f32, 6>();
    global4 = array<f32, 6>();
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_1().b.x, 0u), 6u)];
    global4 = array<f32, 6>();
    global4 = array<f32, 6>();
    return _wgslsmith_f_op_f32(arg_1.x + -2463f);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_5) -> Struct_2 {
    global1 = -645f;
    global0 = array<Struct_2, 6>();
    let var_0 = global2.b.x;
    let var_1 = Struct_1(vec2<u32>(53447u & (_wgslsmith_div_u32(u_input.b.x, arg_1.c.x) | _wgslsmith_mult_u32(u_input.b.x, u_input.b.x)), _wgslsmith_sub_u32(~arg_0.c, 39029u)));
    let var_2 = arg_1.c.yz;
    return global0[_wgslsmith_index_u32(1u, 6u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_5(func_1(), Struct_5(vec3<bool>(false, global3.x, true), u_input.a.x, abs(select(vec4<u32>(u_input.b.x, u_input.b.x, 27268u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u), any(vec2<bool>(global3.x, false)))), vec4<i32>(-2147483647i, ~u_input.a.x, (i32(-1i) * -50244i) >> (u_input.b.x % 32u), 2147483647i), vec2<f32>(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(func_3(global4[_wgslsmith_index_u32(1u, 6u)], false, global2.b.x)), vec4<f32>(106f, -172f, 197f, -1321f))))));
    var var_0 = vec2<i32>(firstTrailingBit(u_input.a.x), -u_input.a.x);
    global3 = !func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(~(~u_input.a.yy), u_input.a.yx) >> (u_input.b.x % 32u), vec4<u32>(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), 39346u, max(u_input.b.x, ~u_input.b.x) << (firstLeadingBit(u_input.b.x) % 32u), u_input.b.x | ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b.x), u_input.b.yy)));
}

