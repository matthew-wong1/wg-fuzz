struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: bool,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<i32>, 29> = array<vec2<i32>, 29>(vec2<i32>(-684i, -38489i), vec2<i32>(-11038i, -1i), vec2<i32>(12459i, 1i), vec2<i32>(0i, -11737i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(0i, -21779i), vec2<i32>(3321i, -25282i), vec2<i32>(-1i, 7332i), vec2<i32>(2147483647i, 31223i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 53377i), vec2<i32>(0i, 2147483647i), vec2<i32>(-1i, 365i), vec2<i32>(1i, -31759i), vec2<i32>(1i, -24632i), vec2<i32>(-15042i, -55043i), vec2<i32>(9653i, -11813i), vec2<i32>(-51067i, 68281i), vec2<i32>(-44963i, 2147483647i), vec2<i32>(-7782i, -47825i), vec2<i32>(-44033i, -7614i), vec2<i32>(-27998i, -17707i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(2147483647i, 0i), vec2<i32>(-5249i, 0i), vec2<i32>(-86516i, -57293i), vec2<i32>(i32(-2147483648), 19369i), vec2<i32>(-2033i, 10803i));

var<private> global2: vec4<u32> = vec4<u32>(70216u, 4294967295u, 4905u, 10165u);

var<private> global3: i32;

var<private> global4: array<vec4<bool>, 22> = array<vec4<bool>, 22>(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> u32 {
    global4 = array<vec4<bool>, 22>();
    var var_0 = min(firstTrailingBit(~countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(81147u, global2.x, global2.x, 1u), vec4<u32>(31762u, u_input.a.x, arg_0.d.x, 161u)))), ~(vec4<u32>(~2005u, _wgslsmith_dot_vec4_u32(vec4<u32>(14674u, global2.x, global0.d.x, u_input.a.x), vec4<u32>(global2.x, u_input.a.x, 6390u, global0.d.x)), global2.x, _wgslsmith_dot_vec3_u32(u_input.a, global2.xxz)) >> (vec4<u32>(68474u, 4513u, global2.x, abs(1u)) % vec4<u32>(32u))));
    let var_1 = arg_0;
    var var_2 = ~(-(~vec3<i32>(u_input.c ^ u_input.c, 1i, arg_0.b)));
    var_2 = _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32((~vec3<i32>(arg_0.b, global0.b, -1i) & _wgslsmith_div_vec3_i32(vec3<i32>(global0.b, 25292i, -2147483647i), vec3<i32>(u_input.b, -22444i, -1i))) & vec3<i32>(abs(global0.b), 21752i & arg_0.b, -var_1.b), vec3<i32>(global0.b, 1i, 2147483647i)), _wgslsmith_mult_vec3_i32(vec3<i32>((u_input.c >> (var_1.d.x % 32u)) | var_2.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_1.b), -vec2<i32>(var_1.b, u_input.c)), -2147483647i), firstTrailingBit(vec3<i32>(arg_0.b | global0.b, 19333i, -var_1.b))));
    return global2.x;
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_1(global0.a, 26573i >> ((firstLeadingBit(_wgslsmith_mod_u32(1u, 4294967295u)) | reverseBits(global0.d.x)) % 32u), global0.c, vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(global0.d.x, 54572u), global0.d.x << (0u % 32u)), global2.x), func_3(Struct_1(global0.a, 1i, true, vec2<u32>(4294967295u, 0u)), any(select(global4[_wgslsmith_index_u32(4294967295u, 22u)], global4[_wgslsmith_index_u32(u_input.a.x, 22u)], true)))));
    global1 = array<vec2<i32>, 29>();
    global4 = array<vec4<bool>, 22>();
    let var_1 = Struct_1(vec2<bool>(any(select(!var_0.a, select(var_0.a, vec2<bool>(var_0.a.x, global0.a.x), global0.c), select(var_0.a, global0.a, vec2<bool>(var_0.a.x, false)))), true), global0.b, true, var_0.d);
    let var_2 = var_1.a;
    return var_1;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec2<i32>) -> u32 {
    var var_0 = select(-_wgslsmith_mult_vec2_i32((vec2<i32>(arg_1.b, -2147483647i) ^ vec2<i32>(5846i, arg_3.x)) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, -2147483647i), arg_3), ~global1[_wgslsmith_index_u32(global2.x, 29u)]), -vec2<i32>(_wgslsmith_mod_i32(global0.b, -2147483647i) << (arg_1.d.x % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(28393i, 48159i, -2147483647i), arg_0)), arg_1.a);
    return abs(40316u);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_1(!vec2<bool>(all(select(vec2<bool>(false, global0.a.x), global0.a, arg_0.x)), arg_0.x), -(-arg_1.x >> (20026u % 32u)), all(arg_0.zzx), vec2<u32>(~func_4(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.x, 39569i, global0.b), vec3<i32>(u_input.c, u_input.c, 14707i)), func_2(vec4<i32>(2147483647i, u_input.c, 22487i, -1i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(952f, -728f, 826f, 960f)), vec2<i32>(arg_1.x, 57850i) ^ vec2<i32>(global0.b, arg_1.x)), ~(u_input.a.x & _wgslsmith_add_u32(u_input.a.x, global0.d.x))));
    global1 = array<vec2<i32>, 29>();
    let var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(reverseBits(var_0.d), select(~vec2<u32>(8533u, var_0.d.x), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.zx, vec2<u32>(4294967295u, global2.x)), vec2<u32>(var_0.d.x, global2.x), abs(global0.d)), vec2<bool>(all(vec4<bool>(arg_0.x, global0.a.x, var_0.c, var_0.c)), any(arg_0))), vec2<u32>(4294967295u, min(var_0.d.x, abs(global2.x)))), ~u_input.a.xz);
    let var_2 = ~vec3<i32>(-3468i, max(arg_1.x, u_input.b), 0i);
    var var_3 = func_2(vec4<i32>(max(var_2.x, func_2(-vec4<i32>(global0.b, var_2.x, 64553i, -6792i)).b), _wgslsmith_div_i32(~u_input.b, ~arg_1.x), ~_wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(u_input.a.x, 29u)] << (vec2<u32>(0u, var_1) % vec2<u32>(32u)), -arg_1), var_2.x));
    return var_0;
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> vec4<i32> {
    var var_0 = _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_0.d, ~(vec2<u32>(4294967295u, arg_0.d.x) ^ vec2<u32>(4294967295u, 36715u)), vec2<u32>(func_2(vec4<i32>(25067i, -2147483647i, u_input.b, arg_0.b)).d.x, 13095u)), select(~(~arg_0.d), vec2<u32>(global0.d.x, 33464u), global0.c)) >> (~u_input.a.zy % vec2<u32>(32u));
    global1 = array<vec2<i32>, 29>();
    var var_1 = firstLeadingBit(vec2<u32>(~abs(0u), 0u) << ((~countOneBits(vec2<u32>(global0.d.x, 13884u)) << (func_1(vec4<bool>(true, false, arg_0.c, false), vec2<i32>(39175i, global0.b)).d % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_2 = arg_0;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -388f)))))), -705f);
    return _wgslsmith_mult_vec4_i32(~vec4<i32>(14985i, global0.b, ~arg_0.b << (var_1.x % 32u), var_2.b), ~vec4<i32>(0i, abs(-35094i), 0i, abs(arg_0.b)));
}

