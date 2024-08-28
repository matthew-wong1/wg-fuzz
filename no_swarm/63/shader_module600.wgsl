struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: i32,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: f32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_2) -> vec2<bool> {
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -849f);
    let var_0 = Struct_1(arg_0.b.a);
    return select(!select(!arg_1.xy, vec2<bool>(false, false), select(vec2<bool>(false, arg_1.x), select(vec2<bool>(true, true), arg_2.a, arg_0.a.x), arg_2.a.x)), select(arg_0.a, vec2<bool>(arg_0.a.x, arg_0.a.x), arg_2.a), arg_0.a);
}

fn func_2() -> Struct_1 {
    var var_0 = 31761i >> (u_input.a % 32u);
    let var_1 = Struct_2(select(vec2<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), true), select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), false), select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), func_3(Struct_2(vec2<bool>(true, false), Struct_1(vec3<i32>(1i, 1i, 24133i)), 25607i, global0.x, Struct_1(vec3<i32>(-2147483647i, -2147483647i, 2147483647i))), vec4<bool>(false, false, false, false), Struct_2(vec2<bool>(true, true), Struct_1(vec3<i32>(0i, 0i, -19150i)), 0i, 18343u, Struct_1(vec3<i32>(5061i, -1i, 26790i)))), any(vec4<bool>(false, false, false, true))), vec2<bool>(true, select(true, false, true)), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), true))), Struct_1(vec3<i32>(~(~21424i), -2540i, 1i >> (countOneBits(global0.x) % 32u))), _wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(-18362i, 1i), 20098i), _wgslsmith_mult_i32(_wgslsmith_mod_i32(-1i, 29212i), max(13745i, -60189i))), _wgslsmith_dot_vec3_i32(-(vec3<i32>(-15294i, -2147483647i, -33690i) >> (vec3<u32>(u_input.a, global0.x, 53u) % vec3<u32>(32u))), countOneBits(vec3<i32>(2207i, -1i, 7404i) << (vec3<u32>(global0.x, 51395u, 66829u) % vec3<u32>(32u))))), global0.x, Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(~(-2147483647i), min(-1i, -25529i), _wgslsmith_add_i32(-78111i, -1i)), firstTrailingBit(abs(vec3<i32>(0i, -2147483647i, 2147483647i))))));
    global0 = max(_wgslsmith_mod_vec3_u32(~(vec3<u32>(var_1.d, 25425u, 17789u) | abs(vec3<u32>(global0.x, 1u, 4294967295u))), reverseBits(select(abs(vec3<u32>(66009u, u_input.a, global0.x)), vec3<u32>(var_1.d, global0.x, var_1.d) ^ vec3<u32>(global0.x, global0.x, 1u), vec3<bool>(true, false, true)))), ~(~vec3<u32>(~global0.x, 51773u, _wgslsmith_mult_u32(1u, 39237u))));
    var var_2 = 5256i;
    let var_3 = var_1.a.x;
    return Struct_1(-vec3<i32>(_wgslsmith_sub_i32(-2147483647i, firstLeadingBit(var_1.c)), ~(-17848i), firstTrailingBit(~var_1.b.a.x)));
}

fn func_1(arg_0: bool, arg_1: u32) -> bool {
    var var_0 = true;
    var var_1 = func_2();
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1119f))))) - -812f);
    global0 = vec3<u32>(15270u, global0.x, _wgslsmith_sub_u32(countOneBits(global0.x), 0u) >> (countOneBits(12497u) % 32u));
    global0 = vec3<u32>(11424u, countOneBits(arg_1), ~3451u);
    return !arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(select(vec2<bool>(func_1(true, ~u_input.a), true), select(func_3(Struct_2(vec2<bool>(true, true), Struct_1(vec3<i32>(530i, -1i, 0i)), 0i, u_input.a, Struct_1(vec3<i32>(23937i, -1i, 44746i))), vec4<bool>(false, false, false, false), Struct_2(vec2<bool>(true, false), Struct_1(vec3<i32>(-1i, 22779i, -13421i)), -312i, u_input.a, Struct_1(vec3<i32>(1i, 2147483647i, 10524i)))), func_3(Struct_2(vec2<bool>(true, false), Struct_1(vec3<i32>(-2147483647i, -18273i, -32236i)), 2147483647i, global0.x, Struct_1(vec3<i32>(1i, -2147483647i, 15802i))), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), true), Struct_2(vec2<bool>(false, false), Struct_1(vec3<i32>(4638i, -31591i, 5712i)), -2147483647i, 26061u, Struct_1(vec3<i32>(-2147483647i, -53924i, 2147483647i)))), vec2<bool>(true, true)), func_3(Struct_2(vec2<bool>(true, true), Struct_1(vec3<i32>(48460i, 3526i, -1254i)), 26636i, ~global0.x, func_2()), vec4<bool>(true, true, true, true), Struct_2(vec2<bool>(false, true), Struct_1(vec3<i32>(0i, -27064i, -2147483647i)), 1i, u_input.a, func_2()))), Struct_1(vec3<i32>(min(countOneBits(20804i), -7483i), reverseBits(firstTrailingBit(-1i)), abs(-7968i))), -(~abs(_wgslsmith_div_i32(-1i, 22597i))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, ~global0.x, countOneBits(110690u), ~114058u), abs(vec4<u32>(4294967295u, global0.x, u_input.a, global0.x) & vec4<u32>(12399u, global0.x, global0.x, 39389u))), Struct_1(vec3<i32>(~(9325i << (u_input.a % 32u)), firstLeadingBit(-2147483647i), min(2147483647i, 0i))));
    let var_1 = Struct_1(var_0.e.a);
    var var_2 = 73174u;
    var_2 = _wgslsmith_sub_u32(~_wgslsmith_sub_u32(max(4294967295u << (global0.x % 32u), 1u), select(var_0.d, 283u, var_0.a.x) ^ global0.x), ~(~(~(~25265u))));
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.a, global0.x), vec3<u32>(4323u, global0.x, u_input.a)), vec3<u32>(var_0.d, 30253u, var_0.d)), select(vec3<u32>(u_input.a, var_0.d, 11227u), vec3<u32>(4294967295u, global0.x, u_input.a), vec3<bool>(var_0.a.x, true, false)) | (vec3<u32>(var_0.d, u_input.a, global0.x) ^ vec3<u32>(3142u, 1u, 4294967295u))) ^ ~((vec3<u32>(var_0.d, 8449u, var_0.d) << (vec3<u32>(1u, 4294967295u, 1u) % vec3<u32>(32u))) << (vec3<u32>(u_input.a, u_input.a, 0u) % vec3<u32>(32u))), 0u, var_0.c, 1372f);
}

