struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 20> = array<vec4<u32>, 20>(vec4<u32>(21470u, 1u, 1u, 1u), vec4<u32>(72164u, 1u, 0u, 70431u), vec4<u32>(42133u, 4294967295u, 25964u, 14688u), vec4<u32>(31974u, 109192u, 1u, 25578u), vec4<u32>(13545u, 23721u, 0u, 0u), vec4<u32>(85474u, 26856u, 0u, 9397u), vec4<u32>(91212u, 4294967295u, 1u, 33550u), vec4<u32>(60615u, 1u, 0u, 3327u), vec4<u32>(0u, 0u, 0u, 11791u), vec4<u32>(70595u, 4294967295u, 0u, 26382u), vec4<u32>(56432u, 1u, 1u, 4294967295u), vec4<u32>(45094u, 0u, 1u, 68048u), vec4<u32>(4294967295u, 33498u, 4294967295u, 0u), vec4<u32>(0u, 0u, 0u, 20956u), vec4<u32>(53056u, 72447u, 0u, 4294967295u), vec4<u32>(73486u, 23300u, 4294967295u, 39414u), vec4<u32>(4294967295u, 66691u, 24390u, 37540u), vec4<u32>(1u, 1723u, 1u, 0u), vec4<u32>(0u, 76u, 4294967295u, 0u), vec4<u32>(2482u, 0u, 51426u, 4294967295u));

var<private> global1: array<u32, 22>;

var<private> global2: i32 = 20025i;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: bool) -> vec3<bool> {
    global2 = abs(arg_1);
    let var_0 = Struct_2(Struct_1(u_input.a << (_wgslsmith_sub_vec3_u32(vec3<u32>(0u, global1[_wgslsmith_index_u32(u_input.c, 22u)], 0u), countOneBits(vec3<u32>(64228u, u_input.c, 1u))) % vec3<u32>(32u)), vec3<bool>(arg_2, arg_0.x, true)), arg_0, arg_0);
    global1 = array<u32, 22>();
    var var_1 = ~(~0u);
    global0 = array<vec4<u32>, 20>();
    return arg_0.zyw;
}

fn func_2() -> vec3<bool> {
    let var_0 = _wgslsmith_mult_u32(firstTrailingBit(~global1[_wgslsmith_index_u32(u_input.c & ~1u, 22u)]), ~(~u_input.c));
    let var_1 = 499f;
    global1 = array<u32, 22>();
    let var_2 = !func_3(vec4<bool>(true, any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))), true, abs(u_input.b.x) >= ~u_input.b.x), 1i, any(vec4<bool>(true, true, true, u_input.a.x >= u_input.b.x)));
    global2 = i32(-1i) * -23068i;
    return !vec3<bool>(min(34752i, _wgslsmith_mod_i32(u_input.a.x, 44616i)) == u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1))) < -1204f, all(select(!vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), select(vec4<bool>(var_2.x, var_2.x, var_2.x, true), vec4<bool>(var_2.x, var_2.x, true, true), vec4<bool>(true, true, var_2.x, true)), select(vec4<bool>(var_2.x, var_2.x, true, true), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), true))));
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    global0 = array<vec4<u32>, 20>();
    global0 = array<vec4<u32>, 20>();
    global1 = array<u32, 22>();
    let var_0 = 4294967295u;
    global1 = array<u32, 22>();
    return Struct_1(u_input.a, select(select(!select(vec3<bool>(true, true, false), vec3<bool>(true, arg_0.x, false), arg_0.yyz), vec3<bool>(false, arg_0.x | arg_0.x, false || arg_0.x), 7972u < u_input.c), vec3<bool>(arg_0.x, arg_0.x, true), select(select(func_2(), arg_0.wyx, arg_0.x), !func_2(), arg_0.xyz)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> Struct_2 {
    var var_0 = arg_1;
    global2 = -1i;
    global0 = array<vec4<u32>, 20>();
    var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(453f, -963f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(362f, -1350f)))))));
    return Struct_2(Struct_1(-reverseBits(vec3<i32>(-1i, arg_0.a.x, 21061i)), vec3<bool>(!arg_0.b.x, true, true)), select(select(!(!vec4<bool>(true, true, arg_0.b.x, false)), !(!vec4<bool>(var_0.b.x, false, false, false)), (16299u & arg_2) <= (global1[_wgslsmith_index_u32(52163u, 22u)] >> (global1[_wgslsmith_index_u32(u_input.c, 22u)] % 32u))), !select(vec4<bool>(false, false, true, var_0.b.x), vec4<bool>(arg_1.b.x, arg_1.b.x, var_0.b.x, true), false), arg_0.b.x), vec4<bool>(all(!(!vec4<bool>(true, arg_0.b.x, false, arg_0.b.x))), !(!(!arg_0.b.x)), true, var_0.b.x));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    let var_0 = arg_0;
    global0 = array<vec4<u32>, 20>();
    var var_1 = ~var_0.a.a;
    var var_2 = u_input.c;
    let var_3 = Struct_1(vec3<i32>(func_4(func_1(vec4<bool>(var_0.b.x, true, false, false)), var_0.a, global1[_wgslsmith_index_u32(4294967295u, 22u)], ~(-2147483647i)).a.a.x, arg_0.a.a.x, 16934i), func_4(var_0.a, func_1(arg_0.b), ~global1[_wgslsmith_index_u32(~firstLeadingBit(4294967295u), 22u)], i32(-1i) * -26570i).a.b);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(Struct_1(vec3<i32>(i32(-1i) * -1i, ~(-16876i), -u_input.a.x), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), func_1(vec4<bool>(true, true, true, true)), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 22u)], 22u)], -15967i));
    var var_1 = vec4<i32>(_wgslsmith_div_i32(~(-29433i), min(var_0.a.a.x, abs(var_0.a.a.x))), ~13754i, 30863i, var_0.a.a.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1381f, -1821f, 1160f)))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-572f, -569f, -130f) * vec3<f32>(1582f, 734f, -427f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1629f, 480f, -492f), vec3<f32>(-199f, 514f, 1810f)))))), false)) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(937f + 841f), _wgslsmith_f_op_f32(trunc(-978f)), var_0.a.b.x)) + -1177f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-550f + 237f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -610f) * 1f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-811f * 184f)))));
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -928f, var_2.x, -339f) + vec4<f32>(-1707f, 204f, -1215f, var_2.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1317f, var_2.x, 2169f) - vec4<f32>(var_2.x, -312f, var_2.x, -1158f)))))), vec4<f32>(var_2.x, var_2.x, var_2.x, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -594f), _wgslsmith_f_op_f32(var_2.x * -925f)), var_2.x))));
    let var_4 = ~(global0[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(u_input.c, u_input.c)), 20u)] | ~_wgslsmith_mod_vec4_u32(~global0[_wgslsmith_index_u32(u_input.c, 20u)], global0[_wgslsmith_index_u32(59113u, 20u)]));
    let var_5 = vec4<f32>(-2479f, _wgslsmith_f_op_f32(sign(var_3.x)), -461f, -494f);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a ^ reverseBits(reverseBits(func_4(Struct_1(vec3<i32>(var_1.x, var_0.a.a.x, -32013i), var_0.c.wzw), var_0.a, 1u, 0i).a.a)), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -729f))), -522f, var_5.x, var_5.x));
}

