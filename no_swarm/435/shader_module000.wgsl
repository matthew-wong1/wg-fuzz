struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -435f;

var<private> global1: array<u32, 6>;

var<private> global2: Struct_2 = Struct_2(Struct_1(false, -1i));

var<private> global3: bool = false;

var<private> global4: Struct_3 = Struct_3(i32(-2147483648), 32693u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: bool) -> f32 {
    let var_0 = arg_0;
    var var_1 = Struct_2(global2.a);
    global4 = Struct_3(~arg_0.a, abs(~select(var_0.b, global1[_wgslsmith_index_u32(arg_0.b, 6u)], !global2.a.a)));
    var var_2 = Struct_3(var_0.a, var_0.b);
    let var_3 = var_1.a.a;
    return 786f;
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = Struct_2(global2.a);
    var var_1 = Struct_4(global2.a, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-919f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -959f)), -1482f), vec3<f32>(-465f, _wgslsmith_f_op_f32(func_3(Struct_3(u_input.a, 0u), 2630f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-344f - -910f))), !select(vec3<bool>(global2.a.a, true, false), vec3<bool>(true, var_0.a.a, var_0.a.a), !vec3<bool>(global2.a.a, true, true)))));
    var_0 = Struct_2(Struct_1(all(!select(vec3<bool>(var_1.a.a, var_0.a.a, true), vec3<bool>(true, true, var_0.a.a), var_1.a.a)), _wgslsmith_clamp_i32(var_1.a.b, 1i, _wgslsmith_clamp_i32(42692i, global2.a.b, var_0.a.b) | 52767i)));
    var var_2 = Struct_3(global2.a.b, firstLeadingBit(39192u & select(~10760u, 17709u >> (global1[_wgslsmith_index_u32(1u, 6u)] % 32u), true && var_1.a.a)));
    global4 = Struct_3((-11464i << (abs(_wgslsmith_sub_u32(arg_0.x, var_2.b)) % 32u)) << ((select(_wgslsmith_mult_u32(1u, 24485u), _wgslsmith_dot_vec2_u32(arg_0.zx, arg_0.zy), !var_0.a.a) << (1u % 32u)) % 32u), ~global1[_wgslsmith_index_u32(15836u, 6u)]);
    return Struct_2(var_0.a);
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: vec2<i32>) -> Struct_2 {
    global2 = func_2(min((~vec3<u32>(global4.b, global4.b, 4294967295u) << (~vec3<u32>(global4.b, global4.b, 27904u) % vec3<u32>(32u))) << (vec3<u32>(~0u, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global4.b, global4.b), 6u)], ~global1[_wgslsmith_index_u32(1u, 6u)]) % vec3<u32>(32u)), select(~vec3<u32>(global1[_wgslsmith_index_u32(941u, 6u)], global4.b, global1[_wgslsmith_index_u32(global4.b, 6u)]), countOneBits(vec3<u32>(global1[_wgslsmith_index_u32(30392u, 6u)], 22975u, 33834u)), !global2.a.a) ^ (~vec3<u32>(4294967295u, 4294967295u, global4.b) << ((vec3<u32>(global4.b, 129133u, global4.b) & vec3<u32>(global4.b, global4.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4.b, 6u)], 6u)])) % vec3<u32>(32u)))));
    var var_0 = _wgslsmith_dot_vec3_i32(abs(abs(-u_input.b)), _wgslsmith_sub_vec3_i32(~u_input.b, -min(abs(u_input.b), firstTrailingBit(vec3<i32>(71299i, 27540i, 1i)))));
    var_0 = arg_2.a.b;
    global0 = arg_1.x;
    var var_1 = func_2(~(~min(_wgslsmith_sub_vec3_u32(vec3<u32>(20127u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(27490u, 6u)], 6u)], 7352u), vec3<u32>(0u, 4294967295u, global4.b)), vec3<u32>(global1[_wgslsmith_index_u32(11812u, 6u)], 4376u, 4294967295u))));
    return Struct_2(var_1.a);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>) -> Struct_2 {
    global4 = Struct_3(1i, abs(3420u));
    global1 = array<u32, 6>();
    global3 = any(!(!vec3<bool>(all(vec3<bool>(false, true, arg_0.a.a)), all(vec3<bool>(true, false, false)), global2.a.a)));
    let var_0 = select(true, global1[_wgslsmith_index_u32(0u, 6u)] <= max(69640u & global4.b, global4.b), (true & (arg_0.a.a | arg_0.a.a)) & (-global2.a.b > -2147483647i));
    var var_1 = Struct_3(_wgslsmith_mult_i32(-42810i, u_input.a), _wgslsmith_sub_u32(select(~global4.b, ~42018u, func_2(countOneBits(vec3<u32>(global1[_wgslsmith_index_u32(global4.b, 6u)], 94479u, 1u))).a.a), ~0u));
    return Struct_2(Struct_1(any(vec3<bool>(false & arg_0.a.a, arg_0.a.a, false)), _wgslsmith_add_i32(1i, var_1.a)));
}

