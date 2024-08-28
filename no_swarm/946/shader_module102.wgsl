struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(22796u, 0u, vec4<bool>(false, false, false, false), vec3<u32>(4294967295u, 4294967295u, 50495u));

var<private> global1: Struct_1;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: Struct_2) -> u32 {
    var var_0 = firstLeadingBit(-(vec4<i32>(-1i) * -vec4<i32>(arg_2.a.x, arg_2.a.x, arg_0, arg_2.a.x)) << (vec4<u32>(~(arg_2.b.a >> (92274u % 32u)), arg_2.b.d.x, global0.a, _wgslsmith_mult_u32(_wgslsmith_mod_u32(4294967295u, 203u), ~4294967295u)) % vec4<u32>(32u)));
    global0 = arg_2.b;
    let var_1 = ~global1.a;
    var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-13335i, abs(select(1i, var_0.x, false)), ~(-2946i), _wgslsmith_mod_i32(~u_input.b, u_input.a.x)), firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, arg_2.a.x, arg_0, arg_0) | vec4<i32>(0i, u_input.b, -27525i, -2147483647i), ~vec4<i32>(arg_2.a.x, 1i, arg_2.a.x, u_input.b))), vec4<i32>(var_0.x, reverseBits(arg_0), _wgslsmith_add_i32(5012i, -6298i), ~(-1i << (global0.d.x % 32u)))), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(0i, 1i, 35664i, 2147483647i), vec4<i32>(arg_0, u_input.a.x, -60722i, -2147483647i) & vec4<i32>(var_0.x, 2147483647i, -3255i, -39685i)), ~vec4<i32>(1i, 1i, 1i, 1i)) | vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, var_0.x), u_input.a.yy), -var_0.x), min(~arg_0, arg_0), arg_2.a.x, -8282i));
    let var_2 = ~(~global0.d);
    return global0.a;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<f32>) -> u32 {
    let var_0 = Struct_2(u_input.a, Struct_1(global0.b, 4294967295u, vec4<bool>(all(vec4<bool>(arg_0.x, true, arg_0.x, global1.c.x)) || select(true, true, global1.c.x), global1.c.x, global0.c.x, true), vec3<u32>(~(~global1.b), 110230u, select(func_3(u_input.a.x, global0.c.x, Struct_2(u_input.a, Struct_1(global0.b, 23669u, vec4<bool>(true, global0.c.x, false, false), global1.d), arg_1.x)), _wgslsmith_mod_u32(global1.b, 2647u), arg_0.x & false))), _wgslsmith_f_op_f32(f32(-1f) * -697f));
    let var_1 = var_0.b;
    var var_2 = vec2<u32>(~reverseBits(3126u), ~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(countOneBits(var_1.d), ~vec3<u32>(global1.d.x, var_0.b.a, var_0.b.a)), var_1.d));
    let var_3 = var_0;
    var_2 = vec2<u32>(var_1.d.x, var_2.x);
    return global0.b;
}

fn func_1(arg_0: vec4<i32>, arg_1: f32, arg_2: vec2<f32>, arg_3: i32) -> Struct_2 {
    var var_0 = arg_2;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(112f + arg_2.x), _wgslsmith_f_op_f32(round(arg_1)))))));
    global1 = Struct_1(0u, global1.d.x, select(select(global1.c, global0.c, global1.c), global0.c, true), global1.d);
    var var_1 = any(global1.c.zwy);
    global0 = Struct_1(~firstTrailingBit(global1.d.x), _wgslsmith_div_u32(~func_2(vec2<bool>(true, global1.c.x), arg_2) ^ ~(~global1.b), ~global1.d.x), global1.c, firstTrailingBit(vec3<u32>(_wgslsmith_add_u32(0u, ~global0.a), _wgslsmith_div_u32(global1.d.x, abs(global0.b)), global0.a)));
    return Struct_2(vec3<i32>(arg_0.x, _wgslsmith_sub_i32(i32(-1i) * -u_input.b, u_input.a.x), 2147483647i), Struct_1(~firstTrailingBit(func_2(vec2<bool>(true, global1.c.x), arg_2)), 4294967295u, global0.c, vec3<u32>(max(_wgslsmith_mod_u32(global1.a, 4294967295u), global1.d.x), _wgslsmith_div_u32(~4294967295u, ~global0.d.x), global1.b)), 1000f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec4<i32>(firstLeadingBit(2147483647i), -860i, u_input.b, 60517i), _wgslsmith_f_op_f32(-455f * -727f), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-433f, -948f), vec2<f32>(-510f, -284f), false))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1199f, 923f))))))), i32(-1i) * -1i);
    var var_1 = var_0;
    global1 = Struct_1(~_wgslsmith_sub_u32(1u, var_1.b.b), _wgslsmith_div_u32(reverseBits(~func_3(var_1.a.x, var_1.b.c.x, var_0)), 19822u), global0.c, var_1.b.d ^ ((~var_0.b.d | _wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.b.a, 20735u, global0.a), vec3<u32>(47466u, var_1.b.d.x, 0u), vec3<u32>(var_1.b.b, global1.b, 0u))) | (global0.d | _wgslsmith_mod_vec3_u32(global1.d, vec3<u32>(26639u, 18003u, 21982u)))));
    var_1 = func_1(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(var_1.a.x, var_1.a.x, 5728i, var_0.a.x), ~(vec4<i32>(u_input.b, var_1.a.x, u_input.a.x, 31354i) | vec4<i32>(-1i, -1i, 1i, 36690i))), -firstTrailingBit(countOneBits(vec4<i32>(var_1.a.x, var_1.a.x, 1i, var_1.a.x)))), _wgslsmith_f_op_f32(trunc(1609f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.c + -464f), _wgslsmith_f_op_f32(round(-543f)))), var_0.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, -879f))))))), var_1.a.x ^ u_input.b);
    let var_2 = var_0;
    global0 = var_2.b;
    let var_3 = global1.b;
    let var_4 = Struct_1(firstTrailingBit(func_2(select(global0.c.xx, select(global0.c.wz, global0.c.xw, var_0.b.c.wy), vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-370f, -160f)))))), _wgslsmith_sub_u32(func_1(-vec4<i32>(u_input.a.x, var_2.a.x, var_1.a.x, var_0.a.x) & (vec4<i32>(2147483647i, 1i, var_0.a.x, -2147483647i) ^ vec4<i32>(-20207i, 30331i, 2147483647i, var_0.a.x)), 1873f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(226f, 362f) - vec2<f32>(-879f, var_0.c))), var_0.a.x).b.b, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.b.b, var_1.b.a), vec2<u32>(var_0.b.a, 1u) | var_0.b.d.yz), ~select(vec2<u32>(var_2.b.a, var_0.b.d.x), var_2.b.d.xx, vec2<bool>(global0.c.x, false)))), select(global1.c, !vec4<bool>(true, var_0.c >= var_2.c, true, true), true), _wgslsmith_mod_vec3_u32(~firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 19626u), vec3<u32>(0u, 33156u, global1.a))), var_2.b.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(-792f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) + _wgslsmith_div_f32(var_0.c, var_2.c)), -2461f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.c))), var_2.c))), _wgslsmith_f_op_f32(f32(-1f) * -333f), 40832i, _wgslsmith_sub_vec3_u32(~(~global0.d), ~(~(~vec3<u32>(4294967295u, 4294967295u, 3353u)))));
}

