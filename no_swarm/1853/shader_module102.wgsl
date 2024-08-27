struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 4>;

var<private> global1: array<vec3<u32>, 29>;

var<private> global2: vec2<bool> = vec2<bool>(true, true);

var<private> global3: vec3<u32>;

var<private> global4: array<vec4<u32>, 20>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = _wgslsmith_mod_i32(arg_2.x, ~0i);
    var var_1 = any(select(select(vec4<bool>(true, true, true, true), !vec4<bool>(global2.x, false, global2.x, false), arg_3.a), !vec4<bool>(true, global2.x || true, true, var_0 == 40991i), vec4<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, global2.x))), arg_3.a, global2.x)));
    global3 = ~abs(~vec3<u32>(arg_0.x, global3.x, 1u) & (global1[_wgslsmith_index_u32(~arg_0.x, 29u)] | firstLeadingBit(vec3<u32>(arg_0.x, arg_0.x, 1u))));
    var_1 = true;
    var var_2 = firstLeadingBit(arg_2.x);
    return ~arg_2.wwx;
}

fn func_2(arg_0: vec2<u32>, arg_1: f32, arg_2: bool) -> Struct_1 {
    var var_0 = Struct_1(true | (arg_2 && false));
    global0 = array<vec3<bool>, 4>();
    global0 = array<vec3<bool>, 4>();
    var var_1 = -firstLeadingBit(func_3(firstTrailingBit(global3.zy), _wgslsmith_add_u32(global3.x, u_input.d), vec4<i32>(12541i, 11324i, u_input.b, 1i), Struct_1(var_0.a))) ^ firstLeadingBit(~min(vec3<i32>(-55895i, 2147483647i, -8047i) << (vec3<u32>(u_input.d, 1u, 80012u) % vec3<u32>(32u)), ~vec3<i32>(64844i, u_input.b, u_input.e.x)));
    let var_2 = vec3<bool>(var_0.a, arg_2, select(all(vec3<bool>(true, true, true)), !((var_0.a & true) | any(vec2<bool>(true, arg_2))), false));
    return Struct_1(var_2.x);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    var var_0 = func_2(select(countOneBits(u_input.c), ~vec2<u32>(_wgslsmith_add_u32(global3.x, u_input.d), u_input.a), vec2<bool>(true, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-121f)) + 176f)), global2.x);
    let var_1 = Struct_1(arg_2);
    return func_2(u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(350f + -459f) * _wgslsmith_f_op_f32(203f + -1249f)) + _wgslsmith_f_op_f32(f32(-1f) * -231f)) - _wgslsmith_f_op_f32(1265f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-111f)))))), true & (all(!arg_0.xy) & var_0.a));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = func_4(!select(vec4<bool>(true, global2.x, all(vec4<bool>(true, global2.x, false, false)), select(global2.x, global2.x, false)), select(!vec4<bool>(false, global2.x, true, false), vec4<bool>(global2.x, global2.x, true, global2.x), global2.x), select(select(vec4<bool>(global2.x, true, false, global2.x), vec4<bool>(global2.x, global2.x, true, global2.x), vec4<bool>(global2.x, global2.x, false, global2.x)), select(vec4<bool>(global2.x, global2.x, global2.x, true), vec4<bool>(false, false, false, global2.x), vec4<bool>(global2.x, true, false, true)), !global2.x)), func_2(u_input.c, 394f, select(any(vec2<bool>(false, global2.x)), 0u <= global3.x, global2.x) | select(true, any(vec2<bool>(global2.x, true)), all(vec4<bool>(true, false, false, global2.x)))), true);
    global0 = array<vec3<bool>, 4>();
    let var_1 = Struct_1(true);
    var var_2 = var_1;
    var_2 = Struct_1(!var_1.a);
    return Struct_1(var_0.a);
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = func_2(vec2<u32>(firstTrailingBit(global3.x), firstLeadingBit(arg_2) | min(u_input.d, u_input.a)) << ((vec2<u32>(4032u >> (u_input.a % 32u), global3.x) << (max(~vec2<u32>(global3.x, u_input.a), select(vec2<u32>(arg_2, global3.x), u_input.c, false)) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(516f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-174f - 595f) + -1888f), !func_4(vec4<bool>(arg_0.x, global2.x, true, true), Struct_1(false), global2.x).a)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(657f, -406f)))))), false & arg_1.a);
    let var_1 = global4[_wgslsmith_index_u32(5966u, 20u)];
    global4 = array<vec4<u32>, 20>();
    var var_2 = select(select(select(select(vec2<bool>(var_0.a, true), arg_0.zz, true), vec2<bool>(true, true), !var_0.a && all(global0[_wgslsmith_index_u32(0u, 4u)])), !select(!arg_0.yx, vec2<bool>(true, var_0.a), arg_0.x), true), select(!arg_0.zw, !select(arg_0.xy, select(vec2<bool>(false, false), arg_0.xz, arg_0.yy), !global2.x), true), arg_0.x);
    var var_3 = Struct_1(true);
    return func_1(1458f, _wgslsmith_f_op_f32(f32(-1f) * -765f), vec4<i32>(_wgslsmith_div_i32(2147483647i, -87057i), -firstLeadingBit(8323i) | func_3(_wgslsmith_clamp_vec2_u32(u_input.c, vec2<u32>(arg_2, 4294967295u), vec2<u32>(4294967295u, 10142u)), ~0u, -vec4<i32>(u_input.e.x, -2345i, u_input.e.x, u_input.b), var_0).x, -u_input.b, reverseBits(abs(i32(-1i) * -42824i))));
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> vec3<u32> {
    var var_0 = func_4(!vec4<bool>(any(vec3<bool>(false, false, arg_1.a)), true, true, true), arg_1, arg_2 != _wgslsmith_f_op_f32(arg_2 + arg_2));
    let var_1 = vec3<bool>(false, abs(countOneBits(firstTrailingBit(1u))) <= ~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(22372u, u_input.a, 57390u), global1[_wgslsmith_index_u32(0u, 29u)]), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, 86640u, u_input.c.x), global1[_wgslsmith_index_u32(35809u, 29u)])), global2.x);
    global3 = vec3<u32>(1u, ~reverseBits(global3.x) >> (63778u % 32u), _wgslsmith_dot_vec2_u32(~global3.yz, vec2<u32>(_wgslsmith_mult_u32(1u, u_input.d), abs(u_input.a)) >> (vec2<u32>(global3.x ^ u_input.c.x, u_input.c.x) % vec2<u32>(32u))));
    var_0 = Struct_1(_wgslsmith_dot_vec3_i32(~firstLeadingBit(vec3<i32>(u_input.e.x, u_input.e.x, -7396i)), vec3<i32>(92315i, -13702i, abs(u_input.b))) >= func_3(vec2<u32>(~1400u, 4294967295u), firstTrailingBit(128u), _wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(arg_3, -61301i, 2147483647i, u_input.b)), func_2(~vec2<u32>(138426u, 30303u), arg_2, arg_1.a)).x);
    global1 = array<vec3<u32>, 29>();
    return _wgslsmith_mod_vec3_u32(~max(max(global1[_wgslsmith_index_u32(~global3.x, 29u)], _wgslsmith_mod_vec3_u32(global1[_wgslsmith_index_u32(9538u, 29u)], vec3<u32>(4294967295u, 1u, u_input.a))), vec3<u32>(4294967295u, _wgslsmith_add_u32(94739u, u_input.a), 15150u)), countOneBits(_wgslsmith_add_vec3_u32(global1[_wgslsmith_index_u32(u_input.d, 29u)], ~(~global1[_wgslsmith_index_u32(u_input.a, 29u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 29>();
    let var_0 = -158f;
    global1 = array<vec3<u32>, 29>();
    global3 = func_6(vec3<bool>(global2.x, global2.x, true), func_5(!(!vec4<bool>(global2.x, true, false, global2.x)), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2167f - var_0)), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(select(-152f, var_0, false))), -vec4<i32>(u_input.b, u_input.e.x, u_input.b, u_input.b)), ~_wgslsmith_clamp_u32(firstLeadingBit(17567u), ~global3.x, abs(u_input.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0, var_0)) - 344f), 19453i);
    global4 = array<vec4<u32>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(countOneBits(reverseBits(~vec4<i32>(-1i, u_input.b, u_input.e.x, 0i))), vec4<i32>(abs(u_input.e.x), _wgslsmith_add_i32(-23105i, 27984i), u_input.b, 1i) & vec4<i32>(-u_input.b, abs(-2147483647i), -u_input.e.x, -46429i)), firstLeadingBit(u_input.e.x));
}

