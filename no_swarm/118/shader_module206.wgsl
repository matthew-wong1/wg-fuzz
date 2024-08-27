struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 22> = array<u32, 22>(50617u, 0u, 1u, 21783u, 3780u, 20226u, 0u, 0u, 0u, 23219u, 18209u, 4294967295u, 1366u, 4294967295u, 5233u, 44060u, 68367u, 0u, 22173u, 56054u, 1u, 6439u);

var<private> global1: vec2<bool>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: vec2<i32>, arg_3: i32) -> u32 {
    global1 = select(select(select(vec2<bool>(-305f <= arg_1.a.c.b, arg_1.a.a & global1.x), vec2<bool>(all(vec3<bool>(arg_1.a.a, false, arg_1.a.a)), arg_0 < arg_1.b), vec2<bool>(arg_1.a.a | true, true)), select(vec2<bool>(53951u != arg_1.a.d.x, true), select(!vec2<bool>(global1.x, arg_1.a.a), vec2<bool>(true, true), all(vec4<bool>(arg_1.a.a, arg_1.a.a, global1.x, arg_1.a.a))), !(!arg_1.a.a)), !(!arg_1.a.a)), !select(vec2<bool>(arg_1.a.a, true), !select(vec2<bool>(arg_1.a.a, global1.x), vec2<bool>(arg_1.a.a, true), vec2<bool>(arg_1.a.a, global1.x)), !(arg_1.a.a | global1.x)), arg_1.a.a);
    var var_0 = -2147483647i;
    let var_1 = ~min(-81973i, _wgslsmith_mult_i32(-arg_1.b, _wgslsmith_add_i32(-7457i, -arg_1.a.c.c)));
    var var_2 = Struct_3(51008i);
    var_2 = Struct_3(~2147483647i);
    return u_input.a;
}

