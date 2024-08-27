struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec2<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<f32>, 18> = array<vec3<f32>, 18>(vec3<f32>(716f, -1124f, 685f), vec3<f32>(1653f, -368f, -1000f), vec3<f32>(-112f, 1179f, 276f), vec3<f32>(-135f, 1369f, -739f), vec3<f32>(-572f, -1856f, 707f), vec3<f32>(379f, 1496f, 237f), vec3<f32>(-1010f, -606f, -322f), vec3<f32>(1000f, 1364f, -1052f), vec3<f32>(-270f, -1904f, 1114f), vec3<f32>(1095f, -938f, -741f), vec3<f32>(-399f, -666f, 2917f), vec3<f32>(121f, -1371f, 1614f), vec3<f32>(-1009f, 219f, 1342f), vec3<f32>(-273f, -1185f, 732f), vec3<f32>(1000f, -1970f, -563f), vec3<f32>(1675f, 126f, 221f), vec3<f32>(515f, -1732f, -796f), vec3<f32>(-1838f, -931f, 177f));

var<private> global2: vec3<u32> = vec3<u32>(31050u, 16119u, 0u);

var<private> global3: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec3<f32>, arg_3: Struct_2) -> bool {
    global2 = ~(~(~_wgslsmith_sub_vec3_u32(~global3.a, ~vec3<u32>(global3.b, 32150u, 1u))));
    let var_0 = ~u_input.b;
    global0 = -1228f;
    var var_1 = 1u;
    var var_2 = ~countOneBits(~firstTrailingBit(_wgslsmith_clamp_vec2_u32(arg_0.c.d.wz, arg_0.c.a.xx, vec2<u32>(global2.x, u_input.a.x))));
    return arg_0.c.c.x;
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec4<u32> {
    global3 = Struct_1(arg_1.a, ~(~4294967295u), global3.c, ~((global3.d << (global3.d % vec4<u32>(32u))) & _wgslsmith_div_vec4_u32(arg_1.d << (arg_1.d % vec4<u32>(32u)), arg_1.d)));
    let var_0 = Struct_2(Struct_1(abs(vec3<u32>(1u, global3.b, _wgslsmith_add_u32(1u, 1u))), ~(global2.x ^ arg_1.d.x) ^ firstLeadingBit(arg_1.b), vec2<bool>(true, true), vec4<u32>(_wgslsmith_dot_vec4_u32(global3.d, arg_1.d), select(~global3.a.x, _wgslsmith_add_u32(u_input.a.x, global3.b), func_1(Struct_2(arg_1, 1853i, arg_1), vec2<f32>(1000f, 370f), global1[_wgslsmith_index_u32(global2.x, 18u)], Struct_2(Struct_1(vec3<u32>(global2.x, global2.x, 81180u), global3.b, global3.c, vec4<u32>(4294967295u, 1u, 52469u, 0u)), u_input.b, Struct_1(arg_1.d.zyy, global2.x, global3.c, vec4<u32>(33838u, u_input.a.x, 11461u, global2.x))))), global3.d.x, ~global2.x)), (min(i32(-1i) * -10870i, reverseBits(u_input.b)) << (~21919u % 32u)) ^ ~(~(-2147483647i & u_input.b)), arg_1);
    var var_1 = !any(vec3<bool>(global3.c.x, select(global3.c.x && var_0.c.c.x, any(var_0.c.c), true), true));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -642f), 2029f)) + _wgslsmith_f_op_f32(f32(-1f) * -804f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-410f + -1000f) * _wgslsmith_f_op_f32(1076f - 966f)) + -793f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-991f)))), -1176f))));
    let var_3 = arg_1;
    return select(~_wgslsmith_mod_vec4_u32(var_3.d, vec4<u32>(0u, 36501u, 2223u, 0u) ^ global3.d), var_0.a.d, true);
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: vec3<f32>) -> Struct_2 {
    global1 = array<vec3<f32>, 18>();
    let var_0 = arg_2.zz;
    global1 = array<vec3<f32>, 18>();
    let var_1 = true;
    var var_2 = Struct_2(Struct_1(vec3<u32>(_wgslsmith_clamp_u32(u_input.a.x, global3.a.x, _wgslsmith_mod_u32(24711u, global3.a.x)), global2.x, ~(32546u & global3.a.x)), 1u, vec2<bool>(true, true), vec4<u32>(_wgslsmith_mult_u32(~global3.a.x, 4294967295u), select(_wgslsmith_dot_vec4_u32(global3.d, global3.d), 0u, global3.c.x), global3.b, 4294967295u)), ~(-2147483647i) & _wgslsmith_add_i32(-2147483647i, reverseBits(u_input.b & -81136i)), Struct_1(_wgslsmith_mult_vec3_u32(global3.a, global3.a), select(_wgslsmith_mult_u32(reverseBits(54894u), _wgslsmith_dot_vec3_u32(global3.d.zyx, vec3<u32>(0u, u_input.a.x, u_input.a.x))), firstLeadingBit(4294967295u), any(select(vec4<bool>(var_1, true, true, global3.c.x), vec4<bool>(var_1, true, arg_1.x, true), global3.c.x))), !select(!global3.c, global3.c, all(vec4<bool>(global3.c.x, false, arg_1.x, var_1))), select(abs(_wgslsmith_div_vec4_u32(global3.d, vec4<u32>(global2.x, global2.x, 33188u, 0u))), global3.d, !vec4<bool>(true, arg_1.x, arg_1.x, global3.c.x))));
    return Struct_2(Struct_1(var_2.c.d.wyx, 11469u, arg_1.yy, func_3(54951u, var_2.c)), var_2.b, Struct_1(select(vec3<u32>(4294967295u, 28839u, 40731u) >> (global3.a % vec3<u32>(32u)), vec3<u32>(~20799u, _wgslsmith_dot_vec4_u32(var_2.a.d, global3.d), ~global2.x), vec3<bool>(any(vec4<bool>(true, true, global3.c.x, var_1)), any(vec4<bool>(false, false, true, var_1)), false)), ~(~55987u), select(!vec2<bool>(var_1, var_2.c.c.x), var_2.c.c, vec2<bool>(u_input.b >= 1i, true)), global3.d));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: bool, arg_3: f32) -> StorageBuffer {
    var var_0 = global3.d.x & _wgslsmith_dot_vec2_u32(vec2<u32>(~0u, 34912u), vec2<u32>(1u, ~(global2.x ^ 52107u)));
    let var_1 = 1f;
    return StorageBuffer(func_2(var_1, !vec3<bool>(arg_2, func_1(arg_0, vec2<f32>(var_1, arg_3), global1[_wgslsmith_index_u32(arg_0.c.b, 18u)], arg_0), arg_0.c.c.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, 502f, _wgslsmith_div_f32(arg_3, -243f)))).b);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global3.d.ywy;
    var var_0 = Struct_1(~(vec3<u32>(global3.d.x, 4294967295u, 28133u) >> (global3.d.xwx % vec3<u32>(32u))), u_input.a.x, vec2<bool>(true, true), countOneBits(abs(~vec4<u32>(1u, 2158u, 0u, 0u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-279f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1060f + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -715f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-216f * -305f)), _wgslsmith_div_f32(-952f, _wgslsmith_f_op_f32(floor(-1766f)))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(914f, 380f, 180f, 173f))))))));
    global1 = array<vec3<f32>, 18>();
    global1 = array<vec3<f32>, 18>();
    var var_2 = select(vec2<bool>(!any(!global3.c), var_0.c.x), !vec2<bool>(global3.c.x, func_1(Struct_2(Struct_1(global3.a, 1u, global3.c, global3.d), -47099i, Struct_1(vec3<u32>(82277u, 1u, global2.x), u_input.a.x, var_0.c, vec4<u32>(4294967295u, 0u, var_0.a.x, var_0.d.x))), vec2<f32>(2080f, var_1.x), vec3<f32>(-495f, -156f, var_1.x), Struct_2(Struct_1(var_0.d.xzz, 36030u, var_0.c, vec4<u32>(68422u, global2.x, global2.x, 0u)), -2147483647i, Struct_1(vec3<u32>(var_0.a.x, global2.x, global2.x), 4294967295u, vec2<bool>(global3.c.x, false), vec4<u32>(55031u, global3.d.x, var_0.d.x, u_input.a.x)))) & (var_1.x >= 544f)), any(var_0.c));
    let x = u_input.a;
    s_output = func_4(func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(744f, -668f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(ceil(var_1.x))))), select(!(!vec3<bool>(var_2.x, true, false)), !select(vec3<bool>(false, global3.c.x, var_0.c.x), vec3<bool>(true, var_2.x, false), vec3<bool>(var_2.x, false, false)), true), _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(select(2172u, global3.b, var_2.x), global2.x), 18u)])), select(vec4<bool>(true, global3.c.x, var_0.c.x, var_2.x || false), vec4<bool>(func_2(_wgslsmith_div_f32(var_1.x, var_1.x), !vec3<bool>(false, true, global3.c.x), vec3<f32>(var_1.x, var_1.x, var_1.x)).c.c.x, false, !var_0.c.x, var_0.c.x), false), global3.c.x, _wgslsmith_f_op_f32(-1f));
}

