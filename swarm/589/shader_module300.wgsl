struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec4<i32>,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: u32,
    b: vec2<bool>,
    c: f32,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1055f, -1024f);

var<private> global1: array<f32, 26>;

var<private> global2: array<vec2<bool>, 11>;

var<private> global3: Struct_2;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> bool {
    global3 = Struct_2(-(_wgslsmith_clamp_i32(_wgslsmith_add_i32(2147483647i, global3.c.c.x), abs(-1i), -2939i) | u_input.b), vec4<f32>(_wgslsmith_div_f32(1948f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1443f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-423f)), _wgslsmith_f_op_f32(-348f * -1007f))), -352f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.x, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(38388u, 0u, 4294967295u), 26u)])), global0.x)), Struct_1(false, vec3<bool>(false, false, !all(vec2<bool>(false, true))), global3.c.c, true && global3.c.e.x, !global3.c.e));
    var var_0 = vec3<u32>(abs(~0u), _wgslsmith_div_u32(_wgslsmith_mult_u32(0u, 21221u), ~1763u), ~min(_wgslsmith_mult_u32(min(59129u, 52033u), min(0u, 11272u)), ~(~6306u)));
    let var_1 = Struct_1(true, vec3<bool>(false, global3.c.e.x, true), -_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.b, 6369i, u_input.b, -20009i), vec4<i32>(~u_input.a, 24219i, -55743i, u_input.b)), !any(select(global3.c.e, select(global3.c.e, vec4<bool>(false, true, global3.c.a, global3.c.d), global3.c.e), select(global3.c.e, global3.c.e, vec4<bool>(global3.c.e.x, true, false, false)))), global3.c.e);
    let var_2 = vec2<u32>(_wgslsmith_dot_vec2_u32(var_0.zx, var_0.yx), var_0.x | ~_wgslsmith_sub_u32(0u, _wgslsmith_mult_u32(var_0.x, 1u)));
    let var_3 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(var_0.x, firstTrailingBit(35202u) | 30356u, _wgslsmith_mod_u32(31830u, var_0.x)), var_0.x, 53726u), 0u);
    return var_1.a;
}

fn func_2(arg_0: Struct_4) -> f32 {
    var var_0 = Struct_4(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 2649u, arg_0.a), ~vec3<u32>(~arg_0.a, arg_0.a, ~1u)), !vec2<bool>(true, !func_3()), global1[_wgslsmith_index_u32(countOneBits(arg_0.a), 26u)], select(!global3.c.e, !vec4<bool>(true, true, global3.c.e.x | true, true), any(!vec2<bool>(false, arg_0.b.x))), vec2<i32>(reverseBits(global3.a), _wgslsmith_add_i32(27496i, abs(1i)) << (_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.a, arg_0.a), vec2<u32>(35929u, arg_0.a)) % 32u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1824f, global3.b.x))), arg_0.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1477f, -1407f)), -1358f)), _wgslsmith_f_op_f32(2134f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(291f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f * global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1208f)) * -2557f), 758f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1297f * -300f)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(585f, var_0.c) * _wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, -271f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.x + 943f), _wgslsmith_f_op_f32(789f + global0.x), true)))));
    let var_3 = -13282i;
    global3 = Struct_2(u_input.a, var_1, global3.c);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1386f, var_1.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-321f)), _wgslsmith_f_op_f32(ceil(arg_0.c))));
}

