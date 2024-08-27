struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-1i, -3099i, -1i);

var<private> global1: array<i32, 11>;

var<private> global2: array<i32, 18> = array<i32, 18>(89188i, 713i, 3641i, i32(-2147483648), -29104i, -28558i, 39466i, 12722i, 53662i, 15865i, -16159i, 40246i, 200i, -16615i, -1i, 1i, 2147483647i, 51220i);

var<private> global3: array<u32, 14> = array<u32, 14>(17583u, 0u, 8783u, 1u, 4294967295u, 30964u, 58879u, 85242u, 4294967295u, 4294967295u, 79677u, 0u, 3527u, 62829u);

var<private> global4: vec4<u32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> u32 {
    global2 = array<i32, 18>();
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -125f);
    let var_1 = _wgslsmith_mult_vec4_u32(~max(~abs(vec4<u32>(global3[_wgslsmith_index_u32(1u, 14u)], global4.x, u_input.b.x, 0u)), ~(~vec4<u32>(global4.x, 37796u, 55u, global3[_wgslsmith_index_u32(arg_0.c.a.b, 14u)]))), ~(~(~(~vec4<u32>(arg_1.a.a.x, arg_1.a.b, 1u, 1u)))));
    var var_2 = Struct_2(arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1051f * arg_1.b)) + -1000f) + _wgslsmith_f_op_f32(trunc(-401f))));
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-678f - var_0)), _wgslsmith_f_op_f32(select(arg_1.b, arg_0.a.b, any(vec3<bool>(true, false, false))))), arg_0.c.b, true));
    return ~35202u;
}

