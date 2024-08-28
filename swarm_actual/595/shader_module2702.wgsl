struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: u32,
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

var<private> global0: array<vec4<bool>, 2>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<u32>(41498u, 43935u, 4294967295u), false));

var<private> global2: vec2<bool> = vec2<bool>(true, false);

var<private> global3: array<vec4<i32>, 14> = array<vec4<i32>, 14>(vec4<i32>(11384i, -194i, 21344i, 0i), vec4<i32>(-2525i, -1i, 0i, i32(-2147483648)), vec4<i32>(11237i, -65376i, 36628i, 2147483647i), vec4<i32>(i32(-2147483648), -33459i, i32(-2147483648), 32565i), vec4<i32>(24048i, 1i, 1i, 2147483647i), vec4<i32>(-14596i, -28512i, 1i, i32(-2147483648)), vec4<i32>(17611i, 17149i, -20643i, i32(-2147483648)), vec4<i32>(0i, 1i, 4058i, 2147483647i), vec4<i32>(1i, i32(-2147483648), -60223i, -46810i), vec4<i32>(i32(-2147483648), -1i, 37388i, -1i), vec4<i32>(-1i, -27891i, 0i, -819i), vec4<i32>(41052i, -21852i, -38037i, -13409i), vec4<i32>(-57059i, 2147483647i, 1i, 1i), vec4<i32>(-1i, -1i, i32(-2147483648), -15144i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_3) -> bool {
    global0 = array<vec4<bool>, 2>();
    let var_0 = _wgslsmith_f_op_f32(-342f - -587f) >= arg_2.a.x;
    let var_1 = arg_1;
    global1 = Struct_2(Struct_1(vec3<u32>(25250u, reverseBits(1u), countOneBits(11093u)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), ~vec2<i32>(1i, 0i)) > arg_1));
    global2 = vec2<bool>(!global1.a.b, true != all(vec4<bool>(arg_2.d.b != var_0, true, !global1.a.b, -525f <= arg_2.a.x)));
    return !any(!select(vec4<bool>(false, arg_2.d.b, arg_2.c.x, global2.x), vec4<bool>(true, true, true, arg_2.d.b), !vec4<bool>(false, var_0, var_0, true)));
}

fn func_2() -> f32 {
    var var_0 = Struct_2(global1.a);
    let var_1 = vec4<u32>(1024u, abs(~var_0.a.a.x), _wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec3_u32(firstTrailingBit(abs(u_input.b)), global1.a.a)), ~_wgslsmith_div_u32(~(~1u), _wgslsmith_sub_u32(max(global1.a.a.x, u_input.d), reverseBits(45015u))));
    let var_2 = ~15781u;
    global2 = select(vec2<bool>(true, !(any(vec2<bool>(global1.a.b, true)) & var_0.a.b)), select(!vec2<bool>(true, var_0.a.b), vec2<bool>(false, !func_3(2147483647i, -6880i, Struct_3(vec4<f32>(430f, 1033f, 1869f, -648f), vec2<f32>(-578f, -1000f), vec4<bool>(false, global2.x, global2.x, var_0.a.b), Struct_1(global1.a.a, var_0.a.b)))), vec2<bool>(true, true || global2.x)), -1i < _wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(34357i), i32(-1i) * -2147483647i), vec2<i32>(1i, 1i)));
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -226f), 849f, !global2.x)), _wgslsmith_f_op_f32(trunc(-650f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(266f, 2647f)), -549f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-359f, 972f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(105f, 182f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1349f, -363f) - vec2<f32>(878f, -870f))))) - _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-186f, -1256f) + vec2<f32>(-430f, -555f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(444f, 749f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(967f, -657f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1534f, -1297f)), all(vec2<bool>(global1.a.b, global1.a.b)))))), vec4<bool>(true, ~_wgslsmith_dot_vec4_i32(global3[_wgslsmith_index_u32(29505u, 14u)], vec4<i32>(-1i, -2147483647i, -59236i, 26290i)) != -2147483647i, false, false), var_0.a);
    return _wgslsmith_f_op_f32(-var_3.b.x);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -245f), 1f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(742f - -617f)))), _wgslsmith_f_op_f32(abs(-1867f)), _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2158f, -1027f)), vec2<f32>(-1000f, 989f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2593f, -791f)) * vec2<f32>(1f, 1f)), vec2<f32>(1060f, _wgslsmith_f_op_f32(f32(-1f) * -658f))))), !vec4<bool>(true, global2.x, false || global1.a.b, all(vec2<bool>(false, true)) && true), global1.a);
    var var_1 = min(global3[_wgslsmith_index_u32(33987u ^ _wgslsmith_mod_u32(reverseBits(~global1.a.a.x), 1u), 14u)], -global3[_wgslsmith_index_u32(~global1.a.a.x >> (firstTrailingBit(global1.a.a.x) % 32u), 14u)]);
    global2 = !select(!var_0.c.yy, !(!select(var_0.c.xz, vec2<bool>(true, global2.x), true)), vec2<bool>(!any(var_0.c.xw), true));
    global0 = array<vec4<bool>, 2>();
    let var_2 = false;
    return var_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.xy;
    global0 = array<vec4<bool>, 2>();
    var var_1 = func_1();
    let var_2 = any(global0[_wgslsmith_index_u32(select(~_wgslsmith_add_u32(var_0.x, var_0.x), ~var_1.a.x, true) | ~_wgslsmith_sub_u32(1u, firstTrailingBit(global1.a.a.x)), 2u)]);
    global3 = array<vec4<i32>, 14>();
    let var_3 = Struct_3(vec4<f32>(1f, _wgslsmith_f_op_f32(404f + 661f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -513f), _wgslsmith_f_op_f32(-1396f + 256f)) * 727f), _wgslsmith_f_op_f32(f32(-1f) * -963f)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1488f), -132f), select(!vec4<bool>(!var_2, any(vec2<bool>(var_1.b, false)), all(vec4<bool>(global2.x, false, global2.x, true)), false), global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(countOneBits(~124007u), 2u)]), global1.a);
    var var_4 = vec4<i32>(_wgslsmith_dot_vec3_i32(~((vec3<i32>(19721i, 0i, 1i) << (vec3<u32>(var_3.d.a.x, 4294967295u, 18315u) % vec3<u32>(32u))) | -vec3<i32>(0i, -2147483647i, -2147483647i)), vec3<i32>(-18144i, 1i, -reverseBits(-24461i))), ~firstLeadingBit(1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-11183i, abs(29965i), i32(-1i) * -11797i, ~(-1i)) ^ global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.x, 0u, 20832u), ~var_3.d.a), 14u)], ~vec4<i32>(~(-28384i), 1i, _wgslsmith_clamp_i32(1i, 0i, -1i), 1i)), _wgslsmith_div_i32(i32(-1i) * -19812i, -_wgslsmith_sub_i32(select(-31410i, 42575i, global2.x), reverseBits(1i))));
    var var_5 = -(select(var_4.xw, vec2<i32>(var_4.x, 5705i), vec2<bool>(true, global2.x && global1.a.b)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.a.x, var_0.x), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(global1.a.a.x, 1u), vec2<u32>(8178u, var_0.x), vec2<u32>(56378u, var_3.d.a.x))) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(-11510i);
}

