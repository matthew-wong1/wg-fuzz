struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: bool,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 9>;

var<private> global1: i32 = 28188i;

var<private> global2: array<u32, 11> = array<u32, 11>(48801u, 68521u, 0u, 4294967295u, 0u, 47077u, 0u, 1u, 36487u, 1u, 2021u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: u32) -> f32 {
    global2 = array<u32, 11>();
    var var_0 = _wgslsmith_clamp_u32(abs(~min(global2[_wgslsmith_index_u32(1u, 11u)], u_input.c.x) << (1u % 32u)), 18252u, ~u_input.c.x);
    global0 = array<vec2<i32>, 9>();
    var var_1 = Struct_4(!select(vec4<bool>(any(vec4<bool>(true, true, true, false)), any(vec3<bool>(false, false, true)), any(vec2<bool>(false, true)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), all(vec2<bool>(true, true))), ~u_input.c.yy);
    var var_2 = countOneBits(vec2<u32>(52373u, _wgslsmith_mult_u32(reverseBits(_wgslsmith_div_u32(var_1.b.x, 1u)), var_1.b.x)));
    return arg_0;
}

fn func_2(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_4, arg_3: vec4<bool>) -> u32 {
    let var_0 = Struct_3(-18453i | u_input.b, vec2<u32>(_wgslsmith_add_u32(u_input.c.x, ~u_input.c.x), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(arg_2.b, u_input.c.xy), vec2<u32>(4294967295u, u_input.c.x) ^ vec2<u32>(21157u, global2[_wgslsmith_index_u32(22626u, 11u)])) << (13062u % 32u)), true && arg_1.x, _wgslsmith_f_op_f32(func_3(-618f, arg_2.b.x)), Struct_1(!(!select(arg_3.wx, vec2<bool>(false, arg_3.x), arg_1.xy)), select(arg_2.a.xx, select(arg_1.xx, select(vec2<bool>(arg_2.a.x, false), arg_2.a.xz, vec2<bool>(true, arg_3.x)), select(arg_2.a.yz, arg_2.a.yx, false)), true)));
    let var_1 = Struct_1(!vec2<bool>(false == all(arg_3.yzw), arg_2.a.x), vec2<bool>(all(!vec4<bool>(true, arg_3.x, arg_1.x, arg_3.x)), all(select(select(vec3<bool>(arg_3.x, false, arg_3.x), arg_3.zxx, arg_1), !vec3<bool>(false, var_0.e.b.x, var_0.c), select(vec3<bool>(var_0.c, var_0.c, true), vec3<bool>(arg_1.x, true, true), arg_1.x)))));
    let var_2 = -222f;
    let var_3 = (0u << (_wgslsmith_clamp_u32(~global2[_wgslsmith_index_u32(108699u, 11u)], _wgslsmith_add_u32(var_0.b.x, 1u), firstLeadingBit(0u)) % 32u)) >> ((~(min(u_input.c.x, global2[_wgslsmith_index_u32(27951u, 11u)]) >> ((var_0.b.x ^ u_input.c.x) % 32u)) >> (~_wgslsmith_clamp_u32(15103u, _wgslsmith_clamp_u32(var_0.b.x, 1u, arg_2.b.x), 0u) % 32u)) % 32u);
    global0 = array<vec2<i32>, 9>();
    return firstLeadingBit(arg_2.b.x);
}

