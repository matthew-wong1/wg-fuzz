struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(i32(-2147483648), Struct_1(-1000f, vec4<i32>(8495i, -1i, -22154i, 36941i)), vec3<f32>(1406f, -1282f, 1000f));

var<private> global1: u32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> Struct_1 {
    let var_0 = vec3<bool>(_wgslsmith_dot_vec3_i32(abs(firstTrailingBit(u_input.b.wyw)), vec3<i32>(u_input.b.x, _wgslsmith_div_i32(global0.b.b.x, -46922i), _wgslsmith_dot_vec3_i32(vec3<i32>(3013i, u_input.a.x, -9940i), u_input.b.yxw))) != 1i, true, true);
    let var_1 = !(!(!(!(true | var_0.x))));
    let var_2 = reverseBits(~abs(1u));
    global1 = _wgslsmith_div_u32(var_2, var_2);
    var var_3 = firstTrailingBit(~62658u) & var_2;
    return Struct_1(global0.c.x, -global0.b.b);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_3 {
    let var_0 = select(select(vec4<bool>(true, any(arg_0), true, !arg_0.x), select(vec4<bool>(-1000f < arg_1.a, select(false, arg_0.x, true), !arg_0.x, true), !vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), true), arg_0.x), select(vec4<bool>(arg_0.x, true & (arg_0.x & true), all(vec4<bool>(arg_0.x, true, true, true)), arg_0.x), !(!(!vec4<bool>(false, true, true, arg_0.x))), vec4<bool>(true, !all(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false)), !(arg_0.x || arg_0.x), false)), any(arg_0));
    let var_1 = true;
    var var_2 = !vec4<bool>(false, var_0.x, any(!(!vec2<bool>(true, arg_0.x))), true);
    let var_3 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -817f), arg_1.a), arg_2, func_2(), countOneBits(arg_2.b.b.xyy), arg_1);
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_3.b.c.x, 489f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(888f)) - _wgslsmith_f_op_f32(f32(-1f) * -1237f)))), arg_2.c.x, -314f, _wgslsmith_f_op_f32(exp2(arg_2.c.x)));
    return Struct_3(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-476f, var_3.e.a))))))), Struct_2(arg_2.b.b.x, func_2(), _wgslsmith_f_op_vec3_f32(max(var_3.b.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.a, arg_2.b.a, 541f)))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-684f - 290f))), _wgslsmith_add_vec4_i32(max(vec4<i32>(arg_1.b.x, 0i, u_input.b.x, arg_1.b.x), vec4<i32>(28096i, global0.a, var_3.d.x, -25196i)), firstTrailingBit(~vec4<i32>(global0.a, 1i, arg_1.b.x, global0.a)))), vec3<i32>(arg_2.b.b.x, countOneBits(global0.a), arg_2.a), func_2());
}

fn func_1() -> u32 {
    let var_0 = func_3(vec2<bool>(true, all(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, true), false))), func_2(), Struct_2(global0.a, global0.b, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1841f, 1391f), _wgslsmith_f_op_f32(min(global0.c.x, global0.c.x)), global0.b.a), global0.c)));
    global0 = Struct_2(_wgslsmith_mult_i32(min(1i | _wgslsmith_mod_i32(global0.a, 5799i), i32(-1i) * -u_input.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(27078i, -var_0.e.b.x), vec2<i32>(var_0.b.b.b.x, global0.a))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.a) - _wgslsmith_f_op_f32(round(-711f))), -u_input.a), _wgslsmith_f_op_vec3_f32(-global0.c));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b.a))))) - -1000f);
    let var_2 = !(all(vec4<bool>(any(vec3<bool>(false, false, true)), true, all(vec2<bool>(true, true)), true)) & any(vec4<bool>(all(vec3<bool>(false, false, true)), true, true, all(vec4<bool>(false, true, false, true)))));
    let var_3 = global0.b.b.x >> (_wgslsmith_mod_u32(countOneBits(firstTrailingBit(abs(4294967295u))), 31405u) % 32u);
    return 1u & firstLeadingBit(~min(48871u, 5949u) >> (firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 0u), vec3<u32>(1u, 50109u, 82952u))) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_i32(-2147483647i, u_input.a.x | -28899i);
    global1 = ~func_1() & max(2680u, ~(~(~0u)));
    let var_1 = !(!all(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false))));
    let var_2 = global0.b;
    var var_3 = abs(~_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(0u, 31604u, 0u), vec3<u32>(1u, 4294967295u, 21145u)), vec3<u32>(1u, 1u, 1u)));
    var var_4 = ~var_3.zy;
    let var_5 = func_3(!(!(!vec2<bool>(var_1, var_1))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a * -252f) + _wgslsmith_f_op_f32(abs(-1784f))) * 1891f), ~vec4<i32>(~0i, _wgslsmith_sub_i32(global0.b.b.x, -36427i), ~var_2.b.x, firstLeadingBit(var_2.b.x))), func_3(select(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(var_1, var_1), false), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1261f), vec4<i32>(-20i, i32(-1i) * -67728i, min(25880i, var_2.b.x), ~(-1i))), func_3(!(!vec2<bool>(true, var_1)), Struct_1(1000f, vec4<i32>(-1i, 6535i, var_2.b.x, global0.b.b.x)), func_3(select(vec2<bool>(true, false), vec2<bool>(false, var_1), vec2<bool>(true, false)), func_3(vec2<bool>(false, var_1), Struct_1(-567f, global0.b.b), Struct_2(90347i, Struct_1(190f, vec4<i32>(-24098i, var_2.b.x, 16951i, u_input.b.x)), vec3<f32>(global0.c.x, var_2.a, var_2.a))).c, Struct_2(global0.a, Struct_1(148f, vec4<i32>(0i, var_2.b.x, u_input.b.x, -2147483647i)), vec3<f32>(var_2.a, global0.c.x, 211f))).b).b).b).b.b;
    let var_6 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(_wgslsmith_mod_i32(countOneBits(global0.b.b.x), ~2147483647i), -var_5.b.x, -func_3(vec2<bool>(true, var_1), Struct_1(var_5.a, var_2.b), Struct_2(1i, Struct_1(432f, vec4<i32>(var_6.b.x, global0.b.b.x, 49911i, var_6.b.x)), global0.c)).d.x), ~vec4<u32>(var_4.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_3.x, var_4.x, var_3.x) >> (vec4<u32>(var_4.x, var_4.x, var_3.x, 0u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_4.x, var_3.x, var_3.x), vec4<u32>(1u, var_4.x, 0u, 1u))), var_4.x, 4294967295u), 0i >> (~select(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.x, var_4.x, var_4.x), vec3<u32>(var_4.x, 1u, 37289u)), 4294967295u, var_1) % 32u), max(select(_wgslsmith_clamp_vec4_i32(~vec4<i32>(var_6.b.x, -20842i, var_5.b.x, u_input.b.x), min(var_2.b, global0.b.b), vec4<i32>(var_6.b.x, u_input.b.x, -2147483647i, 62169i)), vec4<i32>(1i, abs(2147483647i), 7921i, -26847i), vec4<bool>(false, var_1, !var_1, var_1 || true)), vec4<i32>(_wgslsmith_sub_i32(global0.a, 23201i) << (~2618u % 32u), ~func_2().b.x, ~2147483647i, _wgslsmith_add_i32(66554i, _wgslsmith_div_i32(var_2.b.x, 0i)))), ~vec2<i32>(global0.b.b.x, abs(-var_5.b.x)));
}

