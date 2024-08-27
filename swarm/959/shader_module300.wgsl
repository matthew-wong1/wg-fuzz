struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: i32,
    d: vec4<u32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(894f, 527f, 1261f, -341f);

var<private> global1: Struct_3 = Struct_3(-837f, 1171f);

var<private> global2: array<f32, 6>;

var<private> global3: Struct_3;

var<private> global4: Struct_2;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec3<f32>) -> i32 {
    let var_0 = false & (u_input.a.x > reverseBits(u_input.a.x));
    let var_1 = Struct_4(min(~global4.b.c, 0i));
    var var_2 = var_1;
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -856f);
    var var_4 = ~(~1u);
    return 28809i;
}

fn func_3(arg_0: Struct_4) -> f32 {
    global4 = Struct_2(Struct_1(!select(!vec4<bool>(true, global4.d, false, true), select(vec4<bool>(true, global4.b.e.x, global4.d, global4.a.b.x), global4.b.a, global4.c.a), vec4<bool>(global4.a.b.x, global4.a.e.x, global4.d, global4.c.b.x)), select(global4.c.e, select(!global4.a.b, global4.c.b, true), true), global4.b.c, global4.c.d, vec3<bool>(any(select(vec4<bool>(global4.c.e.x, false, global4.d, global4.b.a.x), global4.c.a, global4.c.a)), true, global4.d)), Struct_1(!vec4<bool>(global4.a.e.x && global4.c.a.x, global4.c.b.x, !global4.a.e.x, false), vec3<bool>(global4.c.a.x || global4.d, all(vec4<bool>(global4.d, global4.c.a.x, true, false)), global0.x >= _wgslsmith_f_op_f32(min(-591f, -797f))), _wgslsmith_dot_vec2_i32(abs(~vec2<i32>(-40191i, global4.b.c)), _wgslsmith_mod_vec2_i32(vec2<i32>(-50692i, u_input.a.x), u_input.a.xz) & max(u_input.a.zy, u_input.a.xz)), _wgslsmith_mod_vec4_u32(global4.b.d, vec4<u32>(87825u, _wgslsmith_mult_u32(global4.c.d.x, 4294967295u), 4294967295u, 79587u)), !global4.b.a.yxw), Struct_1(select(vec4<bool>(global4.b.a.x & global4.a.b.x, !global4.b.a.x, -1000f != global0.x, all(vec2<bool>(global4.d, global4.d))), global4.c.a, !global4.b.b.x), !select(vec3<bool>(global4.c.b.x, global4.d, false), !vec3<bool>(global4.d, global4.b.a.x, global4.a.a.x), all(global4.b.a)), arg_0.a >> (~0u % 32u), select(global4.b.d, _wgslsmith_clamp_vec4_u32(global4.a.d, global4.b.d, global4.c.d), true) & (_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, global4.c.d.x, 4294967295u, global4.a.d.x), vec4<u32>(global4.b.d.x, 1u, 1u, global4.a.d.x), vec4<u32>(global4.a.d.x, 25211u, global4.a.d.x, 4294967295u)) | ~vec4<u32>(32504u, global4.a.d.x, 0u, global4.b.d.x)), !(!global4.b.a.wxz)), global4.c.b.x);
    var var_0 = _wgslsmith_sub_i32(arg_0.a, 38388i);
    let var_1 = -u_input.a.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(global0.wz));
    var var_3 = ~global4.b.d.x;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - 799f) - -619f))))));
}

