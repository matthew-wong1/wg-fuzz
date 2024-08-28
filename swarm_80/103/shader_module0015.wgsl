struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_2, 28>;

var<private> global2: array<vec3<u32>, 16> = array<vec3<u32>, 16>(vec3<u32>(13275u, 19751u, 0u), vec3<u32>(1u, 57636u, 38823u), vec3<u32>(30490u, 4294967295u, 4294967295u), vec3<u32>(0u, 1u, 6224u), vec3<u32>(1u, 4294967295u, 53940u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(4294967295u, 5039u, 55122u), vec3<u32>(0u, 0u, 0u), vec3<u32>(31194u, 1u, 19873u), vec3<u32>(1u, 0u, 21572u), vec3<u32>(0u, 1u, 76785u), vec3<u32>(1u, 49591u, 0u), vec3<u32>(0u, 0u, 1u), vec3<u32>(81554u, 4294967295u, 0u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> f32 {
    return 1408f;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: vec2<f32>) -> bool {
    global0 = all(vec2<bool>(!any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), any(vec4<bool>(false, true, false, true))));
    var var_0 = vec2<i32>(reverseBits(u_input.e), ~_wgslsmith_mod_i32(0i, 24406i));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(arg_2)));
    let var_2 = vec2<f32>(_wgslsmith_div_f32(-389f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(ceil(-128f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-825f, Struct_1(-2147483647i, arg_2.x)))) - var_1.x) * -353f));
    var_0 = vec2<i32>(var_0.x, ~_wgslsmith_clamp_i32(u_input.c, ~(-1i), u_input.c ^ min(u_input.b.x, var_0.x)));
    return true;
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: vec2<f32>, arg_3: u32) -> Struct_2 {
    var var_0 = u_input.b.x;
    var var_1 = any(select(select(select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), !vec4<bool>(true, arg_0.x, arg_0.x, false), arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, true), all(vec4<bool>(false, arg_0.x, true, true)) & false), !vec4<bool>(!arg_0.x, u_input.d >= arg_3, false, arg_0.x), true));
    global2 = array<vec3<u32>, 16>();
    global1 = array<Struct_2, 28>();
    let var_2 = vec4<i32>(u_input.c, u_input.c, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(-(~vec4<i32>(60811i, -20940i, -15068i, 1i)), max(~vec4<i32>(u_input.c, u_input.e, u_input.e, 2147483647i), vec4<i32>(2147483647i, -6436i, -2913i, 35722i) & vec4<i32>(-11031i, u_input.c, u_input.e, -52942i))), 0i), countOneBits(u_input.c) << (_wgslsmith_add_u32(15424u, 0u) % 32u));
    return global1[_wgslsmith_index_u32(u_input.d, 28u)];
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_1(~(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 1248i), u_input.b.yy) ^ 37546i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(790f)) + 1000f));
    let var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-177f - _wgslsmith_f_op_f32(-var_1.b)))) + var_0.b);
    global0 = true;
    global0 = -var_1.a == var_0.a;
    return func_4(vec3<bool>(!func_2(vec3<bool>(true, true, true), vec2<u32>(4294967295u, 42746u) ^ u_input.a.yz, vec2<f32>(-466f, 1000f)), !(_wgslsmith_f_op_f32(var_0.b - -257f) <= _wgslsmith_f_op_f32(-var_0.b)), any(select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true), 1i == var_0.a))), _wgslsmith_div_u32(~abs(_wgslsmith_add_u32(u_input.d, 0u)), ~(~1u)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f))))), 1u);
}

fn func_5(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_2) -> i32 {
    var var_0 = arg_1.xx;
    let var_1 = Struct_1(arg_2.d.a, 949f);
    var_0 = vec2<f32>(var_0.x, 1106f);
    let var_2 = ~u_input.a.yyx;
    var var_3 = select(select(select(arg_2.c, arg_2.c, -arg_0 != _wgslsmith_div_i32(1i, -2147483647i)), vec4<bool>(!all(arg_2.c.zz), true, arg_2.c.x, true), !arg_2.c), func_1().c, select(vec4<bool>(arg_2.c.x, (arg_2.a.b >= arg_1.x) | !arg_2.c.x, !arg_2.c.x, !(!arg_2.c.x)), arg_2.c, func_1().c));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(u_input.c & ~1i);
    var var_1 = func_5(-20168i, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(641f, 315f, -265f, -451f))), vec4<f32>(-151f, _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_div_f32(1073f, -1892f), _wgslsmith_f_op_f32(1093f - -1852f)))))), func_1());
    var var_2 = true;
    var var_3 = -953f;
    var var_4 = func_1().e;
    var var_5 = vec4<bool>(all(select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true), any(vec4<bool>(false, false, false, false))), select(vec4<bool>(true, true, true, true), func_4(vec3<bool>(false, true, true), 69537u, vec2<f32>(-718f, var_4.b), u_input.d).c, true), vec4<bool>(true, true, true, true))), true, false, _wgslsmith_clamp_u32(u_input.d, ~u_input.a.x >> (u_input.d % 32u), ~abs(u_input.d)) >= select(_wgslsmith_mod_u32(~u_input.a.x, 1u), ~(~27770u), any(vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(33066u, u_input.b.xx, abs(u_input.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.b) * _wgslsmith_f_op_f32(trunc(-195f))), -282f, 1441f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_4.b)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1321f, _wgslsmith_div_f32(var_4.b, var_4.b), var_4.b) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(212f, var_4.b, var_4.b, -676f) - vec4<f32>(-1441f, -1889f, var_4.b, var_4.b))))));
}

