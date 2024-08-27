struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20>;

var<private> global1: Struct_1;

var<private> global2: array<vec3<u32>, 6>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    var var_0 = vec4<bool>(true, global0[_wgslsmith_index_u32(min(31185u, u_input.b.x), 20u)], all(vec2<bool>(!global0[_wgslsmith_index_u32(abs(u_input.b.x), 20u)], any(vec2<bool>(false, true)))), all(!select(vec3<bool>(global0[_wgslsmith_index_u32(global1.d, 20u)], false, true), !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 20u)], true, global0[_wgslsmith_index_u32(35705u, 20u)]), all(vec4<bool>(global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(global1.b, 20u)], global0[_wgslsmith_index_u32(global1.d, 20u)], true)))));
    let var_1 = countOneBits(_wgslsmith_mult_vec2_u32(~(u_input.b.zx ^ ~vec2<u32>(51694u, global1.b)), reverseBits(countOneBits(vec2<u32>(4294967295u, global1.b)))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-565f)))), global1.a)), ~18766u, abs(~48170i), global1.d, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_div_f32(-148f, global1.e), global1.a), _wgslsmith_div_f32(global1.e, global1.e), !(true || any(vec3<bool>(true, var_0.x, var_0.x))))));
    let var_3 = min(_wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_add_u32(reverseBits(38568u), select(var_2.d, var_2.d, true))), _wgslsmith_mod_u32(global1.b, _wgslsmith_div_u32(~22509u, select(global1.b, var_1.x, global0[_wgslsmith_index_u32(u_input.b.x, 20u)])))), global1.b);
    let var_4 = var_2;
    return global1.a;
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -838f)))), _wgslsmith_f_op_f32(func_3()), true)), 146f, arg_0.a, 1448f);
    var var_1 = Struct_1(var_0.x, 23566u, u_input.a, ~u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.e))));
    var_1 = arg_0;
    var var_2 = firstTrailingBit(~u_input.a);
    let var_3 = arg_0;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -873f), _wgslsmith_f_op_f32(-var_1.e)))), var_0.x);
}

