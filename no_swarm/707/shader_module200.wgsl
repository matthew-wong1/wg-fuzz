struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<i32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(1000f), Struct_4(292f), Struct_4(-1280f), Struct_4(-304f), Struct_4(-257f), Struct_4(1000f), Struct_4(1073f), Struct_4(662f), Struct_4(726f), Struct_4(-397f), Struct_4(1440f), Struct_4(-1989f), Struct_4(635f), Struct_4(-736f), Struct_4(531f), Struct_4(966f), Struct_4(-947f));

var<private> global2: array<Struct_1, 22>;

var<private> global3: u32 = 78324u;

var<private> global4: Struct_3 = Struct_3(Struct_1(-21023i, false, vec3<i32>(-45894i, 30413i, 24622i), false, false), 15815i, vec2<f32>(457f, 563f), Struct_1(-51068i, true, vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), true, false), vec3<f32>(-1583f, -116f, 331f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_4) -> f32 {
    var var_0 = abs(~firstLeadingBit(_wgslsmith_mod_vec4_i32(-arg_2, min(vec4<i32>(arg_1.c.x, arg_1.a, 1i, 2147483647i), vec4<i32>(-2147483647i, 0i, global4.a.a, -93039i)))));
    let var_1 = Struct_4(arg_3.a);
    var var_2 = _wgslsmith_mod_u32(firstTrailingBit(1u), u_input.b.x);
    global4 = Struct_3(global4.a, 37632i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global4.e.zz), vec2<f32>(1739f, global4.c.x)) + global4.e.zy) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global4.e.yz, global4.c))) - global4.c)), arg_1, vec3<f32>(var_1.a, 1026f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(arg_3.a * 503f)))));
    var var_3 = Struct_5(true, -60414i);
    return -118f;
}

fn func_2(arg_0: vec4<bool>) -> Struct_2 {
    global4 = Struct_3(global4.a, _wgslsmith_add_i32(27909i, 37338i), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0.x | arg_0.x, Struct_1(-35095i, arg_0.x, vec3<i32>(global4.b, global4.b, 5668i), false, true), -vec4<i32>(0i, u_input.d, -28878i, -438i), Struct_4(global4.c.x)))), -902f), global4.a, vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.e.x, -2268f)), 155f, true)), global4.c.x, global4.c.x));
    let var_0 = global2[_wgslsmith_index_u32(firstTrailingBit(max(~(~(0u << (u_input.e % 32u))), _wgslsmith_mult_u32(u_input.e, 4294967295u ^ ~u_input.b.x))), 22u)];
    var var_1 = global4.e.zx;
    var var_2 = global4.e;
    let var_3 = global1[_wgslsmith_index_u32(~countOneBits(48559u), 17u)];
    return Struct_2(3260i, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_2.x, -1203f)))), select(false, any(!vec2<bool>(var_0.e, false)), true));
}

fn func_4(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = func_2(select(!(!(!vec4<bool>(global4.d.d, true, global4.a.e, global4.a.d))), select(vec4<bool>(all(vec2<bool>(arg_0.c, global4.a.d)), !global4.d.b, true, false), vec4<bool>(false, !arg_0.c, arg_0.c, true), select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, false, global4.a.d), vec4<bool>(arg_0.c, false, false, false), true), true & arg_0.c)), any(!vec4<bool>(global4.a.d, arg_0.c, false, global4.a.e)) && !(false || arg_0.c)));
    let var_1 = arg_0;
    let var_2 = Struct_4(_wgslsmith_f_op_f32(1825f + var_1.b));
    global4 = Struct_3(global4.a, func_2(vec4<bool>(select(any(vec3<bool>(arg_0.c, true, var_1.c)), !arg_0.c, any(vec2<bool>(false, false))), true, _wgslsmith_dot_vec4_i32(vec4<i32>(-43408i, -40574i, var_1.a, var_0.a), vec4<i32>(u_input.c.x, -738i, var_1.a, -41738i)) <= ~u_input.d, !all(vec3<bool>(false, true, false)))).a, vec2<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.e.x) - -726f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(121f)), 1f)))), Struct_1(reverseBits(31570i << (1u % 32u)), global4.c.x == _wgslsmith_f_op_f32(-1f), u_input.c, all(select(select(vec3<bool>(true, global4.a.e, false), vec3<bool>(true, global4.a.e, var_0.c), true), !vec3<bool>(arg_0.c, arg_0.c, false), !vec3<bool>(var_1.c, false, false))), false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4.e) * vec3<f32>(-1439f, var_1.b, var_2.a)))));
    global4 = Struct_3(Struct_1(min(arg_0.a, 1i ^ _wgslsmith_mod_i32(global4.a.a, var_0.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b))) != _wgslsmith_f_op_f32(_wgslsmith_div_f32(141f, global4.e.x) - _wgslsmith_f_op_f32(global4.c.x - -849f)), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_1.a, -2147483647i, 2147483647i), vec3<i32>(2147483647i, -11943i, global4.a.c.x)), _wgslsmith_clamp_vec3_i32(u_input.c >> (vec3<u32>(4294967295u, u_input.b.x, u_input.e) % vec3<u32>(32u)), vec3<i32>(var_0.a, var_1.a, -2147483647i), global4.d.c), select(vec3<i32>(2147483647i, u_input.d, u_input.a.x), u_input.c >> (vec3<u32>(4294967295u, 93276u, 1u) % vec3<u32>(32u)), false)), var_0.c, !arg_0.c), abs(_wgslsmith_mod_i32(u_input.d, 2147483647i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global4.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global4.e.xz, global4.e.xx, global4.d.b)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.b, 265f), global4.c)))) + global4.c), global2[_wgslsmith_index_u32(u_input.e, 22u)], global4.e);
    return !(!select(vec2<bool>(!global4.a.b, func_2(vec4<bool>(false, false, true, var_1.c)).c), vec2<bool>(true, true), var_0.c));
}

