struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1902f;

var<private> global1: array<Struct_3, 19>;

var<private> global2: u32 = 4294967295u;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = false && any(select(arg_0.zz, vec2<bool>(select(arg_0.x, false, arg_0.x), true), !arg_0.yy));
    global1 = array<Struct_3, 19>();
    let var_1 = 249f;
    global0 = -1000f;
    let var_2 = vec3<bool>(true, ((~(-8478i) <= u_input.a) && select(!var_0, false, arg_0.x)) != var_0, any(!vec4<bool>(var_0, true != arg_0.x, false, u_input.a != 0i)));
    return Struct_1(var_2.x, -1235f, _wgslsmith_add_vec2_u32(select(vec2<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b))), vec2<u32>(~0u, u_input.b), select(arg_0.xx, select(var_2.xx, vec2<bool>(true, false), true), var_2.zz)), vec2<u32>(u_input.b, 4081u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_2) -> bool {
    let var_0 = firstLeadingBit(firstTrailingBit(vec4<i32>(u_input.a, ~54214i, 1i, -5866i) | _wgslsmith_div_vec4_i32(-vec4<i32>(u_input.a, 1i, 17465i, -17996i), vec4<i32>(-5021i, u_input.a, u_input.a, -1041i))));
    var var_1 = (false || select(!all(vec4<bool>(arg_0.a, arg_0.a, false, false)), select(true, any(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, true)), !arg_0.a), true)) || true;
    global0 = 1415f;
    var var_2 = -1i;
    var_1 = any(vec2<bool>(true, true));
    return arg_0.a;
}

fn func_1(arg_0: f32) -> f32 {
    global2 = 0u;
    var var_0 = select(select(!vec3<bool>(arg_0 < arg_0, 23595i <= u_input.a, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_3(func_2(vec3<bool>(false, false, false)), vec4<f32>(1000f, 1435f, 1187f, -519f), Struct_2(vec2<u32>(u_input.b, u_input.b)))), !select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), !(!(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true))), any(vec3<bool>(true, true, true)) || !all(vec2<bool>(true, false)));
    var var_1 = 1u;
    global2 = u_input.b;
    let var_2 = u_input.b;
    return 520f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = firstLeadingBit(u_input.b) | 4294967295u;
    let var_0 = Struct_1(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(718f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -834f))))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(874f))))), max(abs(min(~vec2<u32>(u_input.b, u_input.b), firstTrailingBit(vec2<u32>(u_input.b, u_input.b)))), select(~(~vec2<u32>(1u, 4294967295u)), firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(37535u, u_input.b))), vec2<bool>(select(true, true, true), false))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b)))));
    global1 = array<Struct_3, 19>();
    global2 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~(abs(vec3<u32>(0u, 0u, u_input.b)) & vec3<u32>(u_input.b, 17145u, 37769u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(94412u, var_0.c.x, 4294967295u), vec3<u32>(1u, 53833u, 4473u)), ~vec3<u32>(u_input.b, 55857u, 4294967295u)), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(65271u, var_0.c.x, 4294967295u), vec3<u32>(var_0.c.x, 0u, var_0.c.x)), ~vec3<u32>(u_input.b, var_0.c.x, var_0.c.x)), ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 16440u, var_0.c.x), vec3<u32>(var_0.c.x, var_0.c.x, 0u)))), var_0.c.x);
    global1 = array<Struct_3, 19>();
    global2 = ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_div_vec3_i32(min(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, 18529i)), abs(vec3<i32>(-2147483647i, u_input.a, 2147483647i))), vec3<i32>(~u_input.a, 10508i, 20063i)), firstTrailingBit(_wgslsmith_div_vec3_i32(~vec3<i32>(53361i, u_input.a, u_input.a), vec3<i32>(4892i, u_input.a, u_input.a) & vec3<i32>(u_input.a, -2147483647i, u_input.a)))), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1124f - 235f))))));
}

