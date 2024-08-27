struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26>;

var<private> global1: vec3<f32>;

var<private> global2: array<i32, 5>;

var<private> global3: array<Struct_1, 17>;

var<private> global4: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(Struct_1(vec3<f32>(-1238f, 1038f, -269f))), Struct_2(Struct_1(vec3<f32>(-1000f, 1240f, 544f))), Struct_2(Struct_1(vec3<f32>(314f, -1000f, -1100f))), Struct_2(Struct_1(vec3<f32>(-267f, -1000f, 1999f))), Struct_2(Struct_1(vec3<f32>(259f, -2012f, -1000f))), Struct_2(Struct_1(vec3<f32>(-984f, 387f, -472f))), Struct_2(Struct_1(vec3<f32>(-149f, 1722f, -1228f))), Struct_2(Struct_1(vec3<f32>(-2241f, 1106f, 1229f))), Struct_2(Struct_1(vec3<f32>(266f, 1000f, 624f))), Struct_2(Struct_1(vec3<f32>(599f, 649f, -2668f))), Struct_2(Struct_1(vec3<f32>(778f, -742f, 428f))), Struct_2(Struct_1(vec3<f32>(-340f, -1003f, -408f))), Struct_2(Struct_1(vec3<f32>(618f, -665f, -351f))), Struct_2(Struct_1(vec3<f32>(691f, 254f, -1000f))), Struct_2(Struct_1(vec3<f32>(1000f, -336f, -1000f))), Struct_2(Struct_1(vec3<f32>(1177f, 334f, -2075f))), Struct_2(Struct_1(vec3<f32>(972f, -917f, 1236f))), Struct_2(Struct_1(vec3<f32>(-1554f, 240f, 1400f))), Struct_2(Struct_1(vec3<f32>(-884f, 1472f, -1080f))), Struct_2(Struct_1(vec3<f32>(404f, 125f, -135f))), Struct_2(Struct_1(vec3<f32>(436f, 1305f, 1462f))), Struct_2(Struct_1(vec3<f32>(-393f, 550f, -1628f))), Struct_2(Struct_1(vec3<f32>(-391f, -658f, 897f))), Struct_2(Struct_1(vec3<f32>(642f, 767f, -1445f))), Struct_2(Struct_1(vec3<f32>(868f, 318f, 1491f))), Struct_2(Struct_1(vec3<f32>(-980f, 1376f, -516f))));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = vec3<u32>(0u, ~(~firstTrailingBit(0u)), _wgslsmith_sub_u32(30646u, 0u));
    var var_1 = ~(~(~vec3<u32>(_wgslsmith_div_u32(1620u, 1u), countOneBits(1u), 1u)));
    let var_2 = u_input.c | abs(u_input.d);
    global2 = array<i32, 5>();
    let var_3 = vec2<bool>(all(!(!vec3<bool>(true, true, arg_1))), true);
    return max(select(_wgslsmith_add_i32(_wgslsmith_mult_i32(arg_0 ^ var_2, max(u_input.a, -8707i)), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(47421i, 0i), u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.d, 12034i), vec3<i32>(arg_0, -4490i, u_input.b.x)))), countOneBits(arg_0), all(vec4<bool>(true, true, var_3.x && false, false))), _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 50725u, 1u, 0u), vec4<u32>(1u, var_0.x, var_0.x, var_1.x)), vec4<u32>(1u, var_1.x, var_0.x, var_1.x) << (vec4<u32>(var_0.x, var_0.x, 9474u, var_0.x) % vec4<u32>(32u)))), 5u)], ~arg_0));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<f32>) -> vec4<f32> {
    let var_0 = Struct_1(arg_0);
    global3 = array<Struct_1, 17>();
    let var_1 = max(_wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(3764u, 1u, 0u), vec3<u32>(0u, 42678u, 1u), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), ~vec3<u32>(1u, 0u, 26103u))), 1u), 0u);
    global0 = array<Struct_2, 26>();
    var var_2 = vec4<i32>(-abs(-_wgslsmith_add_i32(10209i, global2[_wgslsmith_index_u32(0u, 5u)])), _wgslsmith_clamp_i32(37983i, _wgslsmith_sub_i32(firstTrailingBit(firstTrailingBit(u_input.a)), -444i), func_3(min(-u_input.b.x, _wgslsmith_div_i32(global2[_wgslsmith_index_u32(27558u, 5u)], u_input.d)), select(all(vec2<bool>(false, false)), true, true), Struct_1(_wgslsmith_f_op_vec3_f32(-arg_1)), var_0)), max(-_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(24948i, global2[_wgslsmith_index_u32(var_1, 5u)], 43167i, global2[_wgslsmith_index_u32(0u, 5u)]), vec4<i32>(u_input.a, 1i, u_input.d, 1i)), firstTrailingBit(vec4<i32>(u_input.a, 1i, -19934i, u_input.b.x))), firstLeadingBit(u_input.c)), -26753i);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.a.x, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1027f, 329f, global1.x, var_0.a.x)), true))));
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = all(vec2<bool>(true, true));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1070f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - -369f)) * -1039f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1754f)))), -270f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(vec3<f32>(arg_0, 1971f, -955f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1156f, arg_0, -713f))))))));
    global4 = array<Struct_2, 26>();
    let var_2 = vec4<u32>(_wgslsmith_mod_u32(~0u, ~reverseBits(~4196u)), max(_wgslsmith_clamp_u32(countOneBits(_wgslsmith_clamp_u32(4294967295u, 5139u, 4294967295u)), firstLeadingBit(64943u), _wgslsmith_mult_u32(_wgslsmith_div_u32(9497u, 29558u), ~1u)), ~(~_wgslsmith_mod_u32(37874u, 2071u))), 1u, 0u);
    var var_3 = ~(-abs(global2[_wgslsmith_index_u32(14751u, 5u)]));
    return _wgslsmith_sub_u32(46538u, min(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, var_2.x, var_2.x, 1u), vec4<u32>(0u, 30404u, var_2.x, var_2.x)), 1u), 15669u) >> (~0u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(max(_wgslsmith_sub_u32(~0u, 1u), _wgslsmith_div_u32(61725u, 1u) << (_wgslsmith_add_u32(1u, 1u) % 32u)), _wgslsmith_div_u32(func_1(global1.x), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(select(vec3<u32>(0u, 5865u, 0u), vec3<u32>(80613u, 28110u, 72107u), vec3<bool>(true, false, true)), ~vec3<u32>(4294967295u, 78456u, 70001u)), ~reverseBits(vec3<u32>(54251u, 0u, 9493u)))), 1u, ~49351u);
    global3 = array<Struct_1, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x - global1.x), global1.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-380f * global1.x)))), _wgslsmith_f_op_vec2_f32(-global1.zz)), vec3<f32>(_wgslsmith_div_f32(-954f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1924f - global1.x), global1.x, true))), global1.x, -1340f), global1.x, (~(~4294967295u) | firstLeadingBit(var_0.x)) & var_0.x);
}

