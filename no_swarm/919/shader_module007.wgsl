struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: vec2<f32>,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: Struct_1,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_2,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(true, false, true, false), false, 805f, 0i);

var<private> global1: array<Struct_1, 31>;

var<private> global2: array<vec3<bool>, 5> = array<vec3<bool>, 5>(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: u32) -> vec2<u32> {
    let var_0 = global0.d;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1245f, _wgslsmith_f_op_f32(-global0.c), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-436f + global0.c)));
    global1 = array<Struct_1, 31>();
    var var_2 = global1[_wgslsmith_index_u32(0u, 31u)];
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(292f + _wgslsmith_f_op_f32(trunc(var_2.c))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1000f)))))), -611f, _wgslsmith_f_op_f32(-1356f - 1109f));
    return ~(~(~vec2<u32>(arg_2, 1u)) >> (_wgslsmith_clamp_vec2_u32(~countOneBits(vec2<u32>(arg_2, arg_2)), ~vec2<u32>(30494u, arg_2) << ((vec2<u32>(62739u, arg_2) | vec2<u32>(arg_2, arg_2)) % vec2<u32>(32u)), (vec2<u32>(0u, arg_2) & vec2<u32>(4294967295u, 53422u)) ^ vec2<u32>(arg_2, arg_2)) % vec2<u32>(32u)));
}

fn func_2() -> Struct_2 {
    global0 = Struct_1(global0.a, global0.a.x, _wgslsmith_f_op_f32(global0.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.c)) - 211f) * _wgslsmith_f_op_f32(516f - global0.c))), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i ^ global0.d, _wgslsmith_div_i32(1i, -14938i), ~global0.d, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(5481i, u_input.b.x, 0i))), ~vec4<i32>(0i, 1i, 16444i, -1i)), ~(~global0.d)));
    var var_0 = global2[_wgslsmith_index_u32(~countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(_wgslsmith_clamp_u32(1u, 4294967295u, 4294967295u), 1u))), 5u)];
    var_0 = select(vec3<bool>(true, global0.b, !global0.a.x & var_0.x), global2[_wgslsmith_index_u32(65366u, 5u)], !var_0.x);
    var var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~min(vec2<u32>(5527u, 3104u), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(81388u, 89442u))), abs(func_3(any(global2[_wgslsmith_index_u32(59474u, 5u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c, -462f) * vec2<f32>(global0.c, -1334f)), _wgslsmith_div_u32(0u, 37352u)))), 31u)];
    let var_2 = var_1.c;
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1713f, 1000f), vec2<f32>(774f, -597f), false))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-324f, 1971f), vec2<f32>(global0.c, global0.c))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, 2067f))))), Struct_1(vec4<bool>(true, false, var_1.a.x && var_1.b, !var_1.a.x && false), true, -489f, 1i), var_0.x);
}

fn func_1(arg_0: vec3<i32>) -> Struct_4 {
    global1 = array<Struct_1, 31>();
    let var_0 = func_2();
    let var_1 = !(global0.a.x & !(1u >= _wgslsmith_dot_vec2_u32(vec2<u32>(3748u, 0u), vec2<u32>(0u, 4435u))));
    global2 = array<vec3<bool>, 5>();
    return Struct_4(func_2().b, func_2(), var_1 == any(select(vec4<bool>(var_1, false, var_1, var_0.b.a.x), vec4<bool>(false, var_0.c, false, global0.a.x), !var_0.b.a)), Struct_1(!vec4<bool>(!var_0.b.a.x, true, !global0.b, !global0.a.x), (any(vec2<bool>(false, var_1)) && false) && false, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - 214f), 860f, (var_0.b.b || true) || all(vec4<bool>(var_0.c, true, global0.a.x, global0.a.x)))), 34946i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~(~vec3<i32>(global0.d, -2147483647i, global0.d) >> (vec3<u32>(1u, 1u, ~19056u) % vec3<u32>(32u))));
    global0 = func_2().b;
    let var_1 = 4294967295u;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-146f, var_0.b.b.c, global0.a.x)), _wgslsmith_f_op_f32(max(-281f, -916f)), _wgslsmith_f_op_f32(1645f - var_0.a.c), global0.c)) * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * global0.c), _wgslsmith_f_op_f32(sign(-337f))), -1092f, global0.c, 1174f)));
    var var_3 = 1u;
    var var_4 = global0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, firstTrailingBit(4294967295u));
}

