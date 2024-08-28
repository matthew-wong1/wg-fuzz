struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(3256i, 1i);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec4<i32>, arg_3: vec4<i32>) -> vec2<bool> {
    global0 = arg_3.zx;
    let var_0 = Struct_2(Struct_1(arg_0.a.a));
    let var_1 = Struct_2(Struct_1(!select(!vec2<bool>(arg_1, var_0.a.a.x), !vec2<bool>(false, var_0.a.a.x), vec2<bool>(arg_0.a.a.x, false))));
    global0 = ~arg_2.ww;
    let var_2 = Struct_2(arg_0.a);
    return vec2<bool>(false, any(select(vec2<bool>(true, false), var_2.a.a, arg_0.a.a)) | !var_1.a.a.x);
}

fn func_2() -> u32 {
    global0 = countOneBits(-_wgslsmith_div_vec2_i32(vec2<i32>(global0.x, global0.x >> (u_input.b.x % 32u)), abs(firstLeadingBit(vec2<i32>(-1i, global0.x)))));
    global0 = _wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(-876i, 1i) | -vec2<i32>(-1i, global0.x)) ^ -firstTrailingBit(vec2<i32>(global0.x, u_input.c)), ~(u_input.a.zx ^ (vec2<i32>(-10919i, u_input.c) | _wgslsmith_mult_vec2_i32(vec2<i32>(global0.x, -1i), vec2<i32>(2147483647i, u_input.c)))), u_input.a.zz);
    let var_0 = Struct_2(Struct_1(!select(func_3(Struct_2(Struct_1(vec2<bool>(true, true))), true, u_input.a, u_input.a), func_3(Struct_2(Struct_1(vec2<bool>(true, false))), true, u_input.a, u_input.a), vec2<bool>(true, true))));
    var var_1 = Struct_1(!select(select(var_0.a.a, vec2<bool>(var_0.a.a.x, var_0.a.a.x), vec2<bool>(var_0.a.a.x, var_0.a.a.x)), vec2<bool>(true, func_3(var_0, var_0.a.a.x, vec4<i32>(1i, u_input.a.x, -75518i, global0.x), u_input.a).x), select(var_0.a.a, func_3(Struct_2(var_0.a), false, u_input.a, u_input.a), vec2<bool>(var_0.a.a.x, var_0.a.a.x))));
    var var_2 = ~u_input.b.x;
    return ~80399u;
}

fn func_1() -> Struct_1 {
    global0 = vec2<i32>(u_input.c, -2147483647i);
    var var_0 = all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !any(vec3<bool>(false, false, true))));
    global0 = vec2<i32>(-2147483647i, -20821i);
    var_0 = true;
    let var_1 = select(vec4<u32>(func_2(), 40224u, ~0u, _wgslsmith_div_u32(u_input.b.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.b.x, 4294967295u), vec4<u32>(42404u, u_input.b.x, u_input.b.x, 103006u)))), abs(_wgslsmith_mod_vec4_u32(max(vec4<u32>(u_input.b.x, u_input.b.x, 25072u, u_input.b.x), vec4<u32>(93117u, 21848u, 3196u, u_input.b.x)) | ~vec4<u32>(1u, u_input.b.x, 110835u, 0u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(13244u, 4294967295u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 4294967295u, 0u, u_input.b.x)))), any(vec2<bool>(true, false)));
    return Struct_1(vec2<bool>(any(vec3<bool>(true, true, true)), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = 12342u;
    global0 = vec2<i32>(global0.x, u_input.c);
    let var_2 = vec4<u32>(27598u, ~(~(~u_input.b.x)), ~4294967295u, ~u_input.b.x) | reverseBits(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x));
    var var_3 = ~(_wgslsmith_add_i32(-(~u_input.a.x), u_input.a.x) << (51698u % 32u));
    let var_4 = Struct_2(Struct_1(vec2<bool>(true, true)));
    var var_5 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-473f, 334f, -289f, 736f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1171f, -790f, -1188f, 145f), vec4<f32>(396f, -453f, 1716f, -1000f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x, max(vec4<i32>(global0.x, u_input.a.x, global0.x, 1i) & abs(~u_input.a), vec4<i32>(12151i, global0.x, -1i, u_input.c | (-2277i ^ global0.x))), _wgslsmith_mult_vec4_u32(~abs(min(var_2, var_2)), ~vec4<u32>(u_input.b.x, 21472u, var_2.x, 55086u) << (min(~vec4<u32>(0u, var_2.x, u_input.b.x, 4643u), var_2) % vec4<u32>(32u))));
}

