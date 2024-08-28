struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: i32,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: vec4<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 19>;

var<private> global1: Struct_3;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_3 {
    var var_0 = global1.e;
    global1 = Struct_3(all(select(global1.e.a, global1.e.a, vec3<bool>(any(vec3<bool>(global1.e.a.x, true, true)), false, u_input.b.x > -53216i))), vec4<f32>(global1.b.x, _wgslsmith_f_op_f32(abs(global1.b.x)), -2129f, -1135f), ~(~(~countOneBits(u_input.b.x))), countOneBits(i32(-1i) * -var_0.b), global1.e);
    let var_1 = global1.b;
    var var_2 = u_input.b.wxy;
    var var_3 = Struct_4(4294967295u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, var_1.x, var_1.x, global1.b.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, global1.b.x, global1.b.x, 1947f) - vec4<f32>(var_1.x, 785f, global1.b.x, global1.b.x)) - global1.b), vec4<f32>(-1000f, var_1.x, global1.b.x, 955f), u_input.a.x <= reverseBits(80376u)))), -1i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -120f) - -1924f), _wgslsmith_f_op_f32(-1584f + _wgslsmith_f_op_f32(trunc(global1.b.x))), global1.b.x)), -566f);
    return Struct_3(any(vec4<bool>(!(!var_0.a.x), false, global1.a, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.b))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.e, global1.b.x, 373f, var_3.d.x)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-731f, 1236f, var_1.x, 1186f) + var_3.b), vec4<f32>(global1.b.x, global1.b.x, var_1.x, var_1.x)))), max(28753i, 2147483647i), abs(-var_0.c), Struct_1(select(!(!var_0.a), global1.e.a, global1.e.a), 1i, 0i));
}

fn func_3(arg_0: Struct_3) -> Struct_3 {
    let var_0 = vec2<u32>(select(~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.a.x, u_input.a.x), u_input.a, u_input.a), ~u_input.a), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x) << (81856u % 32u), !arg_0.a), 115231u);
    var var_1 = ~min(~reverseBits(_wgslsmith_sub_u32(u_input.a.x, 57946u)), 36961u);
    var_1 = 89476u;
    var var_2 = func_2();
    let var_3 = _wgslsmith_f_op_f32(-var_2.b.x);
    return Struct_3(!all(!vec4<bool>(global1.e.a.x, false, arg_0.e.a.x, var_2.a)) & arg_0.e.a.x, _wgslsmith_f_op_vec4_f32(arg_0.b - var_2.b), 6335i, -32202i, var_2.e);
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_3) -> Struct_3 {
    let var_0 = arg_3.e;
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_3.b.x), 800f));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(func_3(func_3(func_3(arg_3))).b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - -1257f) * global1.b.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(133f)), _wgslsmith_f_op_f32(-var_1)))))));
    var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1404f + var_1)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_3.b.x + arg_3.b.x))))))));
    let var_3 = select(select(vec4<bool>(all(vec3<bool>(global1.e.a.x, global1.e.a.x, var_0.a.x)), true, true == arg_2, !all(vec3<bool>(false, var_0.a.x, global1.a))), vec4<bool>(false, all(vec3<bool>(false, arg_2, false)), false, arg_2), select(all(arg_3.e.a), global1.e.a.x, arg_3.a)), !(!vec4<bool>(any(vec2<bool>(arg_3.a, false)), var_0.a.x, false || global1.e.a.x, false)), !select(vec4<bool>(arg_3.b.x != global1.b.x, !global1.a, !var_0.a.x, var_0.a.x), vec4<bool>(false, var_0.a.x, false, false), any(func_3(Struct_3(true, vec4<f32>(-716f, 1476f, -999f, var_1), 0i, 36655i, arg_3.e)).e.a.zy)));
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: bool) -> Struct_3 {
    let var_0 = _wgslsmith_sub_i32(0i, u_input.b.x) | countOneBits(u_input.b.x);
    var var_1 = !((true && (true && arg_2)) || false);
    var var_2 = ~u_input.a;
    global1 = func_4(var_2.x, ~firstTrailingBit(u_input.b) << ((~(vec4<u32>(1u, 77735u, 9199u, u_input.a.x) >> (vec4<u32>(var_2.x, 265u, 4294967295u, 1u) % vec4<u32>(32u))) << (~(vec4<u32>(u_input.a.x, 4294967295u, var_2.x, var_2.x) ^ vec4<u32>(1u, var_2.x, var_2.x, var_2.x)) % vec4<u32>(32u))) % vec4<u32>(32u)), true || arg_1.e.a.x, arg_1);
    let var_3 = countOneBits(select(~reverseBits(max(u_input.a.xy, var_2.xz)), ~(vec2<u32>(var_2.x, u_input.a.x) & ~vec2<u32>(u_input.a.x, u_input.a.x)), vec2<bool>(arg_1.a, true)));
    return func_2();
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: bool) -> Struct_3 {
    global0 = array<vec2<bool>, 19>();
    let var_0 = _wgslsmith_clamp_vec2_u32(max(_wgslsmith_div_vec2_u32(u_input.a.zy, ~(~vec2<u32>(4294967295u, u_input.a.x))), (abs(u_input.a.xx) | select(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yy, true)) | abs(vec2<u32>(1u, u_input.a.x))), ~u_input.a.zy, _wgslsmith_clamp_vec2_u32(u_input.a.zx, u_input.a.yy, vec2<u32>(u_input.a.x, ~45568u)));
    global0 = array<vec2<bool>, 19>();
    global0 = array<vec2<bool>, 19>();
    global1 = Struct_3(global1.e.a.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(global1.b + vec4<f32>(arg_0, 1345f, arg_1, arg_0))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1189f, -1000f, -912f, global1.b.x))) - _wgslsmith_f_op_vec4_f32(-global1.b))))), ~_wgslsmith_add_i32(~(global1.e.c & 0i), abs(-global1.e.c)), u_input.b.x, global1.e);
    return func_5(global1.e, func_4(~1u, u_input.b, arg_2, func_3(func_2())), true);
}

