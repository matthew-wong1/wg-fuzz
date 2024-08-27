struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: bool,
    d: bool,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: array<vec2<f32>, 19> = array<vec2<f32>, 19>(vec2<f32>(-530f, 1000f), vec2<f32>(-654f, 123f), vec2<f32>(1000f, 1329f), vec2<f32>(2674f, -1259f), vec2<f32>(-329f, -832f), vec2<f32>(404f, -298f), vec2<f32>(-682f, 402f), vec2<f32>(-491f, -253f), vec2<f32>(-1000f, 206f), vec2<f32>(940f, -1000f), vec2<f32>(876f, -2015f), vec2<f32>(801f, 199f), vec2<f32>(554f, 1412f), vec2<f32>(286f, -277f), vec2<f32>(657f, -1487f), vec2<f32>(888f, -811f), vec2<f32>(389f, -718f), vec2<f32>(536f, 1000f), vec2<f32>(312f, -872f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = Struct_1(select(!arg_3.a, !(!(!vec4<bool>(true, arg_1, false, false))), vec4<bool>(arg_3.e.x == arg_2, false, true, arg_1)), arg_3.b, arg_0.x, !(_wgslsmith_f_op_f32(-arg_3.e.x) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-356f, arg_2)) * _wgslsmith_f_op_f32(arg_3.e.x + arg_2))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_3.e.x)))), global1[_wgslsmith_index_u32(reverseBits(arg_3.b), 19u)])));
    var var_1 = ~(_wgslsmith_div_vec2_i32(select(vec2<i32>(u_input.a.x, -2147483647i), vec2<i32>(0i, u_input.a.x), any(arg_0)), u_input.a.zx) & ((u_input.a.zz & u_input.a.zz) | firstLeadingBit(reverseBits(u_input.a.yz))));
    var_0 = global0[_wgslsmith_index_u32(28014u, 8u)];
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1749f);
    var var_3 = arg_3;
    return !(!vec4<bool>(firstTrailingBit(-17305i) < -var_1.x, var_3.a.x, arg_1, var_3.a.x));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = all(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(1u < arg_0, true, false), !all(vec2<bool>(false, true))));
    var_0 = !(select(true, any(vec4<bool>(true, true, true, true)), false) & false);
    global0 = array<Struct_1, 8>();
    var_0 = !(_wgslsmith_f_op_f32(ceil(-1129f)) > 1919f) && true;
    let var_1 = Struct_1(select(vec4<bool>(all(vec2<bool>(true, true)), true, any(vec4<bool>(false, true, true, true)) & all(vec2<bool>(true, true)), false), vec4<bool>((-24942i != u_input.a.x) & true, all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(max(-1501f, -1538f)) <= _wgslsmith_f_op_f32(sign(163f)), true), select(func_3(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), false), any(vec4<bool>(false, false, false, false)), -1059f, global0[_wgslsmith_index_u32(arg_0, 8u)]), vec4<bool>(true, true, true, true), true)), _wgslsmith_clamp_u32(~(~30664u), arg_0, 0u), false, false, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-516f - -526f) - _wgslsmith_f_op_f32(f32(-1f) * -1593f))), -356f));
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: u32) -> Struct_1 {
    global0 = array<Struct_1, 8>();
    let var_0 = vec4<bool>(countOneBits(_wgslsmith_mult_u32(57483u, firstTrailingBit(0u))) < select(abs(_wgslsmith_div_u32(arg_3, 29903u)), ~abs(44673u), any(arg_0.a.xxy)), select(any(arg_0.a), any(arg_1.a), arg_0.d), _wgslsmith_f_op_f32(abs(-1772f)) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2157f - arg_0.e.x)), _wgslsmith_f_op_f32(-arg_2.x)), true);
    var var_1 = max(_wgslsmith_dot_vec3_i32(-u_input.a, -(~(-vec3<i32>(u_input.a.x, u_input.a.x, -26245i)))), -u_input.a.x);
    let var_2 = _wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(1u, 32439u, _wgslsmith_mod_u32(arg_0.b, 23499u), ~4294967295u) ^ ~(vec4<u32>(arg_1.b, arg_3, 25663u, 7759u) | vec4<u32>(4294967295u, 4294967295u, arg_3, arg_0.b))), select(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_0.b, 1u, arg_0.b, arg_1.b), countOneBits(vec4<u32>(1u, arg_0.b, arg_1.b, 1u)), reverseBits(vec4<u32>(4294967295u, 15369u, arg_0.b, arg_3))), vec4<u32>(32562u, countOneBits(arg_3) >> (arg_1.b % 32u), ~55306u, _wgslsmith_div_u32(countOneBits(0u), 16468u)), false), vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b, 11773u, 15455u, arg_1.b), ~vec4<u32>(arg_0.b, arg_1.b, 11173u, 4294967295u)), 7566u), ~arg_3, arg_1.b, arg_0.b));
    let var_3 = _wgslsmith_f_op_vec2_f32(-arg_1.e);
    return func_2(~4294967295u);
}

fn func_1(arg_0: Struct_1) -> StorageBuffer {
    let var_0 = global0[_wgslsmith_index_u32(arg_0.b, 8u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(-arg_0.e);
    let var_2 = func_4(func_2(_wgslsmith_mult_u32(_wgslsmith_mod_u32(4294967295u, ~var_0.b), ~(~arg_0.b))), func_2(abs(0u) ^ arg_0.b), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 2117f, 195f, var_0.e.x) - vec4<f32>(324f, -469f, arg_0.e.x, 1670f)))))), var_0.b);
    let var_3 = func_2(func_4(func_2(var_0.b), global0[_wgslsmith_index_u32(var_2.b, 8u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1342f + var_0.e.x), 635f, _wgslsmith_f_op_f32(-var_2.e.x), -228f)), _wgslsmith_mult_u32(var_2.b, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, arg_0.b), abs(vec2<u32>(1u, var_0.b))))).b).b;
    let var_4 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e.x, -255f, var_2.e.x) - vec3<f32>(-1483f, var_1.x, 1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.x, -221f, -2253f)))), select(vec3<bool>(arg_0.c, false, var_0.c), func_2(var_3).a.wzw, func_2(1u).a.wyw))) + vec3<f32>(_wgslsmith_f_op_f32(max(arg_0.e.x, 1026f)), _wgslsmith_f_op_f32(min(-570f, 696f)), func_2(~42584u).e.x))));
    return StorageBuffer(abs(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(11715u, var_2.b), arg_0.b), var_3, var_2.b)), _wgslsmith_f_op_f32(max(476f, 563f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 19>();
    let var_0 = global1[_wgslsmith_index_u32(0u, 19u)];
    let var_1 = u_input.a;
    var var_2 = Struct_1(vec4<bool>(true, any(vec4<bool>(true, true, true, true)), true, true), ~(~1u), !(_wgslsmith_add_u32(_wgslsmith_sub_u32(32271u, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(31921u, 1u, 906u), vec3<u32>(9722u, 4294967295u, 47426u))) <= ~35484u), any(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), false))), global1[_wgslsmith_index_u32(1u, 19u)]);
    let var_3 = -abs(~(countOneBits(var_1) << (vec3<u32>(0u, var_2.b, var_2.b) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = func_1(Struct_1(!select(var_2.a, !vec4<bool>(true, var_2.a.x, var_2.d, false), var_2.c), ~21801u, true, var_2.a.x, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, var_2.b, var_2.b), vec3<u32>(21450u, var_2.b, 0u)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_2.b, var_2.b, 0u), vec3<u32>(4294967295u, var_2.b, 4294967295u))), 19u)]));
}

