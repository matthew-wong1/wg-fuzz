struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_2,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
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

var<private> global0: i32 = -1i;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec3<u32>) -> i32 {
    global0 = ~abs(-1i);
    global0 = arg_1;
    return arg_1;
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_mult_i32((((64826i << (u_input.a.x % 32u)) >> (reverseBits(1u) % 32u)) | _wgslsmith_sub_i32(_wgslsmith_mod_i32(4903i, 17737i), 0i << (u_input.a.x % 32u))) | 21612i, 1i);
    let var_1 = _wgslsmith_div_vec4_i32(min(select(_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(5544i, var_0, var_0, var_0)), firstLeadingBit(vec4<i32>(var_0, 2147483647i, 0i, var_0))), -(~vec4<i32>(1i, -2147483647i, 21719i, 2147483647i)), true), ~vec4<i32>(var_0 | 43284i, 58741i, var_0, 0i)), vec4<i32>(1i, -var_0, var_0, firstLeadingBit(_wgslsmith_div_i32(-2147483647i, min(-22033i, var_0)))));
    var var_2 = Struct_2(Struct_1(vec4<bool>(any(vec3<bool>(true, true, true)), false, 23403i == max(0i, var_0), false), select(~u_input.a.x, 100123u, any(vec4<bool>(false, false, true, true)) & any(vec3<bool>(true, true, false))), select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), any(vec3<bool>(false, true, false))), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true), any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false))))), 1u, Struct_1(vec4<bool>(false, all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))), !all(vec2<bool>(true, true)), false), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b, u_input.b, 62572u, u_input.b)), u_input.a), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true)));
    var var_3 = 7776u;
    var_2 = Struct_2(Struct_1(!vec4<bool>(true, any(var_2.c.c), var_2.a.c.x, !var_2.a.c.x), var_2.b, var_2.c.a.yzw), _wgslsmith_div_u32(~1u, ~(~u_input.d.x)), Struct_1(!select(select(var_2.c.a, var_2.a.a, var_2.a.a), !vec4<bool>(var_2.a.a.x, true, var_2.c.c.x, var_2.a.c.x), any(vec2<bool>(false, var_2.c.a.x))), (52441u & var_2.a.b) | 4294967295u, select(select(vec3<bool>(false, false, var_2.a.c.x), !vec3<bool>(var_2.c.a.x, var_2.a.a.x, var_2.a.c.x), select(var_2.a.c, vec3<bool>(true, var_2.c.c.x, true), var_2.c.a.zyw)), !select(var_2.c.a.wyx, vec3<bool>(var_2.a.c.x, true, false), var_2.a.c.x), var_2.c.a.xyy)));
    return -1i;
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: vec4<u32>) -> u32 {
    global0 = countOneBits(arg_1.a.x);
    global0 = func_3();
    var var_0 = i32(-1i) * -1i;
    var_0 = _wgslsmith_add_i32(-select(reverseBits(-arg_1.a.x), -28685i, arg_1.e.x), arg_1.a.x);
    var var_1 = arg_1.d;
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~((func_1(1u, 0i, vec3<u32>(u_input.b, 24345u, u_input.a.x)) >> (func_2(4294967295u, Struct_3(vec2<i32>(53471i, -25447i), Struct_1(vec4<bool>(true, false, true, true), u_input.b, vec3<bool>(true, true, true)), vec3<i32>(21468i, 581i, -2147483647i), Struct_2(Struct_1(vec4<bool>(true, true, true, false), u_input.b, vec3<bool>(false, true, false)), u_input.b, Struct_1(vec4<bool>(true, false, false, true), u_input.a.x, vec3<bool>(true, true, true))), vec2<bool>(true, true)), vec2<f32>(-635f, 251f), u_input.a) % 32u)) & func_3()));
    let var_0 = -322f;
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-247f, 377f, var_0), vec3<f32>(786f, var_0, 296f), vec3<bool>(false, false, false))), vec3<f32>(-321f, 189f, -1219f), vec3<bool>(true, true, true))))))));
    var var_2 = Struct_1(vec4<bool>(true, true, false, any(vec2<bool>(select(true, true, false), true))), u_input.d.x, vec3<bool>(!(~u_input.a.x <= _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 34460u, 22225u), u_input.a.yxy)), true, true));
    let var_3 = _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(select(_wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(14281i, -13935i, 20586i, -826i)), select(select(vec4<i32>(0i, 0i, 2963i, 35456i), vec4<i32>(-1i, -2147483647i, -41599i, 0i), false), _wgslsmith_div_vec4_i32(vec4<i32>(13985i, -1i, 1i, -1i), vec4<i32>(70503i, -2147483647i, 51895i, -1i)), select(var_2.a, var_2.a, vec4<bool>(true, false, var_2.c.x, var_2.c.x))), var_2.a), _wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(-2147483647i, 2147483647i, -1i, -224i)), select(vec4<i32>(-1i, 15345i, 13738i, 0i), vec4<i32>(-1i, 1i, 11415i, -25835i), u_input.c != 0u))), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1i, -47869i), vec3<i32>(32666i, -46936i, 176i)), -abs(-16410i), -func_1(42702u, -80742i, u_input.a.wwx)), ~vec4<i32>(1i, 1i, 1i, 1i)));
    var var_4 = vec2<u32>(_wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(u_input.a.zyx, _wgslsmith_mod_vec3_u32(u_input.a.wxy, vec3<u32>(u_input.c, u_input.a.x, u_input.b))), 99051u), var_2.b);
    global0 = reverseBits(i32(-1i) * -1i);
    var var_5 = vec3<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2381f)))) - var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + -723f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.x)))))));
    var_1 = vec3<f32>(-408f, _wgslsmith_f_op_f32(max(-853f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(330f, _wgslsmith_f_op_f32(round(var_5.x))))))), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec2_u32(~(~vec2<u32>(5076u, 9102u)), _wgslsmith_clamp_vec2_u32(u_input.a.yw, vec2<u32>(1u, 1u), u_input.a.yz) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(24590u, var_2.b), u_input.a.yy) % vec2<u32>(32u))));
}

