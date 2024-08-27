struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: f32,
    d: f32,
    e: vec2<f32>,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: f32,
    d: vec2<f32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    var var_0 = all(!(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false))));
    var_0 = select(true, any(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true))), true);
    let var_1 = vec3<f32>(1093f, 1133f, -2160f);
    var_0 = false;
    var_0 = all(!vec2<bool>(any(vec3<bool>(true, true, true)), !(u_input.c.x > 43397i)));
    return -106f;
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: f32) -> bool {
    return any(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true), select(vec4<bool>(true, false, false, true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true)), all(vec4<bool>(false, false, false, false))), false));
}

fn func_1() -> Struct_1 {
    let var_0 = !(true == any(vec4<bool>(false, u_input.e > 20640u, any(vec2<bool>(true, true)), true)));
    let var_1 = u_input.d.x;
    var var_2 = false;
    var var_3 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<i32>(u_input.c.x, -44493i, 19280i, u_input.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -398f))), -1073f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(f32(-1f) * -1539f), var_0 & false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 727f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -475f) + _wgslsmith_f_op_f32(-758f + 119f))))));
    var_2 = false;
    return Struct_1(~countOneBits(~vec4<u32>(var_1, 42641u, u_input.d.x, u_input.e)), select(-52681i, 2147483647i, func_3(Struct_4(~36601u, _wgslsmith_add_i32(-2147483647i, u_input.c.x), _wgslsmith_f_op_f32(-var_3.x), var_3.x, _wgslsmith_f_op_vec2_f32(trunc(var_3.ww))), ~var_1, var_3.x)), var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_1(var_0.a, _wgslsmith_clamp_i32(-var_0.b, var_0.b, var_0.b), 113957u);
    var_0 = func_1();
    let var_1 = u_input.b;
    var_0 = Struct_1(min(~(vec4<u32>(0u, 38248u, 73357u, var_1.x) << (vec4<u32>(var_0.a.x, u_input.d.x, 57722u, 0u) % vec4<u32>(32u))), var_0.a) << (countOneBits(countOneBits(~vec4<u32>(4294967295u, 4294967295u, var_0.a.x, 411u))) % vec4<u32>(32u)), var_0.b & func_1().b, u_input.b.x);
    var var_2 = ~(~var_1.x);
    var_2 = u_input.e;
    var var_3 = ~(~var_0.a.zw << (func_1().a.xw % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, vec2<i32>(_wgslsmith_dot_vec4_i32(~reverseBits(vec4<i32>(var_0.b, u_input.a, -1i, -2147483647i)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.a, u_input.a), vec3<i32>(0i, var_0.b, var_0.b)), 59313i, 1i, var_0.b)), ~1i), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.c.x, 37036i)) >> ((u_input.d >> (vec2<u32>(24341u, var_3.x) % vec2<u32>(32u))) % vec2<u32>(32u)), u_input.c) ^ -53615i, _wgslsmith_div_vec2_i32(-(~(-vec2<i32>(u_input.a, u_input.c.x))), countOneBits(u_input.c >> (_wgslsmith_div_vec2_u32(vec2<u32>(64600u, 24584u), vec2<u32>(var_0.c, var_3.x)) % vec2<u32>(32u)))));
}

