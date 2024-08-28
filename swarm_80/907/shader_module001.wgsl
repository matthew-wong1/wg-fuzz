struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, true);

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<u32>(0u, 60945u, 0u), vec2<f32>(-1578f, -1117f), vec4<u32>(1496u, 1u, 15370u, 1u), vec3<i32>(2147483647i, 1i, 1i), true));

var<private> global2: Struct_3;

var<private> global3: array<vec4<u32>, 12>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3) -> i32 {
    let var_0 = vec3<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(-5220i, u_input.a), reverseBits(global2.a)), u_input.a), global2.a, -1i) >> (~_wgslsmith_mod_vec3_u32((u_input.b ^ global1.a.a) ^ _wgslsmith_add_vec3_u32(vec3<u32>(6336u, global1.a.a.x, 1u), vec3<u32>(4294967295u, u_input.b.x, u_input.b.x)), ~(~vec3<u32>(1u, 59497u, u_input.b.x))) % vec3<u32>(32u));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.b.x, global1.a.b.x, -933f, _wgslsmith_f_op_f32(-1f)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.b.x, _wgslsmith_f_op_f32(global1.a.b.x + 816f), _wgslsmith_f_op_f32(-global1.a.b.x), _wgslsmith_f_op_f32(-global1.a.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(522f)), _wgslsmith_f_op_f32(-1309f - 1146f), global1.a.b.x, _wgslsmith_f_op_f32(-global1.a.b.x))), !(!(!vec4<bool>(global1.a.e, global0.x, false, false))))));
    global0 = select(vec4<bool>((abs(5868u) & u_input.b.x) > abs(45765u), !any(select(global0.yw, global0.yy, false)), select(all(vec4<bool>(global1.a.e, false, global1.a.e, false)) == false, true, !global1.a.e), global0.x), !select(vec4<bool>(true, all(global0.yyz), false, true), vec4<bool>(global1.a.e, !global1.a.e, global1.a.e, !global0.x), select(select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(false, true, false, global0.x), global1.a.e), vec4<bool>(false, true, false, false), any(vec3<bool>(global0.x, global1.a.e, false)))), global1.a.e);
    global0 = vec4<bool>(all(vec4<bool>(true, true, _wgslsmith_f_op_f32(global1.a.b.x * 343f) >= 1f, global1.a.e)), !(~countOneBits(global1.a.d.x) <= _wgslsmith_sub_i32(~u_input.a, firstLeadingBit(1i))), global0.x, global1.a.e);
    let var_2 = Struct_3(-1i);
    return _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a, var_0.x, min(~(~arg_0.a), 1i), 1i), vec4<i32>(~(~1i), 0i, global1.a.d.x, global2.a));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: u32) -> vec2<f32> {
    var var_0 = ~func_3(Struct_3(-39903i));
    let var_1 = Struct_1(firstLeadingBit(u_input.b) << (vec3<u32>(global1.a.a.x, arg_2, ~(~u_input.b.x)) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.a.b * global1.a.b) - _wgslsmith_div_vec2_f32(vec2<f32>(-1143f, -2020f), global1.a.b)) * vec2<f32>(_wgslsmith_f_op_f32(-global1.a.b.x), _wgslsmith_f_op_f32(ceil(-1723f))))), vec4<u32>(22431u, _wgslsmith_div_u32(arg_2, 1u), 4294967295u, max(67805u, ~arg_1)), global1.a.d, global0.x);
    var var_2 = !global0.zyy;
    var_0 = -1i;
    global2 = Struct_3(u_input.a);
    return vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -452f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1315f, -1000f)) - _wgslsmith_div_f32(global1.a.b.x, _wgslsmith_f_op_f32(select(global1.a.b.x, _wgslsmith_f_op_f32(1499f + -1046f), true)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> Struct_4 {
    let var_0 = Struct_4(abs(reverseBits(select(arg_1.a.c.x, _wgslsmith_div_u32(45124u, arg_0.a.x), arg_0.d.x == 0i))));
    let var_1 = _wgslsmith_div_f32(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.b.x), -100f));
    let var_2 = global1.a;
    global2 = Struct_3(_wgslsmith_div_i32(1i, arg_0.d.x));
    global0 = select(!select(vec4<bool>(any(global0.wx), !global1.a.e, true, var_2.e), select(!vec4<bool>(global0.x, arg_0.e, true, true), !vec4<bool>(arg_1.a.e, false, arg_1.a.e, var_2.e), var_2.e), vec4<bool>(!arg_0.e, false, true, true)), select(!(!select(vec4<bool>(true, false, var_2.e, arg_0.e), vec4<bool>(var_2.e, arg_0.e, false, true), vec4<bool>(false, true, true, global1.a.e))), select(!vec4<bool>(global0.x, false, true, arg_0.e), vec4<bool>(arg_0.e, all(vec4<bool>(arg_1.a.e, global0.x, arg_0.e, true)), any(vec4<bool>(true, true, true, var_2.e)), !global0.x), !select(vec4<bool>(false, global0.x, false, false), vec4<bool>(global0.x, false, true, var_2.e), arg_0.e)), !(30136u >= arg_1.a.c.x)), !vec4<bool>(false, global0.x, all(!vec4<bool>(false, var_2.e, true, true)), all(vec3<bool>(true, global1.a.e, global1.a.e))));
    return Struct_4(firstTrailingBit(var_2.c.x));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: u32, arg_3: Struct_1) -> Struct_5 {
    var var_0 = select(select(select(vec3<bool>(any(global0.wz), true, arg_3.e || arg_3.e), !global0.wwz, false), select(select(select(vec3<bool>(true, global0.x, global1.a.e), vec3<bool>(false, global1.a.e, arg_3.e), global0.x), global0.xwz, global0.x), select(global0.yww, !global0.yyz, global0.wxy), vec3<bool>(any(global0.wy), true, arg_3.e & false)), all(!(!vec4<bool>(global0.x, true, false, arg_3.e)))), vec3<bool>(false, true, false), global0.xyz);
    let var_1 = _wgslsmith_add_u32(select(firstLeadingBit(u_input.b.x), ~1u, false), global1.a.a.x);
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-552f)), -409f));
    var var_3 = arg_3;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.a.b.x))));
    return Struct_5(~abs(abs(vec2<i32>(arg_3.d.x, u_input.a))));
}

