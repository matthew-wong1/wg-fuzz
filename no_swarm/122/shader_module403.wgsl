struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 7>;

var<private> global1: array<vec3<f32>, 6>;

var<private> global2: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(-833f, 1000f), Struct_2(-1649f, -912f), Struct_2(2361f, -2013f), Struct_2(-919f, 806f));

var<private> global3: array<i32, 12> = array<i32, 12>(i32(-2147483648), -1537i, -61501i, 95729i, 0i, 0i, -48969i, 3623i, i32(-2147483648), -21122i, -1380i, 1i);

var<private> global4: array<u32, 23>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>) -> vec3<i32> {
    global4 = array<u32, 23>();
    var var_0 = Struct_3(vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(19027u, 12u)], -1757i, global3[_wgslsmith_index_u32(50767u, 12u)], 14062i), vec4<i32>(-8114i, 62421i, 2147483647i, global3[_wgslsmith_index_u32(5847u, 12u)]) ^ vec4<i32>(100835i, 59247i, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 23u)], 12u)], global3[_wgslsmith_index_u32(0u, 12u)])), global3[_wgslsmith_index_u32(min(_wgslsmith_dot_vec2_u32(u_input.a.yx, u_input.a.yx), 1u), 12u)], 12366i));
    global0 = array<vec4<f32>, 7>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -555f) + arg_0.x)))));
    let var_2 = Struct_3(vec3<i32>(-1i & max(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -77036i, -15153i, var_0.a.x), vec4<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 12u)], -41946i, var_0.a.x, var_0.a.x)), _wgslsmith_sub_i32(-1i, global3[_wgslsmith_index_u32(u_input.a.x, 12u)])), -_wgslsmith_clamp_i32(var_0.a.x | -12855i, global3[_wgslsmith_index_u32(1u, 12u)] | 11990i, var_0.a.x), -(~(-46885i))));
    return vec3<i32>(var_0.a.x, ~var_0.a.x, _wgslsmith_mult_i32(var_2.a.x, _wgslsmith_add_i32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~u_input.a.xx, u_input.a.yy), 12u)], 2147483647i | var_2.a.x)));
}

fn func_2() -> bool {
    global4 = array<u32, 23>();
    var var_0 = Struct_4(func_3(_wgslsmith_f_op_vec3_f32(min(global1[_wgslsmith_index_u32(57775u, 6u)], global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 23u)], 23u)], 23u)], 0u), 6u)]))), global0[_wgslsmith_index_u32(~u_input.a.x | _wgslsmith_mod_u32(~0u, 27320u), 7u)], _wgslsmith_mult_vec2_u32(~(_wgslsmith_add_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(u_input.a.x, 23u)], global4[_wgslsmith_index_u32(49979u, 23u)]), u_input.a.zy) >> (vec2<u32>(16008u, u_input.a.x) % vec2<u32>(32u))), ~select(vec2<u32>(10897u, 0u), u_input.a.yz, all(vec3<bool>(false, true, true)))), global2[_wgslsmith_index_u32(40971u, 4u)]);
    global4 = array<u32, 23>();
    return !any(vec3<bool>(any(vec4<bool>(true, true, true, true)), true, any(select(vec2<bool>(false, true), vec2<bool>(false, false), false))));
}

