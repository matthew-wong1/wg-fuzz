struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-1232f), Struct_1(-1135f), vec2<i32>(-22050i, 0i), Struct_1(709f));

var<private> global1: array<vec4<i32>, 14> = array<vec4<i32>, 14>(vec4<i32>(-54672i, -37038i, 1i, -92167i), vec4<i32>(1i, -2436i, 49066i, 2147483647i), vec4<i32>(0i, -1i, -67486i, 0i), vec4<i32>(0i, -11048i, 1i, -8803i), vec4<i32>(-43197i, 1i, -59030i, -1i), vec4<i32>(20298i, i32(-2147483648), 29179i, 93175i), vec4<i32>(-44183i, 1i, -26737i, -1i), vec4<i32>(-45408i, 0i, i32(-2147483648), 1i), vec4<i32>(-7560i, 42949i, -57577i, 19528i), vec4<i32>(0i, 10013i, -51194i, 16697i), vec4<i32>(-18933i, 0i, -1i, 0i), vec4<i32>(32976i, -1i, 2147483647i, 12615i), vec4<i32>(-1i, -63271i, 2147483647i, 2513i), vec4<i32>(-76910i, 0i, 0i, 2147483647i));

var<private> global2: u32 = 4294967295u;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(global0.b, global0.a, _wgslsmith_mod_vec2_i32(u_input.d, countOneBits(u_input.d)), global0.b);
    global2 = ~(~3221u);
    let var_1 = Struct_3(global0.b, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.b.a))), 1f)), Struct_2(Struct_1(1193f), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.b.a)))), global0.c, var_0.b), global0.b, var_0.c.x);
    global1 = array<vec4<i32>, 14>();
    var var_2 = ~abs(var_1.e);
    return Struct_1(1747f);
}

fn func_3(arg_0: u32, arg_1: u32) -> vec3<i32> {
    global1 = array<vec4<i32>, 14>();
    var var_0 = func_2();
    global0 = Struct_2(func_2(), func_2(), -vec2<i32>(select(abs(global0.c.x), -u_input.d.x, 1i <= u_input.d.x), 5171i), global0.b);
    let var_1 = all(vec3<bool>(false, global0.c.x == _wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(arg_0, 14u)], vec4<i32>(20680i, u_input.d.x, -33067i, -1i)), true)) & any(select(vec2<bool>(true, true), vec2<bool>(true, true), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)))));
    global0 = Struct_2(func_2(), func_2(), ~select((global0.c & u_input.d) << (vec2<u32>(0u, arg_0) % vec2<u32>(32u)), global0.c, firstLeadingBit(21357u) <= arg_1), Struct_1(_wgslsmith_f_op_f32(-global0.d.a)));
    return _wgslsmith_div_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(0i, 2147483647i, global0.c.x) & vec3<i32>(0i, global0.c.x, global0.c.x), ~vec3<i32>(1i, -52472i, global0.c.x)) << (u_input.a.wzx % vec3<u32>(32u)), -(vec3<i32>(0i, abs(44347i), -7928i) << (_wgslsmith_sub_vec3_u32(u_input.a.wwx, _wgslsmith_mult_vec3_u32(u_input.a.yyz, vec3<u32>(arg_1, arg_1, arg_0))) % vec3<u32>(32u))));
}

