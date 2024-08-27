struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: vec3<bool>,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: f32,
    d: vec3<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4> = array<i32, 4>(-39871i, i32(-2147483648), 1i, 0i);

var<private> global1: array<vec3<f32>, 12>;

var<private> global2: f32 = 782f;

var<private> global3: bool;

var<private> global4: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = vec4<bool>(all(select(select(select(vec4<bool>(true, arg_1.a, true, arg_0), vec4<bool>(true, arg_0, arg_1.a, arg_0), vec4<bool>(true, true, false, false)), vec4<bool>(arg_1.a, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(arg_1.a, arg_0, false, false), arg_0)), !vec4<bool>(arg_1.a, true, arg_1.a, arg_0), select(vec4<bool>(arg_0, true, false, arg_1.a), !vec4<bool>(true, false, arg_1.a, arg_1.a), !vec4<bool>(arg_1.a, true, false, arg_1.a)))), all(vec4<bool>(!arg_1.a, arg_0, false, all(vec3<bool>(arg_1.a, arg_0, false)))) || any(!(!vec4<bool>(arg_0, arg_0, true, arg_0))), true, true);
    var var_1 = select(vec4<bool>((_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 15550i, 60231i), vec3<i32>(u_input.a.x, 26713i, 0i)) ^ global0[_wgslsmith_index_u32(1u, 4u)]) == abs(-25407i), any(vec2<bool>(true, false)), all(var_0), true), vec4<bool>(any(!(!var_0.wwy)), true, true, arg_1.a), select(vec4<bool>(true | any(var_0), true, any(!vec2<bool>(arg_0, arg_0)), !arg_1.a & true), var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b * arg_1.b) * _wgslsmith_f_op_f32(-arg_1.b)) <= _wgslsmith_f_op_f32(1882f - _wgslsmith_f_op_f32(ceil(266f)))));
    var var_2 = Struct_3(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(1u, 1u)), reverseBits(vec2<u32>(1u, 1u))), 25u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(458f))), Struct_1(true || (_wgslsmith_f_op_f32(354f + arg_1.b) >= -794f), arg_1.b, -_wgslsmith_div_i32(global0[_wgslsmith_index_u32(4294967295u, 4u)], -33391i) >> (~firstTrailingBit(4294967295u) % 32u)));
    var var_3 = vec3<u32>(~_wgslsmith_add_u32(1u, firstTrailingBit(44u)), reverseBits(1u), ~1u) & abs(max(firstLeadingBit(min(vec3<u32>(1u, 4294967295u, 109480u), vec3<u32>(32182u, 21365u, 74500u))), ~vec3<u32>(0u, 1u, 0u)));
    let var_4 = !(any(select(vec4<bool>(var_1.x, false, false, var_0.x), var_0, arg_0)) && all(vec3<bool>(var_1.x, true, false))) & var_1.x;
    return abs(vec4<i32>(var_2.c.c, 0i, 1i, ~(~(-22732i))));
}

fn func_2(arg_0: vec2<i32>) -> f32 {
    global1 = array<vec3<f32>, 12>();
    let var_0 = Struct_5(false, any(vec3<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))), false, true)), true);
    let var_1 = firstLeadingBit(~_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(50238i, -2147483647i, -1i, 0i), vec4<i32>(global0[_wgslsmith_index_u32(0u, 4u)], 34714i, arg_0.x, global0[_wgslsmith_index_u32(9258u, 4u)])), ~vec4<i32>(arg_0.x, -47824i, 14441i, u_input.a.x)), _wgslsmith_dot_vec4_i32(select(u_input.a, u_input.a, vec4<bool>(false, false, true, false)), func_3(var_0.a, Struct_1(var_0.c, 2778f, 8236i)))));
    let var_2 = vec2<f32>(1f, 1f);
    var var_3 = vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, max(29321u, 4294967295u)), vec2<u32>(1u, 1u)) << (~(~select(0u, 8212u, var_0.c)) % 32u), _wgslsmith_add_u32(11083u, countOneBits(firstTrailingBit(15969u))), ~_wgslsmith_sub_u32(firstTrailingBit(4294967295u), 4294967295u) & 1u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + -359f));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_4) -> bool {
    let var_0 = arg_1.c;
    var var_1 = select(abs(~vec2<u32>(arg_0, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 21425u, 12335u), vec3<u32>(arg_0, 24265u, 4294967295u)))), _wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, firstLeadingBit(arg_0)), select(vec2<u32>(33827u << (arg_0 % 32u), arg_0 >> (4294967295u % 32u)), vec2<u32>(countOneBits(0u), min(75095u, arg_0)), vec2<bool>(any(vec4<bool>(false, arg_2.a, arg_2.c.x, arg_1.c.a)), all(vec3<bool>(var_0.a, false, false)))), vec2<u32>(30732u, 89667u)), select(!arg_2.c.zz, arg_2.c.xx, all(arg_2.c)));
    var var_2 = arg_2;
    global1 = array<vec3<f32>, 12>();
    var var_3 = abs(vec4<u32>(~0u, min(_wgslsmith_div_u32(reverseBits(var_1.x), 1u), 1u), ~var_1.x, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(0u, var_1.x, 21780u)), abs(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0, 4294967295u, 1u), vec3<u32>(0u, 1u, 65779u))))));
    return any(vec4<bool>(arg_2.c.x || (all(var_2.c) == true), !var_0.a, true, any(arg_2.c.yz)));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: vec2<u32>, arg_3: Struct_4) -> bool {
    global0 = array<i32, 4>();
    let var_0 = global4[_wgslsmith_index_u32(1u, 25u)];
    var var_1 = select(vec4<bool>(func_4(~6759u, Struct_3(global4[_wgslsmith_index_u32(arg_2.x >> (5520u % 32u), 25u)], _wgslsmith_f_op_f32(func_2(arg_1.wz)), Struct_1(false, -1000f, arg_1.x)), Struct_4(arg_3.c.x, ~1i, !vec3<bool>(false, arg_3.a, var_0.a))), var_0.a, !(!arg_3.a) || true, !all(!arg_3.c)), select(!(!(!vec4<bool>(false, false, true, arg_3.c.x))), select(select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_3.c.x, var_0.a, true, var_0.a), global0[_wgslsmith_index_u32(arg_2.x, 4u)] > -1i), vec4<bool>(true, arg_3.c.x, true, any(vec4<bool>(false, true, false, var_0.a))), true), select(select(vec4<bool>(var_0.a, false, var_0.a, true), vec4<bool>(false, arg_3.a, var_0.a, false), true), select(select(vec4<bool>(var_0.a, var_0.a, var_0.a, arg_3.c.x), vec4<bool>(true, var_0.a, arg_3.c.x, var_0.a), vec4<bool>(false, false, var_0.a, true)), !vec4<bool>(var_0.a, var_0.a, true, false), any(arg_3.c)), vec4<bool>(arg_3.c.x && arg_3.c.x, arg_0.x < arg_0.x, true, true))), !vec4<bool>(max(45292u, arg_2.x) <= arg_2.x, arg_3.a, any(arg_3.c), !(var_0.a | true)));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) * arg_0.x), arg_0.x)), arg_0.x);
    let var_3 = !(!arg_3.c.x) & true;
    return var_1.x;
}

