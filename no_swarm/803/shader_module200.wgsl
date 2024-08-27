struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec3<f32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec3<u32> = vec3<u32>(1u, 30570u, 4294967295u);

var<private> global2: Struct_2 = Struct_2(Struct_1(727f, vec3<u32>(0u, 39958u, 4294967295u), 2147483647i), Struct_1(1808f, vec3<u32>(4294967295u, 43460u, 94175u), i32(-2147483648)), -1i, vec3<f32>(841f, 280f, 772f), -15699i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
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

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    global0 = !(!vec2<bool>(global0.x, global0.x));
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-global2.a.a), vec3<u32>(min(~global2.b.b.x, _wgslsmith_sub_u32(0u, global2.b.b.x)), reverseBits(_wgslsmith_mod_u32(global1.x, global1.x)), 0u), u_input.a), Struct_1(_wgslsmith_f_op_f32(-global2.a.a), vec3<u32>(35723u, u_input.b << (_wgslsmith_clamp_u32(4673u, 22808u, 9723u) % 32u), global2.b.b.x), _wgslsmith_mod_i32(~u_input.a, -u_input.a)), global2.a.c, global2.d, -43045i);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(global2.b.a * -969f), countOneBits(~global2.a.b), select(_wgslsmith_dot_vec3_i32(vec3<i32>(-4984i, global2.c, ~11470i), vec3<i32>(var_0.e >> (18363u % 32u), var_0.e, 55450i)), 22455i, select(global0.x & false, global0.x, global0.x)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.a + 351f) * _wgslsmith_f_op_f32(-var_0.a.a))))), vec3<u32>(55620u << (_wgslsmith_add_u32(firstLeadingBit(var_1.b.x), ~4294967295u) % 32u), global1.x, ~4294967295u), _wgslsmith_div_i32(_wgslsmith_sub_i32(38771i, -161i), firstTrailingBit(select(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_1.c, var_1.c), vec3<i32>(41509i, -1605i, -29515i)), _wgslsmith_mult_i32(0i, 1i), 33637i == var_1.c))));
    return ~_wgslsmith_dot_vec3_u32(select(firstTrailingBit(vec3<u32>(var_2.b.x, 4294967295u, var_0.a.b.x)), var_1.b, vec3<bool>(false, !global0.x, false && global0.x)), ~var_2.b);
}

fn func_2(arg_0: Struct_1) -> vec4<f32> {
    let var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(u_input.a, arg_0.c), _wgslsmith_mult_i32(2327i, -15530i), _wgslsmith_div_i32(-2147483647i, -65159i)), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(global2.a.c, 0i, global2.a.c)), countOneBits(vec3<i32>(global2.e, u_input.a, 10132i)))) & -16943i, ~u_input.a, firstLeadingBit(-2147483647i));
    global1 = abs(~vec3<u32>(func_3(), _wgslsmith_sub_u32(4294967295u, 0u), 1u)) | vec3<u32>(~(~(~arg_0.b.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(~1u, ~arg_0.b.x)), 0u);
    global0 = vec2<bool>(all(select(vec4<bool>(any(vec3<bool>(global0.x, false, true)), global0.x, true, true), select(!vec4<bool>(false, false, true, global0.x), select(vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(false, true, true, global0.x)), select(vec4<bool>(true, global0.x, false, false), vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, true))), !(!vec4<bool>(global0.x, true, global0.x, global0.x)))), false);
    global1 = ~vec3<u32>(31006u, ~(~(~43042u)), firstTrailingBit(0u));
    let var_1 = !global0.x;
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(726f, arg_0.a, global2.b.a, arg_0.a), vec4<f32>(-492f, 1022f, arg_0.a, arg_0.a)))))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: vec3<i32>, arg_3: f32) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-arg_1), min(abs(_wgslsmith_div_vec3_u32(global2.a.b, global2.b.b)), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(global2.b.b, vec3<u32>(34169u, 18033u, global2.a.b.x)), abs(vec3<u32>(global1.x, u_input.b, 17240u)))), -1i), Struct_1(_wgslsmith_f_op_f32(max(-597f, 292f)), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_add_u32(u_input.b, 4294967295u), ~global2.a.b.x, ~0u), ~_wgslsmith_mod_vec3_u32(global2.a.b, vec3<u32>(1u, global1.x, global1.x))), arg_2.x), arg_2.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-149f))), 1f, _wgslsmith_f_op_f32(sign(-739f))), min(40223i, 0i));
    var var_1 = ~global2.b.b.x;
    global2 = Struct_2(global2.a, Struct_1(-1583f, var_0.b.b, abs(~(-global2.b.c))), ~countOneBits(reverseBits(abs(arg_2.x))), _wgslsmith_f_op_vec3_f32(-var_0.d), arg_2.x);
    let var_2 = Struct_1(var_0.d.x, select(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.a.b.x, var_0.a.b.x, 0u), vec3<u32>(38107u, global1.x, 1u))), var_0.b.b, false), reverseBits(-36376i));
    let var_3 = firstLeadingBit(31825u);
    return Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2(var_0.a)).x - -285f) + arg_3), 702f, true)), (abs(vec3<u32>(var_2.b.x, global2.a.b.x, var_0.b.b.x)) >> (vec3<u32>(global1.x, var_0.b.b.x, ~71029u) % vec3<u32>(32u))) ^ vec3<u32>(1u, 1u << (u_input.b % 32u), firstTrailingBit(28809u << (1u % 32u))), _wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -var_2.c, ~(~arg_2.x), (u_input.a >> (global1.x % 32u)) | _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.c, -17127i), vec2<i32>(global2.b.c, 2147483647i)), ~min(16084i, arg_2.x)), -max(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 1i, -55776i, -1i), vec4<i32>(39424i, 11747i, var_0.b.c, global2.c)), ~vec4<i32>(1i, 1054i, global2.c, u_input.a))));
}