fn func_1(arg_0: Struct_4, arg_1: vec4<i32>) -> Struct_2 {
    let var_0 = -(~1101i ^ global3.a);
    global3 = Struct_2(~(-(~1i)), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-239f + 1368f), -977f)))), 1f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_4(6913u, vec2<bool>(true, global3.c.e.x), global0.x, vec4<bool>(true, arg_0.d.x, false, true), vec2<i32>(-1i, global3.a)))))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1516f - arg_0.c), -774f), -766f)), Struct_1(arg_0.b.x, select(select(!vec3<bool>(false, global3.c.d, global3.c.b.x), select(vec3<bool>(false, global3.c.e.x, false), vec3<bool>(false, true, global3.c.a), vec3<bool>(false, false, arg_0.d.x)), false), vec3<bool>(all(vec4<bool>(arg_0.b.x, true, arg_0.b.x, false)), true, func_3()), any(!global3.c.e.yw)), _wgslsmith_clamp_vec4_i32(min(vec4<i32>(arg_0.e.x, global3.a, u_input.a, global3.a) ^ global3.c.c, ~vec4<i32>(0i, global3.a, global3.c.c.x, 0i)), arg_1, max(global3.c.c, vec4<i32>(arg_0.e.x, -2147483647i, arg_0.e.x, var_0))), arg_0.b.x, !(!arg_0.d)));
    let var_1 = Struct_3(reverseBits(97986u));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.x)))))), 203f);
    global3 = Struct_2(var_0 << (arg_0.a % 32u), global3.b, Struct_1(true, vec3<bool>(global0.x <= _wgslsmith_f_op_f32(-global3.b.x), false, select(var_1.a, 0u, global3.c.b.x) >= _wgslsmith_mod_u32(var_1.a, 4294967295u)), arg_1, any(!(!vec2<bool>(arg_0.d.x, global3.c.a))), !global3.c.e));
    return Struct_2(_wgslsmith_mult_i32(1i, -(_wgslsmith_dot_vec4_i32(arg_1, arg_1) >> (max(13146u, 1u) % 32u))), global3.b, global3.c);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec2<i32>) -> Struct_3 {
    var var_0 = arg_0;
    var var_1 = ~countOneBits(0u);
    let var_2 = Struct_3(abs(_wgslsmith_mult_u32(~(~10061u), 1u)));
    global1 = array<f32, 26>();
    let var_3 = func_1(Struct_4(_wgslsmith_mult_u32(var_2.a, _wgslsmith_div_u32(var_2.a, ~13838u)), func_1(Struct_4(var_2.a, global2[_wgslsmith_index_u32(~var_2.a, 11u)], _wgslsmith_f_op_f32(global0.x - 1186f), func_1(Struct_4(var_2.a, vec2<bool>(false, false), 637f, arg_0.c.e, vec2<i32>(13980i, global3.a)), arg_0.c.c).c.e, -vec2<i32>(arg_0.c.c.x, 57831i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.b, arg_2.x, 21965i), min(vec4<i32>(global3.c.c.x, u_input.b, arg_2.x, 14900i), vec4<i32>(-24805i, var_0.a, arg_0.a, -18367i)))).c.b.yz, 2008f, arg_0.c.e, global3.c.c.xx), firstLeadingBit(arg_0.c.c)).c;
    return Struct_3(4294967295u);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3, arg_3: u32) -> Struct_2 {
    global2 = array<vec2<bool>, 11>();
    var var_0 = global3.c.c.x;
    let var_1 = global3.b.wwx;
    let var_2 = _wgslsmith_mult_u32(reverseBits(~72800u), firstTrailingBit(abs(~arg_0.a)));
    var var_3 = func_1(Struct_4(24549u, !select(select(vec2<bool>(false, false), global2[_wgslsmith_index_u32(74910u, 11u)], true), global3.c.e.zz, global2[_wgslsmith_index_u32(1u, 11u)]), -987f, select(global3.c.e, global3.c.e, global3.c.e.x), _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(u_input.a, global3.c.c.x, u_input.a), firstTrailingBit(-1i)), global3.c.c.xx)), max(vec4<i32>(_wgslsmith_mult_i32(-24469i, global3.c.c.x), u_input.a, u_input.a, _wgslsmith_mult_i32(1i, -2147483647i)) >> (vec4<u32>(var_2, arg_0.a, ~1u, 56799u ^ arg_1.a) % vec4<u32>(32u)), global3.c.c));
    return Struct_2(_wgslsmith_div_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.b, u_input.b), countOneBits(vec3<i32>(0i, 1i, var_3.a))), u_input.b), _wgslsmith_f_op_vec4_f32(var_3.b + vec4<f32>(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(f32(-1f) * -2116f)), _wgslsmith_div_f32(global3.b.x, _wgslsmith_f_op_f32(-306f * global1[_wgslsmith_index_u32(0u, 26u)])), -1130f, _wgslsmith_f_op_f32(global3.b.x - _wgslsmith_f_op_f32(582f * var_1.x)))), func_1(Struct_4(~1u, vec2<bool>(true, !global3.c.d), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-global3.b.x)), vec4<bool>(true, all(global3.c.e), false, all(vec2<bool>(false, true))), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, var_3.a), min(var_3.c.c.zy, vec2<i32>(var_3.a, global3.a)))), ~vec4<i32>(var_3.a, min(-2147483647i, u_input.b), global3.c.c.x, -global3.c.c.x)).c);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> Struct_4 {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.b.xy));
    global1 = array<f32, 26>();
    global3 = func_5(Struct_3(1u), Struct_3(_wgslsmith_div_u32(arg_2, ~7066u)), Struct_3(0u), min(~(~(19457u | arg_2)), _wgslsmith_sub_u32(arg_2, ~_wgslsmith_sub_u32(0u, arg_2))));
    var var_0 = ~(~(~arg_2));
    var_0 = arg_2;
    return Struct_4(arg_2, select(global2[_wgslsmith_index_u32(63687u, 11u)], vec2<bool>(false, func_1(Struct_4(60995u, global2[_wgslsmith_index_u32(10294u, 11u)], 855f, vec4<bool>(false, arg_0.c.d, false, true), arg_0.c.c.zx), global3.c.c).c.d | global3.c.e.x), arg_0.c.b.x), -363f, vec4<bool>(global3.c.a, _wgslsmith_mod_i32(u_input.a & -2147483647i, ~global3.a) <= u_input.a, true, false), arg_0.c.c.xz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(func_4(func_1(Struct_4(4294967295u, vec2<bool>(global3.c.b.x, global3.c.a), -661f, vec4<bool>(false, global3.c.e.x, global3.c.a, global3.c.e.x), vec2<i32>(-48212i, 1i)), vec4<i32>(global3.c.c.x, 0i, u_input.a, -1i) >> (vec4<u32>(0u, 49480u, 0u, 4294967295u) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(global3.b, vec4<f32>(-581f, global0.x, global3.b.x, global0.x), vec4<bool>(global3.c.a, false, global3.c.a, global3.c.e.x))))), abs(_wgslsmith_clamp_vec2_i32(global3.c.c.zw, vec2<i32>(-107709i, global3.a), global3.c.c.xx))), func_4(func_1(Struct_4(13793u, global2[_wgslsmith_index_u32(58618u, 11u)], global0.x, vec4<bool>(global3.c.e.x, true, false, global3.c.a), vec2<i32>(global3.c.c.x, global3.c.c.x)), ~global3.c.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1826f, global0.x, global0.x, global0.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-847f, 1149f, global3.b.x, -646f))), select(_wgslsmith_div_vec2_i32(global3.c.c.xx, vec2<i32>(u_input.b, 14927i)), _wgslsmith_sub_vec2_i32(global3.c.c.zx, vec2<i32>(-49804i, -1i)), vec2<bool>(false, global3.c.b.x))), func_4(func_1(Struct_4(1u, vec2<bool>(global3.c.d, global3.c.e.x), -437f, vec4<bool>(global3.c.d, true, global3.c.b.x, false), global3.c.c.xy), ~vec4<i32>(global3.c.c.x, u_input.a, global3.c.c.x, 1i)), vec4<f32>(_wgslsmith_div_f32(-1480f, global1[_wgslsmith_index_u32(1u, 26u)]), global1[_wgslsmith_index_u32(max(0u, 24449u), 26u)], global1[_wgslsmith_index_u32(47379u, 26u)], -1026f), ~global3.c.c.zy), func_4(func_1(Struct_4(20747u, vec2<bool>(false, false), global1[_wgslsmith_index_u32(42513u, 26u)], vec4<bool>(global3.c.b.x, global3.c.a, global3.c.a, global3.c.b.x), global3.c.c.xz), vec4<i32>(global3.a, 8671i, 2147483647i, global3.a)), _wgslsmith_f_op_vec4_f32(global3.b - vec4<f32>(-417f, global3.b.x, -274f, global3.b.x)), vec2<i32>(-1i, 36763i)).a | firstTrailingBit(~28806u)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(209f, global0.x) * global3.b.x) != _wgslsmith_f_op_f32(global3.b.x * func_1(Struct_4(1u, vec2<bool>(global3.c.d, global3.c.d), -1520f, global3.c.e, vec2<i32>(u_input.b, global3.c.c.x)), vec4<i32>(-2147483647i, u_input.a, 11290i, -35509i)).b.x), !(!(!vec3<bool>(global3.c.a, global3.c.b.x, global3.c.d))), ~(-global3.c.c | min(vec4<i32>(global3.c.c.x, u_input.b, u_input.b, u_input.b), vec4<i32>(-39178i, 6600i, 1i, u_input.b))), !(u_input.b <= 0i) != false, !(!vec4<bool>(global3.c.b.x, global3.c.b.x, true, false))), 1u, _wgslsmith_f_op_f32(max(global3.b.x, _wgslsmith_f_op_f32(round(global0.x)))));
    var var_1 = func_4(Struct_2(~_wgslsmith_add_i32(~global3.c.c.x, abs(var_0.e.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(var_0.a, 26u)], var_0.c, var_0.c, global3.b.x))), global3.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1230f, var_0.c, 677f, -1000f) + _wgslsmith_div_vec4_f32(vec4<f32>(1661f, global3.b.x, 225f, 1926f), global3.b)), vec4<f32>(_wgslsmith_f_op_f32(round(-433f)), 194f, 397f, _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(var_0.a, 26u)]))), func_5(func_4(Struct_2(19961i, global3.b, Struct_1(var_0.d.x, global3.c.b, global3.c.c, true, var_0.d)), global3.b, vec2<i32>(var_0.e.x, 1i)), Struct_3(4294967295u), func_4(Struct_2(u_input.b, vec4<f32>(var_0.c, -930f, global3.b.x, 739f), global3.c), global3.b, vec2<i32>(0i, u_input.b)), 1u).c.e))), vec2<i32>(select(global3.a, min(firstTrailingBit(4030i), -u_input.a), var_0.d.x), max(global3.a, 1i)));
    var var_2 = func_5(Struct_3(var_1.a), func_4(Struct_2(reverseBits(i32(-1i) * -2147483647i), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global3.b), _wgslsmith_f_op_vec4_f32(-global3.b), true)), Struct_1(global3.c.b.x, var_0.d.wwz, _wgslsmith_sub_vec4_i32(global3.c.c, global3.c.c), true, vec4<bool>(var_0.b.x, true, var_0.b.x, var_0.d.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, global0.x, global1[_wgslsmith_index_u32(var_0.a, 26u)], global0.x))), global3.c.c.zx << (_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.a, 28633u), ~vec2<u32>(0u, 4294967295u)) % vec2<u32>(32u))), Struct_3(_wgslsmith_clamp_u32(var_1.a, var_0.a, _wgslsmith_div_u32(_wgslsmith_clamp_u32(var_1.a, 33671u, var_1.a), select(var_0.a, 1u, false)))), 4294967295u).c;
    var_1 = Struct_3(firstTrailingBit(~(~_wgslsmith_clamp_u32(var_1.a, 58704u, 1106u))));
    var_0 = Struct_4(28930u, select(vec2<bool>(var_0.d.x, global3.c.d), var_0.d.yx, select(!func_5(Struct_3(var_0.a), Struct_3(4294967295u), Struct_3(57331u), 28367u).c.e.ww, global2[_wgslsmith_index_u32(var_0.a, 11u)], func_6(Struct_2(-2288i, global3.b, global3.c), func_1(Struct_4(var_0.a, global3.c.e.xy, var_0.c, var_2.e, vec2<i32>(u_input.b, u_input.b)), vec4<i32>(1i, -2316i, var_2.c.x, global3.c.c.x)).c, _wgslsmith_mult_u32(21299u, 25637u), global3.b.x).d.xw)), -1010f, !vec4<bool>(all(var_0.b), func_3(), true, !(!global3.c.b.x)), countOneBits(max(global3.c.c.yw, var_2.c.xy)));
    let var_3 = Struct_4(abs(var_0.a), select(var_0.d.xy, func_5(Struct_3(124032u), Struct_3(var_1.a), func_4(Struct_2(-31060i, vec4<f32>(152f, global1[_wgslsmith_index_u32(4294967295u, 26u)], -693f, 2195f), Struct_1(true, global3.c.e.xzw, global3.c.c, true, vec4<bool>(var_2.b.x, global3.c.e.x, var_0.b.x, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b.x, var_0.c, 1000f, 1060f) * vec4<f32>(global0.x, global3.b.x, -145f, 1288f)), var_0.e), var_1.a).c.b.yz, vec2<bool>(global3.c.e.x, true)), _wgslsmith_f_op_f32(func_2(Struct_4(var_0.a, vec2<bool>(true, true), global3.b.x, !vec4<bool>(global3.c.a, false, true, true), vec2<i32>(global3.c.c.x, -var_2.c.x)))), vec4<bool>(true | (func_5(Struct_3(var_0.a), Struct_3(18901u), Struct_3(var_1.a), 0u).c.d != true), false, var_2.b.x, var_2.e.x), var_0.e);
    var var_4 = func_4(func_5(Struct_3(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.a, 78245u, var_1.a), vec3<u32>(4294967295u, var_1.a, var_3.a))), Struct_3(~(~var_0.a)), func_4(func_5(Struct_3(1u), func_4(Struct_2(38851i, global3.b, global3.c), global3.b, var_0.e), func_4(Struct_2(-2147483647i, global3.b, global3.c), global3.b, vec2<i32>(var_3.e.x, var_0.e.x)), ~var_3.a), _wgslsmith_f_op_vec4_f32(-global3.b), func_6(Struct_2(-1i, global3.b, global3.c), global3.c, ~var_3.a, _wgslsmith_f_op_f32(1000f + 886f)).e), ~(~var_0.a) | var_3.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.b)))), vec2<i32>(i32(-1i) * -global3.c.c.x, _wgslsmith_sub_i32(-func_6(Struct_2(54991i, vec4<f32>(global3.b.x, -739f, 1154f, -267f), global3.c), Struct_1(var_2.a, var_0.d.wxy, vec4<i32>(var_3.e.x, global3.a, 2147483647i, 12098i), var_3.b.x, var_2.e), 1789u, -1464f).e.x, _wgslsmith_add_i32(var_2.c.x, _wgslsmith_sub_i32(u_input.b, var_2.c.x)))));
    let var_5 = vec2<f32>(_wgslsmith_f_op_f32(func_6(Struct_2(u_input.b, _wgslsmith_f_op_vec4_f32(-global3.b), Struct_1(var_2.e.x, vec3<bool>(var_0.d.x, global3.c.a, true), var_2.c, false, var_2.e)), Struct_1(var_3.d.x, global3.c.e.wzx, abs(vec4<i32>(u_input.b, var_3.e.x, var_2.c.x, u_input.a)), !var_3.b.x, var_0.d), 57705u, _wgslsmith_f_op_f32(1837f + _wgslsmith_f_op_f32(var_0.c * global1[_wgslsmith_index_u32(4294967295u, 26u)]))).c * -124f), _wgslsmith_f_op_f32(abs(func_5(Struct_3(8371u), Struct_3(select(var_0.a, 1u, false)), Struct_3(0u), ~13203u).b.x)));
    var var_6 = global3.c.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, select(vec3<i32>(i32(-1i) * -2147483647i, -2147483647i, ~11472i) ^ abs(-vec3<i32>(-24267i, var_2.c.x, -24782i)), vec3<i32>(var_3.e.x, abs(var_2.c.x) | var_2.c.x, select(abs(16161i), ~global3.a, true)), true));
}

