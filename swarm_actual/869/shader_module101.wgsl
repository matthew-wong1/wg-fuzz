struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> i32 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_mult_u32(~36670u, ~(u_input.a.x & u_input.a.x))));
    var_0 = Struct_3(var_0.a);
    let var_1 = var_0.a;
    var_0 = Struct_3(Struct_1(select(var_0.a.a, 1u, true) ^ 97624u));
    var_0 = Struct_3(var_0.a);
    return ~u_input.d.x;
}

fn func_2(arg_0: f32) -> i32 {
    let var_0 = -(~_wgslsmith_add_i32(func_3(), countOneBits(-28272i)));
    let var_1 = vec3<bool>(true, any(vec2<bool>(true, true)), ~_wgslsmith_clamp_u32(10321u, 433u, 51560u) > _wgslsmith_add_u32(~(u_input.a.x | 25591u), ~(~u_input.a.x)));
    let var_2 = -1146f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f * arg_0))), 1000f)));
    var var_3 = ~4294967295u;
    let var_4 = min(_wgslsmith_clamp_i32(~52108i, -2147483647i, _wgslsmith_dot_vec3_i32(-(~u_input.b.wxz), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(u_input.b.wwz, vec3<i32>(u_input.c, u_input.b.x, var_0)), vec3<i32>(var_0, var_0, 9405i), u_input.b.zzy | u_input.b.yxx))), var_0);
    return -(~_wgslsmith_mult_i32(~u_input.d.x | (var_4 >> (u_input.a.x % 32u)), var_4));
}

fn func_1() -> Struct_1 {
    var var_0 = false;
    var var_1 = vec3<i32>(0i, u_input.c, func_2(1000f));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-852f))), -640f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1465f)))));
    return Struct_1(10689u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1065f * -495f)), -283f), -1254f) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(383f, -746f) + vec2<f32>(1751f, -474f))))), vec2<f32>(-268f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(326f + 396f), -194f))))));
    var var_2 = (~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), u_input.b.zy) << (countOneBits(firstLeadingBit(u_input.a.x)) % 32u)) << (_wgslsmith_dot_vec2_u32(firstTrailingBit(firstTrailingBit(u_input.a.zz) << (reverseBits(vec2<u32>(1u, u_input.a.x)) % vec2<u32>(32u))), select(u_input.a.yx, u_input.a.xx, vec2<bool>(true, true))) % 32u);
    var_2 = ~(~_wgslsmith_mod_i32(-(i32(-1i) * -14233i), ~u_input.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(f32(-1f) * -423f), var_1.x, var_1.x)), max(u_input.b.zw, vec2<i32>(_wgslsmith_mod_i32(u_input.d.x, ~(-1i)), u_input.d.x & -300i)), _wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_add_i32(-55640i, -1i));
}

