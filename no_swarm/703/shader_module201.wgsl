struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32) -> vec4<i32> {
    return ~_wgslsmith_sub_vec4_i32(abs(vec4<i32>(-1i) * -vec4<i32>(66749i, 2147483647i, -2147483647i, 37659i)), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.b, arg_0, 36344i, u_input.b), firstLeadingBit(vec4<i32>(-1i, u_input.b, arg_0, 13529i))), select(vec4<i32>(0i, u_input.c.x, u_input.b, 2147483647i), countOneBits(vec4<i32>(3755i, u_input.b, arg_0, -5325i)), false)));
}

fn func_3(arg_0: vec4<i32>) -> bool {
    var var_0 = Struct_3(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-473f + 638f) * 900f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-157f, -1292f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1826f, 653f)), 1461f)), ~(~vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_f_op_f32(300f + _wgslsmith_f_op_f32(select(-501f, -909f, true))), 0u), true, ~(~vec4<u32>(abs(47271u), ~4294967295u, ~53005u, reverseBits(56308u))));
    let var_1 = Struct_3(var_0.a, true, var_0.c | vec4<u32>(1u, ~_wgslsmith_sub_u32(4563u, var_0.a.b.x), ~(~4294967295u), ~0u));
    let var_2 = -131f;
    let var_3 = var_1.a.a;
    let var_4 = 4294967295u;
    return true;
}

fn func_1() -> bool {
    var var_0 = u_input.b;
    var_0 = 10784i;
    return true == any(vec2<bool>(true, func_3(func_2(u_input.b))));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: Struct_4) -> f32 {
    let var_0 = arg_2;
    let var_1 = var_0.a.a;
    let var_2 = Struct_4(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -103f), var_0.b.x))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(-432f, 1155f)), _wgslsmith_f_op_f32(ceil(200f)), -118f, _wgslsmith_f_op_f32(f32(-1f) * -1442f)) + var_0.b))));
    let var_3 = var_0.a;
    let var_4 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2602f, var_0.b.x, -299f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -222f), -1299f, func_3(vec4<i32>(-50806i, -45291i, 2147483647i, u_input.b))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-120f, 185f, arg_2.b.x, 1000f) * vec4<f32>(953f, var_3.a, arg_1.a.c, 841f)) + _wgslsmith_f_op_vec4_f32(round(arg_2.b)))), false));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4.x, -349f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -632f) * -1034f)), vec4<f32>(_wgslsmith_f_op_f32(func_4(func_1() || true, Struct_3(Struct_2(vec3<f32>(-1274f, 973f, -1891f), vec4<u32>(119332u, 1u, 1u, 47274u), 2174f, 1u), all(vec2<bool>(false, false)), vec4<u32>(1u, 1u, 1u, 1u)), Struct_4(Struct_1(1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(998f, -2166f, -279f, 318f))))), _wgslsmith_f_op_f32(step(1387f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -849f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(2302f, 873f)), _wgslsmith_f_op_f32(sign(-668f)), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(959f - _wgslsmith_f_op_f32(976f + -1149f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(765f, 1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -318f)))));
    var var_1 = true;
    var var_2 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b.zzz * vec3<f32>(1355f, 1385f, var_0.b.x)) + var_0.b.zyy)), ~vec4<u32>(~33533u, reverseBits(1u), _wgslsmith_add_u32(0u, 65134u), ~25269u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -202f))), firstTrailingBit(~1423u)), true, max(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(4294967295u, 0u, 4294967295u, 46972u)), ~vec4<u32>(10758u, 6308u, 4294967295u, 37107u), vec4<u32>(1u, 1u, 1u, 1u)), abs(vec4<u32>(~0u, 4294967295u, ~38813u, ~16756u))));
    var var_3 = var_2.c.xy;
    let var_4 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1742f));
}

