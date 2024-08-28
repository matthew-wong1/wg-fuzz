struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec3<bool>,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: u32,
}

struct Struct_5 {
    a: u32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -452f;

var<private> global1: vec2<f32>;

var<private> global2: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<i32>(9344i, 24470i), i32(-2147483648), vec3<bool>(false, false, true), -901f, vec4<bool>(true, true, true, false)), Struct_1(vec2<i32>(-1i, -1i), -8972i, vec3<bool>(false, true, false), 1563f, vec4<bool>(false, true, true, true)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: vec4<i32>) -> f32 {
    var var_0 = u_input.a.x;
    var var_1 = _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32((arg_2 | -vec4<i32>(arg_1.x, u_input.e.x, 1i, -14808i)) & arg_2, -reverseBits(-vec4<i32>(-1i, u_input.d, 0i, 2147483647i))), vec4<i32>(arg_2.x, _wgslsmith_mult_i32(~arg_1.x, _wgslsmith_mult_i32(u_input.c, 10386i)), -39965i, u_input.c) << (~firstTrailingBit(~u_input.a) % vec4<u32>(32u)));
    let var_2 = global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.b, min(_wgslsmith_div_u32(u_input.a.x, arg_0.a), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(4294967295u, arg_0.a, u_input.b, u_input.a.x)))) >> (0u % 32u), 2u)];
    var var_3 = arg_0.b;
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -962f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1928f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d)))))));
    return -183f;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2) -> Struct_3 {
    var var_0 = vec4<f32>(267f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-623f, 538f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, arg_1.a.d)), abs(~u_input.b) == ~(~4294967295u))), _wgslsmith_f_op_f32(ceil(639f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_5(~u_input.b, arg_1.a.c.xy), u_input.e, vec4<i32>(_wgslsmith_sub_i32(-2147483647i, u_input.c), reverseBits(arg_1.a.b), ~u_input.d, ~arg_1.a.b)))));
    var var_1 = 4294967295u;
    var_1 = min(0u, _wgslsmith_mod_u32(1u, u_input.b));
    let var_2 = vec3<i32>(1i << (u_input.a.x % 32u), 2147483647i << ((1u << (~(u_input.b & 1u) % 32u)) % 32u), ~(~(-44947i)));
    global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(104f, -680f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1111f))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(min(284f, 375f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(219f, var_0.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, global1.x)))));
    return Struct_3(_wgslsmith_sub_vec2_u32(u_input.a.yx << (u_input.a.yy % vec2<u32>(32u)), reverseBits(_wgslsmith_div_vec2_u32(u_input.a.zw, vec2<u32>(u_input.a.x, u_input.b))) | ~_wgslsmith_clamp_vec2_u32(vec2<u32>(24109u, u_input.b), vec2<u32>(25133u, u_input.b), vec2<u32>(66193u, u_input.b))), -1i);
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_4) -> Struct_4 {
    let var_0 = false;
    let var_1 = 4294967295u;
    global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - arg_1)) - arg_1), -2079f) * vec2<f32>(global1.x, arg_1));
    let var_2 = func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1380f, global1.x, 1088f, global1.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(659f, 1065f, arg_1, arg_1)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-513f, global1.x, -485f, 1085f))))))), Struct_2(global2[_wgslsmith_index_u32(12181u, 2u)]));
    global2 = array<Struct_1, 2>();
    return arg_2;
}

