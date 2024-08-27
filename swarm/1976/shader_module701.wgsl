struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: u32,
    c: Struct_3,
    d: Struct_3,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: Struct_3 = Struct_3(-19725i);

var<private> global2: array<u32, 32> = array<u32, 32>(0u, 29514u, 26527u, 4294967295u, 42479u, 4294967295u, 4294967295u, 1u, 57847u, 1u, 0u, 84394u, 6770u, 1u, 1u, 1u, 1u, 4294967295u, 20252u, 4294967295u, 4294967295u, 1u, 2078u, 1812u, 4294967295u, 4294967295u, 1u, 50666u, 4294967295u, 4294967295u, 27653u, 0u);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: u32) -> vec3<i32> {
    var var_0 = Struct_5(~u_input.d, vec2<i32>(-79349i, -_wgslsmith_sub_i32(max(global1.a, global1.a), 10803i)), Struct_3(u_input.b.x));
    let var_1 = u_input.a.x;
    global1 = Struct_3(u_input.e);
    global1 = var_0.c;
    var var_2 = -826f;
    return u_input.d.wxy & var_0.a.wxw;
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = Struct_2(376f, u_input.b.xyy, vec2<u32>(abs(39090u), 0u));
    global1 = Struct_3(global1.a);
    var var_1 = _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(var_0.c.x, 32u)], _wgslsmith_clamp_u32(global0.x, select(~(~global2[_wgslsmith_index_u32(u_input.a.x, 32u)]), ~(~global2[_wgslsmith_index_u32(2421u, 32u)]), true), _wgslsmith_dot_vec4_u32(vec4<u32>(max(global2[_wgslsmith_index_u32(1u, 32u)], global2[_wgslsmith_index_u32(global0.x, 32u)]), ~global0.x, ~var_0.c.x, global0.x), firstLeadingBit(vec4<u32>(u_input.a.x, 1u, global2[_wgslsmith_index_u32(var_0.c.x, 32u)], 1u)) << (~vec4<u32>(global2[_wgslsmith_index_u32(1075u, 32u)], global0.x, global2[_wgslsmith_index_u32(33949u, 32u)], 16722u) % vec4<u32>(32u)))), u_input.a.x);
    let var_2 = ~firstLeadingBit(1u);
    let var_3 = Struct_3(_wgslsmith_div_i32(global1.a, arg_0));
    return var_2;
}

