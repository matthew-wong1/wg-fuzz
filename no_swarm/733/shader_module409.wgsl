struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<u32, 8> = array<u32, 8>(1u, 4294967295u, 4294967295u, 57524u, 1u, 29076u, 0u, 0u);

var<private> global2: Struct_1;

var<private> global3: Struct_2;

var<private> global4: f32 = -1000f;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    let var_0 = vec3<i32>(-2147483647i, reverseBits(select(-1i, _wgslsmith_clamp_i32(1i, -u_input.a.x, select(23539i, u_input.a.x, true)), true)), select(_wgslsmith_mod_i32(firstLeadingBit(-1i), _wgslsmith_div_i32(i32(-1i) * -2147483647i, u_input.b)), abs(u_input.a.x), true));
    global0 = _wgslsmith_div_vec2_u32(min(abs(~vec2<u32>(global0.x, global1[_wgslsmith_index_u32(global0.x, 8u)])), vec2<u32>(~_wgslsmith_mult_u32(1u, 24909u), min(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.x, 8u)], 8u)], 8u)], global1[_wgslsmith_index_u32(global0.x, 8u)]) >> (~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 8u)] % 32u))), ~(~firstLeadingBit(~vec2<u32>(global1[_wgslsmith_index_u32(global0.x, 8u)], 1u))));
    global0 = (firstTrailingBit(_wgslsmith_mult_vec2_u32(~vec2<u32>(4294967295u, 83909u), firstTrailingBit(vec2<u32>(global1[_wgslsmith_index_u32(26517u, 8u)], 1u)))) ^ abs(firstLeadingBit(vec2<u32>(global0.x, 17476u)))) << (_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(74356u, 4294967295u)), ~vec2<u32>(1u, global1[_wgslsmith_index_u32(0u, 8u)])) << (~(vec2<u32>(45399u, global0.x) & vec2<u32>(global0.x, 47100u)) % vec2<u32>(32u)), (vec2<u32>(2816u, 4294967295u) << (firstLeadingBit(vec2<u32>(global0.x, 88307u)) % vec2<u32>(32u))) << ((vec2<u32>(global1[_wgslsmith_index_u32(1u, 8u)], global0.x) & vec2<u32>(global0.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.x, 8u)], 8u)])) % vec2<u32>(32u)), ~countOneBits(vec2<u32>(0u, 40867u))) % vec2<u32>(32u));
    global3 = Struct_2(Struct_1(any(!vec4<bool>(global2.a, global3.a.a, global3.a.a, global3.a.a))));
    global0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(6019u, 4294967295u), 0u), reverseBits(_wgslsmith_mod_vec2_u32(~vec2<u32>(63470u, 0u), ~vec2<u32>(0u, global0.x)) ^ (vec2<u32>(4294967295u, 6901u) ^ vec2<u32>(47537u, global0.x))), ~(~vec2<u32>(~1u, 60720u)));
    return 0u;
}

fn func_2() -> Struct_3 {
    global0 = vec2<u32>(abs(~global1[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(1u, 4294967295u, global0.x)), 8u)]), global1[_wgslsmith_index_u32(func_3(), 8u)]);
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(118333u, ~global0.x), 8u)];
    var var_1 = false;
    var_0 = 11584u;
    let var_2 = Struct_3(false);
    return Struct_3(select(any(vec2<bool>(all(vec4<bool>(global2.a, global2.a, var_2.a, false)), true)), all(select(select(vec4<bool>(true, global2.a, true, false), vec4<bool>(false, false, false, var_2.a), global3.a.a), vec4<bool>(false, global2.a, true, false), select(vec4<bool>(global3.a.a, global3.a.a, global2.a, global2.a), vec4<bool>(global3.a.a, false, true, global3.a.a), false))), false));
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    global1 = array<u32, 8>();
    global2 = Struct_1(arg_0.a);
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(980f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-510f - _wgslsmith_f_op_f32(1669f + 2066f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -391f)))))) + -400f);
    global3 = Struct_2(global3.a);
    global4 = -1000f;
    return Struct_2(global3.a);
}