fn func_2(arg_0: u32, arg_1: Struct_3) -> vec4<i32> {
    let var_0 = u_input.b;
    var var_1 = true;
    var var_2 = _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(19679u, 0u, func_3(57573i, Struct_4(Struct_2(global1.x, vec3<f32>(-2349f, 1000f, -1955f), Struct_1(-2147483647i, 264f, u_input.c), u_input.b.zzx), 1i), vec2<i32>(-2147483647i, u_input.c), u_input.c)), vec3<u32>(min(44826u, 43200u), 52001u, arg_0)) << (u_input.b.wzy % vec3<u32>(32u)), u_input.b.xwy);
    var var_3 = global1.x;
    global0 = array<u32, 22>();
    return vec4<i32>(u_input.c, -1i, _wgslsmith_div_i32(_wgslsmith_div_i32(1i, _wgslsmith_sub_i32(min(arg_1.a, -36991i), i32(-1i) * -16762i)), arg_1.a ^ 1i), _wgslsmith_dot_vec3_i32(select(vec3<i32>(arg_1.a, 5865i, -51352i), vec3<i32>(0i, -1853i, -56507i), vec3<bool>(true, true, global1.x)) | firstLeadingBit(abs(vec3<i32>(arg_1.a, arg_1.a, u_input.c))), firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.a, u_input.c, arg_1.a), vec3<i32>(0i, -20351i, arg_1.a)) << (firstLeadingBit(vec3<u32>(40896u, 3989u, arg_0)) % vec3<u32>(32u)))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: Struct_5, arg_3: Struct_2) -> Struct_1 {
    let var_0 = arg_3.d.x;
    let var_1 = arg_2.b.a.d & vec3<u32>(107559u, var_0, arg_2.b.a.d.x << (firstTrailingBit(~91690u) % 32u));
    let var_2 = true;
    global1 = select(select(!vec2<bool>(arg_3.a, !arg_3.a), select(vec2<bool>(true, true), !select(vec2<bool>(arg_3.a, arg_3.a), vec2<bool>(true, false), false), select(vec2<bool>(true, arg_2.a.a), !vec2<bool>(false, arg_2.a.a), var_2 == global1.x)), any(!select(vec4<bool>(arg_3.a, var_2, global1.x, arg_3.a), vec4<bool>(true, arg_2.a.a, true, arg_3.a), vec4<bool>(false, global1.x, arg_2.b.a.a, false)))), !select(vec2<bool>(true, true == var_2), vec2<bool>(!arg_2.b.a.a, false), any(select(vec2<bool>(arg_2.a.a, global1.x), vec2<bool>(arg_2.a.a, arg_2.b.a.a), true))), arg_2.a.a);
    var var_3 = Struct_4(Struct_2(arg_3.c.a < _wgslsmith_mod_i32(arg_3.c.a, -13831i), vec3<f32>(arg_2.a.c.b, _wgslsmith_f_op_f32(sign(arg_3.c.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.c.b * -932f))), Struct_1(abs(0i), 128f, 53652i), min(~vec3<u32>(50358u, arg_2.a.d.x, var_1.x), vec3<u32>(0u, 61709u, var_1.x)) >> (~reverseBits(arg_2.a.d) % vec3<u32>(32u))), reverseBits(~u_input.c) ^ ~(arg_3.c.c | -13074i));
    return arg_3.c;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_5, arg_2: bool) -> f32 {
    global0 = array<u32, 22>();
    global0 = array<u32, 22>();
    var var_0 = Struct_5(arg_1.a, arg_1.b);
    global1 = !select(!select(!vec2<bool>(global1.x, true), !vec2<bool>(false, var_0.a.a), !vec2<bool>(true, global1.x)), vec2<bool>(any(select(vec4<bool>(true, var_0.b.a.a, arg_1.b.a.a, false), vec4<bool>(true, global1.x, true, arg_1.a.a), vec4<bool>(arg_2, var_0.b.a.a, arg_1.b.a.a, true))), !select(arg_1.a.a, true, true)), vec2<bool>(arg_2, true));
    var var_1 = var_0.a.a;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_0.b.a.c.b)), 1979f));
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    global0 = array<u32, 22>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(292f)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_4(func_2(0u, Struct_3(4272i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(864f, -378f) + vec2<f32>(364f, -101f)), Struct_5(Struct_2(false, vec3<f32>(-189f, 259f, 662f), Struct_1(-29116i, -2349f, 2147483647i), vec3<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 22u)], 0u, u_input.b.x)), Struct_4(Struct_2(global1.x, vec3<f32>(2533f, 1403f, 551f), Struct_1(u_input.c, -212f, u_input.c), vec3<u32>(1945u, 68556u, 0u)), arg_0.x)), Struct_2(global1.x, vec3<f32>(1060f, 2040f, 382f), Struct_1(0i, 689f, arg_0.x), u_input.b.yzz)), Struct_5(Struct_2(true, vec3<f32>(1054f, 469f, -1063f), Struct_1(-46412i, 1000f, arg_0.x), u_input.b.zxy), Struct_4(Struct_2(false, vec3<f32>(-611f, 990f, 999f), Struct_1(-2147483647i, 844f, u_input.c), u_input.b.ywy), u_input.c)), global1.x)) * -890f));
    global1 = select(select(!select(select(vec2<bool>(true, global1.x), vec2<bool>(false, true), vec2<bool>(false, global1.x)), vec2<bool>(global1.x, global1.x), global1.x), !(!vec2<bool>(global1.x, global1.x)), true), select(select(!(!vec2<bool>(global1.x, false)), select(vec2<bool>(true, global1.x), select(vec2<bool>(false, global1.x), vec2<bool>(global1.x, false), vec2<bool>(true, false)), global1.x), any(select(vec2<bool>(false, global1.x), vec2<bool>(false, global1.x), vec2<bool>(false, false)))), vec2<bool>(any(vec2<bool>(global1.x, global1.x)) == true, !global1.x), true), !(!vec2<bool>(all(vec4<bool>(global1.x, true, true, false)), any(vec3<bool>(global1.x, false, global1.x)))));
    global1 = select(!select(!vec2<bool>(global1.x, global1.x), !select(vec2<bool>(true, true), vec2<bool>(false, global1.x), vec2<bool>(global1.x, global1.x)), vec2<bool>(global1.x, false)), !vec2<bool>(true, select(global1.x, true, global1.x) | true), !select(vec2<bool>(true, any(vec4<bool>(global1.x, global1.x, global1.x, true))), vec2<bool>(any(vec4<bool>(true, false, false, global1.x)), arg_0.x != -1i), select(vec2<bool>(global1.x, global1.x), vec2<bool>(true, global1.x), -21768i > arg_0.x)));
    return Struct_2(_wgslsmith_clamp_u32(u_input.a ^ (u_input.b.x ^ u_input.a), 50429u, ~u_input.a) <= abs(36616u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(678f + -723f)), _wgslsmith_f_op_f32(floor(-1119f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(794f, 201f))))), Struct_1(_wgslsmith_mod_i32(abs(1i), u_input.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1320f)) + _wgslsmith_f_op_f32(f32(-1f) * -271f)), 1000f), arg_0.x << (~(~global0[_wgslsmith_index_u32(4294967295u, 22u)]) % 32u)), vec3<u32>(26613u, u_input.a, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], global0[_wgslsmith_index_u32(u_input.b.x, 22u)]), _wgslsmith_sub_vec3_u32(u_input.b.wzw, u_input.b.wzw)), countOneBits(u_input.b.x)), 22u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(all(select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(true, global1.x, false), true)) & false, any(vec4<bool>(false, true, true, global1.x)), select(true, (global1.x | global1.x) | global1.x, ~global0[_wgslsmith_index_u32(5196u, 22u)] <= u_input.b.x), _wgslsmith_mod_u32(1u, ~u_input.a) <= ~25839u);
    var var_1 = ~_wgslsmith_dot_vec4_u32(min(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 7942u, u_input.a, 55404u), u_input.b, vec4<u32>(u_input.a, 0u, u_input.b.x, 4294967295u)), vec4<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 22u)], 4294967295u, global0[_wgslsmith_index_u32(53859u, 22u)], 0u) >> (u_input.b % vec4<u32>(32u))), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b.yx, vec2<u32>(global0[_wgslsmith_index_u32(33686u, 22u)], global0[_wgslsmith_index_u32(1u, 22u)])), 43157u, ~global0[_wgslsmith_index_u32(u_input.b.x, 22u)], reverseBits(49111u))) <= u_input.a;
    let var_2 = var_0.x;
    let var_3 = Struct_5(func_1(vec3<i32>(0i, ~u_input.c, min(18247i, u_input.c)) << (vec3<u32>(global0[_wgslsmith_index_u32(0u, 22u)], ~29802u, 4294967295u & global0[_wgslsmith_index_u32(u_input.a, 22u)]) % vec3<u32>(32u))), Struct_4(func_1(vec3<i32>(firstTrailingBit(u_input.c), -2147483647i ^ u_input.c, 3523i)), 2147483647i));
    var var_4 = vec2<u32>(var_3.a.d.x, select(var_3.a.d.x, ~global0[_wgslsmith_index_u32(reverseBits(var_3.b.a.d.x), 22u)] | ~1u, _wgslsmith_f_op_f32(f32(-1f) * -379f) >= var_3.b.a.c.b));
    var var_5 = !((0i ^ abs(~u_input.c)) >= u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(var_3.b.a.b.xz, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1145f, _wgslsmith_f_op_f32(var_3.b.a.b.x * -161f))))), func_2(~13419u, Struct_3(var_3.b.a.c.a)).x & u_input.c, _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_3.b.b, 0i, u_input.c) | vec3<i32>(-29558i, -30962i, var_3.a.c.a), abs(vec3<i32>(0i, 1438i, u_input.c))), _wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(-13727i, -44225i, var_3.a.c.a)), vec3<i32>(31073i, 29799i, -42907i))) & countOneBits(vec3<i32>(-15764i, ~var_3.b.a.c.a, var_3.b.b)), 20219i, reverseBits(global0[_wgslsmith_index_u32(1u, 22u)]));
}

