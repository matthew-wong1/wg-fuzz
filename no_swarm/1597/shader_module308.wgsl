struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_3,
    d: u32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<vec4<bool>, 25> = array<vec4<bool>, 25>(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true));

var<private> global2: array<Struct_1, 14>;

var<private> global3: vec3<bool> = vec3<bool>(false, false, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec2<u32> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1257f, -1156f, 1u == u_input.d))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-153f * -1000f)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(243f))));
    let var_2 = _wgslsmith_sub_u32(27420u, _wgslsmith_clamp_u32(countOneBits(4294967295u), u_input.b.x, _wgslsmith_clamp_u32(30347u, _wgslsmith_sub_u32(u_input.d, 24779u), 1u))) & u_input.d;
    var var_3 = Struct_4(arg_0, -_wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(5541i, u_input.c, u_input.c)), vec3<i32>(max(-2147483647i, 26361i), abs(-2147483647i), -32485i), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, u_input.c, arg_0.a.x), arg_0.a.zxx), arg_0.a.yyy)), Struct_3(var_1, _wgslsmith_f_op_f32(ceil(var_1)), ~vec2<i32>(1i, 1i), global2[_wgslsmith_index_u32(~0u, 14u)], _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_div_i32(u_input.c, -31476i), _wgslsmith_add_i32(u_input.c, 0i)), arg_0.a.zz)), 1u, u_input.b.yyw);
    var var_4 = global3.x;
    return _wgslsmith_clamp_vec2_u32(~vec2<u32>(firstTrailingBit(31957u), 38053u >> (var_3.d % 32u)), ~_wgslsmith_div_vec2_u32(select(vec2<u32>(0u, 80087u), vec2<u32>(23108u, u_input.a), vec2<bool>(global3.x, global3.x)), u_input.b.yy | u_input.b.wy), var_3.e.zx) >> (~countOneBits(~vec2<u32>(0u, 1u)) % vec2<u32>(32u));
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: Struct_3) -> bool {
    let var_0 = ~u_input.d;
    global1 = array<vec4<bool>, 25>();
    var var_1 = vec4<u32>(u_input.d, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(firstTrailingBit(func_3(Struct_2(vec4<i32>(global0.x, u_input.c, arg_1.x, -5174i)))), ~select(vec2<u32>(var_0, u_input.d), vec2<u32>(45167u, var_0), arg_2.xx)), ~(~vec2<u32>(38024u, 4294967295u))), _wgslsmith_div_u32(firstTrailingBit(u_input.d), (1u >> (~var_0 % 32u)) & 35083u), func_3(Struct_2((vec4<i32>(arg_1.x, arg_3.c.x, 1i, 39300i) & vec4<i32>(arg_1.x, arg_3.e.x, arg_3.e.x, 26923i)) & (vec4<i32>(-21949i, arg_3.c.x, u_input.c, 56147i) ^ vec4<i32>(9445i, -29511i, u_input.c, -34025i)))).x);
    let var_2 = ~u_input.b;
    var var_3 = arg_3;
    return arg_2.x;
}