fn func_1(arg_0: Struct_2) -> Struct_4 {
    global2 = array<u32, 32>();
    var var_0 = _wgslsmith_div_vec3_i32(u_input.d.wxx, func_2(68647u) & ~arg_0.b);
    let var_1 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1461f)))), arg_0.a), firstLeadingBit(u_input.a.x), Struct_3(firstTrailingBit(1i)), Struct_3((i32(-1i) * -1i) << (countOneBits(_wgslsmith_add_u32(global0.x, 10898u)) % 32u)));
    let var_2 = Struct_5(-u_input.d, vec2<i32>(1i, 600i) << (vec2<u32>(~0u, min(~u_input.a.x, firstLeadingBit(17260u))) % vec2<u32>(32u)), Struct_3(firstLeadingBit(_wgslsmith_mult_i32(-arg_0.b.x, firstLeadingBit(var_1.c.a)))));
    global0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, select(~23600u >> (max(global0.x, 13459u) % 32u), ~16302u, true), countOneBits(u_input.a.x), ~global2[_wgslsmith_index_u32(arg_0.c.x, 32u)]), vec4<u32>(~global0.x, global2[_wgslsmith_index_u32(~(global2[_wgslsmith_index_u32(global0.x, 32u)] << (u_input.a.x % 32u)), 32u)], ~u_input.a.x, func_3(-global1.a)) ^ (vec4<u32>(reverseBits(global2[_wgslsmith_index_u32(1u, 32u)]), 4294967295u, 1u, _wgslsmith_div_u32(56479u, global0.x)) & vec4<u32>(~84011u, var_1.b, _wgslsmith_clamp_u32(6091u, u_input.a.x, arg_0.c.x), _wgslsmith_clamp_u32(arg_0.c.x, 25387u, 1u))), firstTrailingBit(vec4<u32>(_wgslsmith_mult_u32(abs(arg_0.c.x), global2[_wgslsmith_index_u32(~0u, 32u)]), _wgslsmith_sub_u32(u_input.a.x | 76234u, 1u), _wgslsmith_add_u32(func_3(var_0.x), 1u), 1u)));
    return Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.a, var_1.a.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_1.a))))), ~((_wgslsmith_add_u32(75042u, global0.x) ^ u_input.a.x) >> (max(1u, countOneBits(53991u)) % 32u)), var_1.d, Struct_3(9698i));
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: Struct_5, arg_3: f32) -> Struct_3 {
    let var_0 = Struct_2(arg_1.a.x, u_input.d.wzy, _wgslsmith_div_vec2_u32(global0.ww, reverseBits(_wgslsmith_sub_vec2_u32(u_input.a, ~global0.xz))));
    var var_1 = Struct_5(abs(-(~vec4<i32>(-27466i, u_input.e, u_input.d.x, var_0.b.x))) << (abs(_wgslsmith_sub_vec4_u32(vec4<u32>(32196u, global2[_wgslsmith_index_u32(global0.x, 32u)], 43588u, 10838u), vec4<u32>(22917u, arg_1.b, arg_1.b, 1361u))) % vec4<u32>(32u)), vec2<i32>(func_1(var_0).d.a, func_2(0u).x), arg_2.c);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * _wgslsmith_f_op_f32(trunc(arg_1.a.x))));
    let var_3 = arg_1;
    var var_4 = select(vec4<bool>(arg_0, !(!arg_0), false && arg_0, !(!arg_0)), vec4<bool>(false, !(!(!arg_0)), true, all(vec2<bool>(arg_0, true))), vec4<bool>(arg_0, true, ~arg_1.b != u_input.a.x, false));
    return func_1(Struct_2(697f, vec3<i32>(firstLeadingBit(var_3.d.a), reverseBits(var_0.b.x), 6654i << (~var_0.c.x % 32u)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), select(vec2<u32>(0u, 4294967295u), vec2<u32>(global2[_wgslsmith_index_u32(17443u, 32u)], 1u), var_4.xy)))).d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(220f)) + -2441f) * 1f)), ~_wgslsmith_mod_u32(~(~0u), ~(~global0.x)), Struct_3(u_input.d.x), func_4(false, func_1(Struct_2(_wgslsmith_f_op_f32(round(-480f)), _wgslsmith_mod_vec3_i32(u_input.d.xwx, u_input.d.wyy), select(vec2<u32>(global0.x, global0.x), global0.xy, true))), Struct_5(-u_input.d, u_input.d.zw, Struct_3(func_2(4294967295u).x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, 1000f)))))));
    global0 = _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.b, 32u)], 32u)], 48490u), abs(vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(23395u, 32u)], 2367u))), ~(~64328u), 1u ^ u_input.a.x)), vec4<u32>(var_0.b, 8913u, ~(~1u), u_input.a.x));
    let var_1 = vec3<bool>(false, all(vec4<bool>(true, false, true, true)), any(vec3<bool>(true, true, true)));
    let var_2 = _wgslsmith_mod_i32(global1.a >> (abs(_wgslsmith_mod_u32(24636u, global2[_wgslsmith_index_u32(global0.x, 32u)])) % 32u), _wgslsmith_add_i32(-22260i, 29589i));
    let var_3 = select(~(-u_input.b.x), _wgslsmith_dot_vec4_i32(u_input.d, u_input.d), var_1.x);
    var var_4 = global1.a | -2957i;
    var_4 = firstTrailingBit(~(~(-u_input.e))) | ~(-(~(-9908i)));
    let var_5 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-func_1(Struct_2(var_0.a.x, u_input.d.yzy, vec2<u32>(var_0.b, 25832u))).a.x))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-638f)) * _wgslsmith_f_op_f32(-var_0.a.x))))), 1i);
}

