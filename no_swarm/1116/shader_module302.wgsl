struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 8>;

var<private> global1: vec4<f32> = vec4<f32>(-120f, -584f, -1744f, 692f);

var<private> global2: array<u32, 30> = array<u32, 30>(63965u, 33317u, 7392u, 0u, 113447u, 18809u, 4855u, 4294967295u, 1u, 3420u, 4294967295u, 1u, 68457u, 34139u, 4294967295u, 0u, 3054u, 34717u, 0u, 1u, 0u, 4294967295u, 6570u, 19943u, 0u, 0u, 13664u, 15021u, 30354u, 4294967295u);

var<private> global3: Struct_3 = Struct_3(50052u, 932f, Struct_2(Struct_1(false)), Struct_2(Struct_1(false)));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: bool, arg_3: vec4<f32>) -> vec2<u32> {
    let var_0 = global3.c;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(565f - _wgslsmith_f_op_f32(-global1.x)));
    let var_2 = 0u;
    global3 = Struct_3(~global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(124569u, 4294967295u, var_2, 4294967295u), vec4<u32>(arg_1, 30175u, 113478u, arg_1)), 30u)], _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-680f * -1839f))) - arg_3.x)), global3.c, global3.c);
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_3) + arg_3) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, -1000f, arg_3.x, -516f), vec4<f32>(var_1, -1675f, global3.b, global3.b), global3.c.a.a)), _wgslsmith_f_op_vec4_f32(ceil(arg_3)), global3.d.a.a)))));
    return max(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, global2[_wgslsmith_index_u32(4294967295u, 30u)], var_2, var_2), vec4<u32>(var_2, 13868u, 51306u, 57464u)), 80151u), 52023u) >> (~_wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(global2[_wgslsmith_index_u32(global3.a, 30u)], 27602u)), vec2<u32>(72504u, global3.a) >> (vec2<u32>(0u, 62243u) % vec2<u32>(32u))) % vec2<u32>(32u)), select(vec2<u32>(_wgslsmith_clamp_u32(~global2[_wgslsmith_index_u32(var_2, 30u)], select(1u, var_2, true), ~var_2), ~arg_1), ~vec2<u32>(~var_2, ~var_2), vec2<bool>(!global3.c.a.a, true)));
}

fn func_2(arg_0: Struct_2) -> u32 {
    var var_0 = countOneBits(vec4<i32>(u_input.a, u_input.b, u_input.d.x, ~u_input.b));
    var var_1 = global2[_wgslsmith_index_u32(~global3.a, 30u)];
    let var_2 = global3.c.a;
    var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(1u, 30u)], global3.a) | ~vec2<u32>(global3.a, global2[_wgslsmith_index_u32(1u, 30u)]), ~vec2<u32>(18821u, global2[_wgslsmith_index_u32(global3.a, 30u)]) | vec2<u32>(68533u, global3.a)), global3.a << (20787u % 32u)), func_3(var_0.zyx, 4294967295u, false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1100f, -1000f, -722f, -284f)) - vec4<f32>(global3.b, 1773f, global3.b, global1.x)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1048f, global1.x, global1.x, global1.x))))));
    let var_3 = arg_0.a;
    return _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(global3.a, 4294967295u, global3.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.a, 30u)], 30u)]), ~vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(10443u, 30u)], 30u)], global3.a, 59866u)), firstTrailingBit(vec4<u32>(0u, global3.a, global3.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.a, 30u)], 30u)]) >> (vec4<u32>(1u, global2[_wgslsmith_index_u32(7081u, 30u)], 4294967295u, global2[_wgslsmith_index_u32(0u, 30u)]) % vec4<u32>(32u)))), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(16735u, 54097u, 70320u, 4294967295u) & vec4<u32>(4852u, 58943u, global3.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(47927u, 30u)], 30u)]), ~vec4<u32>(4294967295u, global3.a, global2[_wgslsmith_index_u32(global3.a, 30u)], 40995u))));
}

