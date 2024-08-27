struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8>;

var<private> global1: vec2<i32> = vec2<i32>(88241i, -941i);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> f32 {
    global0 = array<bool, 8>();
    global1 = firstLeadingBit(vec2<i32>(global1.x << (72662u % 32u), select(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, 1244i, global1.x, -1i), vec4<i32>(0i, global1.x, 35719i, -1i)), countOneBits(-2147483647i)), global1.x << (22139u % 32u), true)));
    let var_0 = !(!vec3<bool>(!global0[_wgslsmith_index_u32(arg_2, 8u)], true, -global1.x == _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, -1i, 0i, global1.x), vec4<i32>(global1.x, 4269i, -49384i, 0i))));
    var var_1 = -_wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, -(~global1.x), firstTrailingBit(8359i), global1.x), vec4<i32>(-11606i, -4205i, global1.x, ~abs(62628i)));
    var var_2 = arg_1;
    return arg_1.a.x;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = true;
    global0 = array<bool, 8>();
    var var_1 = ~firstLeadingBit((~vec2<u32>(7443u, u_input.b) ^ ~vec2<u32>(arg_3.b.x, 18146u)) << (_wgslsmith_div_vec2_u32(arg_1.b.yz, arg_3.b.yy) % vec2<u32>(32u)));
    var_1 = arg_1.b.zy;
    return vec2<i32>(-global1.x, _wgslsmith_dot_vec4_i32(~_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global1.x, -34424i, -14089i, global1.x), vec4<i32>(global1.x, 37508i, 0i, global1.x)), abs(vec4<i32>(-1i, 18630i, 1i, global1.x))), -_wgslsmith_sub_vec4_i32(vec4<i32>(-69739i, global1.x, 10600i, 2147483647i), select(vec4<i32>(-1i, global1.x, global1.x, global1.x), vec4<i32>(-10249i, global1.x, 3785i, global1.x), vec4<bool>(false, arg_0.x, global0[_wgslsmith_index_u32(0u, 8u)], arg_0.x)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> i32 {
    global1 = func_4(vec2<bool>(arg_0.a.x < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(u_input.a, Struct_1(arg_0.a, arg_1.b), arg_0.b.x)))), false), arg_1, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(~arg_1.b.x, u_input.a)), arg_1);
    var var_0 = ~abs(_wgslsmith_add_u32(u_input.a, firstLeadingBit(_wgslsmith_clamp_u32(u_input.b, u_input.c, arg_0.b.x))));
    let var_1 = Struct_1(vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -946f), _wgslsmith_f_op_f32(arg_1.a.x * 1316f), !global0[_wgslsmith_index_u32(20240u, 8u)])))), vec3<u32>(arg_0.b.x, _wgslsmith_dot_vec4_u32(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(2901u, arg_1.b.x, arg_0.b.x, arg_0.b.x), vec4<u32>(78869u, 42692u, 5572u, arg_0.b.x))), abs(countOneBits(vec4<u32>(50550u, 68971u, u_input.b, 14095u)))), 0u ^ arg_0.b.x));
    let var_2 = vec4<i32>(~firstLeadingBit(global1.x), -(~2147483647i), global1.x, firstTrailingBit(1i) ^ _wgslsmith_mod_i32(global1.x, _wgslsmith_mod_i32(global1.x, -42045i))) ^ max((vec4<i32>(0i, global1.x, 2147483647i, 1i) << (select(vec4<u32>(37572u, var_1.b.x, arg_1.b.x, 16376u), vec4<u32>(arg_1.b.x, arg_0.b.x, 39281u, u_input.c), arg_2) % vec4<u32>(32u))) ^ vec4<i32>(min(1i, -11411i), _wgslsmith_dot_vec4_i32(vec4<i32>(-13257i, global1.x, global1.x, 0i), vec4<i32>(global1.x, 34556i, -15943i, global1.x)), global1.x, global1.x), ~_wgslsmith_clamp_vec4_i32(-vec4<i32>(global1.x, 0i, -1i, 39459i), vec4<i32>(global1.x, 0i, global1.x, 0i), abs(vec4<i32>(2147483647i, 26785i, global1.x, global1.x))));
    global0 = array<bool, 8>();
    return ~global1.x;
}