fn func_4(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: i32) -> vec4<bool> {
    var var_0 = 4294967295u;
    return select(select(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false))), vec4<bool>(true, true, true, true), select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, false, false))), select(!vec4<bool>(any(vec3<bool>(true, true, false)), true, false, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), 0i < arg_0.b), vec4<bool>(true, all(vec2<bool>(false, false)), true, -782f >= global1.x), true), vec4<bool>(true, true, true, true)), vec4<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true)), true, !all(vec4<bool>(true, false, true, false)), true));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: Struct_4) -> vec2<f32> {
    var var_0 = -(~(-vec4<i32>(arg_1.b, ~(-5318i), u_input.d, _wgslsmith_div_i32(-1i, -21339i))));
    var var_1 = Struct_2(global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(firstTrailingBit(48450u), _wgslsmith_div_u32(~u_input.b, firstTrailingBit(1u))), 2u)]);
    var_0 = select(vec4<i32>(_wgslsmith_div_i32(firstLeadingBit(0i), -16276i), var_0.x, -(~u_input.e.x), -_wgslsmith_sub_i32(2147483647i, arg_2.b)) << (_wgslsmith_sub_vec4_u32(~u_input.a, vec4<u32>(arg_1.c ^ u_input.a.x, ~arg_1.a, 24545u, abs(38991u))) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(abs(select(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, 2147483647i, u_input.e.x, u_input.d), vec4<i32>(arg_2.b, var_1.a.a.x, 21054i, 0i)), firstTrailingBit(vec4<i32>(arg_1.b, var_0.x, 2147483647i, arg_1.b)), true)), ~abs(firstTrailingBit(vec4<i32>(1i, u_input.e.x, 1i, u_input.d))), -(~vec4<i32>(arg_1.b, var_0.x, -16345i, var_0.x) ^ max(vec4<i32>(0i, 29678i, -153i, var_1.a.b), vec4<i32>(arg_2.b, var_1.a.a.x, arg_2.b, arg_1.b)))), true);
    var var_2 = Struct_2(var_1.a);
    let var_3 = var_0.xyw;
    return vec2<f32>(_wgslsmith_f_op_f32(min(-878f, global1.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-642f, var_1.a.d, func_4(arg_2, vec3<f32>(904f, 1000f, 955f), var_0.x).x)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1763f + var_1.a.d)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(func_5(func_4(func_1(vec3<i32>(_wgslsmith_add_i32(u_input.c, -11868i), abs(u_input.c), 9138i << (u_input.a.x % 32u)), -1000f, Struct_4(0u >> (u_input.b % 32u), u_input.e.x, ~u_input.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(617f, 540f, global1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-833f, -181f, global1.x)), true))), reverseBits(1i)), Struct_4(~(~u_input.b << ((0u ^ u_input.b) % 32u)), -_wgslsmith_add_i32(~1i, u_input.c), ~(firstLeadingBit(u_input.b) & 1u)), func_1(~countOneBits(vec3<i32>(u_input.e.x, 20181i, u_input.d) ^ vec3<i32>(1i, 1894i, 1i)), _wgslsmith_f_op_f32(-597f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.x, global1.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1769f))), Struct_4(4294967295u, -_wgslsmith_mod_i32(u_input.c, 32377i), _wgslsmith_add_u32(u_input.a.x, 70047u)))));
    var var_0 = Struct_5(_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.a.zz), u_input.a.zw | u_input.a.xx), func_2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.x, global1.x, -413f, global1.x))), Struct_2(global2[_wgslsmith_index_u32(4294967295u, 2u)])).a.x), u_input.b), !(!func_4(Struct_4(5240u, 0i, u_input.a.x), vec3<f32>(625f, global1.x, 998f), 2147483647i).zy));
    global2 = array<Struct_1, 2>();
    var var_1 = 12960u;
    var var_2 = func_4(func_1(max(~vec3<i32>(-1i, u_input.c, 5486i), _wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.e.x, u_input.e.x, u_input.c), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, 2147483647i, 24895i), vec3<i32>(16617i, -1i, -57116i)))), -387f, Struct_4(35726u, u_input.e.x, 50734u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-global1.x)), global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), -213f))), u_input.c);
    var_0 = Struct_5(22082u, var_0.b);
    var_0 = Struct_5(~0u, var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(~1u, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(-global1.x)), global1.x))), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(22023i, -6427i, -2147483647i, -26007i), vec4<i32>(~u_input.d, i32(-1i) * -6509i, -2147483647i, -14405i ^ u_input.c)), -(~vec4<i32>(-1i, u_input.c, 1i, u_input.d)) | (~vec4<i32>(u_input.e.x, u_input.c, u_input.d, u_input.c) ^ abs(vec4<i32>(-2147483647i, u_input.e.x, u_input.c, -2147483647i)))), abs(~firstTrailingBit(u_input.a ^ u_input.a)));
}

