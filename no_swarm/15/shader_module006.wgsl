struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(Struct_1(i32(-2147483648), 0i), Struct_2(Struct_1(32661i, -1i), Struct_1(2147483647i, 0i)), Struct_1(24389i, 0i)), Struct_3(Struct_1(0i, -10681i), Struct_2(Struct_1(2147483647i, i32(-2147483648)), Struct_1(2147483647i, -56528i)), Struct_1(-23273i, -25666i)), Struct_3(Struct_1(0i, -1i), Struct_2(Struct_1(0i, 0i), Struct_1(2147483647i, -1i)), Struct_1(2147483647i, -56731i)), Struct_3(Struct_1(-1i, 26310i), Struct_2(Struct_1(-1i, 10018i), Struct_1(2147483647i, 47737i)), Struct_1(-1i, -12345i)), Struct_3(Struct_1(17392i, 38048i), Struct_2(Struct_1(-1i, -1i), Struct_1(2147483647i, i32(-2147483648))), Struct_1(2147483647i, -1i)), Struct_3(Struct_1(2147483647i, -41384i), Struct_2(Struct_1(2147483647i, 62879i), Struct_1(-30633i, 34189i)), Struct_1(-1i, 0i)), Struct_3(Struct_1(17306i, 1i), Struct_2(Struct_1(0i, -3291i), Struct_1(2147483647i, 29923i)), Struct_1(72235i, 0i)), Struct_3(Struct_1(-7921i, 2147483647i), Struct_2(Struct_1(i32(-2147483648), 0i), Struct_1(-1i, -20294i)), Struct_1(-27631i, i32(-2147483648))), Struct_3(Struct_1(2147483647i, -91294i), Struct_2(Struct_1(-1i, 2147483647i), Struct_1(0i, i32(-2147483648))), Struct_1(0i, 30252i)), Struct_3(Struct_1(-46814i, -1i), Struct_2(Struct_1(-13177i, 2147483647i), Struct_1(-1i, -1i)), Struct_1(2147483647i, 30215i)), Struct_3(Struct_1(1i, -38717i), Struct_2(Struct_1(i32(-2147483648), -33316i), Struct_1(12504i, 71491i)), Struct_1(1557i, 18706i)), Struct_3(Struct_1(-1i, i32(-2147483648)), Struct_2(Struct_1(2147483647i, 1i), Struct_1(2147483647i, 7467i)), Struct_1(i32(-2147483648), 11791i)), Struct_3(Struct_1(i32(-2147483648), 2147483647i), Struct_2(Struct_1(2147483647i, 22198i), Struct_1(1i, i32(-2147483648))), Struct_1(26336i, i32(-2147483648))), Struct_3(Struct_1(24827i, -16914i), Struct_2(Struct_1(24320i, 17212i), Struct_1(i32(-2147483648), 17472i)), Struct_1(66794i, -5144i)), Struct_3(Struct_1(-46163i, 5335i), Struct_2(Struct_1(-29199i, 23858i), Struct_1(-86514i, 2147483647i)), Struct_1(14034i, -1i)), Struct_3(Struct_1(-343i, 80282i), Struct_2(Struct_1(1i, 16790i), Struct_1(7878i, 17097i)), Struct_1(1i, 32652i)), Struct_3(Struct_1(8891i, 45648i), Struct_2(Struct_1(2147483647i, 31690i), Struct_1(0i, 2147483647i)), Struct_1(i32(-2147483648), 10983i)), Struct_3(Struct_1(0i, 0i), Struct_2(Struct_1(i32(-2147483648), -68544i), Struct_1(i32(-2147483648), i32(-2147483648))), Struct_1(2147483647i, 10152i)), Struct_3(Struct_1(8592i, 0i), Struct_2(Struct_1(51283i, 73453i), Struct_1(2147483647i, -48392i)), Struct_1(1i, i32(-2147483648))), Struct_3(Struct_1(62728i, 31940i), Struct_2(Struct_1(7495i, 1i), Struct_1(i32(-2147483648), 25405i)), Struct_1(9509i, 2147483647i)), Struct_3(Struct_1(2147483647i, -22162i), Struct_2(Struct_1(2147483647i, 2147483647i), Struct_1(-1i, 24792i)), Struct_1(-1789i, -5116i)), Struct_3(Struct_1(2147483647i, i32(-2147483648)), Struct_2(Struct_1(0i, -31593i), Struct_1(i32(-2147483648), -33547i)), Struct_1(i32(-2147483648), -10270i)), Struct_3(Struct_1(2255i, 2147483647i), Struct_2(Struct_1(0i, 39068i), Struct_1(56245i, 1i)), Struct_1(0i, -1i)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> bool {
    return true;
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    var var_0 = arg_0.b.b;
    var var_1 = arg_0.b;
    let var_2 = arg_0;
    let var_3 = select(!(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)))), vec2<bool>(true, true), !vec2<bool>(func_3(var_2.b.a), select(var_1.a.b < u_input.b, true, var_1.b.b <= -16820i)));
    var var_4 = -global0.b;
    return Struct_1(var_0.a, firstLeadingBit(-countOneBits(global0.b)));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: Struct_1) -> f32 {
    global1 = array<Struct_3, 23>();
    return 1333f;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<i32>) -> u32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(2346u, 4294967295u), vec2<u32>(47639u, 1u))), global1[_wgslsmith_index_u32(~23569u, 23u)], func_2(Struct_3(Struct_1(-1i, -1i), Struct_2(Struct_1(arg_1.x, u_input.a.x), Struct_1(global0.a, u_input.c)), Struct_1(-1i, u_input.d)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-107f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1529f) - _wgslsmith_f_op_f32(trunc(1000f))))))));
    let var_1 = Struct_2(func_2(Struct_3(func_2(Struct_3(Struct_1(global0.b, 2147483647i), Struct_2(Struct_1(arg_1.x, -36196i), Struct_1(u_input.d, arg_0.x)), Struct_1(global0.a, -2147483647i))), Struct_2(func_2(Struct_3(Struct_1(u_input.c, arg_0.x), Struct_2(Struct_1(1i, u_input.a.x), Struct_1(arg_1.x, global0.a)), Struct_1(arg_1.x, global0.a))), func_2(Struct_3(Struct_1(u_input.b, 1i), Struct_2(Struct_1(global0.a, 2147483647i), Struct_1(arg_1.x, -42961i)), Struct_1(global0.a, global0.a)))), func_2(global1[_wgslsmith_index_u32(firstTrailingBit(10789u), 23u)]))), func_2(Struct_3(func_2(global1[_wgslsmith_index_u32(~0u, 23u)]), Struct_2(Struct_1(-49044i, arg_0.x), func_2(global1[_wgslsmith_index_u32(4294967295u, 23u)])), Struct_1(-37774i, -24149i))));
    let var_2 = Struct_2(func_2(Struct_3(func_2(Struct_3(Struct_1(42156i, var_1.a.b), var_1, Struct_1(-1i, 0i))), Struct_2(func_2(Struct_3(var_1.b, var_1, var_1.b)), var_1.b), Struct_1(global0.a, _wgslsmith_sub_i32(0i, -9094i)))), var_1.a);
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-477f, -323f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.x - -297f), var_0.x) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -1275f) - vec2<f32>(var_0.x, -146f))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1485f) - vec2<f32>(424f, var_0.x)), vec2<f32>(var_0.x, -442f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-498f, var_0.x)))))));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~vec4<u32>(func_1(vec2<i32>(global0.a, 59235i), u_input.a) ^ min(31300u, 29606u), func_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.b, global0.a), u_input.a.yx, u_input.a.xz), firstTrailingBit(u_input.a)), ~_wgslsmith_add_u32(0u, 40538u), ~_wgslsmith_mod_u32(57996u, 1u)));
    var var_1 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(232f, _wgslsmith_f_op_f32(abs(1181f)))), 673f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1269f - 2138f)), _wgslsmith_f_op_f32(func_4(_wgslsmith_clamp_vec2_u32(var_0.zw, var_0.yz, var_0.zw), global1[_wgslsmith_index_u32(~var_0.x, 23u)], func_2(Struct_3(Struct_1(global0.b, 63573i), Struct_2(Struct_1(global0.b, -11613i), Struct_1(global0.b, global0.b)), Struct_1(u_input.b, global0.a)))))), 235f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(684f - -1000f)) * 106f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 983f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-539f * -665f) + _wgslsmith_f_op_f32(120f + 289f)) - _wgslsmith_f_op_f32(-210f - _wgslsmith_f_op_f32(823f - -672f))), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(3050f + -299f) - _wgslsmith_f_op_f32(max(911f, 1572f))))))));
    let var_2 = 2147483647i;
    global1 = array<Struct_3, 23>();
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.wxz);
}

