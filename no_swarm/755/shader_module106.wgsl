struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: bool,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7>;

var<private> global1: f32;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec2<i32>(-2282i, -7398i), vec2<u32>(1u, 865u), true, -709f, vec2<bool>(false, false)), Struct_1(vec2<i32>(1i, 2147483647i), vec2<u32>(88869u, 1u), true, 164f, vec2<bool>(true, false)), false, 21925i, Struct_1(vec2<i32>(-37843i, 0i), vec2<u32>(3989u, 33166u), false, 766f, vec2<bool>(true, true)));

var<private> global3: array<vec4<f32>, 22>;

var<private> global4: array<vec2<f32>, 1>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    let var_0 = -(~((vec4<i32>(-13423i, -4740i, 55440i, -1i) & _wgslsmith_mod_vec4_i32(vec4<i32>(-31141i, 40261i, global2.b.a.x, global2.d), vec4<i32>(global2.e.a.x, 0i, global2.a.a.x, global2.e.a.x))) & vec4<i32>(_wgslsmith_clamp_i32(global2.d, 1i, 2147483647i), 2147483647i, global2.a.a.x, -2147483647i)));
    let var_1 = Struct_1(~abs(global2.a.a), ~(~vec2<u32>(66662u, 7899u) | max(global2.b.b, global2.a.b)) & min(vec2<u32>(_wgslsmith_mult_u32(18893u, 0u), global2.b.b.x), _wgslsmith_clamp_vec2_u32(~global2.e.b, abs(global2.a.b), ~global2.e.b)), firstTrailingBit(49937i) > ~var_0.x, 1000f, vec2<bool>(u_input.a > 1u, any(select(select(vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 7u)], true), vec3<bool>(global0[_wgslsmith_index_u32(3844u, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)], true), vec3<bool>(false, global0[_wgslsmith_index_u32(global2.e.b.x, 7u)], global0[_wgslsmith_index_u32(4824u, 7u)])), select(vec3<bool>(global2.e.e.x, true, true), vec3<bool>(false, true, global2.b.c), vec3<bool>(global2.b.c, global0[_wgslsmith_index_u32(25498u, 7u)], false)), false))));
    global2 = Struct_2(Struct_1(vec2<i32>(-var_1.a.x, 0i), ~select(vec2<u32>(global2.b.b.x, global2.e.b.x), _wgslsmith_div_vec2_u32(vec2<u32>(global2.b.b.x, u_input.a), vec2<u32>(4294967295u, global2.b.b.x)), true), global2.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)), vec2<bool>((global2.b.b.x & u_input.a) >= 4294967295u, any(select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 7u)], true), var_1.e, global2.a.e)))), Struct_1(select(-reverseBits(vec2<i32>(var_1.a.x, var_1.a.x)), vec2<i32>(_wgslsmith_dot_vec3_i32(var_0.zww, var_0.wxy), firstTrailingBit(13072i)), global2.b.e), var_1.b, global2.c, 122f, vec2<bool>(select(false && var_1.e.x, global0[_wgslsmith_index_u32(u_input.a, 7u)], !global2.c), global2.e.a.x == -var_1.a.x)), any(vec2<bool>(any(!vec3<bool>(true, var_1.c, true)), true)), -7661i, var_1);
    return var_1.d;
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.e.d, _wgslsmith_f_op_f32(func_3())), global4[_wgslsmith_index_u32(global2.b.b.x, 1u)]));
    var var_1 = 11734i;
    let var_2 = select(~vec4<i32>(-2147483647i, 1i, ~(-75823i), global2.d), _wgslsmith_div_vec4_i32(vec4<i32>(-global2.b.a.x, firstLeadingBit(firstLeadingBit(-39755i)), select(global2.a.a.x, global2.d, global0[_wgslsmith_index_u32(select(0u, u_input.a, true), 7u)]), 14638i), vec4<i32>(i32(-1i) * -1i, _wgslsmith_add_i32(max(-1i, -1i), -2147483647i), ~abs(-1i), ~global2.b.a.x)), vec4<bool>(true & !(!global0[_wgslsmith_index_u32(1u, 7u)]), any(vec3<bool>(false, true, var_0.x >= 1068f)), all(vec3<bool>(select(false, global2.a.e.x, false), false, global2.c)), global2.a.c));
    return Struct_2(Struct_1(countOneBits(global2.a.a), ~abs(global2.e.b), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global2.e.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, 61578u), vec4<u32>(12847u, u_input.a, 26117u, global2.e.b.x))), 7u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.d - -1108f) * -1041f)), select(select(select(vec2<bool>(global2.a.e.x, global0[_wgslsmith_index_u32(global2.a.b.x, 7u)]), vec2<bool>(global2.b.e.x, true), global2.b.e), global2.b.e, true), global2.b.e, global2.a.e)), global2.a, !select(false, true, !(global2.a.e.x & true)), ~(var_2.x ^ -var_2.x), global2.a);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> vec4<bool> {
    global0 = array<bool, 7>();
    global3 = array<vec4<f32>, 22>();
    global4 = array<vec2<f32>, 1>();
    let var_0 = func_2().a;
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(global4[_wgslsmith_index_u32(4294967295u, 1u)])))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4[_wgslsmith_index_u32(u_input.a, 1u)])))))), arg_0.b.e));
    return vec4<bool>(_wgslsmith_dot_vec4_u32(reverseBits(countOneBits(vec4<u32>(global2.e.b.x, 5602u, arg_1.b.x, 0u))), firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.b.b.x, var_0.b.x, 0u, arg_0.e.b.x), vec4<u32>(4294967295u, global2.a.b.x, 4294967295u, u_input.a)))) >= 16905u, false, all(vec2<bool>(!var_0.e.x, true)), false);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1) -> bool {
    global3 = array<vec4<f32>, 22>();
    global4 = array<vec2<f32>, 1>();
    var var_0 = !func_4(func_2(), Struct_1(arg_1.a, arg_1.b, all(vec2<bool>(arg_1.e.x, false)), 701f, vec2<bool>(arg_1.e.x, true)), Struct_2(func_2().e, func_2().e, (global2.b.e.x | false) | true, firstTrailingBit(-569i), Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(-23334i, 10943i), global2.a.a), arg_1.b, true, _wgslsmith_f_op_f32(step(global2.b.d, arg_1.d)), global2.e.e)));
    var var_1 = Struct_3(global2.a.d, global2.e.b.x);
    var_1 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_1.d, -1770f))), ~global2.b.b.x);
    return var_0.x;
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_2, arg_3: i32) -> StorageBuffer {
    return StorageBuffer(1u, -201f, ~vec3<u32>(firstTrailingBit(global2.b.b.x), ~0u, 2104u & global2.e.b.x) ^ vec3<u32>(~countOneBits(15902u), ~firstTrailingBit(arg_1.b), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(36970u, global2.b.b.x, arg_2.e.b.x), vec3<u32>(1u, 1u, 0u)), arg_1.b)), vec3<u32>(~(~global2.a.b.x), 1u, firstLeadingBit(~48300u)) >> (vec3<u32>(63188u, 13014u, 1u) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(abs(29442u) | u_input.a);
    let var_1 = global2.e.e;
    let var_2 = select(global2.a.a, abs(vec2<i32>(2147483647i, global2.d)), global2.b.e.x);
    let var_3 = ~(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(8288u, global2.a.b.x, global2.b.b.x, 63268u), vec4<u32>(u_input.a, 10622u, u_input.a, u_input.a)))) << (select(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, ~62566u, 1u), ~reverseBits(vec4<u32>(global2.b.b.x, global2.b.b.x, u_input.a, u_input.a))), ~abs(countOneBits(vec4<u32>(global2.b.b.x, global2.b.b.x, 4294967295u, u_input.a))), all(global2.b.e)) % vec4<u32>(32u));
    global0 = array<bool, 7>();
    let x = u_input.a;
    s_output = func_5(!vec3<bool>(global2.e.c, true, select(func_1(vec3<i32>(-2147483647i, var_2.x, 2147483647i), global2.e), var_1.x, func_2().b.c)), Struct_3(_wgslsmith_f_op_f32(-919f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.d))), 1u), Struct_2(func_2().b, Struct_1(vec2<i32>(var_2.x, _wgslsmith_clamp_i32(-28808i, 2147483647i, -2147483647i)), _wgslsmith_mod_vec2_u32(var_3.zz, vec2<u32>(1u, global2.a.b.x)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1135f * -1837f)), vec2<bool>(select(true, global2.b.c, global2.a.c), any(vec3<bool>(false, global2.e.c, global2.a.e.x)))), true, ~_wgslsmith_dot_vec3_i32(vec3<i32>(global2.d, -2147483647i, global2.b.a.x), vec3<i32>(-40673i, var_2.x, 28000i)) ^ var_2.x, global2.a), global2.e.a.x);
}

