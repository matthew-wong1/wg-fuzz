struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec3<bool>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_3) -> vec4<i32> {
    var var_0 = vec3<i32>(arg_0.x, 39400i, firstTrailingBit(_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec3_i32(-vec3<i32>(0i, arg_1.a.x, 16493i), max(vec3<i32>(u_input.d.x, arg_0.x, u_input.d.x), vec3<i32>(0i, arg_1.a.x, arg_0.x))))));
    var var_1 = true;
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x - -1025f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(arg_1.b.x)))) + 677f)) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(arg_1.b.xw)))));
    var_1 = any(!(!select(!vec3<bool>(true, arg_2.a, true), !vec3<bool>(false, arg_2.a, false), select(true, false, arg_2.a))));
    var_0 = _wgslsmith_clamp_vec3_i32(firstLeadingBit(_wgslsmith_add_vec3_i32(-vec3<i32>(var_0.x, var_0.x, 0i), vec3<i32>(arg_0.x, arg_1.a.x, -2147483647i))), vec3<i32>(~28502i, ~u_input.c, arg_1.a.x), ~_wgslsmith_clamp_vec3_i32(-vec3<i32>(arg_1.a.x, -2147483647i, var_0.x), select(vec3<i32>(-2147483647i, u_input.d.x, u_input.d.x), arg_0.wwy, vec3<bool>(arg_2.a, arg_2.a, false)), arg_0.wzw)) << (_wgslsmith_mult_vec3_u32(~abs(arg_1.c.xzx), ~arg_1.c.wxx) % vec3<u32>(32u));
    return -u_input.d;
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = Struct_1(func_3(u_input.d, Struct_1(u_input.d, vec4<f32>(1276f, -1458f, arg_0, arg_0), vec4<u32>(u_input.a, 1u, 4294967295u, 4294967295u) | ~vec4<u32>(32979u, u_input.b.x, u_input.a, u_input.a)), Struct_3(false, ~(u_input.b.x | u_input.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 362f, 1432f, arg_0) - vec4<f32>(arg_0, global0.x, -1688f, global0.x))))), abs(vec4<u32>(max(27913u, u_input.a), u_input.b.x, reverseBits(4294967295u), u_input.b.x)) ^ vec4<u32>(u_input.b.x, u_input.b.x << (u_input.a % 32u), (u_input.a >> (13772u % 32u)) | 67954u, 0u));
    let var_1 = ~(i32(-1i) * -1i);
    global0 = var_0.b.wx;
    return Struct_2(var_0.a.x, var_0.c, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, var_0.a.x, firstTrailingBit(32382i), firstTrailingBit(-43035i)), -(~vec4<i32>(var_1, u_input.c, 2147483647i, -17002i))) & -2878i, vec3<bool>(all(vec3<bool>(any(vec2<bool>(true, true)), true, var_1 != u_input.c)), true, any(vec2<bool>(true, false))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-388f, arg_0, -1000f)) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(var_0.b.wzy * var_0.b.zwx)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(var_0.b.x, var_0.b.x)), var_0.b.x))));
}

fn func_1() -> vec4<f32> {
    var var_0 = abs(u_input.b) | ~firstTrailingBit(u_input.b);
    global0 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.x)) - _wgslsmith_f_op_f32(sign(-1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-847f * global0.x))), 1733f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.x, -1000f)))));
    var var_1 = func_2(276f);
    var var_2 = u_input.d;
    let var_3 = _wgslsmith_mod_u32(~max(~(30143u ^ u_input.a), 1u & (var_0.x | 0u)), _wgslsmith_add_u32(61763u, ~(~_wgslsmith_mod_u32(var_1.b.x, 4294967295u))));
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-183f + -421f))))), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2199f, _wgslsmith_f_op_f32(-global0.x))))), _wgslsmith_f_op_f32(trunc(var_1.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.d, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_1()), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-495f, -679f, global0.x, global0.x), vec4<f32>(-1334f, 271f, 419f, -2563f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, global0.x, -1622f, global0.x))), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -473f, -501f, -356f) + vec4<f32>(793f, global0.x, global0.x, global0.x))), func_2(global0.x).d.x | true)), vec4<bool>(true, true, true, true))), vec4<u32>(u_input.a, _wgslsmith_mult_u32(~43248u, firstTrailingBit(_wgslsmith_div_u32(1u, u_input.a))), ~(~65414u | firstTrailingBit(4294967295u)), 0u));
    var var_1 = Struct_4(max(func_3(vec4<i32>(min(var_0.a.x, u_input.d.x), var_0.a.x, -23700i, _wgslsmith_mod_i32(0i, var_0.a.x)), Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, 1418f, global0.x) * var_0.b), abs(var_0.c)), Struct_3(false, var_0.c.x)).x, u_input.d.x), Struct_3(all(vec2<bool>(true, true)), u_input.a));
    let var_2 = true;
    let var_3 = Struct_4(-abs(-25271i & -u_input.c), Struct_3(!any(func_2(-946f).d), _wgslsmith_div_u32(u_input.b.x, _wgslsmith_add_u32(max(4294967295u, 6921u), _wgslsmith_div_u32(var_1.b.b, var_0.c.x)))));
    var var_4 = ~_wgslsmith_mod_vec2_i32(var_0.a.ww, var_0.a.xx);
    let var_5 = _wgslsmith_f_op_vec3_f32(-var_0.b.zzx);
    var_4 = select(-vec2<i32>(var_3.a, 0i ^ u_input.d.x) >> (reverseBits(~var_0.c.yw) % vec2<u32>(32u)), (~_wgslsmith_mult_vec2_i32(vec2<i32>(var_4.x, 34363i), u_input.d.yw) << (u_input.b % vec2<u32>(32u))) >> ((reverseBits(~vec2<u32>(4294967295u, 82366u)) & (~vec2<u32>(4294967295u, 4294967295u) & ~vec2<u32>(var_0.c.x, var_1.b.b))) % vec2<u32>(32u)), select(func_2(_wgslsmith_f_op_f32(-var_5.x)).d.yy, vec2<bool>(var_3.b.a && false, true), !(~var_3.b.b >= _wgslsmith_sub_u32(46518u, 17314u))));
    var var_6 = Struct_2(var_0.a.x, var_0.c, select(_wgslsmith_sub_i32(_wgslsmith_add_i32(var_0.a.x, 1i), u_input.d.x), ~var_3.a ^ func_2(_wgslsmith_f_op_f32(-global0.x)).c, _wgslsmith_f_op_f32(var_5.x * _wgslsmith_f_op_f32(-global0.x)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1057f - global0.x) * _wgslsmith_f_op_f32(-var_0.b.x))), !select(!(!vec3<bool>(var_3.b.a, false, false)), func_2(1140f).d, !vec3<bool>(var_2, var_1.b.a, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_5 * var_5)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, vec2<u32>(~var_1.b.b, 69873u) | vec2<u32>(var_1.b.b, countOneBits(1u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_6.e.x, var_5.x)))), _wgslsmith_f_op_vec3_f32(var_5 - var_0.b.zww)));
}

