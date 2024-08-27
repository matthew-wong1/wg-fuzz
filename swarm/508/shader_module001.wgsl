struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: f32,
    d: vec4<u32>,
    e: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
    c: bool,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5> = array<u32, 5>(2627u, 0u, 4294967295u, 9545u, 2501u);

var<private> global1: Struct_1;

var<private> global2: vec4<u32>;

var<private> global3: Struct_4;

var<private> global4: array<vec4<u32>, 18>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<i32>) -> u32 {
    var var_0 = ~(~vec4<i32>(-(~2147483647i), u_input.b, abs(firstLeadingBit(-1i)), -1i));
    let var_1 = var_0.x;
    var_0 = vec4<i32>(-76211i, _wgslsmith_mod_i32(max(firstTrailingBit(var_0.x >> (0u % 32u)), reverseBits(var_0.x)), 697i >> (1u % 32u)), var_0.x, _wgslsmith_add_i32(var_0.x, 65137i));
    global4 = array<vec4<u32>, 18>();
    let var_2 = _wgslsmith_dot_vec4_u32(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)] | _wgslsmith_add_u32(64644u, global1.d.x), 5u)] | ~reverseBits(global2.x), 18u)] ^ reverseBits(vec4<u32>(global1.d.x, global0[_wgslsmith_index_u32(0u, 5u)] | 20971u, global2.x, global1.d.x | global1.d.x)), global4[_wgslsmith_index_u32(firstTrailingBit(~global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~global1.d.x, global0[_wgslsmith_index_u32(1u, 5u)]), 5u)]), 18u)]);
    return 1u;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_2) -> u32 {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(242f - _wgslsmith_f_op_f32(round(1607f))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global1.a - vec3<f32>(arg_2.b.x, global1.c, global1.a.x)), _wgslsmith_f_op_vec3_f32(select(global1.a, global1.a, vec3<bool>(false, false, false))), u_input.a == -1i))), _wgslsmith_f_op_f32(-365f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -469f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(198f)))), vec3<u32>(_wgslsmith_mult_u32(arg_2.d.x, _wgslsmith_clamp_u32(arg_2.d.x, 0u, arg_0.d.x)), _wgslsmith_sub_u32(func_3(vec4<bool>(true, arg_2.e, global3.c, true), vec3<i32>(0i, 0i, -1204i)), 17079u), ~arg_0.d.x)));
    return reverseBits(_wgslsmith_div_u32(global1.d.x, min(_wgslsmith_add_u32(global2.x, arg_0.d.x), firstLeadingBit(1u))) ^ ~reverseBits(~71234u));
}

fn func_1() -> vec3<bool> {
    let var_0 = countOneBits(_wgslsmith_mod_u32(~global1.d.x, ~func_2(Struct_2(global1.a.yx, vec2<f32>(-522f, 1642f), 772f, vec4<u32>(global1.d.x, global0[_wgslsmith_index_u32(global1.d.x, 5u)], 0u, global1.d.x), global3.b), vec4<bool>(global3.a.x, false, global3.a.x, global3.b), Struct_2(vec2<f32>(227f, global1.b), global1.a.xx, global1.a.x, vec4<u32>(0u, global0[_wgslsmith_index_u32(global1.d.x, 5u)], global1.d.x, 87748u), global3.c)))) | 0u;
    global3 = Struct_4(vec2<bool>(257f < global1.c, all(vec2<bool>(true, any(vec4<bool>(false, true, true, global3.a.x))))), false, all(!select(select(vec3<bool>(global3.c, false, false), vec3<bool>(global3.b, true, global3.a.x), global3.a.x), !vec3<bool>(true, global3.a.x, global3.c), true)));
    var var_1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-347f, -171f)))))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global1.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(339f, global1.c, global1.a.x) * global1.a))), global1.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) * _wgslsmith_f_op_f32(global1.a.x + -1485f)))), ~global2.wwz));
    var var_2 = ~_wgslsmith_mult_vec2_i32(abs(-vec2<i32>(u_input.b, -16909i)), -(~vec2<i32>(-24738i, u_input.b)) ^ vec2<i32>(u_input.b, u_input.a));
    let var_3 = ~(~(~(~global0[_wgslsmith_index_u32(global2.x, 5u)])) << (min(_wgslsmith_add_u32(global2.x, 37789u), ~(5412u | global2.x)) % 32u));
    return select(select(select(vec3<bool>(all(vec3<bool>(global3.c, global3.a.x, true)), any(vec3<bool>(false, false, true)), !global3.a.x), !vec3<bool>(global3.a.x, global3.c, global3.a.x), !select(vec3<bool>(true, false, true), vec3<bool>(global3.c, true, false), vec3<bool>(global3.c, false, global3.b))), select(!(!vec3<bool>(global3.c, global3.b, true)), vec3<bool>(global3.a.x, any(vec2<bool>(global3.a.x, false)), true), select(vec3<bool>(false, global3.b, true), !vec3<bool>(global3.c, true, true), all(vec4<bool>(global3.c, global3.a.x, global3.c, global3.b)))), false), select(vec3<bool>(all(global3.a), all(select(vec3<bool>(false, false, false), vec3<bool>(false, global3.a.x, global3.b), vec3<bool>(global3.b, global3.b, global3.c))), !(global3.c || false)), select(vec3<bool>(!global3.c, false, var_1.a <= -2885f), vec3<bool>(global3.c & global3.b, all(vec4<bool>(global3.c, global3.a.x, global3.b, global3.b)), global3.a.x), !select(vec3<bool>(false, false, true), vec3<bool>(global3.a.x, false, global3.c), true)), 0i >= _wgslsmith_clamp_i32(var_2.x, _wgslsmith_mod_i32(u_input.b, 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, 1i, var_2.x), vec3<i32>(1i, 31509i, 25490i)))), !(!vec3<bool>(!global3.a.x, true, global3.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_4(global3.a, all(select(!vec3<bool>(false, global3.b, global3.b), func_1(), vec3<bool>(global3.b, !global3.a.x, global3.a.x))), (all(!vec3<bool>(true, global3.a.x, false)) == global3.b) | true);
    var var_0 = ~1u;
    global0 = array<u32, 5>();
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, global1.a.x)) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1155f), 166f)) + vec2<f32>(483f, global1.c)) * global1.a.zy);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-global1.a), -1288f, -472f, ~(~vec3<u32>(_wgslsmith_mult_u32(0u, global2.x), ~global2.x, ~global2.x)));
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b * global1.b) - global1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.x - 356f) - var_2.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, reverseBits(-(~(~vec4<i32>(u_input.b, u_input.b, u_input.a, -2147483647i)))), 1u, countOneBits(~_wgslsmith_sub_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global1.d.x, 5u)], var_2.d.x, 1u), vec3<u32>(global0[_wgslsmith_index_u32(21314u, 5u)], 38852u, var_2.d.x))));
}

