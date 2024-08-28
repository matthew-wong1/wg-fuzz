struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: bool,
    d: vec3<bool>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
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

var<private> global0: bool;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: i32) -> bool {
    var var_0 = Struct_1(select(select(arg_0.d, select(!arg_0.d, arg_0.a, !vec3<bool>(true, arg_0.c, arg_0.a.x)), false), arg_0.a, vec3<bool>(true, arg_0.a.x, _wgslsmith_add_i32(u_input.b, -27342i) == ~u_input.b)), arg_0.c, true, arg_0.a, vec2<u32>(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, 4294967295u)));
    var var_1 = arg_0;
    var var_2 = vec4<u32>(4294967295u, select(73640u, 631u, false), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~(~var_1.e), firstTrailingBit(vec2<u32>(1u, 4294967295u) >> (var_1.e % vec2<u32>(32u)))), 1u), _wgslsmith_dot_vec3_u32(reverseBits(u_input.a.xxw), u_input.a.wxz));
    let var_3 = ~(_wgslsmith_mult_vec4_i32(~vec4<i32>(3210i, arg_2, -45390i, u_input.b), reverseBits(vec4<i32>(u_input.b, -56038i, -8164i, -2147483647i) >> (u_input.a % vec4<u32>(32u)))) & _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -17619i, arg_2, 16730i), vec4<i32>(2147483647i, u_input.b, -1i, -1i)), vec4<i32>(u_input.b, u_input.b, -1i, u_input.b)), _wgslsmith_div_vec4_i32(~vec4<i32>(1i, 1i, u_input.b, arg_2), vec4<i32>(-2147483647i, u_input.b, u_input.b, arg_2))));
    var_2 = abs(~u_input.a);
    return var_1.b;
}

fn func_1() -> bool {
    var var_0 = ~vec3<u32>(~u_input.a.x, _wgslsmith_div_u32(25370u, 1u), 67542u);
    let var_1 = Struct_1(select(vec3<bool>(false, true, !any(vec4<bool>(true, false, true, false))), vec3<bool>(true, true, true), vec3<bool>((i32(-1i) * -29700i) >= (0i >> (u_input.a.x % 32u)), u_input.b == (6169i & u_input.b), any(vec3<bool>(true, true, true)))), true & !any(vec2<bool>(true, true)), true, vec3<bool>(any(vec4<bool>(func_2(Struct_1(vec3<bool>(false, false, true), false, false, vec3<bool>(true, false, true), vec2<u32>(var_0.x, u_input.a.x)), vec3<f32>(-298f, -1291f, -1641f), 0i), true, true, select(false, false, true))), !(!func_2(Struct_1(vec3<bool>(false, true, true), true, false, vec3<bool>(false, false, false), vec2<u32>(var_0.x, u_input.a.x)), vec3<f32>(-205f, -700f, 1537f), 1i)), false), var_0.xz);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1183f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-736f)))))));
    let var_3 = u_input.b;
    global0 = !var_1.d.x;
    return all(select(select(vec4<bool>(true, var_1.b, var_1.d.x, false), vec4<bool>(false, true, false, var_1.c), !vec4<bool>(var_1.b, true, false, false)), vec4<bool>(var_1.d.x, !var_1.b, true, all(vec4<bool>(false, var_1.a.x, false, var_1.c))), !var_1.b)) | var_1.d.x;
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_1(!vec3<bool>(false, true, !all(vec3<bool>(false, false, true))), false, all(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true))), vec3<bool>(false, all(vec2<bool>(true, true)), false), ~(~(~u_input.a.wz)));
    var var_1 = _wgslsmith_sub_i32(u_input.b, ~(~(~(~u_input.b))));
    let var_2 = Struct_1(var_0.d, !(!(!any(var_0.d))), any(select(var_0.a, select(!var_0.a, var_0.a, all(var_0.d.xy)), !(!var_0.a))), vec3<bool>(!var_0.c, !(!var_0.c), false), ~vec2<u32>(u_input.a.x, var_0.e.x));
    global0 = var_0.d.x;
    var var_3 = var_0;
    return var_3.d.yz;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = u_input.a.x;
    let var_1 = -1i;
    var var_2 = Struct_1(select(vec3<bool>(false, all(vec4<bool>(true, false, false, true)), true), vec3<bool>(false, true, all(vec3<bool>(true, true, true))), !all(func_3())), true, !(!select(any(vec4<bool>(true, false, true, false)), true, false)), select(!vec3<bool>(true, select(false, false, true), all(vec3<bool>(false, false, true))), select(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), vec3<bool>(true, true, true)), !(!any(vec4<bool>(true, false, true, false)))), firstLeadingBit(~u_input.a.zx));
    let var_3 = var_2.c;
    let var_4 = _wgslsmith_f_op_f32(-1f);
    let var_5 = Struct_1(select(!vec3<bool>(var_2.d.x, !var_2.d.x, !var_2.c), !var_2.a, var_2.d.x), !(abs(-var_1) > var_1), !var_2.d.x, vec3<bool>(func_2(Struct_1(vec3<bool>(true, var_2.d.x, var_2.c), true, var_2.c, select(vec3<bool>(var_2.b, var_2.d.x, var_2.d.x), var_2.d, var_2.b), ~u_input.a.zw), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(171f, 196f, var_4))))), -2147483647i), !var_2.c, var_2.c), ~(~select(reverseBits(vec2<u32>(50224u, 1u)), u_input.a.yw, func_3())));
    let var_6 = _wgslsmith_clamp_u32(_wgslsmith_add_u32(var_2.e.x, _wgslsmith_mod_u32(~29338u, 53780u)), 26556u, ~firstTrailingBit(var_5.e.x << (128498u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(select(max(abs(~vec4<u32>(var_0, var_2.e.x, u_input.a.x, var_5.e.x)), ~(u_input.a >> (vec4<u32>(69592u, var_2.e.x, var_0, u_input.a.x) % vec4<u32>(32u)))), vec4<u32>(~_wgslsmith_mult_u32(21349u, 0u), var_5.e.x, reverseBits(1u), var_6), all(!var_2.a.zz)));
}

