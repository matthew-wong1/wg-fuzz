struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec3<i32>,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5>;

var<private> global1: Struct_3;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> vec3<i32> {
    var var_0 = Struct_2(select(!arg_0.a, arg_0.a, vec3<bool>(all(global1.c.a.xz), arg_0.a.x, false)));
    global1 = Struct_3(global1.a << (~_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(18408u, 1u), vec2<u32>(17248u, 1u), vec2<u32>(103870u, 23855u)), select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 118315u), true)) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(global1.b + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.b), vec2<f32>(-447f, global0[_wgslsmith_index_u32(95496u, 5u)])))), Struct_2(select(vec3<bool>(true, true, var_0.a.x), vec3<bool>(global0[_wgslsmith_index_u32(1u, 5u)] <= global0[_wgslsmith_index_u32(57081u, 5u)], select(true, arg_0.a.x, var_0.a.x), true), select(vec3<bool>(true, var_0.a.x, var_0.a.x), global1.c.a, true))));
    global1 = Struct_3(reverseBits(select(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, 0i), _wgslsmith_mod_vec2_i32(global1.a, vec2<i32>(-1i, u_input.d.x))), vec2<i32>(-2147483647i, ~1i), global1.c.a.xz)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.b - global1.b) + _wgslsmith_f_op_vec2_f32(min(global1.b, global1.b))) * vec2<f32>(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)])), global0[_wgslsmith_index_u32(~4294967295u, 5u)])) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global1.b)))), global1.c);
    let var_1 = ~global1.a.x;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(global1.b.x)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~(~19039u), 5u)]), false | !arg_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(1u, 5u)], -1435f, true))) * _wgslsmith_f_op_f32(-global1.b.x)) - -1057f), global0[_wgslsmith_index_u32(0u, 5u)], _wgslsmith_f_op_f32(global1.b.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f - global0[_wgslsmith_index_u32(~0u, 5u)]), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1202f + 1955f))))));
    return vec3<i32>(-1i) * -(~u_input.b.xwx);
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_3(u_input.d.zy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.b + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.b.x, global1.b.x), vec2<f32>(-395f, global0[_wgslsmith_index_u32(0u, 5u)]))))))), Struct_2(select(select(global1.c.a, !global1.c.a, global1.c.a), vec3<bool>(arg_0.x, select(arg_0.x, arg_0.x, arg_0.x), true), select(arg_0.x, any(vec4<bool>(arg_0.x, true, false, arg_0.x)), arg_0.x))));
    var var_1 = Struct_1(true, countOneBits(reverseBits(vec4<u32>(1u, 1958u, 71765u, 4294967295u))) ^ (select(~vec4<u32>(4294967295u, 1u, 1u, 30854u), vec4<u32>(27361u, 77230u, 73671u, 0u), select(vec4<bool>(false, false, true, arg_0.x), vec4<bool>(arg_0.x, var_0.c.a.x, arg_0.x, var_0.c.a.x), arg_0.x)) & ~(~vec4<u32>(40541u, 35191u, 0u, 25710u))), func_3(Struct_2(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, var_0.c.a.x), global1.c.a), select(vec3<bool>(true, true, var_0.c.a.x), arg_0, vec3<bool>(var_0.c.a.x, true, true)), arg_0.x))), !(var_0.c.a.x & arg_0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.b.x - global0[_wgslsmith_index_u32(12278u, 5u)]), _wgslsmith_div_f32(-430f, 865f)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.b), vec2<f32>(-1008f, 3080f)))));
    global1 = Struct_3(countOneBits(-_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d.x, -28446i), var_0.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.e)), var_0.c);
    let var_2 = abs(var_0.a);
    var var_3 = ~(~max(-(vec2<i32>(u_input.b.x, var_1.c.x) >> (vec2<u32>(var_1.b.x, var_1.b.x) % vec2<u32>(32u))), var_2));
    return global1.c;
}

