struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 3797i;

var<private> global1: vec3<f32> = vec3<f32>(274f, 1000f, 268f);

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(4294967295u, 56478u, -136f), Struct_1(9728u, 1u, -1867f), Struct_1(20966u, 4294967295u, 747f), Struct_1(82690u, 32514u, -2061f), Struct_1(0u, 78162u, -1330f), Struct_1(4294967295u, 14666u, -626f), Struct_1(48664u, 37110u, -1994f), Struct_1(0u, 59985u, 1022f), Struct_1(59306u, 1u, 1732f));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> i32 {
    global1 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1000f)))), global1.x, global1.x);
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-812f, _wgslsmith_f_op_f32(exp2(global1.x)), _wgslsmith_f_op_f32(global1.x + 693f), _wgslsmith_f_op_f32(f32(-1f) * -1199f)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1188f, global1.x, global1.x, global1.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-877f, global1.x, global1.x, 237f) * vec4<f32>(global1.x, global1.x, global1.x, 311f))))))));
    let var_1 = Struct_3(select(~_wgslsmith_mult_vec3_u32(arg_0.a, vec3<u32>(4294967295u, arg_0.a.x, 0u)), arg_0.a, select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true))), vec3<bool>(true, true, true), true | any(vec4<bool>(true, true, false, true)))));
    var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.x, -1202f, var_0.x, -325f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.x, global1.x, 1257f, 1609f))) + vec4<f32>(-1000f, 331f, global1.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-741f, 265f, _wgslsmith_f_op_f32(f32(-1f) * -194f), -1363f)))));
    global2 = array<Struct_1, 9>();
    return arg_1;
}

fn func_2() -> Struct_3 {
    global0 = 15549i;
    var var_0 = select(vec4<i32>(~_wgslsmith_mult_i32(func_3(Struct_3(vec3<u32>(33173u, 0u, 4294967295u)), 2147483647i), abs(14964i)), u_input.b, _wgslsmith_mult_i32(1i, ~(-u_input.b)), max(reverseBits(~u_input.b), u_input.b)), reverseBits(vec4<i32>(~25170i, -u_input.b, ~2147483647i, u_input.b) | ~firstLeadingBit(vec4<i32>(u_input.b, u_input.b, u_input.b, 0i))), !((_wgslsmith_f_op_f32(global1.x - -136f) > _wgslsmith_f_op_f32(ceil(-485f))) || !any(vec2<bool>(false, false))));
    var var_1 = !any(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true), any(vec2<bool>(true, false))));
    global2 = array<Struct_1, 9>();
    var var_2 = false;
    return Struct_3((vec3<u32>(13401u, u_input.a, firstTrailingBit(0u)) ^ ((vec3<u32>(u_input.c.x, u_input.a, u_input.c.x) << (vec3<u32>(4294967295u, 29994u, u_input.a) % vec3<u32>(32u))) ^ (vec3<u32>(4294967295u, 4294967295u, u_input.a) ^ vec3<u32>(13166u, 0u, 1u)))) ^ ~select(vec3<u32>(u_input.a, u_input.a, 26785u), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), u_input.c.x >= 4294967295u));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: bool) -> Struct_3 {
    let var_0 = func_2();
    let var_1 = 296f;
    let var_2 = global1.x;
    var var_3 = (vec4<i32>(u_input.b, -u_input.b, ~(i32(-1i) * -2584i), u_input.b) >> ((vec4<u32>(arg_0.a.x, 35874u << (u_input.a % 32u), arg_0.a.x, ~u_input.a) >> (vec4<u32>(~4294967295u, arg_0.a.x, u_input.c.x, ~74709u) % vec4<u32>(32u))) % vec4<u32>(32u))) | min(vec4<i32>(u_input.b, ~_wgslsmith_add_i32(2147483647i, u_input.b), ~(u_input.b | 2161i), u_input.b), ~_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 11338i, 2147483647i, u_input.b) | vec4<i32>(u_input.b, -15021i, u_input.b, -44397i), -vec4<i32>(3081i, -14478i, u_input.b, 5562i)));
    return func_2();
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<bool>) -> vec2<i32> {
    var var_0 = Struct_2(arg_2.yx);
    let var_1 = Struct_1(~arg_1.a.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.a, arg_1.a.x)), u_input.c), u_input.c.x, _wgslsmith_dot_vec3_u32(arg_1.a, arg_0.a)) | (u_input.c.x << (~arg_1.a.x % 32u)), -140f);
    global0 = _wgslsmith_div_i32(_wgslsmith_add_i32(2147483647i, countOneBits(~u_input.b)), -1i);
    global1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, var_1.c, var_1.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-967f, global1.x, 686f))) * vec3<f32>(-816f, 667f, 460f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(554f, -739f, var_1.c)))), true));
    let var_2 = var_1;
    return vec2<i32>(u_input.b, ~u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = abs(u_input.b);
    let var_0 = ~countOneBits(vec3<u32>(4294967295u, (u_input.a >> (0u % 32u)) | _wgslsmith_clamp_u32(u_input.c.x, u_input.a, u_input.a), ~_wgslsmith_mod_u32(u_input.a, 4294967295u)));
    var var_1 = _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(firstTrailingBit(~firstTrailingBit(vec2<i32>(u_input.b, 2147483647i))), -_wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(u_input.b, u_input.b)), -vec2<i32>(u_input.b, 1i)), abs(func_4(func_1(Struct_3(var_0), vec4<bool>(false, true, true, false), true), func_1(Struct_3(var_0), vec4<bool>(false, false, false, true), false), vec3<bool>(false, true, false)))), countOneBits(vec2<i32>(u_input.b, -abs(-9950i))));
    let var_2 = Struct_1(4294967295u, var_0.x, -830f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, _wgslsmith_clamp_u32(1u, ~27310u, 25734u), min(1u, var_2.b), firstTrailingBit(var_0.x & 37220u)), min(~(~vec4<u32>(var_0.x, var_0.x, u_input.a, var_0.x)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(11146u, u_input.c.x, var_0.x, var_0.x), vec4<u32>(u_input.c.x, var_0.x, 1u, 4294967295u)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 58909u, 62224u, 1u), vec4<u32>(u_input.c.x, 29859u, 4294967295u, var_2.a)), vec4<u32>(u_input.c.x, var_2.a, 4294967295u, 0u) << (vec4<u32>(var_2.b, var_2.b, u_input.c.x, var_0.x) % vec4<u32>(32u)))), vec4<u32>(4294967295u, ~max(var_2.a, 2871u), var_0.x, 0u)), _wgslsmith_add_vec2_u32(vec2<u32>(~1u, 47576u), _wgslsmith_add_vec2_u32(~var_0.yx, vec2<u32>(max(12418u, 43623u), 38413u))));
}

