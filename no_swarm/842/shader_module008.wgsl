struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> vec3<u32> {
    let var_0 = arg_1;
    return reverseBits(_wgslsmith_sub_vec3_u32(u_input.b.zwx, u_input.b.zzz));
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    let var_0 = Struct_3(Struct_2(countOneBits(~(u_input.a & u_input.a))));
    let var_1 = ~vec2<i32>(2147483647i, u_input.c) >> (countOneBits(u_input.e.yy | _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.e.x) & u_input.b.xw, vec2<u32>(u_input.b.x, u_input.d.x), vec2<u32>(4294967295u, u_input.d.x) & u_input.e.yx)) % vec2<u32>(32u));
    var var_2 = Struct_2(-u_input.a >> (func_3(select(false, any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), !arg_0.x), var_0.a) % vec3<u32>(32u)));
    var_2 = var_0.a;
    var var_3 = min(-(~(1i & ~var_2.a.x)), 2147483647i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -411f), 1f))));
}

fn func_4(arg_0: vec3<f32>) -> Struct_3 {
    var var_0 = Struct_4(_wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(8569u, 33058u, min(u_input.b.x, ~u_input.b.x), _wgslsmith_mod_u32(u_input.e.x, func_3(true, Struct_2(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i))).x))), u_input.c, !(!vec3<bool>(false, true, any(vec3<bool>(false, false, true)))));
    var var_1 = vec2<bool>(true, !any(!select(vec4<bool>(var_0.c.x, var_0.c.x, true, false), vec4<bool>(false, true, false, false), vec4<bool>(var_0.c.x, var_0.c.x, true, true))));
    let var_2 = 103f;
    var_1 = var_0.c.xy;
    let var_3 = (_wgslsmith_mult_u32(_wgslsmith_mult_u32(0u >> (u_input.d.x % 32u), 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.d.x), u_input.d)) >> (1u % 32u)) != var_0.a.x;
    return Struct_3(Struct_2(firstTrailingBit(reverseBits(abs(vec3<i32>(0i, 0i, 1i))))));
}

fn func_1(arg_0: f32, arg_1: Struct_4, arg_2: Struct_1, arg_3: u32) -> bool {
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, _wgslsmith_f_op_f32(func_2(arg_1.c.xz)), 1000f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(2052f, _wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(round(arg_0))))));
    var_0 = Struct_3(var_0.a);
    let var_1 = arg_1.c.x;
    var_0 = Struct_3(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1424f, arg_0, -172f)), vec3<f32>(arg_0, arg_0, 1118f)) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(528f, 615f, arg_0) + vec3<f32>(-205f, arg_0, arg_0)))))).a);
    var_0 = func_4(vec3<f32>(_wgslsmith_f_op_f32(arg_0 * -775f), _wgslsmith_f_op_f32(arg_0 - -289f), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(abs(-1455f)))));
    return !all(arg_1.c.xx);
}

fn func_5(arg_0: Struct_4) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-585f, -536f, -583f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(288f, 1250f, -1000f))))));
    var var_1 = Struct_3(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), var_0.x))).a);
    let var_2 = vec4<bool>(arg_0.c.x, !arg_0.c.x, true, !arg_0.c.x);
    var var_3 = 1221f;
    var_1 = Struct_3(var_1.a);
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_5(Struct_4(select(u_input.b, vec4<u32>(1u, u_input.d.x, 0u, 24678u) << (vec4<u32>(u_input.e.x, u_input.b.x, u_input.e.x, u_input.d.x) % vec4<u32>(32u)), vec4<bool>(false, false, false, true)), 1i, vec3<bool>(true, u_input.b.x != u_input.e.x, func_1(669f, Struct_4(vec4<u32>(u_input.b.x, 1u, 1u, u_input.b.x), 74760i, vec3<bool>(false, true, true)), Struct_1(u_input.b), 0u)))));
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~u_input.b.yxz, u_input.e), countOneBits(u_input.b.x), 1u), countOneBits(~(~1u)) << (~u_input.e.x % 32u));
    var var_2 = Struct_1(u_input.b);
    let var_3 = Struct_2(vec3<i32>(_wgslsmith_mod_i32(32660i, var_0.a.a.x), reverseBits(countOneBits(1i)), -var_0.a.a.x ^ min(-8776i, 0i)) << ((vec3<u32>(var_2.a.x, ~1u, 1u) & var_2.a.wxz) % vec3<u32>(32u)));
    var var_4 = -_wgslsmith_sub_vec4_i32(-(_wgslsmith_add_vec4_i32(vec4<i32>(12923i, var_0.a.a.x, var_3.a.x, var_3.a.x), vec4<i32>(-2147483647i, 13028i, var_3.a.x, u_input.a.x)) | _wgslsmith_clamp_vec4_i32(vec4<i32>(15684i, var_0.a.a.x, var_0.a.a.x, var_0.a.a.x), vec4<i32>(var_3.a.x, 10990i, var_3.a.x, var_3.a.x), vec4<i32>(var_3.a.x, u_input.a.x, var_0.a.a.x, 2147483647i))), -_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a.a.x, var_3.a.x, u_input.c, var_0.a.a.x), vec4<i32>(-2147483647i, var_0.a.a.x, -62294i, u_input.c)), vec4<i32>(0i, var_0.a.a.x, var_0.a.a.x, u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