fn func_4(arg_0: u32) -> i32 {
    let var_0 = Struct_4(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true))), _wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(1u, 5502u) >> (u_input.c.xy % vec2<u32>(32u))) & (vec2<u32>(0u, 34589u) & _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, 6547u), vec2<u32>(u_input.c.x, arg_0))), ~vec2<u32>(global2[_wgslsmith_index_u32(arg_0 & 4294967295u, 11u)], ~9102u), u_input.c.xx));
    global2 = array<u32, 11>();
    global1 = abs(0i) << (_wgslsmith_mult_u32(56842u, arg_0) % 32u);
    let var_1 = Struct_4(vec4<bool>(all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, var_0.a.x, var_0.a.x, false), var_0.a.x)) || any(!var_0.a), !var_0.a.x, !all(select(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<bool>(var_0.a.x, true, true), vec3<bool>(var_0.a.x, false, true))), false), vec2<u32>(reverseBits(1u), ~4432u) & select(abs(~var_0.b), vec2<u32>(1u, arg_0) & var_0.b, vec2<bool>(!var_0.a.x, var_0.a.x)));
    global2 = array<u32, 11>();
    return -2147483647i;
}

fn func_1() -> Struct_2 {
    global0 = array<vec2<i32>, 9>();
    global0 = array<vec2<i32>, 9>();
    let var_0 = abs(u_input.c.x);
    global0 = array<vec2<i32>, 9>();
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(-41715i, _wgslsmith_sub_i32(-1i, -1i)) << (u_input.c.xz % vec2<u32>(32u)), -vec2<i32>(u_input.b, u_input.a)) & func_4(reverseBits(select(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(u_input.c.x, 11u)], var_0), func_2(u_input.a, vec3<bool>(true, false, false), Struct_4(vec4<bool>(false, true, false, false), vec2<u32>(u_input.c.x, 30021u)), vec4<bool>(false, false, false, true)), true)));
    return Struct_2(Struct_1(vec2<bool>(false, true), vec2<bool>(all(vec4<bool>(true, true, true, true)), false && select(false, true, true))), Struct_1(vec2<bool>(_wgslsmith_mod_u32(35339u, global2[_wgslsmith_index_u32(48112u, 11u)]) == ~53472u, true || any(vec3<bool>(true, true, false))), vec2<bool>(true, !select(false, true, true))), Struct_1(vec2<bool>(true, true), vec2<bool>(true, true)), true, Struct_1(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), var_0 == u_input.c.x), vec2<bool>(true, true), true)));
}

fn func_5(arg_0: Struct_2, arg_1: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(259f + -984f)), -261f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-649f, -1227f))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -477f), _wgslsmith_f_op_f32(trunc(-499f))))));
    global2 = array<u32, 11>();
    global2 = array<u32, 11>();
    let var_1 = func_1().a;
    var var_2 = ~max(vec2<u32>(firstTrailingBit(1u), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, 0u, 1u)), 11u)]) << ((_wgslsmith_add_vec2_u32(u_input.c.xz, vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(47669u, 11u)])) & vec2<u32>(u_input.c.x, u_input.c.x)) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 11u)], 11u)]), min(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 11u)], 11u)], 1u), vec2<u32>(41107u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 11u)]))), reverseBits(~62148u)));
    return firstLeadingBit(~countOneBits(arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(), ~(~0i));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-533f, _wgslsmith_f_op_f32(f32(-1f) * -126f))), 1f));
    global2 = array<u32, 11>();
    var var_2 = Struct_1(select(func_1().c.b, select(vec2<bool>(true, true), !func_1().a.b, any(vec3<bool>(false, false, true))), true), !select(vec2<bool>(true, -1000f >= var_1), vec2<bool>(10411u == u_input.c.x, true), vec2<bool>(all(vec2<bool>(false, true)), func_1().b.b.x)));
    let var_3 = 669f;
    var_2 = Struct_1(!(!(!(!var_2.a))), vec2<bool>(true, 1048f < var_1));
    let var_4 = any(var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(~82233u, -func_4(_wgslsmith_mult_u32(_wgslsmith_div_u32(0u, global2[_wgslsmith_index_u32(u_input.c.x, 11u)]), 42756u)), max(17685u, _wgslsmith_dot_vec2_u32(u_input.c.yz, countOneBits(vec2<u32>(30067u, global2[_wgslsmith_index_u32(0u, 11u)])))));
}

