struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2;

var<private> global2: array<u32, 26>;

var<private> global3: vec3<i32>;

var<private> global4: Struct_2;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32) -> i32 {
    global0 = Struct_2(30202i, select(_wgslsmith_div_u32(57285u, _wgslsmith_mult_u32(reverseBits(global1.b), 1u)), global4.b, true), _wgslsmith_div_i32(0i, global4.c & select(~global4.c, global0.c | global0.a, false)), global0.d);
    var var_0 = Struct_2(countOneBits(-6198i), global0.b << (8358u % 32u), _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_sub_i32(2147483647i & global1.c, global3.x), 29423i), -29239i), global0.d);
    var_0 = Struct_2(firstTrailingBit(-global0.c), global4.b, _wgslsmith_sub_i32(abs(~abs(global1.a)), ~(i32(-1i) * -2147483647i) | (i32(-1i) * -var_0.c)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-632f, _wgslsmith_f_op_f32(global0.d.c * -1000f), 1000f) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global1.d.a), _wgslsmith_f_op_vec3_f32(round(var_0.d.a)), !var_0.d.b))), !(!select(global4.d.b, vec3<bool>(true, false, global1.d.b.x), vec3<bool>(false, var_0.d.b.x, global0.d.b.x))), _wgslsmith_f_op_f32(-global0.d.c)));
    let var_1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global0.d.a)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.d.c, 416f, -1212f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-620f, -1246f, -190f))))), vec3<bool>(true, !(!(2113f >= global0.d.a.x)), false), -1992f);
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-global1.d.c), global4.d.a.x, 632f), select(select(!(!global4.d.b), select(select(global0.d.b, vec3<bool>(false, false, true), true), var_0.d.b, !global1.d.b.x), vec3<bool>(all(global1.d.b.xz), global0.d.b.x, true)), vec3<bool>(var_0.d.b.x, firstLeadingBit(global1.c) <= -53769i, all(vec4<bool>(false, false, global0.d.b.x, false))), select(!(!global1.d.b), select(select(var_1.b, var_1.b, global0.d.b), !global1.d.b, !global0.d.b.x), !var_1.b.x)), global0.d.a.x);
    return -1i;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_mod_i32(~reverseBits(global1.a), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, _wgslsmith_div_i32(global4.c, global1.a)), min(arg_1, global3.xx))), global1.b, global3.x | ~func_3(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a)), global1.d);
    let var_1 = ~(~0u) & global4.b;
    var var_2 = !(!(!(!vec4<bool>(global0.d.b.x, false, global4.d.b.x, global4.d.b.x))));
    var_2 = vec4<bool>(select(!global4.d.b.x, all(select(vec2<bool>(arg_0.b.x, arg_2.b.x), vec2<bool>(true, true), true)), arg_0.b.x), true, any(select(select(!vec4<bool>(global0.d.b.x, false, arg_0.b.x, true), select(vec4<bool>(false, global0.d.b.x, true, var_0.d.b.x), vec4<bool>(global4.d.b.x, var_0.d.b.x, global1.d.b.x, true), global4.d.b.x), vec4<bool>(var_0.d.b.x, arg_2.b.x, false, var_2.x)), select(select(vec4<bool>(arg_2.b.x, false, false, false), vec4<bool>(true, global4.d.b.x, true, false), arg_0.b.x), select(vec4<bool>(global0.d.b.x, true, var_2.x, false), vec4<bool>(var_2.x, false, true, global4.d.b.x), vec4<bool>(var_2.x, false, global1.d.b.x, arg_0.b.x)), global0.b >= u_input.b.x), true)), true);
    var_2 = !vec4<bool>(global1.d.b.x, true, select(false || select(var_2.x, global1.d.b.x, true), all(!var_0.d.b.zy), arg_2.b.x), true);
    return Struct_2(_wgslsmith_div_i32(~0i, var_0.a ^ 2147483647i), ~max(0u, ~var_1), abs(-firstTrailingBit(arg_1.x) << (_wgslsmith_clamp_u32(_wgslsmith_mult_u32(52221u, 64245u), ~27424u, min(52409u, 66541u)) % 32u)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -387f), _wgslsmith_f_op_f32(f32(-1f) * -853f)), vec3<bool>(false, (global4.d.b.x || false) | true, !(!global4.d.b.x)), global1.d.c));
}

fn func_4(arg_0: Struct_2) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.c, _wgslsmith_div_f32(func_2(global4.d, global3.yx, func_2(Struct_1(vec3<f32>(arg_0.d.c, global0.d.c, 1000f), global0.d.b, global0.d.a.x), vec2<i32>(26808i, global1.c), Struct_1(arg_0.d.a, vec3<bool>(true, arg_0.d.b.x, global4.d.b.x), global4.d.c)).d).d.c, -473f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.d.a.x)), 1f)), global0.d.a.x));
}

