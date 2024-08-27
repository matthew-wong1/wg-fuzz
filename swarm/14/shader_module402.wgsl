struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: i32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 32>;

var<private> global1: array<vec2<bool>, 15>;

var<private> global2: Struct_1;

var<private> global3: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(-1i), Struct_2(i32(-2147483648)), Struct_2(-43259i), Struct_2(-1311i), Struct_2(i32(-2147483648)), Struct_2(56245i), Struct_2(1i), Struct_2(-37111i), Struct_2(6175i), Struct_2(33835i), Struct_2(0i), Struct_2(2147483647i), Struct_2(-1i), Struct_2(0i), Struct_2(-10608i), Struct_2(14043i), Struct_2(-1i), Struct_2(45625i), Struct_2(2147483647i), Struct_2(i32(-2147483648)), Struct_2(40879i), Struct_2(-1i), Struct_2(0i), Struct_2(46645i), Struct_2(-1i), Struct_2(-26337i), Struct_2(2147483647i), Struct_2(1i), Struct_2(34649i), Struct_2(2147483647i), Struct_2(-1i), Struct_2(21158i));

var<private> global4: Struct_1 = Struct_1(vec4<f32>(-1000f, 1003f, -2593f, 198f), vec3<i32>(i32(-2147483648), 26270i, 2147483647i), vec3<i32>(2147483647i, 2147483647i, 1i), vec4<i32>(0i, 1i, -1i, -1i), 2716i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    global2 = arg_1;
    let var_0 = arg_0;
    var var_1 = arg_0;
    global4 = arg_1;
    let var_2 = firstTrailingBit(2147483647i);
    return countOneBits(u_input.a.x);
}

