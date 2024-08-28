struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec3<bool>,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: vec2<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14>;

var<private> global1: vec4<bool>;

var<private> global2: vec4<u32>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<u32>) -> bool {
    global0 = array<Struct_2, 14>();
    let var_0 = 998f;
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-385f - 942f), _wgslsmith_f_op_f32(round(var_0)), -243f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1028f, -692f, var_0), vec3<f32>(var_0, var_0, 644f))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0, var_0, var_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 1929f, var_0)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 128f, 488f) * vec3<f32>(-158f, var_0, var_0)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 659f, 453f)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0, var_0, var_0))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, _wgslsmith_f_op_f32(min(var_0, -1338f)), var_0))));
    global1 = select(select(!vec4<bool>(true, all(vec3<bool>(global1.x, false, false)), any(vec3<bool>(global1.x, true, global1.x)), arg_0.x < arg_0.x), select(select(select(vec4<bool>(false, global1.x, true, false), vec4<bool>(true, global1.x, global1.x, global1.x), false), vec4<bool>(global1.x, true, true, global1.x), true), !select(vec4<bool>(global1.x, global1.x, true, global1.x), vec4<bool>(true, true, global1.x, global1.x), vec4<bool>(false, true, false, global1.x)), vec4<bool>(global1.x, false, true, true)), global1.x), vec4<bool>(false, global1.x, global1.x || global1.x, true), vec4<bool>(any(!global1.xzy), global1.x, all(select(vec4<bool>(false, true, global1.x, global1.x), vec4<bool>(false, global1.x, global1.x, global1.x), true)), true));
    global1 = !(!vec4<bool>(_wgslsmith_clamp_i32(62604i, u_input.d.x, -1i) <= 35751i, true, !(u_input.d.x == u_input.d.x), global1.x));
    return all(select(!global1.wzy, global1.xyx, !vec3<bool>(global1.x, global1.x, true))) && global1.x;
}