fn func_6(arg_0: Struct_2) -> u32 {
    global4 = Struct_3(reverseBits(abs(55888i << (~global1[_wgslsmith_index_u32(0u, 6u)] % 32u))), ~0u);
    let var_0 = true || (true & func_4(arg_0.a.a, vec2<f32>(_wgslsmith_f_op_f32(max(-976f, -1818f)), -107f), arg_0, _wgslsmith_mult_vec2_i32(vec2<i32>(61220i, -28220i), vec2<i32>(global4.a, arg_0.a.b)) & u_input.b.zy).a.a);
    global4 = Struct_3(func_4(!all(vec2<bool>(false, arg_0.a.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-243f, 239f))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(787f, -952f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1980f, -649f))))), Struct_2(func_4(global1[_wgslsmith_index_u32(1u, 6u)] <= 0u, vec2<f32>(-1000f, 153f), Struct_2(arg_0.a), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, global2.a.b), vec2<i32>(global2.a.b, 25418i))).a), u_input.b.yz).a.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4.b, 6u)], 6u)]);
    var var_1 = ~firstLeadingBit(firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(24494u, global4.b), vec2<u32>(global4.b, 1u)), global4.b, 3596u)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -628f)))))));
    return ~_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, ~var_1.x), var_1.zy);
}

fn func_7(arg_0: u32, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_4(func_2(~(~vec3<u32>(26788u, global1[_wgslsmith_index_u32(39362u, 6u)], global1[_wgslsmith_index_u32(1u, 6u)]) & ~vec3<u32>(4294967295u, 20989u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0, 6u)], 6u)]))).a, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(984f, 1000f, -339f))));
    let var_1 = func_2(~vec3<u32>(~max(1u, 70228u), arg_0, ~4294967295u)).a;
    let var_2 = Struct_1(any(!(!vec3<bool>(false, var_0.a.a, false))), ~abs(0i));
    var var_3 = _wgslsmith_clamp_i32(1i | firstTrailingBit(-2147483647i), _wgslsmith_mult_i32(-max(0i, min(-68430i, global4.a)), firstTrailingBit(global4.a)), _wgslsmith_add_i32(_wgslsmith_div_i32(var_1.b, 2147483647i) ^ (var_0.a.b & _wgslsmith_mult_i32(var_1.b, global2.a.b)), global2.a.b));
    var_3 = global4.a;
    return var_2;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec4<i32>) -> Struct_2 {
    let var_0 = global2.a.a;
    var var_1 = func_7(func_6(func_5(func_4(global2.a.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(-627f, 1000f) + vec2<f32>(-1000f, 827f)), func_2(vec3<u32>(global4.b, global1[_wgslsmith_index_u32(arg_1, 6u)], 17924u)), -arg_2.ww), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(857f, 1256f, 1991f, -165f))))), 355f);
    let var_2 = ~vec4<i32>(firstTrailingBit(~arg_2.x), _wgslsmith_mod_i32(global4.a, u_input.a), ~(-global2.a.b), 1i) << (max(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1 << (0u % 32u), 4294967295u, ~99614u, arg_1 | global4.b), vec4<u32>(global1[_wgslsmith_index_u32(75136u, 6u)], arg_1, global4.b, ~0u)), ~(~(vec4<u32>(global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(0u, 6u)], global4.b, 18380u) ^ vec4<u32>(0u, arg_1, arg_1, 34612u)))) % vec4<u32>(32u));
    let var_3 = !select(vec2<bool>(all(vec3<bool>(true, true, false)), global2.a.a && (false || global2.a.a)), !(!vec2<bool>(global2.a.a, var_1.a)), vec2<bool>(!select(global2.a.a, true, false), 25533i >= var_1.b));
    var var_4 = Struct_2(global2.a);
    return Struct_2(global2.a);
}

