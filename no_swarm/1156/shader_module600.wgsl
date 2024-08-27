struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<i32>(-1i, 2147483647i, 0i, -3940i));

var<private> global1: array<u32, 11> = array<u32, 11>(4294967295u, 1u, 0u, 0u, 4294967295u, 40781u, 85858u, 32422u, 0u, 4294967295u, 100212u);

var<private> global2: Struct_3 = Struct_3(vec4<i32>(0i, 15306i, 2147483647i, 0i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_3(-vec4<i32>(reverseBits(2147483647i), _wgslsmith_clamp_i32(2147483647i, min(global0.a.x, 1i), _wgslsmith_dot_vec4_i32(global2.a, vec4<i32>(-64311i, global2.a.x, -9799i, 1i))), abs(~1i), -(-50094i ^ global0.a.x)));
    let var_1 = Struct_3(vec4<i32>(-1i) * -(~(-vec4<i32>(u_input.b, -39212i, var_0.a.x, u_input.b))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-293f, 982f) + _wgslsmith_f_op_f32(f32(-1f) * -236f)) * -969f))));
    let var_3 = !(!vec3<bool>(var_1.a.x <= var_0.a.x, true, true));
    let var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2, var_2, -290f, 891f), vec4<f32>(2170f, 645f, -2091f, var_2))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(126f, var_2, 2130f, -2066f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_2, var_2, var_2)))))) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_2, 1680f), 529f, _wgslsmith_f_op_f32(-var_2), var_2), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-943f, var_2, var_2, 917f), vec4<f32>(765f, 146f, -380f, 1505f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, var_2, var_2, 1028f) * vec4<f32>(-1211f, -595f, var_2, -453f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1518f, 1268f, -327f, 1000f)) + vec4<f32>(var_2, var_2, 773f, var_2))) - vec4<f32>(-2548f, _wgslsmith_f_op_f32(max(594f, _wgslsmith_f_op_f32(f32(-1f) * -165f))), -1095f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -161f))))));
    return -1024f;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: vec4<f32>) -> vec3<u32> {
    global0 = Struct_3(vec4<i32>(-1i) * -min(~vec4<i32>(1i, 97818i, u_input.b, -2147483647i), ~global2.a));
    var var_0 = _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_dot_vec2_u32(min(vec2<u32>(u_input.a.x, 70687u), u_input.a.yw), vec2<u32>(u_input.a.x, 6012u))), u_input.a.xx), u_input.a.yx);
    var var_1 = all(select(vec4<bool>(all(vec3<bool>(false, false, true)), any(vec3<bool>(true, true, true)), true, true), vec4<bool>(true, any(vec2<bool>(true, true)) || all(vec2<bool>(true, true)), false, global2.a.x >= reverseBits(0i)), true || !(arg_1.x == arg_1.x)));
    var var_2 = false;
    global1 = array<u32, 11>();
    return reverseBits(~vec3<u32>(_wgslsmith_mod_u32(81061u, ~0u), 17421u, 1u));
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: vec3<bool>, arg_3: vec4<i32>) -> f32 {
    global1 = array<u32, 11>();
    global1 = array<u32, 11>();
    var var_0 = func_4(vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(true, arg_1))), -1249f), ~_wgslsmith_mod_vec2_i32(-_wgslsmith_mult_vec2_i32(global2.a.xz, vec2<i32>(global0.a.x, 34961i)), abs(vec2<i32>(arg_3.x, arg_3.x) << (vec2<u32>(0u, global1[_wgslsmith_index_u32(1u, 11u)]) % vec2<u32>(32u)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-843f, 427f, -1044f, -1000f))))))));
    global2 = Struct_3(vec4<i32>(-_wgslsmith_add_i32(-2147483647i, global0.a.x) << (arg_0.x % 32u), 1i, firstLeadingBit(-(arg_3.x & global0.a.x)), ~(arg_3.x << (firstTrailingBit(u_input.a.x) % 32u))));
    global2 = Struct_3(((vec4<i32>(-1i) * -vec4<i32>(24702i, u_input.b, global0.a.x, -57317i)) >> (_wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(112353u, u_input.a.x, 90273u, var_0.x)) % vec4<u32>(32u))) | arg_3);
    return 1f;
}

