struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(1000f, -1000f), true, vec2<bool>(false, false));

var<private> global2: array<f32, 4> = array<f32, 4>(-405f, 181f, 1018f, -1564f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<i32>) -> vec2<bool> {
    let var_0 = Struct_1(global1.a, true, global1.c);
    global0 = array<Struct_1, 32>();
    var var_1 = !(!vec3<bool>(all(vec4<bool>(true, true, true, true)), any(var_0.c), true));
    var_1 = vec3<bool>(select(any(select(vec4<bool>(false, var_1.x, var_0.c.x, false), vec4<bool>(var_1.x, false, var_0.b, global1.b), vec4<bool>(false, var_1.x, true, var_1.x))), any(!vec2<bool>(var_0.c.x, true)), true) | false, select(true, !var_1.x, true), all(select(vec2<bool>(var_1.x, true), var_1.yx, var_0.c.x)) || (_wgslsmith_add_u32(1u, 100916u) <= ~select(u_input.b.x, 4294967295u, var_0.b)));
    global2 = array<f32, 4>();
    return !(!vec2<bool>(!all(vec4<bool>(var_1.x, false, false, false)), abs(20368i) < _wgslsmith_add_i32(arg_0.x, arg_0.x)));
}

fn func_2(arg_0: i32) -> vec3<u32> {
    global0 = array<Struct_1, 32>();
    global1 = global0[_wgslsmith_index_u32(countOneBits(~u_input.d), 32u)];
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.a) * global1.a)) - global1.a), -(~_wgslsmith_dot_vec3_i32(vec3<i32>(3100i, arg_0, arg_0), vec3<i32>(u_input.c.x, -18145i, 10081i))) >= ~(~_wgslsmith_mod_i32(39709i, u_input.c.x)), func_3(~vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(57057i, arg_0, 2147483647i, -13560i), vec4<i32>(1i, 8780i, arg_0, -4839i)), -6176i)));
    var var_1 = _wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u), vec4<u32>(11704u, u_input.e.x, 0u, 0u), vec4<u32>(u_input.e.x, u_input.a, u_input.d, u_input.a)) >> (vec4<u32>(1u | u_input.b.x, u_input.a, ~17246u, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x)) % vec4<u32>(32u)), ~vec4<u32>(u_input.a, u_input.e.x, ~u_input.b.x, u_input.d | u_input.a)));
    let var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(min(1000f, 924f)), _wgslsmith_f_op_f32(step(-461f, global2[_wgslsmith_index_u32(abs(~1u), 4u)]))), var_0.a.x >= _wgslsmith_f_op_f32(f32(-1f) * -549f), !vec2<bool>(!global1.b, true));
    return vec3<u32>(_wgslsmith_mod_u32(~_wgslsmith_add_u32(4294967295u, u_input.a), u_input.d), ~firstLeadingBit(firstLeadingBit(u_input.d)), _wgslsmith_mult_u32(47958u, 1135u));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> vec2<bool> {
    let var_0 = (u_input.b >> (vec3<u32>(firstLeadingBit(~4294967295u), 0u, u_input.e.x) % vec3<u32>(32u))) >> (func_2(_wgslsmith_mod_i32(u_input.c.x << (u_input.d % 32u), i32(-1i) * -arg_1)) % vec3<u32>(32u));
    global0 = array<Struct_1, 32>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-432f, 1000f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-633f, arg_0.a.x)) * arg_0.a)), global1.c.x, global1.c);
    let var_2 = select(max(vec3<i32>(~arg_1 & 1i, arg_1, (i32(-1i) * -29810i) << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 1u, u_input.e.x, u_input.e.x), vec4<u32>(var_0.x, var_0.x, 9329u, var_0.x)) % 32u)), ~_wgslsmith_div_vec3_i32(vec3<i32>(-32838i, u_input.c.x, -80205i) | vec3<i32>(arg_1, 2147483647i, u_input.c.x), countOneBits(vec3<i32>(arg_1, -2147483647i, 2147483647i)))), vec3<i32>(arg_1, ~u_input.c.x, (min(-3074i, -2147483647i) ^ arg_1) | -1i), arg_1 > -arg_1);
    var var_3 = Struct_1(var_1.a, arg_0.b, vec2<bool>(any(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, global1.c.x), vec3<bool>(false, global1.b, false)), !vec3<bool>(arg_0.b, true, arg_0.c.x), !vec3<bool>(false, global1.b, arg_0.c.x))), u_input.c.x <= -abs(6119i)));
    return var_1.c;
}

