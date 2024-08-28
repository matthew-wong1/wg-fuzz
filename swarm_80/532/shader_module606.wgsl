struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 1> = array<vec3<u32>, 1>(vec3<u32>(0u, 31062u, 4294967295u));

var<private> global1: vec4<u32> = vec4<u32>(1u, 77667u, 65906u, 0u);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2) -> vec3<bool> {
    global0 = array<vec3<u32>, 1>();
    var var_0 = arg_1.a;
    let var_1 = arg_1;
    let var_2 = arg_1.b;
    let var_3 = var_1;
    return select(!(!vec3<bool>(true, false, arg_1.b.b)), !select(vec3<bool>(true, true, true), select(vec3<bool>(var_2.b, var_1.b.b, false), vec3<bool>(true, true, false), var_2.b), select(select(vec3<bool>(var_2.b, var_1.b.b, var_1.b.b), vec3<bool>(true, var_2.b, false), vec3<bool>(arg_1.b.b, var_2.b, var_1.b.b)), select(vec3<bool>(var_1.b.b, false, var_2.b), vec3<bool>(var_3.b.b, var_3.b.b, var_3.b.b), vec3<bool>(true, var_1.b.b, var_2.b)), vec3<bool>(var_2.b, false, true))), vec3<bool>(var_2.b, all(!(!vec4<bool>(arg_1.b.b, arg_1.b.b, false, false))), var_2.b));
}

fn func_2(arg_0: f32) -> u32 {
    let var_0 = select(select(vec3<bool>(true, !(-1044f > arg_0), !select(true, true, true)), vec3<bool>(true, true, select(true, all(vec2<bool>(true, true)), select(true, true, false))), select(func_3(_wgslsmith_add_vec2_u32(global1.xx, vec2<u32>(1u, 1u)), Struct_2(vec4<f32>(-314f, arg_0, arg_0, 1387f), Struct_1(vec4<i32>(1i, u_input.c.x, u_input.b, u_input.c.x), true, 5770i, vec4<i32>(u_input.c.x, u_input.b, 1i, -9408i)), -542f)), vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)))), vec3<bool>(all(vec2<bool>(u_input.c.x > u_input.b, true)), !any(vec3<bool>(true, true, true)), true), false);
    let var_1 = Struct_1(countOneBits(firstTrailingBit(-u_input.c)), true, reverseBits(-(~59329i)), u_input.c);
    global1 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, ~min(global1.x, global1.x), global1.x, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(global1.x, ~global1.x, firstLeadingBit(global1.x), global1.x), select(vec4<u32>(111831u, global1.x, 7539u, global1.x) & vec4<u32>(global1.x, global1.x, global1.x, 18751u), firstLeadingBit(vec4<u32>(global1.x, 99161u, 1u, global1.x)), vec4<bool>(var_1.b, true, var_1.b, var_1.b))), select(vec4<u32>(1u, max(global1.x, global1.x), global1.x, global1.x), ~_wgslsmith_mult_vec4_u32(vec4<u32>(global1.x, 50744u, global1.x, 40723u), vec4<u32>(9606u, 50101u, 1u, global1.x)), !(!var_0.x)));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, arg_0, 428f, 977f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1139f, arg_0, -857f, arg_0)), vec4<bool>(var_0.x, var_1.b, false, var_0.x)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-125f, 291f, -1811f, arg_0), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 1693f, 720f, arg_0) + vec4<f32>(arg_0, 696f, arg_0, arg_0)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(1428f)), _wgslsmith_f_op_f32(ceil(537f)), _wgslsmith_f_op_f32(378f * 678f), _wgslsmith_f_op_f32(sign(arg_0))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, 784f))))));
    let var_3 = var_1.a;
    return global1.x;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    global0 = array<vec3<u32>, 1>();
    var var_0 = min(select(~(~vec2<u32>(4294967295u, global1.x) | firstLeadingBit(vec2<u32>(global1.x, 4294967295u))), ~(~abs(global1.yy)), arg_1.b.b), vec2<u32>(~func_2(371f), select(1u, global1.x, arg_1.b.b) | (global1.x >> (global1.x % 32u))) << ((_wgslsmith_div_vec2_u32(global1.xw, vec2<u32>(0u, global1.x)) >> (countOneBits(_wgslsmith_clamp_vec2_u32(global1.yy, global1.xw, global1.xz)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_1 = -49161i;
    var_0 = global1.wz << (max(vec2<u32>(~0u, select(var_0.x, 4294967295u, arg_1.b.b) & min(global1.x, 4294967295u)), vec2<u32>(~min(102619u, 34387u), var_0.x)) % vec2<u32>(32u));
    let var_2 = 1i;
    return Struct_1(arg_1.b.d ^ vec4<i32>(-arg_1.b.c, var_2 & _wgslsmith_sub_i32(var_2, -2147483647i), -44890i, u_input.a.x), arg_1.b.b, -(~(~(-1i))) & _wgslsmith_dot_vec2_i32(abs(-arg_0.xy), select(_wgslsmith_mod_vec2_i32(u_input.c.zz, arg_0.wz), ~arg_0.yz, vec2<bool>(true, arg_2))), ~(-vec4<i32>(-2147483647i, var_2, -2147483647i, -2147483647i)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: Struct_1) -> f32 {
    let var_0 = vec4<bool>(true, any(!(!vec4<bool>(arg_3.b, arg_3.b, arg_3.b, arg_1.b.b))), arg_3.b, arg_3.b);
    return _wgslsmith_f_op_f32(f32(-1f) * -215f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(vec2<i32>(-abs(u_input.b), 2147483647i), _wgslsmith_add_vec2_i32(u_input.a.xy, abs(vec2<i32>(1i, u_input.b)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1010f)) + _wgslsmith_f_op_f32(func_4(vec2<i32>(u_input.b, u_input.b), Struct_2(vec4<f32>(367f, 336f, 465f, 1401f), Struct_1(u_input.c, false, -1i, u_input.c), 1646f), firstTrailingBit(u_input.a.xy), func_1(u_input.c, Struct_2(vec4<f32>(1044f, -1879f, 632f, -754f), Struct_1(u_input.c, true, -32067i, u_input.c), -1157f), false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-382f)))), ~(~abs(~vec4<u32>(0u, global1.x, global1.x, global1.x))), vec4<i32>(2518i, ~(~0i), 1i >> (global1.x % 32u), countOneBits(-countOneBits(u_input.b))));
}

