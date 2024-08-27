struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 16> = array<vec4<i32>, 16>(vec4<i32>(4784i, -49692i, i32(-2147483648), 2147483647i), vec4<i32>(0i, 2147483647i, -24573i, 1i), vec4<i32>(i32(-2147483648), 5434i, 0i, 10306i), vec4<i32>(-1i, 0i, -13302i, -1i), vec4<i32>(-29321i, 0i, 1i, 1i), vec4<i32>(2147483647i, -1688i, 1i, 11683i), vec4<i32>(i32(-2147483648), -20828i, 0i, -32902i), vec4<i32>(5910i, -19648i, 1i, 2147483647i), vec4<i32>(-1i, i32(-2147483648), 6894i, 0i), vec4<i32>(-1i, -35303i, -9825i, 4102i), vec4<i32>(-7975i, -9600i, 13684i, -11299i), vec4<i32>(i32(-2147483648), 10036i, i32(-2147483648), -17901i), vec4<i32>(i32(-2147483648), i32(-2147483648), -31221i, 1i), vec4<i32>(1i, 2147483647i, 2147483647i, 1i), vec4<i32>(-11030i, 0i, 2147483647i, -1i), vec4<i32>(1i, -8423i, -1i, i32(-2147483648)));

var<private> global1: i32;

var<private> global2: vec3<f32>;

var<private> global3: bool = true;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: f32) -> vec2<bool> {
    global0 = array<vec4<i32>, 16>();
    return vec2<bool>(~(~(~u_input.c)) < u_input.b, !all(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), false), vec4<bool>(false, false, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), false))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> vec3<u32> {
    let var_0 = select(select(select(!select(vec2<bool>(false, arg_1.b), vec2<bool>(arg_0.b, false), vec2<bool>(arg_1.b, false)), !vec2<bool>(arg_1.b, arg_1.b), !(arg_0.a.c <= arg_0.c.d.x)), select(select(func_3(vec3<i32>(arg_1.d, arg_0.d, 0i), arg_1.c.b.x, arg_1.a.b.x), vec2<bool>(arg_1.b, false), arg_1.d >= arg_0.d), vec2<bool>(arg_1.b, func_3(vec3<i32>(arg_1.d, -8907i, 16725i), 893f, -168f).x), !func_3(vec3<i32>(arg_0.d, -1i, arg_1.d), 1690f, global2.x)), arg_1.b), func_3(-vec3<i32>(-8780i, -11356i, max(arg_1.d, arg_1.d)), -1563f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-241f, 1141f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-241f - 1912f)))), !(!func_3(~vec3<i32>(32174i, arg_0.d, arg_1.d), 1559f, _wgslsmith_f_op_f32(-global2.x))));
    global1 = 1413i;
    var var_1 = Struct_2(Struct_1(_wgslsmith_clamp_u32(~select(32864u, arg_1.a.c, arg_0.b), arg_1.c.a, _wgslsmith_div_u32(17632u, arg_1.c.c ^ arg_1.a.a)), _wgslsmith_f_op_vec2_f32(arg_1.c.b - vec2<f32>(1852f, arg_1.c.b.x)), ~57534u, ~select(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.a.d.x, 22880u, 0u), vec3<u32>(150357u, 4294967295u, arg_0.a.c)), ~arg_1.a.d, vec3<bool>(arg_1.b, false, arg_1.b))), true, arg_1.a, min(~reverseBits(1i), arg_1.d));
    let var_2 = arg_1;
    var var_3 = var_1.c.b.x;
    return ~vec3<u32>(_wgslsmith_clamp_u32(~(~4294967295u), 0u, ~_wgslsmith_div_u32(var_1.c.d.x, u_input.a)), (u_input.c ^ firstLeadingBit(13252u)) | 1u, 4294967295u);
}

