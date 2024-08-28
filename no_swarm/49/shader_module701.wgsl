struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 22> = array<vec3<bool>, 22>(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true));

var<private> global1: vec4<f32> = vec4<f32>(-326f, -529f, 1147f, -2092f);

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(-26030i, 17141u, false), Struct_1(i32(-2147483648), 4294967295u, false), Struct_1(11592i, 0u, false), Struct_1(-296i, 72544u, true), Struct_1(-1i, 1u, true), Struct_1(1i, 0u, true), Struct_1(-7286i, 1u, false), Struct_1(-99695i, 110830u, true), Struct_1(-1i, 9918u, false), Struct_1(i32(-2147483648), 0u, false), Struct_1(-1i, 1u, true), Struct_1(1i, 4294967295u, false), Struct_1(2147483647i, 0u, false), Struct_1(2147483647i, 0u, false), Struct_1(0i, 34308u, true), Struct_1(1i, 49235u, false), Struct_1(-10675i, 596u, true), Struct_1(2147483647i, 4294967295u, true), Struct_1(i32(-2147483648), 4294967295u, true), Struct_1(2147483647i, 1u, true), Struct_1(-8166i, 9014u, true), Struct_1(-1i, 4294967295u, true), Struct_1(-1i, 4294967295u, true), Struct_1(i32(-2147483648), 1u, false), Struct_1(2147483647i, 1u, true), Struct_1(11882i, 56876u, false), Struct_1(1440i, 17394u, false), Struct_1(0i, 4294967295u, false), Struct_1(1i, 4294967295u, false), Struct_1(-1i, 11392u, true));

var<private> global3: Struct_1;

var<private> global4: vec2<u32> = vec2<u32>(47350u, 1u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> vec4<u32> {
    var var_0 = select(select(vec4<bool>(true, true, true, any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), global3.c))), select(select(vec4<bool>(global3.c, global3.c, true, global3.c), select(vec4<bool>(true, global3.c, global3.c, true), vec4<bool>(global3.c, false, global3.c, false), vec4<bool>(global3.c, global3.c, false, global3.c)), vec4<bool>(true, global3.c, true, global3.c)), select(select(vec4<bool>(global3.c, false, true, global3.c), vec4<bool>(global3.c, global3.c, global3.c, global3.c), vec4<bool>(true, global3.c, global3.c, true)), !vec4<bool>(false, global3.c, global3.c, global3.c), vec4<bool>(false, false, global3.c, global3.c)), !vec4<bool>(global3.c, true, true, true)), !vec4<bool>(true, true, any(vec3<bool>(true, false, true)), global3.c)), select(vec4<bool>(false, true, global3.c, true && global3.c), vec4<bool>(!global3.c, global1.x <= 346f, global3.c, true), select(select(vec4<bool>(true, global3.c, true, true), vec4<bool>(true, true, true, true), true), !vec4<bool>(false, global3.c, global3.c, global3.c), !vec4<bool>(true, global3.c, global3.c, global3.c))), vec4<bool>(all(!select(vec4<bool>(global3.c, global3.c, true, global3.c), vec4<bool>(false, global3.c, true, global3.c), vec4<bool>(true, global3.c, global3.c, global3.c))), any(!vec2<bool>(global3.c, false)), any(vec2<bool>(global3.c != global3.c, !global3.c)), !(_wgslsmith_dot_vec4_u32(vec4<u32>(global4.x, global3.b, 0u, u_input.b.x), vec4<u32>(u_input.b.x, global4.x, global4.x, global4.x)) == global3.b)));
    return ~vec4<u32>(abs(global4.x), _wgslsmith_sub_u32(83095u, _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(global4.x, u_input.c, global4.x), vec3<u32>(9071u, global3.b, 28907u)))), global3.b, 4294967295u);
}

fn func_2(arg_0: f32, arg_1: i32) -> f32 {
    global4 = u_input.b;
    var var_0 = Struct_1(countOneBits(~(u_input.a << (global4.x % 32u))), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(min(6841u, 0u), _wgslsmith_mult_u32(14881u, u_input.b.x), firstTrailingBit(6952u), countOneBits(global4.x)), _wgslsmith_add_vec4_u32(~vec4<u32>(global3.b, 0u, 0u, u_input.d), firstTrailingBit(vec4<u32>(0u, u_input.c, 4294967295u, 76868u)))), select(_wgslsmith_sub_vec4_u32(~vec4<u32>(552u, 27408u, global3.b, u_input.b.x), vec4<u32>(1u, global4.x, 4294967295u, global4.x)), select(~vec4<u32>(0u, 1u, 1u, 28598u), func_3(), vec4<bool>(true, false, true, global3.c)), select(vec4<bool>(global3.c, global3.c, true, true), select(vec4<bool>(true, global3.c, true, global3.c), vec4<bool>(false, global3.c, true, false), vec4<bool>(false, global3.c, false, false)), global3.c))), !all(select(vec3<bool>(global3.c, false, true), !global0[_wgslsmith_index_u32(u_input.c, 22u)], vec3<bool>(global3.c, global3.c, true))));
    var var_1 = vec4<u32>(var_0.b, global4.x, 21701u, _wgslsmith_sub_u32(global4.x, var_0.b >> ((var_0.b | _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, global4.x), vec3<u32>(49264u, 11483u, 89648u))) % 32u)));
    let var_2 = ~(-1i & global3.a);
    var var_3 = firstLeadingBit(firstTrailingBit(0u));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * global1.x) * -1033f))), 681f));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: f32) -> vec4<f32> {
    global4 = ~(~u_input.b);
    let var_0 = global3.b;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_div_f32(557f, global1.x)), global1.x)));
    global3 = global2[_wgslsmith_index_u32(global3.b, 30u)];
    let var_2 = global3.a;
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - 863f) * _wgslsmith_f_op_f32(exp2(arg_2))), _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(-1205f * arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.x)) + _wgslsmith_f_op_f32(sign(var_1))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-165f, -289f, var_1, -1957f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(873f, 1632f, 302f, -111f)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2(1312f, global3.a)), _wgslsmith_f_op_f32(floor(283f)), _wgslsmith_f_op_f32(-global1.x), global1.x) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1, -631f, 370f, -1342f)))))), select(vec4<bool>(-u_input.a > ~global3.a, arg_0, false, !global3.c), !vec4<bool>(global3.c, !global3.c, true, all(vec3<bool>(arg_0, arg_0, true))), arg_0)));
}

