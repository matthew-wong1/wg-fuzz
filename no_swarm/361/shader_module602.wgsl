struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

var<private> global1: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1() -> bool {
    var var_0 = Struct_1(u_input.b.x, _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(global1.b, vec3<i32>(-1i, -2147483647i, u_input.a.x)), u_input.a.wxy));
    var var_1 = Struct_1(1u, u_input.a.xxy);
    let var_2 = 18406i;
    global1 = global0[_wgslsmith_index_u32(~select(32465u, _wgslsmith_clamp_u32(~48783u, ~(~u_input.b.x), ~(~var_1.a)), !all(vec4<bool>(true, true, true, true))), 20u)];
    global0 = array<Struct_1, 20>();
    return false;
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: bool) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(0u, 20u)];
    var_0 = global0[_wgslsmith_index_u32(0u, 20u)];
    let var_1 = arg_2;
    let var_2 = global0[_wgslsmith_index_u32(~5220u, 20u)];
    let var_3 = global1.a;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~global1.a, vec3<i32>(_wgslsmith_mod_i32(i32(-1i) * -global1.b.x, _wgslsmith_add_i32(1486i, global1.b.x) ^ global1.b.x), 35629i, global1.b.x));
    global1 = Struct_1(0u, vec3<i32>(global1.b.x, -_wgslsmith_add_i32(countOneBits(global1.b.x), -global1.b.x), 1107i));
    var var_1 = Struct_1(u_input.b.x, vec3<i32>(-19092i, -1i, 1i) >> (vec3<u32>(1u, countOneBits(global1.a), 59761u << (~u_input.b.x % 32u)) % vec3<u32>(32u)));
    var var_2 = func_1();
    var var_3 = i32(-1i) * -min(reverseBits(firstLeadingBit(-1i)), -global1.b.x);
    let var_4 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(min(_wgslsmith_add_u32(u_input.b.x, u_input.c) << (global1.a % 32u), ~min(56227u, global1.a)), var_1.a), 20u)];
    var var_5 = (vec3<i32>(-min(7979i, -1i), var_4.b.x, var_1.b.x) >> ((_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, var_4.a, var_1.a), ~vec3<u32>(0u, global1.a, 21878u)) ^ _wgslsmith_clamp_vec3_u32(min(vec3<u32>(163u, 80964u, global1.a), vec3<u32>(var_4.a, var_0.a, 4294967295u)), u_input.b, reverseBits(vec3<u32>(0u, 45567u, 46080u)))) % vec3<u32>(32u))) << ((vec3<u32>(4294967295u, abs(7155u), var_4.a) ^ countOneBits(u_input.b)) % vec3<u32>(32u));
    var var_6 = func_2(_wgslsmith_f_op_f32(exp2(1f)), vec3<f32>(-1874f, -195f, -1252f), 45187i == ~(-max(0i, var_1.b.x)));
    var var_7 = !all(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, false), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)))) && (2147483647i < _wgslsmith_dot_vec3_i32(~var_1.b, select(abs(vec3<i32>(-1i, var_4.b.x, 29285i)), vec3<i32>(15781i, 2147483647i, 2147483647i), true)));
    let x = u_input.a;
    s_output = StorageBuffer(1176f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(253f))))));
}

