struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec2<bool>,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(vec4<i32>(2147483647i, 1i, 0i, 1i), Struct_2(1i, -15325i, vec2<bool>(true, false), Struct_1(vec4<f32>(378f, -1910f, 941f, -162f)), vec4<bool>(false, false, true, false)), Struct_1(vec4<f32>(-291f, 742f, 287f, -1496f)), vec2<bool>(false, false)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> bool {
    let var_0 = Struct_3(~firstLeadingBit(vec4<i32>(0i, firstTrailingBit(-45788i), _wgslsmith_sub_i32(u_input.a, u_input.a), u_input.a << (42926u % 32u))), Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a >> (4294967295u % 32u), -35109i), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, -15352i), _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, -49550i), vec2<i32>(0i, 27084i)))), 3239i, select(select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true)), vec2<bool>(true, true), any(vec2<bool>(true, true))), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(186f, -738f, 651f, 614f) - vec4<f32>(351f, -484f, -931f, 2142f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-999f, -1223f, -500f, 285f)), true))), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true)), Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(966f, 1680f)), _wgslsmith_f_op_f32(-805f + -1793f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -557f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(385f, 1459f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1157f))))), select(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), false)), vec2<bool>(70282u >= select(85947u, 1u, false), false), vec2<bool>(true, true)));
    let var_1 = select(var_0.b.c, var_0.b.c, true);
    return any(!vec3<bool>(-349f >= var_0.b.d.a.x, any(var_0.b.e.wwy), all(!vec2<bool>(var_1.x, true))));
}

fn func_2(arg_0: Struct_1) -> vec3<u32> {
    global0 = array<Struct_3, 1>();
    var var_0 = ~4294967295u;
    let var_1 = !vec3<bool>(func_3() | true, true, select(all(vec4<bool>(true, true, true, true)), any(vec3<bool>(false, true, false)) && true, true));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.a.x)) - arg_0.a.x);
    let var_3 = abs(~vec4<u32>(12218u, 1u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(11148u, 7933u, 72557u), _wgslsmith_mod_vec3_u32(vec3<u32>(82489u, 1u, 0u), vec3<u32>(1u, 12185u, 3545u)))));
    return var_3.wyz;
}

fn func_1(arg_0: bool, arg_1: Struct_3) -> i32 {
    var var_0 = ~func_2(arg_1.b.d);
    var var_1 = ~(~vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(37378u, 12467u, var_0.x, 15751u), vec4<u32>(18012u, 32438u, 0u, 77422u) >> (vec4<u32>(59353u, 42175u, var_0.x, var_0.x) % vec4<u32>(32u))), 59200u));
    let var_2 = !arg_1.b.c.x;
    var_0 = ~vec3<u32>(~(var_0.x ^ var_0.x), 34352u, abs(4294967295u) | func_2(Struct_1(vec4<f32>(1383f, 319f, arg_1.b.d.a.x, 1217f))).x) & firstLeadingBit(max(select(vec3<u32>(51190u, var_1.x, var_0.x), vec3<u32>(var_0.x, var_0.x, 0u), false), vec3<u32>(1u, var_1.x, var_0.x)) ^ (vec3<u32>(0u, var_1.x, 55288u) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, 44680u, var_0.x), vec3<u32>(var_1.x, 4294967295u, 10862u), vec3<u32>(32187u, 51218u, var_0.x))));
    let var_3 = Struct_3(_wgslsmith_div_vec4_i32(-(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.a.x, 1i, 1i, arg_1.b.b), arg_1.a) << (~vec4<u32>(var_0.x, 13606u, var_1.x, var_0.x) % vec4<u32>(32u))), reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -65327i, -1i, u_input.a), vec4<i32>(arg_1.b.a, u_input.a, arg_1.b.a, 2147483647i))) ^ vec4<i32>(reverseBits(-30813i), arg_1.b.a, _wgslsmith_dot_vec4_i32(vec4<i32>(8334i, arg_1.b.b, 2147483647i, u_input.a), vec4<i32>(arg_1.b.a, u_input.a, arg_1.a.x, arg_1.a.x)), -2147483647i & arg_1.a.x)), Struct_2(u_input.a, 0i, vec2<bool>(_wgslsmith_f_op_f32(arg_1.c.a.x - -401f) >= -145f, true), arg_1.c, select(vec4<bool>(false, arg_1.b.d.a.x <= 122f, var_2, true), arg_1.b.e, true)), arg_1.b.d, select(vec2<bool>(any(arg_1.b.e) != func_3(), any(vec2<bool>(var_2, true))), arg_1.d, arg_1.d));
    return countOneBits(arg_1.b.b);
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: u32) -> Struct_1 {
    let var_0 = !any(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), u_input.a == u_input.a), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(all(vec2<bool>(true, false)), false, false)));
    global0 = array<Struct_3, 1>();
    var var_1 = false;
    var_1 = false;
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(trunc(541f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-605f * arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2041f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 1>();
    global0 = array<Struct_3, 1>();
    global0 = array<Struct_3, 1>();
    global0 = array<Struct_3, 1>();
    let var_0 = Struct_2(firstLeadingBit(u_input.a), _wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(-u_input.a, u_input.a, countOneBits(-15079i)), abs(~(-16695i))), _wgslsmith_add_i32(~(u_input.a ^ -1i), _wgslsmith_sub_i32(0i, ~u_input.a))), select(select(!select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(false, false), vec2<bool>(true, false), false)), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), true)), !(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))), vec2<bool>(!any(vec2<bool>(false, false)), any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), true)))), func_4(firstLeadingBit(func_1(any(vec3<bool>(false, true, false)), Struct_3(vec4<i32>(-15198i, u_input.a, u_input.a, u_input.a), Struct_2(-19803i, u_input.a, vec2<bool>(false, true), Struct_1(vec4<f32>(475f, -804f, 1020f, 762f)), vec4<bool>(false, false, true, false)), Struct_1(vec4<f32>(726f, -189f, 834f, 1461f)), vec2<bool>(false, true)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1288f, _wgslsmith_f_op_f32(f32(-1f) * -845f))), ~25710u), select(!vec4<bool>(false, any(vec4<bool>(true, false, true, false)), true, true), vec4<bool>(false, true, !all(vec4<bool>(false, true, true, false)), _wgslsmith_div_i32(u_input.a, u_input.a) > _wgslsmith_add_i32(u_input.a, -13902i)), !(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(584f, 1394f)) - _wgslsmith_f_op_f32(-var_0.d.a.x))) + var_0.d.a.x), vec2<u32>(6529u, 1u), ~57432i, -func_1(true, Struct_3(countOneBits(vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a)), Struct_2(var_0.a, var_0.b, var_0.c, var_0.d, var_0.e), Struct_1(vec4<f32>(1136f, -382f, var_0.d.a.x, -1000f)), !var_0.c)));
}

