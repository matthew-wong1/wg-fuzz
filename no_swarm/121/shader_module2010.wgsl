struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<vec4<bool>, 16>;

var<private> global2: Struct_1 = Struct_1(-410f, -1260f, vec4<f32>(-2338f, 2481f, -1342f, 301f), 582f);

var<private> global3: array<u32, 9>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec4<u32>, arg_3: vec2<u32>) -> vec3<bool> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.d * global2.b) + 1303f), _wgslsmith_f_op_f32(step(-280f, _wgslsmith_f_op_f32(-global2.c.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(843f)) + arg_1) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.d, arg_1))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1669f, 127f, _wgslsmith_f_op_f32(-global2.b), 1225f))), -1351f), Struct_1(387f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1 + global2.a)))), global2.c, _wgslsmith_f_op_f32(global2.c.x - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-926f, arg_1, global0.x)))))), global2.c);
    let var_1 = _wgslsmith_add_i32(reverseBits(1i), u_input.a.x & u_input.a.x);
    var var_2 = Struct_1(var_0.a.a, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1, arg_1, false)) * _wgslsmith_f_op_f32(-global2.c.x))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(124f)) - _wgslsmith_f_op_f32(-var_0.b.c.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -183f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.c.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.c.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-721f)), _wgslsmith_f_op_f32(global2.d + 989f)) + -834f)));
    var var_3 = u_input.a.x == (_wgslsmith_dot_vec3_i32(~countOneBits(u_input.a), ~vec3<i32>(2147483647i, u_input.a.x, -2147483647i)) << (~u_input.b.x % 32u));
    global3 = array<u32, 9>();
    return select(!(!vec3<bool>(var_2.b <= global2.d, all(vec3<bool>(global0.x, false, false)), true)), select(vec3<bool>(global0.x, all(!vec3<bool>(true, true, global0.x)), true), vec3<bool>(true, !select(true, global0.x, global0.x), global0.x), global0.x), !select(vec3<bool>(true, select(true, global0.x, global0.x), !global0.x), select(select(vec3<bool>(global0.x, true, false), vec3<bool>(global0.x, false, global0.x), true), vec3<bool>(false, global0.x, global0.x), !global0.x), select(!global0.x, any(vec2<bool>(true, global0.x)), global0.x & global0.x)));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = select(vec3<bool>(true, any(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), global0.x)), ~min(global3[_wgslsmith_index_u32(u_input.b.x, 9u)], arg_0) != 0u), !select(select(select(vec3<bool>(false, true, global0.x), vec3<bool>(false, false, global0.x), vec3<bool>(false, false, global0.x)), select(vec3<bool>(true, global0.x, true), vec3<bool>(false, global0.x, true), vec3<bool>(global0.x, false, false)), true), vec3<bool>(false, !global0.x, true), func_3(0u, global2.c.x, vec4<u32>(1u, arg_0, 0u, u_input.b.x), u_input.b.zz)), !select(vec3<bool>(u_input.a.x < -2147483647i, any(vec2<bool>(global0.x, false)), false), !vec3<bool>(global0.x, global0.x, global0.x), func_3(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(global3[_wgslsmith_index_u32(u_input.b.x, 9u)], u_input.b.x, 12729u)), global2.d, ~vec4<u32>(30413u, 0u, 44991u, global3[_wgslsmith_index_u32(arg_0, 9u)]), firstTrailingBit(u_input.b.zx)).x));
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(select(-1204f, 579f, global0.x)), _wgslsmith_div_f32(436f, -405f), 1132f, global2.b))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.c), _wgslsmith_f_op_vec4_f32(-global2.c)))));
    var var_2 = vec4<i32>(_wgslsmith_add_i32(-1i, ~u_input.a.x), 0i, 1i, ~_wgslsmith_mod_i32(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(23693i, 0i, -1i, u_input.a.x), vec4<i32>(-40408i, u_input.a.x, u_input.a.x, -52257i))), 60233i));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(global2.a))))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(global2.d + _wgslsmith_f_op_f32(select(569f, 408f, global0.x))), global0.x))));
    var var_4 = u_input.a.x == var_2.x;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)) - _wgslsmith_f_op_f32(-889f - _wgslsmith_f_op_f32(f32(-1f) * -1129f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(sign(var_1.x))))), _wgslsmith_f_op_f32(f32(-1f) * -2264f), _wgslsmith_div_vec4_f32(global2.c, _wgslsmith_f_op_vec4_f32(global2.c + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-349f, 1336f, -827f, global2.d)) * global2.c))), var_1.x);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: Struct_2) -> f32 {
    global3 = array<u32, 9>();
    var var_0 = Struct_2(func_2(_wgslsmith_div_u32(1u, reverseBits(949u))), Struct_1(594f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(781f - global2.d), global2.c.x)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(262f, -713f, global2.c.x, 357f) - vec4<f32>(arg_2.b.c.x, 502f, 1249f, 1390f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(553f, 352f, -238f, arg_2.a.c.x) + arg_2.c)))), -876f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) - -566f), 1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_2(u_input.b.x).d, -580f)), func_2(~(0u >> (0u % 32u))).c.x));
    let var_1 = arg_2;
    global3 = array<u32, 9>();
    let var_2 = _wgslsmith_mod_vec3_i32(~(vec3<i32>(-1i) * -firstTrailingBit(vec3<i32>(-10539i, -1i, u_input.a.x))), _wgslsmith_sub_vec3_i32(u_input.a, vec3<i32>(0i, -23032i, 15096i)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(ceil(130f))))));
}

