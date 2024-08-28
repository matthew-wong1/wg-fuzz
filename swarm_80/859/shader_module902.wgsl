struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: vec2<bool>,
    d: bool,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 5> = array<vec3<u32>, 5>(vec3<u32>(1u, 62810u, 54935u), vec3<u32>(21403u, 55322u, 4294967295u), vec3<u32>(31146u, 1u, 0u), vec3<u32>(7056u, 4294967295u, 13051u), vec3<u32>(82505u, 4294967295u, 0u));

var<private> global1: array<Struct_5, 1> = array<Struct_5, 1>(Struct_5(vec4<i32>(-5012i, -26351i, 41294i, 2147483647i), vec2<u32>(27118u, 1656u)));

var<private> global2: Struct_3;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_4) -> bool {
    global1 = array<Struct_5, 1>();
    return true;
}

fn func_3(arg_0: bool) -> vec4<i32> {
    return u_input.a;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_5, arg_2: i32) -> f32 {
    global2 = Struct_3(global2.b, Struct_2(select(-vec3<i32>(arg_2, 3329i, -1i), _wgslsmith_mult_vec3_i32(vec3<i32>(global2.a.a.x, 0i, global2.a.a.x), vec3<i32>(-22579i, 36401i, arg_2)), false) & vec3<i32>(_wgslsmith_div_i32(arg_2, 2147483647i), -4405i, 0i), ~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.e, u_input.b), vec2<u32>(24173u, global2.b.b.x)), ~8641u, ~global2.a.b.x)), Struct_2(_wgslsmith_mod_vec3_i32(u_input.a.wwx, abs(vec3<i32>(-1i, 0i, -41773i))), global0[_wgslsmith_index_u32(~0u, 5u)] | ~vec3<u32>(4294967295u, arg_1.b.x, 4294967295u)), global2.d, ~firstLeadingBit(firstTrailingBit(0u)));
    let var_0 = _wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(min(reverseBits(arg_1.b.x), u_input.b), ~abs(arg_1.b.x)), 1u, u_input.b), arg_1.b.x);
    let var_1 = ~global2.c.b.x;
    var var_2 = select(-arg_1.a.zy >> (_wgslsmith_div_vec2_u32(arg_1.b, min(firstLeadingBit(global2.c.b.yx), ~vec2<u32>(28340u, 1u))) % vec2<u32>(32u)), global2.b.a.xy, global2.a.a.x == -1i);
    var_2 = vec2<i32>(~(-5864i), var_2.x);
    return 102f;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: i32) -> bool {
    var var_0 = _wgslsmith_sub_u32(~(~_wgslsmith_div_u32(1u, 69328u) ^ _wgslsmith_add_u32(_wgslsmith_sub_u32(70115u, 46085u), u_input.b)), abs(~1u));
    var_0 = 0u;
    let var_1 = vec3<f32>(global2.d.a, 105f, _wgslsmith_f_op_f32(func_4(vec4<bool>(arg_1, arg_0, arg_0 | arg_0, func_1(global2.b, min(vec4<u32>(4294967295u, global2.e, global2.a.b.x, u_input.b), vec4<u32>(78363u, 28283u, 38507u, global2.e)), global2.d, Struct_4(arg_0, 26933u, vec2<bool>(true, arg_1), arg_1))), Struct_5(firstTrailingBit(func_3(arg_0)), global2.b.b.yx), _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, func_3(arg_0).x, ~global2.a.a.x, 1i)))));
    let var_2 = reverseBits(global2.e);
    let var_3 = select(vec4<bool>(var_2 != _wgslsmith_mult_u32(global2.a.b.x, _wgslsmith_mult_u32(global2.a.b.x, 98746u)), !any(!vec3<bool>(false, arg_0, arg_1)), true, arg_0), vec4<bool>(!arg_0, 0i > ~_wgslsmith_dot_vec3_i32(vec3<i32>(global2.a.a.x, u_input.a.x, global2.c.a.x), vec3<i32>(arg_2, 23232i, u_input.a.x)), true, all(vec3<bool>(arg_1, !arg_0, arg_1 && false))), true);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 5>();
    let var_0 = vec4<bool>(any(vec4<bool>(!all(vec4<bool>(true, true, true, true)), !func_1(global2.a, vec4<u32>(1u, global2.c.b.x, 0u, 29730u), Struct_1(global2.d.a), Struct_4(true, u_input.b, vec2<bool>(true, true), false)), true, true)), func_2(true && select(true, false, global2.e != 1u), _wgslsmith_div_u32(32208u, u_input.b) >= ((u_input.b ^ u_input.b) | u_input.b), _wgslsmith_clamp_i32(u_input.a.x, ~(-2147483647i), -17904i)), true, func_1(global2.a, vec4<u32>(countOneBits(4294967295u), max(firstLeadingBit(global2.a.b.x), _wgslsmith_mod_u32(44794u, global2.a.b.x)), 1u, 46045u), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(662f * global2.d.a) + _wgslsmith_f_op_f32(-global2.d.a))), Struct_4(all(vec2<bool>(true, false)) & all(vec2<bool>(false, true)), 1u, vec2<bool>(false, false), _wgslsmith_f_op_f32(func_4(vec4<bool>(false, true, false, false), global1[_wgslsmith_index_u32(u_input.b, 1u)], -46810i)) == 1225f)));
    var var_1 = vec2<bool>(var_0.x, var_0.x);
    var var_2 = firstTrailingBit(~(-2147483647i));
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(abs(global2.d.a)), _wgslsmith_f_op_f32(sign(global2.d.a)), _wgslsmith_f_op_f32(-global2.d.a), _wgslsmith_f_op_f32(global2.d.a * 1061f))))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.d.a))), 1201f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.d.a))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(global2.d.a))))), -372f), var_0));
    var var_4 = u_input.a.x;
    var var_5 = ~_wgslsmith_mod_vec2_u32(global2.c.b.zy, global2.c.b.xx);
    let var_6 = Struct_5(_wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(i32(-1i) * -2147483647i, -u_input.a.x, u_input.a.x ^ -12178i, firstLeadingBit(u_input.a.x))) >> (abs(~vec4<u32>(4294967295u, 0u, 72433u, u_input.b)) % vec4<u32>(32u)), global2.a.b.yx);
    let x = u_input.a;
    s_output = StorageBuffer(var_6.a.x, ((_wgslsmith_mod_u32(var_5.x, 15602u) >> (_wgslsmith_sub_u32(96169u, 59254u) % 32u)) & select(~global2.c.b.x, abs(var_6.b.x), all(vec4<bool>(var_0.x, true, var_0.x, var_0.x)))) & (_wgslsmith_div_u32(abs(53221u), max(11806u, var_6.b.x)) & 1u), _wgslsmith_f_op_f32(abs(-816f)), vec2<i32>(i32(-1i) * -36241i, reverseBits(193i)));
}

