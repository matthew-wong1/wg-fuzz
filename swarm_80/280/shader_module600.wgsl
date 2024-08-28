struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 25>;

var<private> global1: array<f32, 22>;

var<private> global2: array<vec4<f32>, 29> = array<vec4<f32>, 29>(vec4<f32>(-1103f, 648f, 1499f, 188f), vec4<f32>(-1544f, -559f, 1328f, -641f), vec4<f32>(489f, -1060f, -874f, -288f), vec4<f32>(2025f, -479f, 378f, 1000f), vec4<f32>(-787f, 1364f, 300f, -1000f), vec4<f32>(-1122f, 475f, -1000f, 581f), vec4<f32>(-211f, 2800f, 545f, -1000f), vec4<f32>(774f, -1055f, -1438f, 894f), vec4<f32>(-101f, 1000f, -846f, 1469f), vec4<f32>(1036f, 795f, -392f, -418f), vec4<f32>(-1291f, -229f, 144f, 287f), vec4<f32>(-896f, -1608f, 177f, -837f), vec4<f32>(-1544f, -1325f, 928f, 388f), vec4<f32>(2212f, 278f, 444f, 696f), vec4<f32>(-562f, 1142f, 926f, -1000f), vec4<f32>(1235f, -672f, -135f, -943f), vec4<f32>(-2149f, -175f, -469f, -773f), vec4<f32>(-1000f, 519f, 1000f, 724f), vec4<f32>(559f, -133f, -1109f, 648f), vec4<f32>(559f, 1364f, 124f, -206f), vec4<f32>(-247f, -1932f, 308f, -326f), vec4<f32>(384f, 1413f, 2422f, 418f), vec4<f32>(339f, 263f, 1180f, -212f), vec4<f32>(906f, 290f, -403f, 295f), vec4<f32>(-454f, 889f, 555f, 2838f), vec4<f32>(435f, 158f, -489f, 954f), vec4<f32>(-276f, -604f, -1052f, -2053f), vec4<f32>(-369f, -1199f, -2775f, -408f), vec4<f32>(-532f, -1528f, 1860f, -997f));

var<private> global3: vec4<u32>;

var<private> global4: Struct_2;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<bool>, arg_1: u32) -> bool {
    global4 = Struct_2(u_input.a | _wgslsmith_mod_i32(_wgslsmith_mult_i32(-14046i, -1i) ^ u_input.a, global4.a), _wgslsmith_add_u32(~_wgslsmith_mod_u32(arg_1, _wgslsmith_clamp_u32(61120u, 32250u, arg_1)), ~global4.b));
    var var_0 = Struct_4(9478i, select(arg_0.x, all(select(vec4<bool>(arg_0.x, false, arg_0.x, true), vec4<bool>(false, false, arg_0.x, false), vec4<bool>(arg_0.x, false, true, true))) || arg_0.x, arg_0.x));
    global2 = array<vec4<f32>, 29>();
    global0 = array<vec2<u32>, 25>();
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_1, 22u)] - 724f), -386f)))) + vec2<f32>(_wgslsmith_f_op_f32(max(-301f, 807f)), -707f));
    return true;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> vec4<u32> {
    let var_0 = -global4.a;
    let var_1 = arg_0;
    var var_2 = Struct_1(~_wgslsmith_add_vec4_u32(arg_0.a, _wgslsmith_mult_vec4_u32(vec4<u32>(global4.b, var_1.b.x, global4.b, 1u), arg_0.a) ^ vec4<u32>(global3.x, var_1.b.x, var_1.a.x, 18835u)), ~(~global0[_wgslsmith_index_u32(1u, 25u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(abs(arg_0.b.x >> (_wgslsmith_add_u32(4294967295u, arg_0.b.x) % 32u)), 22u)]), -(~u_input.a));
    var_2 = Struct_1(_wgslsmith_mod_vec4_u32((vec4<u32>(67862u, 49588u, 1u, 24047u) ^ firstLeadingBit(vec4<u32>(arg_0.b.x, global3.x, arg_0.b.x, 19333u))) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(global3.x, var_1.a.x, var_1.b.x, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(var_1.a.x, var_2.b.x, 115466u, global4.b), var_1.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(var_2.a, arg_0.a), ~arg_0.a.x, max(0u, 1u), abs(0u)), countOneBits(~vec4<u32>(var_2.a.x, global3.x, 0u, global4.b)))), ~vec2<u32>(8855u, ~_wgslsmith_dot_vec2_u32(global3.ww, arg_0.b)), _wgslsmith_f_op_f32(step(var_2.c, -1027f)), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(-vec2<i32>(-22831i, -1i) >> (max(var_2.b, global3.xy) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_add_i32(0i, 77715i), 17894i), _wgslsmith_sub_vec2_i32(vec2<i32>(-854i, var_0), -vec2<i32>(var_2.d, global4.a))), ~(~vec2<i32>(-7106i, var_0))));
    let var_3 = any(!vec3<bool>(true, arg_1.x, true));
    return _wgslsmith_clamp_vec4_u32(var_1.a, _wgslsmith_sub_vec4_u32(vec4<u32>(47585u, 4705u << (global4.b % 32u), reverseBits(103041u), var_1.b.x) & var_1.a, abs(vec4<u32>(global4.b, arg_0.b.x, global3.x, var_2.b.x) ^ (vec4<u32>(87080u, 1u, 9207u, global4.b) << (var_2.a % vec4<u32>(32u))))), select(var_1.a, min(select(firstTrailingBit(vec4<u32>(0u, global3.x, 4229u, global4.b)), ~vec4<u32>(global3.x, 18119u, 53346u, var_1.a.x), !var_3), var_1.a), !vec4<bool>(false, !var_3, true, false)));
}