fn func_5(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    global0 = array<bool, 8>();
    var var_0 = false;
    let var_1 = (firstTrailingBit(u_input.c & select(arg_2.b.x, 0u, global0[_wgslsmith_index_u32(4294967295u, 8u)])) ^ _wgslsmith_div_u32(abs(_wgslsmith_sub_u32(arg_2.b.x, arg_2.b.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(48991u, arg_2.b.x, 1u, arg_2.b.x) << (vec4<u32>(u_input.b, 59450u, arg_2.b.x, arg_2.b.x) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.c, 4294967295u), vec4<u32>(36415u, u_input.b, arg_2.b.x, arg_2.b.x))))) >= 1u;
    let var_2 = vec2<f32>(arg_2.a.x, _wgslsmith_f_op_f32(-845f - _wgslsmith_f_op_f32(-arg_2.a.x)));
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.x)))))));
    return arg_2;
}

fn func_1(arg_0: f32) -> vec2<u32> {
    let var_0 = -global1.x;
    var var_1 = func_5(_wgslsmith_mod_vec4_i32(~(-vec4<i32>(global1.x, -1i, var_0, var_0)), vec4<i32>(-6725i, ~1i, global1.x, _wgslsmith_mult_i32(var_0, var_0) | var_0)), _wgslsmith_sub_i32(-1i, _wgslsmith_sub_i32(_wgslsmith_sub_i32(func_2(Struct_1(vec2<f32>(1000f, arg_0), vec3<u32>(4177u, 74538u, u_input.b)), Struct_1(vec2<f32>(arg_0, arg_0), vec3<u32>(u_input.c, 55256u, u_input.b)), global0[_wgslsmith_index_u32(u_input.b, 8u)]), -2147483647i), -(global1.x ^ global1.x))), Struct_1(vec2<f32>(arg_0, arg_0), firstLeadingBit(vec3<u32>(u_input.b & 1u, 78544u, 1u))));
    var var_2 = var_1.b.x;
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a) * _wgslsmith_f_op_vec2_f32(floor(var_1.a))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a - vec2<f32>(1273f, 282f)))))), vec3<u32>(_wgslsmith_sub_u32(~(~53228u), 1u), var_1.b.x, 8081u));
    var var_3 = vec3<i32>(select(var_0 ^ 36794i, var_0, false), -40020i, func_4(!(!select(vec2<bool>(global0[_wgslsmith_index_u32(36121u, 8u)], global0[_wgslsmith_index_u32(29057u, 8u)]), vec2<bool>(false, false), false)), func_5(vec4<i32>(var_0, max(global1.x, 58649i), _wgslsmith_mod_i32(global1.x, -2147483647i), -13520i), global1.x, func_5(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0, 31385i, global1.x, -23982i), vec4<i32>(0i, 22577i, var_0, global1.x), vec4<i32>(28742i, var_0, 0i, var_0)), _wgslsmith_sub_i32(var_0, 32149i), Struct_1(var_1.a, var_1.b))), var_1.b.x, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.a - var_1.a) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, arg_0))), select(var_1.b, _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.c, u_input.a), vec3<u32>(77615u, 1u, 5852u), var_1.b), all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 8u)], true))))).x);
    return _wgslsmith_add_vec2_u32(func_5(-vec4<i32>(var_3.x, var_0, var_0, 2147483647i), 2147483647i ^ _wgslsmith_mult_i32(global1.x, global1.x), func_5(reverseBits(vec4<i32>(1i, global1.x, 1i, 2147483647i)), _wgslsmith_div_i32(17353i, global1.x), func_5(vec4<i32>(var_0, var_3.x, 1i, -51052i), 2147483647i, Struct_1(vec2<f32>(-499f, 1265f), var_1.b)))).b.xx >> (firstLeadingBit(_wgslsmith_add_vec2_u32(var_1.b.xx, var_1.b.xy) << (vec2<u32>(0u, u_input.c) % vec2<u32>(32u))) % vec2<u32>(32u)), ~var_1.b.yx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-460f - 1872f)));
    global1 = abs(vec2<i32>(-42033i, global1.x));
    global1 = -_wgslsmith_div_vec2_i32(vec2<i32>(min(_wgslsmith_clamp_i32(-2147483647i, global1.x, 0i), -19735i), -abs(global1.x)), _wgslsmith_mod_vec2_i32(-(vec2<i32>(global1.x, global1.x) ^ vec2<i32>(14226i, global1.x)), abs(select(vec2<i32>(0i, -14059i), vec2<i32>(23460i, global1.x), vec2<bool>(global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(u_input.a, 8u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(-969f, func_1(-781f).x);
}

