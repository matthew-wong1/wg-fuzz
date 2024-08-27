struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 30>;

var<private> global1: bool;

var<private> global2: vec3<i32> = vec3<i32>(66554i, -8676i, 19464i);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec2<bool>) -> Struct_1 {
    global1 = arg_0.a;
    return Struct_1(arg_2.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1700f, 738f, arg_0.c.x), vec3<f32>(-1000f, arg_0.c.x, -2907f))), vec3<f32>(506f, 1305f, 436f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.b.x, -247f, -162f))) * vec3<f32>(arg_0.b.x, 152f, arg_0.c.x))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b), _wgslsmith_f_op_vec3_f32(arg_0.b * vec3<f32>(arg_0.c.x, -1440f, -581f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.c.x)) - _wgslsmith_f_op_f32(abs(arg_0.c.x))), 1737f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x - -1978f))) - arg_0.b));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<f32>) -> Struct_2 {
    global1 = arg_0.a;
    global0 = array<vec3<bool>, 30>();
    let var_0 = arg_0;
    var var_1 = !(arg_0.a && !all(vec2<bool>(var_0.a, var_0.a)));
    let var_2 = func_1(Struct_1(true, vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.x - arg_0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1477f))), -727f, arg_0.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1166f, -143f, -353f) * _wgslsmith_f_op_vec3_f32(exp2(arg_0.b))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.c), vec3<f32>(arg_0.b.x, 1049f, arg_2.x), true)))), vec3<u32>(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(u_input.d.x, u_input.a, u_input.c.x))), 1u & _wgslsmith_mod_u32(min(u_input.d.x, u_input.a), u_input.a), 1u), vec2<bool>(true, any(global0[_wgslsmith_index_u32(abs(~30373u), 30u)])));
    return Struct_2(_wgslsmith_mult_vec2_u32(min(_wgslsmith_div_vec2_u32(u_input.c.zw, u_input.c.yz), vec2<u32>(abs(u_input.d.x), _wgslsmith_dot_vec2_u32(u_input.c.xw, vec2<u32>(u_input.c.x, u_input.d.x)))), vec2<u32>((u_input.d.x | 4294967295u) >> (~u_input.a % 32u), ~(~u_input.d.x))), firstTrailingBit(_wgslsmith_mod_u32(~u_input.c.x & (u_input.a ^ u_input.a), ~(u_input.d.x ^ u_input.a))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    let var_0 = func_1(arg_0, _wgslsmith_clamp_vec3_u32(~max(u_input.d.xxx, vec3<u32>(arg_2.a.x, 43120u, arg_3)) ^ vec3<u32>(abs(46808u), _wgslsmith_dot_vec3_u32(u_input.d.wwx, vec3<u32>(0u, arg_2.a.x, u_input.c.x)), ~0u), u_input.c.xzz, vec3<u32>(u_input.c.x, _wgslsmith_div_u32(_wgslsmith_mult_u32(arg_2.a.x, 0u), arg_1), 4294967295u | (arg_1 >> (u_input.d.x % 32u)))), select(!vec2<bool>(true, any(global0[_wgslsmith_index_u32(u_input.a, 30u)])), vec2<bool>(any(!vec4<bool>(arg_0.a, false, arg_0.a, true)), min(arg_3, arg_3) == ~u_input.d.x), false));
    global2 = -_wgslsmith_sub_vec3_i32(select(vec3<i32>(1i, global2.x, _wgslsmith_mult_i32(u_input.b, -1i)), vec3<i32>(i32(-1i) * -17078i, _wgslsmith_div_i32(global2.x, u_input.b), 17329i), !select(vec3<bool>(true, false, false), global0[_wgslsmith_index_u32(1u, 30u)], var_0.a)), (abs(vec3<i32>(-27480i, -489i, global2.x)) ^ countOneBits(vec3<i32>(global2.x, 0i, 14798i))) & vec3<i32>(firstLeadingBit(1i), -u_input.e.x, -8905i));
    let var_1 = select(global2.x, 0i, select(var_0.a, true, _wgslsmith_f_op_f32(-arg_0.b.x) <= -552f));
    let var_2 = arg_0.b;
    var var_3 = arg_2;
    return arg_2;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec3<f32>) -> Struct_2 {
    let var_0 = func_3(func_1(func_1(func_1(func_1(Struct_1(true, arg_2, vec3<f32>(arg_2.x, arg_2.x, -701f)), u_input.c.wzx, vec2<bool>(true, false)), u_input.c.yyy, select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))), u_input.d.ywy, vec2<bool>(func_1(Struct_1(true, vec3<f32>(arg_2.x, arg_2.x, arg_2.x), vec3<f32>(arg_2.x, arg_2.x, 518f)), u_input.c.xzw, vec2<bool>(true, false)).a, select(false, true, true))), select(vec3<u32>(func_2(Struct_1(false, vec3<f32>(-1575f, -1216f, arg_2.x), arg_2), vec4<f32>(505f, 1294f, 1704f, -459f), arg_2).a.x, arg_0.a.x | u_input.d.x, arg_0.b >> (0u % 32u)), ~abs(vec3<u32>(4294967295u, 42241u, 1u)), select(global0[_wgslsmith_index_u32(reverseBits(1u), 30u)], select(global0[_wgslsmith_index_u32(17707u, 30u)], vec3<bool>(false, false, false), global0[_wgslsmith_index_u32(29114u, 30u)]), false)), vec2<bool>(true, any(vec4<bool>(true, false, false, true)) == true)), _wgslsmith_clamp_u32(u_input.a << (u_input.a % 32u), ~(~66134u), ~1u), func_3(func_1(func_1(Struct_1(true, arg_2, vec3<f32>(-1350f, -2530f, -163f)), u_input.c.xyz, vec2<bool>(true, true)), ~u_input.c.zxz, select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), false)), ~25469u, Struct_2(~vec2<u32>(4294967295u, arg_0.b) << (~u_input.c.zw % vec2<u32>(32u)), firstLeadingBit(1u)), _wgslsmith_dot_vec3_u32(~u_input.d.yzx, vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), _wgslsmith_clamp_u32(arg_0.a.x, u_input.d.x, u_input.d.x), abs(42646u)))), (_wgslsmith_sub_u32(u_input.d.x, _wgslsmith_div_u32(14107u, 21403u)) | u_input.c.x) << (~arg_0.a.x % 32u)).a;
    global2 = _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(8474i, -19992i, global2.x)), (arg_1.yzy << (vec3<u32>(1u, u_input.c.x, var_0.x) % vec3<u32>(32u))) & vec3<i32>(1i, global2.x, arg_1.x)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -5854i, global2.x, 1i), countOneBits(arg_1)), _wgslsmith_mult_i32(-28512i, firstTrailingBit(global2.x)), firstTrailingBit(19998i))) << (~(~u_input.d.yxw) % vec3<u32>(32u));
    global2 = _wgslsmith_sub_vec3_i32(-arg_1.wwy, select(-(~select(vec3<i32>(u_input.e.x, 44297i, -1757i), arg_1.yyy, vec3<bool>(true, false, true))), _wgslsmith_div_vec3_i32(vec3<i32>(-global2.x, _wgslsmith_mult_i32(1i, u_input.e.x), _wgslsmith_clamp_i32(u_input.e.x, global2.x, 0i)), ~arg_1.xwy), -39484i >= _wgslsmith_dot_vec3_i32(select(arg_1.xyz, arg_1.yyz, false), _wgslsmith_mod_vec3_i32(arg_1.zwx, arg_1.wzw))));
    var var_1 = Struct_1(any(vec4<bool>(any(global0[_wgslsmith_index_u32(29403u, 30u)]), true, true, any(vec2<bool>(true, true)))) || (!all(vec3<bool>(false, false, false)) && true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-arg_2), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, 1000f, arg_2.x)))))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.x, 422f, -164f), arg_2))))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_2.x, arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * _wgslsmith_f_op_f32(min(arg_2.x, 704f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_2.x, arg_2.x), _wgslsmith_f_op_f32(-arg_2.x), arg_2.x)))));
    var var_2 = !var_1.a;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_3(func_1(Struct_1(false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1576f, -556f, -462f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1173f, -313f, -562f))), vec3<u32>(u_input.d.x, _wgslsmith_mult_u32(28447u, 19507u), u_input.d.x), vec2<bool>(true, true)), u_input.d.x, func_2(Struct_1(all(vec2<bool>(false, false)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(984f, 1240f, 1181f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-267f, -807f, 584f))), vec4<f32>(func_1(Struct_1(true, vec3<f32>(924f, -1000f, -1150f), vec3<f32>(-292f, 1000f, -513f)), u_input.c.zwy, vec2<bool>(false, true)).b.x, _wgslsmith_f_op_f32(step(1890f, 977f)), -1482f, _wgslsmith_f_op_f32(1000f - -2206f)), vec3<f32>(_wgslsmith_div_f32(-147f, 787f), _wgslsmith_div_f32(-511f, -2075f), 1111f)), _wgslsmith_mod_u32(0u, ~u_input.d.x) & u_input.c.x), vec4<i32>(global2.x, ~(~u_input.b), _wgslsmith_mod_i32(-29011i, 19327i) & global2.x, 22527i) ^ vec4<i32>(21400i, i32(-1i) * -1i, -17797i, _wgslsmith_clamp_i32(-global2.x, 1i, firstTrailingBit(u_input.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(717f, -164f, -1000f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-363f, -321f, 722f), vec3<f32>(721f, 1955f, -1234f), true))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1039f, 503f, -572f), vec3<f32>(-409f, -1311f, -1651f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-114f, 850f, -1604f)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(817f, -385f, -1207f), vec3<f32>(-1501f, -1443f, -622f)))))));
    let var_1 = Struct_2(abs(u_input.d.xw), var_0.b);
    let var_2 = func_1(func_1(func_1(func_1(func_1(Struct_1(true, vec3<f32>(-538f, -380f, -1229f), vec3<f32>(160f, 1041f, 111f)), u_input.c.yyw, vec2<bool>(false, true)), _wgslsmith_mod_vec3_u32(u_input.c.wyy, vec3<u32>(var_0.a.x, 0u, 4294967295u)), vec2<bool>(true, true)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.a.x, var_1.b, 36767u) << (vec3<u32>(u_input.c.x, var_1.b, 2079u) % vec3<u32>(32u)), u_input.d.ywz), vec2<bool>(true, true)), ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d.x, var_0.b, var_1.b), vec3<u32>(1u, 84889u, 8375u))), select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), true), vec2<bool>(true, false), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)))), firstLeadingBit(min(_wgslsmith_add_vec3_u32(u_input.d.xxy, _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 23104u, var_1.a.x), u_input.c.yyx, vec3<u32>(var_0.a.x, 47460u, 76578u))), _wgslsmith_div_vec3_u32(vec3<u32>(8537u, 4294967295u, var_0.a.x), vec3<u32>(12549u, 42418u, var_1.a.x)) & ~vec3<u32>(34327u, u_input.c.x, var_0.b))), select(vec2<bool>(false, true), vec2<bool>(true, true & (u_input.b == -7153i)), false));
    var var_3 = var_2;
    global2 = ~vec3<i32>(firstLeadingBit(u_input.e.x), -u_input.e.x, min(global2.x, global2.x));
    global0 = array<vec3<bool>, 30>();
    var_3 = var_2;
    global1 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(global2.x, 0u);
}