fn func_2() -> Struct_2 {
    global2 = array<i32, 18>();
    global4 = firstLeadingBit(max(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(29874u, 79838u, 41213u, global3[_wgslsmith_index_u32(global4.x, 14u)])), ~firstTrailingBit(vec4<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 14u)], 14u)], 14u)], 8401u, 42527u))), ~vec4<u32>(~global3[_wgslsmith_index_u32(6868u, 14u)], func_3(Struct_3(Struct_2(Struct_1(vec3<u32>(global4.x, u_input.b.x, u_input.b.x), u_input.b.x), -453f), Struct_1(u_input.b, 77196u), Struct_2(Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u), 30060u), -532f), u_input.b.x), Struct_2(Struct_1(vec3<u32>(u_input.b.x, global4.x, u_input.b.x), 4294967295u), 833f)), ~11908u, _wgslsmith_clamp_u32(u_input.b.x, 1u, global4.x))));
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-127f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-370f)))), _wgslsmith_f_op_f32(ceil(307f)))))));
    global0 = _wgslsmith_div_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 14u)] ^ (_wgslsmith_mod_u32(0u, u_input.b.x) | u_input.b.x), 11u)], u_input.d, 1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-1i, global2[_wgslsmith_index_u32(global4.x >> (1u % 32u), 18u)]), _wgslsmith_dot_vec2_i32(u_input.c.yy, vec2<i32>(global0.x, -6100i)) ^ -1i, _wgslsmith_add_i32(min(global0.x, -11586i), global1[_wgslsmith_index_u32(min(52267u, 17716u), 11u)])), select(vec3<i32>(-18685i, ~2147483647i, _wgslsmith_add_i32(global2[_wgslsmith_index_u32(4294967295u, 18u)], global2[_wgslsmith_index_u32(u_input.b.x, 18u)])), reverseBits(firstLeadingBit(u_input.c)), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, false), true)), _wgslsmith_sub_vec3_i32(min(_wgslsmith_div_vec3_i32(u_input.c, u_input.c), _wgslsmith_mod_vec3_i32(u_input.c, u_input.c)), -u_input.c)));
    var var_1 = Struct_3(Struct_2(Struct_1(~u_input.b, 26333u), 243f), Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(23417u, 1u, 1u), vec3<u32>(18618u, global3[_wgslsmith_index_u32(4294967295u, 14u)], global3[_wgslsmith_index_u32(3132u, 14u)])) | u_input.b, ~(global3[_wgslsmith_index_u32(countOneBits(4294967295u), 14u)] | global3[_wgslsmith_index_u32(36203u, 14u)])), Struct_2(Struct_1(~global4.xwz, 56321u), _wgslsmith_f_op_f32(-108f * 369f)), _wgslsmith_sub_u32(~global3[_wgslsmith_index_u32(select(4294967295u, 4294967295u, false), 14u)], ~_wgslsmith_clamp_u32(4294967295u, global4.x, _wgslsmith_sub_u32(511u, u_input.b.x))));
    return var_1.a;
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    let var_0 = Struct_3(func_2(), func_2().a, func_2(), ~_wgslsmith_sub_u32(arg_2.a.b, 4294967295u | global3[_wgslsmith_index_u32(19604u, 14u)]) << ((29978u >> ((20437u << (arg_2.a.b % 32u)) % 32u)) % 32u));
    let var_1 = _wgslsmith_clamp_i32(max(-arg_0.x, _wgslsmith_dot_vec3_i32(~firstTrailingBit(vec3<i32>(-2147483647i, -3376i, u_input.c.x)), vec3<i32>(_wgslsmith_dot_vec2_i32(global0.xx, vec2<i32>(global2[_wgslsmith_index_u32(97059u, 18u)], global0.x)), _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.c.a.a.x, 14u)], 18u)], 2147483647i), 1i))), u_input.d, 11415i | _wgslsmith_add_i32(global0.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, global0.x, u_input.d), u_input.c), min(-2147483647i, -1i))));
    global0 = -countOneBits(abs(firstLeadingBit(vec3<i32>(29284i, 4853i, global0.x))));
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(-(~8716i), global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(global4.yz, firstTrailingBit(arg_2.a.a.xx)), 18u)]), -29137i);
    global3 = array<u32, 14>();
    return func_2().a;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: bool) -> u32 {
    let var_0 = func_4(u_input.c.xy, arg_0.a.b, func_2());
    var var_1 = var_0;
    let var_2 = firstTrailingBit(-_wgslsmith_dot_vec4_i32(-min(vec4<i32>(-2147483647i, 0i, u_input.c.x, -2147483647i), vec4<i32>(-2650i, global0.x, -2147483647i, -39156i)), -vec4<i32>(-28850i, u_input.d, global1[_wgslsmith_index_u32(global4.x, 11u)], global2[_wgslsmith_index_u32(0u, 18u)]) | vec4<i32>(2147483647i, u_input.d, global1[_wgslsmith_index_u32(14268u, 11u)], global0.x)));
    var var_3 = _wgslsmith_clamp_vec3_u32(~(var_1.a << (_wgslsmith_add_vec3_u32(var_0.a, _wgslsmith_add_vec3_u32(var_1.a, var_0.a)) % vec3<u32>(32u))), vec3<u32>(global3[_wgslsmith_index_u32(11338u, 14u)], 4294967295u, _wgslsmith_dot_vec2_u32(var_1.a.yy, ~vec2<u32>(arg_0.a.a.x, 36993u))), ~(~(_wgslsmith_mod_vec3_u32(arg_0.a.a, u_input.b) | (var_0.a << (var_1.a % vec3<u32>(32u))))));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1167f * _wgslsmith_f_op_f32(-1102f + 348f)), arg_1.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~firstLeadingBit(u_input.c);
    global2 = array<i32, 18>();
    global2 = array<i32, 18>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(-611f * -387f), _wgslsmith_f_op_f32(843f * 252f), _wgslsmith_f_op_f32(abs(1917f))))));
    let var_1 = Struct_1(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 0u, 58712u), _wgslsmith_sub_vec3_u32(global4.xxw, vec3<u32>(global3[_wgslsmith_index_u32(global4.x, 14u)], u_input.b.x, 24629u) >> (vec3<u32>(1u, 1u, u_input.b.x) % vec3<u32>(32u)))), countOneBits(u_input.b.x & func_1(Struct_2(Struct_1(vec3<u32>(u_input.b.x, 4294967295u, 1u), global3[_wgslsmith_index_u32(4294967295u, 14u)]), -380f), var_0.yy, true)) ^ global4.x);
    var var_2 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(func_4(u_input.c.xy, 65960u, Struct_2(var_1, var_0.x)).a.x, 70391u & var_1.b), vec2<u32>(abs(u_input.b.x), 8557u)) >> (select(countOneBits(func_4(vec2<i32>(1i, -2898i), func_4(vec2<i32>(2147483647i, -5879i), 0u, Struct_2(Struct_1(vec3<u32>(u_input.b.x, var_1.b, 1u), 13028u), var_0.x)).a.x, func_2()).a.zy), _wgslsmith_add_vec2_u32(~vec2<u32>(var_1.a.x, 0u), ~func_2().a.a.zy), select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(false, true, false, true)), select(false, true, true)), any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), true)))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(4546i ^ global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 1u), 11u)])));
}