fn func_1() -> Struct_3 {
    global3 = func_4(func_2());
    let var_0 = u_input.a.x;
    global3 = Struct_2(Struct_1(any(!(!vec3<bool>(true, global2.a, true)))));
    var var_1 = ~(~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global0.x), vec2<u32>(20410u, global1[_wgslsmith_index_u32(14220u, 8u)])), global0.x));
    global4 = 1f;
    return func_2();
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_3) -> u32 {
    global3 = Struct_2(func_4(arg_2).a);
    let var_0 = func_4(func_1()).a;
    let var_1 = firstTrailingBit(vec4<i32>(u_input.a.x, i32(-1i) * -2147483647i, _wgslsmith_mod_i32(u_input.b, min(u_input.b, 5884i)) | _wgslsmith_mod_i32(u_input.a.x, max(u_input.a.x, u_input.b)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.b, -8782i, 0i, 32500i), -(~vec4<i32>(u_input.a.x, -10578i, u_input.a.x, u_input.a.x)))));
    var var_2 = global1[_wgslsmith_index_u32(~(~(~abs(global0.x))), 8u)];
    global4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-125f * _wgslsmith_f_op_f32(step(-1183f, 1372f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1918f, -1000f)), -2134f)) * _wgslsmith_div_f32(-1538f, 215f)), 1f, min(~global0.x, _wgslsmith_sub_u32(4294967295u, 21163u)) >= global1[_wgslsmith_index_u32(reverseBits(~60332u), 8u)]))));
    return countOneBits(~21647u);
}

fn func_6(arg_0: u32, arg_1: Struct_2, arg_2: u32, arg_3: vec4<u32>) -> Struct_2 {
    var var_0 = u_input.a.x;
    global4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1197f)))) + 1332f))), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1041f - -645f), -1005f))));
    global3 = Struct_2(func_4(Struct_3(true)).a);
    let var_1 = arg_1;
    global3 = Struct_2(Struct_1(true));
    return func_4(Struct_3(func_2().a));
}

fn func_7(arg_0: Struct_2, arg_1: vec3<f32>) -> Struct_2 {
    let var_0 = select(!select(vec4<bool>(true || global3.a.a, any(vec4<bool>(false, arg_0.a.a, global2.a, global3.a.a)), all(vec3<bool>(global2.a, true, true)), arg_1.x != arg_1.x), !select(vec4<bool>(true, false, global3.a.a, false), vec4<bool>(true, false, global2.a, true), vec4<bool>(true, arg_0.a.a, global3.a.a, true)), vec4<bool>(arg_0.a.a, all(vec3<bool>(global2.a, global2.a, false)), global3.a.a && true, true)), select(!vec4<bool>(false, true && global2.a, global3.a.a == global2.a, global2.a), select(select(select(vec4<bool>(false, true, arg_0.a.a, global3.a.a), vec4<bool>(false, global3.a.a, global2.a, false), vec4<bool>(true, false, arg_0.a.a, global3.a.a)), vec4<bool>(false, false, global2.a, false), arg_0.a.a || true), !vec4<bool>(false, true, global2.a, global3.a.a), false), !select(vec4<bool>(global2.a, arg_0.a.a, false, global2.a), vec4<bool>(true, arg_0.a.a, false, arg_0.a.a), arg_0.a.a)), global2.a);
    let var_1 = _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(1u, 8u)], abs(_wgslsmith_sub_u32(_wgslsmith_add_u32(1u ^ global1[_wgslsmith_index_u32(1u, 8u)], global0.x), min(~global1[_wgslsmith_index_u32(1u, 8u)], abs(51133u)))), min(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(6621u, 15117u, 18896u)), vec3<u32>(global1[_wgslsmith_index_u32(global0.x, 8u)], 2745u, 4294967295u)), max(reverseBits(global0.x), 4294967295u)), _wgslsmith_clamp_u32(global0.x, 35830u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(44895u, 51642u, global1[_wgslsmith_index_u32(36383u, 8u)]), vec3<u32>(global0.x, 54795u, 4294967295u)), ~vec3<u32>(global1[_wgslsmith_index_u32(25099u, 8u)], global1[_wgslsmith_index_u32(4294967295u, 8u)], 0u)))));
    let var_2 = vec3<u32>(89844u, 18700u, var_1);
    var var_3 = 1u;
    let var_4 = func_6(var_2.x, arg_0, ~1u, firstTrailingBit(~vec4<u32>(var_1, var_2.x, 1u, global0.x) | abs(vec4<u32>(var_1, 1u, global1[_wgslsmith_index_u32(var_1, 8u)], 19489u))) >> (_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, global1[_wgslsmith_index_u32(0u, 8u)], var_1, 0u), ~vec4<u32>(42054u, 44251u, var_2.x, 54339u), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, 6015u, 4294967295u, var_2.x), vec4<u32>(global1[_wgslsmith_index_u32(1u, 8u)], 1u, 1u, 70722u))), vec4<u32>(firstLeadingBit(var_2.x), 1u, global0.x, _wgslsmith_dot_vec3_u32(var_2, var_2))) % vec4<u32>(32u))).a;
    return func_4(Struct_3(var_0.x));
}

