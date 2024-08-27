struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec2<bool>, 13> = array<vec2<bool>, 13>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true));

var<private> global2: Struct_1;

var<private> global3: vec3<bool>;

var<private> global4: array<Struct_1, 6>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: i32) -> vec4<u32> {
    var var_0 = select(select(select(select(select(vec2<bool>(false, global3.x), global3.zy, global1[_wgslsmith_index_u32(17042u, 13u)]), global1[_wgslsmith_index_u32(min(24175u, u_input.c), 13u)], vec2<bool>(true, global3.x)), vec2<bool>(global3.x | global3.x, false != global3.x), vec2<bool>(false, !global3.x)), vec2<bool>(-986f < _wgslsmith_f_op_f32(select(-930f, 384f, true)), select(false && global3.x, select(false, false, true), !global3.x)), global3.x), vec2<bool>(global3.x, !(all(vec3<bool>(true, global3.x, global3.x)) && false)), !select(select(global3.xz, global1[_wgslsmith_index_u32(1u, 13u)], true), !vec2<bool>(global3.x, global3.x), select(select(vec2<bool>(false, global3.x), global1[_wgslsmith_index_u32(arg_1, 13u)], true), vec2<bool>(false, true), false)));
    var var_1 = _wgslsmith_clamp_i32(_wgslsmith_mod_i32(1i, select(_wgslsmith_sub_i32(_wgslsmith_add_i32(-47109i, global0.c.a), reverseBits(u_input.a.x)), reverseBits(1i), true)), abs(-arg_2), u_input.a.x ^ (_wgslsmith_dot_vec3_i32(u_input.b.xyx, _wgslsmith_clamp_vec3_i32(global2.c.zzw, vec3<i32>(-549i, arg_2, global0.b), vec3<i32>(0i, 33219i, u_input.a.x))) & _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(global2.b, arg_2, global2.a, arg_2)), vec4<i32>(0i, -2147483647i, u_input.b.x, 7491i) ^ vec4<i32>(u_input.b.x, -2147483647i, -16141i, u_input.a.x))));
    global3 = !select(!(!vec3<bool>(var_0.x, true, true)), select(select(!vec3<bool>(false, var_0.x, true), vec3<bool>(true, true, true), var_0.x), vec3<bool>(var_0.x & global3.x, false, global3.x), false), var_0.x | any(vec3<bool>(false, var_0.x, true)));
    var var_2 = 4294967295u;
    global1 = array<vec2<bool>, 13>();
    return vec4<u32>(reverseBits(select(4294967295u, ~(~arg_0), _wgslsmith_mult_u32(u_input.c, 4294967295u) > _wgslsmith_mod_u32(11246u, u_input.c))), 4294967295u, global0.a.e.x, ~4294967295u);
}

fn func_2() -> vec2<bool> {
    global1 = array<vec2<bool>, 13>();
    global4 = array<Struct_1, 6>();
    global1 = array<vec2<bool>, 13>();
    global0 = Struct_3(Struct_1(~0i, global0.c.c.x, u_input.b, _wgslsmith_sub_vec2_u32(~vec2<u32>(6709u, global0.a.e.x), ~vec2<u32>(34336u, 70660u)) ^ ~countOneBits(global0.a.e.xy), func_3(global2.d.x, _wgslsmith_add_u32(firstLeadingBit(u_input.c), ~global2.d.x), global2.c.x)), 1i, global0.a);
    global0 = Struct_3(Struct_1(global0.c.b, _wgslsmith_dot_vec4_i32(select(global0.c.c, firstTrailingBit(vec4<i32>(global0.c.a, 2147483647i, u_input.a.x, -2147483647i)), true), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, u_input.b.x, -66819i), global2.c) | reverseBits(vec4<i32>(u_input.b.x, global2.b, 35631i, 0i))), vec4<i32>(_wgslsmith_mod_i32(-global0.c.b, global2.a & -16558i), -1i, max(global0.a.a, -9357i) >> (global0.c.d.x % 32u), reverseBits(~global0.c.b)), vec2<u32>(reverseBits(59675u), ~u_input.c) << ((~vec2<u32>(1u, u_input.c) << (vec2<u32>(39593u, global2.d.x) % vec2<u32>(32u))) % vec2<u32>(32u)), vec4<u32>(6506u, min(1u, global2.e.x), _wgslsmith_sub_u32(global2.e.x, global0.c.d.x), _wgslsmith_div_u32(u_input.c, global2.e.x)) << ((abs(global2.e) >> (vec4<u32>(55302u, 16913u, 16247u, 29240u) % vec4<u32>(32u))) % vec4<u32>(32u))), 0i & -_wgslsmith_mult_i32(u_input.a.x, -2147483647i), global4[_wgslsmith_index_u32(u_input.c, 6u)]);
    return !(!vec2<bool>(select(any(vec3<bool>(global3.x, false, global3.x)), global3.x, global3.x), global3.x));
}

