struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: Struct_4,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: vec2<f32> = vec2<f32>(448f, -161f);

var<private> global2: array<vec2<u32>, 15>;

var<private> global3: vec4<u32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_5(-(25982i ^ u_input.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.x + global1.x), _wgslsmith_f_op_f32(-global1.x)))))), global0[_wgslsmith_index_u32(50341u, 23u)], Struct_4(~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) | ~(-vec4<i32>(u_input.a, 0i, 18200i, -2147483647i))), global3.zz);
    global2 = array<vec2<u32>, 15>();
    let var_1 = !select(false, any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true)), _wgslsmith_add_i32(reverseBits(0i), u_input.a) >= 2147483647i);
    global0 = array<Struct_1, 23>();
    var var_2 = select(_wgslsmith_mult_i32(0i, -_wgslsmith_sub_i32(-var_0.a, 1i)), -2147483647i, true);
    return !select(vec4<bool>(var_1, var_1, all(vec3<bool>(true, var_1, var_1)), true), vec4<bool>(any(!vec3<bool>(true, var_1, var_1)), var_1, var_1 | all(vec2<bool>(true, var_1)), var_1), !select(vec4<bool>(var_1, false, var_1, true), vec4<bool>(true, var_1, var_1, var_1), select(vec4<bool>(var_1, true, var_1, var_1), vec4<bool>(true, var_1, var_1, var_1), vec4<bool>(var_1, false, var_1, false))));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: u32, arg_3: i32) -> Struct_1 {
    var var_0 = !func_3();
    let var_1 = vec4<i32>(-2147483647i, 0i, -34622i, u_input.a);
    var var_2 = Struct_1(15864i, arg_1, vec2<i32>(-abs(-4746i), 1i | u_input.a), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -107f)), global1.x), arg_0.x, arg_0.x));
    var var_3 = ~arg_2;
    let var_4 = 0i >> (u_input.d.x % 32u);
    return global0[_wgslsmith_index_u32(global3.x, 23u)];
}

fn func_1() -> vec2<f32> {
    var var_0 = Struct_5(u_input.a, _wgslsmith_f_op_f32(-global1.x), func_2(vec3<f32>(_wgslsmith_f_op_f32(floor(global1.x)), -1396f, global1.x), -firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(-2147483647i, -2147483647i))), global3.x, countOneBits(u_input.a)), Struct_4(min(-vec4<i32>(u_input.a, -1i, -36231i, u_input.a), vec4<i32>(1i, 40103i, -3161i, u_input.a) << (vec4<u32>(0u, u_input.d.x, 4294967295u, 0u) % vec4<u32>(32u))) << (vec4<u32>(global3.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 0u, 0u, 0u), vec4<u32>(126913u, u_input.c, global3.x, global3.x)), u_input.d.x, ~0u) % vec4<u32>(32u))), _wgslsmith_mult_vec2_u32(vec2<u32>(1760u, u_input.c) & min(global2[_wgslsmith_index_u32(4294967295u, 15u)], vec2<u32>(11597u, u_input.e.x)), global2[_wgslsmith_index_u32(reverseBits(u_input.e.x), 15u)] << (vec2<u32>(u_input.b, global3.x) % vec2<u32>(32u))) >> (~vec2<u32>(~4294967295u, ~u_input.c) % vec2<u32>(32u)));
    var var_1 = var_0.b;
    let var_2 = firstLeadingBit(-abs(abs(11337i)));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(min(-289f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.b))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.x - var_0.b))), _wgslsmith_f_op_f32(f32(-1f) * -946f), 672f);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-365f, _wgslsmith_f_op_f32(max(-827f, -1246f))) + var_3.xx) - var_0.c.d.yx);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec4<u32>(0u, abs(0u), ~(~(~62780u)) << (~u_input.d.x % 32u), global3.x);
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1()))))));
    let var_0 = select(!vec4<bool>(any(vec4<bool>(true, true, true, true)), global1.x <= _wgslsmith_f_op_f32(-global1.x), all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false))), any(vec4<bool>(true, true, true, true))), func_3(), !all(func_3().wxx));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x * -1814f), global1.x)), -1247f);
    let var_1 = Struct_2(!var_0, func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), -(~countOneBits(vec2<i32>(u_input.a, 0i))), 34959u, -1i), countOneBits(firstLeadingBit(~vec3<u32>(21643u, global3.x, global3.x))), global0[_wgslsmith_index_u32(0u, 23u)], Struct_1(select(min(-2147483647i, 0i), u_input.a, !all(vec3<bool>(var_0.x, true, true))), -(vec2<i32>(-1i, u_input.a) << (_wgslsmith_sub_vec2_u32(vec2<u32>(27014u, 0u), vec2<u32>(global3.x, 1u)) % vec2<u32>(32u))), vec2<i32>(func_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, -2600f, -261f), vec3<f32>(global1.x, global1.x, -790f), var_0.ywz)), vec2<i32>(u_input.a, -39261i), 2299u, 0i).b.x, u_input.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(1253f, _wgslsmith_f_op_f32(global1.x - global1.x), _wgslsmith_f_op_f32(global1.x - global1.x)) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-466f, -645f, global1.x)), vec3<f32>(483f, 438f, global1.x))))));
    var var_2 = func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-198f + global1.x) - 1f), var_1.e.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * global1.x))), ~(~_wgslsmith_clamp_vec2_i32(-vec2<i32>(u_input.a, -2147483647i), ~var_1.e.c, reverseBits(var_1.d.c))), _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~global3.x, ~13248u), 0u), 4294967295u), _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, max(var_1.e.c.x, _wgslsmith_clamp_i32(u_input.a, var_1.e.b.x, 57309i)), abs(_wgslsmith_sub_i32(var_1.d.b.x, -1i))) & -22179i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(~global3.x), ~(global3.x >> ((global3.x >> (0u % 32u)) % 32u)), 84161u, _wgslsmith_dot_vec3_u32(~global3.wzx, vec3<u32>(1u, global3.x, u_input.c)) >> (global3.x % 32u)), 17681i, ~global3.x, -1209f);
}

