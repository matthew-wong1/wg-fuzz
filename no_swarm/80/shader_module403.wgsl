struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: Struct_2;

var<private> global1: array<bool, 21>;

var<private> global2: array<Struct_3, 11>;

var<private> global3: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(true, 1u, vec2<i32>(2147483647i, -5412i)), Struct_3(false, 4294967295u, vec2<i32>(i32(-2147483648), -7428i)), Struct_3(false, 11060u, vec2<i32>(32029i, -65679i)), Struct_3(true, 90669u, vec2<i32>(0i, 2147483647i)), Struct_3(true, 30145u, vec2<i32>(18678i, 2147483647i)), Struct_3(false, 4294967295u, vec2<i32>(-1i, 28465i)), Struct_3(false, 16257u, vec2<i32>(0i, -2398i)), Struct_3(true, 12016u, vec2<i32>(0i, -1017i)), Struct_3(false, 0u, vec2<i32>(-11915i, 0i)), Struct_3(true, 0u, vec2<i32>(-41137i, 1i)), Struct_3(true, 0u, vec2<i32>(33044i, 2147483647i)), Struct_3(false, 4294967295u, vec2<i32>(-54979i, -20151i)), Struct_3(true, 4294967295u, vec2<i32>(1i, -6934i)), Struct_3(true, 459u, vec2<i32>(1i, -2680i)), Struct_3(false, 1u, vec2<i32>(2147483647i, -26536i)), Struct_3(false, 4294967295u, vec2<i32>(i32(-2147483648), 0i)), Struct_3(false, 1u, vec2<i32>(1i, 11757i)), Struct_3(true, 1u, vec2<i32>(i32(-2147483648), -9669i)), Struct_3(true, 4294967295u, vec2<i32>(0i, -1i)), Struct_3(false, 1u, vec2<i32>(-1i, -36168i)), Struct_3(true, 25199u, vec2<i32>(-32049i, -26167i)), Struct_3(false, 0u, vec2<i32>(i32(-2147483648), 70455i)), Struct_3(false, 1u, vec2<i32>(-1i, 1i)), Struct_3(false, 4223u, vec2<i32>(i32(-2147483648), -1i)), Struct_3(false, 659u, vec2<i32>(-44143i, 18590i)), Struct_3(false, 13218u, vec2<i32>(0i, 2147483647i)), Struct_3(true, 1u, vec2<i32>(37288i, -1i)), Struct_3(false, 38665u, vec2<i32>(2147483647i, -3279i)), Struct_3(true, 12277u, vec2<i32>(38910i, 0i)), Struct_3(true, 4294967295u, vec2<i32>(2147483647i, -18506i)));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec2<u32> {
    let var_0 = ~4294967295u;
    global3 = array<Struct_3, 30>();
    let var_1 = 455f;
    let var_2 = Struct_3(global1[_wgslsmith_index_u32(~max(arg_0.a.a.x, countOneBits(~48028u)), 21u)], ~select(~global0.a.a.x, var_0, true), abs(vec2<i32>(1i, u_input.a.x)));
    var var_3 = global0.a;
    return ~_wgslsmith_div_vec2_u32(min(countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(var_2.b, 4294967295u), vec2<u32>(72947u, 15312u))), vec2<u32>(var_0, 1u)), (vec2<u32>(25020u, var_0) | select(vec2<u32>(0u, 0u), vec2<u32>(var_3.a.x, global0.a.a.x), var_2.a)) ^ global0.a.a.xx);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: u32) -> vec3<bool> {
    global2 = array<Struct_3, 11>();
    global3 = array<Struct_3, 30>();
    global2 = array<Struct_3, 11>();
    global1 = array<bool, 21>();
    global0 = Struct_2(Struct_1(~abs(abs(vec3<u32>(arg_1.x, 14526u, global0.a.a.x)))));
    return arg_0.yzx;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> u32 {
    global3 = array<Struct_3, 30>();
    let var_0 = select(!select(func_4(vec4<bool>(true, true, true, true), func_3(Struct_2(arg_0)), 17054u << (arg_0.a.x % 32u)), vec3<bool>(true, !arg_2, arg_2), vec3<bool>(true, true, global1[_wgslsmith_index_u32(arg_0.a.x, 21u)])), !vec3<bool>(true, any(!vec3<bool>(true, arg_2, global1[_wgslsmith_index_u32(global0.a.a.x, 21u)])), all(vec2<bool>(true, true))), vec3<bool>(~_wgslsmith_mod_u32(arg_0.a.x, arg_0.a.x) < (1u & ~arg_0.a.x), !all(!vec2<bool>(global1[_wgslsmith_index_u32(global0.a.a.x, 21u)], true)), !(!all(vec4<bool>(false, false, global1[_wgslsmith_index_u32(40375u, 21u)], false)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1299f * -361f))), 662f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1695f), _wgslsmith_f_op_f32(f32(-1f) * -739f)))), 1000f)));
    let var_2 = global2[_wgslsmith_index_u32(global0.a.a.x, 11u)];
    var var_3 = 33090u;
    return 69999u;
}