fn func_4(arg_0: f32, arg_1: vec3<bool>) -> Struct_3 {
    var var_0 = arg_0;
    let var_1 = arg_1;
    var var_2 = vec4<u32>(1u, 22015u, 18374u, u_input.a.x);
    global1 = array<vec3<f32>, 6>();
    global4 = array<u32, 23>();
    return Struct_3(~(-select(select(vec3<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 12u)], -1199i, global3[_wgslsmith_index_u32(37335u, 12u)]), vec3<i32>(-26599i, global3[_wgslsmith_index_u32(1u, 12u)], global3[_wgslsmith_index_u32(10836u, 12u)]), arg_1), vec3<i32>(-28278i, -2147483647i, 14756i), false)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_5, arg_2: i32, arg_3: i32) -> Struct_3 {
    global1 = array<vec3<f32>, 6>();
    let var_0 = Struct_1(arg_1.b.a, vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_3, arg_0.a.x) | arg_1.c.xz, _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.a.x, 33935i), arg_0.a.xz, -arg_0.a.yx)), ~24317i));
    let var_1 = select(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true))), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), select(select(select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), any(vec4<bool>(true, false, false, false))), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true)), vec3<bool>(true, true, true)), vec3<bool>(any(vec3<bool>(-6703i >= arg_0.a.x, true, true)), any(vec4<bool>(true, true, true, true)), false));
    let var_2 = Struct_4(vec3<i32>(countOneBits(-508i), -34084i, arg_3), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 7u)]))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(328f, arg_1.b.a, 672f, 1447f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, 1266f, arg_1.b.a, var_0.a) - vec4<f32>(-1000f, var_0.a, 327f, 260f)))))), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, global4[_wgslsmith_index_u32(1u, 23u)]), ~arg_1.a.wy, vec2<u32>(global4[_wgslsmith_index_u32(u_input.a.x, 23u)], 39442u | _wgslsmith_dot_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(arg_1.a.x, 23u)], u_input.a.x), vec2<u32>(u_input.a.x, 1u)))), global2[_wgslsmith_index_u32(6450u, 4u)]);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(global0[_wgslsmith_index_u32(~(~var_2.c.x), 7u)], vec4<f32>(_wgslsmith_f_op_f32(var_0.a * arg_1.b.a), _wgslsmith_f_op_f32(step(arg_1.b.a, var_0.a)), var_2.d.b, _wgslsmith_f_op_f32(f32(-1f) * -853f))))) - global0[_wgslsmith_index_u32(~u_input.a.x, 7u)]);
    return Struct_3(select(select(~vec3<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 12u)], -14849i, var_0.b.x), vec3<i32>(-8775i, arg_1.b.b.x, -4268i), !vec3<bool>(false, var_1.x, var_1.x)), vec3<i32>(2147483647i, _wgslsmith_clamp_i32(var_2.a.x, global3[_wgslsmith_index_u32(36888u, 12u)], arg_1.b.b.x), arg_1.b.b.x), select(var_1, !vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_1.x, true, var_1.x))) | -arg_0.a);
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: f32) -> Struct_1 {
    var var_0 = true && (global4[_wgslsmith_index_u32(51405u << (min(_wgslsmith_mult_u32(0u, 1u), u_input.a.x) % 32u), 23u)] > (_wgslsmith_sub_u32(u_input.a.x, select(35016u, global4[_wgslsmith_index_u32(u_input.a.x, 23u)], true)) & _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, u_input.a.x, u_input.a.x), vec3<u32>(14267u, 37042u, global4[_wgslsmith_index_u32(72884u, 23u)]))));
    global0 = array<vec4<f32>, 7>();
    var var_1 = -_wgslsmith_div_vec2_i32(-(~vec2<i32>(-49436i, 34323i)), -vec2<i32>(-2147483647i, _wgslsmith_add_i32(-13315i, -12941i)));
    var var_2 = u_input.a.zz;
    let var_3 = func_5(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1193f) * _wgslsmith_f_op_f32(-arg_1)), vec3<bool>(func_2(), true, any(vec4<bool>(true, false, true, false)))), Struct_5(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) ^ (vec4<u32>(u_input.a.x, 16331u, var_2.x, global4[_wgslsmith_index_u32(u_input.a.x, 23u)]) | vec4<u32>(global4[_wgslsmith_index_u32(var_2.x, 23u)], var_2.x, var_2.x, var_2.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, global4[_wgslsmith_index_u32(0u, 23u)], 4294967295u, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, 10202u, 105917u)) ^ vec4<u32>(1u, global4[_wgslsmith_index_u32(21043u, 23u)], 4294967295u, global4[_wgslsmith_index_u32(var_2.x, 23u)])), Struct_1(arg_0.a, vec2<i32>(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_2.x, 23u)], 12u)], -2147483647i) << (u_input.a.zx % vec2<u32>(32u))), vec3<i32>(var_1.x, global3[_wgslsmith_index_u32(5483u, 12u)], ~(-21754i)) & -min(vec3<i32>(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 23u)], 23u)], 12u)], 33204i, 11485i), vec3<i32>(var_1.x, global3[_wgslsmith_index_u32(1u, 12u)], global3[_wgslsmith_index_u32(var_2.x, 12u)]))), _wgslsmith_mod_i32(1i, global3[_wgslsmith_index_u32(~1u, 12u)]), 2147483647i);
    return Struct_1(arg_1, ~vec2<i32>(10674i, -global3[_wgslsmith_index_u32(74590u, 12u)]) >> (~firstLeadingBit(vec2<u32>(8466u, u_input.a.x)) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global2[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x & 1u, 23u)], 23u)], 4u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -676f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1228f))))), _wgslsmith_f_op_f32(-921f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -804f))))));
    global3 = array<i32, 12>();
    let var_1 = _wgslsmith_f_op_f32(-var_0.a);
    var var_2 = Struct_4(firstTrailingBit(vec3<i32>(var_0.b.x, func_5(Struct_3(vec3<i32>(var_0.b.x, 0i, global3[_wgslsmith_index_u32(4294967295u, 12u)])), Struct_5(vec4<u32>(0u, 83502u, 24813u, 0u), Struct_1(1041f, vec2<i32>(-23182i, 1i)), vec3<i32>(var_0.b.x, global3[_wgslsmith_index_u32(4294967295u, 12u)], 1i)), var_0.b.x >> (global4[_wgslsmith_index_u32(24526u, 23u)] % 32u), 4084i).a.x, _wgslsmith_mod_i32(-35424i, -46879i))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(3232u, 23u)], 7u)]))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 23u)], 7u)])) * _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(u_input.a.x, 7u)] - vec4<f32>(var_0.a, var_1, 247f, var_1))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, -338f, -1928f, -892f) - vec4<f32>(var_1, var_1, var_0.a, var_1)))), all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))))))), ~(~(u_input.a.zx >> (u_input.a.zx % vec2<u32>(32u)))) ^ ~(~(vec2<u32>(u_input.a.x, 34659u) >> (u_input.a.yx % vec2<u32>(32u)))), Struct_2(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(select(-1152f, _wgslsmith_f_op_f32(floor(var_1)), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1750f, var_1) * -1635f))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(var_0.a - var_2.d.a), func_3(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(global1[_wgslsmith_index_u32(60885u, 6u)], vec3<f32>(var_1, -465f, -340f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_2.d.b, -1213f)))))).yx);
    var var_4 = vec3<f32>(1305f, _wgslsmith_f_op_f32(-786f - _wgslsmith_f_op_f32(sign(-429f))), 331f);
    var var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_4.yx * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.a, 1581f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-987f, -382f)))) * _wgslsmith_f_op_vec2_f32(-var_2.b.zz));
    let x = u_input.a;
    s_output = StorageBuffer(~(~4294967295u));
}

