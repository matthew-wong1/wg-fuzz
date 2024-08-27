struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> Struct_2 {
    let var_0 = vec2<u32>(64093u, 0u);
    let var_1 = 0u;
    var var_2 = Struct_2(Struct_1(_wgslsmith_mult_u32(~(~1u), 1u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-533f, 103f, all(vec3<bool>(false, false, false)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-271f, 243f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(257f)))) * _wgslsmith_f_op_f32(f32(-1f) * -1203f))), !vec3<bool>(_wgslsmith_f_op_f32(round(-206f)) < _wgslsmith_div_f32(-239f, 1000f), u_input.c < ~7333i, true));
    var var_3 = Struct_2(var_2.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-215f + _wgslsmith_f_op_f32(-var_2.b))))), var_2.c);
    global0 = array<vec3<f32>, 32>();
    return Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(~vec2<u32>(25303u, 0u), ~_wgslsmith_div_vec2_u32(u_input.b.zx, var_0))), _wgslsmith_f_op_f32(floor(-850f)), !vec3<bool>(true == all(vec3<bool>(var_2.c.x, true, false)), true, false));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_1, arg_3: vec2<f32>) -> f32 {
    var var_0 = Struct_1(u_input.b.x);
    var_0 = arg_2;
    global0 = array<vec3<f32>, 32>();
    global0 = array<vec3<f32>, 32>();
    global0 = array<vec3<f32>, 32>();
    return arg_3.x;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec3<f32>) -> Struct_2 {
    var var_0 = select(vec4<bool>(true, arg_0.c.x, any(!select(vec2<bool>(arg_0.c.x, true), arg_0.c.xz, vec2<bool>(arg_0.c.x, true))), true), vec4<bool>(any(vec2<bool>(false, true)), !(_wgslsmith_f_op_f32(select(543f, arg_0.b, arg_0.c.x)) != _wgslsmith_f_op_f32(f32(-1f) * -2254f)), false, all(select(vec4<bool>(true, false, arg_0.c.x, arg_0.c.x), vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x, true), all(vec2<bool>(arg_0.c.x, arg_0.c.x))))), !all(select(select(vec4<bool>(arg_0.c.x, false, arg_0.c.x, false), vec4<bool>(true, arg_0.c.x, arg_0.c.x, arg_0.c.x), vec4<bool>(false, arg_0.c.x, true, arg_0.c.x)), vec4<bool>(true, arg_0.c.x, false, true), !vec4<bool>(true, arg_0.c.x, arg_0.c.x, true))));
    var var_1 = arg_0.a;
    return Struct_2(Struct_1(func_2().a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.x))) * arg_2.x)), vec3<bool>(u_input.a > ~_wgslsmith_div_u32(47168u, var_1.a), arg_0.c.x, true));
}

fn func_1() -> Struct_2 {
    var var_0 = func_4(func_2(), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -585f) + _wgslsmith_f_op_f32(func_3(vec2<bool>(true, true), true, Struct_1(0u), vec2<f32>(-1861f, -476f)))), _wgslsmith_f_op_f32(trunc(-166f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-2639f, 106f)), _wgslsmith_f_op_f32(min(663f, 964f))))), global0[_wgslsmith_index_u32(u_input.a, 32u)]);
    var var_1 = 2147483647i;
    global0 = array<vec3<f32>, 32>();
    let var_2 = !(!any(!var_0.c));
    return Struct_2(func_4(func_4(func_2(), _wgslsmith_div_vec4_f32(vec4<f32>(104f, var_0.b, -1364f, -1068f), vec4<f32>(-309f, 734f, -224f, -277f)), vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0.b)), _wgslsmith_f_op_f32(min(var_0.b, var_0.b)), var_0.b)), vec4<f32>(-1001f, _wgslsmith_f_op_f32(trunc(1696f)), _wgslsmith_div_f32(-1196f, _wgslsmith_f_op_f32(trunc(-870f))), -402f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(global0[_wgslsmith_index_u32(var_0.a.a, 32u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, 2489f, var_0.b) * global0[_wgslsmith_index_u32(var_0.a.a, 32u)]), select(var_0.c, vec3<bool>(true, var_2, false), var_0.c.x))))).a, var_0.b, !var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_2(Struct_1(50547u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.b)) - _wgslsmith_div_f32(124f, var_0.b)) - _wgslsmith_f_op_f32(var_0.b * var_0.b)) - _wgslsmith_f_op_f32(func_3(!vec2<bool>(var_0.c.x, true), false, Struct_1(~1u), _wgslsmith_f_op_vec2_f32(vec2<f32>(1750f, var_0.b) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0.b)))))), var_0.c);
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * var_0.b)))) + -1804f)));
    var_0 = Struct_2(Struct_1(u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -984f), func_1().c);
    var_1 = -1267f;
    let var_2 = Struct_2(func_2().a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + func_1().b)), var_0.c);
    let var_3 = Struct_2(Struct_1(38747u), _wgslsmith_f_op_f32(sign(-1213f)), func_1().c);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, -(~(~vec3<i32>(u_input.c, u_input.c, u_input.c))) >> (u_input.b % vec3<u32>(32u)), 0u, func_1().a.a);
}