fn func_3() -> vec3<bool> {
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.a.x, _wgslsmith_f_op_f32(global4.a.x - _wgslsmith_f_op_f32(sign(603f))), global2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1203f)) + -675f)), global2.a)), global2.c, -abs(vec3<i32>(-2147483647i, _wgslsmith_mult_i32(1i, u_input.b.x), _wgslsmith_div_i32(-31043i, u_input.c.x))), ~_wgslsmith_mult_vec4_i32(abs(~global4.d), global2.d), abs(48504i));
    global1 = array<vec2<bool>, 15>();
    global4 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a.x, 292f, global2.a.x, global4.a.x))))), ~vec3<i32>(global2.b.x, 2147483647i, -global2.e & 1i), vec3<i32>(countOneBits(2147483647i), _wgslsmith_sub_i32(abs(abs(2147483647i)), ~_wgslsmith_add_i32(global2.e, 18436i)), -min(global4.b.x, global2.e)), vec4<i32>(firstLeadingBit(global2.d.x), global4.d.x, _wgslsmith_dot_vec2_i32(-global4.b.xy, global2.d.ww) | 19801i, abs(_wgslsmith_add_i32(global4.c.x, -7806i))), 1i & (i32(-1i) * -_wgslsmith_dot_vec4_i32(global4.d, vec4<i32>(-1i, 17505i, -35589i, 0i))));
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-519f + _wgslsmith_f_op_f32(-global2.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1085f)))) * global4.a.x), 2339f, -353f), vec3<i32>(global2.e << (u_input.d.x % 32u), max(1i >> (u_input.a.x % 32u), global4.b.x), ~(-10191i)) | global4.b, global4.b, global4.d, -2147483647i);
    let var_1 = _wgslsmith_f_op_vec4_f32(global4.a * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.a.x, -1039f, -2246f, 1882f), vec4<f32>(global4.a.x, -365f, global2.a.x, 1000f), true)), vec4<f32>(_wgslsmith_div_f32(-201f, global4.a.x), _wgslsmith_f_op_f32(step(var_0.a.x, 592f)), _wgslsmith_f_op_f32(trunc(-1214f)), global2.a.x)))));
    return global0[_wgslsmith_index_u32(4294967295u, 32u)];
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: u32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(arg_1.a)), _wgslsmith_div_vec3_i32(vec3<i32>(global4.c.x ^ -1i, 59445i | arg_1.d.x, ~2147483647i), firstTrailingBit(vec3<i32>(arg_1.b.x, global2.c.x, 39196i))) | vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, u_input.c.x, 56355i), _wgslsmith_mod_vec3_i32(arg_1.b, arg_1.c)), select(global4.e, -27572i, true), _wgslsmith_clamp_i32(18546i, i32(-1i) * -2147483647i, i32(-1i) * -25068i)), ~u_input.e.yxx, reverseBits(select((arg_1.d << (vec4<u32>(arg_2, 87931u, 0u, 30948u) % vec4<u32>(32u))) & u_input.e, u_input.b, vec4<bool>(any(vec3<bool>(false, arg_0.x, arg_0.x)), !arg_0.x, arg_0.x, arg_0.x))), _wgslsmith_dot_vec3_i32(select(global4.c, _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(37005i, 32114i, -17467i), global4.b, vec3<i32>(arg_1.c.x, global4.d.x, arg_1.b.x)), global4.b & u_input.e.ywx), !func_3()), u_input.b.wzw));
    global2 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)) * global4.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -473f))))) - global4.a.x);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-281f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    let var_3 = arg_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + arg_1.a.x));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = global2.c.yz;
    global3 = array<Struct_2, 32>();
    var var_1 = select(~select(max(u_input.a, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 40393u, u_input.a.x, u_input.a.x), u_input.a)), u_input.d, !select(vec4<bool>(arg_0.x, false, true, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), true)), u_input.a, vec4<bool>(!arg_0.x, !(!all(vec4<bool>(true, arg_0.x, arg_0.x, false))), all(arg_0.yx), ~(~95530u) != ~u_input.a.x));
    var var_2 = arg_1;
    let var_3 = -15114i;
    return global3[_wgslsmith_index_u32(1u, 32u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4.a;
    let var_1 = func_4(select(select(!(!global0[_wgslsmith_index_u32(65929u, 32u)]), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), select(vec3<bool>(false, true, false), !global0[_wgslsmith_index_u32(u_input.a.x, 32u)], true)), vec3<bool>(true, any(vec4<bool>(false, false, false, true)), true), false), global3[_wgslsmith_index_u32(14790u >> (~func_1(global3[_wgslsmith_index_u32(31775u, 32u)], Struct_1(global2.a, global2.b, vec3<i32>(u_input.e.x, -1i, u_input.e.x), global2.d, u_input.b.x)) % 32u), 32u)], vec4<f32>(1564f, _wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))), -2367f)), _wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(select(u_input.d.x, u_input.d.x | u_input.a.x, true), 32u)], Struct_1(global4.a, _wgslsmith_clamp_vec3_i32(vec3<i32>(global2.e, 1i, -6377i), vec3<i32>(global2.c.x, -2147483647i, 2147483647i), vec3<i32>(-48704i, global2.c.x, global4.e)), firstLeadingBit(global4.d.wzy), u_input.b >> (vec4<u32>(u_input.a.x, u_input.d.x, 1u, u_input.d.x) % vec4<u32>(32u)), 4995i << (u_input.a.x % 32u)), min(firstTrailingBit(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(16086u, u_input.a.x), u_input.a.yx))))));
    var var_2 = false;
    var var_3 = Struct_2(u_input.b.x);
    global3 = array<Struct_2, 32>();
    var var_4 = ~vec4<i32>(1i, ~var_3.a, global4.c.x, 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(~_wgslsmith_add_i32(_wgslsmith_sub_i32(global2.d.x, -1i), global2.b.x), var_3.a, global4.b.x), max(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 4294967295u, u_input.d.x), vec4<u32>(1u, 37183u, u_input.d.x, 14706u))), ~(~41216u) | firstLeadingBit(u_input.d.x)), u_input.d.yx, _wgslsmith_mod_vec2_u32(~(~abs(u_input.a.xz)), countOneBits(_wgslsmith_mult_vec2_u32(u_input.a.wy, u_input.d.yx) ^ abs(u_input.a.zw))), ~min(u_input.a.zy, vec2<u32>(firstTrailingBit(u_input.a.x), ~u_input.d.x)));
}

