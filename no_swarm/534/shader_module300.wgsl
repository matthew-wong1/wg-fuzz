struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_2) -> bool {
    var var_0 = !arg_0.c.x;
    let var_1 = -u_input.b;
    let var_2 = select(~1i, 31878i, false);
    let var_3 = arg_0.a;
    var_0 = !(!arg_0.c.x);
    return true;
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = Struct_2(Struct_1(vec2<bool>(func_2(Struct_2(Struct_1(vec2<bool>(true, false)), vec4<f32>(-1449f, 1000f, 1379f, -1451f), vec2<bool>(true, true))), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(202f, 1294f, 142f, arg_0), vec4<f32>(-1048f, arg_0, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, arg_0, arg_0, arg_0), vec4<f32>(arg_0, arg_0, 761f, arg_0)))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0)), 888f, arg_0, _wgslsmith_f_op_f32(-arg_0)))), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true), !select(vec2<bool>(false, false), vec2<bool>(true, true), true)));
    let var_1 = var_0.b.xy;
    var var_2 = Struct_1(var_0.c);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x));
    let var_4 = Struct_2(var_0.a, var_0.b, select(vec2<bool>(!var_0.c.x, !all(var_0.a.a)), var_0.c, true));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -188f) * var_3));
}

fn func_1() -> bool {
    var var_0 = ~0u;
    var var_1 = vec2<u32>(~firstTrailingBit(select(abs(0u), 1u, func_2(Struct_2(Struct_1(vec2<bool>(false, true)), vec4<f32>(422f, 147f, -815f, -605f), vec2<bool>(false, true))))), _wgslsmith_dot_vec3_u32(firstTrailingBit(min(select(vec3<u32>(38675u, 0u, 20952u), vec3<u32>(4294967295u, 4294967295u, 1u), true), vec3<u32>(58996u, 72339u, 83130u))), ~(~min(vec3<u32>(1u, 0u, 12656u), vec3<u32>(1u, 14942u, 4294967295u)))));
    var var_2 = u_input.c;
    var var_3 = ~_wgslsmith_add_u32(1u, 0u) ^ _wgslsmith_div_u32(var_1.x, var_1.x);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1005f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-486f)))) * _wgslsmith_f_op_f32(f32(-1f) * -1140f)) * _wgslsmith_f_op_f32(f32(-1f) * -260f));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(vec2<bool>(func_1(), true), vec2<bool>(-u_input.b.x == u_input.a, !func_2(Struct_2(Struct_1(vec2<bool>(true, false)), vec4<f32>(-1013f, 136f, -347f, 803f), vec2<bool>(true, true)))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), any(vec4<bool>(true, false, false, false)) & true)));
    let var_1 = var_0;
    var var_2 = Struct_1(var_0.a);
    let var_3 = -vec3<i32>(~(~u_input.d >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 109432u), vec3<u32>(0u, 14439u, 0u)) % 32u)), -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(abs(u_input.a), _wgslsmith_add_i32(u_input.a, u_input.d), u_input.d), u_input.b));
    var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(u_input.b, _wgslsmith_mod_vec3_i32(select(vec3<i32>(u_input.d, u_input.a, u_input.c), vec3<i32>(-1i, -48427i, 30892i), vec3<bool>(var_1.a.x, var_1.a.x, true)) & max(vec3<i32>(67997i, -6812i, 2147483647i), vec3<i32>(-22328i, var_3.x, 0i)), _wgslsmith_div_vec3_i32(-var_3, vec3<i32>(-2147483647i, 0i, 29429i)))));
}

