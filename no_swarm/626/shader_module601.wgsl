struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec4<f32>(-285f, 1000f, -1889f, -986f), true, vec4<bool>(false, true, true, true)), Struct_1(vec4<f32>(-1406f, 1056f, 353f, -1307f), false, vec4<bool>(false, true, false, true)), Struct_1(vec4<f32>(357f, -211f, -472f, 2488f), false, vec4<bool>(true, false, false, false)), Struct_1(vec4<f32>(826f, -1000f, 788f, -1040f), true, vec4<bool>(true, false, true, true)), Struct_1(vec4<f32>(158f, -556f, 503f, 639f), true, vec4<bool>(true, true, true, true)), Struct_1(vec4<f32>(-203f, -659f, -494f, 329f), true, vec4<bool>(true, true, true, false)));

var<private> global2: array<vec3<i32>, 24>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec4<u32>) -> vec3<f32> {
    global0 = vec2<u32>(~min(_wgslsmith_add_u32(_wgslsmith_mult_u32(global0.x, arg_2.x), 31426u), ~(~61846u)), abs(~1u));
    let var_0 = vec2<i32>(arg_0 | u_input.d, _wgslsmith_mod_i32(-1i, _wgslsmith_div_i32(u_input.d, -1i)));
    global1 = array<Struct_1, 6>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1571f, arg_1, 196f, arg_1), vec4<f32>(727f, -1536f, 1348f, arg_1), true)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(130f, arg_1, arg_1, 193f))))), all(vec4<bool>(false, false, true, false)) && all(vec2<bool>(true, true)), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true)), true))), true, true);
    let var_2 = vec3<i32>(-arg_0, u_input.d << (_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(u_input.c, 0u), select(u_input.e.x, 4294967295u, false), global0.x), vec3<u32>(global0.x << (1u % 32u), 2864u, global0.x)) % 32u), min(var_0.x ^ -(~(-1i)), countOneBits(_wgslsmith_clamp_i32(0i, 12954i, 24599i))));
    return _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_div_f32(-1033f, arg_1)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1)) + _wgslsmith_f_op_f32(sign(1000f)))), -1168f, 1f)));
}

fn func_2() -> vec3<f32> {
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-156f, -238f, -838f), vec3<f32>(1523f, 194f, -779f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1166f, -981f, 708f)), _wgslsmith_f_op_vec3_f32(func_3(u_input.d, 589f, vec4<u32>(12749u, 4294967295u, u_input.a, u_input.a)))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1310f), _wgslsmith_f_op_f32(263f - -761f), 492f))));
}

fn func_4(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = ~((~firstLeadingBit(vec3<u32>(global0.x, 4294967295u, 1u)) | ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 60654u, u_input.c), vec3<u32>(4294967295u, 31137u, global0.x), vec3<u32>(4294967295u, 0u, 0u))) | ~(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, global0.x, global0.x), vec3<u32>(4294967295u, 0u, u_input.a)) ^ ~vec3<u32>(81963u, 15290u, 61904u)));
    global2 = array<vec3<i32>, 24>();
    global1 = array<Struct_1, 6>();
    global2 = array<vec3<i32>, 24>();
    let var_1 = global0.x;
    return Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(198f + 1451f), _wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_div_f32(arg_0.x, arg_0.x), _wgslsmith_f_op_f32(trunc(arg_0.x)))), vec4<f32>(_wgslsmith_f_op_vec3_f32(func_3(firstTrailingBit(u_input.d), -820f, firstLeadingBit(vec4<u32>(72051u, 6735u, var_0.x, var_0.x)))).x, -779f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2()).x), 103f), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec3<bool>(false, true, true)))))), !(var_0.x != var_0.x), vec4<bool>(select(u_input.e.x > ~1u, any(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true))), false, all(vec4<bool>(true, true, true, true)) && (reverseBits(u_input.d) >= reverseBits(-49793i)), true));
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_2()), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(402f, -799f, 224f)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(304f, 117f, -731f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1616f, -1153f, -1073f) + vec3<f32>(-1586f, -215f, 1000f))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1466f, 675f, 844f) - vec3<f32>(257f, 317f, 199f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-630f, 451f, 267f) * vec3<f32>(630f, 352f, 1802f)))))));
    let var_1 = vec4<bool>(true, var_0.c.x, !var_0.c.x, var_0.b);
    var var_2 = ~vec2<i32>(_wgslsmith_sub_i32(u_input.d, ~_wgslsmith_add_i32(u_input.d, 1i)), -7837i);
    global2 = array<vec3<i32>, 24>();
    global1 = array<Struct_1, 6>();
    return func_4(var_0.a.yxx);
}

