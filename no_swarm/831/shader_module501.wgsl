struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec2<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 6> = array<vec2<u32>, 6>(vec2<u32>(16438u, 1u), vec2<u32>(0u, 29074u), vec2<u32>(11388u, 1u), vec2<u32>(47941u, 0u), vec2<u32>(53566u, 4294967295u), vec2<u32>(1u, 4294967295u));

var<private> global1: vec3<u32>;

var<private> global2: Struct_3;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec3<u32> {
    global0 = array<vec2<u32>, 6>();
    let var_0 = ~(-abs(u_input.e.yy));
    var var_1 = Struct_3(global2.a, global2.b, 1u, 17536i);
    global2 = Struct_3(vec3<bool>(var_1.b.b, global2.b.b, !global2.b.b), Struct_2(var_1.b.a, var_1.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-301f, var_1.b.a.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.c))))), 12125u, 26152i);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1104f)))), global2.b.a.d.x);
    return var_1.b.a.e;
}

fn func_2(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: Struct_3) -> Struct_2 {
    var var_0 = Struct_3(arg_0.a, Struct_2(Struct_1(_wgslsmith_mod_vec3_u32(firstLeadingBit(arg_3.b.a.a), func_3()), arg_0.b.a.b, firstLeadingBit(-vec3<i32>(48106i, arg_2.d, 35155i)), _wgslsmith_f_op_vec2_f32(select(arg_3.b.a.b.zy, _wgslsmith_f_op_vec2_f32(-arg_3.b.a.b.xw), vec2<bool>(arg_0.a.x, arg_3.a.x))), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 11807u, 0u), firstLeadingBit(vec3<u32>(arg_3.c, 75466u, 75426u)))), any(vec4<bool>(false, true, false, any(arg_0.a))), 358f), 0u, 0i);
    let var_1 = u_input.c;
    let var_2 = Struct_1(vec3<u32>(_wgslsmith_dot_vec3_u32(var_1.wwz, _wgslsmith_add_vec3_u32(vec3<u32>(1u, 65750u, arg_2.b.a.a.x), firstTrailingBit(vec3<u32>(89238u, 0u, 4294967295u)))), ~(select(60614u, 0u, false) | _wgslsmith_mult_u32(global1.x, arg_3.c)), 0u), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_1.x)), _wgslsmith_f_op_f32(-arg_3.b.a.d.x), 556f, _wgslsmith_f_op_f32(1354f * 301f)) + _wgslsmith_f_op_vec4_f32(-arg_2.b.a.b)))), u_input.e, vec2<f32>(_wgslsmith_f_op_f32(max(arg_3.b.a.d.x, -118f)), 213f), u_input.c.xzx);
    var var_3 = Struct_1(~u_input.c.wxy, arg_0.b.a.b, _wgslsmith_div_vec3_i32(~min(vec3<i32>(-2147483647i, var_2.c.x, -29087i), vec3<i32>(27212i, 10484i, global2.b.a.c.x)), max(arg_2.b.a.c, _wgslsmith_div_vec3_i32(vec3<i32>(var_0.d, global2.d, arg_3.d), vec3<i32>(var_0.d, 2147483647i, -2147483647i)))) | arg_2.b.a.c, arg_1, arg_3.b.a.e);
    var var_4 = Struct_3(!select(vec3<bool>(var_3.c.x < -2147483647i, true, true), global2.a, vec3<bool>(var_0.b.b, global2.a.x, var_0.b.b)), Struct_2(Struct_1(vec3<u32>(1u, min(4294967295u, 4294967295u), 66642u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(var_0.b.a.b, var_0.b.a.b)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.b.x, 659f, arg_2.b.a.d.x, global2.b.a.d.x), var_3.b, vec4<bool>(arg_2.a.x, arg_2.b.b, false, true)))), vec3<i32>(-3625i, arg_0.d, global2.b.a.c.x) ^ firstLeadingBit(arg_2.b.a.c), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2.b.c, arg_1.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.c, 1000f))), var_3.a), select(global2.a.x, true, true), var_3.d.x), max(arg_2.b.a.e.x, ~var_2.a.x), 0i);
    return Struct_2(var_2, var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.b.a.b.x))));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3) -> vec4<f32> {
    global0 = array<vec2<u32>, 6>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-735f, _wgslsmith_f_op_f32(sign(-1287f))));
    var var_1 = arg_1.a;
    let var_2 = func_2(Struct_3(select(vec3<bool>(268f != var_1.d.x, any(arg_2.a.yx), any(vec2<bool>(arg_1.b, false))), !arg_2.a, global2.a), arg_1, var_1.e.x, 1i), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(arg_2.b.a.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(321f, -767f)), arg_1.b)))), Struct_3(select(vec3<bool>(true, any(vec4<bool>(true, global2.b.b, false, arg_1.b)), any(vec2<bool>(arg_1.b, global2.a.x))), select(vec3<bool>(global2.a.x, false, false), select(global2.a, vec3<bool>(false, false, false), arg_1.b), select(vec3<bool>(global2.a.x, true, true), vec3<bool>(arg_1.b, true, false), vec3<bool>(false, arg_2.a.x, arg_2.b.b))), vec3<bool>(true, true, !arg_2.a.x)), Struct_2(arg_2.b.a, true, _wgslsmith_f_op_f32(trunc(-1000f))), 98907u, arg_2.d), arg_2).a;
    let var_3 = global2.b.a.c;
    return var_2.b;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>) -> i32 {
    global0 = array<vec2<u32>, 6>();
    var var_0 = Struct_2(Struct_1(u_input.c.yww ^ vec3<u32>(abs(global1.x), 1u, 1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.b.a.b * arg_0.a.b) * _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(min(1128f, arg_1.x)), func_2(Struct_3(global2.a, Struct_2(global2.b.a, true, 1345f), 15292u, -1i), arg_1, Struct_3(vec3<bool>(arg_0.b, global2.a.x, true), Struct_2(global2.b.a, false, -112f), global2.b.a.e.x, arg_0.a.c.x), Struct_3(global2.a, Struct_2(arg_0.a, global2.b.b, -461f), global1.x, 28017i)), Struct_3(vec3<bool>(false, true, global2.a.x), Struct_2(Struct_1(vec3<u32>(0u, 77722u, 4294967295u), arg_0.a.b, global2.b.a.c, vec2<f32>(arg_0.a.d.x, global2.b.c), vec3<u32>(arg_0.a.e.x, u_input.a, 0u)), false, 1096f), arg_0.a.e.x, global2.b.a.c.x)))), vec3<i32>(global2.d, 2147483647i, ~global2.b.a.c.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b.a.b.x, global2.b.a.d.x) + _wgslsmith_f_op_vec2_f32(vec2<f32>(892f, 1174f) * arg_0.a.b.wx)) * vec2<f32>(_wgslsmith_div_f32(-227f, arg_1.x), _wgslsmith_f_op_f32(abs(arg_1.x)))), ~(~arg_0.a.e)), true, -740f);
    var var_1 = Struct_1(vec3<u32>(global2.c, u_input.b, 4294967295u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_0.a.b), arg_0.a.b))), _wgslsmith_sub_vec3_i32(~(vec3<i32>(-1i) * -vec3<i32>(arg_0.a.c.x, var_0.a.c.x, -37822i)), vec3<i32>(1i, var_0.a.c.x, 2147483647i)), _wgslsmith_f_op_vec2_f32(exp2(arg_0.a.b.ww)), var_0.a.a);
    return -8887i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<i32>((min(global2.b.a.c.x, 0i) ^ reverseBits(-1i)) ^ 0i, _wgslsmith_dot_vec4_i32(select(~vec4<i32>(45764i, global2.b.a.c.x, 8858i, global2.d), vec4<i32>(-37698i, global2.d, global2.b.a.c.x, u_input.e.x), global2.b.b), vec4<i32>(u_input.e.x, ~global2.d, countOneBits(-1i), func_1(global2.b, vec2<f32>(global2.b.c, global2.b.a.b.x)))), -min(-2147483647i, -global2.d)), vec3<i32>(-1i) * -func_2(Struct_3(vec3<bool>(false, global2.a.x, global2.a.x), Struct_2(Struct_1(global2.b.a.e, vec4<f32>(global2.b.a.b.x, global2.b.c, global2.b.a.d.x, 1362f), vec3<i32>(global2.d, u_input.e.x, -10826i), vec2<f32>(global2.b.c, global2.b.a.d.x), global2.b.a.a), false, global2.b.c), 24232u, 30186i), _wgslsmith_f_op_vec2_f32(step(global2.b.a.d, global2.b.a.b.wz)), Struct_3(vec3<bool>(global2.b.b, false, true), global2.b, 0u, 18337i), Struct_3(global2.a, global2.b, global1.x, -1i)).a.c, all(select(vec4<bool>(global2.a.x, global2.b.b, true, global2.a.x), !vec4<bool>(global2.b.b, false, true, global2.b.b), select(vec4<bool>(global2.a.x, global2.a.x, true, global2.b.b), vec4<bool>(global2.b.b, true, false, true), global2.b.b))) | true);
    let var_1 = ~(_wgslsmith_dot_vec4_i32(min(-vec4<i32>(var_0.x, global2.b.a.c.x, u_input.e.x, var_0.x), _wgslsmith_div_vec4_i32(vec4<i32>(global2.d, 26480i, 30532i, -24799i), vec4<i32>(u_input.d, 0i, 24377i, 2147483647i))), vec4<i32>(13571i, u_input.d, u_input.e.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, 1i, 1i), vec4<i32>(global2.d, global2.d, u_input.d, global2.d)))) >> (~(~_wgslsmith_sub_u32(2749u, global2.c)) % 32u));
    global1 = vec3<u32>(global1.x, _wgslsmith_add_u32(min(_wgslsmith_div_u32(~1u, min(26283u, 1522u)), global2.b.a.e.x), ~4294967295u | ((u_input.b & 60669u) & global2.c)), ~min(_wgslsmith_add_u32(select(19633u, 114654u, global2.b.b), func_2(Struct_3(global2.a, Struct_2(Struct_1(vec3<u32>(9674u, global2.c, u_input.a), global2.b.a.b, var_0, global2.b.a.d, vec3<u32>(36463u, u_input.c.x, global1.x)), global2.b.b, -930f), global1.x, 15144i), global2.b.a.d, Struct_3(vec3<bool>(global2.b.b, true, true), Struct_2(global2.b.a, true, global2.b.c), global2.c, -1i), Struct_3(global2.a, Struct_2(Struct_1(global2.b.a.a, vec4<f32>(global2.b.a.d.x, global2.b.a.b.x, global2.b.a.b.x, global2.b.c), vec3<i32>(var_1, var_1, -33805i), vec2<f32>(global2.b.c, 2127f), vec3<u32>(4294967295u, 1u, u_input.a)), true, -1508f), 73262u, var_1)).a.e.x), global2.b.a.e.x));
    var var_2 = Struct_3(global2.a, func_2(Struct_3(!global2.a, Struct_2(global2.b.a, global2.a.x | true, 1030f), _wgslsmith_mod_u32(u_input.b, abs(0u)), -abs(var_1)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1374f, -575f), 1414f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global2.b.c, global2.b.c), vec2<f32>(125f, 220f)))), Struct_3(select(vec3<bool>(false, global2.a.x, global2.a.x), select(vec3<bool>(true, false, global2.a.x), global2.a, vec3<bool>(global2.a.x, true, global2.a.x)), global2.b.b), global2.b, _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.b, 59334u, global2.b.a.a.x, 25951u)), abs(~(-49662i))), Struct_3(select(select(vec3<bool>(global2.a.x, true, global2.b.b), global2.a, global2.a), select(global2.a, vec3<bool>(true, true, true), global2.a.x), select(vec3<bool>(global2.a.x, global2.a.x, global2.a.x), vec3<bool>(true, true, global2.a.x), true)), global2.b, ~firstTrailingBit(global1.x), _wgslsmith_sub_i32(16750i, 23574i << (global2.b.a.e.x % 32u)))), max(4294967295u, 0u), 45014i);
    var var_3 = Struct_3(vec3<bool>(true, global2.b.b, true), Struct_2(global2.b.a, var_2.a.x, _wgslsmith_f_op_f32(1685f * 828f)), global2.b.a.a.x, -11393i);
    let var_4 = func_2(Struct_3(vec3<bool>(!any(var_2.a.zz), any(var_3.a), true), Struct_2(var_3.b.a, !var_3.a.x, 456f), abs(_wgslsmith_dot_vec3_u32(global2.b.a.a, var_3.b.a.e) << (~1u % 32u)), -1i), global2.b.a.d, Struct_3(vec3<bool>(true, 17673i < _wgslsmith_div_i32(u_input.d, 46163i), 1u < _wgslsmith_dot_vec2_u32(var_3.b.a.e.yz, global2.b.a.a.zy)), Struct_2(Struct_1(u_input.c.zww >> (vec3<u32>(28077u, var_2.c, 4294967295u) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.c, 1393f, var_3.b.c, 1000f)), -vec3<i32>(26869i, -64618i, 3206i), _wgslsmith_f_op_vec2_f32(global2.b.a.d - vec2<f32>(1000f, -1035f)), select(var_2.b.a.e, vec3<u32>(84424u, global1.x, u_input.a), vec3<bool>(true, global2.b.b, global2.a.x))), any(!vec2<bool>(global2.a.x, false)), global2.b.c), 12485u, ~(1i & (var_2.b.a.c.x >> (1u % 32u)))), Struct_3(global2.a, var_3.b, ~func_3().x, min(i32(-1i) * -33840i, var_0.x)));
    global0 = array<vec2<u32>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.c.x >> ((~_wgslsmith_sub_u32(var_2.b.a.a.x, 2734u) & ~(~var_2.c)) % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b.a.b.x, var_4.a.b.x)), _wgslsmith_f_op_vec2_f32(ceil(var_3.b.a.b.yz))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.b.a.d) * _wgslsmith_f_op_vec2_f32(-var_4.a.d)))), vec4<i32>(func_2(Struct_3(vec3<bool>(var_4.b, var_4.b, false), func_2(Struct_3(vec3<bool>(var_3.b.b, var_4.b, var_3.a.x), var_2.b, 44950u, 8137i), vec2<f32>(var_4.c, -129f), Struct_3(vec3<bool>(false, true, global2.b.b), Struct_2(Struct_1(var_3.b.a.e, var_2.b.a.b, vec3<i32>(var_1, 1i, var_4.a.c.x), vec2<f32>(var_2.b.a.d.x, -1000f), global2.b.a.a), var_3.a.x, -710f), 50761u, 19777i), Struct_3(vec3<bool>(var_2.b.b, true, false), global2.b, 0u, var_0.x)), 0u, var_1), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_4.c, 188f))), vec2<f32>(var_2.b.c, -811f))), Struct_3(var_3.a, Struct_2(global2.b.a, var_3.a.x, 530f), global2.c, 2147483647i), Struct_3(vec3<bool>(false, false, var_4.b), func_2(Struct_3(vec3<bool>(var_2.b.b, global2.a.x, false), Struct_2(var_4.a, true, global2.b.a.d.x), var_3.c, var_0.x), global2.b.a.d, Struct_3(global2.a, Struct_2(var_3.b.a, true, -2121f), 4294967295u, var_1), Struct_3(vec3<bool>(var_4.b, false, var_3.a.x), Struct_2(var_2.b.a, var_3.a.x, var_3.b.c), u_input.b, var_4.a.c.x)), u_input.a, 2703i)).a.c.x, -20740i ^ (_wgslsmith_dot_vec2_i32(var_2.b.a.c.yx, vec2<i32>(var_2.b.a.c.x, 0i)) >> (_wgslsmith_add_u32(22370u, 7270u) % 32u)), firstTrailingBit(firstLeadingBit(abs(-2147483647i))), 0i), ~(~reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 41680u, global2.c, var_3.b.a.e.x), u_input.c))), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(global2.b.a.c, abs(max(var_0, var_4.a.c))), var_4.a.c.x));
}

