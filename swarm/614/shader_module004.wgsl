struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec4<bool>,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<bool>) -> vec4<bool> {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1557f, -189f, -707f, 721f), vec4<f32>(-1294f, 1000f, -737f, 679f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(846f, 1478f, -704f, 660f))))) * vec4<f32>(-898f, _wgslsmith_f_op_f32(f32(-1f) * -249f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(588f)) + _wgslsmith_f_op_f32(abs(-973f))), 791f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(525f)), _wgslsmith_f_op_f32(max(1000f, 1073f)), _wgslsmith_f_op_f32(f32(-1f) * -422f), -108f) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1013f, 263f, 581f, 673f) + vec4<f32>(961f, 661f, -1180f, -310f)))))));
    var var_1 = vec4<bool>(!arg_0.x, global0.a.x, !(!(-986f >= _wgslsmith_f_op_f32(-var_0.x))), arg_0.x && !arg_0.x);
    let var_2 = Struct_1(!select(select(select(vec4<bool>(false, false, true, arg_0.x), global0.c, global0.a.x), global0.a, true), select(select(arg_0, vec4<bool>(false, true, true, false), false), select(arg_0, global0.c, vec4<bool>(false, var_1.x, true, false)), !arg_0.x), select(select(vec4<bool>(true, false, false, global0.e), vec4<bool>(global0.b.x, true, arg_0.x, true), false), arg_0, !arg_0.x)), !(!(!select(vec2<bool>(true, var_1.x), vec2<bool>(arg_0.x, true), global0.c.wz))), vec4<bool>(_wgslsmith_f_op_f32(-900f * var_0.x) == 782f, arg_0.x, arg_0.x, !any(vec2<bool>(false, true)) & all(arg_0)), ~u_input.a.x << (_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, u_input.a.x, global0.d), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, 47479u, 4294967295u), vec3<u32>(47332u, 4294967295u, 1u))), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.d, 64343u, global0.d), vec3<u32>(global0.d, 20395u, u_input.a.x))) % 32u), arg_0.x);
    let var_3 = Struct_1(select(vec4<bool>((u_input.b.x != 1i) && true, var_1.x, false, var_2.b.x), vec4<bool>(true, all(!vec2<bool>(true, var_1.x)), any(vec3<bool>(var_2.c.x, false, true)), all(vec2<bool>(arg_1.x, arg_0.x))), any(!select(vec3<bool>(global0.a.x, var_1.x, false), arg_0.zxy, vec3<bool>(true, false, var_1.x)))), select(arg_1.zz, arg_0.yy, vec2<bool>(any(vec2<bool>(false, global0.e)), var_1.x)), !(!vec4<bool>(true, all(vec2<bool>(var_1.x, arg_1.x)), arg_1.x, !var_1.x)), u_input.d, !(!var_1.x));
    let var_4 = Struct_1(vec4<bool>(false, (1i >= u_input.c.x) & all(vec3<bool>(global0.e, global0.a.x, false)), select(true, ~43701u == _wgslsmith_div_u32(global0.d, var_2.d), false), false && all(vec4<bool>(true, global0.e, arg_1.x, false))), !vec2<bool>(true, _wgslsmith_clamp_u32(global0.d, var_3.d, 39749u) > _wgslsmith_sub_u32(50879u, var_3.d)), var_2.a, 4294967295u, !(any(vec2<bool>(var_3.c.x, global0.c.x)) & all(vec2<bool>(false, false))));
    return select(select(vec4<bool>(true && any(var_3.c.wz), (-1459i != u_input.c.x) | var_1.x, false, var_2.a.x), select(vec4<bool>(all(var_4.a.xxx), true, !arg_0.x, all(vec3<bool>(false, var_2.e, global0.b.x))), select(vec4<bool>(arg_1.x, false, true, var_1.x), select(var_4.a, vec4<bool>(true, true, true, true), false), false), vec4<bool>(false, true, false, arg_0.x)), all(var_1.wyy) | all(arg_0)), select(vec4<bool>(true, !(!var_4.a.x), true, any(!global0.a)), global0.c, true), true);
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> vec2<i32> {
    global0 = Struct_1(vec4<bool>(true, all(select(select(vec4<bool>(false, arg_1, arg_0.e, global0.b.x), vec4<bool>(false, arg_0.c.x, false, global0.a.x), false), !global0.a, !global0.a)), all(!select(arg_0.a, vec4<bool>(false, arg_1, global0.a.x, true), arg_1)), any(arg_0.c)), vec2<bool>(false, ~(~0u) >= (~4294967295u ^ u_input.d)), arg_0.a, 122745u, arg_1);
    let var_0 = u_input.b.x;
    global0 = Struct_1(!select(!select(global0.c, global0.a, false), !vec4<bool>(global0.e, arg_1, true, arg_0.b.x), func_3(!global0.c, global0.a.xyz)), !select(vec2<bool>(false, arg_0.a.x & false), select(vec2<bool>(arg_1, arg_0.e), global0.b, global0.b), !any(global0.a.zwz)), func_3(global0.c, vec3<bool>(true, any(vec4<bool>(true, arg_1, true, true)), !arg_0.a.x)), u_input.d, true);
    let var_1 = ~(-1i);
    let var_2 = all(global0.a);
    return -(~(~u_input.c.yx));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec2<i32>, arg_3: bool) -> u32 {
    let var_0 = ~vec3<u32>(~_wgslsmith_mult_u32(arg_0.d, _wgslsmith_clamp_u32(12685u, 4294967295u, u_input.d)), countOneBits(firstLeadingBit(global0.d) | 34944u), countOneBits(_wgslsmith_mod_u32(min(0u, global0.d), 7996u)));
    global0 = arg_0;
    global0 = Struct_1(vec4<bool>(global0.e && true, global0.a.x, arg_3, (_wgslsmith_mult_i32(u_input.b.x, u_input.b.x) != 1i) || ((u_input.a.x ^ arg_0.d) <= ~32212u)), vec2<bool>(false, !all(!global0.c.zx)), select(vec4<bool>(global0.e, arg_1, arg_3, all(vec3<bool>(arg_3, true, true))), vec4<bool>(!(arg_0.a.x | true), all(global0.a) && arg_3, true, true), func_3(select(arg_0.a, func_3(vec4<bool>(arg_1, arg_1, arg_0.b.x, global0.e), global0.a.xwx), !vec4<bool>(arg_1, arg_3, false, global0.a.x)), select(vec3<bool>(arg_3, true, arg_3), !vec3<bool>(false, arg_3, false), -65272i >= arg_2.x)).x), 8968u, true);
    global0 = Struct_1(select(vec4<bool>((arg_0.e & false) && func_3(vec4<bool>(true, true, false, false), vec3<bool>(true, arg_1, arg_1)).x, arg_0.a.x, arg_3, arg_0.e), !select(select(vec4<bool>(true, arg_0.c.x, false, true), vec4<bool>(true, true, global0.c.x, false), vec4<bool>(arg_3, true, arg_3, arg_1)), select(vec4<bool>(true, arg_0.c.x, arg_3, global0.a.x), vec4<bool>(true, true, arg_1, arg_1), true), arg_0.a), arg_0.c.x), vec2<bool>(true, true == arg_0.c.x), !(!vec4<bool>(arg_3 == false, arg_0.a.x, !global0.c.x, select(global0.b.x, global0.e, arg_0.c.x))), ~global0.d << ((1u << (1u % 32u)) % 32u), true);
    var var_1 = arg_0;
    return 83546u;
}

