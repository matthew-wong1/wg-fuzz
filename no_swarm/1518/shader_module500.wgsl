struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: bool,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<i32>, 19>;

var<private> global2: array<vec4<bool>, 12>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<u32>) -> vec3<f32> {
    let var_0 = Struct_1(select(u_input.a.zxy, vec3<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a.zzx, u_input.a.xyw), _wgslsmith_div_vec3_i32(u_input.a.wxz, u_input.a.xzx)), _wgslsmith_mult_i32(u_input.a.x & -2147483647i, ~(-2147483647i))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false)), any(vec3<bool>(true, true, false)))), !select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)))), any(select(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), vec3<bool>(all(vec3<bool>(true, false, true)), true, false), any(vec2<bool>(false, false)))), 1u, vec4<i32>(~2147483647i, -u_input.a.x, 2147483647i, -7718i));
    var var_1 = ~_wgslsmith_div_u32(129154u, arg_1.x);
    var var_2 = vec4<i32>(u_input.a.x, -abs(981i), i32(-1i) * -16389i, -62901i);
    var var_3 = arg_0.x;
    var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_f32(-786f, arg_0.x)), arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-arg_0.x))), 1280f)));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)), _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, 1000f), vec2<f32>(-281f, arg_0), true)), vec3<u32>(arg_1.x, 1u, 7876u)))))))));
    global1 = array<vec2<i32>, 19>();
    global2 = array<vec4<bool>, 12>();
    let var_1 = u_input.a.x;
    global1 = array<vec2<i32>, 19>();
    return ~_wgslsmith_div_i32(abs(i32(-1i) * -3846i), -75427i);
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = u_input.a.xy;
    var var_1 = -1043f;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + arg_1) + _wgslsmith_f_op_f32(ceil(-943f)));
    var_1 = 518f;
    var var_3 = Struct_1(_wgslsmith_mod_vec3_i32(~select(u_input.a.zyz, arg_0, vec3<bool>(false, false, true)), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(arg_0.x, var_0.x), var_0.x), _wgslsmith_div_i32(~var_0.x, _wgslsmith_mod_i32(1i, 2147483647i)), var_0.x)), !select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), !select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(all(global2[_wgslsmith_index_u32(4294967295u, 12u)]), true)), (499f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(736f)) - -1845f)) & !(_wgslsmith_f_op_f32(-var_2) == -434f), firstTrailingBit(4294967295u), -arg_2);
    return Struct_1(var_3.e.yyx, select(vec2<bool>(true, var_3.b.x | (arg_0.x != var_0.x)), !select(!var_3.b, var_3.b, select(var_3.b, vec2<bool>(var_3.c, true), var_3.c)), vec2<bool>(false, !select(var_3.c, true, var_3.b.x))), all(!var_3.b), ~var_3.d, select(abs(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_3.e.x, var_0.x), vec3<i32>(var_0.x, -21554i, arg_2.x)), ~(-1i), ~arg_2.x, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x))), _wgslsmith_mod_vec4_i32(arg_2 | var_3.e, var_3.e << (vec4<u32>(u_input.b, 85183u, var_3.d, var_3.d) % vec4<u32>(32u))), select(select(select(vec4<bool>(false, var_3.c, var_3.b.x, true), global2[_wgslsmith_index_u32(var_3.d, 12u)], vec4<bool>(false, var_3.c, true, false)), select(global2[_wgslsmith_index_u32(u_input.b, 12u)], global2[_wgslsmith_index_u32(44044u, 12u)], global2[_wgslsmith_index_u32(1563u, 12u)]), vec4<bool>(true, var_3.c, true, var_3.c)), global2[_wgslsmith_index_u32(firstTrailingBit(firstLeadingBit(u_input.b)), 12u)], var_3.b.x)));
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = func_4(u_input.a.ywy, _wgslsmith_f_op_f32(-317f + 1245f), -vec4<i32>(func_2(_wgslsmith_div_f32(-749f, 1729f), ~vec3<u32>(1u, u_input.b, 0u)), 13618i, _wgslsmith_mod_i32(i32(-1i) * -64008i, ~(-66547i)), i32(-1i) * -16698i));
    var var_1 = func_4(-vec3<i32>(_wgslsmith_dot_vec4_i32(var_0.e >> (vec4<u32>(u_input.b, 4294967295u, var_0.d, 1u) % vec4<u32>(32u)), firstTrailingBit(u_input.a)), -11219i, var_0.e.x), 793f, -(_wgslsmith_mult_vec4_i32(~u_input.a, _wgslsmith_sub_vec4_i32(u_input.a, var_0.e)) | -var_0.e));
    let var_2 = func_4(u_input.a.xww, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -565f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1124f - -3453f) - _wgslsmith_f_op_f32(f32(-1f) * -1257f))))), min(~(var_0.e << (~vec4<u32>(0u, var_0.d, 31251u, 7472u) % vec4<u32>(32u))), u_input.a));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1826f);
    var_0 = var_2;
    return var_2;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>) -> f32 {
    var var_0 = arg_1;
    var var_1 = arg_1;
    var var_2 = Struct_1(_wgslsmith_mult_vec3_i32(abs(var_1.a) << ((~vec3<u32>(1u, var_0.d, 0u) ^ ~vec3<u32>(var_0.d, var_0.d, 46362u)) % vec3<u32>(32u)), vec3<i32>(~firstTrailingBit(u_input.a.x), 27553i, reverseBits(var_0.a.x) | ~var_0.a.x)), vec2<bool>(arg_1.b.x && true, arg_1.b.x), arg_1.b.x, ~_wgslsmith_mod_u32(~func_1(global2[_wgslsmith_index_u32(var_0.d, 12u)]).d, 45804u), ~vec4<i32>(18921i, arg_1.a.x, min(u_input.a.x >> (arg_1.d % 32u), var_1.a.x), ~(~arg_1.a.x)));
    let var_3 = Struct_1(_wgslsmith_mod_vec3_i32(max(vec3<i32>(u_input.a.x, -17022i, 0i), vec3<i32>(var_1.e.x, u_input.a.x, -2147483647i)), ~min(var_0.e.xwx, vec3<i32>(0i, u_input.a.x, 329i))) | select(vec3<i32>(var_2.a.x, ~var_0.a.x, ~var_2.e.x), select(vec3<i32>(var_1.a.x, var_0.a.x, var_1.a.x), u_input.a.yyw ^ var_2.a, false), true), select(!select(func_4(vec3<i32>(u_input.a.x, 24961i, -2147483647i), -850f, vec4<i32>(1i, u_input.a.x, var_0.a.x, 31626i)).b, vec2<bool>(true, true), arg_2.x), func_4(vec3<i32>(~var_1.e.x, i32(-1i) * -32143i, -u_input.a.x), 1042f, vec4<i32>(-69527i & var_0.e.x, 1i, 0i, -34267i)).b, false), false, _wgslsmith_add_u32(87488u, 0u), vec4<i32>(~select(0i, 1i, any(vec3<bool>(true, var_2.b.x, true))), abs(var_0.e.x), ~_wgslsmith_mod_i32(_wgslsmith_sub_i32(-26561i, -2147483647i), ~var_1.a.x), func_1(!select(vec4<bool>(arg_1.b.x, false, var_2.b.x, arg_2.x), vec4<bool>(var_0.b.x, false, false, true), arg_2)).a.x));
    var var_4 = select(func_4(var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(arg_0)))) - _wgslsmith_f_op_f32(floor(161f))), abs(~var_0.e)).b, !select(arg_2.zz, !var_3.b, arg_2.x), !(!(!(!var_3.b.x))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-451f)) + -790f) * _wgslsmith_f_op_f32(ceil(-749f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_f32(abs(-1445f)), func_1(vec4<bool>(true, false, true, true)), select(global2[_wgslsmith_index_u32(74247u, 12u)], vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -967f)));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -765f);
    var var_2 = max(vec3<u32>(firstLeadingBit(u_input.b ^ 66655u) | select(2720u, 20103u, true), u_input.b, ~(_wgslsmith_div_u32(19686u, u_input.b) << (1u % 32u))), vec3<u32>(_wgslsmith_dot_vec2_u32(~firstTrailingBit(vec2<u32>(15228u, 31673u)), min(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 42329u)), vec2<u32>(u_input.b, 104223u))), func_1(select(vec4<bool>(false, true, true, false), global2[_wgslsmith_index_u32(~u_input.b, 12u)], vec4<bool>(false, false, false, false))).d, _wgslsmith_sub_u32(u_input.b, ~1u) << ((_wgslsmith_add_u32(u_input.b, u_input.b) ^ ~u_input.b) % 32u)));
    global2 = array<vec4<bool>, 12>();
    var var_3 = _wgslsmith_mult_vec3_i32(u_input.a.zzx, vec3<i32>(_wgslsmith_add_i32(select(u_input.a.x, 2147483647i, true), firstTrailingBit(-2082i)), -38948i, ~abs(u_input.a.x)) << (vec3<u32>(~(~8802u), 4294967295u, 4294967295u) % vec3<u32>(32u)));
    let var_4 = ~(~_wgslsmith_add_vec2_u32(~select(var_2.xx, vec2<u32>(var_2.x, u_input.b), vec2<bool>(true, true)), var_2.yx));
    var var_5 = ~func_2(_wgslsmith_f_op_f32(-var_0.x), vec3<u32>(~1u, 1u, 21753u ^ func_1(vec4<bool>(true, true, false, false)).d));
    var_3 = ~u_input.a.ywx | vec3<i32>(2147483647i, u_input.a.x, 2147483647i);
    let var_6 = _wgslsmith_div_i32(u_input.a.x, _wgslsmith_add_i32(-abs(~(-38418i)), countOneBits(firstTrailingBit(i32(-1i) * -2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x);
}