fn func_1() -> vec4<bool> {
    global4 = array<Struct_1, 6>();
    var var_0 = firstLeadingBit(49643u);
    var var_1 = ~select(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(abs(global2.d), ~global0.a.d), ~(global2.d >> (vec2<u32>(28705u, 29652u) % vec2<u32>(32u)))), reverseBits(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(global2.e.wy, vec2<u32>(46541u, u_input.c)), global2.e.wz | global0.c.e.zx)), func_2());
    var var_2 = Struct_1(~_wgslsmith_mod_i32(_wgslsmith_add_i32(-2147483647i, select(-17374i, -61837i, global3.x)), firstLeadingBit(530i)), 2147483647i, vec4<i32>(abs(-2147483647i), _wgslsmith_add_i32(-_wgslsmith_mult_i32(global0.a.c.x, -1i), -reverseBits(1i)), reverseBits(-(global0.c.b >> (u_input.c % 32u))), -37037i << (0u % 32u)), ~global2.e.xw, firstTrailingBit(global2.e));
    global1 = array<vec2<bool>, 13>();
    return !vec4<bool>(all(select(!vec4<bool>(true, global3.x, true, true), select(vec4<bool>(true, global3.x, false, global3.x), vec4<bool>(false, global3.x, true, global3.x), false), true)), any(vec2<bool>(any(vec4<bool>(global3.x, true, global3.x, global3.x)), true)), func_2().x, global3.x);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: i32) -> StorageBuffer {
    var var_0 = Struct_3(Struct_1(arg_3, 7533i, _wgslsmith_div_vec4_i32(vec4<i32>(-7943i, arg_3, 0i, 1i), vec4<i32>(48549i << (0u % 32u), abs(global2.a), -u_input.b.x, firstTrailingBit(-41808i))), arg_1.e.yy, min(~(~vec4<u32>(global0.c.e.x, 1u, 71805u, 4294967295u)), arg_1.e)), -_wgslsmith_clamp_i32(i32(-1i) * -global0.a.a, ~min(-25574i, global2.b), global0.b), global4[_wgslsmith_index_u32(u_input.c, 6u)]);
    global0 = Struct_3(Struct_1(_wgslsmith_mod_i32(u_input.b.x, 0i), global2.a, vec4<i32>(global2.a, ~1i, _wgslsmith_clamp_i32(firstTrailingBit(var_0.b), -arg_1.c.x, i32(-1i) * -19948i), -37212i), vec2<u32>(_wgslsmith_dot_vec2_u32(arg_2, global0.a.d), 4294967295u), ~global2.e << (~var_0.c.e % vec4<u32>(32u))), _wgslsmith_div_i32(-min(global2.c.x | arg_3, global0.a.b >> (0u % 32u)), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(abs(vec2<i32>(global0.c.c.x, 2147483647i)), u_input.a.zz), _wgslsmith_mult_vec2_i32(var_0.c.c.yx, _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, var_0.c.c.x), var_0.a.c.ww)))), Struct_1(-12710i, global2.a, ~(-global0.c.c), _wgslsmith_mod_vec2_u32(~firstTrailingBit(vec2<u32>(global0.c.d.x, 11671u)), reverseBits(vec2<u32>(1u, 0u)) & ~arg_2), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(global0.c.d.x, var_0.a.d.x), 39059u, u_input.c, func_3(59166u, 80919u, 35150i).x), _wgslsmith_mult_vec4_u32(global0.a.e, vec4<u32>(var_0.c.d.x, 2883u, 0u, 58343u) & vec4<u32>(4294967295u, 27060u, 1u, global2.d.x)))));
    let var_1 = Struct_2(arg_1.c, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(180f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1029f * 334f), _wgslsmith_f_op_f32(round(829f))), 299f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-699f, 936f, -854f)))) * vec3<f32>(_wgslsmith_div_f32(1219f, -785f), _wgslsmith_f_op_f32(step(-1538f, 1146f)), -284f)))));
    global0 = Struct_3(global0.c, -28786i, Struct_1(-31590i, _wgslsmith_mult_i32(min(11170i, arg_1.b), ~reverseBits(2147483647i)), _wgslsmith_sub_vec4_i32(min(arg_1.c, firstLeadingBit(vec4<i32>(global2.b, u_input.b.x, 25785i, global0.a.b))), var_0.a.c), countOneBits(vec2<u32>(1u, ~global2.d.x)), arg_1.e));
    global0 = Struct_3(Struct_1(firstTrailingBit(1i), var_1.a.x, var_1.a, _wgslsmith_mult_vec2_u32(~global0.c.d, _wgslsmith_div_vec2_u32(select(vec2<u32>(1u, arg_2.x), arg_1.d, global3.zy), vec2<u32>(28173u, arg_2.x))), firstLeadingBit(~(vec4<u32>(u_input.c, arg_1.e.x, arg_2.x, 52579u) ^ global2.e))), 2147483647i, Struct_1(-23294i, 5481i, ~arg_1.c, ~(~_wgslsmith_mult_vec2_u32(arg_1.e.zx, vec2<u32>(4294967295u, 52185u))), vec4<u32>(4294967295u, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_1.e.x, 4294967295u), global0.c.e.yzx)), abs(arg_2.x), firstTrailingBit(119409u))));
    return StorageBuffer(-_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.b, u_input.a.x), min(vec2<i32>(arg_1.b, 0i), vec2<i32>(var_1.a.x, global2.c.x)), select(arg_1.c.xw, vec2<i32>(-36244i, u_input.b.x), vec2<bool>(true, false))), vec2<i32>(~u_input.b.x, -arg_1.b)), 0i, vec4<f32>(1131f, var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-469f, _wgslsmith_div_f32(var_1.b.x, var_1.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1229f, -772f, all(global3.xz))) + _wgslsmith_f_op_f32(-685f + var_1.b.x))), (1i >> (~(~global2.e.x) % 32u)) << (92347u % 32u), abs(arg_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<bool>, 13>();
    let var_0 = vec4<u32>(1u, 0u, ~firstLeadingBit(u_input.c) << (global2.e.x % 32u), ~(~1u)) << ((reverseBits(vec4<u32>(global0.a.d.x, u_input.c, u_input.c, global0.c.d.x)) | ~abs(~vec4<u32>(global2.d.x, u_input.c, 59103u, global2.e.x))) % vec4<u32>(32u));
    let var_1 = 2147483647i;
    let var_2 = 1u;
    var var_3 = ~(-abs(2147483647i));
    var_3 = -1i;
    global1 = array<vec2<bool>, 13>();
    let var_4 = abs(-14529i);
    let x = u_input.a;
    s_output = func_4(any(func_1()), Struct_1(_wgslsmith_sub_i32(-11132i << (_wgslsmith_add_u32(var_2, var_2) % 32u), -1i >> (global2.d.x % 32u)), countOneBits(2147483647i), min(vec4<i32>(-36101i ^ global0.c.b, _wgslsmith_add_i32(8409i, global2.b), abs(1i), -var_4), vec4<i32>(var_1, 0i, i32(-1i) * -45217i, var_4)), ~var_0.xz, ~(global0.a.e >> (var_0 % vec4<u32>(32u)))), _wgslsmith_mult_vec2_u32(select(vec2<u32>(_wgslsmith_div_u32(global0.c.e.x, u_input.c), _wgslsmith_clamp_u32(0u, 42769u, 0u)), ~vec2<u32>(37741u, 27674u), select(!global3.yy, global1[_wgslsmith_index_u32(~5425u, 13u)], global3.xx)), firstLeadingBit(var_0.yx)), _wgslsmith_mod_i32(-60294i, select(-41956i >> (u_input.c % 32u), _wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, 53100i), abs(global2.c.wy)), abs(93076u) != var_2)));
}

