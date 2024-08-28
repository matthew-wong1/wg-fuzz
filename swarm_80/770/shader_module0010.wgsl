struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
    c: f32,
    d: vec4<i32>,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<f32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 6> = array<vec4<u32>, 6>(vec4<u32>(18879u, 4294967295u, 1u, 1u), vec4<u32>(1u, 1u, 63270u, 0u), vec4<u32>(108094u, 1u, 30633u, 13271u), vec4<u32>(48632u, 1u, 0u, 24420u), vec4<u32>(11092u, 70260u, 0u, 30667u), vec4<u32>(1u, 6101u, 0u, 92604u));

var<private> global1: u32;

var<private> global2: Struct_1;

var<private> global3: array<i32, 10> = array<i32, 10>(0i, i32(-2147483648), -51507i, -47087i, i32(-2147483648), 0i, -23873i, -31598i, 24440i, -19309i);

var<private> global4: array<i32, 21>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: vec3<f32>, arg_3: vec4<u32>) -> bool {
    let var_0 = arg_1.xx;
    var var_1 = true;
    var var_2 = -_wgslsmith_mod_vec4_i32(min(-vec4<i32>(global4[_wgslsmith_index_u32(arg_3.x, 21u)], global3[_wgslsmith_index_u32(arg_3.x, 10u)], 42733i, 41886i), -min(vec4<i32>(16041i, 64136i, global4[_wgslsmith_index_u32(54597u, 21u)], arg_0.x), vec4<i32>(u_input.a.x, -51762i, 0i, arg_0.x))), -(vec4<i32>(2147483647i, global3[_wgslsmith_index_u32(arg_3.x, 10u)], -1i, 30760i) << (~arg_3 % vec4<u32>(32u))));
    var var_3 = Struct_4(-abs(var_2.x), vec3<bool>(true, any(vec2<bool>(true, false)) && true, !(true && any(vec4<bool>(true, false, true, false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1046f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -156f)), true)), global2.a), _wgslsmith_clamp_vec4_i32(~vec4<i32>(global4[_wgslsmith_index_u32(arg_3.x, 21u)], 1i, -2147483647i, i32(-1i) * -2147483647i), vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(arg_0, vec3<i32>(23375i, arg_0.x, global3[_wgslsmith_index_u32(1u, 10u)])), vec3<i32>(44312i, 0i, u_input.a.x)), 0i, _wgslsmith_dot_vec3_i32(arg_0 ^ arg_0, arg_0), var_2.x), select(-vec4<i32>(1725i, u_input.b.x, -23113i, -4468i), firstTrailingBit(firstTrailingBit(vec4<i32>(u_input.b.x, 2147483647i, -1i, var_2.x))), true)));
    var var_4 = vec4<bool>(true, !var_3.b.x | !var_3.b.x, any(!vec4<bool>(true, false, any(vec4<bool>(true, var_3.b.x, var_3.b.x, true)), !var_3.b.x)), true);
    return false;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_4(abs(~global3[_wgslsmith_index_u32(firstLeadingBit(10990u), 10u)]), select(!vec3<bool>(select(true, false, true), select(false, false, false), true), vec3<bool>(all(vec4<bool>(true, true, true, true)), true, false), vec3<bool>(true, any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true))), func_3(vec3<i32>(u_input.b.x, arg_1.b.x, arg_2), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1482f, -590f, arg_0.a, 1548f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.a, 370f, 775f)), vec4<u32>(3488u, 37745u, 72898u, 13464u)))), 568f, _wgslsmith_add_vec4_i32(~(-_wgslsmith_add_vec4_i32(vec4<i32>(24663i, 46503i, arg_2, -1i), vec4<i32>(global4[_wgslsmith_index_u32(46289u, 21u)], 35160i, -2147483647i, 1i))), vec4<i32>(-8848i, arg_1.b.x, -(~2147483647i), 0i)));
    global3 = array<i32, 10>();
    global2 = Struct_1(-1000f);
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1104f, 618f, 1270f, -921f)), vec4<f32>(global2.a, global2.a, -481f, -565f)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), -277f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a * _wgslsmith_f_op_f32(f32(-1f) * -988f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1064f - var_0.c)))))), select(select(select(vec4<bool>(true, true, true, true), !vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x), select(vec4<bool>(true, var_0.b.x, false, var_0.b.x), vec4<bool>(var_0.b.x, var_0.b.x, false, var_0.b.x), var_0.b.x)), select(select(vec4<bool>(false, false, var_0.b.x, var_0.b.x), vec4<bool>(true, var_0.b.x, var_0.b.x, var_0.b.x), false), !vec4<bool>(true, false, var_0.b.x, var_0.b.x), var_0.b.x && true), true), select(select(vec4<bool>(var_0.b.x, false, var_0.b.x, var_0.b.x), !vec4<bool>(var_0.b.x, true, var_0.b.x, true), var_0.b.x), vec4<bool>(true, true, true, true), false), true)));
    global1 = ~_wgslsmith_clamp_u32(4294967295u, ~0u, _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(74603u, 6u)]) >> ((0u >> (1u % 32u)) % 32u)) | 1u;
    return arg_1.a;
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> u32 {
    let var_0 = true;
    global0 = array<vec4<u32>, 6>();
    var var_1 = func_2(Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-217f, global2.a, false)) * -668f), arg_0.a, true && select(var_0, true, false)))), Struct_3(Struct_1(_wgslsmith_f_op_f32(max(arg_0.a, -367f))), -abs(vec2<i32>(0i, -41188i))), _wgslsmith_mult_i32(-10951i, u_input.a.x));
    var var_2 = _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(38186u, 1u), 6u)], _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(~17515u, ~1u, ~1u, select(0u, 1u, true)), _wgslsmith_add_vec4_u32(abs(global0[_wgslsmith_index_u32(39816u, 6u)]), vec4<u32>(64372u, 1u, 1u, 41548u))), ~vec4<u32>(firstLeadingBit(33504u), 1u, abs(49196u), ~1u)));
    let var_3 = !((global3[_wgslsmith_index_u32(0u, 10u)] < arg_1) | all(vec3<bool>(any(vec4<bool>(false, var_0, true, var_0)), !var_0, all(vec3<bool>(var_0, true, true)))));
    return ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(~18733u, 0u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = vec2<u32>(4294967295u >> (1u % 32u), func_1(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -1184f) - global2.a)), u_input.a.x ^ global4[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, ~71718u), 21u)]));
    var var_2 = select(vec2<bool>(var_0, true), !(!select(vec2<bool>(true, var_0), select(vec2<bool>(var_0, true), vec2<bool>(true, var_0), vec2<bool>(true, false)), vec2<bool>(true, true))), var_0);
    global1 = var_1.x;
    global0 = array<vec4<u32>, 6>();
    var var_3 = Struct_1(_wgslsmith_div_f32(global2.a, 908f));
    let var_4 = Struct_1(_wgslsmith_div_f32(var_3.a, _wgslsmith_f_op_f32(floor(294f))));
    let x = u_input.a;
    s_output = StorageBuffer(select(-u_input.b, u_input.a, 0u >= select(var_1.x, var_1.x, var_2.x)) ^ -_wgslsmith_div_vec3_i32(u_input.a, -vec3<i32>(-7850i, 1i, global3[_wgslsmith_index_u32(var_1.x, 10u)])), var_4.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1293f, var_4.a, var_3.a, 681f))))) + vec4<f32>(_wgslsmith_div_f32(1209f, 228f), _wgslsmith_f_op_f32(ceil(-1839f)), _wgslsmith_f_op_f32(f32(-1f) * -1008f), _wgslsmith_f_op_f32(max(-1501f, var_4.a))))), global0[_wgslsmith_index_u32(abs(~abs(var_1.x)), 6u)], vec3<u32>(14154u, 0u, var_1.x));
}