fn func_1(arg_0: vec3<i32>) -> bool {
    let var_0 = ((~4294967295u ^ ~firstTrailingBit(4294967295u)) >> (_wgslsmith_div_u32(u_input.b.x, 49863u) % 32u)) & u_input.e;
    global3 = 1u;
    let var_1 = !func_4(func_2(vec4<bool>(true, all(vec2<bool>(false, global4.a.e)), select(global4.a.b, global4.a.b, true), global4.d.b & true)));
    let var_2 = Struct_5(var_1.x && var_1.x, firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_mod_i32(52410i, 15148i), ~(-1i))));
    let var_3 = arg_0.x & -30265i;
    return !func_4(func_2(select(vec4<bool>(var_1.x, var_2.a, true, false), select(vec4<bool>(var_1.x, global4.a.b, false, global4.a.b), vec4<bool>(var_2.a, var_2.a, var_1.x, false), true), var_1.x))).x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_1(-(i32(-1i) * -28469i), func_1(abs(~global4.d.c)), -_wgslsmith_clamp_vec3_i32(~vec3<i32>(global4.d.a, 1i, -3921i), vec3<i32>(0i, global4.a.a, 19045i) << (vec3<u32>(u_input.e, 4294967295u, 62484u) % vec3<u32>(32u)), vec3<i32>(u_input.d, global4.d.a, global4.a.c.x) >> (vec3<u32>(u_input.e, 35159u, u_input.b.x) % vec3<u32>(32u))), !global4.d.b, !(global4.a.a < (-23798i << (u_input.e % 32u)))), _wgslsmith_mod_i32(i32(-1i) * -33675i, firstTrailingBit(1i)) & -abs(global4.b ^ u_input.d), vec2<f32>(1f, -453f), global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_clamp_u32(countOneBits(u_input.b.x), 0u, _wgslsmith_dot_vec2_u32(select(u_input.b, vec2<u32>(74864u, 2117u), vec2<bool>(false, global4.d.e)), u_input.b))), 22u)], _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global4.e * global4.e) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1033f, 166f, -884f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(global4.e, global4.e, vec3<bool>(false, global4.a.d, true))), global4.e, global4.d.b)), select(!vec3<bool>(true, false, global4.a.b), !vec3<bool>(global4.d.e, global4.a.e, false), !vec3<bool>(false, global4.d.e, global4.d.b)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.c.x, -1002f, 134f)))))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x - _wgslsmith_f_op_f32(f32(-1f) * -117f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(593f * var_0.e.x) + _wgslsmith_f_op_f32(f32(-1f) * -636f))), global4.e.x, _wgslsmith_f_op_f32(f32(-1f) * -854f)));
    var var_2 = global4.d;
    let var_3 = -27575i;
    var var_4 = u_input.a.x;
    global3 = _wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.e, _wgslsmith_sub_u32(u_input.b.x, 88397u ^ u_input.b.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(11523u, ~4294967295u, u_input.e, max(u_input.e, u_input.e)), ~firstLeadingBit(vec4<u32>(14086u, 52010u, u_input.b.x, u_input.b.x))), max(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x) & _wgslsmith_mult_u32(u_input.e, 1u), u_input.e | (15473u << (u_input.b.x % 32u)))), 32236u);
    global1 = array<Struct_4, 17>();
    let var_5 = vec2<bool>(true, !var_0.d.b);
    global2 = array<Struct_1, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(-1081f, vec4<u32>(4294967295u, u_input.e, _wgslsmith_mult_u32(~(~u_input.e), max(~79951u, _wgslsmith_mult_u32(39432u, u_input.b.x))), ~u_input.b.x), vec3<i32>(_wgslsmith_add_i32(abs(-var_0.a.c.x), u_input.a.x), var_0.b, _wgslsmith_mod_i32(max(-2790i, -1i) << (reverseBits(u_input.e) % 32u), var_0.b)), _wgslsmith_f_op_vec3_f32(global4.e - global4.e), ~(~abs(reverseBits(vec3<u32>(u_input.e, u_input.e, 8616u)))));
}

