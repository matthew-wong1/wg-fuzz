struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_1,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<u32>(13557u, 36522u, 1u, 57780u), vec2<u32>(67379u, 1u), Struct_1(vec3<u32>(1u, 4294967295u, 26849u), 0u, vec3<bool>(true, false, false)));

var<private> global1: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(vec4<u32>(1u, 41050u, 1u, 1u), vec2<u32>(77619u, 54173u), Struct_1(vec3<u32>(1u, 4294967295u, 0u), 1u, vec3<bool>(true, true, false))), Struct_3(vec4<u32>(1u, 1u, 20193u, 4294967295u), vec2<u32>(4294967295u, 0u), Struct_1(vec3<u32>(22986u, 4294967295u, 0u), 0u, vec3<bool>(false, true, true))), Struct_3(vec4<u32>(85098u, 3851u, 1u, 0u), vec2<u32>(1u, 1u), Struct_1(vec3<u32>(1u, 6869u, 17831u), 0u, vec3<bool>(false, true, false))), Struct_3(vec4<u32>(0u, 60460u, 44497u, 28596u), vec2<u32>(0u, 0u), Struct_1(vec3<u32>(4294967295u, 1u, 32683u), 135494u, vec3<bool>(false, true, true))), Struct_3(vec4<u32>(46100u, 1u, 0u, 37724u), vec2<u32>(4294967295u, 39215u), Struct_1(vec3<u32>(21914u, 1u, 74570u), 1u, vec3<bool>(true, true, true))), Struct_3(vec4<u32>(1u, 60309u, 5720u, 4294967295u), vec2<u32>(53660u, 0u), Struct_1(vec3<u32>(892u, 26260u, 0u), 1u, vec3<bool>(false, true, false))));

var<private> global2: Struct_4;

var<private> global3: vec2<u32> = vec2<u32>(21266u, 4294967295u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_5(~(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(9091u, global2.a.c.b, 11429u, global2.a.c.a.x), vec4<u32>(95986u, global3.x, 4294967295u, arg_1.b)))), Struct_1(abs(global2.a.a), arg_1.b, select(!global0.c.c, vec3<bool>(true, true, any(global2.a.c.c)), !vec3<bool>(arg_1.c.x, false, false))), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(global0.b.x, global3.x), vec2<u32>(arg_1.b, 75927u)), global2.a.d.zy) >= countOneBits(max(~48900u, global3.x)), max(min(~26163i, abs(23278i)), -1i));
    global2 = Struct_4(global2.a);
    let var_1 = var_0;
    var var_2 = Struct_4(Struct_2(vec3<u32>(_wgslsmith_mod_u32(var_0.b.b, var_1.a.x), _wgslsmith_add_u32(34072u, max(var_0.b.a.x, global3.x)), 4294967295u), !all(arg_1.c.yx), Struct_1(vec3<u32>(4294967295u, 4294967295u, ~var_0.b.b), ~arg_1.a.x >> (global2.a.c.b % 32u), vec3<bool>(global2.a.b, all(arg_1.c), true)), ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(31231u, global0.b.x, global2.a.d.x), arg_1.a, arg_1.a)));
    let var_3 = !(!(!(!vec4<bool>(true, var_1.b.c.x, true, var_0.b.c.x))));
    return ~22870i;
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_5 {
    global0 = global1[_wgslsmith_index_u32(66724u >> (arg_0.x % 32u), 6u)];
    var var_0 = !(global2.a.b | ((4294967295u & global0.b.x) == 60607u));
    global1 = array<Struct_3, 6>();
    var_0 = true;
    return Struct_5(abs(abs(_wgslsmith_clamp_vec4_u32(arg_0, arg_0, _wgslsmith_sub_vec4_u32(vec4<u32>(60509u, 0u, 1u, global3.x), global0.a)))), arg_3, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_0.x, 35242u), global0.b.x), _wgslsmith_sub_u32(global2.a.a.x, global3.x) & ~global0.b.x, ~4294967295u) >= global3.x, _wgslsmith_dot_vec3_i32(-select(abs(vec3<i32>(u_input.a, u_input.a, u_input.a)), vec3<i32>(-2147483647i, -40046i, -17503i) >> (vec3<u32>(25836u, arg_3.b, arg_1) % vec3<u32>(32u)), arg_3.c.x), vec3<i32>(1i, func_3(~vec4<i32>(u_input.a, -1i, -2147483647i, u_input.a), Struct_1(arg_0.wzx, arg_1, global0.c.c)), func_3(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, -1i, u_input.a), vec4<i32>(37274i, 50241i, u_input.a, -1i)), global0.c))));
}

