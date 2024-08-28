struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<i32>(-26204i, i32(-2147483648), -1i), Struct_2(63951u, vec4<f32>(527f, -995f, 221f, -1306f), vec3<bool>(false, true, false), Struct_1(vec4<f32>(753f, 404f, 856f, 1818f), -838f, vec4<bool>(false, true, true, true), 483f)));

var<private> global1: vec4<f32> = vec4<f32>(346f, 166f, 735f, 618f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: u32) -> vec4<f32> {
    let var_0 = global0.b.d.a;
    global0 = Struct_4(-countOneBits(_wgslsmith_div_vec3_i32(global0.a, global0.a)) >> ((vec3<u32>(1u, ~u_input.a, 0u) | _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 4294967295u, 14140u), vec3<u32>(arg_1, u_input.c, u_input.c)), vec3<u32>(0u, 4294967295u, global0.b.a) | vec3<u32>(73781u, 66509u, 1u))) % vec3<u32>(32u)), global0.b);
    var var_1 = global0.b.d;
    global0 = Struct_4(vec3<i32>(~global0.a.x, -firstLeadingBit(1i), abs(global0.a.x & global0.a.x)), Struct_2(global0.b.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 744f, global0.b.d.d, global0.b.b.x))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_1.a + vec4<f32>(var_0.x, var_1.a.x, -121f, -1000f))))), global0.b.c, Struct_1(_wgslsmith_f_op_vec4_f32(-var_1.a), -333f, vec4<bool>(true, true, false, any(var_1.c.wzw)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))));
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, var_1.b, -283f, 662f) + vec4<f32>(1000f, var_1.b, -461f, -360f))) - vec4<f32>(_wgslsmith_f_op_f32(-1287f + var_1.a.x), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -731f), -1514f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1068f)))), !vec4<bool>(true, true, false, u_input.b < u_input.b), var_0.x), var_1.c.yz, global0.b.d);
    return vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-660f)) - global0.b.b.x) * _wgslsmith_f_op_f32(f32(-1f) * -1926f)), var_1.b, true)), -1108f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -546f), 604f)));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(max(global0.b.d.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.b.x - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.b.d.d), 965f, all(global0.b.d.c.zx)))))));
    global1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.x))), _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(global0.b.d.d, global0.b.d.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.x)) * _wgslsmith_f_op_f32(-global0.b.b.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(!global0.b.c.x, _wgslsmith_div_u32(global0.b.a, 4294967295u))) + _wgslsmith_f_op_vec4_f32(global0.b.b + _wgslsmith_div_vec4_f32(vec4<f32>(215f, global1.x, global0.b.b.x, global1.x), global0.b.b))), global0.b.d.a)));
    var_0 = _wgslsmith_f_op_f32(-571f - _wgslsmith_f_op_f32(-global0.b.d.d));
    let var_1 = global0.b.d.b;
    global0 = Struct_4(global0.a, global0.b);
    return global0.b;
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> f32 {
    var var_0 = func_2();
    global0 = Struct_4((vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(global0.a, global0.a)) & (-global0.a >> ((vec3<u32>(33323u, 34776u, 60303u) >> (vec3<u32>(u_input.a, 1u, global0.b.a) % vec3<u32>(32u))) % vec3<u32>(32u))), Struct_2(56522u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.b, -1910f, 337f, var_0.d.a.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1205f, arg_1.d.a.x, 1000f, arg_1.d.d) + arg_1.b)) * global0.b.b), arg_1.c, func_2().d));
    var var_1 = var_0.d.c.x || global0.b.d.c.x;
    let var_2 = arg_1.b.yyz;
    var var_3 = Struct_3(func_2().d, var_0.c.zz, arg_1.d);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_3.c.b + _wgslsmith_f_op_f32(abs(-287f))), _wgslsmith_div_f32(global0.b.b.x, var_2.x)));
}

