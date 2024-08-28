struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<bool>,
    d: vec2<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: i32;

var<private> global2: array<vec2<bool>, 19>;

var<private> global3: array<vec2<bool>, 16> = array<vec2<bool>, 16>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: i32) -> vec3<f32> {
    global2 = array<vec2<bool>, 19>();
    global3 = array<vec2<bool>, 16>();
    global1 = _wgslsmith_mult_i32(~firstTrailingBit(36212i), -47748i);
    global0 = ~countOneBits(reverseBits(max(u_input.c, vec3<i32>(70677i, arg_0, global0.x))));
    var var_0 = global3[_wgslsmith_index_u32(countOneBits(0u), 16u)];
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -895f) - _wgslsmith_f_op_f32(f32(-1f) * -898f)), 1f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1074f + -1000f)) + -596f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -554f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(796f * -985f))))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = Struct_3(_wgslsmith_dot_vec2_i32(global0.zx, -(~vec2<i32>(global0.x, -10703i))));
    var var_1 = arg_2;
    let var_2 = u_input.b.x;
    var_1 = arg_1;
    global2 = array<vec2<bool>, 19>();
    return min(abs(_wgslsmith_div_vec4_u32(~(~vec4<u32>(arg_0, 32216u, 0u, 15536u)), ~vec4<u32>(0u, 4294967295u, arg_0, 4294967295u))), vec4<u32>(0u | _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(52100u, arg_0, arg_0)), _wgslsmith_div_vec3_u32(u_input.a, u_input.a)), _wgslsmith_mult_u32(u_input.a.x, 1u >> (abs(0u) % 32u)), ~arg_0, 1u));
}

fn func_2(arg_0: Struct_1) -> i32 {
    let var_0 = ~(~(~(~vec4<u32>(13208u, u_input.a.x, 4294967295u, u_input.a.x)))) & ~(~func_3(select(u_input.a.x, u_input.a.x, true), Struct_1(-1i, u_input.c.x, arg_0.c, u_input.b.yy, arg_0.c.yxx), Struct_1(278i, 17880i, arg_0.c, vec2<i32>(arg_0.a, 36252i), arg_0.c.xwy)));
    global3 = array<vec2<bool>, 16>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) * 1f);
    let var_2 = u_input.a.x;
    global3 = array<vec2<bool>, 16>();
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<bool>, 19>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-335f, -437f, -778f)) * vec3<f32>(383f, 827f, -920f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1761f, -914f, -567f)))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-454f + 466f), -1342f, _wgslsmith_f_op_f32(f32(-1f) * -452f)))) + _wgslsmith_f_op_vec3_f32(func_1(-4032i)));
    let var_1 = ~(~max(~abs(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 0u)), select(vec4<u32>(u_input.a.x, u_input.a.x, 34594u, 4294967295u), vec4<u32>(1u, u_input.a.x, u_input.a.x, 36185u), true) & vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)));
    let var_2 = var_0.x;
    global0 = -vec3<i32>(global0.x, min(countOneBits(func_2(Struct_1(35551i, global0.x, vec4<bool>(false, true, true, false), u_input.b.yy, vec3<bool>(true, true, true)))), _wgslsmith_sub_i32(global0.x, global0.x) | countOneBits(-4231i)), _wgslsmith_div_i32((i32(-1i) * -17762i) >> (1u % 32u), 9217i));
    global2 = array<vec2<bool>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec4<i32>(abs(-u_input.c.x), ~(-11648i), 0i, 0i)), -vec4<i32>(-(~0i), func_2(Struct_1(-79711i, 27768i, vec4<bool>(true, true, true, false), global0.zx, vec3<bool>(true, true, false))), global0.x, -43282i), select(_wgslsmith_clamp_vec3_i32(~(-vec3<i32>(-2147483647i, 2147483647i, 2842i)), min(u_input.b, firstTrailingBit(vec3<i32>(1i, 0i, -2147483647i))), vec3<i32>(-2147483647i, u_input.c.x, 0i) & abs(vec3<i32>(u_input.c.x, -12235i, global0.x))), min(select(~u_input.b, u_input.b, vec3<bool>(true, true, true)), abs(vec3<i32>(-1i, global0.x, -28093i))), !(!(global0.x <= global0.x))), u_input.c);
}

