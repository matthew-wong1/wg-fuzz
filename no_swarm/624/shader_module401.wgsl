struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec4<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec2<bool>,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18> = array<f32, 18>(-734f, 1000f, -420f, 606f, 740f, 110f, -942f, -347f, 1296f, -1252f, 940f, 268f, -1443f, -1849f, -685f, 145f, -452f, -1963f);

var<private> global1: Struct_1 = Struct_1(-2148f, vec4<bool>(false, false, false, false), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), -63945i), vec3<bool>(false, false, false));

var<private> global2: Struct_2 = Struct_2(-1234f, -1071f, vec2<bool>(true, true), vec3<i32>(i32(-2147483648), 0i, 13269i), vec4<i32>(i32(-2147483648), i32(-2147483648), -851i, -6440i));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec3<bool> {
    var var_0 = -573f;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1615f * global0[_wgslsmith_index_u32(reverseBits(u_input.b.x), 18u)]), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 18u)] - 1858f)), _wgslsmith_f_op_f32(floor(global1.a)), u_input.b.x <= 1u)))), global2.b, global1.d.zy, _wgslsmith_clamp_vec3_i32(~(~(~global2.e.zyx)), vec3<i32>(abs(_wgslsmith_sub_i32(0i, 4232i)), 1i & firstLeadingBit(global1.c.x), ~(-1658i)), u_input.a), global2.e);
    var var_2 = vec3<i32>(~(_wgslsmith_dot_vec2_i32(select(var_1.d.xz, vec2<i32>(-38585i, 45471i), global1.d.x), abs(vec2<i32>(global2.e.x, 14566i))) << (~(1u ^ u_input.b.x) % 32u)), min(reverseBits(u_input.a.x), 1i), 1i);
    global2 = Struct_2(251f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1054f)) * _wgslsmith_f_op_f32(var_1.a + 536f)), global1.a), global2.c, _wgslsmith_sub_vec3_i32(countOneBits(var_1.d | _wgslsmith_mult_vec3_i32(vec3<i32>(0i, -2147483647i, 1i), global1.c.xwx)), -(vec3<i32>(-1i) * -global2.e.zzy)), vec4<i32>(~var_1.e.x, 1i, u_input.a.x, -2147483647i));
    var_2 = _wgslsmith_add_vec3_i32(firstLeadingBit(reverseBits(vec3<i32>(min(0i, var_2.x), u_input.a.x, -var_1.e.x))), global1.c.ywz);
    return !select(global1.b.xxz, !vec3<bool>(false, global1.b.x && global1.b.x, false), select(select(vec3<bool>(false, true, global2.c.x), global1.b.zwy, global1.d.x), global1.b.wzy, vec3<bool>(global2.c.x, global2.c.x, true && global1.b.x)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<f32>) -> vec3<u32> {
    global1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global2.b, -193f)))))), global1.b, abs((abs(vec4<i32>(global2.e.x, 61374i, -19096i, -2147483647i)) ^ firstTrailingBit(global1.c)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(18522u, u_input.b.x, u_input.b.x, u_input.b.x), ~u_input.b, vec4<u32>(u_input.b.x, u_input.b.x, 24840u, 27469u) >> (vec4<u32>(49378u, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u))) % vec4<u32>(32u))), func_3());
    var var_0 = 245f;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(756f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b))) + global2.b));
    var var_2 = Struct_1(-602f, global1.b, vec4<i32>(-(abs(global1.c.x) >> (u_input.b.x % 32u)), global2.d.x, -1i, u_input.a.x | -(i32(-1i) * -20365i)), !global1.d);
    var var_3 = var_2.d;
    return ~u_input.b.yyx;
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    let var_0 = ~(u_input.b.yxy | _wgslsmith_sub_vec3_u32(select(vec3<u32>(104897u, 60971u, 16447u), func_2(vec4<f32>(-1569f, 241f, global2.a, 1285f), vec3<f32>(arg_0.a, global2.b, -1402f)), func_3()), reverseBits(select(vec3<u32>(35202u, u_input.b.x, u_input.b.x), u_input.b.wxw, arg_0.b.xyz))));
    global2 = Struct_2(global0[_wgslsmith_index_u32(159187u, 18u)], 970f, global1.d.xx, global1.c.xyz, vec4<i32>(abs(~(-2147483647i)), u_input.a.x, 30276i, _wgslsmith_sub_i32(abs(28768i) ^ ~global1.c.x, global2.d.x)));
    var var_1 = all(select(select(vec4<bool>(var_0.x < var_0.x, any(vec3<bool>(global2.c.x, global2.c.x, global2.c.x)), !arg_0.b.x, var_0.x != 9918u), select(vec4<bool>(global1.d.x, global2.c.x, global2.c.x, global2.c.x), select(vec4<bool>(global1.b.x, global1.d.x, false, true), global1.b, vec4<bool>(true, true, false, false)), any(arg_0.d.yx)), vec4<bool>(!global1.b.x, global1.b.x, true, true)), global1.b, global2.c.x));
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(select(_wgslsmith_add_i32(_wgslsmith_div_i32(-29397i, arg_0.c.x), global2.d.x), min(arg_0.c.x, -2147483647i) << (~var_0.x % 32u), global2.b <= arg_0.a), 1i), arg_0.c.wx);
    global1 = Struct_1(global2.a, !(!(!vec4<bool>(global1.b.x, true, false, true))), max(global1.c, vec4<i32>(-1i) * -vec4<i32>(global2.e.x, 6219i, global1.c.x, global1.c.x)), global1.b.yxz);
    return Struct_2(1f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.b))), global2.c, vec3<i32>(_wgslsmith_div_i32(-1i, abs(-58140i)) << (_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), 4294967295u) % 32u), _wgslsmith_mod_i32(global1.c.x, ~(global1.c.x << (32853u % 32u))), 0i), abs(_wgslsmith_clamp_vec4_i32(~firstTrailingBit(vec4<i32>(-2147483647i, 34799i, u_input.a.x, u_input.a.x)), -vec4<i32>(arg_0.c.x, 57317i, 1i, global1.c.x), vec4<i32>(-arg_0.c.x, 6706i, _wgslsmith_mod_i32(u_input.a.x, 0i), i32(-1i) * -1i))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(u_input.b.x, 18u)])))) * _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(23181u, 18u)]))), global1.b, global1.c, select(select(!vec3<bool>(global2.c.x, true, global2.c.x), vec3<bool>(true, true, true), global2.c.x), !select(vec3<bool>(true, true, global1.b.x), vec3<bool>(global1.d.x, global1.d.x, true), global2.c.x), global1.d)));
    global2 = Struct_2(1495f, _wgslsmith_f_op_f32(select(-904f, _wgslsmith_f_op_f32(trunc(1000f)), ~(~u_input.b.x) <= ~(u_input.b.x & 23537u))), global1.b.yx, u_input.a, -(~vec4<i32>(~u_input.a.x, reverseBits(global2.e.x), i32(-1i) * -1i, _wgslsmith_div_i32(-29483i, global2.e.x))));
    global1 = Struct_1(_wgslsmith_f_op_f32(sign(-227f)), !select(global1.b, !(!global1.b), any(global1.b)), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(-global2.d.x, max(global2.d.x, u_input.a.x)), -63798i), -19796i, _wgslsmith_mod_i32(24594i, min(-148i, -2147483647i)) ^ select(_wgslsmith_clamp_i32(-41953i, global2.d.x, u_input.a.x), -17092i, -2147483647i >= global2.d.x), ~abs(firstLeadingBit(global1.c.x))), global1.d);
    let var_0 = u_input.b.x;
    global0 = array<f32, 18>();
    var var_1 = global2.c;
    let var_2 = -global2.e;
    var_1 = global1.d.yx;
    let var_3 = Struct_2(-1109f, 461f, !global1.b.wy, _wgslsmith_clamp_vec3_i32(-vec3<i32>(_wgslsmith_mult_i32(global2.d.x, global1.c.x), abs(-2794i), _wgslsmith_dot_vec3_i32(var_2.xxw, global1.c.xwz)), vec3<i32>(~global1.c.x, -global2.e.x, global2.d.x), ~vec3<i32>(_wgslsmith_mod_i32(0i, -12751i), ~1i, global2.e.x)), vec4<i32>(-_wgslsmith_sub_i32(~1i, -3596i), -(~(~(-24848i))), ~firstLeadingBit(-7422i), global2.e.x));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0, 18u)])) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(158f, 846f) * _wgslsmith_f_op_f32(floor(-722f))))));
}