fn func_1() -> bool {
    global4 = Struct_2(0i, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.b, _wgslsmith_dot_vec2_u32(~u_input.b.yw, u_input.a.zz | u_input.a.zy), _wgslsmith_mod_u32(~4294967295u, ~54331u)), vec3<u32>(~u_input.b.x, 10195u, firstLeadingBit(global0.b))), _wgslsmith_sub_i32(~global0.c, global0.c >> (_wgslsmith_mult_u32(~1u, _wgslsmith_mod_u32(43805u, global0.b)) % 32u)), Struct_1(_wgslsmith_f_op_vec3_f32(abs(global0.d.a)), global0.d.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1868f, -779f))))));
    let var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(~(_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 26u)], u_input.b.x, 4294967295u, 1u), u_input.b) ^ ~global2[_wgslsmith_index_u32(u_input.a.x, 26u)]), 77708u), _wgslsmith_mult_vec2_u32(u_input.a.zz, u_input.b.wx) | vec2<u32>(~86049u, _wgslsmith_add_u32(129443u, abs(1u))));
    let var_1 = global0.d.a.yz;
    var var_2 = _wgslsmith_f_op_vec4_f32(func_4(func_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(732f, 452f, global1.d.c) - _wgslsmith_f_op_vec3_f32(-global1.d.a)), global4.d.b, global1.d.a.x), global3.zx, global1.d)));
    var var_3 = func_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global4.d.a, vec3<f32>(global4.d.c, global0.d.c, global4.d.c), global0.d.b.x)) + _wgslsmith_f_op_vec3_f32(trunc(global0.d.a)))), vec3<bool>(false, select(global1.d.b.x, true, global1.d.b.x) & (var_2.x >= global4.d.c), all(select(vec2<bool>(false, global0.d.b.x), vec2<bool>(global0.d.b.x, true), true))), global1.d.a.x), (vec2<i32>(-1i) * -firstLeadingBit(vec2<i32>(global4.a, -29092i))) ^ select(global3.zz ^ vec2<i32>(global0.a, global1.a), global3.zx, vec2<bool>(true, true)), func_2(Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-827f, global1.d.c, var_2.x))), select(select(vec3<bool>(true, global1.d.b.x, global0.d.b.x), vec3<bool>(global0.d.b.x, global4.d.b.x, global0.d.b.x), vec3<bool>(global1.d.b.x, global0.d.b.x, global0.d.b.x)), vec3<bool>(global0.d.b.x, true, true), all(global1.d.b)), var_1.x), firstTrailingBit(-global3.yy) & global3.xy, func_2(Struct_1(global0.d.a, global4.d.b, global4.d.a.x), -abs(vec2<i32>(global1.a, 28230i)), func_2(Struct_1(var_2.yzz, vec3<bool>(true, true, global1.d.b.x), -842f), firstTrailingBit(vec2<i32>(global0.c, global0.a)), global1.d).d).d).d).d;
    return func_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.x, global4.d.a.x, global0.d.a.x))) + _wgslsmith_f_op_vec3_f32(global4.d.a * vec3<f32>(-711f, 471f, -704f))), !global0.d.b, _wgslsmith_f_op_f32(f32(-1f) * -1031f)), global3.zy & ~global3.yx, global4.d).d.b.x | global1.d.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(!(-1329f >= _wgslsmith_f_op_f32(-global0.d.c)), global0.d.b.x, global4.d.b.x, func_1()), vec4<bool>(true, true && global1.d.b.x, !(!all(vec2<bool>(global1.d.b.x, false))), global4.d.b.x || false), global0.d.b.x);
    let var_1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1401f, -1870f, 955f, -540f))))) - vec4<f32>(_wgslsmith_f_op_f32(-global1.d.c), _wgslsmith_f_op_f32(-global1.d.a.x), 965f, _wgslsmith_f_op_f32(step(987f, global0.d.a.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-226f, -303f, 240f, global4.d.c))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.d.c, global0.d.c, -754f, 1441f) - vec4<f32>(-360f, -1243f, -648f, -345f)), vec4<f32>(global1.d.c, -373f, -490f, 466f), global1.c != global4.a)))), vec2<i32>(global1.a, _wgslsmith_mod_i32(global1.a, -2147483647i)), _wgslsmith_f_op_vec3_f32(global1.d.a + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.d.a) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.d.a.x, -771f, global0.d.c), global0.d.a))) - global0.d.a)));
}