fn func_6(arg_0: vec4<bool>, arg_1: i32, arg_2: i32) -> Struct_1 {
    let var_0 = arg_2;
    global3 = -1i;
    global0 = func_2(~func_5(Struct_1(func_2(vec4<i32>(u_input.c, arg_2, -1i, arg_2)).a, -12034i, u_input.c == -20491i, _wgslsmith_mult_vec2_u32(vec2<u32>(global0.d.x, global2.x), global2.xy)), 1u));
    var var_1 = min(~vec4<i32>(arg_1, 2147483647i, -694i, func_2(firstLeadingBit(vec4<i32>(var_0, -1i, 30261i, 54712i))).b), _wgslsmith_sub_vec4_i32(~min(_wgslsmith_add_vec4_i32(vec4<i32>(41422i, -53967i, -38270i, -15187i), vec4<i32>(36086i, arg_2, global0.b, 0i)), vec4<i32>(global0.b, global0.b, -5907i, u_input.b)), -vec4<i32>(u_input.b, u_input.c, -2147483647i, -10321i) | _wgslsmith_div_vec4_i32(abs(vec4<i32>(-13239i, arg_1, global0.b, global0.b)), select(vec4<i32>(26757i, -2147483647i, u_input.c, arg_2), vec4<i32>(-2147483647i, -91079i, -1i, 0i), global0.a.x))));
    let var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(1u, ~(~1u), global0.d.x, ~global0.d.x), ~(~vec4<u32>(47179u, global2.x, 4294967295u >> (global2.x % 32u), func_1(arg_0, var_1.wx).d.x)));
    return Struct_1(func_2(~vec4<i32>(abs(global0.b), -13359i, _wgslsmith_clamp_i32(global0.b, global0.b, 0i), -1i)).a, min(_wgslsmith_add_i32(-1i, ~u_input.b), -1i) << (~global2.x % 32u), true, ~vec2<u32>((23952u ^ global0.d.x) & ~4294967295u, u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(vec4<bool>(false, true, u_input.c > ~select(-545i, 50532i, true), global0.a.x), _wgslsmith_dot_vec4_i32(select(-(~vec4<i32>(-18275i, 0i, 0i, 2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(0i, global0.b, u_input.b, global0.b) ^ vec4<i32>(u_input.b, 18844i, global0.b, -34477i), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.c, 83463i, -2147483647i), vec4<i32>(-1i, u_input.c, 40101i, 1i))), all(!vec2<bool>(global0.a.x, global0.c))), func_5(func_1(select(global4[_wgslsmith_index_u32(global2.x, 22u)], vec4<bool>(global0.c, global0.c, false, global0.a.x), global4[_wgslsmith_index_u32(1u, 22u)]), vec2<i32>(2147483647i, global0.b)), 5108u)), global0.b);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-966f, -1629f, -267f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), vec3<f32>(437f, -1171f, 1391f), vec3<bool>(true, true, true)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(209f, 264f, -172f), vec3<f32>(2075f, -449f, -130f), vec3<bool>(global0.c, false, false))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(694f, -870f, 435f), vec3<f32>(-853f, 1076f, 377f), vec3<bool>(var_0.c, var_0.a.x, var_0.c)))) - vec3<f32>(_wgslsmith_f_op_f32(ceil(-494f)), _wgslsmith_f_op_f32(floor(-1602f)), _wgslsmith_f_op_f32(-1419f + 1271f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1193f + -2804f), -1024f, _wgslsmith_f_op_f32(f32(-1f) * -509f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(546f, -509f, 1817f), vec3<f32>(1000f, -1249f, -1000f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(522f, -970f, -761f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(835f, 1148f, -990f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_u32(~select(vec3<u32>(global2.x, global0.d.x, 1u), vec3<u32>(global2.x, u_input.a.x, 46845u), global0.a.x), min(global2.xwy, ~vec3<u32>(1u, var_0.d.x, 38376u))));
}