fn func_1(arg_0: vec3<bool>, arg_1: i32) -> Struct_2 {
    var var_0 = 483f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global2.a.a)), _wgslsmith_f_op_f32(-global2.a.a))))) - _wgslsmith_f_op_f32(-1579f - -223f));
    global2 = Struct_2(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(global2.a))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, global2.d.x, global2.b.a, global2.d.x))))), 1031f, ~vec3<i32>(_wgslsmith_clamp_i32(-2155i, -1i, -5939i), _wgslsmith_div_i32(u_input.a, -2147483647i), _wgslsmith_sub_i32(-2147483647i, global2.a.c)), _wgslsmith_f_op_f32(global2.d.x + global2.a.a)), global2.a, _wgslsmith_mod_i32(max(0i, 0i), -1i), _wgslsmith_f_op_vec3_f32(global2.d + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.d.x, 509f, 1172f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec4_f32(func_2(global2.a)).ywz - vec3<f32>(1243f, -342f, global2.a.a)))), global2.a.c);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global2.d.zy)) - _wgslsmith_f_op_vec2_f32(-global2.d.zy)) + _wgslsmith_f_op_vec4_f32(func_2(func_4(vec4<f32>(global2.b.a, global2.d.x, 503f, 1000f), -637f, vec3<i32>(arg_1, arg_1, arg_1), global2.d.x))).xz), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(global2.b.a)), _wgslsmith_f_op_f32(-global2.b.a)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.d.x, global2.b.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.a, global2.d.x)), vec2<bool>(true, true)))))));
    global1 = ~vec3<u32>(global1.x | (_wgslsmith_mod_u32(u_input.b, 0u) & _wgslsmith_dot_vec2_u32(global1.zz, vec2<u32>(28952u, u_input.b))), global1.x, ~4294967295u);
    return Struct_2(global2.a, global2.a, 2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, global2.a.a, -864f)))))), _wgslsmith_dot_vec3_i32(vec3<i32>(firstLeadingBit(29336i << (u_input.b % 32u)), 1i >> (1u % 32u), 2147483647i), abs(_wgslsmith_mod_vec3_i32(~vec3<i32>(-2300i, 4687i, global2.a.c), select(vec3<i32>(-62563i, -10867i, 49700i), vec3<i32>(u_input.a, 19337i, arg_1), vec3<bool>(false, global0.x, global0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(1u, 35950u, _wgslsmith_mult_u32(25791u, global1.x), ~global1.x) << (vec4<u32>(reverseBits(global2.b.b.x), max(global1.x, global1.x), u_input.b, u_input.b) % vec4<u32>(32u))), abs(~(~vec4<u32>(global2.b.b.x, 1u, global2.b.b.x, 54009u))));
    let var_1 = global0.x;
    var var_2 = global2.a;
    var var_3 = func_1(vec3<bool>(true, global0.x, true), ~0i);
    var_3 = Struct_2(global2.a, var_3.b, var_2.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a, var_2.a, var_3.b.a) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b.a, -848f, global2.d.x)) * global2.d)), global2.a.c);
    let var_4 = !(any(select(!vec4<bool>(false, false, true, global0.x), select(vec4<bool>(false, false, global0.x, true), vec4<bool>(global0.x, true, global0.x, true), global0.x), select(vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, false), global0.x))) != true);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~firstLeadingBit(vec4<u32>(11656u, global1.x, 18662u, 4294967295u))), ~select(min(select(vec2<i32>(-2147483647i, -37245i), vec2<i32>(var_3.c, global2.a.c), vec2<bool>(global0.x, false)), -vec2<i32>(var_3.c, var_2.c)), _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-9275i, var_3.a.c), vec2<i32>(global2.e, u_input.a)), vec2<i32>(-1i, -31760i) | vec2<i32>(var_2.c, var_3.b.c)), false), _wgslsmith_f_op_f32(round(-557f)));
}