fn func_1() -> u32 {
    global3 = array<vec4<u32>, 12>();
    let var_0 = false;
    var var_1 = func_5(select(~vec4<u32>(_wgslsmith_mult_u32(1u, u_input.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, global1.a.a.x), u_input.b), _wgslsmith_div_u32(global1.a.c.x, u_input.b.x), u_input.b.x), vec4<u32>(u_input.b.x, abs(0u), u_input.b.x & u_input.b.x, 1u) ^ ~vec4<u32>(15705u, 42797u, 1u, 4294967295u), false), func_4(Struct_1(abs(~vec3<u32>(global1.a.c.x, u_input.b.x, 52858u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(vec2<i32>(-20799i, u_input.a), u_input.b.x, 0u))), ~global1.a.c, _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, -12101i, global2.a) ^ vec3<i32>(global1.a.d.x, -1i, -28163i), vec3<i32>(1096i, 28274i, -2147483647i)), !any(global0.wzw)), Struct_2(global1.a), 27716u), global1.a.a.x, global1.a);
    global1 = Struct_2(Struct_1(vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.b.zx, vec2<u32>(0u, global1.a.a.x)), global1.a.c.x, select(0u, u_input.b.x, global1.a.e)) ^ _wgslsmith_mod_vec3_u32(global1.a.c.yzx, vec3<u32>(46246u, 29655u, global1.a.a.x)), _wgslsmith_f_op_vec2_f32(global1.a.b + global1.a.b), ~_wgslsmith_sub_vec4_u32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, global1.a.a.x), 12u)], _wgslsmith_clamp_vec4_u32(global1.a.c, vec4<u32>(u_input.b.x, 41950u, global1.a.a.x, global1.a.c.x), vec4<u32>(global1.a.a.x, 4294967295u, 1u, u_input.b.x))), vec3<i32>(var_1.a.x, u_input.a, 13396i), global1.a.e));
    let var_2 = global1.a.a.x | global1.a.c.x;
    return firstLeadingBit(~(~(~u_input.b.x & func_4(Struct_1(u_input.b, vec2<f32>(global1.a.b.x, global1.a.b.x), global3[_wgslsmith_index_u32(var_2, 12u)], global1.a.d, false), Struct_2(Struct_1(vec3<u32>(66403u, 79028u, global1.a.a.x), vec2<f32>(-110f, global1.a.b.x), vec4<u32>(101194u, 1u, global1.a.c.x, 4294967295u), global1.a.d, true)), u_input.b.x).a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = i32(-1i) * -43900i;
    let var_1 = func_1();
    var var_2 = _wgslsmith_f_op_f32(-global1.a.b.x);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.b.x) + _wgslsmith_f_op_f32(sign(global1.a.b.x))) * global1.a.b.x);
    var var_4 = global1.a.d;
    var var_5 = global0.zww;
    let x = u_input.a;
    s_output = StorageBuffer(select(min(~vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), vec3<u32>(abs(31916u), var_1, min(global1.a.a.x, 4294967295u))), ~u_input.b, select(vec3<bool>(!global0.x, any(vec4<bool>(true, true, global0.x, true)), all(var_5.xy)), !vec3<bool>(global1.a.e, global0.x, var_5.x), global0.wzy)), _wgslsmith_f_op_f32(min(var_3, -166f)));
}

