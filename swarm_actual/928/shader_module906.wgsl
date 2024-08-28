struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec4<bool>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: i32, arg_3: i32) -> f32 {
    let var_0 = Struct_4(Struct_1(vec2<bool>(global1.x, global1.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(461f, 278f, 1000f)) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -953f), -602f, 987f)), !select(select(vec4<bool>(global1.x, false, arg_0.x, true), vec4<bool>(global1.x, true, true, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(global1.x, true, false, true), vec4<bool>(arg_0.x, false, true, true), vec4<bool>(arg_0.x, arg_0.x, true, false)), vec4<bool>(true, true, false, global1.x))), global0.x);
    global1 = select(var_0.a.c, vec4<bool>(true, true, 12104u >= ~_wgslsmith_mod_u32(var_0.b, 4294967295u), 1f != var_0.a.b.x), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b.x)) < var_0.a.b.x, any(select(global1.wxx, !var_0.a.c.wzw, global1.wxx)), global1.x, true));
    global1 = var_0.a.c;
    let var_1 = vec3<i32>(arg_1, _wgslsmith_clamp_i32(arg_3, -(~u_input.c.x), _wgslsmith_dot_vec4_i32(u_input.c, select(_wgslsmith_add_vec4_i32(vec4<i32>(arg_1, arg_1, arg_2, 48505i), vec4<i32>(arg_2, u_input.e, arg_1, 70787i)), -u_input.c, vec4<bool>(arg_0.x, arg_0.x, global1.x, true)))), abs(u_input.e));
    global1 = select(!(!select(!var_0.a.c, var_0.a.c, global1.x)), vec4<bool>(2147483647i > ~(-arg_1), var_0.a.a.x, abs(~var_0.b) != 43267u, true), var_0.a.c.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.a.b.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a.b.x))))) + -1114f);
}

fn func_2(arg_0: u32) -> Struct_2 {
    let var_0 = 1u;
    let var_1 = 4294967295u;
    global1 = vec4<bool>(-9975i == _wgslsmith_dot_vec3_i32(countOneBits(select(u_input.c.xww, vec3<i32>(4258i, u_input.e, -1i), vec3<bool>(global1.x, true, global1.x))), u_input.c.wzy), global1.x, global1.x, false == !global1.x);
    var var_2 = ~(-6333i);
    var var_3 = Struct_4(Struct_1(select(!(!global1.yy), !vec2<bool>(global1.x, global1.x), true), vec3<f32>(_wgslsmith_f_op_f32(235f * -893f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(global1.xzz, 73304i, u_input.e, u_input.e)), _wgslsmith_f_op_f32(-801f - -437f))), -1342f), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, global1.x, true), !vec4<bool>(global1.x, false, false, false)), select(select(vec4<bool>(global1.x, global1.x, global1.x, false), vec4<bool>(true, false, global1.x, true), global1.x), !vec4<bool>(global1.x, global1.x, global1.x, global1.x), !vec4<bool>(global1.x, global1.x, true, global1.x)), select(select(vec4<bool>(global1.x, true, true, global1.x), vec4<bool>(false, global1.x, false, true), vec4<bool>(global1.x, global1.x, global1.x, false)), select(vec4<bool>(false, global1.x, global1.x, true), vec4<bool>(false, false, false, false), global1.x), select(false, false, global1.x)))), 86427u);
    return Struct_2(Struct_1(select(vec2<bool>(true, select(var_3.a.c.x, global1.x, true)), select(select(global1.wx, var_3.a.a, true), vec2<bool>(true, true), any(vec2<bool>(true, false))), var_3.a.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_3.a.b))), var_3.a.c), global1.x);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_3) -> i32 {
    let var_0 = u_input.c.zw;
    var var_1 = func_2(u_input.d);
    var var_2 = Struct_2(var_1.a, !var_1.b || !global1.x);
    var_1 = Struct_2(Struct_1(vec2<bool>(any(var_2.a.c.zzw), !(var_2.a.b.x >= var_2.a.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-174f, var_2.a.b.x, -2282f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.b.x, -1141f, 288f)) + vec3<f32>(-1889f, 1000f, var_1.a.b.x))), var_2.a.c), true);
    let var_3 = func_2(u_input.b).a;
    return u_input.c.x & -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec3<bool>(false, any(vec4<bool>(false, global1.x, true, global1.x)), -u_input.c.x < func_1(vec4<u32>(65490u, global0.x, u_input.d, global0.x), Struct_3(vec4<bool>(global1.x, true, true, true)))));
    var var_1 = vec3<i32>(u_input.e, u_input.e, -_wgslsmith_add_i32(u_input.e, i32(-1i) * -1i));
    let var_2 = firstTrailingBit(-2147483647i);
    var var_3 = Struct_4(Struct_1(!(!select(global1.zw, vec2<bool>(false, true), global1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1261f, 1000f, 2019f) * vec3<f32>(389f, -168f, -1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1195f, 760f, 1335f) - vec3<f32>(135f, 1333f, -186f))))), select(select(func_2(global0.x).a.c, vec4<bool>(false, true, var_0.x, true), var_2 < var_1.x), vec4<bool>(!global1.x, true, any(vec3<bool>(false, false, var_0.x)), true), !global1.x)), _wgslsmith_dot_vec2_u32(~(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, global0.x), vec2<u32>(global0.x, u_input.a)) << (vec2<u32>(u_input.d, 4294967295u) % vec2<u32>(32u))), _wgslsmith_add_vec2_u32(select(vec2<u32>(1u, global0.x), vec2<u32>(u_input.d, 4294967295u), var_0.xx) & vec2<u32>(0u, 40622u), vec2<u32>(~global0.x, ~4294967295u))));
    let var_4 = var_3.a.b;
    global1 = var_3.a.c;
    let x = u_input.a;
    s_output = StorageBuffer(~min(vec4<i32>(var_1.x, u_input.e, 9025i, -1i), abs(vec4<i32>(-49324i, var_2, var_1.x, 2147483647i))) << (vec4<u32>(_wgslsmith_div_u32(1u, min(1u, 27195u)), ~(u_input.b & var_3.b), var_3.b, reverseBits(_wgslsmith_add_u32(u_input.b, 83367u))) % vec4<u32>(32u)), ~min(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(17521i, -2147483647i, 0i, 5361i), u_input.c), 2147483647i | var_1.x, i32(-1i) * -47249i, _wgslsmith_dot_vec2_i32(u_input.c.xy, vec2<i32>(61993i, 1i))), countOneBits(u_input.c & vec4<i32>(u_input.e, 29862i, var_1.x, var_1.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1623f * var_3.a.b.x)))));
}

