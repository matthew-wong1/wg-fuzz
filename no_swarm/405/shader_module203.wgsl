struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<f32> = vec2<f32>(-593f, -114f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-859f * 644f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global1.x, global1.x)))));
    let var_0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.x + -503f), -2980f, any(vec4<bool>(arg_0, false, arg_0, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(global1.x)), global1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * 2220f)), _wgslsmith_f_op_f32(exp2(global1.x)))), vec3<f32>(-1024f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1624f, _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-631f + 669f)))));
    var var_1 = Struct_1(!any(!select(vec4<bool>(arg_3.b, false, arg_3.a, false), vec4<bool>(arg_1.d, arg_1.a, true, true), vec4<bool>(false, true, arg_3.a, false))), arg_3.b | (4294967295u > arg_3.e), arg_3.c ^ 1u, any(select(vec3<bool>(arg_0, arg_1.b, arg_0 & arg_3.b), vec3<bool>(true, true, true), vec3<bool>(select(true, false, arg_1.d), !arg_0, true))), ~countOneBits(select(1u, 4294967295u, true)));
    var var_2 = _wgslsmith_add_vec2_i32(-vec2<i32>(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 73386i, u_input.a), vec3<i32>(u_input.a, 72401i, 0i))), vec2<i32>(u_input.a, _wgslsmith_mod_i32(i32(-1i) * -23610i, _wgslsmith_mult_i32(-27050i, -1i)))) << (~vec2<u32>(firstTrailingBit(~4302u), _wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_1.c, var_1.e), 22829u)) % vec2<u32>(32u));
    var var_3 = reverseBits(4294967295u);
    return (min(_wgslsmith_mult_i32(var_2.x, ~u_input.a), u_input.a) > ~24610i) | var_1.a;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = select(!vec2<bool>(true, func_3(true, Struct_1(false, false, 5344u, true, 20331u), Struct_2(arg_1.zz), Struct_1(false, true, arg_0.x, true, arg_0.x))), vec2<bool>(true && func_3(true, Struct_1(false, true, arg_0.x, false, 65335u), Struct_2(vec2<u32>(arg_0.x, arg_1.x)), Struct_1(true, false, 1u, true, arg_0.x)), true), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    var var_1 = Struct_2(arg_1.yx);
    let var_2 = vec2<u32>(_wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(arg_1 & arg_1, ~vec3<u32>(arg_0.x, 1u, var_1.a.x)), abs(~var_1.a.x)), abs(~select(1u, ~0u, true)));
    var var_3 = arg_1.x << ((abs(~(~1u)) & _wgslsmith_mult_u32(~(arg_0.x | 0u), abs(arg_1.x))) % 32u);
    var var_4 = firstTrailingBit(i32(-1i) * -abs(~u_input.a));
    return Struct_1(false, true, 17059u, !any(vec3<bool>(true, u_input.a >= u_input.a, false)), var_1.a.x);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.x))));
    let var_1 = _wgslsmith_f_op_f32(round(-527f));
    let var_2 = all(!vec4<bool>(arg_1.d, arg_1.b == true, _wgslsmith_mult_i32(u_input.a, 0i) > _wgslsmith_div_i32(13622i, u_input.a), ~67925u >= arg_2.a.x));
    let var_3 = func_2(vec2<u32>(arg_1.c, firstLeadingBit(arg_1.c)), abs(vec3<u32>(4294967295u, select(0u, arg_2.a.x, var_2) & arg_1.e, arg_2.a.x)));
    let var_4 = ~abs(u_input.a) > _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(min(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 2147483647i)), firstTrailingBit(vec2<i32>(-6227i, 42743i))), min(~vec2<i32>(u_input.a, -20596i), vec2<i32>(0i, u_input.a))), vec2<i32>(39467i, _wgslsmith_add_i32(1i, -83877i)));
    return var_3.b;
}

fn func_1() -> Struct_1 {
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(269f, global1.x)))))))));
    global1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 1102f) + vec2<f32>(156f, global1.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1121f, global1.x)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2090f, global1.x) * vec2<f32>(global1.x, -209f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(global1.x - global1.x)))))));
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-995f, global1.x, global1.x) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, global1.x, -983f), vec3<f32>(-1814f, -127f, global1.x), true)))));
    let var_1 = !vec3<bool>(func_4(var_0.xz, func_2(~vec2<u32>(4294967295u, 0u), ~vec3<u32>(0u, 14111u, 642u)), Struct_2(reverseBits(vec2<u32>(59881u, 42064u))), Struct_2(firstLeadingBit(vec2<u32>(1u, 12957u)))), !any(vec3<bool>(true, true, true)), !any(vec4<bool>(true, true, true, false)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-343f)), -196f))))));
    return func_2(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, ~80975u), reverseBits(reverseBits(vec2<u32>(29213u, 81147u)))), ~vec3<u32>(1u, 1u, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = 179f;
    var var_2 = Struct_1(func_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(global1.x * -1489f), global1.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(902f, global1.x)), var_0.d)), var_0, Struct_2(_wgslsmith_add_vec2_u32(abs(vec2<u32>(45363u, 4294967295u)), ~vec2<u32>(35524u, var_0.c))), Struct_2(vec2<u32>(1u, 1u) ^ ~vec2<u32>(var_0.e, 4294967295u))), var_0.b, var_0.e, !var_0.a, var_0.e);
    let var_3 = Struct_2(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.c, var_2.e, 42182u), vec3<u32>(4294967295u, 1u, var_2.e)), 4294967295u), 1u), var_0.c));
    global0 = global1.x;
    let var_4 = reverseBits(min(vec2<u32>(26076u, abs(1u)) >> (var_3.a % vec2<u32>(32u)), var_3.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1119f, global1.x)))), vec2<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x)), !vec2<bool>(true, all(vec2<bool>(var_0.a, var_2.b))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 1000f) * vec2<f32>(276f, 299f)))), vec2<f32>(786f, _wgslsmith_f_op_f32(select(467f, 503f, false))))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x)), 671f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(global1.x, 253f))))))), vec4<u32>(func_1().e, var_2.c, abs(var_2.e), ~65055u));
}

