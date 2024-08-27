struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<f32>,
    d: vec3<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 27>;

var<private> global1: Struct_1;

var<private> global2: array<f32, 26>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: u32) -> u32 {
    let var_0 = select(!(!(!(!vec3<bool>(false, arg_0, arg_0)))), vec3<bool>(all(select(!vec2<bool>(arg_0, arg_0), !vec2<bool>(true, arg_0), arg_0)), !(!select(true, arg_0, arg_0)), arg_0 || arg_0), vec3<bool>(arg_2 >= select(arg_2, 1u << (arg_2 % 32u), all(vec2<bool>(arg_0, arg_0))), !arg_0, select(true, select(true, all(vec4<bool>(arg_0, true, arg_0, false)), true), all(vec4<bool>(arg_0, false, arg_0, false)))));
    global2 = array<f32, 26>();
    global1 = Struct_1(1u & global1.a, ~(~max(vec4<u32>(arg_2, 82882u, 4294967295u, arg_2), vec4<u32>(global1.a, global1.a, arg_2, global1.a))));
    var var_1 = Struct_1(_wgslsmith_add_u32(firstLeadingBit(global1.a & ~33515u), ~arg_2), _wgslsmith_add_vec4_u32(countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(3166u, arg_2, global1.a, arg_2), vec4<u32>(arg_2, 44652u, global1.b.x, 89478u))), global1.b) | (~_wgslsmith_sub_vec4_u32(global1.b, global1.b) & global1.b));
    global1 = Struct_1(~79435u, _wgslsmith_sub_vec4_u32(~vec4<u32>(122601u, 88061u, global1.a, 87016u) << (global1.b % vec4<u32>(32u)), reverseBits(reverseBits(~var_1.b))));
    return select(~(~firstLeadingBit(arg_2) >> (reverseBits(var_1.b.x) % 32u)), ~arg_2, true);
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> i32 {
    let var_0 = Struct_1(firstTrailingBit(_wgslsmith_dot_vec2_u32(global1.b.zy, ~arg_0.b.zx)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a, global1.a, _wgslsmith_div_u32(arg_0.b.x, 51182u), arg_0.b.x), ~_wgslsmith_div_vec4_u32(arg_0.b, global1.b)) % 32u), global1.b);
    global2 = array<f32, 26>();
    var var_1 = vec3<u32>(_wgslsmith_clamp_u32(arg_0.b.x, 1369u, ~func_3(false, min(1i, u_input.b), 0u)), 4294967295u | _wgslsmith_mult_u32(min(var_0.a, countOneBits(var_0.a)), _wgslsmith_add_u32(~4294967295u, abs(1u))), ~abs(reverseBits(var_0.a) & _wgslsmith_mod_u32(1u, var_0.a)));
    global0 = array<vec2<i32>, 27>();
    let var_2 = arg_0.b.ywy;
    return firstLeadingBit(~(-1i));
}

fn func_1() -> vec3<i32> {
    let var_0 = true;
    let var_1 = 6602u;
    global2 = array<f32, 26>();
    let var_2 = select(select(!select(vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(true, true, true, true), vec4<bool>(var_0, var_0, var_0, true)), select(vec4<bool>(all(vec2<bool>(false, true)), any(vec4<bool>(var_0, var_0, var_0, var_0)), var_0, all(vec2<bool>(true, var_0))), vec4<bool>(var_0, true, true, any(vec4<bool>(var_0, true, false, var_0))), _wgslsmith_f_op_f32(sign(751f)) <= 164f), any(select(!vec3<bool>(false, var_0, var_0), select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, false, true)), true))), vec4<bool>(var_0, true, !(global1.a <= ~1u), var_0), vec4<bool>((max(1i, u_input.a) == func_2(Struct_1(var_1, vec4<u32>(var_1, 138531u, 4294967295u, global1.b.x)), var_0)) & !all(vec4<bool>(true, false, false, false)), !var_0 || (291f < _wgslsmith_f_op_f32(-151f - global2[_wgslsmith_index_u32(4294967295u, 26u)])), var_0, true));
    global2 = array<f32, 26>();
    return countOneBits(-vec3<i32>(-_wgslsmith_div_i32(u_input.a, -13416i), _wgslsmith_clamp_i32(2147483647i, u_input.b, 1i) >> (_wgslsmith_dot_vec4_u32(global1.b, global1.b) % 32u), -1i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(34000u, vec4<u32>(~0u, ~global1.a, _wgslsmith_add_u32(4294967295u, ~(global1.a ^ global1.a)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(35900u, global1.b.x) & global1.a, ~global1.b.x)));
    var var_0 = ~_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(abs(14746i), u_input.b | u_input.b, u_input.b & 70889i), -(~vec3<i32>(u_input.b, u_input.a, -49685i))), _wgslsmith_add_vec3_i32(abs(vec3<i32>(-9110i, u_input.a, u_input.b)), abs(-vec3<i32>(2426i, 0i, u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(21291i ^ u_input.a, -u_input.a), -min(u_input.b, u_input.a)), -23710i, 1i), global2[_wgslsmith_index_u32(1u | global1.b.x, 26u)], _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2[_wgslsmith_index_u32(1u, 26u)], -740f, global2[_wgslsmith_index_u32(15893u, 26u)])))), vec3<f32>(global2[_wgslsmith_index_u32(~global1.a, 26u)], _wgslsmith_f_op_f32(f32(-1f) * -458f), 920f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(1u, 26u)], 2070f, global2[_wgslsmith_index_u32(1u, 26u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(0u, 26u)], -251f, global2[_wgslsmith_index_u32(76941u, 26u)]) - vec3<f32>(global2[_wgslsmith_index_u32(global1.b.x, 26u)], global2[_wgslsmith_index_u32(global1.a, 26u)], global2[_wgslsmith_index_u32(global1.b.x, 26u)]))))), select(~(~func_1()), vec3<i32>(u_input.a, abs(abs(1i)), -2147483647i), false), vec3<f32>(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(select(0u, 37699u, true), select(1u, global1.b.x, true)), 26u)])), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(131f + global2[_wgslsmith_index_u32(27933u, 26u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(98152u, 26u)]))), _wgslsmith_div_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(global1.a, 26u)], 2165f), -367f))), _wgslsmith_f_op_f32(step(1864f, 1350f))));
}

