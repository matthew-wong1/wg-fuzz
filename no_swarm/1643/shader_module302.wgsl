struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: u32;

var<private> global2: Struct_1 = Struct_1(vec2<u32>(38714u, 41338u), vec2<i32>(i32(-2147483648), 556i), vec2<f32>(1252f, 235f));

var<private> global3: Struct_1;

var<private> global4: array<vec2<u32>, 10> = array<vec2<u32>, 10>(vec2<u32>(1u, 11394u), vec2<u32>(1u, 18849u), vec2<u32>(1u, 1u), vec2<u32>(26790u, 1u), vec2<u32>(2908u, 5202u), vec2<u32>(100808u, 4294967295u), vec2<u32>(0u, 93857u), vec2<u32>(8988u, 4294967295u), vec2<u32>(51357u, 0u), vec2<u32>(6259u, 1u));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> vec2<i32> {
    global0 = vec2<bool>(any(vec2<bool>(true, true)), any(arg_0.zw) || !(!any(vec4<bool>(arg_0.x, true, true, global0.x))));
    global3 = arg_1;
    let var_0 = Struct_1(countOneBits(countOneBits(select(~global2.a, abs(arg_1.a), true))), _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(global3.b, u_input.b), ~arg_1.b, -vec2<i32>(_wgslsmith_mod_i32(-16471i, -1i), -2147483647i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global3.c.x, 366f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(arg_1.c.x, 739f)))))));
    global0 = !vec2<bool>(!(~5634u >= ~global2.a.x), !select(!arg_0.x, true, -1195i < arg_1.b.x));
    let var_1 = Struct_1(global3.a, min(_wgslsmith_div_vec2_i32(global3.b, ~arg_1.b), global3.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_1.c, vec2<f32>(global3.c.x, 724f)) - arg_1.c));
    return _wgslsmith_clamp_vec2_i32(var_1.b, -firstLeadingBit(vec2<i32>(var_0.b.x, global3.b.x ^ -2147483647i)), vec2<i32>(-58038i, -2147483647i));
}

fn func_2() -> Struct_1 {
    global4 = array<vec2<u32>, 10>();
    var var_0 = Struct_1(global4[_wgslsmith_index_u32(countOneBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(global3.a.x, 34307u, 37721u, u_input.e), _wgslsmith_div_vec4_u32(vec4<u32>(global3.a.x, 56454u, global2.a.x, global2.a.x), vec4<u32>(global3.a.x, 33u, 0u, global2.a.x)))), 10u)], select(firstTrailingBit(~(-vec2<i32>(global2.b.x, global3.b.x))), func_3(!vec4<bool>(global0.x, false, global0.x, global0.x), Struct_1(vec2<u32>(46779u, global3.a.x), global3.b, global2.c)), vec2<bool>(global0.x, !all(vec4<bool>(true, global0.x, global0.x, true)))), _wgslsmith_f_op_vec2_f32(step(global3.c, global2.c)));
    let var_1 = vec3<i32>(~max(u_input.d, 39628i), i32(-1i) * -select(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.x, 30832i), vec2<i32>(-2147483647i, 17188i)), countOneBits(u_input.d), false), -max(min(_wgslsmith_dot_vec3_i32(vec3<i32>(181i, global2.b.x, -2147483647i), vec3<i32>(global3.b.x, u_input.c, global3.b.x)), -2147483647i), i32(-1i) * -25138i));
    let var_2 = !(!vec3<bool>(global0.x, !global0.x, global0.x));
    let var_3 = !vec2<bool>(false, var_2.x);
    return Struct_1(~(~min(~vec2<u32>(23981u, u_input.a), vec2<u32>(global3.a.x, 0u) >> (vec2<u32>(1u, var_0.a.x) % vec2<u32>(32u)))), ~(-max(vec2<i32>(-2147483647i, global3.b.x), _wgslsmith_add_vec2_i32(vec2<i32>(-22092i, 20515i), vec2<i32>(global3.b.x, 1i)))), vec2<f32>(global2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-173f - global2.c.x)))));
}

