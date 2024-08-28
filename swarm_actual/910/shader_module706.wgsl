struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: vec2<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(29941u, 0u, 6241u, 45355u);

var<private> global1: Struct_1 = Struct_1(14991i, vec3<f32>(-1025f, 772f, -720f), 4294967295u, vec2<bool>(true, true), vec3<u32>(22912u, 59820u, 4294967295u));

var<private> global2: vec2<i32>;

var<private> global3: vec3<bool>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: vec4<bool>) -> vec2<f32> {
    global2 = ~(~vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.a, global1.a, 81417i), vec3<i32>(u_input.d, u_input.a.x, 0i)), -2147483647i) & -min(~vec2<i32>(-2147483647i, 2147483647i), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_2.a, -65423i), vec2<i32>(1556i, -19263i))));
    let var_0 = !(!(!select(vec4<bool>(arg_2.d.x, arg_3.x, true, global1.d.x), select(vec4<bool>(true, false, true, global1.d.x), vec4<bool>(arg_3.x, true, global3.x, true), true), arg_3.x)));
    global3 = var_0.xyw;
    let var_1 = Struct_1((-firstTrailingBit(u_input.a.x) ^ (~global1.a & (u_input.a.x << (global0.x % 32u)))) << (arg_2.e.x % 32u), vec3<f32>(arg_2.b.x, arg_2.b.x, 1138f), abs(_wgslsmith_add_u32(countOneBits(arg_1), min(67434u, 20938u)) & (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), u_input.b.wzy) << ((arg_2.c << (u_input.c.x % 32u)) % 32u))), !select(arg_2.d, select(vec2<bool>(global1.d.x, true), global1.d, var_0.x), true), vec3<u32>(u_input.b.x, _wgslsmith_mult_u32(max(~47312u, firstTrailingBit(4294967295u)), ~global1.c | arg_1), countOneBits(~54710u)));
    global1 = arg_2;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(871f, arg_0))) - _wgslsmith_f_op_vec2_f32(abs(global1.b.xy)))) - var_1.b.xx);
}

