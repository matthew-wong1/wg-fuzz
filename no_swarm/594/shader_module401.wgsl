struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: Struct_3,
    d: Struct_3,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2(arg_0: Struct_4, arg_1: u32, arg_2: Struct_4) -> vec3<i32> {
    let var_0 = u_input.a;
    let var_1 = arg_2;
    var var_2 = vec2<u32>(~1u ^ firstTrailingBit(~arg_1), reverseBits(4294967295u));
    let var_3 = u_input.a.wx;
    global0 = arg_0.a.a;
    return ~_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(-14269i, u_input.a.x, 2147483647i), u_input.a.zwz), -countOneBits(~vec3<i32>(u_input.a.x, 2147483647i, var_0.x)));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_4) -> vec3<i32> {
    var var_0 = arg_2.x;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a.a.a.x - arg_3.a.a.a.x) - _wgslsmith_f_op_f32(f32(-1f) * -1297f)), _wgslsmith_f_op_f32(-457f * -566f)))), _wgslsmith_f_op_f32(1455f * _wgslsmith_f_op_f32(-964f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1616f))))));
    var var_2 = -(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, _wgslsmith_add_i32(u_input.a.x, -56916i)), _wgslsmith_add_vec3_i32(vec3<i32>(13006i, u_input.a.x, u_input.a.x), firstTrailingBit(vec3<i32>(0i, u_input.a.x, u_input.a.x)))) | u_input.a.x);
    var_2 = 2147483647i;
    var_0 = max(~select(arg_2.x & 24596u, ~0u, arg_0.b) & 4294967295u, ~abs(1u));
    return func_2(Struct_4(Struct_3(arg_3.a.a), true), countOneBits(34639u) & arg_2.x, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(firstLeadingBit(_wgslsmith_sub_vec2_i32(-(vec2<i32>(u_input.a.x, -1i) | u_input.a.ww), max(~u_input.a.wz, u_input.a.wz))));
    let var_1 = select(vec4<bool>(true, all(!select(vec2<bool>(false, false), vec2<bool>(false, false), true)), !(u_input.b != u_input.b) | false, false), vec4<bool>(select(true, 4294967295u == u_input.b, all(vec3<bool>(true, true, true))), false, true, true), vec4<bool>(true, true, true, all(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)))));
    let var_2 = 1u;
    let var_3 = _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-13799i, select(~1i, i32(-1i) * -37053i, all(vec4<bool>(var_1.x, false, var_1.x, false))) | ~1i), u_input.a.x, _wgslsmith_add_i32(79941i, abs(var_0.x)));
    let var_4 = -((_wgslsmith_mult_vec3_i32(u_input.a.ywy, ~vec3<i32>(var_0.x, 1002i, var_3)) | _wgslsmith_div_vec3_i32(min(u_input.a.wyx, vec3<i32>(-32745i, -1286i, u_input.a.x)), u_input.a.xyy)) | _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(select(u_input.a.ywy, vec3<i32>(u_input.a.x, var_3, -23540i), var_1.x), vec3<i32>(u_input.a.x, var_0.x, 19774i)), func_1(Struct_4(Struct_3(Struct_1(global0.a)), var_1.x), Struct_1(global0.a), vec4<u32>(u_input.b, u_input.b, 67132u, var_2), Struct_4(Struct_3(Struct_1(global0.a)), var_1.x)) >> (vec3<u32>(var_2, var_2, var_2) % vec3<u32>(32u)), vec3<i32>(abs(-24268i), ~33427i, u_input.a.x)));
    var var_5 = Struct_1(global0.a);
    let var_6 = _wgslsmith_f_op_vec2_f32(-global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~_wgslsmith_add_u32(79594u << (var_2 % 32u), min(var_2, 1u)), 4294967295u), var_6.x, -8015i, 8615i);
}

