struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
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

var<private> global0: vec2<bool>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1277f, 658f), -879f))), ~u_input.b.wzx);
    global0 = vec2<bool>(global0.x, true);
    var var_1 = vec3<i32>(-1i, firstTrailingBit(-(i32(-1i) * -13487i)), _wgslsmith_add_i32(-1i, _wgslsmith_mod_i32(u_input.c.x, _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.c.x, u_input.c.x), _wgslsmith_clamp_i32(-21112i, u_input.c.x, u_input.c.x)))));
    global0 = !select(select(select(!vec2<bool>(global0.x, true), !vec2<bool>(global0.x, true), !vec2<bool>(global0.x, false)), select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, global0.x), all(vec2<bool>(global0.x, global0.x))), select(24167u, 64714u, global0.x) < (u_input.b.x >> (var_0.b.x % 32u))), vec2<bool>(true, true), select(select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, global0.x), !global0.x), !vec2<bool>(true, global0.x), vec2<bool>(!global0.x, global0.x)));
    var var_2 = vec2<bool>(true, false);
    return all(vec2<bool>(false, any(!(!vec2<bool>(global0.x, global0.x)))));
}

fn func_2() -> Struct_1 {
    global0 = select(!select(select(vec2<bool>(global0.x, false), vec2<bool>(true, false), false), select(vec2<bool>(true, true), !vec2<bool>(global0.x, global0.x), !vec2<bool>(false, global0.x)), func_3()), !select(vec2<bool>(true, global0.x), select(vec2<bool>(true, true), !vec2<bool>(false, global0.x), u_input.a.x > u_input.a.x), !global0.x), vec2<bool>((max(u_input.c.x, -2147483647i) == (-21090i << (u_input.b.x % 32u))) | !global0.x, u_input.c.x < (-u_input.c.x << (~6872u % 32u))));
    let var_0 = (~abs(vec3<i32>(0i, 2147483647i, u_input.c.x)) ^ -countOneBits(-vec3<i32>(-2147483647i, 46493i, u_input.c.x))) >> (vec3<u32>(_wgslsmith_dot_vec4_u32(~u_input.b ^ min(u_input.b, u_input.b), vec4<u32>(firstTrailingBit(u_input.b.x), 1u, u_input.a.x, _wgslsmith_mult_u32(u_input.b.x, u_input.a.x))), abs(~_wgslsmith_mult_u32(u_input.a.x, 7629u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 30226u, 0u, u_input.b.x), _wgslsmith_mult_vec4_u32(vec4<u32>(21207u, 0u, 49886u, 39151u), u_input.b) | _wgslsmith_div_vec4_u32(vec4<u32>(27719u, u_input.a.x, u_input.b.x, 114362u), u_input.b))) % vec3<u32>(32u));
    let var_1 = _wgslsmith_div_u32(16496u, (firstTrailingBit(u_input.a.x) & _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(10242u, 1u, 1822u), u_input.b.xzy, u_input.b.yww), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 0u, u_input.a.x), vec3<u32>(1u, u_input.b.x, u_input.b.x)))) >> (_wgslsmith_clamp_u32(~0u, u_input.a.x, _wgslsmith_mod_u32(u_input.b.x | u_input.b.x, 0u | u_input.b.x)) % 32u));
    global0 = !(!select(!select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x)), select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, global0.x), false), vec2<bool>(global0.x, global0.x), select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, false), vec2<bool>(global0.x, true))), global0.x));
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(ceil(154f)), _wgslsmith_f_op_f32(f32(-1f) * -218f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1616f, -812f), vec2<f32>(600f, -1073f), false)))))), _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(~(~u_input.b.wxw), vec3<u32>(~1u, 0u & var_1, countOneBits(4294967295u))), _wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(0u, var_1, 29491u)), vec3<u32>(u_input.b.x, var_1, u_input.b.x)) << ((u_input.b.yxw ^ vec3<u32>(0u, 16765u, var_1)) % vec3<u32>(32u))));
}

fn func_1(arg_0: vec3<f32>) -> vec4<f32> {
    let var_0 = func_2();
    var var_1 = firstTrailingBit(u_input.c.zy);
    let var_2 = vec4<bool>(global0.x && !global0.x, any(vec4<bool>(!func_3(), true, true & !global0.x, select(var_0.b.x <= 4294967295u, all(vec3<bool>(true, global0.x, global0.x)), !global0.x))), true, true);
    var var_3 = countOneBits(reverseBits(u_input.b));
    let var_4 = var_1.x;
    return vec4<f32>(-649f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-319f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1f)) + _wgslsmith_f_op_f32(ceil(arg_0.x))), 811f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_0.a.x, arg_0.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<bool>(global0.x, false);
    let var_0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-597f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -128f)))), _wgslsmith_f_op_f32(f32(-1f) * -1372f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(963f - 1184f), _wgslsmith_f_op_f32(f32(-1f) * -419f)))), _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-521f - 381f), _wgslsmith_div_f32(218f, -1890f), 242f))))));
    global0 = vec2<bool>(any(!vec4<bool>(false, global0.x, global0.x, global0.x)) | global0.x, false);
    var var_1 = 365f;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-537f, var_0.x))))), ~(~func_2().b));
    let var_3 = var_2;
    var var_4 = select(vec2<bool>(select(true, true, _wgslsmith_add_i32(u_input.c.x, u_input.c.x) < u_input.c.x), global0.x), select(vec2<bool>(global0.x, !(24147u == u_input.a.x)), select(select(vec2<bool>(true, true), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, true)), !select(vec2<bool>(true, true), vec2<bool>(global0.x, false), true), vec2<bool>(false, global0.x)), select(vec2<bool>(true, true), select(vec2<bool>(global0.x, global0.x), select(vec2<bool>(false, true), vec2<bool>(global0.x, true), vec2<bool>(true, false)), true), select(vec2<bool>(false, false), select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, true), global0.x), vec2<bool>(global0.x, global0.x)))), select((-u_input.c.x == (4039i ^ u_input.c.x)) && true, true, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.b.x, 4294967295u), var_3.b.xz), 1u) > 2585u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x);
}

