struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(8257i, vec2<i32>(i32(-2147483648), -59148i)), Struct_1(1i, vec2<i32>(0i, 23756i)));

var<private> global1: u32;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(-vec2<i32>(abs(14130i), u_input.c.x), arg_0.zy ^ -vec2<i32>(-2147483647i, u_input.c.x)), vec2<i32>(_wgslsmith_add_i32(u_input.b, arg_0.x), 60993i));
    let var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(abs(arg_1.b.x)), -713f, _wgslsmith_f_op_f32(f32(-1f) * -623f)));
    var var_2 = ~u_input.a;
    let var_3 = vec3<bool>(arg_1.a.x, arg_1.a.x, true);
    var var_4 = var_1.a;
    return arg_1.a;
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2339f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(146f - -1411f), 1071f), 1604f)));
    var_0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(f32(-1f) * -388f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_0.a.x))))), var_0.a.x));
    var var_1 = Struct_2(!select(vec4<bool>(true, all(vec3<bool>(true, false, false)), false, all(vec2<bool>(false, false))), select(vec4<bool>(false, false, false, false), func_3(vec3<i32>(arg_0.b.x, -6557i, u_input.b), Struct_2(vec4<bool>(false, true, true, true), var_0.a)), all(vec2<bool>(false, false))), var_0.a.x != _wgslsmith_f_op_f32(-1352f * var_0.a.x)), var_0.a);
    let var_2 = u_input.c.yx;
    global0 = array<Struct_1, 2>();
    return Struct_2(var_1.a, vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(1465f * 419f), _wgslsmith_f_op_f32(trunc(444f))));
}

fn func_1() -> vec2<u32> {
    let var_0 = func_2(global0[_wgslsmith_index_u32(u_input.a, 2u)]);
    var var_1 = global0[_wgslsmith_index_u32(u_input.a, 2u)];
    global1 = ~u_input.a;
    let var_2 = var_0.b.x;
    global1 = select(~u_input.a, ~(~4294967295u), var_0.a.x);
    return abs(vec2<u32>(_wgslsmith_dot_vec4_u32((vec4<u32>(897u, u_input.a, 0u, 0u) & vec4<u32>(u_input.a, 18245u, u_input.a, 18994u)) >> (countOneBits(vec4<u32>(u_input.a, u_input.a, 52531u, 9862u)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(u_input.a, 1u, 7952u, 0u)), select(vec4<u32>(32650u, u_input.a, 1u, u_input.a), vec4<u32>(u_input.a, 0u, 22399u, u_input.a), false))), ~firstTrailingBit(100356u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -729f))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-500f + 1877f), _wgslsmith_f_op_f32(-1080f + 632f)))), _wgslsmith_f_op_f32(round(-1573f))));
    global0 = array<Struct_1, 2>();
    var var_1 = 0i;
    let var_2 = ~min(select(func_1(), vec2<u32>(1u, u_input.a), true) ^ _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, 4294967295u)), vec2<u32>(4294967295u, 76268u)), vec2<u32>((u_input.a & 4294967295u) << (~u_input.a % 32u), ~u_input.a));
    global0 = array<Struct_1, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~(var_2.x >> ((u_input.a & 52897u) % 32u))), firstLeadingBit(_wgslsmith_div_vec2_i32(u_input.c.yy, vec2<i32>(-u_input.b, u_input.b))), u_input.b, ~u_input.c.yx);
}