fn func_8(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_2) -> Struct_2 {
    let var_0 = ~vec2<i32>(_wgslsmith_dot_vec3_i32(max(u_input.a, max(u_input.a, vec3<i32>(u_input.a.x, -2147483647i, 2147483647i))), u_input.a), select(0i, u_input.a.x, true) & (i32(-1i) * -46735i));
    var var_1 = _wgslsmith_add_u32(firstTrailingBit(~0u), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_5(vec3<bool>(global3.a.a, global2.a, !global2.a), func_2(), arg_1), ~global1[_wgslsmith_index_u32(57067u, 8u)]), 8u)]);
    var var_2 = select(countOneBits(~vec3<u32>(global1[_wgslsmith_index_u32(0u, 8u)], 4294967295u, 4294967295u) | vec3<u32>(1u, 8755u, global1[_wgslsmith_index_u32(12475u, 8u)])), vec3<u32>(global0.x, 0u, ~firstLeadingBit(countOneBits(global0.x))), vec3<bool>(arg_0.x, true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, arg_1.a, true), !arg_2.a.a))));
    var_1 = global1[_wgslsmith_index_u32(0u, 8u)];
    let var_3 = -1000f;
    return Struct_2(Struct_1(~(~66616u) >= global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2472f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-291f))) - 500f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-472f * 1366f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(647f))))));
    let var_0 = func_8(vec2<bool>(all(vec3<bool>(global2.a || false, true, true)), false), Struct_3(true), func_7(func_6(func_5(select(vec3<bool>(false, global3.a.a, global3.a.a), vec3<bool>(global2.a, true, true), vec3<bool>(true, true, true)), func_1(), func_1()), Struct_2(Struct_1(global3.a.a)), 21358u, ~firstTrailingBit(vec4<u32>(45429u, 4294967295u, global0.x, global1[_wgslsmith_index_u32(1u, 8u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-185f, -182f, 2153f), vec3<f32>(-520f, 1360f, 1153f))))));
    global3 = Struct_2(global3.a);
    var var_1 = global0.x;
    global2 = global3.a;
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstTrailingBit(abs(_wgslsmith_div_vec4_u32(vec4<u32>(37410u, global1[_wgslsmith_index_u32(global0.x, 8u)], global0.x, 13770u), vec4<u32>(global0.x, 11155u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.x, 8u)], 8u)], global1[_wgslsmith_index_u32(global0.x, 8u)]))))), max(min(reverseBits(~vec3<u32>(4294967295u, global0.x, global0.x)), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global0.x, 1u, global0.x), vec3<u32>(global1[_wgslsmith_index_u32(10169u, 8u)], 1u, global0.x)), ~vec3<u32>(0u, 27210u, global1[_wgslsmith_index_u32(1u, 8u)]))), max(_wgslsmith_mod_vec3_u32(vec3<u32>(global0.x, 4294967295u, 68689u), vec3<u32>(global0.x, global1[_wgslsmith_index_u32(44262u, 8u)], 0u)), ~_wgslsmith_div_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(38360u, 8u)], 8u)], 15350u, 5415u), vec3<u32>(30099u, global1[_wgslsmith_index_u32(22308u, 8u)], 57295u)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-296f, -497f, -2076f, _wgslsmith_f_op_f32(step(931f, -1146f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-948f, 1201f, -2072f, 1291f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(703f, -145f, 823f, 243f), vec4<f32>(2424f, 279f, -827f, 146f), false))), select(vec4<bool>(true, true, false, var_0.a.a), select(vec4<bool>(true, global2.a, global2.a, global3.a.a), vec4<bool>(true, var_0.a.a, global3.a.a, false), var_0.a.a), select(vec4<bool>(global2.a, global2.a, true, false), vec4<bool>(global2.a, false, true, true), global3.a.a)))))));
}