fn func_1(arg_0: i32, arg_1: vec2<bool>, arg_2: bool, arg_3: f32) -> u32 {
    var var_0 = vec2<bool>(arg_1.x, true);
    global0 = array<bool, 20>();
    var_0 = select(vec2<bool>(min(u_input.a, abs(0i)) == firstLeadingBit(-2147483647i), false), !arg_1, !(global1.e < _wgslsmith_f_op_f32(func_2(Struct_1(734f, global1.d, -2147483647i, u_input.b.x, -269f)))));
    var_0 = select(!select(vec2<bool>(false, false), select(vec2<bool>(arg_2, true), vec2<bool>(true, true), global0[_wgslsmith_index_u32(80415u, 20u)]), !(!arg_1)), vec2<bool>(false, all(select(!arg_1, arg_1, all(vec3<bool>(false, true, false))))), arg_1);
    var var_1 = true;
    return _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(global1.b, 7331u, 62452u, 4294967295u)), u_input.b), reverseBits(vec4<u32>(53913u, global1.b, global1.b, 1u)) >> (vec4<u32>(18895u, global1.b, u_input.b.x, u_input.b.x) % vec4<u32>(32u))) | vec4<u32>(u_input.b.x | 62499u, global1.d, ~_wgslsmith_add_u32(1u, u_input.b.x), ~(~u_input.b.x)), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global1.e, func_1(~(~global1.c), vec2<bool>(any(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], true), vec2<bool>(true, true), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 20u)]))), !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(u_input.b.x, 6u)], global2[_wgslsmith_index_u32(58512u, 6u)]), 20u)]), true, -468f), ~(i32(-1i) * -(global1.c & u_input.a)), _wgslsmith_sub_u32(80896u, abs(~(~17722u))), _wgslsmith_f_op_f32(func_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a + global1.e)), ~countOneBits(0u), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-24978i, 25458i)), _wgslsmith_dot_vec4_u32(u_input.b, u_input.b), global1.e))));
    let var_1 = _wgslsmith_sub_vec2_u32(~vec2<u32>(func_1(u_input.a, !vec2<bool>(global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(0u, 20u)]), true, var_0.a), global1.d), min(~_wgslsmith_add_vec2_u32(u_input.b.yy, vec2<u32>(4294967295u, var_0.b)), ~u_input.b.xz >> (reverseBits(u_input.b.wy) % vec2<u32>(32u))) >> (min(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.d, global1.d), reverseBits(vec2<u32>(global1.b, 4294967295u))), vec2<u32>(u_input.b.x, 25327u)) % vec2<u32>(32u)));
    var var_2 = select(vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.x, ~(~global1.d)), 20u)]), !select(select(vec2<bool>(global0[_wgslsmith_index_u32(50174u, 20u)], true), !vec2<bool>(true, global0[_wgslsmith_index_u32(103970u, 20u)]), false), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], global0[_wgslsmith_index_u32(global1.b, 20u)]), !vec2<bool>(true, global0[_wgslsmith_index_u32(var_1.x, 20u)]), select(vec2<bool>(true, global0[_wgslsmith_index_u32(global1.d, 20u)]), vec2<bool>(false, false), global0[_wgslsmith_index_u32(var_0.b, 20u)])), select(vec2<bool>(true, true), vec2<bool>(true, global0[_wgslsmith_index_u32(global1.b, 20u)]), !vec2<bool>(true, global0[_wgslsmith_index_u32(var_1.x, 20u)]))), !vec2<bool>(!global0[_wgslsmith_index_u32(global1.b, 20u)] | select(false, global0[_wgslsmith_index_u32(u_input.b.x, 20u)], false), !any(vec2<bool>(global0[_wgslsmith_index_u32(global1.b, 20u)], global0[_wgslsmith_index_u32(var_0.d, 20u)]))));
    var var_3 = firstTrailingBit(_wgslsmith_div_u32(global1.b, 13228u)) >> (var_1.x % 32u);
    var var_4 = max(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-51704i, var_0.c, var_0.c, 1i), vec4<i32>(-6352i, -1675i, global1.c, global1.c)), firstLeadingBit(vec4<i32>(var_0.c, 1i, u_input.a, global1.c))), min(vec4<i32>(global1.c, global1.c, -1i, u_input.a), -vec4<i32>(u_input.a, 0i, global1.c, -1i)), -vec4<i32>(global1.c, global1.c, 35406i, 34179i)), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(0i, var_0.c, -17967i, -1i), vec4<i32>(u_input.a, -1i, -20157i, -25853i)), vec4<i32>(1i, global1.c, 81411i, -14346i) << ((vec4<u32>(var_1.x, 76739u, 42256u, global1.d) << (u_input.b % vec4<u32>(32u))) % vec4<u32>(32u)))) ^ firstTrailingBit(reverseBits(vec4<i32>(global1.c, u_input.a, _wgslsmith_sub_i32(-1i, u_input.a), firstLeadingBit(global1.c))));
    global2 = array<vec3<u32>, 6>();
    var var_5 = global1.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_0.e)))), -1000f, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(669f, 616f, -1291f))))))), -_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(260i, -1i, var_0.c, 49408i) ^ vec4<i32>(global1.c, 27826i, 0i, 1i), _wgslsmith_sub_vec4_i32(vec4<i32>(var_4.x, global1.c, 0i, global1.c), vec4<i32>(1i, 74293i, -16556i, var_4.x)), vec4<i32>(-2147483647i, var_4.x, var_0.c, var_4.x)), vec4<i32>(var_4.x, -1i, 502i, var_0.c) | _wgslsmith_div_vec4_i32(vec4<i32>(global1.c, var_4.x, 68202i, var_4.x), vec4<i32>(0i, u_input.a, 9045i, 9745i))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-714f, _wgslsmith_div_f32(-144f, global1.e), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(global1.a - -829f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global1.e, -227f)), -1338f)))));
}