fn func_5(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: i32) -> Struct_3 {
    global1 = array<u32, 11>();
    var var_0 = ~(~firstTrailingBit(select(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, global1[_wgslsmith_index_u32(u_input.a.x, 11u)]), vec2<u32>(u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], 11u)])), u_input.a.zx, vec2<bool>(true, true))));
    let var_1 = any(select(!(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false))), vec3<bool>(all(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(f32(-1f) * -605f) <= arg_1.x), arg_1.x >= -1000f));
    let var_2 = Struct_3(~(-global2.a));
    global2 = Struct_3(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(-23969i, -48866i, global0.a.x, -1i), global2.a & vec4<i32>(arg_2, 0i, 24818i, global2.a.x)), _wgslsmith_sub_vec4_i32(global0.a, -vec4<i32>(0i, global0.a.x, global2.a.x, 14899i)), firstLeadingBit(var_2.a)), abs(vec4<i32>(0i, i32(-1i) * -1i, ~var_2.a.x, ~global2.a.x)), var_2.a));
    return var_2;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec2<bool>) -> Struct_1 {
    global2 = Struct_3(vec4<i32>(firstLeadingBit(_wgslsmith_add_i32(u_input.b, 2147483647i)) & _wgslsmith_add_i32(-27052i, u_input.b), global2.a.x, 2147483647i, u_input.b));
    var var_0 = func_5(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.a.zy, arg_0.a | arg_2.x, select(vec3<bool>(arg_0.b, arg_2.x, true), vec3<bool>(arg_2.x, arg_0.a, arg_0.b), false), vec4<i32>(1i, u_input.b, 0i, u_input.b)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -622f)), -1264f), _wgslsmith_div_f32(-154f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1469f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1268f))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -191f), _wgslsmith_f_op_f32(-1126f * 1f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-814f, -1029f))), ~global2.a.x >> (_wgslsmith_div_u32(66324u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, arg_1), vec3<u32>(u_input.a.x, 28055u, 1u))) % 32u));
    global0 = Struct_3(vec4<i32>(global2.a.x, _wgslsmith_dot_vec2_i32(firstLeadingBit(~global2.a.zw), global2.a.ww), _wgslsmith_add_i32(27699i, firstTrailingBit(_wgslsmith_mod_i32(global2.a.x, var_0.a.x))), global2.a.x));
    var var_1 = global2.a.xxy;
    var var_2 = firstLeadingBit(select(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(global2.a.x, 18331i, global0.a.x, 30893i)), var_0.a), vec4<i32>(firstTrailingBit(u_input.b), 2147483647i, -2147483647i, var_0.a.x)), vec4<i32>(9076i, i32(-1i) * -25682i, -1i, 0i), !vec4<bool>(!arg_2.x, any(vec3<bool>(true, arg_2.x, false)), all(arg_2), true)));
    return Struct_1(false, !arg_0.a);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3) -> f32 {
    let var_0 = Struct_2(select(select(!(!vec2<bool>(arg_0.a, false)), vec2<bool>(true, true), true), !(!(!vec2<bool>(arg_0.b, false))), vec2<bool>(true, true)), Struct_1(arg_0.a, any(select(vec3<bool>(arg_0.a, false, arg_0.a), vec3<bool>(false, false, arg_0.b), arg_0.a))), arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(step(-177f, 744f)), _wgslsmith_f_op_f32(select(-1912f, -1591f, arg_0.b)))))));
    let var_1 = var_0;
    global2 = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.d.x, var_0.d.x, -665f, var_1.d.x))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d.x, var_1.d.x, 2139f, var_0.d.x) + vec4<f32>(-2112f, 545f, var_0.d.x, -718f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.x, _wgslsmith_f_op_f32(var_0.d.x + -1401f)) - vec2<f32>(_wgslsmith_f_op_f32(select(var_0.d.x, var_0.d.x, false)), _wgslsmith_f_op_f32(f32(-1f) * -641f)))), -select(_wgslsmith_add_i32(0i, reverseBits(u_input.b)), _wgslsmith_dot_vec3_i32(vec3<i32>(11185i, arg_1.a.x, global0.a.x), firstLeadingBit(global2.a.wxx)), all(!vec3<bool>(true, false, var_0.c.b))));
    let var_2 = any(var_1.a);
    var var_3 = Struct_2(var_0.a, func_1(var_1.b, u_input.a.x, !var_0.a), func_1(arg_0, _wgslsmith_div_u32(_wgslsmith_clamp_u32(countOneBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], 11u)]), 4294967295u, 0u), _wgslsmith_div_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7976u, 11u)], 11u)], 11u)], 11u)], 1u)), select(vec2<bool>(func_1(Struct_1(arg_0.b, arg_0.a), 23238u, vec2<bool>(false, false)).b, var_1.a.x), var_1.a, var_1.a)), var_0.d);
    return _wgslsmith_f_op_f32(-516f - _wgslsmith_f_op_f32(min(var_3.d.x, _wgslsmith_f_op_f32(step(282f, -752f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(2262f, _wgslsmith_f_op_f32(f32(-1f) * -221f), 1f, _wgslsmith_f_op_f32(func_6(func_1(Struct_1(true, false), u_input.a.x, vec2<bool>(true, true)), Struct_3(_wgslsmith_mod_vec4_i32(global2.a, global0.a)), Struct_3(select(~vec4<i32>(global0.a.x, global2.a.x, 1541i, u_input.b), -vec4<i32>(28572i, 4899i, u_input.b, global2.a.x), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false)))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, 588f), var_0.x), var_0.x), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.wxx), _wgslsmith_f_op_vec3_f32(-var_0.yyz)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(432f, var_0.x, -812f))))));
    var var_2 = vec3<i32>(global2.a.x, _wgslsmith_dot_vec4_i32(-(~global2.a) >> ((vec4<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], global1[_wgslsmith_index_u32(22780u, 11u)], 40621u, global1[_wgslsmith_index_u32(4294967295u, 11u)]) ^ ~u_input.a) % vec4<u32>(32u)), vec4<i32>(~global0.a.x, global2.a.x, u_input.b, select(abs(global2.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.x, 49997i, global2.a.x, global0.a.x), global0.a), true))), -max(37656i, max(~(-2147483647i), global0.a.x)));
    var var_3 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec2<bool>(false, true)), _wgslsmith_f_op_f32(f32(-1f) * -1000f) >= _wgslsmith_f_op_f32(trunc(var_1.x)), true == (18794u > u_input.a.x)), false), !select(vec4<bool>(false, true, select(true, true, false), any(vec2<bool>(false, true))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), global2.a.x >= -2147483647i), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), all(vec3<bool>(false, true, true))), vec4<bool>(select(4294967295u, 0u, false) != 37364u, select(u_input.b < -44467i, all(vec4<bool>(true, false, false, true)), true), all(vec3<bool>(true, true, false)) & true, !select(false, true, true)), var_1.x >= var_1.x));
    var var_4 = Struct_1(false, true);
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.a.wy, false, select(vec3<bool>(true, var_4.a, var_4.a), vec3<bool>(false, true, var_3.x), vec3<bool>(true, var_3.x, false)), select(global0.a, vec4<i32>(-55474i, var_2.x, u_input.b, 21804i), vec4<bool>(false, var_3.x, true, var_4.b)) & select(vec4<i32>(var_2.x, var_2.x, 0i, 52702i), vec4<i32>(0i, global0.a.x, -35375i, 2147483647i), vec4<bool>(var_3.x, false, var_3.x, var_3.x))))));
    var var_6 = -1524f;
    global1 = array<u32, 11>();
    let var_7 = vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x))) * _wgslsmith_f_op_f32(f32(-1f) * -206f)) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_5)))), false, var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -242f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_5), _wgslsmith_f_op_f32(func_6(Struct_1(true, true), Struct_3(global2.a), Struct_3(global0.a))), (var_4.a && var_3.x) | (var_1.x < var_1.x)))), 778f);
}