fn func_1() -> Struct_1 {
    return Struct_1(56181u, global2.xy, ~_wgslsmith_dot_vec3_u32(~(vec3<u32>(0u, u_input.a, 0u) | vec3<u32>(10838u, 28512u, u_input.c)), ~vec3<u32>(u_input.a, u_input.c, u_input.c)), select((func_2(Struct_2(Struct_1(u_input.c, global2.yx, u_input.b, vec3<u32>(1u, 1u, u_input.c)), true, Struct_1(u_input.b, global2.zy, u_input.c, vec3<u32>(u_input.b, 4294967295u, u_input.b)), 0i), Struct_2(Struct_1(u_input.b, global2.yy, u_input.a, vec3<u32>(u_input.c, 1u, u_input.a)), true, Struct_1(46602u, vec2<f32>(-977f, global2.x), u_input.c, vec3<u32>(1u, u_input.b, 4294967295u)), 15557i)) >> (~vec3<u32>(u_input.c, 1u, u_input.c) % vec3<u32>(32u))) & ~vec3<u32>(u_input.c, u_input.b, 107846u), ~vec3<u32>(u_input.b, 40135u, u_input.b) | ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(58142u, u_input.c, 44546u)), select(vec3<bool>(true, -1174f > global2.x, any(vec4<bool>(true, false, true, false))), vec3<bool>(true, select(true, false, false), select(false, true, false)), vec3<bool>(true, true, true))));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: u32) -> Struct_1 {
    global3 = all(!vec4<bool>(arg_2, true, select(func_3(vec3<i32>(arg_1, arg_1, 25030i), -1000f, 2053f).x, arg_2, false), true));
    var var_0 = ~_wgslsmith_add_vec3_i32(max(~vec3<i32>(arg_1, 2147483647i, arg_1), countOneBits(vec3<i32>(-1i, 0i, arg_1))), vec3<i32>(2147483647i, -3643i, arg_1) << ((arg_0.d >> (vec3<u32>(36125u, arg_3, arg_3) % vec3<u32>(32u))) % vec3<u32>(32u))) | select(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, -7274i, ~arg_1), firstLeadingBit(vec3<i32>(arg_1, -1i, 2147483647i))), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_1, arg_1, 6350i), _wgslsmith_add_vec3_i32(vec3<i32>(arg_1, arg_1, arg_1), vec3<i32>(-17548i, arg_1, 2147483647i))) ^ abs(vec3<i32>(-39719i, 13300i, 0i) ^ vec3<i32>(-14490i, arg_1, arg_1)), arg_2);
    var var_1 = arg_0.d;
    var var_2 = !select(select(vec2<bool>(arg_2 || arg_2, any(vec4<bool>(true, arg_2, true, true))), !select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, arg_2)), !vec2<bool>(false, arg_2)), !func_3(~vec3<i32>(var_0.x, -5951i, arg_1), _wgslsmith_f_op_f32(f32(-1f) * -1645f), global2.x), true);
    var_0 = vec3<i32>(_wgslsmith_add_i32(abs(30786i), arg_1 << (firstLeadingBit(max(u_input.a, 1u)) % 32u)), 0i << (abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.x, var_1.x), var_1.xx)) % 32u), -var_0.x >> ((firstLeadingBit(~arg_3) | firstLeadingBit(func_2(Struct_2(Struct_1(124805u, global2.yy, 66301u, arg_0.d), arg_2, arg_0, var_0.x), Struct_2(arg_0, arg_2, arg_0, var_0.x)).x)) % 32u));
    return func_1();
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1) -> bool {
    global3 = !(all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)) || !(func_1().d.x < _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 1u, u_input.a), vec4<u32>(1u, 34416u, u_input.b, 6479u))));
    var var_0 = select(!(!select(vec2<bool>(true, true), func_3(vec3<i32>(arg_0.x, 21800i, arg_0.x), 687f, 508f), true)), !vec2<bool>((0i & arg_0.x) > abs(arg_0.x), false), any(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, arg_1.b.x > global2.x))));
    global2 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -744f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-159f, global2.x, var_0.x)), _wgslsmith_f_op_f32(floor(307f)))), global2.x)));
    var var_1 = vec2<bool>(true, any(vec4<bool>(true, select(any(vec2<bool>(var_0.x, var_0.x)), false, var_0.x && false), true, var_0.x)));
    let var_2 = Struct_2(Struct_1(reverseBits(max(~1u, ~arg_1.c)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-510f, global2.x, var_0.x)) - _wgslsmith_div_f32(144f, -459f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1323f - arg_1.b.x)))), 123284u, ~(~select(arg_1.d, arg_1.d, var_1.x))), false, arg_1, arg_0.x);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(0u, 17070u);
    let var_1 = select(_wgslsmith_dot_vec2_i32(vec2<i32>(abs(reverseBits(32327i)), 1i), firstLeadingBit(~vec2<i32>(1i, 1i))), _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(var_0, 16u)], _wgslsmith_add_vec4_i32(vec4<i32>(~2147483647i, ~1i, _wgslsmith_mult_i32(-2147483647i, -1i), 2147483647i), global0[_wgslsmith_index_u32(~var_0, 16u)])), true | func_5((vec3<i32>(-3546i, 33968i, 9142i) >> (vec3<u32>(u_input.b, var_0, var_0) % vec3<u32>(32u))) ^ -vec3<i32>(12721i, -1i, 0i), func_4(func_1(), 67674i, all(vec2<bool>(true, true)), abs(var_0))));
    let var_2 = _wgslsmith_mod_vec3_u32(~vec3<u32>(1u, u_input.b, ~14582u) ^ func_2(Struct_2(Struct_1(73505u, global2.zz, u_input.a, vec3<u32>(0u, 1u, 29626u)), global2.x == 685f, Struct_1(u_input.a, vec2<f32>(global2.x, global2.x), u_input.c, vec3<u32>(var_0, 42255u, 74106u)), 25818i), Struct_2(Struct_1(u_input.c, vec2<f32>(global2.x, global2.x), 1u, vec3<u32>(u_input.a, var_0, 72085u)), true, Struct_1(40269u, vec2<f32>(global2.x, 1122f), 40424u, vec3<u32>(var_0, 0u, 71016u)), ~var_1)), ~max(~vec3<u32>(var_0, var_0, 24468u), vec3<u32>(_wgslsmith_div_u32(395u, var_0), _wgslsmith_mult_u32(u_input.b, 29941u), ~var_0)));
    var var_3 = func_3(max(vec3<i32>(var_1, i32(-1i) * -1i, ~(-1805i)), vec3<i32>(_wgslsmith_add_i32(1i, var_1), abs(var_1), _wgslsmith_mod_i32(var_1, var_1))) | -_wgslsmith_sub_vec3_i32(vec3<i32>(var_1, -23897i, -37484i), ~vec3<i32>(-1i, var_1, var_1)), 1175f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-3061f, 444f)), _wgslsmith_f_op_f32(f32(-1f) * -189f)), _wgslsmith_f_op_f32(2096f * _wgslsmith_f_op_f32(global2.x + -913f)), any(vec2<bool>(true, true)))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-947f)))))).x;
    let var_4 = Struct_2(func_4(func_1(), var_1, false, var_2.x), true, Struct_1(_wgslsmith_mult_u32(67040u, ~4294967295u), global2.zx, max(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(0u, 71737u)), var_2.x), _wgslsmith_mult_vec3_u32(~var_2, var_2)), var_1);
    var var_5 = _wgslsmith_sub_u32(0u, abs(~abs(4294967295u)));
    var var_6 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global2.x, 328f, 1131f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -1811f, global2.x) + vec3<f32>(-1620f, 1527f, global2.x))) * vec3<f32>(_wgslsmith_div_f32(768f, -1632f), global2.x, _wgslsmith_div_f32(-650f, var_4.c.b.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(1224f + global2.x), -888f, _wgslsmith_div_f32(-726f, 305f)), vec3<f32>(_wgslsmith_f_op_f32(select(245f, global2.x, false)), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-var_4.c.b.x))))));
    global3 = var_4.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(global2.x * -1871f), _wgslsmith_f_op_f32(f32(-1f) * -212f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2122f, var_6.x, var_6.x) - vec3<f32>(-1196f, var_6.x, 171f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, var_4.c.b.x, -536f)))))))), ~vec3<i32>(_wgslsmith_mod_i32(-2147483647i & var_4.d, 59072i), var_1, _wgslsmith_sub_i32(select(1i, -14103i, true), -2147483647i)), _wgslsmith_div_i32(-_wgslsmith_sub_i32(firstTrailingBit(2147483647i), var_4.d), var_1));
}