fn func_5(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: i32) -> vec3<u32> {
    global4 = u_input.b;
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1));
    var var_1 = global2[_wgslsmith_index_u32(~1u, 30u)];
    global0 = array<vec3<bool>, 22>();
    return abs(firstLeadingBit(reverseBits(~(~vec3<u32>(1u, global4.x, global3.b)))));
}

fn func_1(arg_0: i32) -> f32 {
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(step(1692f, _wgslsmith_f_op_f32(-global1.x)))), global1.x, _wgslsmith_f_op_f32(round(-214f))));
    var var_0 = !(global1.x > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-147f - -184f)), 1f)));
    global4 = u_input.b;
    let var_1 = func_5(global1.x, _wgslsmith_f_op_vec4_f32(func_4(!any(select(vec4<bool>(global3.c, global3.c, global3.c, global3.c), vec4<bool>(global3.c, true, false, global3.c), false)), -1246f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(-1291f, 2147483647i)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2233f)) + _wgslsmith_f_op_f32(-global1.x))))), Struct_1(-global3.a, countOneBits(firstTrailingBit(u_input.b.x)), any(vec2<bool>(global3.c, global3.c)) && true), ~u_input.a);
    let var_2 = any(select(vec4<bool>(global3.c, any(vec2<bool>(false, false)) | all(global0[_wgslsmith_index_u32(83808u, 22u)]), any(select(vec4<bool>(false, global3.c, global3.c, false), vec4<bool>(global3.c, false, false, false), vec4<bool>(true, global3.c, global3.c, global3.c))), all(vec4<bool>(global3.c, false, true, global3.c))), vec4<bool>(!global3.c, !(var_1.x < 1u), !any(vec2<bool>(false, true)), global3.c), true));
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 1000f, -790f, global1.x) + vec4<f32>(global1.x, global1.x, 866f, -1412f)) + vec4<f32>(global1.x, 955f, global1.x, global1.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1420f, 252f, -2147f, global1.x), vec4<f32>(global1.x, global1.x, -427f, global1.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(611f, global1.x, -339f, global1.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1069f, global1.x, 811f, global1.x))), vec4<f32>(-1000f, global1.x, -532f, -448f)))));
    global2 = array<Struct_1, 30>();
    var var_0 = -2147483647i;
    var var_1 = Struct_1(-1i, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(global3.b, 4294967295u)), abs(u_input.b)), all(!(!vec3<bool>(true, global3.c, true))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -460f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global1.x, global1.x))), global1.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(485f, global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.x, global1.x)))) * global1.x), _wgslsmith_f_op_f32(func_1(var_1.a)));
    global4 = _wgslsmith_mod_vec2_u32(func_3().zz, vec2<u32>(global3.b, _wgslsmith_mult_u32(u_input.b.x, _wgslsmith_add_u32(~var_1.b, reverseBits(var_1.b)))));
    var var_3 = ~(~var_1.b);
    var_0 = firstTrailingBit(min(firstLeadingBit(u_input.a & -14859i) >> (~func_3().x % 32u), countOneBits(2147483647i)));
    let var_4 = global2[_wgslsmith_index_u32(var_1.b, 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(~(-2147483647i)), vec3<f32>(_wgslsmith_f_op_f32(func_1(i32(-1i) * -28071i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_f_op_f32(max(global1.x, global1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(159f + _wgslsmith_div_f32(global1.x, var_2.x)))), select(select(-_wgslsmith_mod_vec4_i32(vec4<i32>(global3.a, -1i, var_4.a, global3.a), vec4<i32>(var_1.a, var_1.a, -30113i, u_input.a)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.a, 2147483647i, var_1.a, var_1.a), vec4<i32>(var_1.a, global3.a, var_4.a, 1i)), !select(vec4<bool>(global3.c, global3.c, true, true), vec4<bool>(false, true, true, false), vec4<bool>(var_1.c, var_4.c, true, var_1.c))), abs(min(vec4<i32>(2147483647i, 39869i, global3.a, -76914i) >> (vec4<u32>(var_4.b, global3.b, 80059u, 47037u) % vec4<u32>(32u)), abs(vec4<i32>(var_1.a, 4685i, -25604i, -2147483647i)))), global3.c), ~(~firstLeadingBit(vec3<u32>(global3.b, 132613u, var_1.b) ^ vec3<u32>(39308u, 47413u, 1u))), firstTrailingBit(vec4<u32>(global3.b, 4294967295u, var_1.b, ~4294967295u)));
}

