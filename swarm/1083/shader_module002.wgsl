struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec4<bool>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), -2856i, -2298i);

var<private> global1: array<Struct_2, 31>;

var<private> global2: vec2<u32> = vec2<u32>(4294967295u, 52954u);

var<private> global3: array<i32, 5>;

var<private> global4: u32;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> f32 {
    global3 = array<i32, 5>();
    var var_0 = true;
    var var_1 = arg_1.c;
    var_0 = ~abs(~(global3[_wgslsmith_index_u32(global2.x, 5u)] & global3[_wgslsmith_index_u32(global2.x, 5u)])) > _wgslsmith_mod_i32(~(firstTrailingBit(global0.x) ^ reverseBits(u_input.c)), ~(-var_1.e | arg_1.c.e));
    var_0 = select(select(all(vec4<bool>(-249f <= arg_1.c.a, arg_1.a.x & true, var_1.c.x, 343f < arg_1.b.x)), arg_1.c.d, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), select(arg_1.c.c.yxw, arg_1.c.c.wzy, true)))), all(!arg_1.c.c.zyw), var_1.d);
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<i32>) -> u32 {
    let var_0 = ~vec3<i32>(~(-1376i), ~2147483647i, ~(_wgslsmith_mod_i32(-32849i, -1i) | _wgslsmith_dot_vec2_i32(arg_0, vec2<i32>(35748i, 5664i))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-663f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1355f * _wgslsmith_f_op_f32(func_3(17737u, Struct_3(vec4<bool>(true, false, false, true), vec4<f32>(505f, 268f, -567f, 618f), Struct_1(-1427f, vec2<bool>(false, true), vec4<bool>(false, false, false, false), false, arg_0.x))))))));
    global2 = _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(abs(~vec2<u32>(global2.x, u_input.b)), ~(~vec2<u32>(19009u, global2.x))), vec2<u32>(~min(u_input.b, 23825u), abs(u_input.b))), ~vec2<u32>(global2.x, 27824u));
    global4 = 3826u;
    let var_2 = all(vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, false), false)), !all(vec4<bool>(false, true, false, false))));
    return ~_wgslsmith_sub_u32(u_input.b, 1u);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<bool>) -> i32 {
    return global0.x;
}

fn func_5(arg_0: bool, arg_1: vec4<i32>) -> Struct_2 {
    let var_0 = arg_0;
    return global1[_wgslsmith_index_u32(4294967295u, 31u)];
}

fn func_1(arg_0: vec3<f32>) -> vec2<u32> {
    var var_0 = func_5(global3[_wgslsmith_index_u32(max(_wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, global2.x, u_input.b), u_input.b), 38627u), 5u)] < global0.x, vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, firstLeadingBit(1i), -13536i), vec3<i32>(global3[_wgslsmith_index_u32(u_input.b & 0u, 5u)], global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, u_input.b), 5u)], i32(-1i) * -2147483647i)), func_4(global1[_wgslsmith_index_u32(func_2(vec2<i32>(u_input.a.x, global3[_wgslsmith_index_u32(global2.x, 5u)]), u_input.a) | u_input.b, 31u)], Struct_3(vec4<bool>(true, true, false, true), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.x, arg_0.x, 720f, arg_0.x))), Struct_1(-1044f, vec2<bool>(true, true), vec4<bool>(false, false, false, false), false, -25734i)), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false))), u_input.d.x, global3[_wgslsmith_index_u32(reverseBits(0u), 5u)]));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(330f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x) - _wgslsmith_f_op_f32(-arg_0.x)))), select(select(vec2<bool>(true == var_0.a, var_0.a), !vec2<bool>(true, var_0.a), _wgslsmith_mult_i32(global0.x, -20190i) == ~u_input.d.x), select(!(!vec2<bool>(true, var_0.a)), select(!vec2<bool>(var_0.a, false), !vec2<bool>(false, var_0.a), all(vec3<bool>(true, var_0.a, false))), select(vec2<bool>(true, true), select(vec2<bool>(var_0.a, false), vec2<bool>(true, var_0.a), false), !var_0.a)), var_0.a), select(vec4<bool>(any(select(vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<bool>(var_0.a, false, var_0.a, var_0.a), var_0.a)), var_0.a, var_0.a, var_0.a), !vec4<bool>(var_0.a, func_5(true, vec4<i32>(global0.x, -2147483647i, -17586i, 2491i)).a, true, true), var_0.a), true == (_wgslsmith_sub_i32(~u_input.c, ~u_input.a.x) >= ~_wgslsmith_dot_vec3_i32(u_input.a, u_input.a)), global0.x);
    global2 = ~vec2<u32>(global2.x, _wgslsmith_sub_u32(~global2.x, 24932u));
    global1 = array<Struct_2, 31>();
    var var_2 = !var_1.c.x;
    return _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, ~(~abs(79469u))), (~(~vec2<u32>(global2.x, global2.x)) | _wgslsmith_div_vec2_u32(max(vec2<u32>(global2.x, 1u), vec2<u32>(41598u, 1610u)), firstTrailingBit(vec2<u32>(1u, u_input.b)))) >> (_wgslsmith_sub_vec2_u32(~vec2<u32>(global2.x, 1116u), ~vec2<u32>(global2.x, 8320u) << (abs(vec2<u32>(39715u, 0u)) % vec2<u32>(32u))) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-233f, 1257f, 1244f)))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1f, 1f, 1f)))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, _wgslsmith_f_op_f32(max(1482f, -612f)), -1490f), vec3<f32>(692f, _wgslsmith_f_op_f32(f32(-1f) * -1126f), _wgslsmith_f_op_f32(round(1249f)))))));
    global0 = abs(u_input.a);
    let var_0 = _wgslsmith_mult_vec3_u32(~(~(~vec3<u32>(global2.x, u_input.b, u_input.b))) ^ select(vec3<u32>(~u_input.b, select(45750u, global2.x, true), ~4294967295u), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(global2.x, global2.x, u_input.b)), vec3<u32>(u_input.b, u_input.b, 76470u)), vec3<bool>(true, true, true)), vec3<u32>(global2.x ^ ~global2.x, ~min(u_input.b, _wgslsmith_div_u32(u_input.b, 14919u)), u_input.b));
    global2 = ~select(firstLeadingBit(var_0.xy), firstTrailingBit(var_0.yz) | reverseBits(_wgslsmith_mod_vec2_u32(var_0.yx, vec2<u32>(41964u, var_0.x))), global2.x != _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 36590u, 1u, 4294967295u), ~vec4<u32>(var_0.x, 40405u, 4294967295u, 1u)));
    let var_1 = vec3<u32>(1u, u_input.b, _wgslsmith_div_u32(u_input.b, _wgslsmith_div_u32(~_wgslsmith_add_u32(global2.x, global2.x), countOneBits(firstTrailingBit(global2.x)))));
    var var_2 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(u_input.b << (global2.x % 32u), 87442u, u_input.b)), firstLeadingBit(max(vec3<u32>(9445u, 1u, global2.x), abs(vec3<u32>(36384u, 1u, u_input.b))))), abs(~max(-1i, 1i)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-676f)) * _wgslsmith_f_op_f32(1000f - -1441f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-337f - _wgslsmith_f_op_f32(round(215f))))))));
}