fn func_5(arg_0: Struct_5, arg_1: i32) -> vec4<u32> {
    var var_0 = ~firstLeadingBit(1u);
    var var_1 = !(!(!arg_0.a));
    let var_2 = Struct_4(arg_0.c, countOneBits(abs(-min(323i, u_input.b.x))), vec3<bool>(true, !(true && (arg_0.a | arg_0.a)), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(824f, -306f, -542f, 165f))), countOneBits(firstTrailingBit(u_input.a)), vec2<u32>(1u, 1u) & select(vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 139090u), arg_0.b), Struct_4(true, ~0i, vec3<bool>(true, true, true)))));
    global1 = array<vec3<f32>, 12>();
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-603f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -403f)))));
    return vec4<u32>(_wgslsmith_mult_u32(firstTrailingBit(~(~4294967295u)), min(reverseBits(902u), _wgslsmith_div_u32(abs(4294967295u), ~70567u))), 1u, _wgslsmith_sub_u32(~1u, 8272u), 4294967295u);
}

fn func_6(arg_0: vec4<u32>) -> u32 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(265f))), -1457f, true)) == _wgslsmith_f_op_f32(f32(-1f) * -251f), -278i, vec3<bool>(!any(vec3<bool>(true, true, true)), true, !all(vec3<bool>(true, false, true))));
    var var_1 = vec3<i32>(_wgslsmith_sub_i32((i32(-1i) * -u_input.b.x) | countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(18564u, 4u)], 1i, global0[_wgslsmith_index_u32(arg_0.x, 4u)], -1i), u_input.a)), var_0.b), ~global0[_wgslsmith_index_u32(arg_0.x, 4u)], abs(~_wgslsmith_mod_i32(u_input.b.x, firstTrailingBit(-2147483647i))));
    let var_2 = -14762i;
    let var_3 = Struct_4(any(var_0.c.yy), 2147483647i, !select(!select(var_0.c, var_0.c, var_0.c), select(vec3<bool>(var_0.a, false, false), var_0.c, var_0.c.x | true), var_0.c));
    global0 = array<i32, 4>();
    return ~_wgslsmith_dot_vec3_u32(arg_0.xwy, abs(arg_0.wyz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(Struct_5(!func_1(vec4<f32>(456f, 348f, -674f, 1558f), u_input.a, vec2<u32>(32363u, 27885u), Struct_4(false, 2147483647i, vec3<bool>(true, true, false))), any(vec3<bool>(true, true, false)), !(global0[_wgslsmith_index_u32(1u, 4u)] >= u_input.a.x)), (_wgslsmith_div_i32(global0[_wgslsmith_index_u32(57876u, 4u)], global0[_wgslsmith_index_u32(0u, 4u)]) >> (~24317u % 32u)) & global0[_wgslsmith_index_u32(29056u, 4u)]));
    global1 = array<vec3<f32>, 12>();
    var var_1 = Struct_3(Struct_2(any(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-214f - 686f))), _wgslsmith_f_op_f32(min(-506f, -844f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-594f, _wgslsmith_f_op_f32(616f - 466f))), -235f, _wgslsmith_add_u32(var_0, 37250u) <= var_0)))), Struct_1(any(vec2<bool>(true, true)), -1226f, _wgslsmith_sub_i32(-(~(-275i)), 0i)));
    var var_2 = vec2<bool>(var_1.a.a, all(vec2<bool>(true, var_1.a.a)));
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(var_0, 12u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 447f)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.b)))))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(func_5(Struct_5(select(var_1.a.a, var_1.c.a, false), true, !var_2.x), u_input.b.x).wx, vec2<u32>(var_0 >> (var_0 % 32u), _wgslsmith_div_u32(80559u, var_0)) | vec2<u32>(var_0, var_0 & 129561u)), 12u)], vec4<f32>(_wgslsmith_f_op_f32(-813f + _wgslsmith_f_op_f32(-159f - var_1.c.b)), var_1.c.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.c.b))), var_1.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c.b * _wgslsmith_f_op_f32(round(-983f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1000f, var_1.b), var_1.c.b)))));
}