fn func_2() -> vec3<u32> {
    global1 = Struct_3(-727f, -515f);
    var var_0 = _wgslsmith_f_op_f32(func_3(Struct_4(_wgslsmith_mult_i32(-27939i, ~(u_input.a.x >> (global4.c.d.x % 32u))))));
    let var_1 = Struct_1(vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.a, -741f)) + 964f) <= _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(round(-199f)))), true, false, global4.d | !all(vec3<bool>(false, global4.a.b.x, global4.c.e.x))), global4.c.e, _wgslsmith_dot_vec3_i32(vec3<i32>(44972i, _wgslsmith_mod_i32(global4.b.c, _wgslsmith_mult_i32(33905i, u_input.a.x)), u_input.a.x), vec3<i32>(-38047i, u_input.a.x, ~_wgslsmith_mod_i32(global4.c.c, 1i))), ~global4.c.d, !vec3<bool>(global4.d, true, global4.a.e.x));
    var var_2 = min(vec3<u32>(4294967295u, max(_wgslsmith_div_u32(~56801u, 1u), _wgslsmith_dot_vec4_u32(var_1.d, var_1.d)), 4294967295u), global4.b.d.ywy);
    let var_3 = Struct_4(~_wgslsmith_mod_i32(max(u_input.a.x, 0i), ~var_1.c));
    return ~firstLeadingBit(~(~global4.b.d.wxx));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: vec4<f32>, arg_3: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global0.zw)))));
    global4 = Struct_2(Struct_1(vec4<bool>(!(false == global4.d), global4.a.b.x, !all(global4.b.b), !(global3.a <= 578f)), vec3<bool>(global4.d, global4.c.e.x, global4.c.a.x), -60991i, ~global4.c.d, global4.a.e), global4.b, global4.a, global4.b.e.x);
    var var_1 = -arg_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(1319f, 372f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_3, 6u)]) * _wgslsmith_f_op_f32(1910f - global2[_wgslsmith_index_u32(22175u, 6u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a) + _wgslsmith_div_f32(global3.b, -1059f))) * arg_2.zxz));
    let var_3 = abs(~(-33378i));
    return _wgslsmith_f_op_f32(exp2(var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(-_wgslsmith_clamp_i32(_wgslsmith_mod_i32(select(1i, 0i, global4.c.b.x), -2147483647i), global4.a.c, func_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global3.b, global0.x, global3.a))))));
    global1 = Struct_3(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global4.c.d.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global4.a.d.x, 7844u), global4.a.d.zz), 1u)), 6u)] + global3.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(-(vec3<i32>(-2147483647i, -50149i, 19931i) << (vec3<u32>(global4.c.d.x, 0u, global4.b.d.x) % vec3<u32>(32u))), u_input.a.yz, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, -1526f, global0.x, 441f)) - vec4<f32>(global0.x, -181f, global2[_wgslsmith_index_u32(global4.a.d.x, 6u)], -856f)), _wgslsmith_dot_vec3_u32(func_2(), vec3<u32>(global4.b.d.x, 60587u, 4294967295u))))));
    let var_1 = _wgslsmith_div_u32(global4.c.d.x, global4.a.d.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(step(global0.wz, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(global0.xy, vec2<f32>(-279f, -280f)), vec2<f32>(global1.a, _wgslsmith_f_op_f32(floor(1661f)))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global3.b, -765f), global0.yz)))))))));
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec3<i32>(var_0.a, u_input.a.x ^ global4.c.c, u_input.a.x), _wgslsmith_sub_vec2_i32(u_input.a.zy, ~u_input.a.xz), vec4<f32>(var_2.x, global3.b, _wgslsmith_f_op_f32(round(global1.a)), _wgslsmith_f_op_f32(-var_2.x)), 1528u >> (firstLeadingBit(global4.a.d.x) % 32u)))), _wgslsmith_f_op_f32(trunc(-198f))));
    let var_4 = ~abs(~0u);
    global4 = Struct_2(global4.c, Struct_1(vec4<bool>(global4.d, true, true, select(global4.a.e.x, global4.a.e.x, global4.c.b.x)), global4.c.e, -1i, global4.a.d, select(vec3<bool>(true, any(vec4<bool>(global4.b.a.x, false, global4.b.b.x, global4.d)), true), global4.b.a.xyz, _wgslsmith_f_op_f32(199f - global0.x) != 121f)), Struct_1(!vec4<bool>(!global4.b.b.x, !global4.a.b.x, any(vec3<bool>(false, global4.c.a.x, true)), global4.c.e.x | global4.c.a.x), vec3<bool>(!select(false, false, global4.d), true, !(var_1 >= 4294967295u)), u_input.a.x, vec4<u32>(firstTrailingBit(21249u), var_1, global4.b.d.x, reverseBits(max(var_1, 9343u))), global4.c.e), global4.b.a.x);
    let var_5 = -u_input.a.xz;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_1), vec2<u32>(45461u, 70001u)), 30384u << (~global4.a.d.x % 32u)), _wgslsmith_f_op_vec2_f32(global0.zy - vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.x + 658f), _wgslsmith_f_op_f32(-global1.b), global4.d)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), -297f))), ~firstLeadingBit(_wgslsmith_div_u32(var_1 >> (1u % 32u), min(31956u, global4.a.d.x))));
}

