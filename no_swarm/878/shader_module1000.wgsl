struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec2<i32>(2147483647i, -43107i), 0u, 5577i);

var<private> global1: Struct_3;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> i32 {
    global0 = Struct_4(vec2<i32>(global0.c, i32(-1i) * -42783i), ~_wgslsmith_div_u32(u_input.d.x, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, u_input.d.x, u_input.d.x), vec4<u32>(1u, global0.b, 0u, u_input.d.x)), vec4<u32>(u_input.d.x, 20514u, u_input.c.x, global0.b) | vec4<u32>(u_input.d.x, 4294967295u, 4008u, 0u))), 0i);
    global1 = Struct_3(~(-37476i), -(~global1.b >> (~u_input.d % vec3<u32>(32u))) >> (vec3<u32>(countOneBits(4294967295u), u_input.c.x, 44747u) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(arg_1)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1))))), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.d & u_input.d.x, u_input.c.x, global1.d, _wgslsmith_add_u32(0u, ~global0.b)), (~vec4<u32>(4294967295u, 1u, 1u, 0u) | ~vec4<u32>(u_input.d.x, global0.b, global1.d, global0.b)) << (_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 0u, global0.b, 7462u), vec4<u32>(global0.b, 3304u, 61866u, global1.d), vec4<u32>(global0.b, global1.d, global0.b, u_input.d.x)), ~vec4<u32>(u_input.d.x, 0u, global0.b, u_input.c.x)) % vec4<u32>(32u))));
    global1 = Struct_3(global1.b.x, vec3<i32>(_wgslsmith_div_i32(18614i, global0.a.x ^ (i32(-1i) * -11087i)), -21719i, -(~(-31588i)) >> ((_wgslsmith_sub_u32(0u, global1.d) ^ 18875u) % 32u)), _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.c))))), ~(~((1u & global0.b) | u_input.c.x)));
    let var_0 = Struct_5(Struct_2(select(select(1u, countOneBits(global0.b), true), _wgslsmith_sub_u32(global0.b, 4294967295u) << (4294967295u % 32u), all(vec3<bool>(false, false, true))), arg_2, ~(_wgslsmith_clamp_i32(arg_0.a, -53939i, -72392i) & -392i), 1i), !(!(!any(vec4<bool>(false, false, false, false)))));
    var var_1 = Struct_2(countOneBits(var_0.a.a), arg_0, _wgslsmith_dot_vec3_i32(select(vec3<i32>(global0.c ^ arg_2.a, 6111i, -1i), global1.b, select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), var_0.b)), firstLeadingBit(vec3<i32>(~(-30358i), -1i, ~(-15920i)))), ~_wgslsmith_add_i32(1i, -u_input.e.x) << (4294967295u % 32u));
    return reverseBits(14745i);
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_3 {
    global1 = Struct_3(~func_3(arg_1, 2405f, Struct_1(~1i)), arg_2.xzy, global1.c, 4294967295u);
    var var_0 = u_input.c.x;
    var_0 = u_input.c.x & ~4294967295u;
    var_0 = 1u;
    let var_1 = Struct_4(vec2<i32>(abs(i32(-1i) * -2147483647i) | u_input.e.x, min(-1i, ~(i32(-1i) * -1i))), countOneBits(~19338u), i32(-1i) * -22201i);
    return Struct_3(-4180i, vec3<i32>(-1i, arg_2.x, u_input.b << (u_input.c.x % 32u)), global1.c, global0.b);
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    global0 = Struct_4(func_2(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 0u, 101902u), abs(vec3<u32>(global0.b, 0u, 86068u))) >= 113862u, Struct_1((u_input.b & global1.b.x) ^ min(arg_0.b.x, global0.c)), ~(~(~vec4<i32>(53540i, global1.b.x, 2147483647i, 2147483647i)))).b.yz, 41603u | ~_wgslsmith_div_u32(1u, u_input.c.x), max(min(~(-21406i), u_input.a), arg_0.a));
    global1 = arg_0;
    global0 = Struct_4(vec2<i32>(global0.c, 2147483647i), _wgslsmith_mod_u32(23353u, 4294967295u), -72617i >> (select(global1.d, firstTrailingBit(~1u), true) % 32u));
    global0 = Struct_4(vec2<i32>(_wgslsmith_dot_vec3_i32(global1.b, vec3<i32>(min(u_input.b, 16709i), _wgslsmith_dot_vec4_i32(vec4<i32>(-70281i, u_input.b, u_input.a, -75182i), vec4<i32>(-54514i, global0.c, global1.b.x, arg_0.b.x)), u_input.b << (u_input.d.x % 32u))), ~firstLeadingBit(-1i ^ global1.a)), ~_wgslsmith_mult_u32(0u, global1.d), _wgslsmith_sub_i32(global0.c, -14203i ^ arg_0.b.x) | _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(global1.b | vec3<i32>(38338i, 0i, 61801i), arg_0.b), u_input.a));
    var var_0 = Struct_4(select(~reverseBits(_wgslsmith_add_vec2_i32(u_input.e.xy, global1.b.zz)), vec2<i32>(-_wgslsmith_sub_i32(u_input.e.x, -1i), select(1i, -3135i, true)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true))), ~0u, _wgslsmith_sub_i32((reverseBits(global1.b.x) >> (1u % 32u)) << (26185u % 32u), _wgslsmith_div_i32(min(4330i, i32(-1i) * -12227i), global0.c)));
    return Struct_1(42348i);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_5, arg_2: bool) -> Struct_5 {
    global1 = func_2(all(select(!select(vec3<bool>(true, false, arg_1.b), vec3<bool>(false, arg_2, arg_1.b), false), select(select(vec3<bool>(true, false, arg_2), vec3<bool>(false, arg_2, false), arg_1.b), select(vec3<bool>(false, arg_2, arg_1.b), vec3<bool>(arg_2, arg_1.b, true), vec3<bool>(true, false, arg_1.b)), arg_2), vec3<bool>(true, true, true))), Struct_1(~_wgslsmith_div_i32(-2147483647i, -2147483647i & arg_0.a.x)), max(select(vec4<i32>(_wgslsmith_mod_i32(2147483647i, 20930i), _wgslsmith_clamp_i32(global0.c, 0i, arg_1.a.b.a), -1i, _wgslsmith_mult_i32(arg_0.c, arg_0.a.x)), select(vec4<i32>(0i, 2171i, arg_0.c, arg_1.a.c), u_input.e, any(vec2<bool>(arg_1.b, true))), arg_1.b), _wgslsmith_sub_vec4_i32(-vec4<i32>(-2147483647i, arg_1.a.d, 2147483647i, -14750i), u_input.e) << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, arg_1.a.a, 4294967295u), abs(vec4<u32>(7492u, arg_1.a.a, arg_0.b, 43246u))) % vec4<u32>(32u))));
    global0 = Struct_4(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, _wgslsmith_mod_i32(1i, 7794i)), (vec2<i32>(1i, global1.b.x) << (vec2<u32>(global1.d, 4294967295u) % vec2<u32>(32u))) << (vec2<u32>(global0.b, 35254u) % vec2<u32>(32u))) >> ((~(~vec2<u32>(global1.d, 24926u)) | ~(~vec2<u32>(global1.d, 4294967295u))) % vec2<u32>(32u)), _wgslsmith_mult_u32(~_wgslsmith_sub_u32(global0.b, _wgslsmith_div_u32(global0.b, global1.d)), global0.b), global0.a.x | _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_0.a.x, arg_0.c, arg_0.a.x), firstTrailingBit(vec3<i32>(-8397i, u_input.e.x, -2147483647i) | vec3<i32>(34376i, arg_1.a.b.a, global1.a))));
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c))), -1414f, func_2(true, func_4(func_2(false, Struct_1(-10545i), vec4<i32>(1i, arg_0.c, -1i, arg_1.a.d))), u_input.e).c, 1000f));
    let var_1 = ~u_input.c.yx;
    var var_2 = vec2<bool>(all(vec4<bool>(false, (arg_1.a.c & -14512i) == _wgslsmith_add_i32(global1.a, 0i), false, all(vec4<bool>(true, arg_1.b, arg_1.b, arg_1.b)))), false);
    return arg_1;
}

