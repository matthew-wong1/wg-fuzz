struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1 = Struct_1(false);

var<private> global2: Struct_1;

var<private> global3: vec2<i32>;

var<private> global4: i32 = 2147483647i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> bool {
    global0 = Struct_2(vec4<bool>(true, false, global0.d.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f * -1433f), _wgslsmith_div_f32(-1533f, 817f))) != -553f), vec4<u32>(~global0.b.x, 1u, 104216u, 32479u), Struct_1(arg_1.a), Struct_1(any(vec2<bool>(select(global1.a, true, global1.a), all(global0.e)))), !global0.a.wwz);
    global3 = reverseBits(min(firstTrailingBit(~(~vec2<i32>(global3.x, arg_0))), vec2<i32>(-35980i, 1i)));
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(max(577f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1629f)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-533f)))), 1100f)), 1547f, !(!select(global2.a, true, global0.a.x)))), -1263f);
    let var_1 = vec3<i32>(arg_0, 8571i, 14013i);
    let var_2 = select(_wgslsmith_div_u32(global0.b.x, _wgslsmith_mod_u32(16519u, _wgslsmith_mult_u32(u_input.b, u_input.a ^ 161196u))), ~12821u, global2.a);
    return all(select(!vec2<bool>(global0.e.x, arg_1.a), select(!global0.a.yz, select(select(global0.a.xw, global0.e.xx, global1.a), select(global0.e.yz, vec2<bool>(false, global0.c.a), false), true), select(global0.e.yz, vec2<bool>(false, arg_1.a), select(global0.e.xz, global0.e.xy, true))), !(!global0.a.ww)));
}

fn func_2() -> bool {
    var var_0 = Struct_2(!vec4<bool>(func_3(global3.x, global0.c, false) || false, true, !any(global0.e.zz), any(vec4<bool>(global1.a, false, global1.a, global1.a))), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(global0.b, (vec4<u32>(0u, u_input.b, 4294967295u, global0.b.x) & vec4<u32>(20549u, 3897u, u_input.a, 40366u)) << (global0.b % vec4<u32>(32u))), ~vec4<u32>(~u_input.a, ~1u, u_input.a, _wgslsmith_clamp_u32(u_input.b, u_input.a, 0u))), Struct_1(select(any(vec3<bool>(global1.a, true, global2.a)) || !global2.a, global1.a, global1.a)), Struct_1(!any(global0.a)), select(select(select(global0.e, vec3<bool>(global0.c.a, false, false), !global0.e), global0.e, global1.a), select(global0.e, global0.e, select(vec3<bool>(global2.a, global0.c.a, global2.a), !vec3<bool>(global2.a, global0.a.x, false), !vec3<bool>(true, true, global1.a))), vec3<bool>(true, true, true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-2366f, -2211f), _wgslsmith_f_op_f32(step(1032f, 341f))), -601f), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1146f, 1662f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1677f, -1013f)))))));
    global3 = abs(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(1i, global3.x), vec2<i32>(global3.x, -2147483647i)), -vec2<i32>(-22653i, global3.x), _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, global3.x), vec2<i32>(global3.x, 0i), vec2<i32>(global3.x, global3.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(global3.x, 0i), vec2<i32>(1i, global3.x)))), abs(_wgslsmith_add_vec2_i32(vec2<i32>(global3.x, 2147483647i), vec2<i32>(1i, 1i)))));
    return false;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: bool) -> f32 {
    let var_0 = vec2<bool>(!select(select(func_2(), true, any(global0.e)), !(false || arg_3), !arg_3), 2147483647i > global3.x);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1085f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1346f) + arg_2.x)), arg_2.x));
    var var_2 = Struct_2(vec4<bool>(false == any(vec4<bool>(false, var_0.x, true, true)), true, global2.a, true), reverseBits(global0.b ^ ((global0.b & vec4<u32>(4294967295u, 0u, global0.b.x, 1u)) >> ((vec4<u32>(u_input.a, 0u, global0.b.x, global0.b.x) << (vec4<u32>(0u, u_input.a, global0.b.x, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)))), global0.d, global0.d, select(vec3<bool>(false, var_0.x, !any(global0.e)), global0.e, false));
    let var_3 = _wgslsmith_mod_vec4_u32(vec4<u32>(select(~(global0.b.x >> (1u % 32u)), ~(~28845u), any(!var_2.a)), var_2.b.x, _wgslsmith_dot_vec3_u32(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(91907u, 4294967295u, var_2.b.x), vec3<u32>(global0.b.x, 18879u, 70771u), vec3<u32>(u_input.a, global0.b.x, 0u)), _wgslsmith_add_vec3_u32(vec3<u32>(1074u, 1u, var_2.b.x), vec3<u32>(global0.b.x, global0.b.x, 7897u)), var_2.e), ~_wgslsmith_add_vec3_u32(var_2.b.zxz, vec3<u32>(u_input.a, var_2.b.x, 1u))), ~(~0u)), vec4<u32>(firstLeadingBit(4294967295u), 4294967295u, reverseBits(u_input.b), ~31735u ^ ~(var_2.b.x & 4294967295u)));
    var_1 = -671f;
    return arg_2.x;
}