fn func_4(arg_0: vec3<i32>) -> Struct_1 {
    global2 = abs(84011u);
    global0 = Struct_2(func_2(), func_2(), vec2<i32>(global0.c.x, -60632i), Struct_1(_wgslsmith_f_op_f32(global0.b.a - 463f)));
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f)), func_2(), vec2<i32>(26281i, 10637i), global0.d);
    let var_1 = Struct_2(Struct_1(global0.b.a), global0.b, var_0.c & (vec2<i32>(-23537i, _wgslsmith_sub_i32(u_input.d.x, 1i)) & func_3(155239u, 56881u).yy), Struct_1(_wgslsmith_f_op_f32(min(global0.d.a, global0.d.a))));
    var_0 = var_1;
    return var_0.a;
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_3(global0.d, func_2(), Struct_2(func_4(func_3(u_input.e, u_input.a.x)), Struct_1(_wgslsmith_f_op_f32(-global0.b.a)), vec2<i32>(u_input.d.x, ~_wgslsmith_sub_i32(-9444i, global0.c.x)), Struct_1(-1000f)), global0.d, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(-40307i, -15567i, u_input.d.x, global0.c.x), -vec4<i32>(-18701i, 73687i, 0i, -33096i), ~global1[_wgslsmith_index_u32(u_input.e, 14u)]) | global1[_wgslsmith_index_u32(~34518u, 14u)], global1[_wgslsmith_index_u32(countOneBits(u_input.a.x | 0u), 14u)]));
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1278f));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec2<bool>) -> Struct_3 {
    let var_0 = select(select(select(arg_3, select(select(arg_0.xz, vec2<bool>(false, false), false), arg_0.zz, false), all(vec4<bool>(arg_3.x, false, arg_3.x, true)) & true), arg_0.yz, false), arg_3, !(!(!arg_0.x && all(vec4<bool>(true, true, arg_3.x, false)))));
    let var_1 = _wgslsmith_mult_i32(2147483647i, min(_wgslsmith_div_i32(~(-2147483647i) << (0u % 32u), arg_1.e), -1i));
    var var_2 = var_0.x;
    let var_3 = 0u;
    let var_4 = ~_wgslsmith_div_u32(var_3, 4294967295u);
    return arg_1;
}

fn func_6(arg_0: u32, arg_1: u32, arg_2: Struct_3, arg_3: vec4<u32>) -> f32 {
    global0 = arg_2.c;
    var var_0 = _wgslsmith_f_op_f32(1153f * arg_2.d.a);
    let var_1 = select(vec4<bool>(true, !all(select(vec2<bool>(true, true), vec2<bool>(false, true), false)), all(vec2<bool>(true, true)), true), !vec4<bool>(!all(vec2<bool>(false, true)), any(vec3<bool>(true, true, true)), !(arg_0 < arg_1), true), !select(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    let var_2 = !(!(~(-9112i) <= _wgslsmith_mult_i32(global0.c.x, u_input.d.x)) || (global0.c.x < _wgslsmith_mult_i32(-5897i, 59570i)));
    var var_3 = arg_2;
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_6(22403u >> (u_input.c % 32u), _wgslsmith_dot_vec3_u32(~vec3<u32>(56194u, u_input.a.x, 48205u), ~u_input.a.wzw), func_5(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), Struct_3(Struct_1(-1545f), func_1(vec2<bool>(true, true)), Struct_2(Struct_1(-1448f), Struct_1(global0.d.a), vec2<i32>(32008i, 2147483647i), Struct_1(global0.b.a)), Struct_1(2698f), u_input.d.x & -2147483647i), Struct_3(func_1(vec2<bool>(true, true)), Struct_1(1198f), Struct_2(global0.b, global0.b, vec2<i32>(u_input.d.x, global0.c.x), global0.a), global0.a, -u_input.d.x), select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(false, false), vec2<bool>(true, true))), ~(u_input.a & u_input.a) >> (vec4<u32>(39101u, min(36124u, 1u), u_input.e << (u_input.b % 32u), u_input.a.x) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.a - _wgslsmith_f_op_f32(global0.b.a * 1282f)) * _wgslsmith_f_op_f32(f32(-1f) * -523f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(2571f)), 1439f))));
    var var_1 = Struct_1(var_0.x);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1179f) + var_1.a);
    var var_3 = _wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(u_input.e ^ 1u, 0u)), vec2<u32>(~(~u_input.b), ~(~1u)));
    let var_4 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -428f))))), func_4(vec3<i32>(-38352i, global0.c.x, 2147483647i)), -(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.c.x, u_input.d.x), global0.c, u_input.d), -vec2<i32>(-594i, u_input.d.x)) & ~(u_input.d & vec2<i32>(41316i, 2147483647i))), Struct_1(var_0.x));
    let var_5 = _wgslsmith_mod_i32(var_4.c.x, global0.c.x);
    var var_6 = ~u_input.b;
    global2 = 24961u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, var_2, -1651f, var_2)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-101f, -1017f, _wgslsmith_div_f32(-897f, var_2), _wgslsmith_f_op_f32(ceil(var_0.x))))), vec4<bool>(firstLeadingBit(u_input.b) <= ~var_3.x, any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))), global0.d.a <= _wgslsmith_f_op_f32(sign(-817f)), true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(376f, -1000f), vec2<f32>(-592f, var_1.a))))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-912f, 321f) - vec2<f32>(var_4.a.a, var_2))))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, 1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, global0.b.a)), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, 111f)))))))));
}

