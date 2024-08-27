struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec4<f32> {
    var var_0 = false;
    return vec4<f32>(-152f, _wgslsmith_f_op_f32(-1593f - 464f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-162f - _wgslsmith_f_op_f32(f32(-1f) * -610f)) + 1514f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -458f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(483f))))))), -806f);
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = ~(~abs(vec2<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.d.x), u_input.c.x)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1608f, 167f, 1296f, 476f), vec4<f32>(962f, -492f, -1000f, 544f), true)) - _wgslsmith_f_op_vec4_f32(func_3(Struct_1(true, false, vec3<i32>(arg_0, u_input.b.x, 2147483647i), -48383i), 13083u))) + vec4<f32>(-776f, _wgslsmith_f_op_f32(select(2094f, 116f, true)), _wgslsmith_f_op_f32(f32(-1f) * -1133f), _wgslsmith_f_op_f32(ceil(1000f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-453f, -191f, -741f, 1728f) + vec4<f32>(-1175f, -356f, -639f, -976f)) * vec4<f32>(674f, -1318f, 1085f, -1237f)))));
    global0 = vec4<bool>(select(all(global0.yzy), any(vec4<bool>(false, !global0.x, false, true)), global0.x), any(select(vec2<bool>(true, true), select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false), vec2<bool>(false, false)), vec2<bool>(all(global0.ww), true))), all(!vec2<bool>(false, global0.x)), all(select(select(!vec4<bool>(false, global0.x, true, false), !vec4<bool>(global0.x, false, global0.x, true), u_input.a.x != 47712u), select(vec4<bool>(true, false, false, global0.x), select(vec4<bool>(false, true, global0.x, true), vec4<bool>(true, false, global0.x, true), vec4<bool>(global0.x, global0.x, true, true)), vec4<bool>(false, global0.x, global0.x, false)), !(!global0.x))));
    global0 = !(!select(select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, true, global0.x, false), true), vec4<bool>(global0.x, any(vec4<bool>(true, global0.x, global0.x, false)), all(vec2<bool>(true, global0.x)), false), select(true, all(global0.zy), global0.x)));
    var var_2 = -vec3<i32>(2147483647i, arg_0, _wgslsmith_clamp_i32(2147483647i, ~(u_input.b.x >> (var_0.x % 32u)), firstLeadingBit(abs(0i))));
    return Struct_1(global0.x, all(global0.zw), _wgslsmith_clamp_vec3_i32(u_input.b.yxy, reverseBits(u_input.b.wyx), vec3<i32>(max(arg_0, firstLeadingBit(arg_0)), -select(u_input.b.x, arg_0, global0.x), 21672i)), ~var_2.x ^ ~arg_0);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: u32, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = 0u;
    let var_1 = ~(~vec4<u32>(0u, 53843u, ~1642u, abs(u_input.a.x | arg_2)));
    var var_2 = u_input.c.xzw;
    var_2 = _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(1055u, 1u, 1u)) << (~(~vec3<u32>(1u, arg_2, 0u)) % vec3<u32>(32u)), vec3<u32>(firstLeadingBit(u_input.d.x), var_2.x, arg_2), vec3<u32>(u_input.a.x, _wgslsmith_sub_u32(_wgslsmith_div_u32(17039u, var_1.x), arg_2), (0u ^ var_2.x) ^ 4294967295u)), _wgslsmith_mod_vec3_u32(u_input.c.xwx, var_1.zyy));
    let var_3 = 0u;
    return Struct_1(true && arg_1.b.a, true, _wgslsmith_div_vec3_i32(((u_input.b.xwz >> (var_1.zxy % vec3<u32>(32u))) << (vec3<u32>(23926u, var_3, arg_2) % vec3<u32>(32u))) ^ abs(countOneBits(vec3<i32>(u_input.b.x, 19718i, u_input.b.x))), u_input.b.xyz), _wgslsmith_div_i32(abs(-6470i), arg_1.a));
}

