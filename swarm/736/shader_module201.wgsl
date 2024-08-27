struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: bool,
    d: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<u32, 23> = array<u32, 23>(0u, 0u, 0u, 63110u, 4294967295u, 1u, 4016u, 17562u, 0u, 34296u, 39282u, 1u, 0u, 41498u, 1u, 19370u, 25246u, 1u, 0u, 4294967295u, 57250u, 9176u, 4294967295u);

var<private> global2: array<f32, 8>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4) -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1164f, global2[_wgslsmith_index_u32(76801u, 8u)], global2[_wgslsmith_index_u32(arg_0.b.b, 8u)]))))))), _wgslsmith_dot_vec4_u32(~u_input.b, u_input.b << (countOneBits(~u_input.b) % vec4<u32>(32u))));
    return ~(~vec4<u32>(global1[_wgslsmith_index_u32(~(global1[_wgslsmith_index_u32(122558u, 23u)] << (95633u % 32u)), 23u)], reverseBits(1u), firstTrailingBit(4294967295u), global1[_wgslsmith_index_u32(var_0.b, 23u)]));
}

fn func_2() -> vec3<i32> {
    global0 = u_input.a;
    global2 = array<f32, 8>();
    global0 = _wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~32878u, countOneBits(_wgslsmith_sub_u32(30045u, ~global1[_wgslsmith_index_u32(15018u, 23u)])), ~u_input.d), ~(_wgslsmith_clamp_vec4_u32(abs(u_input.b), func_3(Struct_4(vec3<bool>(false, true, false), Struct_3(false, 0u), false, false)), u_input.b) >> ((vec4<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 23u)], u_input.a, u_input.b.x, u_input.a) ^ select(u_input.b, vec4<u32>(u_input.d, 1u, u_input.d, 12543u), true)) % vec4<u32>(32u))));
    global2 = array<f32, 8>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17217u, 23u)], 8u)], global2[_wgslsmith_index_u32(44384u, 8u)], -655f) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1030f, 516f, global2[_wgslsmith_index_u32(u_input.d, 8u)]))))), _wgslsmith_add_u32(~firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d, 23u)], 23u)]), 18546u)), select(vec4<i32>(abs(u_input.c.x), _wgslsmith_mod_i32(-50208i, -u_input.c.x), -49929i, i32(-1i) * -1190i), select(-abs(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 2147483647i)), ~(-vec4<i32>(u_input.c.x, 2147483647i, 20145i, 0i)), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(any(vec3<bool>(true, false, false)), all(vec2<bool>(true, true)), all(vec2<bool>(true, false)), any(vec4<bool>(false, true, true, true))))));
    return ~(~(-(~firstTrailingBit(vec3<i32>(u_input.c.x, 2147483647i, 0i)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_5) -> u32 {
    let var_0 = -countOneBits(-_wgslsmith_mod_vec4_i32(~vec4<i32>(-1i, u_input.c.x, 1i, u_input.c.x), max(vec4<i32>(-2147483647i, 0i, u_input.c.x, 15200i), vec4<i32>(16940i, 56905i, u_input.c.x, 10063i))));
    global0 = 54646u ^ global1[_wgslsmith_index_u32(arg_0.b, 23u)];
    let var_1 = vec3<i32>(~u_input.c.x >> (abs(8244u) % 32u), ~(~(-8485i)), (i32(-1i) * -2147483647i) | (abs(27339i) | countOneBits(u_input.c.x))) | -(vec3<i32>(u_input.c.x, -var_0.x, -u_input.c.x) & func_2());
    global2 = array<f32, 8>();
    var var_2 = 34919u;
    return 67497u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32((global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(60546u, 4294967295u, global1[_wgslsmith_index_u32(46839u, 23u)], u_input.b.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(5615u, u_input.a), vec2<u32>(60680u, 61132u))), 23u)] | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(u_input.d, 23u)], 14927u) >> (1u % 32u), 23u)], 23u)]) ^ u_input.a, u_input.a << (~_wgslsmith_div_u32(46997u, func_1(Struct_1(vec3<f32>(548f, 729f, -2079f), u_input.a), Struct_5(Struct_4(vec3<bool>(false, true, false), Struct_3(true, 4294967295u), false, true), false, global1[_wgslsmith_index_u32(4294967295u, 23u)]))) % 32u), ~_wgslsmith_add_u32(~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4961u, 23u)], 23u)]), ~func_3(Struct_4(vec3<bool>(true, false, false), Struct_3(false, 15029u), true, false)).x)), 23u)];
    var var_1 = _wgslsmith_mult_i32(~select(max(firstLeadingBit(2147483647i), u_input.c.x), i32(-1i) * -1i, true), func_2().x);
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(883f, global2[_wgslsmith_index_u32(4294967295u, 8u)], global2[_wgslsmith_index_u32(0u, 8u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global2[_wgslsmith_index_u32(73442u, 8u)], -1172f))))), countOneBits(_wgslsmith_mod_u32(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(select(55449u, u_input.b.x, true), 23u)], 23u)]))), _wgslsmith_mod_vec4_i32(abs(~(-vec4<i32>(1i, 0i, -38120i, u_input.c.x))), abs(~select(vec4<i32>(u_input.c.x, -2147483647i, 0i, u_input.c.x), vec4<i32>(-1i, u_input.c.x, 9614i, u_input.c.x), true))));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.a.a.xz * var_2.a.a.zy)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.a.a.zx * vec2<f32>(1957f, -416f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.a.x, 1120f) * vec2<f32>(global2[_wgslsmith_index_u32(var_2.a.b, 8u)], global2[_wgslsmith_index_u32(6125u, 8u)]))), vec2<bool>(true, 82510u <= var_2.a.b))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.a.x, global2[_wgslsmith_index_u32(u_input.d, 8u)]) * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a.a.x * global2[_wgslsmith_index_u32(0u, 8u)]), global2[_wgslsmith_index_u32(0u, 8u)]), 531f)));
    var_2 = Struct_2(Struct_1(var_2.a.a, _wgslsmith_clamp_u32(~(0u << (0u % 32u)), ~(~var_2.a.b), ~_wgslsmith_mult_u32(1u, u_input.b.x))), countOneBits(vec4<i32>(min(u_input.c.x, -35652i), -32908i, i32(-1i) * -u_input.c.x, _wgslsmith_sub_i32(~22649i, _wgslsmith_mult_i32(u_input.c.x, -1i)))));
    let var_4 = Struct_2(var_2.a, var_2.b << (~u_input.b % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(reverseBits(u_input.d), global1[_wgslsmith_index_u32(10073u, 23u)]), firstLeadingBit(global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_sub_u32(1469u, u_input.d), abs(u_input.a)), 23u)]), 4294967295u, vec4<u32>(1u | firstLeadingBit(firstTrailingBit(var_4.a.b)), 106588u, 4294967295u, ~_wgslsmith_div_u32(1u, ~25748u)));
}