fn func_5(arg_0: Struct_1) -> bool {
    let var_0 = arg_0;
    global2 = array<vec3<i32>, 24>();
    let var_1 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-2121f * _wgslsmith_f_op_f32(-1517f + var_0.a.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_f32(-arg_0.a.x), 816f), !(!any(vec3<bool>(var_0.b, arg_0.c.x, arg_0.c.x))), vec4<bool>(!all(vec4<bool>(true, false, arg_0.b, var_0.b)), arg_0.c.x, arg_0.b, var_0.c.x)), all(func_4(_wgslsmith_f_op_vec3_f32(func_2())).c.xwy), var_0.c.x);
    let var_2 = vec2<i32>(u_input.d, _wgslsmith_sub_i32(~countOneBits(min(-28096i, u_input.d)), ~0i));
    var var_3 = max(reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(~u_input.e.x, ~u_input.e.x, _wgslsmith_div_u32(global0.x, 83109u), _wgslsmith_add_u32(u_input.a, 0u)), ~vec4<u32>(4294967295u, 96057u, 19395u, 77268u) | (vec4<u32>(44324u, global0.x, 1u, 0u) << (vec4<u32>(4294967295u, global0.x, 52401u, global0.x) % vec4<u32>(32u))))), ~(~(~vec4<u32>(global0.x, global0.x, 0u, u_input.e.x))) ^ (~vec4<u32>(0u, 1u, 1u, u_input.b.x) << (vec4<u32>(_wgslsmith_sub_u32(global0.x, 30901u), ~7603u, ~global0.x, 26957u | global0.x) % vec4<u32>(32u))));
    return -1727f < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.a.x, var_1.a.a.x) - var_0.a.x)))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_2 {
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(global0.x, 6u)], arg_1.c.x, select(arg_0.c.x, arg_1.b, arg_1.b));
    var var_1 = vec3<i32>(_wgslsmith_mult_i32(-1i, _wgslsmith_clamp_i32(24816i, max(2147483647i, -13448i), u_input.d) ^ min(_wgslsmith_add_i32(arg_2.x, u_input.d), i32(-1i) * -16794i)), u_input.d, select(~_wgslsmith_add_i32(u_input.d, 1i), ~(~3243i), !(!arg_0.c.x)) >> (1784u % 32u));
    global1 = array<Struct_1, 6>();
    var var_2 = var_0;
    let var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.a.x + -1598f), _wgslsmith_f_op_f32(var_0.a.a.x + arg_1.a.x)))), var_2.a.a.x, arg_1.a.x, 1100f), all(var_0.a.c.zwz), !func_4(_wgslsmith_f_op_vec3_f32(-arg_1.a.xzz)).c);
    return Struct_2(global1[_wgslsmith_index_u32(~(max(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global0.x), u_input.b), 73650u) ^ abs(~u_input.b.x)), 6u)], !select(!arg_0.b, func_1().b, !var_3.b), !var_3.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-419f, _wgslsmith_f_op_f32(f32(-1f) * -982f), _wgslsmith_div_f32(-1171f, -1376f), _wgslsmith_f_op_f32(-150f + 192f)))), !func_5(func_1()), !vec4<bool>(true, true, func_1().c.x, true)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-566f - _wgslsmith_f_op_f32(1833f + 2609f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1106f - -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, 634f))), 1014f), true, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(func_4(vec3<f32>(246f, 518f, -1314f)).c.yy))), global2[_wgslsmith_index_u32(max(min(global0.x, 4294967295u << (max(global0.x, u_input.b.x) % 32u)), _wgslsmith_add_u32(global0.x, firstTrailingBit(2909u))), 24u)]);
    global2 = array<vec3<i32>, 24>();
    let var_1 = firstTrailingBit(global0.x);
    let var_2 = u_input.d;
    var var_3 = ~(abs(global0.x ^ 1u) << (~30720u % 32u));
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -958f);
    let x = u_input.a;
    s_output = StorageBuffer(~(vec4<i32>(abs(-18802i), abs(var_2), 13107i, countOneBits(50130i)) & (-vec4<i32>(-49108i, 2147483647i, 42969i, var_2) >> (firstTrailingBit(vec4<u32>(82554u, 35264u, 53727u, var_1)) % vec4<u32>(32u)))), u_input.d);
}