fn func_4(arg_0: Struct_5, arg_1: vec3<u32>, arg_2: f32) -> Struct_4 {
    global0 = global1[_wgslsmith_index_u32(~select(global3.x, max(~(~arg_1.x), 1u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2 * arg_2))) > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-185f, arg_2))), 6u)];
    global2 = Struct_4(Struct_2(~(~(vec3<u32>(global3.x, global3.x, arg_1.x) >> (global0.c.a % vec3<u32>(32u)))), true, Struct_1(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_1, vec3<u32>(global3.x, 6163u, global3.x), global0.c.a), ~arg_1, _wgslsmith_div_vec3_u32(arg_0.b.a, global0.c.a)), global3.x, select(vec3<bool>(false, true, global2.a.b), select(vec3<bool>(global0.c.c.x, global2.a.c.c.x, global2.a.c.c.x), global0.c.c, vec3<bool>(global0.c.c.x, global0.c.c.x, true)), select(global2.a.c.c, global2.a.c.c, global0.c.c.x))), ~arg_1));
    var var_0 = 1i;
    global2 = Struct_4(Struct_2(countOneBits(~(~arg_1)), true, Struct_1(arg_0.b.a, _wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_0.a.x, 1u), ~arg_1.x), func_2(global0.a, countOneBits(arg_1.x), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_2, 1992f, arg_2))), arg_0.b).b.c), ~vec3<u32>(3456u, 1u, _wgslsmith_mult_u32(arg_1.x, 38761u))));
    var var_1 = select(vec2<i32>(arg_0.d, min(u_input.a, func_3(min(vec4<i32>(u_input.a, arg_0.d, -1i, u_input.a), vec4<i32>(u_input.a, 2147483647i, u_input.a, 2147483647i)), func_2(global0.a, arg_0.a.x, vec3<f32>(arg_2, -242f, arg_2), arg_0.b).b))), firstTrailingBit(select(_wgslsmith_clamp_vec2_i32(vec2<i32>(-11813i, 0i) | vec2<i32>(-23633i, arg_0.d), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, 3171i), vec2<i32>(u_input.a, 25366i)), ~vec2<i32>(u_input.a, arg_0.d)), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.d, arg_0.d), vec2<i32>(u_input.a, -2147483647i)) >> (min(vec2<u32>(arg_0.b.b, global0.a.x), arg_1.yz) % vec2<u32>(32u)), arg_1.x < global2.a.a.x)), !(!vec2<bool>(true && global0.c.c.x, all(vec3<bool>(true, global0.c.c.x, arg_0.c)))));
    return Struct_4(global2.a);
}