fn func_1() -> vec2<i32> {
    global0 = select(select(_wgslsmith_mod_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, 0i, 13862i), vec3<i32>(0i, global0.x, -26584i)), countOneBits(vec3<i32>(global0.x, global0.x, global0.x))), ~(~firstLeadingBit(vec3<i32>(u_input.c, u_input.c, u_input.c))), select(vec3<bool>(global3.x, global3.x, func_2(695f, vec3<i32>(7723i, 0i, 1552i), global1[_wgslsmith_index_u32(u_input.d, 25u)], Struct_3(-100f, 328f, vec2<i32>(global0.x, global0.x), global2[_wgslsmith_index_u32(56858u, 14u)], vec2<i32>(-2147483647i, 2147483647i)))), vec3<bool>(!global3.x, true, true), global3.x & true)), abs(-abs(-vec3<i32>(0i, u_input.c, u_input.c))), !(!vec3<bool>(global3.x, any(global1[_wgslsmith_index_u32(38601u, 25u)]), false)));
    let var_0 = -2147483647i;
    let var_1 = u_input.b.xy;
    global1 = array<vec4<bool>, 25>();
    let var_2 = -global0.yx;
    return vec2<i32>(u_input.c >> (4294967295u % 32u), _wgslsmith_dot_vec4_i32(abs(countOneBits(vec4<i32>(-1i, u_input.c, 0i, -7174i))), countOneBits(firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0, u_input.c, -1i, var_0), vec4<i32>(var_0, -60926i, var_0, global0.x), vec4<i32>(0i, global0.x, global0.x, u_input.c))))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: bool) -> Struct_3 {
    var var_0 = arg_1;
    global3 = vec3<bool>(true, false, !arg_2 || func_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(458f, 965f) + 1085f), firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, global0.x, arg_0.x), vec3<i32>(var_0.b.x, arg_0.x, u_input.c))), select(select(vec4<bool>(false, false, false, arg_2), global1[_wgslsmith_index_u32(u_input.b.x, 25u)], global3.x), !vec4<bool>(global3.x, false, false, true), vec4<bool>(true, arg_2, false, false)), var_0.c));
    global2 = array<Struct_1, 14>();
    var var_1 = Struct_3(-352f, arg_1.c.b, select(~_wgslsmith_mod_vec2_i32(~arg_1.c.c, vec2<i32>(1i, 30659i)), arg_0, !vec2<bool>(global3.x, false)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(731f - var_0.c.d.a.x))), ~vec2<i32>(~1262i, _wgslsmith_mult_i32(global0.x, arg_1.a.a.x)) >> (~vec2<u32>(_wgslsmith_add_u32(0u, 14829u), 0u | u_input.a) % vec2<u32>(32u)));
    var var_2 = Struct_2(~(~var_0.a.a));
    return Struct_3(_wgslsmith_f_op_f32(round(arg_1.c.a)), 1125f, ~var_0.a.a.wz, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.d, 63600u) << (min(55757u, var_0.d) % 32u), 14u)], vec2<i32>(1i, _wgslsmith_dot_vec2_i32(var_0.a.a.xx, firstLeadingBit(-vec2<i32>(var_2.a.x, arg_1.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(), Struct_4(Struct_2(vec4<i32>(_wgslsmith_mod_i32(u_input.c, global0.x), u_input.c, ~global0.x, -2147483647i)), -select(vec3<i32>(global0.x, global0.x, u_input.c), _wgslsmith_add_vec3_i32(vec3<i32>(global0.x, -12943i, 39309i), vec3<i32>(-17357i, global0.x, global0.x)), !vec3<bool>(global3.x, true, global3.x)), Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1709f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-109f - -185f), 742f)), vec2<i32>(global0.x, -25726i), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, -279f)))), abs(-vec2<i32>(global0.x, u_input.c))), 24047u, u_input.b.zxy), !all(select(vec3<bool>(global3.x, true, true), select(vec3<bool>(global3.x, false, true), vec3<bool>(global3.x, global3.x, true), global3.x), vec3<bool>(true, true, true))));
    let var_1 = 0u;
    global0 = select(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(~var_0.c, _wgslsmith_add_vec2_i32(var_0.e, vec2<i32>(var_0.e.x, u_input.c))), ~(~1i)), countOneBits(1i), global0.x), vec3<i32>(-8647i, _wgslsmith_mod_i32(-(~u_input.c), u_input.c), reverseBits(var_0.e.x)), true);
    let var_2 = Struct_4(Struct_2(select(~vec4<i32>(global0.x, 2147483647i, 1i, 29576i), countOneBits(vec4<i32>(-1i, -26672i, -443i, 2147483647i)), true) | vec4<i32>(countOneBits(-47340i), u_input.c, ~(-4540i), -43998i)), abs(-_wgslsmith_div_vec3_i32(vec3<i32>(var_0.e.x, u_input.c, u_input.c), vec3<i32>(var_0.e.x, u_input.c, var_0.e.x))), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.a, var_0.b))) + _wgslsmith_f_op_f32(trunc(var_0.d.a.x))), var_0.d.a.x, -vec2<i32>(_wgslsmith_sub_i32(u_input.c, -2147483647i), _wgslsmith_dot_vec2_i32(global0.yy, vec2<i32>(-299i, -52085i))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, -1686f))), vec2<i32>(_wgslsmith_div_i32(-1i, i32(-1i) * -6715i), ~max(41945i, -47062i))), ~1u, u_input.b.zww);
    var var_3 = _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(countOneBits(~u_input.b ^ _wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(76437u, 59086u, var_2.d, u_input.d))), select(u_input.b >> (abs(u_input.b) % vec4<u32>(32u)), vec4<u32>(0u, ~var_1, 3257u, var_1), !global1[_wgslsmith_index_u32(var_2.d, 25u)])), ~var_2.e.x);
    let var_4 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.d.a.x, _wgslsmith_sub_u32(abs(max(~var_1, _wgslsmith_div_u32(63758u, 37420u))), 21145u), var_2.c.b);
}

