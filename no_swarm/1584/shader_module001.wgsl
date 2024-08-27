struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<u32> = vec3<u32>(50041u, 15889u, 5781u);

var<private> global2: Struct_1 = Struct_1(vec4<u32>(0u, 4294967295u, 7545u, 4294967295u), vec4<i32>(i32(-2147483648), 0i, -53362i, -69948i), 51383u);

var<private> global3: Struct_1;

var<private> global4: Struct_1 = Struct_1(vec4<u32>(1u, 1u, 48314u, 1u), vec4<i32>(66194i, -1733i, -5357i, 19695i), 36082u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    let var_0 = !(!any(vec2<bool>(true, 1i < u_input.a.x)));
    let var_1 = -68719i;
    global1 = global3.a.zxw;
    global2 = Struct_1(_wgslsmith_clamp_vec4_u32(global2.a, vec4<u32>(global1.x, global2.a.x, max(_wgslsmith_div_u32(4294967295u, 59423u), 1u), _wgslsmith_dot_vec3_u32(global3.a.xwx, ~vec3<u32>(global2.a.x, global4.c, 10540u))), _wgslsmith_mult_vec4_u32(vec4<u32>(global4.c & global2.a.x, _wgslsmith_sub_u32(global3.a.x, 33488u), ~19959u, _wgslsmith_mult_u32(54693u, global3.a.x)), firstLeadingBit(vec4<u32>(global3.a.x, global2.a.x, global2.a.x, global2.a.x)))), global4.b, 6599u);
    var var_2 = (vec4<i32>(u_input.a.x, abs(_wgslsmith_sub_i32(12482i, 2640i)), 45137i, -56944i) | vec4<i32>(~8865i, 2147483647i, 18785i, -1i)) | _wgslsmith_mult_vec4_i32(global2.b, ~vec4<i32>(_wgslsmith_sub_i32(var_1, -2147483647i), _wgslsmith_mult_i32(u_input.a.x, global3.b.x), ~u_input.a.x, global4.b.x));
    return _wgslsmith_sub_u32(firstLeadingBit(global4.c), _wgslsmith_dot_vec2_u32(global3.a.yw, reverseBits(vec2<u32>(0u, 20390u))) & global1.x);
}

fn func_2(arg_0: bool) -> vec3<f32> {
    let var_0 = global3.a.x;
    let var_1 = Struct_1(firstLeadingBit(global2.a), _wgslsmith_add_vec4_i32(firstLeadingBit(-(u_input.a & global3.b)), vec4<i32>(0i, global4.b.x, global2.b.x, _wgslsmith_mod_i32(global3.b.x | -52697i, -661i))), ~48992u);
    global4 = Struct_1(vec4<u32>(global1.x, reverseBits(func_3()), ~var_1.c, global2.c), -(u_input.a ^ (global2.b ^ var_1.b)) & ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, 16707i, -9468i, 0i), vec4<i32>(0i, global4.b.x, 33071i, -43552i)), _wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_clamp_vec2_u32(global3.a.xy, vec2<u32>(55401u, 4294967295u), global2.a.zx) << (~global2.a.wy % vec2<u32>(32u))), vec2<u32>(1u, 4294967295u)));
    global1 = vec3<u32>(global4.c, _wgslsmith_dot_vec4_u32(vec4<u32>(max(global2.c, global4.c) << (select(var_1.a.x, 4294967295u, arg_0) % 32u), 69923u, var_1.c, global3.c), vec4<u32>(global3.a.x << (~global4.c % 32u), ~57980u, global2.c, global2.c)), 4294967295u | firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.a.x, 4294967295u, 4294967295u), vec3<u32>(44316u, 36221u, 1u))));
    global0 = arg_0;
    return vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(613f, _wgslsmith_f_op_f32(floor(-468f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -374f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1007f)) - -664f)), 1f);
}

fn func_1(arg_0: vec2<i32>) -> vec4<u32> {
    let var_0 = !all(select(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), true));
    let var_1 = _wgslsmith_f_op_vec3_f32(func_2(var_0));
    let var_2 = global2.b;
    var var_3 = Struct_1(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(global2.a, global2.a), firstTrailingBit(vec4<u32>(45709u, 4294967295u, 64781u, 31861u))) & global2.a, -(~u_input.a), global2.a.x);
    var var_4 = Struct_1(var_3.a, vec4<i32>(9921i, abs(global3.b.x), abs(65969i | countOneBits(var_3.b.x)), -global4.b.x), reverseBits(_wgslsmith_dot_vec3_u32(~abs(var_3.a.xxz), vec3<u32>(global3.c, global2.c >> (var_3.c % 32u), global1.x))));
    return abs(global4.a);
}

