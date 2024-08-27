struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 24>;

var<private> global2: f32;

var<private> global3: Struct_1 = Struct_1(4294967295u);

var<private> global4: array<u32, 14> = array<u32, 14>(1u, 0u, 0u, 46261u, 1u, 41947u, 47406u, 65134u, 0u, 1u, 0u, 39382u, 4294967295u, 1u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = vec4<i32>(reverseBits(2147483647i), -2147483647i, abs(_wgslsmith_mod_i32(min(0i, -1i), min(arg_0 ^ arg_0, firstTrailingBit(u_input.e)))), _wgslsmith_mult_i32(0i, _wgslsmith_sub_i32(arg_0, arg_0)));
    let var_1 = Struct_1(52311u);
    global4 = array<u32, 14>();
    let var_2 = Struct_1(_wgslsmith_dot_vec4_u32(u_input.d, ~(~u_input.d) >> (select(firstTrailingBit(vec4<u32>(arg_2.a, 6292u, global3.a, 39465u)), vec4<u32>(var_1.a, 0u, u_input.b.x, arg_2.a), true) % vec4<u32>(32u))));
    let var_3 = Struct_1(4294967295u);
    return _wgslsmith_div_u32(var_2.a, ~(~_wgslsmith_mult_u32(9256u, u_input.c.x)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, -1057f)) + _wgslsmith_f_op_f32(step(-386f, 134f))), _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(316f, -1358f))), _wgslsmith_f_op_f32(-335f + -514f)))), _wgslsmith_div_f32(1011f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -477f)), 1f))));
    let var_1 = any(select(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), all(vec4<bool>(false, false, false, true))), !vec4<bool>(true, -2147483647i < u_input.a.x, true, all(vec4<bool>(false, false, false, true))), !(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false)))));
    global0 = Struct_1(arg_1.a);
    var var_2 = _wgslsmith_add_i32(-_wgslsmith_sub_i32(i32(-1i) * -21974i, 2147483647i), 0i);
    var var_3 = _wgslsmith_dot_vec2_i32(min(vec2<i32>(-2147483647i << (global0.a % 32u), 11192i) ^ ~min(vec2<i32>(u_input.a.x, 22925i), u_input.a), u_input.a), min(_wgslsmith_mult_vec2_i32(vec2<i32>(-50674i, max(u_input.e, 2147483647i)), u_input.a), -abs(u_input.a)));
    return abs(~0u);
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: i32, arg_3: vec3<bool>) -> u32 {
    let var_0 = vec2<i32>(abs(reverseBits(~abs(u_input.e))), min(arg_2, ~(-(~11165i))));
    let var_1 = vec3<bool>(!arg_3.x, all(!arg_3.zz), !(!arg_3.x));
    global3 = global1[_wgslsmith_index_u32(~109681u | func_4(global1[_wgslsmith_index_u32(~countOneBits(u_input.d.x), 24u)], global1[_wgslsmith_index_u32(func_3(~2147483647i, vec2<f32>(-199f, _wgslsmith_f_op_f32(trunc(-1161f))), Struct_1(~u_input.b.x), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(global3.a, 109179u, 32191u), vec3<u32>(1u, 1u, global0.a)))), 24u)]), 24u)];
    var var_2 = select(vec2<bool>(true, all(!var_1)), !select(select(select(vec2<bool>(arg_3.x, arg_3.x), var_1.zz, true), arg_3.xz, true), vec2<bool>(true, true), select(select(vec2<bool>(false, var_1.x), arg_3.yz, arg_3.yy), !arg_3.xx, true)), vec2<bool>(1u > _wgslsmith_clamp_u32(~global3.a, 4169u, min(u_input.c.x, global0.a)), !arg_3.x));
    var var_3 = global1[_wgslsmith_index_u32(((1u & (92877u ^ (17639u ^ u_input.c.x))) & (func_4(Struct_1(1u), global1[_wgslsmith_index_u32(abs(51914u), 24u)]) ^ _wgslsmith_dot_vec3_u32(u_input.c | vec3<u32>(75776u, u_input.c.x, 55010u), ~vec3<u32>(39852u, global4[_wgslsmith_index_u32(1u, 14u)], 43413u)))) ^ 4294967295u, 24u)];
    return ~firstLeadingBit(~1u);
}

fn func_1() -> Struct_1 {
    global3 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~0u, _wgslsmith_clamp_u32(min(select(global0.a, global4[_wgslsmith_index_u32(4294967295u, 14u)], false) >> (~global4[_wgslsmith_index_u32(87125u, 14u)] % 32u), 26419u), u_input.b.x, global0.a)), 24u)];
    let var_0 = max(u_input.e, -3581i);
    global1 = array<Struct_1, 24>();
    let var_1 = _wgslsmith_f_op_f32(max(1078f, 1544f));
    let var_2 = vec3<u32>(~(85188u >> (~(~global3.a) % 32u)), _wgslsmith_div_u32(17131u, 1u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.c.zy, vec2<u32>(10047u, func_2(var_1, vec4<i32>(11599i, var_0, u_input.e, u_input.e), -2147483647i, vec3<bool>(true, true, true)))), global4[_wgslsmith_index_u32(~firstLeadingBit(u_input.d.x), 14u)], 76943u));
    return Struct_1(~u_input.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(select(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(select(3480u, global0.a, false), ~u_input.d.x, ~global4[_wgslsmith_index_u32(0u, 14u)], ~6148u), vec4<u32>(60133u, 9346u << (0u % 32u), 28186u, 0u)), _wgslsmith_f_op_f32(f32(-1f) * -322f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(295f, -1202f, false)))));
    global3 = func_1();
    let var_0 = select(_wgslsmith_mod_vec4_i32(~(abs(vec4<i32>(0i, u_input.a.x, 38729i, u_input.a.x)) ^ (vec4<i32>(1i, u_input.a.x, u_input.e, u_input.a.x) & vec4<i32>(-1i, u_input.a.x, 48177i, u_input.e))), firstTrailingBit(abs(vec4<i32>(9584i, 80460i, u_input.a.x, u_input.e)))), ~select(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.e, u_input.e, u_input.e, u_input.e) << (u_input.d % vec4<u32>(32u)), ~vec4<i32>(2147483647i, -5054i, -17797i, -2147483647i)), _wgslsmith_div_vec4_i32(select(vec4<i32>(0i, u_input.e, -2147483647i, u_input.a.x), vec4<i32>(u_input.e, -2147483647i, -18163i, u_input.e), false), -vec4<i32>(-30378i, -34895i, 1i, u_input.e)), vec4<bool>(true, true, true, true)), vec4<bool>((_wgslsmith_mult_u32(u_input.c.x, global0.a) ^ func_4(global1[_wgslsmith_index_u32(9299u, 24u)], Struct_1(58744u))) >= _wgslsmith_mod_u32(global0.a, 21811u), true, false, all(vec4<bool>(true, true, true, true))));
    let var_1 = func_1();
    var var_2 = func_1();
    let var_3 = Struct_1(var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1362f * 224f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), u_input.d, 2147483647i, var_1.a);
}