fn func_1(arg_0: u32, arg_1: u32) -> vec2<u32> {
    global1 = Struct_3(global1.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(arg_1, 5u)], global0[_wgslsmith_index_u32(arg_1, 5u)])))), _wgslsmith_f_op_f32(round(935f)))), func_2(select(!(!vec3<bool>(global1.c.a.x, true, global1.c.a.x)), select(!vec3<bool>(global1.c.a.x, global1.c.a.x, global1.c.a.x), vec3<bool>(true, true, true), global1.c.a), !(!global1.c.a))));
    global1 = Struct_3(max(~vec2<i32>(~2147483647i, -18281i), ~global1.a), vec2<f32>(_wgslsmith_f_op_f32(min(-182f, global1.b.x)), _wgslsmith_f_op_f32(step(global1.b.x, global0[_wgslsmith_index_u32(4294967295u, 5u)]))), global1.c);
    let var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 15004u, arg_1, arg_0) << (vec4<u32>(17840u, arg_0, 1u, arg_0) % vec4<u32>(32u)), ~vec4<u32>(21286u, arg_0, 43349u, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(31488u, 0u, 1u, 1u), vec4<u32>(32185u, arg_1, arg_0, 1u))) ^ vec4<u32>(_wgslsmith_clamp_u32(4294967295u, 9425u, ~arg_1), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_0) & vec2<u32>(arg_1, 1u), vec2<u32>(4177u, 7263u)), ~arg_1, ~firstLeadingBit(arg_1)), max(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1, arg_0, arg_1, arg_1), vec4<u32>(arg_0, arg_1, 4294967295u, arg_0))) | reverseBits(select(vec4<u32>(arg_1, 0u, 75904u, arg_0), vec4<u32>(arg_1, 0u, arg_0, arg_1), vec4<bool>(global1.c.a.x, global1.c.a.x, global1.c.a.x, global1.c.a.x))), select(vec4<u32>(arg_1, ~4294967295u, 4294967295u, max(arg_0, 9301u)), vec4<u32>(16278u, ~arg_1, abs(38885u), ~arg_1), all(func_2(global1.c.a).a.xz))));
    let var_1 = select(vec2<u32>(34726u, _wgslsmith_mult_u32(arg_0, ~var_0.x ^ 15502u)), _wgslsmith_add_vec2_u32(~_wgslsmith_sub_vec2_u32(var_0.yy, abs(vec2<u32>(31130u, arg_1))), min(vec2<u32>(var_0.x, ~0u), _wgslsmith_mult_vec2_u32(reverseBits(var_0.xy), ~var_0.yy))), -u_input.a.x == -2147483647i);
    global0 = array<f32, 5>();
    return vec2<u32>(~4294967295u, arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), abs(vec4<u32>(4294967295u, 54533u, 24852u, 1u))), 25199u, 1u, ~1u), vec4<u32>(_wgslsmith_dot_vec2_u32(func_1(76319u, ~50439u), ~vec2<u32>(1u, 1u)), firstTrailingBit(19831u) >> (~23368u % 32u), _wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(4294967295u, ~4294967295u)), func_1(countOneBits(5074u), ~(~0u)).x));
    let var_1 = ~(0u << (1u % 32u));
    var var_2 = Struct_3(global1.a, global1.b, Struct_2(!global1.c.a));
    let var_3 = Struct_3(~(~_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(global1.a, vec2<i32>(-1i, u_input.c)), vec2<i32>(var_2.a.x, 0i))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(global1.b)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.b.x, global0[_wgslsmith_index_u32(56125u, 5u)]))), var_2.c.a.x))))), func_2(select(!select(var_2.c.a, vec3<bool>(var_2.c.a.x, false, global1.c.a.x), false), !(!vec3<bool>(false, true, var_2.c.a.x)), var_2.c.a.x)));
    var_0 = reverseBits(70922u);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~vec3<u32>(var_1, 9159u, 46678u) >> (~vec3<u32>(52245u, 3608u, var_1) % vec3<u32>(32u)))), min(func_3(Struct_2(var_2.c.a)).zx, vec2<i32>(global1.a.x, 0i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -990f)) - global1.b.x));
}

