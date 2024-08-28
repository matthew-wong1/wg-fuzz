struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec2<bool>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 13> = array<vec4<bool>, 13>(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true));

var<private> global1: i32 = -8058i;

var<private> global2: vec2<u32> = vec2<u32>(79047u, 0u);

var<private> global3: vec4<f32>;

var<private> global4: array<bool, 10>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global4 = array<bool, 10>();
    let var_0 = !select(select(select(!vec2<bool>(false, global4[_wgslsmith_index_u32(u_input.a, 10u)]), arg_0.c, true), vec2<bool>(false, true), !arg_0.c), select(!(!arg_0.c), select(!arg_0.c, select(vec2<bool>(arg_0.c.x, arg_0.c.x), vec2<bool>(true, arg_0.c.x), global4[_wgslsmith_index_u32(arg_0.e.x, 10u)]), select(vec2<bool>(false, false), vec2<bool>(global4[_wgslsmith_index_u32(global2.x, 10u)], global4[_wgslsmith_index_u32(81794u, 10u)]), arg_0.c)), vec2<bool>(true, true)), any(vec2<bool>(true, false)));
    var var_1 = Struct_1(vec3<i32>(_wgslsmith_add_i32(13423i, arg_0.a.x) | 766i, 7609i, ~(arg_0.a.x << (global2.x % 32u))) >> (min(arg_0.d, vec3<u32>(global2.x ^ 1u, ~u_input.a, 0u)) % vec3<u32>(32u)), -2086f, vec2<bool>(any(vec4<bool>(all(var_0), all(vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 10u)], false, global4[_wgslsmith_index_u32(arg_0.e.x, 10u)])), var_0.x, true)), arg_0.c.x), ~vec3<u32>(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(1u, arg_0.d.x)), 0u), ~(~vec2<u32>(6952u, 0u)));
    var var_2 = -382f;
    global2 = vec2<u32>(u_input.a, ~countOneBits(~u_input.a));
    return 178f;
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> u32 {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(Struct_1(vec3<i32>(arg_1.a.x, 75i, arg_1.a.x), global3.x, var_0.c, var_0.d, vec2<u32>(4294967295u, global2.x)))))), _wgslsmith_div_f32(-822f, 1f)) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.wx - vec2<f32>(arg_1.b, arg_1.b)) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.b, var_0.b))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global3.zx, global3.wx)) + global3.zz) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-276f, -583f) - vec2<f32>(1063f, var_0.b)))))));
    let var_2 = global3.zyw;
    let var_3 = vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(arg_1.d.x, var_0.e.x), u_input.a << (global2.x % 32u), var_0.d.x), firstTrailingBit(~1u), global2.x, ~global2.x);
    let var_4 = arg_1.c;
    return var_3.x;
}

fn func_1() -> Struct_1 {
    global4 = array<bool, 10>();
    let var_0 = reverseBits(-1i << ((_wgslsmith_mod_u32(~28730u, func_2(global4[_wgslsmith_index_u32(70983u, 10u)], Struct_1(vec3<i32>(2115i, 1i, 2147483647i), 1058f, vec2<bool>(global4[_wgslsmith_index_u32(u_input.a, 10u)], global4[_wgslsmith_index_u32(1u, 10u)]), vec3<u32>(0u, 0u, global2.x), vec2<u32>(u_input.a, u_input.a)))) | firstTrailingBit(global2.x)) % 32u));
    let var_1 = Struct_1(vec3<i32>(var_0 | -var_0, _wgslsmith_add_i32(firstLeadingBit(var_0), -8763i), countOneBits(i32(-1i) * -17666i)), global3.x, vec2<bool>(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~4294967295u, ~1u, 7417u), 10u)], false), firstLeadingBit(~select(vec3<u32>(global2.x, global2.x, global2.x), vec3<u32>(70287u, 3965u, 1u), vec3<bool>(true, global4[_wgslsmith_index_u32(u_input.a, 10u)], false))) >> (abs(max(abs(vec3<u32>(global2.x, 4294967295u, u_input.a)), vec3<u32>(1u, 40670u, 37506u))) % vec3<u32>(32u)), countOneBits(select(min(max(vec2<u32>(0u, global2.x), vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(25075u, 4294967295u) << (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u))), ~vec2<u32>(1u, u_input.a) >> (countOneBits(vec2<u32>(15960u, 63834u)) % vec2<u32>(32u)), vec2<bool>(true, all(vec4<bool>(global4[_wgslsmith_index_u32(u_input.a, 10u)], global4[_wgslsmith_index_u32(80962u, 10u)], global4[_wgslsmith_index_u32(28065u, 10u)], false))))));
    global0 = array<vec4<bool>, 13>();
    global4 = array<bool, 10>();
    return var_1;
}

