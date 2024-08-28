struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: f32,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: Struct_4,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
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

var<private> global0: array<f32, 17> = array<f32, 17>(-340f, 1583f, -912f, -1468f, -712f, 342f, 2650f, -199f, -1000f, -2418f, 1366f, -369f, 995f, 824f, -1634f, -1012f, 552f);

var<private> global1: u32 = 4294967295u;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_4) -> vec4<f32> {
    let var_0 = -31318i;
    var var_1 = true;
    global1 = 32088u;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.c.x)))), 871f)));
    global1 = 13711u;
    return arg_0.a.c;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = true;
    var var_1 = Struct_1(max(-(~arg_1.a) | (arg_1.a | arg_1.a), arg_1.a & max(~vec3<i32>(arg_1.a.x, 37392i, 2147483647i), -vec3<i32>(arg_1.a.x, 8582i, arg_1.a.x))), true, _wgslsmith_f_op_vec4_f32(func_3(Struct_4(arg_1, arg_1.a.x, arg_0))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-240f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.x))))), _wgslsmith_f_op_f32(floor(-457f)), any(select(vec2<bool>(arg_1.b, true), vec2<bool>(arg_1.b, true), arg_1.b | false)))));
    var var_2 = vec4<bool>(!(-firstTrailingBit(arg_1.a.x) == countOneBits(u_input.c & u_input.c)), var_1.b, any(select(vec3<bool>(false, false, false), !vec3<bool>(arg_1.b, var_1.b, var_1.b), var_1.b)) || !(~0u >= u_input.d.x), var_1.b);
    var var_3 = u_input.a;
    let var_4 = Struct_5(_wgslsmith_clamp_i32(-1i, ~_wgslsmith_dot_vec3_i32(firstTrailingBit(arg_1.a), reverseBits(var_1.a)), 10378i), Struct_4(arg_1, arg_1.a.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, var_3.x, u_input.d.x, var_3.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(21690u, u_input.b.x, var_3.x, 10497u), u_input.d, vec4<u32>(var_3.x, 4294967295u, 1u, 3304u))) % 32u), 1055f), Struct_4(Struct_1(~(~arg_1.a), false, vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -586f), var_1.c.x, _wgslsmith_f_op_f32(ceil(var_1.d))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1.d, global0[_wgslsmith_index_u32(u_input.b.x, 17u)])))), ~(var_1.a.x ^ u_input.c) | (i32(-1i) * -u_input.c), _wgslsmith_f_op_f32(-arg_2.x)), arg_1.a);
    return Struct_1(_wgslsmith_div_vec3_i32(var_1.a, ~firstTrailingBit(vec3<i32>(21849i, var_4.d.x, var_1.a.x))), any(vec4<bool>(any(vec2<bool>(var_2.x, true)), var_4.b.a.b, true, any(!vec2<bool>(false, var_1.b)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(792f, 635f))), arg_1.d, -789f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.c.a.d))), -710f);
}

fn func_1(arg_0: u32, arg_1: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1113f);
    let var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(min(1000f, var_0)))), 782f))), Struct_1(vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, u_input.c), ~vec2<i32>(u_input.c, -1i)), ~u_input.c, _wgslsmith_mult_i32(1i, -arg_1)), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1242f, 1486f, var_0, -1246f) + vec4<f32>(-815f, -1000f, 652f, 513f)))), _wgslsmith_f_op_f32(888f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f * var_0), 1f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(var_0)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(122600u, 17u)]))))));
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.d.x, 17u)] + -542f)), func_2(-165f, func_2(_wgslsmith_f_op_f32(abs(-215f)), func_2(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(u_input.a.x, 17u)])), var_1, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-138f, var_0)))), _wgslsmith_f_op_vec2_f32(var_1.c.xw - vec2<f32>(1165f, 1751f))), var_1.c.yz).d));
    var var_3 = Struct_3(Struct_2(_wgslsmith_div_f32(var_0, global0[_wgslsmith_index_u32(~9084u << (~arg_0 % 32u), 17u)])), Struct_2(157f), u_input.d.wzz);
    global1 = _wgslsmith_mod_u32(0u, var_3.c.x);
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(~_wgslsmith_div_u32(func_1(u_input.b.x, u_input.c), firstLeadingBit(u_input.b.x)), _wgslsmith_dot_vec4_u32(countOneBits(reverseBits(u_input.d)), select(u_input.d, vec4<u32>(30046u, 1u, u_input.b.x, 1u), true) << (u_input.d % vec4<u32>(32u)))) & ~u_input.a.x;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 17u)] + -543f) * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(21643u, 17u)] - 1000f))) + -174f));
    global1 = max(var_0, 1u);
    let var_2 = ~(~(((u_input.b.x | u_input.d.x) >> (_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(90958u, u_input.b.x, 9680u, var_0)) % 32u)) << (1u % 32u)));
    global0 = array<f32, 17>();
    global0 = array<f32, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(-1820f);
}