fn func_1(arg_0: vec3<f32>) -> vec2<u32> {
    global0 = vec4<bool>(true, true, true, true);
    var var_0 = func_4(_wgslsmith_clamp_vec4_u32(u_input.c, ~(~vec4<u32>(u_input.c.x, 9688u, u_input.d.x, u_input.d.x)), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.c, u_input.c), u_input.c) & (_wgslsmith_div_vec4_u32(u_input.c, u_input.c) >> (u_input.c % vec4<u32>(32u)))), Struct_3(-1i, func_2(2147483647i)), 1u, vec3<bool>(all(select(vec4<bool>(false, global0.x, global0.x, true), select(vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(false, global0.x, global0.x, false), global0.x), !vec4<bool>(global0.x, global0.x, false, global0.x))), !(!global0.x & any(vec4<bool>(global0.x, global0.x, false, global0.x))), false));
    var var_1 = ~u_input.c.x;
    var_1 = u_input.d.x;
    let var_2 = _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(u_input.b.x, 2147483647i), var_0.c.x, i32(-1i) * -6347i, 14487i), u_input.b) >> (u_input.c % vec4<u32>(32u)), ~vec4<i32>(countOneBits(func_2(var_0.d).c.x), var_0.c.x, -35485i & _wgslsmith_mod_i32(76234i, u_input.b.x), -1i));
    return vec2<u32>(firstTrailingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(30402u, 36535u, u_input.c.x), u_input.c.yxx)), abs(min(abs(1u), _wgslsmith_div_u32(9161u, u_input.a.x))) ^ 20915u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>((_wgslsmith_div_u32(u_input.a.x, ~1u) << ((1u | u_input.c.x) % 32u)) | 31712u, ~_wgslsmith_dot_vec2_u32(reverseBits(abs(vec2<u32>(u_input.a.x, 85108u))), func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(671f, 1019f, -1306f) * vec3<f32>(-990f, -106f, 469f)))), u_input.c.x);
    let var_1 = select(select(select(!(!vec4<bool>(true, false, true, global0.x)), !vec4<bool>(global0.x, false, global0.x, true), !vec4<bool>(false, global0.x, false, global0.x)), !vec4<bool>(any(global0.xx), false, true, !global0.x), global0.x), select(select(!(!vec4<bool>(global0.x, false, true, false)), !(!vec4<bool>(global0.x, global0.x, false, false)), !vec4<bool>(false, true, global0.x, global0.x)), !vec4<bool>(global0.x && global0.x, func_4(vec4<u32>(u_input.a.x, u_input.d.x, var_0.x, var_0.x), Struct_3(u_input.b.x, Struct_1(global0.x, true, vec3<i32>(u_input.b.x, 4317i, u_input.b.x), u_input.b.x)), 52867u, global0.wxz).b, func_2(0i).a, false), !(!(!vec4<bool>(global0.x, global0.x, true, true)))), vec4<bool>(!func_4(vec4<u32>(0u, var_0.x, 56927u, 0u) & u_input.c, Struct_3(-8315i, Struct_1(false, global0.x, vec3<i32>(u_input.b.x, 0i, u_input.b.x), u_input.b.x)), u_input.a.x, vec3<bool>(true, true, true)).b, true, true, true));
    var var_2 = 90582u;
    let var_3 = _wgslsmith_mod_vec2_u32(var_0.zx, u_input.a);
    var var_4 = Struct_3(_wgslsmith_sub_i32(u_input.b.x, -u_input.b.x), Struct_1(any(var_1), false, -abs(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), -42055i ^ _wgslsmith_sub_i32(u_input.b.x, _wgslsmith_mod_i32(-28489i, u_input.b.x))));
    let var_5 = Struct_3(min(2147483647i, ~abs(2147483647i)), var_4.b);
    let var_6 = var_5.b;
    var var_7 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-296f, 1497f)))), vec2<f32>(_wgslsmith_f_op_f32(-1000f * 949f), 851f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(454f, 196f) - vec2<f32>(1703f, 1242f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-525f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_7.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(923f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1053f, var_7.x))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_7.x + var_7.x) * _wgslsmith_f_op_f32(-var_7.x)), _wgslsmith_f_op_f32(var_7.x * -1443f))), -3336f, -(~(-var_5.a)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_3.x << (~4294967295u % 32u), max(reverseBits(u_input.d.x), var_3.x)), abs(abs(vec2<u32>(52989u, var_3.x)) | var_0.yx)));
}

