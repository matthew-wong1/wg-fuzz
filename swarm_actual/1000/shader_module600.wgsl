struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: vec4<bool>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_sub_u32(u_input.e.x, _wgslsmith_sub_u32(0u, countOneBits(~abs(u_input.e.x))));
    let var_1 = u_input.c.x;
    let var_2 = Struct_1(vec3<bool>(false, false, true), vec3<i32>(-16266i, -u_input.a.x, 20600i));
    let var_3 = var_0;
    let var_4 = vec3<u32>(_wgslsmith_mod_u32(~var_0, ~u_input.e.x), u_input.b, _wgslsmith_dot_vec2_u32(~vec2<u32>(~1u, _wgslsmith_mod_u32(var_3, 17948u)), ~countOneBits(u_input.e)));
    return Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1177f, -1000f, var_2.a.x)))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1536f - 1000f), _wgslsmith_f_op_f32(abs(353f))))))), reverseBits(min(u_input.a.x, abs(var_2.b.x << (124978u % 32u)))));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>) -> vec3<bool> {
    let var_0 = u_input.a;
    let var_1 = arg_0.b;
    let var_2 = func_2();
    let var_3 = 32184u;
    var var_4 = _wgslsmith_mult_vec4_i32(u_input.a, _wgslsmith_mult_vec4_i32(vec4<i32>(firstTrailingBit(0i) & var_2.b, _wgslsmith_dot_vec3_i32(abs(var_0.wxz), -var_0.xwx), _wgslsmith_dot_vec2_i32(u_input.a.wz, -var_0.ww), arg_0.b), vec4<i32>(1i, i32(-1i) * -2147483647i, u_input.a.x, var_0.x)));
    return vec3<bool>(!all(vec4<bool>(true, true, true, all(vec3<bool>(false, false, true)))), true, true);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: f32, arg_3: vec2<u32>) -> bool {
    return all(func_3(func_2(), arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_mod_i32(29874i, u_input.c.x), u_input.c.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(762f, -1355f)))), select(vec4<bool>(any(vec4<bool>(true, true, true, true)), !all(vec2<bool>(true, true)), true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)))), !func_1(vec4<u32>(0u, 133926u, 1u, u_input.d), vec4<f32>(1126f, -1261f, 426f, 812f), -495f, vec2<u32>(4294967295u, 47374u)) & (false & (u_input.a.x <= -2147483647i))), u_input.e.x);
    let var_1 = -863f;
    var var_2 = Struct_2(Struct_1(var_0.d.zww, u_input.a.yyx), vec3<u32>(_wgslsmith_div_u32(~1u, _wgslsmith_div_u32(var_0.e, _wgslsmith_dot_vec2_u32(u_input.e, u_input.e))), ~select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.e.x, 60627u), vec3<u32>(0u, u_input.d, 52729u)), _wgslsmith_mult_u32(40094u, u_input.e.x), false || var_0.d.x), 0u), Struct_1(func_3(Struct_3(_wgslsmith_f_op_f32(-1519f - 180f), var_0.a >> (0u % 32u)), vec4<u32>(u_input.e.x, _wgslsmith_mult_u32(4294967295u, 0u), 1u, ~32688u)), vec3<i32>(firstTrailingBit(-82880i), _wgslsmith_add_i32(var_0.a | var_0.a, var_0.b), 32931i)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1), 874f)));
    var var_4 = Struct_1(var_0.d.yzx, vec3<i32>(var_2.a.b.x, ~_wgslsmith_mult_i32(-2147483647i, var_0.b), -1i) << ((reverseBits(vec3<u32>(1u, var_0.e, u_input.d)) ^ var_2.b) % vec3<u32>(32u)));
    let var_5 = firstLeadingBit(vec3<u32>(~var_0.e, var_0.e, 1u)) << (vec3<u32>(u_input.e.x, abs(~var_0.e) & _wgslsmith_div_u32(37142u, _wgslsmith_clamp_u32(var_0.e, u_input.d, 1u)), 18218u) % vec3<u32>(32u));
    let var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec2<u32>(u_input.b | var_6.e, var_6.e)));
}

