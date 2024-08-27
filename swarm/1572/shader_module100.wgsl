struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 12> = array<vec3<f32>, 12>(vec3<f32>(440f, 261f, -376f), vec3<f32>(1301f, 164f, -1023f), vec3<f32>(-1498f, 1359f, 570f), vec3<f32>(-762f, -241f, 765f), vec3<f32>(1110f, 1000f, -1000f), vec3<f32>(-615f, 1292f, 432f), vec3<f32>(654f, 1191f, 248f), vec3<f32>(729f, 132f, -1665f), vec3<f32>(778f, -821f, -801f), vec3<f32>(-153f, 281f, -252f), vec3<f32>(1035f, -631f, -654f), vec3<f32>(533f, 157f, 197f));

var<private> global1: Struct_2;

var<private> global2: vec2<f32> = vec2<f32>(-526f, -475f);

var<private> global3: bool = true;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<bool>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -940f));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(609f - var_0.a), _wgslsmith_f_op_f32(-var_0.a)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.c * -872f))))));
    var var_2 = ~vec3<u32>(15397u, 73351u, _wgslsmith_add_u32(abs(_wgslsmith_clamp_u32(0u, u_input.a, u_input.a)), 11144u));
    let var_3 = var_1;
    var var_4 = 41290u;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-181f)), _wgslsmith_f_op_f32(round(var_3.a))));
}

fn func_2(arg_0: vec4<u32>, arg_1: i32, arg_2: f32) -> Struct_2 {
    var var_0 = global1.a.x;
    var var_1 = -_wgslsmith_div_i32(2147483647i << (~_wgslsmith_sub_u32(65787u, arg_0.x) % 32u), u_input.b);
    global1 = Struct_2(vec3<bool>(_wgslsmith_mult_i32(~arg_1, -arg_1) < arg_1, global1.a.x, true), _wgslsmith_f_op_f32(select(1200f, _wgslsmith_f_op_f32(step(-183f, 561f)), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(u_input.c.xww, u_input.c.wyz), vec3<i32>(arg_1, arg_1, 37443i)) > _wgslsmith_mult_i32(1i, u_input.c.x << (54410u % 32u)))), _wgslsmith_f_op_f32(func_3(~arg_0, global1.a.yz)));
    let var_2 = vec4<u32>(firstLeadingBit(_wgslsmith_clamp_u32(30413u, u_input.a ^ ~4294967295u, arg_0.x & 1u)), _wgslsmith_dot_vec4_u32(arg_0, ~_wgslsmith_sub_vec4_u32(~arg_0, arg_0 >> (arg_0 % vec4<u32>(32u)))), min(u_input.a, countOneBits(select(u_input.a, u_input.a, global1.a.x))), abs(_wgslsmith_sub_u32(abs(_wgslsmith_sub_u32(4294967295u, 0u)), ~u_input.a)));
    var var_3 = select(vec4<bool>(true, all(select(select(vec4<bool>(false, true, global1.a.x, false), vec4<bool>(true, global1.a.x, false, global1.a.x), global1.a.x), select(vec4<bool>(false, global1.a.x, global1.a.x, global1.a.x), vec4<bool>(global1.a.x, false, false, global1.a.x), false), vec4<bool>(true, true, false, false))), !global1.a.x, !global1.a.x), select(!select(!vec4<bool>(false, global1.a.x, global1.a.x, true), vec4<bool>(false, global1.a.x, true, global1.a.x), vec4<bool>(global1.a.x, true, false, global1.a.x)), vec4<bool>(true, _wgslsmith_f_op_f32(arg_2 * arg_2) != global1.c, !all(global1.a), u_input.c.x < 50773i), vec4<bool>(any(select(vec4<bool>(true, false, global1.a.x, false), vec4<bool>(true, global1.a.x, true, global1.a.x), vec4<bool>(global1.a.x, global1.a.x, false, false))), !(!global1.a.x), true, global1.a.x)), !select(!vec4<bool>(false, global1.a.x, global1.a.x, false), vec4<bool>(-534f > global1.b, true, global1.a.x, global1.a.x), !select(vec4<bool>(false, global1.a.x, true, global1.a.x), vec4<bool>(true, false, false, false), vec4<bool>(global1.a.x, false, global1.a.x, true))));
    return Struct_2(global1.a, _wgslsmith_f_op_f32(-global1.b), -3651f);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(681f * 1f) + global1.c));
    global1 = func_2(abs(reverseBits(arg_0 >> (vec4<u32>(arg_0.x, 13772u, arg_0.x, 21505u) % vec4<u32>(32u)))), u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.x))) - arg_1.x));
    global0 = array<vec3<f32>, 12>();
    var var_1 = Struct_1(141f);
    var var_2 = select(((u_input.a & arg_0.x) << (_wgslsmith_mult_u32(arg_0.x, _wgslsmith_add_u32(u_input.a, u_input.a)) % 32u)) << (~_wgslsmith_mult_u32(38711u | arg_0.x, ~u_input.a) % 32u), arg_0.x, false);
    return Struct_2(!vec3<bool>(!(global1.a.x | false), true, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.b + 1346f), 1285f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -831f) + -1081f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(global2.x)))))) - arg_1.x));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2) -> vec4<bool> {
    let var_0 = u_input.c.x;
    let var_1 = countOneBits(3320i);
    return vec4<bool>(true, arg_0, global1.a.x, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, (_wgslsmith_add_i32(u_input.b, _wgslsmith_div_i32(u_input.c.x, -1i)) >= -2147483647i) || false, global1.a.x, true);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c + 234f)))));
    global0 = array<vec3<f32>, 12>();
    let var_2 = _wgslsmith_f_op_f32(-900f + _wgslsmith_f_op_f32(var_1.a - var_1.a));
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2.x, _wgslsmith_f_op_f32(-1043f * 626f)))) + vec2<f32>(var_1.a, -1000f));
    global0 = array<vec3<f32>, 12>();
    var_0 = select(vec4<bool>(var_0.x, false, true, false), func_4(true, var_1, func_1(~_wgslsmith_div_vec4_u32(vec4<u32>(104356u, u_input.a, 62518u, 0u), vec4<u32>(u_input.a, 4294967295u, u_input.a, 47708u)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -923f), _wgslsmith_f_op_f32(672f - var_2), _wgslsmith_f_op_f32(global2.x * global1.b)), select(select(vec3<bool>(global1.a.x, true, true), var_0.wzw, var_0.xxz), select(vec3<bool>(false, true, global1.a.x), vec3<bool>(true, true, false), true), !vec3<bool>(false, var_0.x, var_0.x)))), select(!(!(!vec4<bool>(true, false, global1.a.x, true))), vec4<bool>(!func_4(var_0.x, var_1, Struct_2(global1.a, -1446f, 162f)).x, any(func_4(global1.a.x, var_1, Struct_2(vec3<bool>(var_0.x, global1.a.x, true), 1394f, var_1.a))), global1.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(1u, 4294967295u)) != 30186u), !(!any(vec4<bool>(false, global1.a.x, global1.a.x, false)))));
    let var_3 = Struct_2(!(!select(!vec3<bool>(global1.a.x, global1.a.x, false), global1.a, select(global1.a, vec3<bool>(global1.a.x, var_0.x, global1.a.x), vec3<bool>(false, true, global1.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(862f))))), _wgslsmith_f_op_f32(f32(-1f) * -242f)), global1.c);
    let x = u_input.a;
    s_output = StorageBuffer(399f, firstTrailingBit(vec4<u32>(u_input.a, _wgslsmith_mult_u32(0u, 38634u), firstTrailingBit(61493u), abs(~u_input.a))));
}

