struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
    c: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 3>;

var<private> global1: i32 = 19637i;

var<private> global2: array<bool, 24> = array<bool, 24>(true, true, true, false, false, false, true, true, false, true, true, true, true, true, false, true, true, false, false, false, false, true, true, true);

var<private> global3: Struct_2 = Struct_2(363f, Struct_1(false, vec4<i32>(29075i, 1i, -27927i, 41299i), vec4<u32>(99882u, 1u, 0u, 0u), 1u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: f32) -> f32 {
    global1 = -(~global3.b.b.x);
    var var_0 = firstTrailingBit(u_input.b);
    let var_1 = Struct_1(global3.b.a, ~reverseBits(select(-vec4<i32>(global3.b.b.x, global3.b.b.x, global3.b.b.x, global3.b.b.x), firstTrailingBit(vec4<i32>(global3.b.b.x, -13374i, 2147483647i, 1i)), global2[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x), 24u)])), vec4<u32>(~var_0.x, countOneBits(var_0.x), 4294967295u, ~_wgslsmith_sub_u32(~51220u, u_input.a)), u_input.a);
    var var_2 = Struct_4(var_0.x, vec3<i32>(-(-2147483647i | global3.b.b.x), var_1.b.x, global3.b.b.x), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(14882u), ~var_0.x) | ~83540u, 3u)]);
    let var_3 = var_2.c.d.b.c.yyx;
    return _wgslsmith_f_op_f32(arg_0 - -2472f);
}

fn func_2(arg_0: Struct_5, arg_1: f32) -> f32 {
    var var_0 = !(!select(!select(vec3<bool>(global3.b.a, global3.b.a, global3.b.a), vec3<bool>(false, false, global2[_wgslsmith_index_u32(global3.b.d, 24u)]), vec3<bool>(false, false, false)), !select(vec3<bool>(true, true, true), vec3<bool>(global3.b.a, true, false), global2[_wgslsmith_index_u32(46798u, 24u)]), vec3<bool>(true, select(false, global3.b.a, global3.b.a), true)));
    let var_1 = -1i;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(-183f, vec4<bool>(var_0.x, false, false, true), arg_1)), _wgslsmith_f_op_f32(-global3.a), -218f, _wgslsmith_f_op_f32(-952f + -917f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1, global3.a, global3.a, arg_1), vec4<f32>(arg_1, -418f, global3.a, -2220f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 154f, -875f, global3.a))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(247f, 392f, 325f, global3.a), vec4<f32>(arg_1, -961f, arg_1, arg_1), vec4<bool>(true, global3.b.a, global2[_wgslsmith_index_u32(95832u, 24u)], var_0.x)))))));
    let var_3 = min(~(-abs(-arg_0.b)), abs(vec3<i32>(-1i) * -(vec3<i32>(-3791i, -3122i, var_1) >> (vec3<u32>(0u, 16866u, 13096u) % vec3<u32>(32u)))));
    let var_4 = arg_1;
    return 1444f;
}

fn func_1() -> bool {
    global1 = _wgslsmith_mod_i32(global3.b.b.x, _wgslsmith_mult_i32(global3.b.b.x, 0i));
    var var_0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3.a), _wgslsmith_f_op_f32(floor(1008f)), global3.b.a)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.a, global3.a) * _wgslsmith_f_op_f32(global3.a - 326f))), _wgslsmith_f_op_f32(select(-616f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.a, 1000f) - _wgslsmith_f_op_f32(-639f * global3.a)), global2[_wgslsmith_index_u32(~(~68136u), 24u)])), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(global3.a)), global3.a, true)))), _wgslsmith_f_op_f32(-1628f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.a))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_5(0i, global3.b.b.xxy), global3.a)) + global3.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -747f)) - _wgslsmith_f_op_f32(1f - global3.a)), _wgslsmith_f_op_f32(937f - global3.a), global3.a)));
    global3 = Struct_2(_wgslsmith_f_op_f32(-1f), global3.b);
    var var_1 = global3.b.c.yw;
    global2 = array<bool, 24>();
    return global2[_wgslsmith_index_u32(0u, 24u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global3.b.b.x;
    let var_0 = vec4<bool>(1361f < global3.a, !func_1(), global2[_wgslsmith_index_u32(31239u, 24u)], 1u <= (_wgslsmith_mod_u32(0u, 17606u) << (u_input.a % 32u)));
    global0 = array<Struct_3, 3>();
    var var_1 = !var_0;
    let var_2 = max(reverseBits(31692u) & global3.b.c.x, _wgslsmith_add_u32(1u, 1u));
    var var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(global3.b.b.wyz);
}

