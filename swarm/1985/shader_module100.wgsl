struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: u32,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<u32, 10>;

var<private> global2: vec4<u32>;

var<private> global3: array<i32, 24>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    var var_0 = Struct_3(select(vec4<bool>(true, arg_0.x, true, false), vec4<bool>(arg_0.x, (2147483647i != global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 10u)], 24u)]) & arg_0.x, any(select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(true, true, false))), !(arg_0.x | arg_0.x)), !vec4<bool>(true, false, 11747u < global1[_wgslsmith_index_u32(0u, 10u)], !arg_0.x)), Struct_1(min(~vec3<i32>(-2147483647i, u_input.a, -1i) | _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.b.x, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7473u, 10u)], 24u)]), vec3<i32>(global3[_wgslsmith_index_u32(global2.x, 24u)], 2147483647i, u_input.b.x)), vec3<i32>(_wgslsmith_mult_i32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.x, 10u)], 24u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 10u)], 24u)]), _wgslsmith_dot_vec4_i32(vec4<i32>(38274i, global3[_wgslsmith_index_u32(global2.x, 24u)], u_input.b.x, 2147483647i), vec4<i32>(20098i, u_input.b.x, u_input.a, global3[_wgslsmith_index_u32(4294967295u, 24u)])), 1i)), vec4<f32>(1f, 1f, 1f, 1f), countOneBits(~max(global2.x, global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-445f)) - _wgslsmith_f_op_f32(floor(-1310f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(675f - -1780f)), 1000f, _wgslsmith_f_op_f32(ceil(-822f)))), vec2<bool>(any(!select(vec3<bool>(false, true, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, true), false)), false), Struct_1(vec3<i32>(countOneBits(-2147483647i), u_input.b.x, 30780i), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1607f, -322f, -243f, -1042f))))), ~global1[_wgslsmith_index_u32(~4294967295u, 10u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(-829f, -532f) + 762f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-465f, 1252f, -894f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(119f, -331f, 217f) - vec3<f32>(-2347f, 1984f, 421f))))));
    global2 = vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(global2.x, global1[_wgslsmith_index_u32(1u, 10u)], var_0.b.c, global2.x), vec4<u32>(0u, var_0.b.c, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.b.c, 10u)], 10u)], var_0.d.c)), min(~vec4<u32>(4294967295u, 1u, global2.x, global1[_wgslsmith_index_u32(0u, 10u)]), firstTrailingBit(vec4<u32>(13416u, global2.x, global1[_wgslsmith_index_u32(6809u, 10u)], global1[_wgslsmith_index_u32(global2.x, 10u)])))), 1u), ~1u, ~(~(54241u ^ _wgslsmith_clamp_u32(59990u, global2.x, global1[_wgslsmith_index_u32(8272u, 10u)]))), ~_wgslsmith_add_u32(global1[_wgslsmith_index_u32(~var_0.d.c, 10u)], 1u));
    let var_1 = false;
    global1 = array<u32, 10>();
    let var_2 = ~u_input.b;
    return -519f;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec2<u32>) -> vec2<i32> {
    let var_0 = Struct_2(Struct_1(min(max(arg_0.a >> (vec3<u32>(arg_3.x, arg_1.b.c, global2.x) % vec3<u32>(32u)), select(vec3<i32>(-77510i, arg_0.a.x, -1i), vec3<i32>(arg_1.b.a.x, arg_0.a.x, 20855i), vec3<bool>(arg_1.c.x, arg_2.b, arg_1.a.x))), ~arg_2.a.a), arg_1.d.b, _wgslsmith_mod_u32(arg_2.a.c, reverseBits(~arg_3.x)), _wgslsmith_div_f32(-2094f, -2257f), vec3<f32>(_wgslsmith_f_op_f32(round(arg_2.a.e.x)), 997f, -2841f)), true);
    global0 = false;
    global0 = -1704f > _wgslsmith_f_op_f32(min(1708f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1764f, arg_2.a.b.x))))));
    global1 = array<u32, 10>();
    let var_1 = vec2<i32>(0i, _wgslsmith_mod_i32(2147483647i, -4303i));
    return select(-_wgslsmith_sub_vec2_i32(~arg_1.d.a.yx, arg_2.a.a.yy), -max(~vec2<i32>(-23720i, arg_0.a.x), -(var_1 << (global2.zz % vec2<u32>(32u)))), select(select(!vec2<bool>(arg_1.c.x, false), select(!vec2<bool>(arg_1.a.x, arg_1.a.x), arg_1.c, var_0.b), vec2<bool>(false | arg_2.b, var_0.b)), select(arg_1.a.wy, vec2<bool>(var_0.b | arg_2.b, false), select(true, true, true)), _wgslsmith_mult_u32(arg_3.x, ~45219u) < _wgslsmith_clamp_u32(1u, _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_3.x, 10u)], 10u)], 40123u, 74989u), _wgslsmith_add_u32(2690u, global1[_wgslsmith_index_u32(arg_0.c, 10u)]))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32) -> vec4<bool> {
    var var_0 = Struct_2(Struct_1(vec3<i32>(2147483647i, ~max(-36253i, -43577i), _wgslsmith_sub_i32(-8902i, 0i)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-arg_0.a.b))), _wgslsmith_mult_u32(4294967295u, arg_2) & ~abs(arg_1.c), 276f, _wgslsmith_f_op_vec3_f32(arg_1.e + arg_1.e)), arg_0.b);
    global3 = array<i32, 24>();
    let var_1 = u_input.b;
    let var_2 = func_4(var_0.a, Struct_3(select(vec4<bool>(true, var_0.b, var_0.b, var_0.b), !vec4<bool>(false, arg_0.b, var_0.b, arg_0.b), _wgslsmith_f_op_f32(step(var_0.a.e.x, arg_1.e.x)) == _wgslsmith_f_op_f32(func_3(vec2<bool>(true, arg_0.b)))), arg_1, vec2<bool>(arg_0.b, var_0.b), var_0.a), Struct_2(arg_1, (arg_0.b && true) && true), global2.wz);
    global2 = _wgslsmith_sub_vec4_u32(vec4<u32>(~(~(~global2.x)), ~4294967295u, global2.x, var_0.a.c), ~(~abs(~vec4<u32>(16832u, global1[_wgslsmith_index_u32(32143u, 10u)], 0u, 1u))));
    return vec4<bool>(select(true, false, select(true, true, (-24613i >> (arg_1.c % 32u)) != -global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 10u)], 24u)])), any(!(!(!vec4<bool>(false, arg_0.b, true, true)))), false & any(select(select(vec4<bool>(var_0.b, arg_0.b, false, var_0.b), vec4<bool>(false, arg_0.b, var_0.b, var_0.b), vec4<bool>(var_0.b, arg_0.b, false, arg_0.b)), vec4<bool>(var_0.b, var_0.b, true, true), !vec4<bool>(false, var_0.b, arg_0.b, var_0.b))), u_input.a <= -func_4(Struct_1(vec3<i32>(u_input.a, -19562i, 2147483647i), arg_1.b, global2.x, arg_0.a.e.x, var_0.a.b.zxw), Struct_3(vec4<bool>(false, false, true, arg_0.b), Struct_1(arg_1.a, vec4<f32>(-1585f, 977f, 131f, 1000f), 0u, -1048f, vec3<f32>(-480f, -208f, -850f)), vec2<bool>(arg_0.b, arg_0.b), arg_1), Struct_2(var_0.a, false), global2.wy >> (vec2<u32>(4294967295u, 27986u) % vec2<u32>(32u))).x);
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: u32) -> Struct_1 {
    global3 = array<i32, 24>();
    let var_0 = Struct_3(!(!(!func_2(Struct_2(arg_1, false), Struct_1(vec3<i32>(global3[_wgslsmith_index_u32(arg_0, 24u)], global3[_wgslsmith_index_u32(26306u, 24u)], 22326i), vec4<f32>(arg_1.d, 658f, arg_1.e.x, -588f), arg_1.c, -379f, vec3<f32>(arg_1.b.x, -407f, -592f)), arg_3))), Struct_1(arg_1.a, _wgslsmith_f_op_vec4_f32(exp2(arg_1.b)), ~arg_1.c, arg_1.d, vec3<f32>(_wgslsmith_f_op_f32(func_3(select(vec2<bool>(arg_2.x, false), arg_2, vec2<bool>(false, true)))), _wgslsmith_f_op_f32(floor(672f)), 552f)), !vec2<bool>(select(false, true, false), !arg_2.x), arg_1);
    let var_1 = arg_2;
    var var_2 = Struct_2(Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.a.x, var_0.d.a.x, ~arg_1.a.x), vec3<i32>(-73265i, 14520i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a, global3[_wgslsmith_index_u32(26815u, 24u)], 26585i), vec4<i32>(var_0.b.a.x, u_input.a, var_0.d.a.x, 2147483647i))), ~vec3<i32>(19451i, u_input.a, -54212i) << (select(global2.yyw, global2.zxw, vec3<bool>(true, arg_2.x, true)) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(148f, arg_1.b.x, 988f, var_0.d.e.x), var_0.b.b)))) * _wgslsmith_div_vec4_f32(arg_1.b, var_0.d.b)), 10349u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.e.x)))), vec3<f32>(-905f, 1118f, -100f)), true);
    let var_3 = Struct_2(var_0.d, _wgslsmith_f_op_f32(ceil(-259f)) == 1000f);
    return Struct_1(min(select(max(vec3<i32>(-26773i, var_2.a.a.x, -42967i), vec3<i32>(538i, var_2.a.a.x, 38218i)), var_0.d.a, u_input.a < arg_1.a.x) & var_2.a.a, var_2.a.a), vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.d), _wgslsmith_div_f32(330f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.e.x + 1238f))), -893f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-526f))))), ~(~(~(~66014u))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(810f, _wgslsmith_div_f32(arg_1.e.x, -568f)), 491f, var_2.a.a.x > var_3.a.a.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1100f)) * _wgslsmith_f_op_f32(exp2(var_2.a.b.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -426f), var_0.b.d)), -624f) + var_3.a.b.wyx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(global2.x, Struct_1(vec3<i32>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 10u)], 24u)], global3[_wgslsmith_index_u32(16625u, 24u)], 1i) | -vec3<i32>(u_input.b.x, -1i, -6776i), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-915f, -847f, 2919f, 2331f))), (global2.x & global2.x) | countOneBits(1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(991f - -209f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1501f, -1899f, -134f))), _wgslsmith_div_vec3_f32(vec3<f32>(-281f, 565f, -945f), vec3<f32>(112f, 1739f, -1421f)))), !select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false)), ~(~global2.x)), true);
    global3 = array<i32, 24>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.d + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a.d)))) - -601f);
    global2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(~(~1u), 10u)] ^ _wgslsmith_mod_u32(global2.x, global2.x & global2.x), ~_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(var_0.a.c, 10u)], firstTrailingBit(global2.x)), 0u, global2.x), ~(min(vec4<u32>(15478u, global2.x, 0u, 62375u), countOneBits(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3872u, 10u)], 10u)], global2.x, var_0.a.c, 12499u))) | vec4<u32>(global2.x, var_0.a.c, _wgslsmith_mult_u32(4294967295u, global1[_wgslsmith_index_u32(global2.x, 10u)]), firstLeadingBit(global1[_wgslsmith_index_u32(95661u, 10u)]))), ~abs(~vec4<u32>(1u, global1[_wgslsmith_index_u32(var_0.a.c, 10u)], global2.x, 4294967295u) << ((vec4<u32>(0u, global2.x, var_0.a.c, 4294967295u) & vec4<u32>(22774u, 0u, global2.x, global1[_wgslsmith_index_u32(1817u, 10u)])) % vec4<u32>(32u))));
    global2 = ~vec4<u32>(global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(global2.x, 10u)] | min(1u, 4294967295u), (1u ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(48213u, 10u)], 10u)]) ^ 10149u, 21425u) ^ _wgslsmith_add_vec4_u32(vec4<u32>(~var_0.a.c << (~92633u % 32u), _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 10u)], 10u)] << (global2.x % 32u), ~18683u), reverseBits(_wgslsmith_clamp_u32(global2.x, var_0.a.c, 4294967295u)), ~0u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(global2.x, 2528u, 63633u, 30096u) << (vec4<u32>(global2.x, 1u, 14290u, 516u) % vec4<u32>(32u)), ~vec4<u32>(global1[_wgslsmith_index_u32(38149u, 10u)], global1[_wgslsmith_index_u32(42381u, 10u)], 1u, global1[_wgslsmith_index_u32(4294967295u, 10u)])));
    let var_2 = select(var_0.a.a.x, u_input.a, var_0.b && all(!(!vec3<bool>(var_0.b, var_0.b, false))));
    global1 = array<u32, 10>();
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b.x))) + 1794f), _wgslsmith_f_op_f32(step(1f, 1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-509f * _wgslsmith_f_op_f32(var_0.a.d - _wgslsmith_div_f32(var_0.a.e.x, var_0.a.d))))), var_0.a.b.x);
    var var_4 = !select(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, var_0.b))), select(vec2<bool>(true, var_0.a.c > var_0.a.c), !select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(true, true), false), vec2<bool>(true, false)), func_2(var_0, Struct_1(~var_0.a.a, _wgslsmith_div_vec4_f32(var_3, var_3), global1[_wgslsmith_index_u32(~4294967295u, 10u)], _wgslsmith_f_op_f32(abs(var_3.x)), _wgslsmith_f_op_vec3_f32(step(var_3.xyw, vec3<f32>(1445f, var_0.a.d, var_3.x)))), abs(var_0.a.c)).xz);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(0i, -1i), _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(4294967295u, 24u)] << (global2.x % 32u), 1i)), -var_0.a.a.x), 1i, countOneBits(~1i) & (global3[_wgslsmith_index_u32(~1u, 24u)] >> (0u % 32u)), func_1(~min(global2.x, global2.x) >> (select(72281u, ~global2.x, !var_0.b) % 32u), var_0.a, select(!(!vec2<bool>(var_0.b, var_4.x)), !(!vec2<bool>(var_0.b, var_4.x)), all(!vec3<bool>(true, true, var_4.x))), 4294967295u).b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.x)))));
}

