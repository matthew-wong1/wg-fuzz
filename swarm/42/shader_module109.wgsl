struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec3<bool>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    global0 = ~(~(~countOneBits(~u_input.a)));
    global0 = ~(~u_input.a);
    let var_0 = vec4<bool>(false, false, false, _wgslsmith_div_u32(min(~u_input.a, ~u_input.a), select(_wgslsmith_sub_u32(u_input.a, 27378u), u_input.a, true)) > max(u_input.a, 1u));
    var var_1 = u_input.a;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -729f);
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec4<f32>, arg_3: Struct_4) -> vec2<u32> {
    let var_0 = arg_3;
    var var_1 = func_3();
    let var_2 = var_0;
    var var_3 = Struct_2(vec2<i32>(2147483647i, 2919i), ~vec2<u32>(1u << (min(arg_3.b.b.x, arg_3.b.b.x) % 32u), arg_0.b.x), _wgslsmith_f_op_f32(abs(arg_0.c)));
    var var_4 = 0i;
    return ~arg_0.b;
}

fn func_1() -> Struct_4 {
    let var_0 = countOneBits(~func_2(Struct_2(vec2<i32>(1362i, 36524i), vec2<u32>(4294967295u, 20791u), 1000f), ~vec2<u32>(u_input.a, u_input.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(-896f, -388f, -128f, 382f) - vec4<f32>(-2596f, -1705f, -281f, 432f)), Struct_4(1155f, Struct_2(vec2<i32>(58227i, 19774i), vec2<u32>(0u, u_input.a), 1161f), 2147483647i)) ^ vec2<u32>(_wgslsmith_mod_u32(0u | u_input.a, 0u), ~u_input.a));
    global0 = var_0.x;
    let var_1 = Struct_3(~abs(vec4<i32>(~2577i, -17402i, 1i, 1i)), Struct_2(firstLeadingBit(-vec2<i32>(22580i, 0i)) << (countOneBits(vec2<u32>(var_0.x, var_0.x)) % vec2<u32>(32u)), reverseBits(~(~vec2<u32>(var_0.x, u_input.a))), -684f), select(vec3<bool>(true, true, true), vec3<bool>(true, any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), true), true), _wgslsmith_sub_vec3_u32(~abs(vec3<u32>(27106u, 1u, 413u) | vec3<u32>(50923u, var_0.x, var_0.x)), vec3<u32>(~1u, u_input.a, var_0.x) >> (countOneBits(~vec3<u32>(0u, u_input.a, u_input.a)) % vec3<u32>(32u))));
    global0 = _wgslsmith_dot_vec2_u32(vec2<u32>(15868u, countOneBits(min(var_1.b.b.x << (0u % 32u), ~75021u))), var_0);
    return Struct_4(_wgslsmith_f_op_f32(-1029f - var_1.b.c), var_1.b, abs(0i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 14230u;
    global0 = ~u_input.a;
    global0 = u_input.a;
    var var_0 = Struct_1(_wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_sub_i32(1i, 2147483647i)), -36416i << (_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 61642u), firstLeadingBit(vec2<u32>(4294967295u, 0u))) % 32u)));
    var var_1 = func_1();
    var var_2 = Struct_1(var_1.b.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(func_1().b.a.x, -(~firstTrailingBit(var_0.a))));
}

