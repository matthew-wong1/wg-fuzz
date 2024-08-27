struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_4, 2> = array<Struct_4, 2>(Struct_4(1u, vec3<u32>(1u, 0u, 1u), 9554i), Struct_4(4294967295u, vec3<u32>(43332u, 0u, 4294967295u), 2147483647i));

var<private> global2: i32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: bool, arg_3: vec2<bool>) -> bool {
    global1 = array<Struct_4, 2>();
    global2 = (~(~global0.x) | (i32(-1i) * -u_input.a.x)) | u_input.a.x;
    var var_0 = 1680f;
    let var_1 = -57187i;
    let var_2 = reverseBits(vec2<u32>(arg_1.c.c, ~countOneBits(arg_1.d.b.c))) & ~(vec2<u32>(max(arg_1.c.c, arg_1.d.a.c), 17004u) | min(_wgslsmith_mod_vec2_u32(vec2<u32>(27848u, arg_1.c.c), vec2<u32>(63036u, arg_1.d.a.c)), reverseBits(vec2<u32>(4294967295u, arg_1.d.a.c))));
    return all(select(!(!arg_3), !(!(!vec2<bool>(arg_2, true))), arg_3));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<bool>) -> bool {
    var var_0 = arg_1.xzz;
    let var_1 = -66642i;
    global2 = var_1;
    let var_2 = Struct_2(Struct_1(var_0.x, true, ~arg_0.x ^ arg_0.x), Struct_1(func_3(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-751f, -1340f))))), Struct_3(vec3<f32>(-1475f, 1323f, -588f), _wgslsmith_f_op_f32(sign(567f)), Struct_1(var_0.x, arg_1.x, 83591u), Struct_2(Struct_1(true, false, arg_0.x), Struct_1(false, true, 4294967295u), var_1, 41994i)), false, vec2<bool>(any(vec3<bool>(true, arg_1.x, false)), arg_1.x)), any(arg_1.ww), abs(_wgslsmith_mult_u32(arg_0.x >> (arg_0.x % 32u), arg_0.x))), -2147483647i >> (((abs(arg_0.x) & abs(arg_0.x)) ^ arg_0.x) % 32u), 13731i);
    let var_3 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(max(~(~0u), 1u), var_2.b.c), countOneBits(~var_2.a.c));
    return true;
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: i32) -> Struct_1 {
    let var_0 = arg_2;
    global1 = array<Struct_4, 2>();
    let var_1 = arg_1;
    var var_2 = !((false || !(!var_1)) || (abs(select(82523u, 5040u, false)) < reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(57511u, 54105u), vec2<u32>(28217u, 90771u)))));
    let var_3 = vec4<bool>(true, ~_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-49300i, global0.x), vec2<i32>(-9518i, global0.x)), ~vec2<i32>(-1i, global0.x)) < ~(~20412i), !any(!(!vec4<bool>(true, var_1, false, var_1))), any(!select(vec4<bool>(var_1, false, arg_1, arg_1), !vec4<bool>(var_1, true, var_1, false), func_3(vec2<f32>(-1703f, -904f), Struct_3(vec3<f32>(arg_0.x, arg_0.x, 530f), -1000f, Struct_1(var_1, var_1, 1u), Struct_2(Struct_1(true, true, 6094u), Struct_1(true, arg_1, 57343u), 0i, 1i)), arg_1, vec2<bool>(true, var_1)))));
    return Struct_1(false, !var_3.x, 54497u);
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<i32>) -> f32 {
    var var_0 = !vec4<bool>(true, arg_1.b, arg_1.b, any(vec2<bool>(true & arg_1.b, func_3(arg_0.xy, Struct_3(vec3<f32>(-594f, 520f, -1243f), -258f, arg_1, Struct_2(arg_1, Struct_1(arg_1.a, false, 4874u), 0i, 0i)), arg_1.b, vec2<bool>(arg_1.a, arg_1.b)))));
    var var_1 = global0.x;
    var var_2 = ~vec2<u32>(~4294967295u, 21493u);
    var var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(arg_2.x, ~(-1i)), _wgslsmith_mult_i32(i32(-1i) * -40828i, 0i), _wgslsmith_mult_i32(_wgslsmith_div_i32(arg_2.x, 2147483647i), _wgslsmith_div_i32(2147483647i, 15664i)), 2147483647i), reverseBits(-vec4<i32>(-15828i, u_input.a.x, -1i, 30261i))) >= global0.x;
    var var_4 = !(!func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2193f, arg_0.x)), Struct_3(vec3<f32>(arg_0.x, arg_0.x, arg_0.x), 1499f, Struct_1(var_0.x, arg_1.a, arg_1.c), Struct_2(Struct_1(false, false, arg_1.c), arg_1, -2326i, u_input.a.x)), true | arg_1.a, vec2<bool>(false, arg_1.b)) & true);
    return _wgslsmith_f_op_f32(trunc(2392f));
}