fn func_1(arg_0: i32, arg_1: vec3<i32>, arg_2: bool, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = global0[_wgslsmith_index_u32(~firstLeadingBit(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 30u)], global3.a, 33308u), vec3<u32>(global3.a, global3.a, global3.a)), 2922u & global2[_wgslsmith_index_u32(1u, 30u)]), 30u)]) & global3.a, 8u)];
    return _wgslsmith_div_vec2_u32(vec2<u32>(54144u, ~(~global3.a)), select(vec2<u32>(_wgslsmith_div_u32(6973u, global3.a) & abs(59678u), global2[_wgslsmith_index_u32(global3.a, 30u)]), vec2<u32>(~7876u | ~global3.a, global2[_wgslsmith_index_u32(func_2(Struct_2(global3.d.a)), 30u)]), false));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: Struct_3) -> vec4<f32> {
    var var_0 = arg_2.d;
    var_0 = Struct_2(var_0.a);
    global3 = Struct_3(1u, -411f, arg_1.d, Struct_2(global3.c.a));
    global3 = Struct_3(global3.a >> (_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(arg_0.x, arg_1.a, arg_0.x, arg_2.a) << (vec4<u32>(114841u, 1u, arg_0.x, 9276u) % vec4<u32>(32u))), ~reverseBits(vec4<u32>(global2[_wgslsmith_index_u32(arg_1.a, 30u)], 0u, 15768u, 1u))) % 32u), _wgslsmith_div_f32(-736f, _wgslsmith_f_op_f32(f32(-1f) * -191f)), Struct_2(arg_1.c.a), arg_1.d);
    global3 = Struct_3(_wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_2.a, global2[_wgslsmith_index_u32(0u, 30u)], arg_0.x) | vec3<u32>(10688u, arg_0.x, 13409u), ~(vec3<u32>(arg_2.a, 0u, 19126u) & vec3<u32>(63437u, global3.a, arg_0.x)), select(!global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 30u)], 8u)], !vec3<bool>(arg_1.c.a.a, true, global3.d.a.a), global0[_wgslsmith_index_u32(~arg_1.a, 8u)])), vec3<u32>(0u, ~(~arg_1.a), _wgslsmith_clamp_u32(arg_1.a, func_1(u_input.d.x, u_input.e.zxz, var_0.a.a, Struct_1(true)).x, 1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.b * arg_1.b), _wgslsmith_f_op_f32(round(arg_1.b)))) + 353f)), Struct_2(var_0.a), arg_2.d);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(global3.b)), global3.b, arg_1.b, 1388f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-115f, -234f, arg_1.b, global3.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(func_1(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.c.wy, u_input.c.zz), vec2<i32>(u_input.b, -53005i)), u_input.d.zzz, select(false, !global3.d.a.a, true), Struct_1(true)), Struct_3(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~1u, 30u)], 30u)], _wgslsmith_f_op_f32(round(-1108f)), Struct_2(Struct_1(global3.c.a.a)), Struct_2(Struct_1(false))), Struct_3(_wgslsmith_mod_u32(1u, ~49270u), -375f, global3.c, Struct_2(global3.d.a)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.x, 757f, 318f, 1000f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(471f, 1994f, global3.b, -364f) + vec4<f32>(global3.b, 1325f, global3.b, -693f)))))));
    global0 = array<vec3<bool>, 8>();
    let var_0 = u_input.d.xwx << (vec3<u32>(func_3(-(vec3<i32>(-2147483647i, u_input.e.x, 50098i) << (vec3<u32>(global2[_wgslsmith_index_u32(global3.a, 30u)], 4294967295u, 1u) % vec3<u32>(32u))), global3.a >> ((global3.a & global2[_wgslsmith_index_u32(8605u, 30u)]) % 32u), global3.d.a.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.x, -630f, global3.b, global3.b))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b, global1.x, 1140f, global3.b) - vec4<f32>(-126f, 198f, global3.b, 239f)))).x, global3.a & ~_wgslsmith_mult_u32(41094u, global2[_wgslsmith_index_u32(global3.a, 30u)]), global2[_wgslsmith_index_u32(global3.a, 30u)]) % vec3<u32>(32u));
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global3.b, _wgslsmith_f_op_f32(global3.b + global1.x), -2050f));
    var var_1 = ~u_input.b >> ((_wgslsmith_add_u32(~(~global2[_wgslsmith_index_u32(4294967295u, 30u)]), ~global2[_wgslsmith_index_u32(1u, 30u)]) | _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.a, global3.a) & vec2<u32>(global2[_wgslsmith_index_u32(global3.a, 30u)], global2[_wgslsmith_index_u32(1u, 30u)]), vec2<u32>(4294967295u, global3.a) << (vec2<u32>(global2[_wgslsmith_index_u32(1u, 30u)], global3.a) % vec2<u32>(32u))), global2[_wgslsmith_index_u32(~(~global3.a), 30u)], firstLeadingBit(firstLeadingBit(0u)))) % 32u);
    var var_2 = Struct_2(Struct_1(global3.c.a.a));
    var var_3 = vec4<bool>(any(!select(select(global0[_wgslsmith_index_u32(global3.a, 8u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(73977u, 30u)], 8u)], false), vec3<bool>(false, true, true), var_2.a.a)), all(select(vec4<bool>(any(vec2<bool>(false, false)), true, !global3.d.a.a, var_2.a.a), select(vec4<bool>(global3.c.a.a, true, false, global3.c.a.a), vec4<bool>(global3.c.a.a, true, true, false), !vec4<bool>(var_2.a.a, false, false, var_2.a.a)), select(select(vec4<bool>(true, var_2.a.a, global3.d.a.a, true), vec4<bool>(var_2.a.a, false, true, var_2.a.a), false), select(vec4<bool>(false, true, global3.d.a.a, var_2.a.a), vec4<bool>(true, var_2.a.a, false, global3.c.a.a), vec4<bool>(true, false, var_2.a.a, global3.d.a.a)), !vec4<bool>(false, var_2.a.a, false, true)))), !var_2.a.a, true);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-vec4<i32>(1i, -1i, max(0i, -1i), -1i)));
}

