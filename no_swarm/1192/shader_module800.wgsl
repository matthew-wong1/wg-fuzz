struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: f32,
    d: vec2<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> f32 {
    let var_0 = u_input.c;
    let var_1 = global0[_wgslsmith_index_u32(~1u, 6u)];
    return -2803f;
}

fn func_1(arg_0: u32) -> bool {
    global0 = array<Struct_2, 6>();
    global0 = array<Struct_2, 6>();
    global0 = array<Struct_2, 6>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-1f)));
    let var_1 = all(!vec3<bool>(all(vec2<bool>(true, true)), all(vec3<bool>(false, false, true)), !any(vec3<bool>(false, false, true))));
    return var_1;
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = !arg_0.d.x;
    global0 = array<Struct_2, 6>();
    var var_1 = u_input.b.xz;
    return arg_0;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec2<u32>) -> Struct_3 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1000f + arg_1.b.c))), arg_1.d.c)) - arg_1.b.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1041f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.d.e.x), arg_1.d.e.x))));
    global0 = array<Struct_2, 6>();
    global0 = array<Struct_2, 6>();
    var var_1 = global0[_wgslsmith_index_u32(22368u, 6u)];
    let var_2 = Struct_3(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(select(countOneBits(vec4<u32>(arg_1.d.a.x, arg_1.c, 0u, u_input.a)), ~vec4<u32>(0u, 0u, u_input.a, 0u), !vec4<bool>(arg_1.a, false, var_1.a, true)), vec4<u32>(_wgslsmith_mod_u32(arg_2.x, arg_1.c), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 71793u, var_1.b.a.x, var_1.c), vec4<u32>(u_input.a, 0u, 8832u, 18805u)), arg_2.x, countOneBits(arg_1.d.a.x))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(22405u, u_input.a, arg_1.b.a.x, arg_1.b.a.x), vec4<u32>(19680u, 7254u, 0u, arg_2.x)) << (~(~vec4<u32>(46575u, arg_1.c, arg_2.x, u_input.a)) % vec4<u32>(32u))), 0u);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(1i, Struct_2(!(!(u_input.a <= u_input.a)), Struct_1(vec2<u32>(u_input.a, u_input.a & u_input.a), true || select(false, true, false), _wgslsmith_div_f32(_wgslsmith_div_f32(-188f, -310f), _wgslsmith_f_op_f32(ceil(-1056f))), vec2<bool>(true, true), vec2<f32>(_wgslsmith_div_f32(1000f, 1011f), 1f)), ~77687u, func_3(Struct_1(~vec2<u32>(u_input.a, 0u), func_1(7424u), _wgslsmith_f_op_f32(-369f * 1262f), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1535f, 366f) - vec2<f32>(-532f, -1733f))), true)), vec2<u32>(4294967295u, countOneBits(u_input.a) ^ 1u) & vec2<u32>(~31728u, 79037u));
    var var_1 = ~(~select((u_input.a >> (95084u % 32u)) ^ max(0u, u_input.a), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(var_0.a, 42930u), var_0.a, 1u), any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false)))));
    var var_2 = _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(func_3(func_3(Struct_1(vec2<u32>(var_0.a, 0u), false, 1000f, vec2<bool>(false, true), vec2<f32>(-161f, -685f)), false), any(vec4<bool>(true, false, false, false))).a.x, ~_wgslsmith_mult_u32(1u, u_input.a)), _wgslsmith_sub_vec2_u32(~vec2<u32>(var_0.a, 0u), vec2<u32>(_wgslsmith_clamp_u32(4294967295u, 1u, 0u), func_3(Struct_1(vec2<u32>(6637u, var_0.b), false, -959f, vec2<bool>(true, true), vec2<f32>(135f, -195f)), true).a.x))), ~var_0.b);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(175f * -526f), func_3(Struct_1(min(select(vec2<u32>(45447u, 4294967295u), vec2<u32>(var_0.b, 102077u), true), max(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, 4294967295u))), any(vec3<bool>(true, true, true)), 665f, vec2<bool>(any(vec4<bool>(false, true, false, true)), true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1576f, -1419f)), vec2<f32>(-144f, 2151f))), true).e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(545f + 509f), _wgslsmith_div_f32(-503f, -415f), all(vec2<bool>(false, false))))))));
    var var_4 = !func_3(func_3(Struct_1(vec2<u32>(18221u, var_0.a) | vec2<u32>(var_0.b, u_input.a), true, func_3(Struct_1(vec2<u32>(var_0.b, 23185u), true, 397f, vec2<bool>(false, true), var_3.yz), true).e.x, select(vec2<bool>(true, true), vec2<bool>(true, false), true), _wgslsmith_f_op_vec2_f32(var_3.yy * var_3.xz)), false), !(any(vec2<bool>(true, false)) && all(vec2<bool>(false, false)))).b;
    let var_5 = Struct_4(Struct_2(true, Struct_1(~(~vec2<u32>(4294967295u, u_input.a)), all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-459f)))), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), false), true), vec2<f32>(var_3.x, var_3.x)), u_input.a, Struct_1(vec2<u32>(u_input.a, ~var_0.a), any(vec4<bool>(true, true, false, true)), _wgslsmith_f_op_f32(var_3.x - var_3.x), !select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<f32>(394f, _wgslsmith_div_f32(-489f, -156f)))));
    var_1 = 0u;
    let var_6 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(var_3.x, var_5.a.b.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f)))), -1947f, _wgslsmith_f_op_f32(abs(var_3.x)), 925f);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, 4294967295u);
}