fn func_4(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = !(!(!vec4<bool>(true, global3.x != arg_0.b, all(vec3<bool>(global4[_wgslsmith_index_u32(1u, 10u)], false, arg_0.c.x)), !global4[_wgslsmith_index_u32(8789u, 10u)])));
    global1 = -37216i;
    var var_1 = func_1();
    let var_2 = -1701f;
    global3 = vec4<f32>(_wgslsmith_f_op_f32(func_3(arg_0)), _wgslsmith_div_f32(253f, _wgslsmith_f_op_f32(-arg_0.b)), arg_0.b, _wgslsmith_f_op_f32(step(var_2, _wgslsmith_f_op_f32(-func_1().b))));
    return _wgslsmith_mult_vec3_i32(var_1.a, vec3<i32>(select(0i, _wgslsmith_div_i32(-1i, ~arg_0.a.x), var_1.c.x), abs(-889i) | _wgslsmith_dot_vec3_i32(select(var_1.a, var_1.a, var_1.c.x), vec3<i32>(-42903i, var_1.a.x, -41044i) << (arg_0.d % vec3<u32>(32u))), firstLeadingBit(_wgslsmith_dot_vec2_i32(func_1().a.xz, arg_0.a.xz))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mod_vec3_i32(func_4(func_1()), _wgslsmith_div_vec3_i32(vec3<i32>(-53899i, 2147483647i, -1i), vec3<i32>(1i, 1i, 1i))) >> (~(~(~vec3<u32>(0u, 1u, global2.x))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-734f, global3.x)) * _wgslsmith_f_op_f32(abs(global3.x))), _wgslsmith_f_op_f32(-global3.x))), !(!(!func_1().c)), vec3<u32>(~(~1u), 0u, _wgslsmith_clamp_u32(firstLeadingBit(global2.x), ~(~0u), 27600u)), firstTrailingBit(vec2<u32>(~(u_input.a ^ u_input.a), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(0u, 1u, u_input.a)), global2.x))));
    var var_1 = 4294967295u;
    let var_2 = -vec2<i32>((~28335i >> (1u % 32u)) >> (var_0.d.x % 32u), var_0.a.x);
    var var_3 = func_1();
    let var_4 = select(vec4<bool>(true, !all(vec2<bool>(false, var_0.c.x)), var_0.c.x, false), vec4<bool>(true, false, var_0.c.x, ~_wgslsmith_mod_i32(var_0.a.x, var_2.x) == -1i), any(!vec3<bool>(true, true, !var_3.c.x)));
    var var_5 = _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(-(vec2<i32>(-34282i, var_3.a.x) >> (var_3.e % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(var_2, var_3.a.xx)), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(-_wgslsmith_clamp_vec2_i32(vec2<i32>(var_3.a.x, 57319i), var_0.a.yy, var_3.a.yy), (vec2<i32>(var_0.a.x, 0i) | vec2<i32>(-13689i, -40542i)) & var_2), _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_div_i32(var_0.a.x, 11236i), firstLeadingBit(2147483647i)), var_3.a.zz)));
    var var_6 = Struct_1(var_0.a, var_3.b, var_3.c, max(~var_0.d, vec3<u32>(global2.x, ~abs(42058u), 0u)), countOneBits(vec2<u32>(12834u, 45245u)));
    var var_7 = !var_3.c.x & false;
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_add_u32(48583u, abs(3797u)) | func_2(true, Struct_1(vec3<i32>(var_2.x, 7933i, -8341i), -483f, var_4.xz, var_6.d, vec2<u32>(1u, 1397u)))) | var_6.e.x, ~var_3.a, firstTrailingBit(select(abs(vec4<i32>(20122i, 1i, -34650i, -1i)), vec4<i32>(var_2.x, var_0.a.x, -2147483647i, var_0.a.x), !var_4)) >> (~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(22302u, var_0.d.x, 2979u, var_0.d.x)) % vec4<u32>(32u)), 23642u);
}