fn func_4(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, arg_0.a.x, -660f, global2[_wgslsmith_index_u32(u_input.e.x, 4u)]) + vec4<f32>(-538f, 882f, arg_0.a.x, global1.a.x)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.a, 4u)], arg_0.a.x, global2[_wgslsmith_index_u32(u_input.e.x, 4u)], global1.a.x)))))) * vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(arg_0.a.x + global1.a.x))), arg_0.a.x, 1031f, _wgslsmith_f_op_f32(trunc(arg_0.a.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(359f, global1.a.x, -403f, 1000f))))));
    var var_1 = !vec4<bool>(arg_0.b, select(!func_3(u_input.c).x, (arg_0.b || true) && (u_input.d < u_input.e.x), abs(u_input.a) == ~u_input.d), select(true, u_input.a != _wgslsmith_clamp_u32(u_input.b.x, u_input.d, u_input.e.x), any(select(vec4<bool>(true, global1.c.x, global1.b, arg_0.c.x), vec4<bool>(arg_0.c.x, true, global1.b, global1.c.x), global1.b))), func_1(Struct_1(arg_0.a, true, arg_0.c), 24735i | (-30364i ^ u_input.c.x)).x);
    let var_2 = var_1.wyx;
    var var_3 = select(select(vec3<bool>(var_2.x, global1.b, !any(vec4<bool>(var_1.x, var_1.x, arg_0.c.x, true))), select(!(!vec3<bool>(arg_0.b, arg_0.c.x, arg_0.b)), vec3<bool>(true, var_0.x >= var_0.x, all(vec2<bool>(true, false))), select(!vec3<bool>(false, var_1.x, global1.c.x), !var_1.yzx, !var_1.zyw)), !(u_input.c.x > ~(-27688i))), var_1.yxy, vec3<bool>(true, arg_0.b, _wgslsmith_mult_u32(abs(18506u), 1163u) <= countOneBits(4294967295u | u_input.d)));
    global0 = array<Struct_1, 32>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -300f), _wgslsmith_div_f32(arg_0.a.x, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 8730u, 10168u, u_input.e.x), vec4<u32>(7088u, 35424u, 43754u, u_input.d)) | ~u_input.d, u_input.a), 4u)]));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = vec2<bool>(max(-(~41111i), select(reverseBits(arg_1.x), -16204i, true)) >= arg_1.x, false && any(!(!vec4<bool>(true, global1.c.x, false, false))));
    let var_1 = !any(func_1(global0[_wgslsmith_index_u32(~u_input.b.x & _wgslsmith_clamp_u32(4294967295u, 53505u, u_input.e.x), 32u)], _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, arg_1.x), _wgslsmith_add_vec3_i32(vec3<i32>(48606i, u_input.c.x, u_input.c.x), vec3<i32>(-1i, arg_1.x, 0i)))));
    var var_2 = _wgslsmith_mod_u32(~1u, 1u << (u_input.e.x % 32u));
    let var_3 = true;
    let var_4 = ~u_input.b.yz;
    return Struct_1(global1.a, true, select(global1.c, vec2<bool>(var_0.x, true), global1.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -863f;
    var var_1 = func_5(vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1009f - var_0) - _wgslsmith_div_f32(global2[_wgslsmith_index_u32(5497u, 4u)], global1.a.x))), _wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.a.x, global2[_wgslsmith_index_u32(0u, 4u)]))), !global1.b, func_1(Struct_1(vec2<f32>(-961f, -494f), global1.b, vec2<bool>(global1.c.x, global1.c.x)), 2147483647i)))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.e.x, 4u)])), select(-_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, 18906i), vec2<i32>(0i, 1i)), ~vec2<i32>(_wgslsmith_mult_i32(u_input.c.x, -2213i), u_input.c.x & 1i), vec2<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), u_input.c) >= (i32(-1i) * -2147483647i), !(false && global1.c.x))));
    global2 = array<f32, 4>();
    global1 = global0[_wgslsmith_index_u32(u_input.b.x, 32u)];
    global0 = array<Struct_1, 32>();
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, global1.a.x, global2[_wgslsmith_index_u32(u_input.d, 4u)], 939f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(458f, -2230f, -242f, global1.a.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a.x, -292f, 706f, 371f), vec4<f32>(var_0, -434f, 1082f, global1.a.x), false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, global2[_wgslsmith_index_u32(22598u, 4u)], var_0, -1000f) * vec4<f32>(var_0, var_1.a.x, var_0, -229f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1418f, 611f, 275f, global2[_wgslsmith_index_u32(0u, 4u)]))))));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1341f) <= _wgslsmith_f_op_f32(-var_1.a.x);
    let var_4 = var_1.b;
    global0 = array<Struct_1, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(~func_2(u_input.c.x).xz | vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.e.x, 30309u), vec2<u32>(1u, u_input.d)), ~u_input.b.zz), ~_wgslsmith_dot_vec2_u32(u_input.e, u_input.b.xz)), vec3<i32>(-1i, u_input.c.x, -2147483647i) << ((u_input.b << (~u_input.b % vec3<u32>(32u))) % vec3<u32>(32u)));
}