fn func_1(arg_0: Struct_4, arg_1: u32, arg_2: bool, arg_3: i32) -> Struct_1 {
    let var_0 = func_5(arg_0, Struct_5(Struct_2(~(u_input.c.x ^ u_input.d.x), func_4(func_2(arg_2, Struct_1(-1i), vec4<i32>(arg_3, arg_0.c, 2147483647i, 30996i))), -7868i, _wgslsmith_sub_i32(global0.c, arg_0.c)), arg_2), true);
    var var_1 = 31259i;
    var var_2 = var_0.a.b;
    global0 = Struct_4(vec2<i32>(func_2((var_2.a >= 0i) && !var_0.b, var_0.a.b, vec4<i32>(var_0.a.c, global1.b.x, ~2147483647i, u_input.e.x)).b.x, arg_0.a.x), ~var_0.a.a, min(0i, 1i));
    var var_3 = u_input.d;
    return Struct_1(1i);
}

fn func_6(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: f32, arg_3: Struct_3) -> Struct_4 {
    return Struct_4(-select(~(global0.a | u_input.e.yz), vec2<i32>(func_4(arg_3).a, firstLeadingBit(1i)), true), global1.d, select(max(_wgslsmith_div_i32(global0.a.x, arg_0.a & u_input.e.x), 36339i), countOneBits(_wgslsmith_add_i32(global1.a, global0.a.x)), func_4(arg_3).a < _wgslsmith_add_i32(0i, u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(func_1(Struct_4(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(global0.a, vec2<i32>(global0.c, global1.a)), global0.a), global0.b, max(~u_input.b, 2147483647i)), _wgslsmith_dot_vec4_u32(~max(vec4<u32>(0u, u_input.d.x, global0.b, 40454u), vec4<u32>(global1.d, global0.b, 162427u, u_input.d.x)), vec4<u32>(7011u, u_input.c.x, ~global1.d, ~global0.b)), select(-316f <= _wgslsmith_f_op_f32(round(1137f)), true, (0u > u_input.c.x) != true), 2147483647i), vec2<f32>(-1097f, global1.c), -620f, func_2(true, Struct_1(~u_input.a), vec4<i32>(u_input.b, -(~11887i), 0i, -2147483647i)));
    var var_0 = Struct_5(func_5(func_6(func_4(Struct_3(-4551i, vec3<i32>(global1.b.x, global0.a.x, 2147483647i), global1.c, 24811u)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.c, 1097f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.c, 307f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c), 1663f), func_2(true, func_4(Struct_3(global0.c, global1.b, global1.c, global0.b)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.e.x, global1.b.x, 0i, global0.c), vec4<i32>(2147483647i, u_input.b, -56286i, u_input.e.x)))), func_5(func_6(Struct_1(global1.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(291f, 202f)), _wgslsmith_f_op_f32(-global1.c), func_2(true, Struct_1(global1.a), u_input.e)), Struct_5(Struct_2(global0.b, Struct_1(u_input.a), -2147483647i, 2147483647i), true), false), (_wgslsmith_div_f32(global1.c, 2136f) != _wgslsmith_f_op_f32(global1.c * 1451f)) | false).a, true);
    var var_1 = Struct_2(~(~42982u), var_0.a.b, -77027i, 2147483647i);
    var var_2 = 0i;
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(833f, _wgslsmith_f_op_f32(abs(global1.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c)))), _wgslsmith_f_op_f32(f32(-1f) * -254f)) * vec2<f32>(_wgslsmith_f_op_f32(-func_2(false, Struct_1(-35953i), firstTrailingBit(u_input.e)).c), _wgslsmith_f_op_f32(abs(1206f))));
    global0 = func_6(Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(select(u_input.e, u_input.e, var_0.b), u_input.e & vec4<i32>(global0.a.x, -2147483647i, var_1.d, -2762i)), abs(countOneBits(u_input.e)))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-335f))), _wgslsmith_f_op_f32(round(var_3.x))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c, var_3.x))))), func_2(global1.d <= 4294967295u, var_0.a.b, firstLeadingBit(select(vec4<i32>(-2147483647i, 1i, var_1.b.a, var_0.a.d), u_input.e >> (vec4<u32>(u_input.d.x, 103543u, 4294967295u, 97882u) % vec4<u32>(32u)), !vec4<bool>(false, false, var_0.b, var_0.b)))));
    let var_4 = func_2(true == any(!vec3<bool>(var_0.b, var_0.b, true)), func_1(func_6(func_1(func_6(var_0.a.b, vec2<f32>(global1.c, var_3.x), var_3.x, Struct_3(7308i, u_input.e.xxy, var_3.x, u_input.d.x)), u_input.d.x, var_0.b, 28451i), vec2<f32>(var_3.x, _wgslsmith_f_op_f32(1115f * var_3.x)), _wgslsmith_f_op_f32(global1.c * var_3.x), Struct_3(func_6(var_1.b, vec2<f32>(1535f, global1.c), global1.c, Struct_3(-2147483647i, global1.b, -2156f, var_1.a)).a.x, countOneBits(global1.b), var_3.x, ~var_0.a.a)), _wgslsmith_sub_u32(global0.b, select(var_0.a.a | 0u, var_1.a, var_0.b)), func_5(Struct_4(vec2<i32>(0i, 1i), max(580u, var_0.a.a), _wgslsmith_add_i32(global0.a.x, u_input.e.x)), func_5(Struct_4(vec2<i32>(u_input.b, global0.c), 86659u, u_input.b), Struct_5(var_0.a, true), true), var_0.b).b, 19252i), vec4<i32>(-36279i, 2147483647i, global0.a.x, var_1.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(292i, 36141i), var_1.c), 50796i, u_input.a, -12056i), max(reverseBits(vec4<i32>(1i, var_1.c, 28725i, 1i)), firstTrailingBit(u_input.e ^ u_input.e))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, global1.c, -481f)) * vec3<f32>(global1.c, -293f, -1425f)) * vec3<f32>(_wgslsmith_f_op_f32(-var_3.x), -1549f, _wgslsmith_f_op_f32(round(1000f)))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.x, var_4.c, -1277f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1262f, global1.c, -176f), vec3<f32>(var_3.x, -282f, global1.c)))), vec3<bool>(u_input.b != var_0.a.d, -452f <= global1.c, true)))), ~(reverseBits(vec3<u32>(var_1.a, 64154u, 14974u)) << (~countOneBits(u_input.c) % vec3<u32>(32u))), _wgslsmith_div_i32(_wgslsmith_mult_i32(func_2(true, func_5(Struct_4(vec2<i32>(var_0.a.d, -2147483647i), 4294967295u, u_input.b), Struct_5(Struct_2(global0.b, Struct_1(global0.c), global0.c, var_1.b.a), var_0.b), true).a.b, _wgslsmith_div_vec4_i32(u_input.e, vec4<i32>(-74857i, -2147483647i, var_0.a.d, -10163i))).b.x, i32(-1i) * -39535i), 27276i), ~(-reverseBits(u_input.e) & _wgslsmith_clamp_vec4_i32(~vec4<i32>(var_4.b.x, -2147483647i, var_1.b.a, u_input.a), firstLeadingBit(vec4<i32>(u_input.a, -1i, -2147483647i, global1.a)), -u_input.e)));
}

