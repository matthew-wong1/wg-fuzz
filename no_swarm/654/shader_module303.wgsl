struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

var<private> global1: array<Struct_1, 1>;

var<private> global2: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> i32 {
    let var_0 = !select(select(!vec4<bool>(true, global2.d, true, global2.d), select(vec4<bool>(true, false, global2.d, global2.d), vec4<bool>(true, false, global2.d, false), global2.d), vec4<bool>(true, false, global2.d, any(vec4<bool>(global2.d, global2.d, global2.d, global2.d)))), vec4<bool>(!(u_input.a > u_input.b.x), any(vec4<bool>(true, true, global2.d, false)) && (u_input.c.x >= global2.c), true & (false || global2.d), global2.d), select(select(select(vec4<bool>(global2.d, global2.d, global2.d, global2.d), vec4<bool>(global2.d, false, false, global2.d), global2.d), !vec4<bool>(false, global2.d, global2.d, false), vec4<bool>(global2.d, false, false, false)), !select(vec4<bool>(global2.d, global2.d, false, global2.d), vec4<bool>(false, false, global2.d, global2.d), global2.d), true));
    global1 = array<Struct_1, 1>();
    var var_1 = global0[_wgslsmith_index_u32(~global2.c, 22u)];
    var var_2 = Struct_1(u_input.d, reverseBits(~global2.b), 37010u, false);
    var var_3 = select(!var_0, vec4<bool>(!global2.d, ~var_1.a > _wgslsmith_div_u32(var_2.c, global2.c), -1i < (8216i | u_input.b.x), true), vec4<bool>(false, global2.d, true, false));
    return _wgslsmith_add_i32(i32(-1i) * -1i, var_2.b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>) -> vec4<u32> {
    global0 = array<Struct_1, 22>();
    var var_0 = vec3<f32>(1f, 1f, 1f);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.xz) * vec2<f32>(-651f, var_0.x));
    global1 = array<Struct_1, 1>();
    let var_2 = _wgslsmith_add_vec2_i32(arg_2.xz, u_input.b.zz);
    return ~vec4<u32>(123860u, _wgslsmith_sub_u32(4294967295u, ~(~arg_1.c)), abs(_wgslsmith_add_u32(select(42u, u_input.c.x, false), 1u)), global2.c);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.c.zx, u_input.c.yy), u_input.c.xy), u_input.d, 52896u, 0u), ~firstTrailingBit(func_3(global1[_wgslsmith_index_u32(u_input.d, 1u)], global0[_wgslsmith_index_u32(u_input.c.x, 22u)], u_input.b.zxz)));
    let var_1 = Struct_1(~(~(u_input.d << (var_0 % 32u))), _wgslsmith_sub_i32(u_input.b.x | arg_0.b, reverseBits((-2147483647i & arg_0.b) << (31620u % 32u))), global2.a, any(vec2<bool>(true, !any(vec3<bool>(false, true, arg_2.d)))));
    var var_2 = select(vec4<bool>(arg_0.d, true, arg_0.d | false, true), !select(!select(vec4<bool>(arg_2.d, arg_0.d, arg_2.d, false), vec4<bool>(false, global2.d, arg_2.d, true), false), !(!vec4<bool>(true, arg_0.d, false, arg_2.d)), select(true, true, false)), false);
    var var_3 = Struct_1(4294967295u >> (firstLeadingBit(_wgslsmith_clamp_u32(4294967295u, 0u << (global2.c % 32u), 0u)) % 32u), ((-u_input.a | u_input.a) << (~(~33539u) % 32u)) | -2147483647i, var_1.c | 2398u, !(!all(vec2<bool>(var_1.d, true))));
    let var_4 = Struct_1(_wgslsmith_sub_u32(5633u, arg_0.c | abs(countOneBits(62846u))), -34236i, u_input.d << (countOneBits(~arg_3) % 32u), true);
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 13710u, global2.a, 8396u), vec4<u32>(9215u, var_1.c, u_input.c.x, 0u)))), vec4<u32>(arg_2.a, _wgslsmith_dot_vec2_u32(u_input.c.yy, u_input.c.xx), abs(1u ^ var_1.a) | var_3.c, ~72791u)), 22u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    global2 = arg_2;
    global2 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 67351u, ~arg_2.c), 1u)];
    var var_0 = _wgslsmith_sub_vec2_i32(u_input.b.xx, _wgslsmith_mult_vec2_i32(vec2<i32>(-u_input.b.x, ~min(u_input.b.x, -58277i)), vec2<i32>(-max(global2.b, 0i), _wgslsmith_add_i32(max(-31056i, global2.b), select(global2.b, u_input.a, false)))));
    global1 = array<Struct_1, 1>();
    var var_1 = ~(~(~(~max(vec4<u32>(arg_2.a, 4294967295u, u_input.c.x, 1u), vec4<u32>(20167u, arg_0.c, 61495u, arg_0.c)))));
    return Struct_1(0u, ~(~(~arg_0.b & _wgslsmith_div_i32(-9268i, var_0.x))), 4294967295u, select(!arg_2.d, any(select(vec4<bool>(arg_0.d, true, arg_0.d, true), !vec4<bool>(arg_2.d, global2.d, arg_0.d, arg_2.d), u_input.d == u_input.d)), all(vec3<bool>(false, any(vec4<bool>(arg_0.d, global2.d, true, true)), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(68267u, _wgslsmith_div_i32(~func_1(), 2147483647i), 1135u, false), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(2208f, 1687f, -215f))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-258f, -1399f, -1000f))))))), func_2(Struct_1(_wgslsmith_div_u32(global2.a | global2.c, 1u), firstTrailingBit(_wgslsmith_sub_i32(u_input.b.x, 2147483647i)), 39717u, !global2.d && (u_input.c.x == 7540u)), u_input.b.zz, global1[_wgslsmith_index_u32(u_input.c.x << (~(global2.c ^ global2.a) % 32u), 1u)], ~global2.c));
    var var_1 = func_2(func_2(global1[_wgslsmith_index_u32(max(reverseBits(_wgslsmith_sub_u32(1u, global2.a)), global2.c), 1u)], -_wgslsmith_div_vec2_i32(select(vec2<i32>(-44297i, 22276i), u_input.b.yz, true), u_input.b.xx ^ u_input.b.xw), Struct_1(_wgslsmith_sub_u32(min(var_0.c, u_input.c.x), var_0.a & 8205u), -5916i, min(0u, _wgslsmith_mod_u32(global2.a, 4294967295u)), true), global2.c), -_wgslsmith_mod_vec2_i32(vec2<i32>(global2.b, global2.b), u_input.b.xy), func_4(Struct_1(reverseBits(global2.a), 1i, 1u, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-1258f, -198f, global2.d)), _wgslsmith_div_f32(264f, 248f), -1050f)), func_2(global0[_wgslsmith_index_u32(u_input.c.x, 22u)], vec2<i32>(-var_0.b, var_0.b), func_2(global0[_wgslsmith_index_u32(31204u, 22u)], u_input.b.wy, func_2(global0[_wgslsmith_index_u32(2212u, 22u)], vec2<i32>(9358i, var_0.b), global1[_wgslsmith_index_u32(var_0.c, 1u)], 1u), ~var_0.c), var_0.a)), firstLeadingBit(global2.a));
    let var_2 = ~_wgslsmith_dot_vec3_u32(u_input.c, ~u_input.c >> (abs(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.c, 4294967295u, 11375u), vec3<u32>(var_0.a, 33801u, u_input.d))) % vec3<u32>(32u)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1879f - _wgslsmith_f_op_f32(1000f * 291f)) * _wgslsmith_f_op_f32(select(-1657f, _wgslsmith_f_op_f32(f32(-1f) * -180f), func_4(global1[_wgslsmith_index_u32(u_input.c.x, 1u)], vec3<f32>(_wgslsmith_div_f32(-249f, 158f), _wgslsmith_f_op_f32(abs(1415f)), _wgslsmith_f_op_f32(round(2508f))), func_2(global0[_wgslsmith_index_u32(func_4(Struct_1(u_input.d, global2.b, var_1.c, var_1.d), vec3<f32>(450f, 107f, -1958f), Struct_1(0u, 11408i, 95556u, false)).c, 22u)], select(u_input.b.xx, u_input.b.xx, vec2<bool>(true, var_0.d)), Struct_1(28926u, global2.b, var_0.c, var_1.d), 1u)).d)));
    global2 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~countOneBits(var_2), 1u), 1u)];
    let var_4 = _wgslsmith_div_vec4_i32(-u_input.b, u_input.b) >> (vec4<u32>(22164u, ~global2.c, 73482u, _wgslsmith_add_u32(_wgslsmith_mult_u32(1u >> (1u % 32u), ~var_1.a), 1u)) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.c.x, abs(~min(u_input.d, var_0.c)), 0u, max(select(_wgslsmith_mult_u32(1u, var_2), var_1.a, any(vec3<bool>(true, var_0.d, true))), 22555u)), var_4.x, min(select(u_input.b.xyx << (u_input.c % vec3<u32>(32u)), vec3<i32>(global2.b, 2147483647i, var_0.b), !global2.d), _wgslsmith_div_vec3_i32(-u_input.b.wyy, -vec3<i32>(-38159i, u_input.b.x, -1i))) & var_4.zzw, -549f);
}

