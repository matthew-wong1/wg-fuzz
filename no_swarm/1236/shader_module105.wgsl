struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

var<private> global1: f32 = -172f;

var<private> global2: u32;

var<private> global3: vec4<i32>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_1) -> bool {
    global2 = arg_0.a;
    return arg_3.a.x;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> bool {
    var var_0 = arg_0;
    let var_1 = vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(0i << (var_0.a % 32u), -12660i, 39355i, _wgslsmith_add_i32(4735i, -1i)), vec4<i32>(global3.x ^ -43072i, -u_input.c, ~0i, ~global3.x)), firstLeadingBit(8372i), -1i, 0i);
    let var_2 = firstTrailingBit(_wgslsmith_mult_u32(4294967295u, var_0.a));
    let var_3 = select(!select(false, all(vec2<bool>(true, arg_3.a.x)), true) || true, func_2(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -201f), -reverseBits(var_1), global0[_wgslsmith_index_u32(max(0u, 1u), 11u)]), !(_wgslsmith_f_op_f32(f32(-1f) * -730f) <= var_0.b));
    let var_4 = arg_0;
    return var_0.c.x;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: vec4<u32>) -> vec2<i32> {
    global1 = _wgslsmith_f_op_f32(sign(-1954f));
    var var_0 = select(!select(select(vec4<bool>(arg_0.x, true, false, arg_0.x), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), arg_0.x), !vec4<bool>(arg_0.x, false, false, arg_0.x)), vec4<bool>(arg_0.x, !arg_0.x, func_2(Struct_2(2634u, 1403f, vec4<bool>(arg_0.x, true, false, arg_0.x)), 184f, arg_1, Struct_1(vec3<bool>(false, arg_0.x, false))), true), vec4<bool>(arg_0.x, select(arg_0.x, arg_0.x, true), false, true)), vec4<bool>(false, func_3(Struct_2(firstLeadingBit(arg_2.x), -420f, vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), Struct_1(!vec3<bool>(true, arg_0.x, arg_0.x)), true | (true | arg_0.x), Struct_1(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), (global3.x == -2147483647i) || arg_0.x, arg_0.x), !(!(!(!vec4<bool>(false, arg_0.x, false, arg_0.x)))));
    global1 = -1740f;
    return _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, global3.x ^ select(-30595i, 1i, false)), firstTrailingBit(arg_1.xy)), ~(vec2<i32>(abs(0i), 2147483647i) << (countOneBits(select(arg_2.ww, arg_2.xx, vec2<bool>(var_0.x, false))) % vec2<u32>(32u))), vec2<i32>(_wgslsmith_add_i32(u_input.c, _wgslsmith_sub_i32(arg_1.x, 0i)), ~(-2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(u_input.b.x, 65799u) | u_input.b.xx;
    let var_1 = _wgslsmith_f_op_f32(min(-253f, 764f));
    global0 = array<Struct_1, 11>();
    global2 = 25237u;
    let var_2 = _wgslsmith_add_vec2_i32(select(-_wgslsmith_mult_vec2_i32(func_1(vec2<bool>(false, true), vec4<i32>(1i, global3.x, -29661i, 0i), u_input.b), vec2<i32>(0i, u_input.c)), min(-(global3.yw | global3.wz), ~abs(global3.yw)), true), firstLeadingBit(countOneBits(-vec2<i32>(u_input.c, u_input.c))));
    global0 = array<Struct_1, 11>();
    global2 = var_0.x;
    global0 = array<Struct_1, 11>();
    global3 = vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_div_i32(-1i, global3.x), u_input.c), _wgslsmith_add_i32(-var_2.x, global3.x >> (var_0.x % 32u))), _wgslsmith_dot_vec2_i32(~(-var_2), vec2<i32>(global3.x, global3.x | var_2.x))), _wgslsmith_add_i32(abs(firstTrailingBit(var_2.x << (var_0.x % 32u))), -(~(-75731i | global3.x))), -abs(_wgslsmith_div_i32(u_input.c, global3.x)) << (~56490u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(global3.x >> (45623u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.c, 0i, var_2.x) & vec4<i32>(2147483647i, -88442i, var_2.x, var_2.x), select(vec4<i32>(11107i, global3.x, 1i, 9261i), vec4<i32>(-2147483647i, u_input.c, -30260i, global3.x), true)), u_input.c, 0i), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(global3.x, global3.x, var_2.x, -1i)), abs(vec4<i32>(var_2.x, 0i, -2147483647i, -2147483647i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(firstTrailingBit(reverseBits(58974u)), 90458u), ~(~(~(~0u))), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(49749u, u_input.b.x | u_input.d.x, _wgslsmith_mod_u32(18320u, var_0.x), u_input.b.x)), abs(vec4<u32>(48221u, firstTrailingBit(u_input.a), ~4294967295u, max(4294967295u, var_0.x)))), global3.xw, var_0.x);
}