fn func_8(arg_0: f32, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec2_u32(max(~vec2<u32>(arg_2.x, 1789u | global4.b), ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(4935u, 6u)], 1u), arg_2.yx))), _wgslsmith_mult_vec2_u32(~(~_wgslsmith_div_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global4.b, 6u)], 1u), arg_2.zy)), ~(~arg_2.xy) | (~arg_2.yx ^ min(arg_2.xx, arg_2.yx))));
    global1 = array<u32, 6>();
    global1 = array<u32, 6>();
    return Struct_1(func_1(func_1(-16555i, ~(1u << (arg_2.x % 32u)), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(-2147483647i, global4.a, -1i, -7387i)), ~vec4<i32>(24068i, 2147483647i, 0i, u_input.b.x), ~vec4<i32>(-36139i, 15593i, arg_1.a.b, global4.a))).a.b, 4294967295u, vec4<i32>(-global2.a.b, _wgslsmith_sub_i32(0i, -2147483647i), 34975i, global4.a)).a.a, -19902i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_8(_wgslsmith_f_op_f32(f32(-1f) * -1024f), func_1(global2.a.b, global1[_wgslsmith_index_u32(~reverseBits(~global4.b), 6u)], vec4<i32>(_wgslsmith_clamp_i32(global4.a, ~global4.a, global4.a), global4.a, ~(~43753i), 1i)), ~(~max(max(vec3<u32>(global4.b, global1[_wgslsmith_index_u32(88969u, 6u)], 5526u), vec3<u32>(global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(11326u, 6u)], global4.b)), firstTrailingBit(vec3<u32>(1u, 8885u, 0u)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(206f, -567f), vec2<f32>(-1317f, 1116f)))))))));
    var var_1 = func_4(global2.a.a, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -335f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1052f)) + _wgslsmith_f_op_f32(ceil(-1164f)))), _wgslsmith_f_op_f32(floor(-478f))), func_5(func_4(!(!var_0.a), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1951f), 1523f), func_5(Struct_2(global2.a), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1869f, 287f, 400f, -2236f)))), vec2<i32>(func_7(global4.b, 1272f).b, global4.a & 0i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), select(_wgslsmith_div_vec2_i32(~(-vec2<i32>(0i, 21361i)), vec2<i32>(var_0.b, -1i) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(22529u, 6u)], 6u)], 19230u), vec2<u32>(global1[_wgslsmith_index_u32(293u, 6u)], 17930u)) % vec2<u32>(32u))), _wgslsmith_add_vec2_i32(u_input.b.zz, select(-vec2<i32>(global4.a, global2.a.b), u_input.b.zy | vec2<i32>(u_input.b.x, global2.a.b), var_0.a)), select(vec2<bool>(true, true), vec2<bool>(true, 1i >= global4.a), true)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(global1[_wgslsmith_index_u32(global4.b >> (1u % 32u), 6u)], 1u << (select(global4.b, 1u, var_1.a.a) % 32u), true)), func_6(func_1(func_1(-var_1.a.b, ~4294967295u, abs(vec4<i32>(2147483647i, -26799i, var_0.b, 33599i))).a.b, ~select(1u, global4.b, var_1.a.a), ~vec4<i32>(var_1.a.b, u_input.b.x, u_input.a, 5119i) >> (vec4<u32>(global4.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4.b, 6u)], 6u)], 6u)], 28895u, global4.b) % vec4<u32>(32u)))));
}

