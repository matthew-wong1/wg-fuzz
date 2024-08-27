struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(1i, vec4<i32>(0i, 70793i, 2147483647i, -1i), vec2<bool>(true, true)), Struct_1(1i, vec4<i32>(i32(-2147483648), -32354i, 1i, -27992i), vec2<bool>(true, true)), Struct_1(0i, vec4<i32>(-7401i, -1i, -1i, 11327i), vec2<bool>(true, false)), Struct_1(-1i, vec4<i32>(-41111i, 1i, -24721i, -1i), vec2<bool>(false, true)), Struct_1(24595i, vec4<i32>(0i, -32558i, -1i, 12241i), vec2<bool>(true, false)), Struct_1(-13135i, vec4<i32>(-1i, 1i, -9608i, 0i), vec2<bool>(false, true)), Struct_1(-10716i, vec4<i32>(8421i, -19717i, -49409i, -15417i), vec2<bool>(false, false)), Struct_1(0i, vec4<i32>(62326i, 2147483647i, -66380i, 1i), vec2<bool>(true, false)), Struct_1(1i, vec4<i32>(-48869i, -89385i, 1i, -3806i), vec2<bool>(false, true)), Struct_1(-1i, vec4<i32>(-15128i, 62118i, -24871i, 0i), vec2<bool>(true, false)), Struct_1(-70357i, vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), i32(-2147483648)), vec2<bool>(true, true)), Struct_1(0i, vec4<i32>(0i, -20257i, -47230i, 1i), vec2<bool>(true, false)), Struct_1(83760i, vec4<i32>(64607i, -1i, -32948i, -16166i), vec2<bool>(true, false)), Struct_1(2147483647i, vec4<i32>(-1i, 1i, -13999i, 0i), vec2<bool>(true, true)), Struct_1(82315i, vec4<i32>(24856i, 32588i, i32(-2147483648), 0i), vec2<bool>(true, true)), Struct_1(2147483647i, vec4<i32>(-1i, 19906i, 1i, 1i), vec2<bool>(false, true)), Struct_1(i32(-2147483648), vec4<i32>(1i, -587i, 2147483647i, -98425i), vec2<bool>(false, true)), Struct_1(i32(-2147483648), vec4<i32>(29061i, 0i, -1i, 22493i), vec2<bool>(false, true)), Struct_1(22512i, vec4<i32>(i32(-2147483648), 0i, -95473i, 4623i), vec2<bool>(false, false)), Struct_1(2147483647i, vec4<i32>(-98603i, -7366i, 2147483647i, -98275i), vec2<bool>(false, false)), Struct_1(1i, vec4<i32>(-5162i, i32(-2147483648), -12761i, -13949i), vec2<bool>(true, true)), Struct_1(26111i, vec4<i32>(-27186i, 0i, 26096i, -58484i), vec2<bool>(false, false)), Struct_1(0i, vec4<i32>(2147483647i, 46448i, 13531i, 2768i), vec2<bool>(true, true)));

var<private> global2: vec2<u32>;