fn func_4(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = _wgslsmith_mult_u32(1u, ~arg_0.a.x) ^ (_wgslsmith_clamp_u32(~0u, ~(~0u), 1u) >> (~(~(~global3.a.x)) % 32u));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(global2.c)))) * global2.c)));
    global1 = func_2().a.x;
    let var_2 = reverseBits(firstLeadingBit(-_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 30418i, u_input.c) << (vec3<u32>(4294967295u, 0u, 3246u) % vec3<u32>(32u)), vec3<i32>(0i, -41375i, global3.b.x))));
    var var_3 = vec4<bool>(all(vec4<bool>(false, !global0.x, true | any(vec4<bool>(true, false, global0.x, global0.x)), true)), !global0.x, _wgslsmith_f_op_f32(-global2.c.x) > _wgslsmith_f_op_f32(select(333f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1706f + var_1.x), 1f)), any(select(vec2<bool>(false, true), vec2<bool>(global0.x, true), global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1868f * 104f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.x)));
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(arg_0.c.x, 585f, true)), -703f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -1170f) * global3.c)) * _wgslsmith_f_op_vec2_f32(arg_0.c + _wgslsmith_f_op_vec2_f32(-global2.c)))));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<i32>) -> Struct_1 {
    global3 = Struct_1(vec2<u32>(1u, countOneBits(~_wgslsmith_mult_u32(u_input.e, global3.a.x))), ~(u_input.b >> (global2.a % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1841f, global2.c.x))) * vec2<f32>(1f, 1f)));
    var var_0 = Struct_1(~(~global2.a), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(-2147483647i, arg_1.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.x + _wgslsmith_f_op_f32(-579f * 1145f))), 660f));
    global3 = Struct_1(max(_wgslsmith_mod_vec2_u32(vec2<u32>(64615u, global3.a.x) ^ (vec2<u32>(1600u, u_input.a) >> (global3.a % vec2<u32>(32u))), vec2<u32>(global3.a.x, _wgslsmith_add_u32(38654u, 1u))), ~vec2<u32>(global2.a.x ^ var_0.a.x, var_0.a.x)), global3.b, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_4(func_2())))));
    let var_1 = Struct_1(global2.a, -u_input.b, vec2<f32>(1228f, global2.c.x));
    var var_2 = select(vec4<bool>(any(!(!arg_0)), true, select(select(true, false | global0.x, !arg_0.x), all(vec3<bool>(arg_0.x, global0.x, arg_0.x)), !(arg_0.x || false)), ((global3.a.x < 21503u) || true) != arg_0.x), !(!(!(!vec4<bool>(true, global0.x, global0.x, false)))), u_input.b.x == abs(~(~u_input.d)));
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.x, -678f, arg_1.c.x, global2.c.x))) - vec4<f32>(-1009f, global3.c.x, _wgslsmith_f_op_f32(global3.c.x * global3.c.x), -129f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-248f, global2.c.x, global2.c.x, -301f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(369f, -1226f, 1000f, arg_0.c.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c.x, 169f, 1107f, global2.c.x)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(363f, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(arg_1.c.x - -167f)), _wgslsmith_f_op_vec2_f32(func_4(Struct_1(vec2<u32>(4294967295u, 0u), arg_1.b, arg_1.c))).x, _wgslsmith_f_op_f32(-global3.c.x)) + vec4<f32>(_wgslsmith_f_op_f32(sign(arg_0.c.x)), arg_0.c.x, _wgslsmith_f_op_f32(min(global2.c.x, 2413f)), _wgslsmith_f_op_f32(select(arg_0.c.x, _wgslsmith_f_op_f32(global3.c.x - -1000f), global0.x || true)))));
    let var_1 = arg_0;
    global1 = 4294967295u;
    global4 = array<vec2<u32>, 10>();
    global1 = ~arg_1.a.x;
    return ~(~vec2<u32>(~_wgslsmith_clamp_u32(4294967295u, 8435u, 0u), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(func_5(func_1(vec3<bool>(global3.c.x != 951f, global2.c.x == global3.c.x, global0.x || global0.x), -reverseBits(global2.b)), Struct_1(vec2<u32>(~u_input.e, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.a.x, u_input.a, 48226u), vec3<u32>(global2.a.x, global3.a.x, global3.a.x))), global2.b, vec2<f32>(global3.c.x, _wgslsmith_f_op_vec2_f32(func_4(Struct_1(global4[_wgslsmith_index_u32(55562u, 10u)], global3.b, vec2<f32>(-209f, 109f)))).x))), ((~vec2<i32>(global3.b.x, u_input.c) ^ -global3.b) << (_wgslsmith_clamp_vec2_u32(global3.a, vec2<u32>(global2.a.x, u_input.a), countOneBits(global2.a)) % vec2<u32>(32u))) ^ select(vec2<i32>(-1i) * -vec2<i32>(0i, 0i), vec2<i32>(min(23480i, 2147483647i), _wgslsmith_mod_i32(global3.b.x, 6591i)), select(select(vec2<bool>(true, false), vec2<bool>(false, global0.x), true), select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, false), vec2<bool>(global0.x, global0.x)), !vec2<bool>(global0.x, global0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(Struct_1(vec2<u32>(4294967295u, 18215u), global3.b, global2.c))) - _wgslsmith_f_op_vec2_f32(-global3.c)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c.x, global2.c.x))) - _wgslsmith_f_op_vec2_f32(global2.c + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.c.x, -1588f)))));
    global2 = Struct_1(global3.a, vec2<i32>(func_2().b.x, -6097i), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.c.x, global2.c.x) - vec2<f32>(1236f, global2.c.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1000f)))), global3.c, select(any(vec3<bool>(global0.x, global0.x, global0.x)), global0.x, all(select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, false), vec2<bool>(true, global0.x)))))));
    let var_0 = func_1(vec3<bool>(true == (global3.c.x > _wgslsmith_f_op_f32(-global3.c.x)), !(func_1(vec3<bool>(false, true, global0.x), vec2<i32>(global2.b.x, global3.b.x)).c.x <= global3.c.x), global0.x), -u_input.b);
    global3 = var_0;
    global2 = var_0;
    global1 = ~(~countOneBits(_wgslsmith_clamp_u32(0u, global3.a.x, 72107u))) & 20542u;
    let x = u_input.a;
    s_output = StorageBuffer(min(vec4<u32>(firstTrailingBit(global2.a.x), global3.a.x, global2.a.x, 55838u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(22058u, 7086u, 13041u, global3.a.x) >> (vec4<u32>(23237u, 66758u, global3.a.x, 133403u) % vec4<u32>(32u)), ~vec4<u32>(u_input.e, 78854u, u_input.a, 7048u))), 50654i);
}