fn func_1(arg_0: bool, arg_1: f32) -> vec2<u32> {
    let var_0 = !(!select(!(!global2.a.c.c), vec3<bool>(true, global2.a.b || true, global2.a.c.c.x | global0.c.c.x), vec3<bool>(global2.a.b != true, arg_0, -1i > u_input.a)));
    global0 = Struct_3(global0.a, ~vec2<u32>(global2.a.c.b, ~(~global0.a.x)), global2.a.c);
    global2 = func_4(func_2(vec4<u32>(firstLeadingBit(~global3.x), ~global3.x, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 74850u, global0.c.b), vec3<u32>(73779u, 0u, global2.a.c.b)), ~vec3<u32>(7028u, global2.a.a.x, global3.x)), abs(_wgslsmith_mult_u32(1u, global2.a.a.x))), firstLeadingBit(global0.a.x), vec3<f32>(_wgslsmith_f_op_f32(-299f + _wgslsmith_div_f32(arg_1, 540f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-312f, arg_1)))), global2.a.c), abs(vec3<u32>(4294967295u, global2.a.c.b, 42254u)), 1f);
    var var_1 = !(!((~global0.c.a.x >> (global2.a.c.a.x % 32u)) >= 0u));
    let var_2 = func_2(firstLeadingBit(_wgslsmith_add_vec4_u32(global0.a, global0.a | global0.a) >> (vec4<u32>(firstLeadingBit(global2.a.a.x), global3.x, _wgslsmith_dot_vec4_u32(global0.a, vec4<u32>(1u, global0.c.b, global2.a.a.x, 1u)), ~global2.a.c.a.x) % vec4<u32>(32u))), ~global3.x, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-642f, arg_1, arg_1) - vec3<f32>(182f, arg_1, arg_1)))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1, arg_1, 372f), vec3<f32>(arg_1, arg_1, arg_1))), vec3<f32>(arg_1, arg_1, 1273f)))))), Struct_1(global0.a.wzz, 18376u ^ _wgslsmith_mult_u32(countOneBits(global3.x), 1236u), func_4(Struct_5(reverseBits(vec4<u32>(global2.a.d.x, global3.x, 1u, 56030u)), global0.c, global2.a.b, countOneBits(u_input.a)), _wgslsmith_mult_vec3_u32(~vec3<u32>(523u, global3.x, global0.a.x), global2.a.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-714f + 1166f) * _wgslsmith_f_op_f32(arg_1 - 2185f))).a.c.c));
    return vec2<u32>(reverseBits(38019u), ~(~(~global3.x) ^ _wgslsmith_mod_u32(~global3.x, 58329u)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.x, 1u), func_1(true, -785f)), global2.a.c.a.x << (~30584u % 32u)), global2.a.d.zx));
    global1 = array<Struct_3, 6>();
    global0 = global1[_wgslsmith_index_u32(27963u, 6u)];
    global3 = vec2<u32>(~max(abs(8694u) << (_wgslsmith_sub_u32(global3.x, 1u) % 32u), 48033u), select(~1u, firstTrailingBit(_wgslsmith_mult_u32(0u, 0u)), global2.a.c.c.x | !global0.c.c.x) & min(func_1(false, -1000f).x, ~global0.a.x));
    let var_0 = Struct_4(Struct_2(_wgslsmith_mod_vec3_u32(~vec3<u32>(8584u, global0.b.x, global2.a.a.x), vec3<u32>(global0.b.x, reverseBits(global0.c.b), func_2(vec4<u32>(global3.x, 29821u, 1u, 42368u), 4294967295u, vec3<f32>(916f, 513f, -496f), global0.c).b.a.x)), true | any(vec4<bool>(global0.c.c.x, false, false, global0.c.c.x)), Struct_1(_wgslsmith_mult_vec3_u32(global0.c.a, ~vec3<u32>(34931u, global0.a.x, global0.a.x)), 4294967295u, vec3<bool>(any(vec3<bool>(global0.c.c.x, false, true)), true, false)), global0.c.a));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-287f, -1000f, 979f), vec3<f32>(-2702f, -1424f, 607f), global2.a.c.c))))) + vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-400f, 1168f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1042f) - _wgslsmith_f_op_f32(-2185f + -325f)), _wgslsmith_f_op_f32(-1493f - _wgslsmith_f_op_f32(1350f * 313f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-624f)), _wgslsmith_f_op_f32(-1039f - -1000f))) + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1207f, 242f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -942f) - -1240f) - -1862f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1739f))))));
    var var_2 = firstLeadingBit(max(_wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(0i, 24162i)), abs(vec2<i32>(u_input.a, u_input.a))), reverseBits(vec2<i32>(-28260i, -69269i) >> (vec2<u32>(global2.a.d.x, global3.x) % vec2<u32>(32u))))) & firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, -1i, 24008i), vec3<i32>(-1i, 2147483647i, u_input.a)), u_input.a));
    global1 = array<Struct_3, 6>();
    global1 = array<Struct_3, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.x * 958f), var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(489f * -767f) - _wgslsmith_f_op_f32(min(var_1.x, 1384f))) - _wgslsmith_f_op_f32(-802f * _wgslsmith_f_op_f32(var_1.x * var_1.x))), var_1.x), -(~(~countOneBits(vec4<i32>(-2147483647i, var_2.x, -14047i, u_input.a)))));
}

