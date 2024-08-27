struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec4<bool>,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27>;

var<private> global1: array<vec4<f32>, 2>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>) -> vec4<i32> {
    var var_0 = vec2<u32>(~u_input.c, 0u | select(_wgslsmith_mod_u32(abs(u_input.c), ~1u), 15469u, !all(vec3<bool>(true, false, true))));
    global0 = array<f32, 27>();
    var_0 = abs(_wgslsmith_mult_vec2_u32(vec2<u32>(~var_0.x, u_input.c), vec2<u32>(~firstTrailingBit(u_input.c), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, u_input.b.x), u_input.b.xx))));
    var_0 = ~(~u_input.b.ww);
    var var_1 = true;
    return vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) | vec4<i32>(u_input.a, 2147483647i, 1i, u_input.a), ~vec4<i32>(1i, -2147483647i, -2147483647i, -60253i)), vec4<i32>(abs(u_input.a), countOneBits(~(-1i)), ~4739i, -countOneBits(1i))), ~(~(_wgslsmith_sub_i32(u_input.a, u_input.a) ^ _wgslsmith_add_i32(u_input.a, u_input.a))), (i32(-1i) * -2147483647i) << (~u_input.b.x % 32u), abs(-(~36448i)));
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(round(1000f));
    let var_1 = Struct_2(func_3(-789f, global1[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(3257u, u_input.b.x, 4294967295u)), 2u)]), Struct_1(1u, vec2<i32>(u_input.a, u_input.a) ^ firstLeadingBit(abs(vec2<i32>(9590i, u_input.a))), u_input.b.yzy << (vec3<u32>(~u_input.c, ~1u, _wgslsmith_clamp_u32(4294967295u, 42096u, 92420u)) % vec3<u32>(32u))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(!arg_0, arg_0, !arg_0, false), !any(vec3<bool>(true, arg_0, false))), select(!vec4<bool>(false, arg_0, true, false), select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(true, true, arg_0, false)), false), select(select(vec4<bool>(arg_0, false, false, false), select(vec4<bool>(arg_0, true, arg_0, false), vec4<bool>(arg_0, arg_0, true, arg_0), false), all(vec4<bool>(arg_0, arg_0, false, arg_0))), vec4<bool>(select(false, true, arg_0), arg_0, any(vec4<bool>(arg_0, arg_0, arg_0, false)), any(vec3<bool>(arg_0, arg_0, arg_0))), !select(vec4<bool>(arg_0, true, true, true), vec4<bool>(arg_0, arg_0, true, false), arg_0))), vec4<bool>(!arg_0, ~(~u_input.a) <= max(_wgslsmith_add_i32(1i, u_input.a), u_input.a ^ 12482i), true, true));
    global1 = array<vec4<f32>, 2>();
    let var_2 = var_1;
    var var_3 = Struct_1(_wgslsmith_sub_u32(abs(min(0u, var_1.b.a) | var_2.b.c.x), select((var_1.b.c.x & var_1.b.a) << (~39068u % 32u), _wgslsmith_mult_u32(1u, u_input.b.x) >> (47602u % 32u), all(var_1.c))), vec2<i32>(select(var_1.b.b.x, -2147483647i, _wgslsmith_f_op_f32(max(-651f, global0[_wgslsmith_index_u32(0u, 27u)])) != _wgslsmith_f_op_f32(min(2340f, var_0))), ((var_1.b.b.x ^ 9350i) ^ ~(-2147483647i)) << (1u % 32u)), vec3<u32>(abs(~1u), _wgslsmith_dot_vec4_u32(~u_input.b, vec4<u32>(var_1.b.a, u_input.c, 0u, var_1.b.c.x) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 17297u, u_input.c, var_1.b.c.x), u_input.b) % vec4<u32>(32u))), (0u >> (~u_input.c % 32u)) ^ var_1.b.a));
    return Struct_2(abs(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-276f * 1000f) - -1168f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, -1153f, -1000f) + vec4<f32>(-590f, -249f, var_0, 898f))))), var_1.b, select(!(!select(vec4<bool>(var_2.c.x, false, true, false), var_1.d, vec4<bool>(var_2.c.x, false, false, true))), var_2.d, !var_1.c), var_2.c);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_1) -> Struct_1 {
    let var_0 = -1i;
    let var_1 = func_2(!all(vec2<bool>(true, true)) & !(!(false & arg_0.a.d.x)));
    let var_2 = -vec2<i32>(arg_2.b.x, 1i);
    var var_3 = Struct_3(func_2(func_2(any(select(arg_1.d, arg_1.d, var_1.c.x))).c.x).b, _wgslsmith_sub_vec4_u32(vec4<u32>(9039u, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a, arg_2.c.x, 19853u, arg_2.c.x), firstLeadingBit(arg_0.a.e)), 0u), _wgslsmith_mod_vec4_u32(~abs(u_input.b), arg_0.a.b)), arg_0.a.c, !(!(!vec4<bool>(arg_1.d.x, arg_0.a.d.x, arg_0.a.d.x, true))), _wgslsmith_sub_vec4_u32(u_input.b, abs(vec4<u32>(arg_1.a.c.x << (arg_2.a % 32u), min(23317u, arg_2.c.x), var_1.b.a, ~26189u))));
    global1 = array<vec4<f32>, 2>();
    return arg_0.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3) -> Struct_1 {
    global0 = array<f32, 27>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0[_wgslsmith_index_u32(arg_1.e.x, 27u)], global0[_wgslsmith_index_u32(0u, 27u)], -102f))))))))));
    var var_1 = ~(~(-func_2(true).b.b.x));
    let var_2 = !(!vec4<bool>(arg_1.d.x, true, false, any(!arg_1.d.wwx)));
    let var_3 = arg_2.a.c.x;
    return func_2(-1000f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1702f)))).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 27u)]), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 27u)] + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 27u)])))), _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(4294967295u, u_input.c), 27u)], global0[_wgslsmith_index_u32(~reverseBits(64115u), 27u)], true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-548f, global0[_wgslsmith_index_u32(u_input.c, 27u)], 1037f) * vec3<f32>(global0[_wgslsmith_index_u32(u_input.c, 27u)], 137f, 709f)) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-969f, 644f, global0[_wgslsmith_index_u32(u_input.c, 27u)])))), vec3<f32>(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(18013u, 27u)])), _wgslsmith_f_op_f32(f32(-1f) * -255f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 27u)] + global0[_wgslsmith_index_u32(1u, 27u)])))))));
    var var_1 = 25338u;
    let var_2 = Struct_4(Struct_3(func_4(func_1(Struct_4(Struct_3(Struct_1(1u, vec2<i32>(u_input.a, u_input.a), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), u_input.b, vec4<i32>(1554i, u_input.a, u_input.a, u_input.a), vec4<bool>(false, false, true, false), u_input.b), Struct_1(60602u, vec2<i32>(0i, u_input.a), vec3<u32>(56677u, 37209u, 4294967295u))), Struct_3(Struct_1(u_input.b.x, vec2<i32>(u_input.a, u_input.a), u_input.b.zwx), u_input.b, vec4<i32>(0i, -27466i, -25882i, u_input.a), vec4<bool>(false, true, false, true), u_input.b), Struct_1(1u, vec2<i32>(u_input.a, u_input.a), vec3<u32>(u_input.c, u_input.b.x, 8434u))), Struct_3(Struct_1(0u, vec2<i32>(u_input.a, u_input.a), u_input.b.zzz), ~vec4<u32>(4294967295u, 33936u, u_input.b.x, u_input.b.x), firstTrailingBit(vec4<i32>(u_input.a, 0i, -1i, u_input.a)), func_2(false).c, u_input.b), Struct_3(func_1(Struct_4(Struct_3(Struct_1(71527u, vec2<i32>(u_input.a, 23216i), u_input.b.yxy), u_input.b, vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<bool>(false, false, false, false), u_input.b), Struct_1(1u, vec2<i32>(u_input.a, u_input.a), vec3<u32>(u_input.c, 1u, u_input.b.x))), Struct_3(Struct_1(131172u, vec2<i32>(-2147483647i, u_input.a), u_input.b.xzz), vec4<u32>(60778u, u_input.b.x, 98394u, 65875u), vec4<i32>(u_input.a, u_input.a, u_input.a, -32662i), vec4<bool>(true, true, false, true), u_input.b), Struct_1(u_input.b.x, vec2<i32>(0i, -37889i), vec3<u32>(u_input.b.x, 42285u, u_input.c))), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, u_input.c, 0u), u_input.b, u_input.b), ~vec4<i32>(u_input.a, u_input.a, u_input.a, -14451i), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)), vec4<u32>(u_input.c, u_input.b.x, u_input.c, 64591u))), ~u_input.b, -vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) & vec4<i32>(abs(u_input.a), _wgslsmith_sub_i32(u_input.a, u_input.a), 1i, countOneBits(u_input.a)), func_2(true || (var_0.x < global0[_wgslsmith_index_u32(u_input.c, 27u)])).c, vec4<u32>(9799u, 0u, 1u, _wgslsmith_dot_vec3_u32(u_input.b.wxy, u_input.b.zzy))), func_2(all(select(vec4<bool>(true, true, true, true), func_2(true).c, u_input.a >= -36487i))).b);
    global0 = array<f32, 27>();
    var var_3 = _wgslsmith_add_vec3_u32(vec3<u32>(var_2.b.c.x, ~var_2.a.a.c.x, func_4(var_2.a.a, Struct_3(var_2.b, u_input.b, vec4<i32>(u_input.a, var_2.a.c.x, 2915i, -25771i), vec4<bool>(var_2.a.d.x, var_2.a.d.x, true, true), vec4<u32>(57886u, 0u, u_input.b.x, 8279u)), Struct_3(var_2.a.a, vec4<u32>(u_input.b.x, 1u, 18329u, 0u), vec4<i32>(0i, u_input.a, u_input.a, u_input.a), var_2.a.d, u_input.b)).c.x), u_input.b.ywy) | ~var_2.a.b.zwx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(firstTrailingBit(~countOneBits(var_2.a.b.wwx)), u_input.b.xzz), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.xx) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, var_2.a.a.a), 27u)], _wgslsmith_f_op_f32(f32(-1f) * -1277f)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_0.zy - var_0.yx)))))));
}