fn func_4(arg_0: vec4<u32>, arg_1: u32, arg_2: bool, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_1(vec4<u32>(4294967295u, ~global2.a.x, 1u, reverseBits(_wgslsmith_sub_u32(~4294967295u, global2.c))), vec4<i32>(-1i) * -global2.b, ~1u);
    global3 = Struct_1(~vec4<u32>(global3.a.x, _wgslsmith_mod_u32(var_0.a.x, 0u >> (global2.c % 32u)), 1u, global1.x), global3.b, select(arg_1, 55073u, true));
    global3 = Struct_1(vec4<u32>(global1.x, _wgslsmith_mult_u32(1u, 1u), ~_wgslsmith_clamp_u32(1u, 1u, global4.c) | 118717u, 36470u), vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_dot_vec2_i32(global3.b.xx, vec2<i32>(var_0.b.x, var_0.b.x)), -18995i, -global4.b.x, 1i), _wgslsmith_sub_u32(arg_1, 41170u));
    let var_1 = select(var_0.b.wzy, vec3<i32>(arg_3.x, ~abs(global4.b.x), arg_3.x), !(!select(!vec3<bool>(false, arg_2, true), select(vec3<bool>(arg_2, arg_2, true), vec3<bool>(arg_2, true, true), arg_2), all(vec3<bool>(false, false, arg_2)))));
    let var_2 = Struct_1(vec4<u32>(global2.a.x, _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(var_0.c, global2.c)), ~firstTrailingBit(global3.a.zz)), arg_1, 4294967295u), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(var_0.b.yzz, vec3<i32>(arg_3.x, 0i, var_0.b.x)), ~(-31845i), var_0.b.x << (global4.a.x % 32u), 1i), global2.b), _wgslsmith_clamp_vec4_i32(max(vec4<i32>(var_0.b.x, 0i, global2.b.x, var_0.b.x), var_0.b) >> (_wgslsmith_div_vec4_u32(vec4<u32>(1u, 12676u, arg_1, 4294967295u), var_0.a) % vec4<u32>(32u)), select(vec4<i32>(2094i, global4.b.x, -1i, 0i), vec4<i32>(var_0.b.x, u_input.a.x, -5005i, u_input.a.x) & arg_3, vec4<bool>(arg_2, arg_2, arg_2, arg_2)), global2.b ^ (vec4<i32>(1i, u_input.a.x, global4.b.x, 50083i) << (global2.a % vec4<u32>(32u))))), global1.x);
    return Struct_1(_wgslsmith_add_vec4_u32((global3.a | vec4<u32>(global1.x, 68634u, global1.x, arg_1)) << (vec4<u32>(44025u, 4294967295u, 0u, 19060u) % vec4<u32>(32u)), ~vec4<u32>(2507u, global3.a.x, 47231u, global3.a.x)) | (~(~vec4<u32>(global2.c, arg_0.x, arg_0.x, global4.a.x)) >> (_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_1, 98495u, 42522u, arg_1), _wgslsmith_clamp_vec4_u32(vec4<u32>(global2.a.x, global2.c, 4294967295u, 4294967295u), arg_0, vec4<u32>(var_0.a.x, global3.a.x, global4.c, 3379u))) % vec4<u32>(32u))), u_input.a, 73676u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~vec2<u32>(~firstTrailingBit(1u), _wgslsmith_mod_u32(~1u, global3.a.x)));
    global4 = Struct_1(vec4<u32>(~(~global3.a.x), global3.c, ~(~1u), 16780u), global3.b ^ countOneBits(vec4<i32>(global4.b.x, 13648i, -2147483647i, global3.b.x) << (~vec4<u32>(global4.a.x, 1u, global4.c, var_0.x) % vec4<u32>(32u))), 15068u);
    global3 = func_4(max(_wgslsmith_clamp_vec4_u32(~abs(vec4<u32>(global3.a.x, 4308u, var_0.x, 0u)), vec4<u32>(global1.x | var_0.x, global2.a.x, 61707u, _wgslsmith_div_u32(global1.x, 1u)), vec4<u32>(~global3.c, 7293u, ~4294967295u, global2.a.x)), select(func_1(vec2<i32>(global3.b.x, 23622i)), global3.a, vec4<bool>(false, true, true, -33181i > global3.b.x))), global1.x, !all(select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true))), vec4<i32>(abs(1i), 40710i, global4.b.x, -global3.b.x));
    let var_1 = !vec3<bool>(true, false, all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false)) | (true && any(vec2<bool>(false, false))));
    var var_2 = Struct_1(abs(~global4.a), ~func_4(vec4<u32>(global4.a.x, 61936u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.x, var_0.x), vec3<u32>(global1.x, 4294967295u, 1u)), ~23265u), 0u, var_1.x, vec4<i32>(select(global4.b.x, global3.b.x, var_1.x), 15142i, -2147483647i, global3.b.x & u_input.a.x)).b, 44329u);
    var var_3 = ~_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(abs(vec2<u32>(global4.a.x, global4.a.x)) << (global1.xz % vec2<u32>(32u)), ~vec2<u32>(var_0.x, global1.x)), ~vec2<u32>(~7450u, 0u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-351f)) - -553f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2137f, 482f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -493f) + 1827f))), _wgslsmith_clamp_vec4_u32(select(_wgslsmith_div_vec4_u32(abs(vec4<u32>(1u, global3.a.x, 68821u, 41557u)), ~vec4<u32>(var_3.x, global1.x, var_2.a.x, 36753u)), _wgslsmith_add_vec4_u32(abs(global2.a), max(global4.a, vec4<u32>(1u, 1u, global4.a.x, global1.x))), !vec4<bool>(var_1.x, true, true, var_1.x)), min(_wgslsmith_sub_vec4_u32(vec4<u32>(32335u, 4294967295u, global2.c, 4294967295u), vec4<u32>(global4.c, var_3.x, var_2.a.x, 29160u)) ^ var_2.a, vec4<u32>(4294967295u, _wgslsmith_add_u32(125627u, 31530u), global2.a.x, 36882u)), global2.a));
}