var<private> global3: f32;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<i32>) -> vec3<u32> {
    global2 = ~vec2<u32>(0u << (~(~0u) % 32u), ~global2.x);
    let var_0 = arg_0.b.yxy;
    let var_1 = vec4<bool>(true, !(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1455f)), _wgslsmith_f_op_f32(-498f - global0.x))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-153f, global0.x)))), false, arg_0.c.x);
    var var_2 = select(vec2<bool>(!((true & arg_0.c.x) | arg_0.c.x), false), select(vec2<bool>(arg_0.c.x, _wgslsmith_mult_u32(0u, 59142u) == global2.x), var_1.zx, vec2<bool>(any(select(vec4<bool>(arg_0.c.x, true, var_1.x, var_1.x), vec4<bool>(false, arg_0.c.x, true, false), vec4<bool>(false, arg_0.c.x, arg_0.c.x, var_1.x))), select(true, 2147483647i < u_input.d, global0.x < global0.x))), vec2<bool>((_wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(global2.x, 14827u)) == global2.x) || !(!arg_0.c.x), any(!vec2<bool>(arg_0.c.x, true))));
    var var_3 = vec3<bool>(any(select(var_1.wyx, vec3<bool>(arg_0.c.x, var_2.x, var_1.x), var_2.x != false)) != (~countOneBits(18917i) > _wgslsmith_clamp_i32(-2147483647i, u_input.b.x, ~(-23393i))), var_2.x, arg_0.c.x);
    return firstLeadingBit(u_input.a.xwx);
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_1(-u_input.b.x, arg_0.b, !(!vec2<bool>(true, arg_0.c.x)));
    let var_1 = abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, ~42279u, 46701u), _wgslsmith_sub_vec3_u32(select(u_input.a.xxy, u_input.a.wwz, var_0.c.x) & func_3(global1[_wgslsmith_index_u32(u_input.c.x, 23u)], u_input.a.xz, var_0.b), u_input.a.zyx)));
    var var_2 = Struct_1(u_input.b.x, vec4<i32>(var_0.a, arg_0.a, abs(min(_wgslsmith_clamp_i32(arg_0.a, 2147483647i, -15165i), 2305i)), -firstTrailingBit(1i >> (global2.x % 32u))), var_0.c);
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, 1510f, global0.x, global0.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, -239f, global0.x, global0.x), vec4<f32>(975f, global0.x, global0.x, 1000f), vec4<bool>(var_0.c.x, var_2.c.x, false, false))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x) * vec4<f32>(global0.x, 1943f, global0.x, global0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 741f, -427f)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1953f, global0.x, -619f, -557f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, 331f, 194f, global0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 1193f, global0.x, global0.x) * vec4<f32>(-1000f, 213f, 834f, 1306f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(757f, -233f, global0.x, -1608f) - vec4<f32>(global0.x, global0.x, 458f, -737f)), vec4<f32>(global0.x, global0.x, global0.x, global0.x), true))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), global0.x, _wgslsmith_f_op_f32(-123f - -918f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2163f), _wgslsmith_f_op_f32(global0.x * 880f), global0.x < global0.x)))));
    global0 = vec4<f32>(global0.x, -355f, global0.x, -962f);
    return _wgslsmith_f_op_f32(step(-1094f, global0.x));
}

fn func_1(arg_0: vec4<bool>) -> vec3<bool> {
    let var_0 = vec3<bool>(arg_0.x != (_wgslsmith_sub_i32(reverseBits(-2147483647i), abs(u_input.d)) <= u_input.d), true, arg_0.x);
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(685f + 1365f)), -523f)), _wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(max(u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, 1u), u_input.c)), 23u)])), 366f));
    global3 = _wgslsmith_f_op_f32(max(-1000f, -595f));
    global2 = firstLeadingBit(vec2<u32>(~(~(global2.x | 0u)), ~45924u));
    let var_1 = Struct_1(-u_input.b.x >> (~(~u_input.c.x) % 32u), vec4<i32>(~u_input.b.x, min(u_input.b.x << (_wgslsmith_div_u32(u_input.e, u_input.c.x) % 32u), u_input.d), 0i, 1i), !(!arg_0.wy));
    return !vec3<bool>(!(!any(vec3<bool>(true, true, false))), arg_0.x, _wgslsmith_f_op_f32(-global0.x) <= -1577f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(0u, 23u)];
    var var_1 = global0.zx;
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.wy * global0.zz));
    let var_2 = any(func_1(!select(vec4<bool>(false, false, false, var_0.c.x), select(vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, true), vec4<bool>(var_0.c.x, var_0.c.x, false, var_0.c.x), false), var_0.c.x)));
    let var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, -713f, global0.x, global0.x), vec4<f32>(-1229f, 481f, global0.x, 560f), false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-225f, var_1.x, -258f, var_1.x)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-635f, var_1.x, var_1.x, var_1.x), vec4<f32>(1030f, global0.x, 436f, var_1.x), vec4<bool>(var_2, var_0.c.x, var_0.c.x, false)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 274f, 810f, var_1.x))))));
    var var_4 = global1[_wgslsmith_index_u32(0u, 23u)];
    var var_5 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1105f, _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(-var_1.x)))), var_3.xw, vec2<bool>(true, var_4.c.x)));
    let var_6 = 1373f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * 1205f))))));
}

