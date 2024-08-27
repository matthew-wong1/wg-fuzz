struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: f32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 5>;

var<private> global1: Struct_4;

var<private> global2: Struct_3 = Struct_3(vec3<f32>(-647f, -181f, 231f));

var<private> global3: Struct_4;

var<private> global4: array<vec3<f32>, 9> = array<vec3<f32>, 9>(vec3<f32>(-1774f, -740f, -1897f), vec3<f32>(-1752f, 282f, -473f), vec3<f32>(876f, -1000f, 2312f), vec3<f32>(-164f, 216f, -1000f), vec3<f32>(-261f, 1000f, 1557f), vec3<f32>(648f, -268f, 314f), vec3<f32>(163f, -478f, -696f), vec3<f32>(-702f, -296f, -594f), vec3<f32>(1133f, 717f, -1816f));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: bool, arg_3: f32) -> i32 {
    let var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_div_u32(u_input.a.x, ~(33605u << (0u % 32u))), 0u, u_input.a.x), _wgslsmith_mult_vec3_u32(~countOneBits(u_input.a.yxw), countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 0u, 1u), _wgslsmith_div_vec3_u32(u_input.a.yyy, u_input.a.xyx)))));
    return ~_wgslsmith_div_i32(0i, ~(-11913i) << (~_wgslsmith_mult_u32(var_0.x, var_0.x) % 32u));
}

fn func_2() -> Struct_4 {
    let var_0 = vec3<bool>(func_3(~reverseBits(u_input.b), Struct_4(_wgslsmith_f_op_f32(-global1.a)), false, global2.a.x) > u_input.c.x, !(!select(any(vec3<bool>(true, true, false)), true, true)), false == !all(vec4<bool>(true, true, false, true)));
    let var_1 = 1i;
    global2 = global0[_wgslsmith_index_u32(1u, 5u)];
    var var_2 = !vec3<bool>(false, select(any(select(vec4<bool>(true, var_0.x, false, false), vec4<bool>(false, var_0.x, false, var_0.x), false)), var_0.x, var_0.x), all(!vec4<bool>(var_0.x, true, var_0.x, var_0.x)) & !(!var_0.x));
    let var_3 = select(4294967295u, _wgslsmith_add_u32(firstLeadingBit(~82480u), ~(~_wgslsmith_sub_u32(0u, u_input.a.x))), !var_2.x);
    return Struct_4(_wgslsmith_f_op_f32(round(214f)));
}

fn func_1(arg_0: bool, arg_1: vec3<u32>) -> u32 {
    global1 = func_2();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-286f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-global1.a), arg_0 != arg_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x * -1000f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global1.a, global1.a)))) * global1.a));
    let var_1 = firstTrailingBit(u_input.b.zzz);
    let var_2 = countOneBits(select(vec3<u32>(~u_input.a.x, arg_1.x, firstTrailingBit(min(26283u, u_input.a.x))), select(_wgslsmith_sub_vec3_u32(arg_1, ~vec3<u32>(0u, u_input.a.x, arg_1.x)), vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), u_input.a.x, 83965u), all(!vec2<bool>(arg_0, true))), arg_0 & any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(arg_0, arg_0)))));
    let var_3 = vec2<f32>(-819f, _wgslsmith_f_op_f32(-var_0));
    return ~arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(abs(firstTrailingBit(select(u_input.a.x, ~4294967295u, true))), ~(~57582u), ~u_input.a.x, u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, vec4<u32>(_wgslsmith_sub_u32(~(~1u), func_1(true, vec3<u32>(u_input.a.x, u_input.a.x, 37773u))), 5031u, var_0.x, ~56410u));
}