fn func_4(arg_0: f32, arg_1: vec4<bool>) -> vec2<f32> {
    var var_0 = Struct_2(!vec4<bool>(global2.a, global2.a, func_3(global3.x, Struct_1(false), true), global2.a || (u_input.a == u_input.a)), vec4<u32>(u_input.a & _wgslsmith_clamp_u32(select(35352u, 4294967295u, global2.a), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 29943u, 0u), vec3<u32>(u_input.a, global0.b.x, 58878u)), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.b.x, 18254u, u_input.a, 23812u), vec4<u32>(4294967295u, global0.b.x, 54633u, u_input.a))), 4294967295u, _wgslsmith_dot_vec3_u32(global0.b.www, _wgslsmith_mod_vec3_u32(~global0.b.wxx, vec3<u32>(u_input.a, 1u, global0.b.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, firstTrailingBit(global0.b.x), ~u_input.a, 1u), global0.b)), Struct_1(!(arg_1.x && global0.e.x)), global0.c, global0.a.xzy);
    let var_1 = 32614u;
    var var_2 = Struct_1(false);
    let var_3 = Struct_2(!select(var_0.a, select(!vec4<bool>(global2.a, arg_1.x, false, global2.a), !vec4<bool>(global2.a, true, true, global2.a), arg_1), global0.d.a), var_0.b, global0.c, Struct_1(all(vec4<bool>(true, true, !global0.a.x, true))), select(select(!(!arg_1.yyz), !vec3<bool>(global2.a, global1.a, var_0.a.x), !arg_1.yxy), vec3<bool>(!(var_0.b.x < var_1), false, true & any(vec2<bool>(false, global0.e.x))), arg_1.yxy));
    var var_4 = var_3.d;
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2102f, _wgslsmith_div_f32(arg_0, -908f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 478f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-581f, 443f), vec2<f32>(-705f, arg_0), vec2<bool>(global1.a, false)))))))));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: vec3<u32>, arg_3: vec4<u32>) -> vec4<u32> {
    var var_0 = ~(countOneBits(vec2<u32>(~5371u, 1u)) & arg_2.xz);
    var var_1 = countOneBits(44418u);
    var var_2 = Struct_1(arg_0.x);
    var var_3 = Struct_2(!select(global0.a, select(!global0.a, global0.a, all(vec3<bool>(global1.a, var_2.a, global2.a))), false), arg_3 & ~select(global0.b, vec4<u32>(1u, u_input.a, var_0.x, 1u), false), global0.d, global0.c, vec3<bool>(global1.a, !func_3(global3.x >> (55157u % 32u), global0.d, true), !(!any(vec4<bool>(false, var_2.a, true, global1.a)))));
    var_2 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(65117u, reverseBits(43319u)), global0.b.zx) <= _wgslsmith_div_u32(31223u, ~(~u_input.a)));
    return ~var_3.b | vec4<u32>(countOneBits(firstTrailingBit(4294967295u)), 21657u, 43675u, 2554u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(select(global0.a, !global0.a, vec4<bool>(!(!global0.e.x), global2.a, false, 4294967295u >= _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, global0.b.x), vec3<u32>(0u, 0u, 6325u)))), func_5(!(!vec3<bool>(global1.a, global2.a, true)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-193f, _wgslsmith_f_op_f32(358f * -1434f)), _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_f32(func_1(false, Struct_1(false), vec4<f32>(2150f, -459f, 1163f, 739f), false)), global0.a)))), global0.b.yyy, firstTrailingBit(~global0.b) & ~_wgslsmith_add_vec4_u32(vec4<u32>(global0.b.x, global0.b.x, 1u, global0.b.x), vec4<u32>(global0.b.x, 2471u, 88225u, global0.b.x))), global0.c, global0.c, select(select(vec3<bool>(1i <= global3.x, any(global0.a.wx), true), !global0.a.xww, vec3<bool>(true, true, !global1.a)), select(!(!vec3<bool>(global1.a, global2.a, global0.c.a)), !select(global0.a.xzx, vec3<bool>(true, false, false), true), true), select(global0.e, vec3<bool>(true, true && global1.a, func_3(global3.x, global0.d, true)), global0.a.yzy)));
    global4 = 1i;
    let var_0 = func_5(global0.a.zzx, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(-740f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-522f, 1674f)))))), vec3<u32>(global0.b.x, 19343u, ~1u), global0.b).zx;
    let var_1 = ~0i;
    var var_2 = vec3<i32>(-9698i, ~_wgslsmith_sub_i32(-1i, var_1), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(-58668i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -267f)))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1366f), -1000f))), global0.b.zx, select(vec4<u32>(55766u, u_input.b, countOneBits(var_0.x >> (u_input.b % 32u)), u_input.a), vec4<u32>(0u, _wgslsmith_clamp_u32(u_input.b, ~global0.b.x, ~17251u), 1u, abs(~global0.b.x)), global2.a));
}

