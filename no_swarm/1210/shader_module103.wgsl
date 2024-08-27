struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 22>;

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(vec2<u32>(1u, 19731u), vec4<i32>(1i, 1i, -3667i, 0i), 26583u, vec3<f32>(520f, 296f, -1000f), false);

var<private> global4: array<vec2<i32>, 17> = array<vec2<i32>, 17>(vec2<i32>(-1i, -1i), vec2<i32>(-1i, 2147483647i), vec2<i32>(2147483647i, -7207i), vec2<i32>(22437i, i32(-2147483648)), vec2<i32>(2147483647i, -28957i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(24886i, -21651i), vec2<i32>(-1i, 0i), vec2<i32>(-29781i, 28273i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-5294i, -1i), vec2<i32>(-13507i, 0i), vec2<i32>(621i, 2147483647i), vec2<i32>(46198i, -29908i), vec2<i32>(0i, 2147483647i), vec2<i32>(-3049i, 1i), vec2<i32>(0i, -17393i));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1() -> f32 {
    global4 = array<vec2<i32>, 17>();
    var var_0 = global2.b;
    let var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(i32(-1i) * -var_0.x, 13454i ^ _wgslsmith_div_i32(-1i, u_input.a.x), _wgslsmith_mod_i32(global2.b.x << (u_input.c % 32u), 0i), global1.b.x), abs(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(global3.b, global3.b), ~global3.b))) << (~(~(~vec4<u32>(global2.c, global3.c, 89280u, 40252u)) >> (~(vec4<u32>(u_input.c, 0u, 35615u, 0u) ^ vec4<u32>(global3.c, 4294967295u, global2.a.x, global1.a.x)) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_2 = _wgslsmith_div_vec4_u32(abs(~vec4<u32>(24289u | global2.c, reverseBits(global3.c), ~global1.c, global3.c << (4294967295u % 32u))), (vec4<u32>(1u, ~global1.a.x, _wgslsmith_div_u32(16686u, global1.a.x), global1.a.x) & vec4<u32>(~7262u, u_input.c, ~0u, 45950u)) | vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, global3.a.x, u_input.c), vec3<u32>(56350u, 4294967295u, 4294967295u)) | global2.a.x, firstLeadingBit(~global2.a.x), abs(_wgslsmith_clamp_u32(79571u, 36890u, global3.a.x)), firstTrailingBit(select(0u, global2.a.x, global2.e))));
    var var_3 = Struct_1(vec2<u32>(_wgslsmith_clamp_u32(abs(22597u), ~var_2.x, ~1u) ^ _wgslsmith_mult_u32(u_input.b >> (4294967295u % 32u), ~global1.c), ~_wgslsmith_sub_u32(u_input.b, 8628u) ^ _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(var_2.xzx, vec3<u32>(4294967295u, 32242u, 0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global2.a.x), global1.a))), -_wgslsmith_div_vec4_i32(~(~var_1), _wgslsmith_sub_vec4_i32(global1.b, vec4<i32>(-2147483647i, -1i, 0i, global3.b.x))), u_input.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global3.d))) + vec3<f32>(global3.d.x, _wgslsmith_f_op_f32(-global1.d.x), 1788f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.d.x, global3.d.x, global2.d.x), global3.d)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(107f, -489f, 492f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global2.d, global2.d))))), global1.e);
    return -1565f;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> vec3<f32> {
    let var_0 = _wgslsmith_div_i32(1i, global1.b.x << (arg_1 % 32u));
    global4 = array<vec2<i32>, 17>();
    let var_1 = vec2<f32>(arg_2.d.x, -421f);
    let var_2 = global2.d.x;
    var var_3 = arg_2;
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(arg_2.d - var_3.d)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(~firstLeadingBit(~(~global1.a)), vec4<i32>(-min(_wgslsmith_add_i32(global3.b.x, 2147483647i), 1i), min(firstTrailingBit(39349i & u_input.a.x), ~abs(3529i)), -1i, ~arg_2.x), global3.a.x, _wgslsmith_f_op_vec3_f32(select(global3.d, global1.d, any(vec3<bool>(true, global3.e, any(vec4<bool>(true, false, true, global2.e)))))), arg_0.e);
    var var_1 = arg_3;
    var_1 = arg_3;
    var var_2 = ~vec3<u32>(4294967295u, 1u, abs(_wgslsmith_div_u32(6240u, ~global3.c)));
    var var_3 = Struct_1(~countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.a.x, arg_3.a.x), vec2<u32>(var_1.c, var_2.x))) ^ firstLeadingBit(max(vec2<u32>(1u, var_1.a.x), abs(arg_0.a))), var_1.b, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(39835u, var_2.x, var_2.x) >> (vec3<u32>(u_input.c, global2.a.x, global2.a.x) % vec3<u32>(32u)), ~vec3<u32>(var_0.c, global3.a.x, 4294967295u))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.x)) - -1299f), _wgslsmith_f_op_vec3_f32(func_2(global3.c, ~var_2.x >> (1u % 32u), arg_3, _wgslsmith_f_op_f32(round(1404f)))).x, arg_0.d.x), (abs(0i >> (global1.a.x % 32u)) << ((arg_0.a.x << (select(var_1.a.x, 0u, global2.e) % 32u)) % 32u)) > _wgslsmith_sub_i32(~(-1i), global2.b.x));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_3(Struct_1(~(~(global3.a >> (vec2<u32>(1u, 0u) % vec2<u32>(32u)))), abs(~vec4<i32>(-1i, 1871i, global2.b.x, -8810i)), u_input.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.d)) + vec3<f32>(809f, _wgslsmith_f_op_f32(sign(1135f)), _wgslsmith_f_op_f32(f32(-1f) * -148f))), global3.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), min(~select(vec4<i32>(global1.b.x, u_input.a.x, global3.b.x, 23582i), ~global1.b, false), global3.b), Struct_1(global1.a, -vec4<i32>(u_input.a.x, -2147483647i, -28683i, global3.b.x) >> ((vec4<u32>(36287u, u_input.b, global3.a.x, u_input.b) & countOneBits(vec4<u32>(44489u, 46638u, 28039u, global1.a.x))) % vec4<u32>(32u)), 68966u, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_2(55876u, 4294967295u, Struct_1(vec2<u32>(0u, 0u), global3.b, u_input.c, global2.d, global1.e), global1.d.x)))))), false));
    let var_0 = func_3(func_3(func_3(Struct_1(global2.a, firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, global2.b.x)), ~24628u, _wgslsmith_f_op_vec3_f32(-global1.d), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.d.x)), vec4<i32>(-1i, ~87040i, 2147483647i, -2147483647i << (0u % 32u)), func_3(Struct_1(global3.a, vec4<i32>(global1.b.x, global1.b.x, global1.b.x, 2147483647i), global3.a.x, global3.d, global2.e), -638f, vec4<i32>(46981i, 1i, 2147483647i, global3.b.x), Struct_1(vec2<u32>(u_input.c, global2.a.x), global2.b, global2.a.x, global2.d, false))), 1005f, global1.b, Struct_1(~_wgslsmith_mult_vec2_u32(vec2<u32>(global3.a.x, 41632u), vec2<u32>(35241u, global1.a.x)), select(max(vec4<i32>(2147483647i, global3.b.x, global1.b.x, global1.b.x), vec4<i32>(1i, global3.b.x, 1i, global1.b.x)), _wgslsmith_clamp_vec4_i32(global1.b, global1.b, global3.b), false), global1.c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global3.d)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.d.x, -1468f, -531f) * vec3<f32>(237f, global3.d.x, 383f))), _wgslsmith_f_op_f32(-global2.d.x) > global2.d.x)), 150f, _wgslsmith_mult_vec4_i32(vec4<i32>(24096i, abs(global1.b.x), ~(-2147483647i) & -global1.b.x, global1.b.x), _wgslsmith_add_vec4_i32(~(~vec4<i32>(0i, global1.b.x, -25650i, -402i)), vec4<i32>(~global2.b.x, -global3.b.x, 1i, u_input.a.x))), func_3(func_3(Struct_1(~global2.a, _wgslsmith_div_vec4_i32(global1.b, vec4<i32>(global1.b.x, 2147483647i, -2787i, global3.b.x)), 0u, _wgslsmith_div_vec3_f32(global3.d, vec3<f32>(1273f, global2.d.x, global1.d.x)), global1.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-152f * global3.d.x)), reverseBits(_wgslsmith_mod_vec4_i32(global3.b, vec4<i32>(19213i, 41934i, global3.b.x, u_input.a.x))), Struct_1(~global2.a, func_3(Struct_1(vec2<u32>(37663u, 85864u), global2.b, 4294967295u, vec3<f32>(1576f, global3.d.x, global1.d.x), global1.e), global1.d.x, vec4<i32>(global1.b.x, -2147483647i, 2147483647i, global2.b.x), Struct_1(global2.a, vec4<i32>(0i, global3.b.x, global2.b.x, -2147483647i), global1.c, global2.d, false)).b, global3.a.x, vec3<f32>(global1.d.x, global1.d.x, global2.d.x), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.d.x)) + global2.d.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -838f))), ~vec4<i32>(u_input.a.x, 0i, global2.b.x, ~(-4113i)), Struct_1(global3.a, global3.b, _wgslsmith_mod_u32(25908u, 4294967295u) ^ ~global1.a.x, global3.d, global3.e)));
    let var_1 = Struct_1(reverseBits(global2.a << (~global2.a % vec2<u32>(32u))), var_0.b, ~global1.a.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(floor(var_0.d.x)), -731f), all(!select(!vec2<bool>(var_0.e, global3.e), !vec2<bool>(true, var_0.e), !vec2<bool>(global2.e, false))));
    var var_2 = _wgslsmith_f_op_f32(var_1.d.x * _wgslsmith_f_op_f32(var_1.d.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(620f * global1.d.x))))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(983f - -455f))));
    let var_3 = Struct_1(~_wgslsmith_add_vec2_u32(reverseBits(var_0.a), ~(vec2<u32>(var_1.c, u_input.b) & var_1.a)), ~vec4<i32>(firstTrailingBit(func_3(var_0, global2.d.x, global1.b, Struct_1(vec2<u32>(var_1.c, 26377u), var_0.b, 0u, vec3<f32>(-1106f, global3.d.x, -252f), false)).b.x), i32(-1i) * -21123i, global2.b.x | -var_0.b.x, max(global2.b.x, 0i)), firstLeadingBit(var_0.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1761f)) + _wgslsmith_f_op_f32(-global3.d.x)), global1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d.x) - 415f))), -_wgslsmith_sub_i32(-1i, _wgslsmith_div_i32(14049i, global1.b.x)) <= 50106i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-2147483647i, global2.b.x));
}

