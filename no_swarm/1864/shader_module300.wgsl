struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: i32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
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

var<private> global0: array<Struct_2, 12>;

var<private> global1: u32;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1() -> vec4<bool> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(min(1385f, -464f)));
    var var_1 = _wgslsmith_div_u32(~(~_wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.a, 3482u), vec2<u32>(0u, u_input.a)), ~vec2<u32>(4294967295u, 1u))), 0u);
    var_1 = max(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 67469u), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a, 23661u), vec2<u32>(u_input.a, 43351u)), ~(~vec2<u32>(4294967295u, 42043u)))), ~(u_input.a << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), firstTrailingBit(vec2<u32>(u_input.a, 26512u))) % 32u)));
    return !vec4<bool>(true, true, any(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false))), false);
}

fn func_2(arg_0: vec4<u32>) -> vec4<bool> {
    let var_0 = ~(-u_input.b);
    return !select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(false, false)) || true, true && (25948i != var_0), true, !select(false, true, false)), false);
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec4<bool> {
    global1 = arg_1.e << (54889u % 32u);
    global0 = array<Struct_2, 12>();
    global0 = array<Struct_2, 12>();
    var var_0 = arg_1.b.x;
    var var_1 = countOneBits(abs(max(-4796i, arg_1.c)));
    return !select(!(!select(vec4<bool>(true, arg_1.b.x, false, false), vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x, arg_1.b.x), arg_1.b.x)), func_2(vec4<u32>(abs(u_input.a), 17476u, countOneBits(27127u), 1u)), !vec4<bool>(arg_1.b.x, true, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    global1 = firstLeadingBit(45098u);
    let var_1 = func_1();
    let var_2 = !var_1.ww;
    var var_3 = !(!(!func_2(vec4<u32>(u_input.a, 1u, 4294967295u, 40677u))));
    var_3 = vec4<bool>(var_3.x, var_3.x, !((1u | u_input.a) < ~(~u_input.a)), select(false, any(vec4<bool>(true, -2147483647i <= u_input.b, true, var_3.x)), !var_2.x));
    var_3 = select(var_1, var_1, !func_3(_wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.a, 19307u, u_input.a, 77285u), vec4<u32>(u_input.a, 0u, u_input.a, 4294967295u)), reverseBits(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u))), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(0u, 0u, 1u, 4294967295u)), vec2<bool>(var_1.x, false), 2147483647i, _wgslsmith_f_op_f32(f32(-1f) * -760f), ~81549u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