fn func_1() -> Struct_2 {
    var var_0 = vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(max(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, global3[_wgslsmith_index_u32(u_input.b.x, 9u)], 0u), vec3<u32>(u_input.b.x, global3[_wgslsmith_index_u32(4294967295u, 9u)], 80403u))), 113278u, u_input.b.x, reverseBits(~4294967295u)), ~reverseBits(vec4<u32>(0u, 30998u, u_input.b.x, 8562u)) >> (~(~vec4<u32>(global3[_wgslsmith_index_u32(81521u, 9u)], 16958u, global3[_wgslsmith_index_u32(52421u, 9u)], global3[_wgslsmith_index_u32(1u, 9u)])) % vec4<u32>(32u))), 51843u, global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(0u, ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)], global3[_wgslsmith_index_u32(4294967295u ^ global3[_wgslsmith_index_u32(u_input.b.x, 9u)], 9u)]) | ~20243u, 9u)]);
    global1 = array<vec4<bool>, 16>();
    var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(919f)) - global2.b)) - _wgslsmith_f_op_f32(func_4(vec4<u32>(global3[_wgslsmith_index_u32(62590u, 9u)], 47331u, ~global3[_wgslsmith_index_u32(21879u, 9u)], u_input.b.x), !(!vec3<bool>(false, true, global0.x)), Struct_2(func_2(var_0.x), Struct_1(global2.c.x, global2.a, global2.c, 1000f), _wgslsmith_div_vec4_f32(vec4<f32>(global2.a, global2.b, global2.d, -215f), global2.c))))));
    var_0 = ~vec3<u32>(var_0.x, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.zz, vec2<u32>(u_input.b.x, var_0.x)), ~vec2<u32>(var_0.x, global3[_wgslsmith_index_u32(4294967295u, 9u)])), 4479u), max(max(u_input.b.x, u_input.b.x) & 4294967295u, 1u));
    return Struct_2(func_2(max(reverseBits(var_0.x), var_0.x)), Struct_1(-1175f, _wgslsmith_f_op_f32(1038f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1550f))), global2.c, _wgslsmith_f_op_f32(-116f + _wgslsmith_f_op_f32(1814f - _wgslsmith_div_f32(1449f, 749f)))), vec4<f32>(-623f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(1655f + global2.b)), global2.c.x), _wgslsmith_f_op_f32(func_4(~vec4<u32>(global3[_wgslsmith_index_u32(var_0.x, 9u)], 4294967295u, u_input.b.x, var_0.x), !func_3(0u, 1000f, vec4<u32>(77263u, 1u, 0u, var_0.x), vec2<u32>(0u, 1u)), Struct_2(func_2(0u), Struct_1(723f, var_1, vec4<f32>(global2.b, -414f, -822f, 1007f), -1491f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d, 360f, -1928f, global2.c.x) - global2.c)))), global2.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-292f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(-global2.b)), _wgslsmith_f_op_vec4_f32(-global2.c), global2.d);
    var var_2 = select(u_input.a.zy, u_input.a.xx, !vec2<bool>(all(!global1[_wgslsmith_index_u32(1u, 16u)]), false));
    global0 = func_3(max(~reverseBits(0u), reverseBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(50686u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(14190u, 9u)], 9u)], u_input.b.x), vec3<u32>(13397u, u_input.b.x, 17933u)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -704f))), (select(firstTrailingBit(vec4<u32>(global3[_wgslsmith_index_u32(40758u, 9u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(30548u, 9u)], 9u)], 74795u, u_input.b.x)), firstLeadingBit(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 9u)], 9u)], 0u, 1u, 6076u)), global0.x) | _wgslsmith_sub_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(26984u, 9u)], global3[_wgslsmith_index_u32(1u, 9u)], 0u, 120332u), vec4<u32>(59207u, u_input.b.x, u_input.b.x, 4294967295u))) << (_wgslsmith_clamp_vec4_u32(~(vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x) ^ vec4<u32>(101700u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 9u)], 9u)], u_input.b.x, u_input.b.x)), vec4<u32>(global3[_wgslsmith_index_u32(11440u, 9u)], u_input.b.x, ~u_input.b.x, ~u_input.b.x), vec4<u32>(_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(48644u, 9u)], global3[_wgslsmith_index_u32(4294967295u, 9u)], 0u), firstLeadingBit(16398u), 94442u, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x))) % vec4<u32>(32u)), vec2<u32>(32285u, 54794u)).xz;
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(global2.b)), global2.a, var_1.a, _wgslsmith_f_op_f32(round(global2.d))) * vec4<f32>(global2.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1055f), _wgslsmith_div_f32(1211f, -1050f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_sub_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 9u)], 25372u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(8004u, 9u)], 9u)], 0u), vec4<u32>(0u, u_input.b.x, 3488u, 1u)), vec3<bool>(global0.x, false, false), func_1())))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(~(select(vec2<i32>(1868i, u_input.a.x), u_input.a.yx, vec2<bool>(global0.x, true)) << (_wgslsmith_add_vec2_u32(u_input.b.zx, vec2<u32>(44457u, 72648u)) % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(u_input.a.xy, (vec2<i32>(-16613i, var_2.x) | vec2<i32>(var_2.x, -1i)) ^ -vec2<i32>(u_input.a.x, 0i))), vec3<u32>(u_input.b.x, _wgslsmith_div_u32(_wgslsmith_add_u32(2932u ^ global3[_wgslsmith_index_u32(72965u, 9u)], 0u), reverseBits(global3[_wgslsmith_index_u32(24236u, 9u)])), _wgslsmith_sub_u32(_wgslsmith_sub_u32(49780u, 0u), max(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), global3[_wgslsmith_index_u32(~u_input.b.x, 9u)]))));
}