fn func_1() -> u32 {
    let var_0 = vec4<i32>(_wgslsmith_mod_i32(35183i, -2165i), -33221i, abs(global0.x), u_input.a.x);
    var var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1213f, -649f, 891f, 448f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(357f, 504f, 1565f, 1000f))), func_4(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(102f, -1000f))), func_2(vec2<u32>(4294967295u, 11624u), vec4<bool>(true, false, true, false)), ~2572i), ~vec4<i32>(u_input.a.x, global0.x, -27586i, -21490i))), -1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1443f, -1031f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(vec4<f32>(1f, 1f, 1f, 1f), func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1759f, 842f) + vec2<f32>(-131f, 3035f)), true, _wgslsmith_dot_vec2_i32(u_input.a.wz, u_input.a.xy)), ~vec4<i32>(-1i, u_input.b.x, u_input.b.x, global0.x))), -1709f), func_4(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-1000f, 492f, false)), 367f, var_0.x < -2147483647i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1998f))))), !func_4(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-244f, -1891f))), true, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(var_0.x, var_0.x, var_0.x, global0.x))).b, select(global0.x, u_input.a.x, true)), Struct_2(func_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 451f), vec2<f32>(346f, -1538f), vec2<bool>(true, true))), all(vec2<bool>(true, true)), var_0.x), Struct_1(true, true, 58950u), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, global0.x, u_input.b.x, var_0.x), ~vec4<i32>(u_input.b.x, -1i, var_0.x, global0.x)), -1i), -5548i));
    global2 = -var_1.d.d;
    var var_2 = global1[_wgslsmith_index_u32(30540u, 2u)];
    var_2 = Struct_4(~(~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(var_2.a, var_2.b.x), _wgslsmith_add_u32(var_1.c.c, var_2.b.x), ~var_2.a)), _wgslsmith_add_vec3_u32(firstTrailingBit(~firstLeadingBit(var_2.b)), _wgslsmith_sub_vec3_u32(countOneBits(var_2.b) | _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, var_1.c.c, var_1.c.c), vec3<u32>(1u, var_1.c.c, var_2.a), var_2.b), vec3<u32>(firstTrailingBit(var_1.d.a.c), _wgslsmith_mod_u32(76892u, 4294967295u), max(var_1.d.a.c, var_2.b.x)))), countOneBits(var_2.c));
    return var_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<u32>(1u, ~abs(12831u));
    var var_1 = Struct_1(all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), global0.x <= 1i), vec3<bool>(true, true, true))), true, countOneBits(~func_1() >> (~abs(1u) % 32u)));
    let var_2 = (var_1.c ^ select(min(var_1.c, var_1.c), ~(~var_0.x), !all(vec3<bool>(false, false, true)))) >= var_0.x;
    var_0 = vec2<u32>(~(~_wgslsmith_mod_u32(var_1.c, var_0.x)), abs(17944u)) ^ vec2<u32>(~1u << (var_1.c % 32u), _wgslsmith_div_u32(~(~37308u), 1u));
    let var_3 = abs(~var_0.x);
    var var_4 = Struct_3(vec3<f32>(1090f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_5(vec4<f32>(766f, -1199f, -601f, -594f), Struct_1(false, true, 0u), u_input.a)), _wgslsmith_f_op_f32(sign(-975f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-387f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1416f)) - -1218f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(614f)) - _wgslsmith_f_op_f32(f32(-1f) * -366f))), func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), vec2<f32>(_wgslsmith_f_op_f32(round(-793f)), _wgslsmith_f_op_f32(min(-297f, 529f)))), true, ~global0.x), Struct_2(Struct_1(var_1.a, func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(1260f, -802f) - vec2<f32>(231f, 405f)), Struct_3(vec3<f32>(1000f, -188f, 1696f), 544f, Struct_1(false, var_1.a, 4294967295u), Struct_2(Struct_1(var_1.a, var_2, var_0.x), Struct_1(var_1.a, var_1.a, 4294967295u), -2147483647i, -31022i)), var_2, !vec2<bool>(var_1.b, false)), var_3), Struct_1((9685i | global0.x) != -global0.x, false, 0u), u_input.b.x, global0.x));
    var_1 = func_4(var_4.a.yy, true, _wgslsmith_dot_vec3_i32(vec3<i32>(var_4.d.c, -5118i, u_input.b.x), vec3<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -76383i), vec2<i32>(59486i, u_input.a.x)), -1i, _wgslsmith_sub_i32(1i, ~global0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(42913u, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_4.a.x))) + var_4.a.x))));
}