fn func_1(arg_0: u32, arg_1: vec3<bool>) -> Struct_2 {
    let var_0 = 4294967295u;
    let var_1 = Struct_3(_wgslsmith_div_u32(func_2(global0.a, ~7641u, !arg_1.x), ~global0.a.a.x) > var_0, global0.a.a.x, ~(~(~u_input.a.xy)) | u_input.a.ww);
    global0 = Struct_2(Struct_1(vec3<u32>(~4294967295u, ~abs(var_1.b), 1u)));
    return Struct_2(Struct_1(global0.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a;
    var var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(322f, 886f), vec2<f32>(466f, -1000f)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1972f, 389f), vec2<f32>(-148f, -459f), vec2<bool>(global1[_wgslsmith_index_u32(global0.a.a.x, 21u)], false))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(812f, 2427f) + vec2<f32>(437f, 540f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1927f, -991f), vec2<f32>(673f, 756f)))))));
    global2 = array<Struct_3, 11>();
    var var_2 = _wgslsmith_add_vec3_u32(min(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(global0.a.a.x, 33907u), ~var_0.a.x), _wgslsmith_clamp_u32(global0.a.a.x, var_0.a.x & var_0.a.x, ~0u), 1u), vec3<u32>(~global0.a.a.x, 1u, max(~9137u, _wgslsmith_mult_u32(30455u, var_0.a.x)))), ~var_0.a);
    let var_3 = Struct_1(_wgslsmith_sub_vec3_u32(~global0.a.a, countOneBits(~_wgslsmith_div_vec3_u32(var_0.a, global0.a.a))));
    var_2 = ~(~var_3.a);
    var var_4 = u_input.a.x;
    global0 = func_1(global0.a.a.x, select(!(!select(vec3<bool>(false, global1[_wgslsmith_index_u32(var_3.a.x, 21u)], true), vec3<bool>(global1[_wgslsmith_index_u32(var_3.a.x, 21u)], false, true), true)), select(vec3<bool>(global1[_wgslsmith_index_u32(firstLeadingBit(var_2.x), 21u)], global1[_wgslsmith_index_u32(var_3.a.x >> (var_3.a.x % 32u), 21u)], any(vec2<bool>(false, false))), select(select(vec3<bool>(global1[_wgslsmith_index_u32(49497u, 21u)], global1[_wgslsmith_index_u32(var_3.a.x, 21u)], false), vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 21u)], false), global1[_wgslsmith_index_u32(var_0.a.x, 21u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(global0.a.a.x, 21u)], false), true), select(vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 21u)], false), vec3<bool>(global1[_wgslsmith_index_u32(39031u, 21u)], global1[_wgslsmith_index_u32(var_2.x, 21u)], false), true)), !global1[_wgslsmith_index_u32(15331u, 21u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_1.x, -1417f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1502f, 164f, var_1.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-888f, -660f, var_1.x) - vec3<f32>(var_1.x, var_1.x, var_1.x))))));
}

