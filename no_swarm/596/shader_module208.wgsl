struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 1> = array<vec3<bool>, 1>(vec3<bool>(false, true, true));

var<private> global1: bool;

var<private> global2: array<vec2<bool>, 15>;

var<private> global3: bool;

var<private> global4: vec3<i32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: i32) -> u32 {
    var var_0 = Struct_3(arg_1, Struct_1(_wgslsmith_div_vec4_u32(max(arg_1.c.c, ~arg_1.c.c), ~vec4<u32>(arg_1.c.a.x, 54124u, 1u, 7005u)), ~25325u, ~arg_1.c.c), arg_1.c, arg_1);
    var_0 = Struct_3(arg_1, Struct_1(vec4<u32>(u_input.b.x, ~0u << ((15643u << (var_0.c.b % 32u)) % 32u), u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, arg_2.x), arg_2.yw) & _wgslsmith_dot_vec4_u32(var_0.c.c, vec4<u32>(4294967295u, arg_2.x, var_0.a.c.a.x, var_0.d.c.c.x))), 1u, vec4<u32>(u_input.b.x, _wgslsmith_div_u32(abs(0u), max(arg_2.x, 1u)), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.x, var_0.a.c.b, 14025u, 89165u), arg_1.c.c), firstTrailingBit(vec4<u32>(arg_2.x, 4294967295u, 4294967295u, 4294967295u))), ~0u)), var_0.a.c, Struct_2(global4.x, countOneBits(-9493i), Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 1u, u_input.b.x, var_0.a.c.a.x), vec4<u32>(arg_2.x, u_input.b.x, arg_1.c.a.x, arg_1.c.b) & vec4<u32>(var_0.d.c.a.x, var_0.a.c.a.x, 21309u, arg_2.x)), 1u, var_0.d.c.a)));
    let var_1 = arg_1.c.c.zyx;
    return ~(countOneBits(arg_1.c.a.x) << (~max(max(var_1.x, 0u), _wgslsmith_add_u32(u_input.b.x, 4294967295u)) % 32u));
}

fn func_2() -> vec4<u32> {
    var var_0 = !select(select(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), 1u)], !select(global0[_wgslsmith_index_u32(21597u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)], false), true), global0[_wgslsmith_index_u32(1u, 1u)], vec3<bool>(true, true, true));
    var var_1 = 23805i >= u_input.a.x;
    let var_2 = Struct_2(~(-1i), global4.x, Struct_1(vec4<u32>(~_wgslsmith_div_u32(u_input.b.x, 0u), u_input.b.x, 4294967295u, _wgslsmith_clamp_u32(12799u, 1u, func_3(u_input.a.x, Struct_2(u_input.a.x, global4.x, Struct_1(vec4<u32>(4294967295u, 57898u, u_input.b.x, 4294967295u), 1u, vec4<u32>(41156u, 5875u, u_input.b.x, 1u))), vec4<u32>(u_input.b.x, u_input.b.x, 12319u, u_input.b.x), u_input.a.x))), ~(~_wgslsmith_clamp_u32(u_input.b.x, 10011u, u_input.b.x)), abs(vec4<u32>(1u, u_input.b.x, 4294967295u, u_input.b.x))));
    let var_3 = all(var_0.yz);
    var var_4 = vec3<i32>(global4.x, 2147483647i, 1i);
    return vec4<u32>(54502u, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(var_2.c.a.x, 28169u), ~1u), 1u, 27946u, min(_wgslsmith_clamp_u32(u_input.b.x, 45548u, u_input.b.x), ~1u)), var_2.c.c), _wgslsmith_div_u32(29465u, u_input.b.x), var_2.c.c.x);
}

fn func_1(arg_0: vec2<i32>) -> vec3<u32> {
    global2 = array<vec2<bool>, 15>();
    var var_0 = Struct_1(_wgslsmith_sub_vec4_u32(max(func_2(), ~vec4<u32>(u_input.b.x, u_input.b.x, 9392u, u_input.b.x)), _wgslsmith_mod_vec4_u32(func_2() >> (~vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x) % vec4<u32>(32u)), ~(~vec4<u32>(23697u, u_input.b.x, u_input.b.x, 35421u)))), ~u_input.b.x, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, ~func_2().x, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 18189u, 11753u), vec3<u32>(1u, u_input.b.x, u_input.b.x))), 1u), abs(~firstTrailingBit(vec4<u32>(0u, u_input.b.x, 66410u, 4294967295u)))));
    var var_1 = !global0[_wgslsmith_index_u32(u_input.b.x, 1u)];
    let var_2 = Struct_2(0i, global4.x, Struct_1(countOneBits(reverseBits(var_0.c)), max(12676u, 57442u), _wgslsmith_clamp_vec4_u32(firstTrailingBit(_wgslsmith_mult_vec4_u32(var_0.a, var_0.c)), vec4<u32>(~4294967295u, ~4294967295u, func_3(global4.x, Struct_2(u_input.a.x, 32050i, Struct_1(vec4<u32>(var_0.a.x, u_input.b.x, u_input.b.x, u_input.b.x), 4294967295u, var_0.a)), var_0.c, 4394i), 4294967295u), var_0.c)));
    global2 = array<vec2<bool>, 15>();
    return vec3<u32>(var_2.c.b, ~(_wgslsmith_div_u32(min(u_input.b.x, u_input.b.x), u_input.b.x) | _wgslsmith_dot_vec3_u32(vec3<u32>(10861u, 25162u, 215274u), ~var_0.a.zyw)), _wgslsmith_sub_u32(var_2.c.b, var_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = ~(vec3<i32>(u_input.a.x, -2147483647i, ~1i) << (func_1(u_input.a) % vec3<u32>(32u)));
    global1 = ~0i >= (-2147483647i >> (~(~u_input.b.x) % 32u));
    let var_0 = Struct_2(-2147483647i, u_input.a.x, Struct_1(vec4<u32>(_wgslsmith_mod_u32(26339u, firstLeadingBit(u_input.b.x)), u_input.b.x, 0u, 21454u), 4294967295u, firstTrailingBit(~vec4<u32>(2002u, 1u, u_input.b.x, 4294967295u))));
    var var_1 = Struct_2(~countOneBits(reverseBits(var_0.b)) | _wgslsmith_clamp_i32(global4.x, u_input.a.x, _wgslsmith_div_i32(i32(-1i) * -2147483647i, u_input.a.x)), u_input.a.x, var_0.c);
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + -156f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1399f)) + _wgslsmith_f_op_f32(1597f * 238f))))));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1853f + 2599f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1061f))))));
    global3 = any(!select(select(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.c.a.x, 17037u), 1u)], vec3<bool>(true, true, true), !global0[_wgslsmith_index_u32(19915u, 1u)]), vec3<bool>(var_1.c.a.x == 1u, var_1.b <= global4.x, 15411u > var_1.c.a.x), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_3, -1532f))), 1431f, 393f), var_2, var_1.c.a.x, vec3<u32>(func_3(_wgslsmith_div_i32(~8456i, max(-2147483647i, global4.x)), Struct_2(-10790i, ~var_1.b, var_0.c), vec4<u32>(61577u, var_1.c.b, _wgslsmith_sub_u32(87745u, 52906u), 4294967295u), 44028i), 0u, ~115384u));
}

