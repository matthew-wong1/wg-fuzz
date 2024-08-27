struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 726f;

var<private> global1: Struct_3;

var<private> global2: array<Struct_2, 10>;

var<private> global3: Struct_3;

var<private> global4: array<i32, 21> = array<i32, 21>(10181i, 38661i, 22480i, -1i, 1i, 1i, 65282i, -9300i, 2575i, i32(-2147483648), -1i, 45952i, 29243i, -1i, i32(-2147483648), 1i, i32(-2147483648), 27198i, 1i, 870i, i32(-2147483648));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_add_i32(firstTrailingBit(reverseBits(select(7870i << (0u % 32u), -global3.c, false))), abs(_wgslsmith_sub_i32(_wgslsmith_add_i32(~u_input.a, i32(-1i) * -2147483647i), _wgslsmith_mod_i32(1i, u_input.a ^ -33874i))));
    var var_1 = any(!select(vec3<bool>(true, -35732i == global4[_wgslsmith_index_u32(0u, 21u)], true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), global1.b.a >= global1.b.a), select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(false, true, false))));
    var_0 = 0i;
    global3 = Struct_3(global3.c, global1.b, max(global1.a, global1.c));
    global1 = Struct_3(_wgslsmith_clamp_i32(_wgslsmith_div_i32(-6856i, -_wgslsmith_mult_i32(global3.a, -32151i)), -_wgslsmith_mult_i32(u_input.a, firstLeadingBit(0i)), ~0i), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(963f, 1000f)))), -10139i), (_wgslsmith_clamp_i32(-2147483647i, global1.a, ~2147483647i) | _wgslsmith_div_i32(_wgslsmith_add_i32(global4[_wgslsmith_index_u32(0u, 21u)], 37678i), global3.a)) & -firstTrailingBit(1i << (0u % 32u)));
    return min(max(reverseBits(_wgslsmith_add_u32(3441u, 14041u)), min(_wgslsmith_clamp_u32(1u, ~36784u, ~1u), 1u)), 28639u);
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec3<i32>) -> bool {
    global4 = array<i32, 21>();
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.a))), 1049f);
    let var_0 = func_3();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3.b.a, 181f, global1.b.a, global3.b.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.a, global1.b.a, global1.b.a, 1244f) - vec4<f32>(2273f, 1000f, -1251f, global1.b.a))))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1427f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global3.b.a)), _wgslsmith_f_op_f32(-global1.b.a)), _wgslsmith_div_f32(global1.b.a, _wgslsmith_f_op_f32(trunc(global1.b.a))), _wgslsmith_f_op_f32(global3.b.a - _wgslsmith_f_op_f32(-global1.b.a)))));
    global1 = Struct_3(-16593i, Struct_1(1000f, max(29063i, 1i)), global1.a);
    return arg_1;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> Struct_3 {
    let var_0 = Struct_4(-(~u_input.a));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.a, 1314f) + vec2<f32>(global3.b.a, global3.b.a)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1150f, -160f), vec2<f32>(global1.b.a, global1.b.a)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global3.b.a, arg_2.a))) - vec2<f32>(1000f, 1519f))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(global3.b.a, _wgslsmith_f_op_f32(abs(-1420f)))), _wgslsmith_f_op_f32(round(-974f)))));
    global1 = Struct_3(~1i, global1.b, ~(-global4[_wgslsmith_index_u32(arg_1, 21u)]));
    let var_2 = 809f;
    let var_3 = var_0;
    return Struct_3(-1i, global1.b, _wgslsmith_sub_i32(-(var_3.a & -2147483647i), -2147483647i << (arg_1 % 32u)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<f32>) -> Struct_4 {
    let var_0 = !vec2<bool>(~18682u < abs(_wgslsmith_clamp_u32(1u, 46713u, 126667u)), !all(vec2<bool>(true, true)));
    global1 = func_4(true && func_2(Struct_1(167f, global4[_wgslsmith_index_u32(1u, 21u)]), true, reverseBits(vec3<i32>(2147483647i, global4[_wgslsmith_index_u32(41700u, 21u)], global1.b.b))), 0u, global3.b);
    var var_1 = ~(_wgslsmith_clamp_vec2_u32(reverseBits(~vec2<u32>(0u, 28623u)), firstTrailingBit(firstTrailingBit(vec2<u32>(17083u, 60345u))), ~firstTrailingBit(vec2<u32>(20555u, 61905u))) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)));
    global2 = array<Struct_2, 10>();
    var var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_1.x) ^ vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(20933u, 0u), vec2<u32>(var_1.x, var_1.x)) ^ var_1.x, select(1u, ~var_1.x, true)), ~vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_1.x, 2060u), vec2<u32>(var_1.x, var_1.x)), reverseBits(vec2<u32>(0u, 26383u))), 0u));
    return Struct_4(_wgslsmith_div_i32(global3.a, 2147483647i));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    global0 = -139f;
    let var_0 = func_4(true, reverseBits(4294967295u), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2.a + arg_2.a))) - 420f), min(countOneBits(u_input.a), ~_wgslsmith_clamp_i32(2147483647i, arg_0.a, global4[_wgslsmith_index_u32(arg_1.a, 21u)]))));
    let var_1 = global2[_wgslsmith_index_u32(42207u, 10u)];
    let var_2 = var_1.a;
    let var_3 = func_4(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec2<bool>(false, false)), true, true), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true)))), firstLeadingBit(1u), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(238f * 1171f) - _wgslsmith_f_op_f32(step(1178f, 554f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1061f)))))), 2147483647i));
    return global1.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -firstTrailingBit(func_5(func_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, 528f), vec2<f32>(179f, 394f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(918f, -1686f, 159f, -1478f))), global2[_wgslsmith_index_u32(firstTrailingBit(select(11278u, 1u, true)), 10u)], Struct_1(_wgslsmith_f_op_f32(-global3.b.a), _wgslsmith_add_i32(global1.b.b, 2720i))));
    global0 = 725f;
    let var_1 = vec4<bool>(~1i < _wgslsmith_mod_i32(func_4(false, ~4294967295u, func_4(false, 34201u, global1.b).b).a, _wgslsmith_mod_i32(select(global3.c, -17579i, true), -1i)), func_2(func_4(1u > _wgslsmith_dot_vec4_u32(vec4<u32>(35947u, 38898u, 4294967295u, 1u), vec4<u32>(49277u, 4294967295u, 3470u, 1u)), 1u, Struct_1(_wgslsmith_f_op_f32(abs(global3.b.a)), u_input.a)).b, true || select(true, all(vec3<bool>(false, true, false)), select(false, false, false)), ~select(_wgslsmith_mult_vec3_i32(vec3<i32>(-32091i, global4[_wgslsmith_index_u32(35316u, 21u)], global4[_wgslsmith_index_u32(0u, 21u)]), vec3<i32>(global3.b.b, global1.b.b, u_input.a)), ~vec3<i32>(1i, u_input.a, 2147483647i), vec3<bool>(true, true, true))), !any(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), -195f == global1.b.a);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global3.b.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(395f + -582f))), global1.b.a))));
    global1 = func_4(global3.b.a < 841f, min(~1u, ~(~46203u)), global1.b);
    let var_2 = func_4(any(!vec3<bool>(true, var_1.x, select(true, false, var_1.x))), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~(~firstLeadingBit(vec3<u32>(1u, 83223u, 30572u)))), func_4(var_1.x, firstTrailingBit(~21520u) | _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, 4294967295u)), select(vec2<u32>(45534u, 1u), vec2<u32>(1u, 1u), vec2<bool>(true, true))), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3.b.a * 418f))), _wgslsmith_mod_i32(-2147483647i, global3.b.b))).b);
    let var_3 = var_2;
    var var_4 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(firstLeadingBit(63065u), 1u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)));
}