fn func_2() -> f32 {
    let var_0 = Struct_2(!(!func_3(vec4<u32>(2121u, global2.x, 11476u, 4294967295u) | vec4<u32>(79020u, global2.x, global2.x, 12239u))), -1000f, select(vec3<bool>(u_input.d.x != u_input.c, !global1.x, false), vec3<bool>(global1.x, true, global1.x), vec3<bool>(true, all(global1.xy), global1.x)), Struct_1(abs(select(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.c, u_input.d.x, 1i), vec4<i32>(u_input.a.x, -1i, -1i, -64492i)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.d.x, u_input.d.x), vec4<i32>(-2147483647i, 30906i, 1i, u_input.d.x)), global1.x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1250f, 956f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(333f - -1192f) - _wgslsmith_f_op_f32(-1836f - 440f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1053f), _wgslsmith_div_f32(-220f, -193f)))), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(abs(vec3<u32>(0u, 4294967295u, global2.x) << (vec3<u32>(global2.x, 0u, 1u) % vec3<u32>(32u))), vec3<u32>(1u, 0u, 63121u ^ global2.x)), global2.ywz));
    global2 = _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(max(~vec4<u32>(var_0.e.x, 41685u, global2.x, 35037u) & vec4<u32>(4438u, global2.x, global2.x, global2.x), vec4<u32>(_wgslsmith_add_u32(var_0.e.x, 4294967295u), var_0.e.x, ~var_0.e.x, max(4294967295u, 1u))), vec4<u32>(global2.x, var_0.e.x << (global2.x % 32u), 9041u << (var_0.e.x % 32u), var_0.e.x) & ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.e.x, global2.x, global2.x, 40071u), vec4<u32>(var_0.e.x, 43494u, var_0.e.x, global2.x))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(reverseBits(global2.x), _wgslsmith_sub_u32(27411u, global2.x), ~0u, ~global2.x), vec4<u32>(global2.x, firstLeadingBit(26418u), ~1458u, ~0u)));
    global0 = array<Struct_2, 14>();
    global0 = array<Struct_2, 14>();
    global2 = _wgslsmith_div_vec4_u32(~_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, global2.x, var_0.e.x), vec4<u32>(var_0.e.x, 0u, 45503u, 1u)), vec4<u32>(4294967295u, 44281u, 0u, global2.x)), vec4<u32>(var_0.e.x, select(_wgslsmith_add_u32(global2.x, 46901u), global2.x, all(vec4<bool>(var_0.a, true, false, false))), 1u << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.e.x, 20000u, global2.x, 4294967295u), vec4<u32>(0u, global2.x, 1u, global2.x)) % 32u), _wgslsmith_add_u32(global2.x, ~0u))) | ~firstTrailingBit(~vec4<u32>(16116u, global2.x, 0u, global2.x) ^ _wgslsmith_add_vec4_u32(vec4<u32>(var_0.e.x, 10409u, 4294967295u, global2.x), vec4<u32>(0u, 0u, 1u, global2.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b))) + _wgslsmith_f_op_f32(step(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.b.x) + _wgslsmith_f_op_f32(step(var_0.d.b.x, var_0.b)))))));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2) -> vec4<u32> {
    var var_0 = _wgslsmith_add_u32(6456u, global2.x);
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1333f), _wgslsmith_f_op_f32(step(-514f, -923f))))))), _wgslsmith_f_op_f32(func_2())));
    var var_2 = !(!select(vec4<bool>(global1.x | false, global1.x, true || arg_1.a, true), vec4<bool>(!global1.x, any(arg_1.c), func_3(vec4<u32>(arg_0.x, 0u, 30141u, global2.x)), global1.x), select(vec4<bool>(true, global1.x, arg_1.a, arg_1.a), vec4<bool>(global1.x, true, arg_1.a, arg_1.c.x), arg_1.a)));
    global1 = vec4<bool>(false, global1.x, -1000f != arg_1.d.b.x, !(8151u == _wgslsmith_mult_u32(0u, arg_0.x >> (4294967295u % 32u))));
    var var_3 = arg_1.d;
    return vec4<u32>(_wgslsmith_dot_vec2_u32(arg_0, ~global2.yx), arg_0.x, 4294967295u, arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    global2 = _wgslsmith_mult_vec4_u32(abs(min(func_1(vec2<u32>(0u, 12836u), Struct_2(false, 326f, vec3<bool>(false, global1.x, false), Struct_1(vec4<i32>(u_input.d.x, u_input.c, -46835i, u_input.c), vec3<f32>(-1112f, -1000f, 1058f)), vec3<u32>(global2.x, 17794u, 7999u))) | ~vec4<u32>(77230u, 39527u, 21911u, 7028u), reverseBits(vec4<u32>(1u, global2.x, global2.x, global2.x)) ^ select(vec4<u32>(global2.x, 1u, global2.x, 0u), vec4<u32>(global2.x, global2.x, global2.x, 67506u), vec4<bool>(global1.x, global1.x, global1.x, true)))), vec4<u32>(_wgslsmith_dot_vec3_u32(global2.xxw, global2.xzw), ~global2.x, 1u, global2.x));
    global2 = vec4<u32>(countOneBits(_wgslsmith_sub_u32(global2.x, reverseBits(4294967295u))), global2.x, ~_wgslsmith_div_u32(global2.x, global2.x), _wgslsmith_add_u32(~global2.x ^ ~global2.x, global2.x)) >> (reverseBits(_wgslsmith_mod_vec4_u32(min(vec4<u32>(global2.x, 22458u, global2.x, 4294967295u), ~vec4<u32>(4294967295u, 52920u, global2.x, 0u)), ~vec4<u32>(global2.x, global2.x, 17099u, 4205u))) % vec4<u32>(32u));
    var var_1 = countOneBits(global2.x);
    var_1 = _wgslsmith_mod_u32(firstTrailingBit(global2.x), _wgslsmith_div_u32(global2.x, _wgslsmith_div_u32(firstLeadingBit(abs(10686u)), global2.x)));
    let var_2 = vec4<u32>(4294967295u, _wgslsmith_mod_u32(firstLeadingBit(global2.x), ~1u) | 4294967295u, global2.x, firstLeadingBit(~(~global2.x))) | _wgslsmith_div_vec4_u32(func_1(countOneBits(vec2<u32>(global2.x, global2.x)), Struct_2(global1.x, -983f, global1.xzy, Struct_1(vec4<i32>(2147483647i, u_input.b, u_input.c, u_input.d.x), vec3<f32>(-2019f, -525f, -1101f)), global2.ywz)) | vec4<u32>(1u, firstTrailingBit(global2.x), ~global2.x, global2.x), _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(global2.x, 0u, global2.x, 5302u)), _wgslsmith_div_vec4_u32(~vec4<u32>(global2.x, global2.x, global2.x, global2.x), min(vec4<u32>(global2.x, 4294967295u, global2.x, global2.x), vec4<u32>(global2.x, global2.x, global2.x, global2.x)))));
    let var_3 = global1.zz;
    global0 = array<Struct_2, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1896f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(134f)), _wgslsmith_div_f32(151f, 836f))))), u_input.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1024f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(125f - 1027f), 1623f))))), firstLeadingBit(select(vec2<i32>(~u_input.d.x, 1600i), -vec2<i32>(u_input.d.x, 374i), select(global1.ww, select(vec2<bool>(false, global1.x), global1.ww, false), select(vec2<bool>(true, false), global1.yz, vec2<bool>(false, var_3.x))))), vec4<u32>(global2.x, func_1(vec2<u32>(var_2.x, global2.x) << (~vec2<u32>(global2.x, global2.x) % vec2<u32>(32u)), global0[_wgslsmith_index_u32(reverseBits(global2.x), 14u)]).x, _wgslsmith_div_u32(~firstLeadingBit(0u), 4294967295u), min(1u, ~var_2.x & global2.x)));
}

