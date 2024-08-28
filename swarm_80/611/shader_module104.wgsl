struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> vec2<u32> {
    var var_0 = u_input.b;
    var_0 = min(reverseBits(vec4<i32>(var_0.x, arg_0.b.x, _wgslsmith_dot_vec4_i32(u_input.b ^ u_input.b, vec4<i32>(u_input.d.x, var_0.x, arg_0.b.x, 25555i)), max(reverseBits(u_input.c), _wgslsmith_mult_i32(var_0.x, -2302i)))), _wgslsmith_div_vec4_i32(u_input.b, abs(u_input.b)));
    return u_input.a.yx;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_4(_wgslsmith_add_u32(min(u_input.a.x, ~(~48211u)), _wgslsmith_dot_vec2_u32(u_input.a.zx, func_3(Struct_2(vec3<f32>(1246f, 395f, -1492f), vec2<i32>(-2147483647i, u_input.d.x))))), -994f, true);
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_0.b, _wgslsmith_f_op_f32(step(688f, 670f))))))))));
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(var_0.b))));
    var_1 = _wgslsmith_f_op_f32(-var_0.b);
    var var_2 = true;
    return Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-689f, 181f, -1518f), vec3<f32>(-815f, -568f, var_0.b))))) - vec3<f32>(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-181f + 726f)), _wgslsmith_f_op_f32(select(var_0.b, var_0.b, true)))), abs(vec2<i32>(0i, _wgslsmith_dot_vec3_i32(u_input.b.wwy << (u_input.a.zzw % vec3<u32>(32u)), -vec3<i32>(u_input.c, 7468i, 18536i)))));
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = arg_0 | ~_wgslsmith_dot_vec2_i32(reverseBits(-u_input.d), vec2<i32>(-arg_0, ~arg_0));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~2147483647i);
    var_0 = func_2();
    var var_1 = _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(countOneBits(-vec4<i32>(41134i, -39240i, var_0.b.x, u_input.d.x)), -vec4<i32>(var_0.b.x, u_input.d.x, abs(var_0.b.x), 30265i)), _wgslsmith_clamp_vec4_i32(min(~u_input.b >> (u_input.a % vec4<u32>(32u)), u_input.b), vec4<i32>(var_0.b.x, abs(-u_input.b.x), 0i, i32(-1i) * -var_0.b.x), countOneBits(vec4<i32>(_wgslsmith_mod_i32(32105i, u_input.c), var_0.b.x ^ 1i, -2147483647i, u_input.d.x))));
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(var_0.a.x + -931f), _wgslsmith_f_op_f32(-var_0.a.x)))) + _wgslsmith_f_op_vec3_f32(round(var_0.a))), _wgslsmith_div_vec2_i32(~vec2<i32>(_wgslsmith_mod_i32(var_0.b.x, var_1.x), ~(-26971i)), ~firstTrailingBit(var_0.b) | var_0.b));
    var_0 = Struct_2(vec3<f32>(-695f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f))), var_0.a.x), firstLeadingBit(func_2().b));
    let var_2 = (vec4<i32>(-1i) * -(vec4<i32>(4392i, var_1.x, u_input.d.x, 33649i) >> (vec4<u32>(u_input.a.x, u_input.a.x, 84263u, u_input.a.x) % vec4<u32>(32u)))) >> (~u_input.a % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a.x)) - var_0.a.x) + _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.a.x, 479f), -390f)), _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(586f, 491f)))), _wgslsmith_f_op_f32(var_0.a.x - -320f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-752f)) * func_2().a.x) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(2305f + -954f))))), u_input.a.x, vec3<i32>(max(43104i, _wgslsmith_div_i32(-54173i, 26558i)), -_wgslsmith_mod_i32(-1i, var_0.b.x), countOneBits(_wgslsmith_mult_i32(-57850i, var_2.x) & 0i)), _wgslsmith_clamp_i32(0i, 1i, max(2147483647i, -(i32(-1i) * -6796i))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(var_0.a.x + -720f), _wgslsmith_f_op_f32(round(1043f)), _wgslsmith_f_op_f32(-var_0.a.x))))));
}

