struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: bool,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6> = array<bool, 6>(false, false, false, false, true, false);

var<private> global1: array<vec3<i32>, 18>;

var<private> global2: array<vec2<bool>, 17> = array<vec2<bool>, 17>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: Struct_1, arg_3: vec3<f32>) -> i32 {
    global0 = array<bool, 6>();
    let var_0 = !vec4<bool>(!(u_input.b.x <= 21059i), false, !(!(u_input.c >= u_input.c)), !all(vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(arg_2.d, 6u)])) || true);
    var var_1 = !((reverseBits(39054u >> (arg_2.d % 32u)) << (_wgslsmith_dot_vec3_u32(abs(vec3<u32>(34744u, arg_0, 1u)), vec3<u32>(16184u, u_input.c, 164904u)) % 32u)) != ~firstLeadingBit(arg_2.d));
    let var_2 = Struct_5(u_input.b.x);
    var_1 = true;
    return _wgslsmith_div_i32(_wgslsmith_mult_i32(firstTrailingBit(15351i), var_2.a) ^ ~select(u_input.b.x, -1i >> (0u % 32u), var_0.x == global0[_wgslsmith_index_u32(u_input.c, 6u)]), u_input.b.x);
}

fn func_2() -> Struct_2 {
    global2 = array<vec2<bool>, 17>();
    let var_0 = !select(vec3<bool>(true, true, all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 6u)], true, global0[_wgslsmith_index_u32(u_input.a, 6u)]))), vec3<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a & u_input.c, _wgslsmith_div_u32(12471u, 11796u)), 6u)], all(select(vec4<bool>(global0[_wgslsmith_index_u32(61344u, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(u_input.a, 6u)], global0[_wgslsmith_index_u32(u_input.c, 6u)]), vec4<bool>(global0[_wgslsmith_index_u32(1u, 6u)], false, global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(19253u, 6u)]), vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.c, 6u)], global0[_wgslsmith_index_u32(u_input.c, 6u)])))), all(vec2<bool>(true, true)));
    var var_1 = Struct_3(2147483647i, -4196i, Struct_2(2147483647i, var_0, false, firstLeadingBit(0i), func_3(_wgslsmith_sub_u32(~7711u, ~u_input.a), -308f, Struct_1(32829i, -764f, false, 31623u, -1805f), vec3<f32>(_wgslsmith_f_op_f32(-666f + -687f), _wgslsmith_f_op_f32(floor(-1000f)), 1195f))));
    var_1 = Struct_3(_wgslsmith_clamp_i32(-15664i, var_1.b, countOneBits(max(var_1.a ^ u_input.b.x, -42408i))), ~((i32(-1i) * -1i) >> (_wgslsmith_add_u32(1u, _wgslsmith_sub_u32(u_input.c, u_input.c)) % 32u)), Struct_2(-firstLeadingBit(i32(-1i) * -2147483647i), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 6u)], !var_1.c.b.x && true), var_1.c.c, var_1.b, -1i));
    let var_2 = Struct_4(1i);
    return Struct_2(-u_input.b.x, vec3<bool>(false, !var_1.c.b.x, any(vec3<bool>(false, true, !global0[_wgslsmith_index_u32(1u, 6u)]))), !(global0[_wgslsmith_index_u32(u_input.a, 6u)] & var_0.x), var_2.a, i32(-1i) * -_wgslsmith_clamp_i32(-5366i, _wgslsmith_sub_i32(var_1.a, -1i), var_1.c.a));
}

fn func_1() -> Struct_5 {
    global0 = array<bool, 6>();
    var var_0 = u_input.b.x;
    let var_1 = func_2();
    global1 = array<vec3<i32>, 18>();
    global1 = array<vec3<i32>, 18>();
    return Struct_5(-85867i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1161f;
    var var_1 = ~abs(vec3<i32>(i32(-1i) * -u_input.b.x, -8565i << (u_input.a % 32u), _wgslsmith_sub_i32(2147483647i, u_input.b.x) ^ firstLeadingBit(1i)));
    global0 = array<bool, 6>();
    global2 = array<vec2<bool>, 17>();
    let var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_clamp_i32(~_wgslsmith_mult_i32(-1i, var_1.x), 1i, var_2.a), var_1.x, ~var_2.a, ~(-(var_2.a | u_input.b.x))), min(~u_input.c, ~_wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, 1u, u_input.c), ~u_input.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(u_input.a, u_input.a), u_input.c, 4294967295u, ~u_input.c), ~min(vec4<u32>(u_input.c, u_input.a, u_input.c, 1134u), vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)), vec4<u32>(u_input.a, 10031u, 75080u, 4294967295u) >> (vec4<u32>(u_input.a, 1u, u_input.a, 12183u) % vec4<u32>(32u))) ^ ~(vec4<u32>(u_input.a, 6788u, 35158u, u_input.a) << (~vec4<u32>(u_input.c, u_input.a, 0u, 90938u) % vec4<u32>(32u))), abs(u_input.b));
}

