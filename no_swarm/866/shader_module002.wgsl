struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> f32 {
    var var_0 = abs(_wgslsmith_add_i32(arg_0.d.x << (_wgslsmith_clamp_u32(u_input.a.x, ~29328u, u_input.a.x) % 32u), _wgslsmith_mult_i32(countOneBits(-arg_0.d.x), -1348i)));
    var_0 = ~37081i ^ reverseBits(-(-arg_0.d.x | arg_0.d.x));
    var var_1 = 1f;
    var_1 = arg_1.a.x;
    var var_2 = min(_wgslsmith_div_vec4_i32(select(vec4<i32>(arg_0.d.x, 52730i, 0i, 13436i) << ((vec4<u32>(1u, u_input.a.x, 4597u, u_input.a.x) ^ u_input.a) % vec4<u32>(32u)), ~_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.d.x, 2147483647i, arg_0.d.x, arg_0.d.x), vec4<i32>(arg_0.d.x, arg_0.d.x, arg_0.d.x, arg_0.d.x)), !arg_0.a.x), reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(48681i, 27765i, arg_0.d.x, arg_0.d.x), -vec4<i32>(1i, -1i, arg_0.d.x, arg_0.d.x)))), _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(arg_0.d.x, arg_0.d.x, -18184i, 14368i)) >> (~(~u_input.a) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(1i, -4921i), firstTrailingBit(1i), ~arg_0.d.x, arg_0.d.x), ~_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.d.x, arg_0.d.x, 2147483647i, 0i), vec4<i32>(arg_0.d.x, 0i, -1i, 0i)))));
    return arg_1.a.x;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>) -> vec2<i32> {
    let var_0 = 0u;
    var var_1 = _wgslsmith_div_f32(-499f, _wgslsmith_f_op_f32(func_3(Struct_1(vec2<bool>(false, arg_0.a.a.x), vec3<u32>(u_input.a.x, 286u, arg_1.x) ^ select(vec3<u32>(35960u, arg_1.x, arg_0.a.b.x), vec3<u32>(u_input.a.x, u_input.a.x, arg_0.a.c.x), false), u_input.a.wxx, arg_0.a.d), Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 293f))))));
    var var_2 = arg_0.a;
    let var_3 = _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(13902u, 13221u), arg_0.a.b.x), _wgslsmith_add_vec2_u32(vec2<u32>(abs(20430u ^ var_0), ~9018u), firstTrailingBit(arg_0.a.b.xy)));
    var_2 = arg_0.a;
    return vec2<i32>(-var_2.d.x ^ ~arg_0.a.d.x, var_2.d.x);
}

fn func_1() -> Struct_4 {
    var var_0 = u_input.a.zx;
    let var_1 = 1f;
    let var_2 = Struct_4(~_wgslsmith_dot_vec2_i32(vec2<i32>(29529i, _wgslsmith_dot_vec2_i32(vec2<i32>(-39645i, 1i), vec2<i32>(12810i, 1i))), func_2(Struct_2(Struct_1(vec2<bool>(true, false), u_input.a.wxy, vec3<u32>(31065u, 1u, u_input.a.x), vec3<i32>(-3549i, -24777i, -39193i)), vec2<f32>(var_1, var_1)), u_input.a.wx)), Struct_3(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1, 1029f), vec2<f32>(var_1, var_1))))))));
    var_0 = countOneBits(firstTrailingBit(~abs(vec2<u32>(53220u, 0u))));
    var_0 = ~u_input.a.xz;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -756f);
    let var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(12116u, reverseBits(4294967295u), _wgslsmith_add_vec4_u32(min(u_input.a, u_input.a), u_input.a) | max(select(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 34452u), vec4<u32>(49760u, u_input.a.x, u_input.a.x, 1u), false) >> ((u_input.a << (vec4<u32>(19458u, u_input.a.x, u_input.a.x, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)), firstLeadingBit(select(u_input.a, u_input.a, vec4<bool>(true, false, false, true)))));
}