fn func_2() -> vec2<bool> {
    global0 = _wgslsmith_div_vec4_u32(~abs(vec4<u32>(1u, ~1u, 0u, _wgslsmith_div_u32(33504u, global1.c))), vec4<u32>(~u_input.b.x, ~(~(global0.x | 0u)), u_input.e.x, u_input.b.x << (_wgslsmith_mult_u32(4294967295u, global0.x) % 32u)));
    global2 = _wgslsmith_sub_vec2_i32(firstTrailingBit(u_input.a), -(~(~(-u_input.a))));
    global1 = Struct_1(_wgslsmith_div_i32(-65886i >> (global0.x % 32u), u_input.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1.b.x - global1.b.x), 490f, _wgslsmith_f_op_f32(global1.b.x + global1.b.x)) - global1.b)), 4294967295u >> (1u % 32u), vec2<bool>(true, any(vec3<bool>(select(true, true, false), true, u_input.e.x > 14210u))), vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(61529u, 4294967295u, global0.x, ~23021u)), select(48952u, 69131u, any(vec4<bool>(global3.x, global3.x, false, false)))));
    global0 = u_input.b;
    var var_0 = Struct_2(select(~vec4<u32>(u_input.c.x, global0.x, global1.c, global0.x), ~abs(u_input.b), !(!vec4<bool>(true, global3.x, global3.x, global3.x))) | select(vec4<u32>(~u_input.e.x, ~30909u, ~global0.x, 14710u), u_input.e | (vec4<u32>(global0.x, global1.c, 40050u, u_input.c.x) | u_input.b), vec4<bool>(global1.b.x != global1.b.x, false, !global1.d.x, global1.d.x)), 8081u, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(870f, -528f), global1.b.xy)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(904f, global1.b.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(1000f, global0.x, Struct_1(-1i, vec3<f32>(global1.b.x, -1449f, global1.b.x), global1.e.x, vec2<bool>(false, global3.x), vec3<u32>(77649u, u_input.b.x, u_input.c.x)), select(vec4<bool>(global3.x, global1.d.x, true, global3.x), vec4<bool>(true, global1.d.x, false, global1.d.x), global1.d.x)))))));
    return vec2<bool>(global3.x, global1.d.x & true);
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_mult_i32((i32(-1i) * -2147483647i) ^ _wgslsmith_clamp_i32(arg_0.x, global2.x, -37661i), global1.a) >> ((u_input.b.x & (global1.e.x << (54645u % 32u))) % 32u), global1.b, u_input.b.x, !select(select(vec2<bool>(global1.d.x, false), !vec2<bool>(global1.d.x, true), global3.x), func_2(), select(select(vec2<bool>(true, true), vec2<bool>(true, global1.d.x), global3.x), !global3.xy, !global3.zx)), ~vec3<u32>(~_wgslsmith_add_u32(50207u, u_input.b.x), firstTrailingBit(abs(global1.e.x)), global0.x));
    var var_1 = -516f;
    let var_2 = Struct_3(1159f, Struct_2(firstLeadingBit(~u_input.e), min(~(~global0.x), abs(1u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.b.yx))));
    global0 = u_input.b;
    global0 = ~firstTrailingBit(~(~abs(vec4<u32>(u_input.e.x, 21816u, 7540u, global1.c))));
    return var_0;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_4(~vec2<i32>(global2.x, select(11401i >> (arg_1.e.x % 32u), ~u_input.d, global1.d.x)), u_input.e.zwx);
    let var_1 = Struct_3(arg_1.b.x, Struct_2(vec4<u32>(~(~108829u), _wgslsmith_mult_u32(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 1063u, 1u), arg_1.e)), ~abs(arg_0.x), max(u_input.e.x, _wgslsmith_dot_vec3_u32(vec3<u32>(38309u, 39208u, 4294967295u), vec3<u32>(var_0.b.x, arg_1.e.x, var_0.b.x)))), 35672u, global1.b.zy));
    let var_2 = _wgslsmith_mult_u32(64078u, _wgslsmith_clamp_u32(global0.x, select(17664u, ~_wgslsmith_mod_u32(global0.x, u_input.c.x), false == (global1.d.x && false)), _wgslsmith_div_u32(arg_0.x >> (var_0.b.x % 32u), global0.x)));
    global3 = select(select(select(select(!vec3<bool>(global1.d.x, global3.x, false), vec3<bool>(false, false, true), false & arg_1.d.x), select(vec3<bool>(false, true, global1.d.x), vec3<bool>(false, false, global1.d.x), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, global1.d.x), vec3<bool>(true, global1.d.x, false), true)), vec3<bool>(true, all(global1.d), select(global3.x, !global1.d.x, all(vec4<bool>(true, false, global3.x, true)))), select(!(!vec3<bool>(false, global1.d.x, false)), vec3<bool>(global3.x, true, true), true)), vec3<bool>(false, any(select(vec4<bool>(true, global3.x, arg_1.d.x, true), vec4<bool>(false, global1.d.x, global1.d.x, arg_1.d.x), vec4<bool>(false, true, false, arg_1.d.x))) && !(u_input.d == 2147483647i), any(vec4<bool>(!global1.d.x, true, true, arg_1.d.x))), !vec3<bool>(arg_1.d.x, global1.b.x == _wgslsmith_f_op_f32(-global1.b.x), true));
    global3 = !(!vec3<bool>(!global3.x, true, ~global1.a >= -global2.x));
    return Struct_1(8018i, arg_1.b, var_0.b.x, select(arg_1.d, vec2<bool>(func_1(-vec3<i32>(arg_1.a, 2147483647i, 2147483647i)).d.x, !(var_0.a.x == u_input.d)), false), vec3<u32>(min(~23186u, firstLeadingBit(arg_1.e.x)) | global1.c, u_input.e.x, ~var_1.b.a.x & ~(arg_0.x ^ 48017u)));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_2 {
    global1 = arg_0;
    global2 = ~u_input.a & u_input.a;
    let var_0 = min((~vec4<i32>(-1i, global2.x, -1i, -7265i) >> (reverseBits(vec4<u32>(4294967295u, u_input.c.x, 5165u, arg_2.c)) % vec4<u32>(32u))) >> (((vec4<u32>(arg_2.c, arg_2.c, global1.c, arg_0.e.x) & u_input.b) & countOneBits(u_input.b)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_add_i32(-2147483647i, arg_2.a) >> (global1.e.x % 32u), _wgslsmith_mult_i32(13470i & arg_0.a, ~(-39659i)), global2.x, -24350i)) & reverseBits(countOneBits(select(vec4<i32>(u_input.a.x, 3224i, global2.x, 11788i), -vec4<i32>(-5064i, arg_0.a, arg_2.a, arg_2.a), select(vec4<bool>(false, arg_0.d.x, true, false), vec4<bool>(false, true, arg_0.d.x, global1.d.x), true))));
    global0 = ~select(abs(u_input.e), _wgslsmith_sub_vec4_u32(~vec4<u32>(0u, global1.e.x, arg_0.c, u_input.c.x), u_input.b), select(!(!vec4<bool>(true, arg_2.d.x, false, false)), select(select(vec4<bool>(arg_0.d.x, true, true, global3.x), vec4<bool>(arg_2.d.x, arg_2.d.x, true, arg_0.d.x), vec4<bool>(true, global1.d.x, global3.x, arg_0.d.x)), vec4<bool>(global3.x, global1.d.x, arg_2.d.x, false), !global3.x), vec4<bool>(arg_2.d.x, true, true, false)));
    var var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(arg_1.x, global1.e.x), ~arg_2.e.yz);
    return Struct_2(abs(~vec4<u32>(25566u, 0u, 21167u, 0u)) | vec4<u32>(~_wgslsmith_div_u32(arg_1.x, 15473u), arg_1.x, 1u, arg_2.c), _wgslsmith_dot_vec4_u32(min(countOneBits(vec4<u32>(arg_0.e.x, global1.c, global1.c, 12331u)) & firstLeadingBit(vec4<u32>(arg_2.c, arg_1.x, arg_2.c, 48839u)), vec4<u32>(1u, arg_1.x, ~arg_2.c, arg_2.c)), u_input.e), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(arg_2.b.x)))), -576f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b.x, arg_0.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(~0u, u_input.e.x, _wgslsmith_sub_u32(0u, global0.x), abs(u_input.c.x)), ~_wgslsmith_clamp_vec4_u32(u_input.c, vec4<u32>(36560u, u_input.b.x, global0.x, 20980u), u_input.b)));
    var var_0 = func_5(Struct_1(-12698i, global1.b, u_input.c.x, global1.d, global1.e), vec2<u32>(2921u, u_input.c.x), func_4(_wgslsmith_clamp_vec4_u32(~reverseBits(vec4<u32>(75582u, global1.e.x, 23847u, global1.c)), _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(global1.e.x, global1.e.x, 26301u, global0.x)), abs(vec4<u32>(u_input.b.x, global0.x, 3419u, global0.x))), vec4<u32>(0u, 90779u, ~1u, 34625u << (global0.x % 32u))), func_1(_wgslsmith_mod_vec3_i32(select(vec3<i32>(6692i, u_input.d, -3316i), vec3<i32>(global1.a, global2.x, global1.a), vec3<bool>(true, global3.x, global1.d.x)), _wgslsmith_div_vec3_i32(vec3<i32>(global2.x, global2.x, global1.a), vec3<i32>(1i, global1.a, 0i))))));
    let var_1 = Struct_1(-1i, global1.b, firstLeadingBit(~max(1u, func_5(Struct_1(1i, vec3<f32>(var_0.c.x, global1.b.x, -282f), global0.x, vec2<bool>(true, false), global0.wwz), global0.yw, Struct_1(-2147483647i, vec3<f32>(global1.b.x, -957f, 377f), 7576u, vec2<bool>(true, global3.x), global1.e)).b)), global1.d, vec3<u32>(_wgslsmith_div_u32(~(global0.x | 84077u), u_input.c.x), var_0.b, ~firstLeadingBit(u_input.e.x)));
    var var_2 = max(vec4<i32>(~u_input.d, -30133i, -58492i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2138i, -2147483647i), vec2<i32>(19968i, -1i)), min(var_1.a, -2147483647i))), min(~(-(vec4<i32>(global1.a, 2147483647i, 1i, 0i) ^ vec4<i32>(1i, global2.x, var_1.a, 1i))), vec4<i32>(-min(global1.a, -43736i), _wgslsmith_dot_vec2_i32(u_input.a, ~vec2<i32>(var_1.a, var_1.a)), ~(-var_1.a), 1i)));
    var var_3 = Struct_3(-462f, func_5(Struct_1(u_input.d, _wgslsmith_f_op_vec3_f32(ceil(global1.b)), abs(countOneBits(u_input.c.x)), !var_1.d, global1.e), ~_wgslsmith_mod_vec2_u32(select(global0.wz, var_1.e.xz, false), firstLeadingBit(u_input.c.zy)), func_4(abs(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 107949u, global1.e.x), vec4<u32>(1u, 0u, u_input.b.x, 4294967295u))), var_1)));
    global0 = vec4<u32>(var_3.b.b >> (~(~firstLeadingBit(var_1.e.x)) % 32u), reverseBits(var_1.e.x), ~global1.e.x, global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(global1.b, func_5(Struct_1(-1i, var_1.b, _wgslsmith_dot_vec4_u32(var_0.a, vec4<u32>(u_input.b.x, var_1.c, 0u, u_input.e.x)), global3.zy, vec3<u32>(var_3.b.a.x, 0u, var_1.e.x)), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, 61002u), u_input.b.yx), abs(var_1.e.zz)), func_1(var_2.xzz)).a | u_input.b, vec3<f32>(-684f, -311f, 1879f), global1.b.x, select(abs(global2.x), -_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(22888i, u_input.d, -6898i, 51998i), vec4<i32>(var_2.x, 19475i, u_input.a.x, -2147483647i)), 1i), func_2().x));
}