fn func_1() -> Struct_1 {
    global3 = vec4<u32>(_wgslsmith_div_u32(global3.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(global3.x, global4.b, 0u)), ~vec3<u32>(1u, 50510u, global3.x)), ~(global3.wwx | vec3<u32>(0u, 48177u, global4.b)))), global4.b, 1u, ~global4.b);
    let var_0 = reverseBits(min(global4.a, -2147483647i));
    global1 = array<f32, 22>();
    let var_1 = 2147483647i;
    let var_2 = select(vec3<bool>(true, select(any(vec2<bool>(true, true)), !any(vec3<bool>(true, false, false)), true), true), vec3<bool>(true, !(true || func_2(vec3<bool>(false, false, false), 1u)), true), true);
    return Struct_1(firstTrailingBit(vec4<u32>(1u, _wgslsmith_add_u32(global4.b, global4.b), ~global4.b, 1u)) & (vec4<u32>(global3.x, _wgslsmith_add_u32(4294967295u, global4.b), ~global4.b, global4.b) & (func_3(Struct_1(vec4<u32>(global4.b, global3.x, 23392u, global4.b), global0[_wgslsmith_index_u32(0u, 25u)], global1[_wgslsmith_index_u32(4294967295u, 22u)], 2147483647i), vec4<bool>(var_2.x, false, false, var_2.x)) >> (func_3(Struct_1(vec4<u32>(global3.x, 50930u, global4.b, 23396u), vec2<u32>(global3.x, global4.b), global1[_wgslsmith_index_u32(global4.b, 22u)], u_input.a), vec4<bool>(true, var_2.x, true, false)) % vec4<u32>(32u)))), vec2<u32>(46960u, ~1u), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global3.x, 0u), 22u)])), _wgslsmith_f_op_f32(-1f))))), reverseBits(min(var_0, _wgslsmith_dot_vec3_i32(vec3<i32>(global4.a, -18417i, u_input.a), vec3<i32>(var_1, 0i, -1i)))) ^ abs(_wgslsmith_mod_i32(~(-1i), var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_2(global4.a, global4.b);
    global1 = array<f32, 22>();
    global1 = array<f32, 22>();
    let var_0 = func_1();
    var var_1 = !(true || !(_wgslsmith_clamp_i32(global4.a, 25669i, -1i) < (u_input.a | -27199i)));
    let var_2 = Struct_4(firstLeadingBit((_wgslsmith_mod_i32(var_0.d, global4.a) << ((global3.x | 0u) % 32u)) & -1i), all(vec2<bool>(true, true)) & true);
    var var_3 = select(_wgslsmith_mod_vec4_i32(~vec4<i32>(~var_0.d, var_2.a, _wgslsmith_sub_i32(global4.a, u_input.a), var_2.a), vec4<i32>(-_wgslsmith_div_i32(u_input.a, var_2.a), _wgslsmith_add_i32(-21953i, 27488i) >> (max(80748u, global3.x) % 32u), u_input.a, -var_0.d)), vec4<i32>(18757i, _wgslsmith_sub_i32(abs(_wgslsmith_sub_i32(1i, global4.a)), _wgslsmith_div_i32(-1i, -951i)), global4.a, _wgslsmith_sub_i32(1i, var_2.a)), !(!(!(!vec4<bool>(var_2.b, var_2.b, true, true)))));
    var_3 = ~vec4<i32>(abs(2147483647i), var_3.x, u_input.a, var_3.x);
    global3 = func_3(Struct_1(countOneBits(vec4<u32>(9709u, 61507u, 11970u, global4.b) ^ var_0.a) | vec4<u32>(global3.x, ~global4.b, countOneBits(global3.x), var_0.b.x), ~countOneBits(vec2<u32>(global3.x, var_0.a.x)), _wgslsmith_div_f32(-951f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1558f, var_0.c)), var_0.c))), 6032i), vec4<bool>(any(vec2<bool>(true, true)), var_2.b, false, !(!var_2.b)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, 1772f, vec3<f32>(987f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-121f, var_0.c) - -771f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) * _wgslsmith_f_op_f32(-var_0.c))));
}

