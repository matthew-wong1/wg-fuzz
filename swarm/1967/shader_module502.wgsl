struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec4<bool>,
    d: f32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global1: array<vec2<bool>, 2>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<u32>) -> vec4<i32> {
    global1 = array<vec2<bool>, 2>();
    var var_0 = 0u;
    let var_1 = Struct_1(vec3<bool>(!(!global0.x), true, global0.x), false, vec4<bool>(global0.x, global0.x == (any(global0.xxy) && (global0.x == true)), global0.x, !global0.x), -677f, ~(-vec4<i32>(abs(4469i), -1i, -37719i, min(-2147483647i, 15718i))));
    var var_2 = -(~(-2147483647i));
    global1 = array<vec2<bool>, 2>();
    return -select(vec4<i32>(var_1.e.x >> (u_input.a % 32u), ~_wgslsmith_sub_i32(0i, -30386i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.e.x, 0i, 0i), -var_1.e.yxz), 30180i), var_1.e, var_1.c);
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_1(vec3<bool>(select(any(!global0.xyx), false, all(!global0.zxx)), !any(vec3<bool>(false, global0.x, false)), global0.x), false, vec4<bool>(true, global0.x, _wgslsmith_add_u32(_wgslsmith_mod_u32(arg_0.x, u_input.a), ~u_input.a) <= _wgslsmith_dot_vec4_u32(select(vec4<u32>(2011u, u_input.a, u_input.a, 4294967295u), vec4<u32>(arg_0.x, arg_0.x, u_input.a, 1u), vec4<bool>(false, global0.x, global0.x, global0.x)), vec4<u32>(arg_0.x, u_input.a, 61820u, 4294967295u) | vec4<u32>(0u, u_input.a, 33429u, 18149u)), arg_0.x > _wgslsmith_mult_u32(4266u >> (u_input.a % 32u), _wgslsmith_mult_u32(44539u, 1u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -448f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -392f))), func_3(arg_0.zy) | abs(firstTrailingBit(vec4<i32>(16865i, 16121i, 1i, 30895i))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.d, var_0.d))));
    global1 = array<vec2<bool>, 2>();
    var var_2 = arg_0.x;
    var_0 = Struct_1(!(!vec3<bool>(!var_0.b, !global0.x, !var_0.b)), true, vec4<bool>(global0.x, global0.x || false, true, var_0.b || all(select(vec4<bool>(global0.x, false, false, false), var_0.c, false))), 965f, -vec4<i32>(var_0.e.x << (~1u % 32u), max(60026i, 14661i) << (~4294967295u % 32u), -var_0.e.x ^ var_0.e.x, 2147483647i));
    return Struct_1(select(global0.ywz, vec3<bool>(false, -1862f != _wgslsmith_f_op_f32(floor(1278f)), true), select(vec3<bool>(any(var_0.a.zx), true, global0.x), global0.zxx, false)), true, var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.d))), countOneBits(var_0.e) >> ((countOneBits(vec4<u32>(34629u, u_input.a, 2747u, arg_0.x)) | vec4<u32>(u_input.a, min(arg_0.x, 4294967295u), u_input.a, _wgslsmith_add_u32(u_input.a, 11464u))) % vec4<u32>(32u)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec2<i32> {
    let var_0 = arg_0;
    let var_1 = func_2(vec3<u32>(~1u, u_input.a, u_input.a));
    var var_2 = var_1.c.ww;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2084f * -153f))), var_0.d)));
    var var_4 = Struct_1(select(var_1.c.wyx, select(select(!var_0.a, vec3<bool>(var_2.x, arg_0.b, false), !var_0.a.x), arg_1.c.yzw, select(false, false, any(vec3<bool>(var_0.b, arg_0.a.x, var_1.a.x)))), var_1.d >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(186f, 219f, arg_0.a.x)) * var_0.d)), !arg_0.b, !func_2(countOneBits(vec3<u32>(4294967295u, u_input.a, 69237u)) ^ (vec3<u32>(u_input.a, 1u, u_input.a) & vec3<u32>(34013u, 71710u, 80530u))).c, -233f, vec4<i32>(-1i) * -vec4<i32>(-arg_1.e.x, 54014i, 19459i, _wgslsmith_dot_vec3_i32(arg_1.e.xyx, arg_0.e.zzz)));
    return vec2<i32>(~(~(-arg_1.e.x)), _wgslsmith_dot_vec3_i32(var_4.e.zzy, var_4.e.zwy));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<bool>(false, !(_wgslsmith_dot_vec2_i32(func_1(Struct_1(vec3<bool>(true, global0.x, global0.x), false, vec4<bool>(global0.x, true, global0.x, global0.x), -105f, vec4<i32>(20260i, 1488i, -26220i, -43219i)), Struct_1(global0.ywy, true, vec4<bool>(true, true, global0.x, false), 768f, vec4<i32>(1i, -79622i, 5205i, 1i))), vec2<i32>(34976i, -2147483647i)) >= (-1i << ((u_input.a & u_input.a) % 32u))), (max(-1i, -42463i >> (u_input.a % 32u)) | _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(2147483647i, -1i, 0i)), vec3<i32>(-58287i, 0i, 2147483647i))) < ~0i, func_2(vec3<u32>(4294967295u, u_input.a, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 77703u, u_input.a, 11584u), vec4<u32>(u_input.a, 32296u, 40409u, 0u)))).c.x);
    let var_0 = func_2(firstTrailingBit(vec3<u32>(_wgslsmith_mod_u32(u_input.a, ~u_input.a), u_input.a ^ 11874u, ~3048u)));
    let var_1 = Struct_1(var_0.a, false, vec4<bool>(select(false, !var_0.c.x, !var_0.c.x), true, ((u_input.a ^ 12401u) & firstLeadingBit(u_input.a)) < u_input.a, !global0.x), _wgslsmith_f_op_f32(abs(var_0.d)), ~firstLeadingBit(vec4<i32>(_wgslsmith_add_i32(-2147483647i, 21983i), i32(-1i) * -48344i, max(var_0.e.x, var_0.e.x), var_0.e.x)));
    global0 = func_2(vec3<u32>(~(~u_input.a), u_input.a, 1u | ~(~u_input.a))).c;
    let var_2 = vec2<f32>(990f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.d, -845f)), var_1.d));
    global0 = var_0.c;
    var var_3 = Struct_1(global0.yyz, true, select(!vec4<bool>(false, false, var_0.b, var_0.a.x), !func_2(_wgslsmith_div_vec3_u32(vec3<u32>(8835u, u_input.a, u_input.a), vec3<u32>(82361u, u_input.a, u_input.a))).c, !var_0.c), var_0.d, ~var_1.e);
    let x = u_input.a;
    s_output = StorageBuffer(max(~vec4<u32>(1u, 4294967295u, u_input.a, u_input.a) << (vec4<u32>(~u_input.a, _wgslsmith_mod_u32(u_input.a, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec4<u32>(20345u, u_input.a, u_input.a, u_input.a)), _wgslsmith_dot_vec4_u32(vec4<u32>(25657u, u_input.a, u_input.a, 14129u), vec4<u32>(u_input.a, u_input.a, 79216u, 4192u))) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(4084u, 4294967295u, u_input.a, 0u)), abs(~vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a)))), 726f, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1248f, -1002f) * _wgslsmith_f_op_vec2_f32(floor(var_2))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_2), _wgslsmith_f_op_vec2_f32(-var_2), select(global1[_wgslsmith_index_u32(66205u, 2u)], vec2<bool>(var_1.a.x, true), global0.wx)))))));
}