fn func_1(arg_0: u32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(global1.yw));
    global0 = Struct_4(vec3<i32>(abs(_wgslsmith_mult_i32(27047i, abs(-5468i))), firstLeadingBit(u_input.b) ^ u_input.b, -25922i), global0.b);
    global1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.b.d.a - _wgslsmith_f_op_vec4_f32(trunc(global0.b.d.a)))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.b.d.d, _wgslsmith_f_op_f32(func_4(select(true, false, global0.b.d.c.x), func_2())), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1208f))), global0.b.d.a)), true));
    var var_1 = Struct_4(vec3<i32>(-select(u_input.b, -2147483647i, any(global0.b.d.c)), global0.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(4817i, u_input.b, 1i, -16455i) | vec4<i32>(2147483647i, 44906i, 54359i, u_input.b), vec4<i32>(u_input.b, 1i, u_input.b, u_input.b) & vec4<i32>(global0.a.x, 2147483647i, u_input.b, global0.a.x)) >> (27196u % 32u)), global0.b);
    var var_2 = !(!global0.b.d.c.yy);
    return Struct_3(func_2().d, vec2<bool>(true, global0.b.c.x), Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(func_4(var_2.x, var_1.b)), 186f, global0.b.d.d, var_0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global0.b.b, global0.b.b) - global0.b.b))), _wgslsmith_f_op_f32(-1038f + _wgslsmith_div_f32(global0.b.d.d, global1.x)), !select(select(vec4<bool>(global0.b.d.c.x, true, var_2.x, true), vec4<bool>(true, global0.b.c.x, false, var_2.x), global0.b.d.c), !vec4<bool>(true, true, global0.b.d.c.x, false), var_1.b.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(578f, 195f, var_1.b.c.x)) + _wgslsmith_f_op_vec4_f32(func_3(false, arg_0)).x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
}

fn func_5(arg_0: bool, arg_1: Struct_3) -> Struct_1 {
    global1 = vec4<f32>(-1000f, _wgslsmith_f_op_f32(-global0.b.b.x), global1.x, global1.x);
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-264f, -1000f, -2348f, arg_1.a.d)))))), _wgslsmith_f_op_f32(round(-304f)), func_1(u_input.a & max(_wgslsmith_div_u32(global0.b.a, u_input.c), 1u)).a.c, _wgslsmith_f_op_f32(trunc(-1469f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(vec2<u32>(~firstTrailingBit(2172u), ~global0.b.a));
    var var_1 = select(!select(!(!global0.b.d.c), global0.b.d.c, true), !global0.b.d.c, (i32(-1i) * -_wgslsmith_add_i32(u_input.b, global0.a.x)) >= global0.a.x);
    let var_2 = Struct_2(u_input.a, global0.b.b, vec3<bool>(true, true, all(vec3<bool>(global0.b.c.x, !global0.b.d.c.x, -6902i > global0.a.x))), func_5(any(select(vec2<bool>(false, true), select(var_1.ww, vec2<bool>(global0.b.d.c.x, true), var_1.xz), any(global0.b.d.c))), func_1(u_input.c)));
    var var_3 = 1032f;
    global0 = Struct_4(vec3<i32>(u_input.b, -3154i, _wgslsmith_dot_vec2_i32(~select(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(0i, u_input.b), vec2<bool>(var_1.x, false)), global0.a.zy)), func_2());
    var_1 = !(!vec4<bool>(any(func_1(global0.b.a).c.c), false, false, !(!var_1.x)));
    global0 = Struct_4(vec3<i32>(firstLeadingBit(u_input.b), abs(global0.a.x), abs(2147483647i)), Struct_2(_wgslsmith_sub_u32(var_2.a, ~_wgslsmith_mult_u32(0u, var_2.a)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) - _wgslsmith_f_op_f32(global0.b.d.a.x + 2264f)), func_2().b.x, _wgslsmith_f_op_f32(1250f * -300f), func_5(u_input.b > 2147483647i, Struct_3(Struct_1(vec4<f32>(807f, global1.x, -697f, 332f), -1886f, vec4<bool>(var_2.d.c.x, false, var_2.d.c.x, false), -1000f), global0.b.c.yz, Struct_1(vec4<f32>(global1.x, global0.b.b.x, 937f, -1676f), 930f, vec4<bool>(var_1.x, var_2.c.x, false, false), global0.b.b.x))).a.x), vec3<bool>(false, !(var_1.x && global0.b.d.c.x), !any(global0.b.d.c)), global0.b.d));
    var var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x))))), global0.b.d.b));
    var_1 = !select(global0.b.d.c, func_5(countOneBits(4168u) < _wgslsmith_dot_vec2_u32(var_0, vec2<u32>(u_input.c, 55123u)), func_1(u_input.c)).c, false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(global0.b.a, ~67077u), func_2().b, _wgslsmith_add_i32(1i, _wgslsmith_dot_vec2_i32(-(global0.a.yy | vec2<i32>(-1i, u_input.b)), reverseBits(global0.a.xz))), _wgslsmith_mult_u32(4294967295u, ~var_0.x) >> (~30763u % 32u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.d.b - var_2.b.x))), var_2.d.d, -1027f));
}