fn func_6(arg_0: Struct_3, arg_1: bool) -> StorageBuffer {
    var var_0 = arg_0.e;
    let var_1 = -_wgslsmith_mod_i32(-3067i, abs(func_3(arg_0).d)) & -29632i;
    var var_2 = arg_0.e;
    var var_3 = var_0.c;
    let var_4 = Struct_4(_wgslsmith_clamp_u32(~u_input.a.x, ~u_input.a.x, ~_wgslsmith_dot_vec3_u32(u_input.a, u_input.a) >> (countOneBits(1u) % 32u)), global1.b, _wgslsmith_add_i32(var_2.c, firstTrailingBit(func_4(10607u, _wgslsmith_mod_vec4_i32(vec4<i32>(-13521i, global1.d, global1.d, u_input.b.x), u_input.b), !var_2.a.x, func_3(arg_0)).c)), vec4<f32>(arg_0.b.x, _wgslsmith_div_f32(-1369f, _wgslsmith_f_op_f32(sign(arg_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1214f)), _wgslsmith_f_op_f32(abs(global1.b.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(func_1(arg_0.b.x, arg_0.b.x, true).b.x)) + _wgslsmith_f_op_f32(-global1.b.x))), -447f);
    return StorageBuffer(var_2.b, var_4.a & ~min(reverseBits(16616u), _wgslsmith_add_u32(u_input.a.x, 1u)), firstTrailingBit(vec3<i32>(1i, -u_input.b.x, _wgslsmith_mult_i32(global1.d, arg_0.d))), _wgslsmith_sub_i32(~2147483647i, max(0i, i32(-1i) * -var_2.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -454f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global1.b.x, -969f)))) * -1658f), true), func_4(u_input.a.x, -(~vec4<i32>(-1i, u_input.b.x, global1.c, 1i)), select(all(func_4(u_input.a.x, u_input.b, global1.e.a.x, Struct_3(false, global1.b, 33469i, global1.e.c, global1.e)).e.a), true, global1.a | !global1.e.a.x), func_3(func_1(-317f, 1312f, global1.e.a.x))).e.a.x);
}