fn func_1(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_1) -> vec2<i32> {
    var var_0 = Struct_1(select(!arg_2.c, !select(select(vec4<bool>(true, true, arg_0.x, true), vec4<bool>(global0.e, false, arg_2.a.x, arg_2.e), arg_2.c), vec4<bool>(false, arg_0.x, arg_0.x, false), !global0.a), true), arg_0, !(!select(select(arg_2.c, vec4<bool>(arg_2.e, arg_0.x, true, true), arg_0.x), !vec4<bool>(false, global0.e, arg_2.e, arg_2.e), global0.a)), _wgslsmith_add_u32(countOneBits(abs(59417u) >> (firstTrailingBit(arg_2.d) % 32u)), arg_2.d | _wgslsmith_mod_u32(arg_2.d, ~global0.d)), !(!(arg_1 == arg_1)));
    var var_1 = countOneBits(24008u);
    let var_2 = Struct_1(vec4<bool>(true, true, global0.c.x, true), vec2<bool>(any(select(vec3<bool>(arg_2.b.x, arg_2.e, false), vec3<bool>(true, global0.a.x, true), false)), true), var_0.a, ((0u >> ((arg_2.d << (55954u % 32u)) % 32u)) | _wgslsmith_add_u32(0u, 22290u)) ^ func_4(arg_2, var_0.c.x, func_2(arg_2, false) >> (vec2<u32>(global0.d, 1u) % vec2<u32>(32u)), 1i > _wgslsmith_sub_i32(-2147483647i, u_input.b.x)), true);
    var var_3 = Struct_1(var_0.c, !select(vec2<bool>(true, true), arg_0, arg_0), vec4<bool>(var_0.e, !(any(var_0.a.xw) || global0.a.x), 985f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-539f))), !(_wgslsmith_f_op_f32(ceil(arg_1)) != arg_1)), _wgslsmith_mult_u32(27765u, ~(~var_0.d) & u_input.a.x), !global0.b.x);
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(-arg_1), arg_1, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1693f, -2218f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(arg_1, arg_1)))), global0.b.x))));
    return u_input.c.wy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(func_1(global0.a.xw, _wgslsmith_f_op_f32(max(-309f, 1937f)), Struct_1(vec4<bool>(global0.c.x, global0.e, global0.c.x, global0.b.x), global0.a.wy, vec4<bool>(global0.e, global0.c.x, true, global0.e), 0u, false)), -vec2<i32>(u_input.c.x, 0i)), firstTrailingBit(u_input.c.yy ^ firstTrailingBit(vec2<i32>(u_input.b.x, 1i)))), ~vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.c.xyw, vec3<i32>(u_input.c.x, u_input.c.x, u_input.b.x)), u_input.b << (vec3<u32>(16866u, 4294967295u, global0.d) % vec3<u32>(32u))), u_input.c.x), true);
    var var_1 = abs(reverseBits(~vec2<u32>(global0.d & 4164u, 1u)));
    var var_2 = firstLeadingBit(vec3<u32>(32001u, var_1.x, reverseBits(~var_1.x)));
    var_0 = -u_input.b.xz;
    var var_3 = Struct_1(select(!vec4<bool>(global0.c.x, u_input.d > global0.d, true, global0.c.x), select(select(global0.a, global0.c, global0.c), select(vec4<bool>(false, global0.a.x, global0.b.x, global0.c.x), global0.c, vec4<bool>(global0.b.x, global0.c.x, true, global0.a.x)), vec4<bool>(all(global0.a.ww), select(false, global0.b.x, false), global0.b.x, var_0.x < var_0.x)), vec4<bool>(true, false, (-1i == var_0.x) | true, global0.b.x)), global0.a.wx, global0.a, 4294967295u, select(global0.a.x, true, global0.a.x));
    let var_4 = -1449f;
    var_2 = abs(~min(vec3<u32>(global0.d, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 57444u, global0.d, 4294967295u), vec4<u32>(77474u, var_1.x, 1u, 1u)), firstTrailingBit(var_1.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(110910u, 43399u, var_1.x), vec3<u32>(20390u, 868u, global0.d))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(-reverseBits(vec4<i32>(-11499i, 47327i, u_input.b.x, var_0.x)), abs(u_input.c)), u_input.b);
}

