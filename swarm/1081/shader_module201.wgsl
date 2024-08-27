struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<i32>(32560i, 21362i, -1i, -1i), vec3<u32>(46793u, 1u, 4294967295u), vec2<i32>(-1i, 1i)), Struct_1(vec4<i32>(0i, 1i, 1i, -65680i), vec3<u32>(4068u, 4294967295u, 0u), vec2<i32>(10533i, -27834i)), Struct_1(vec4<i32>(-56436i, i32(-2147483648), -1i, 1i), vec3<u32>(71459u, 0u, 4294967295u), vec2<i32>(14188i, 2147483647i)));

var<private> global1: array<f32, 13>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> u32 {
    var var_0 = Struct_2(arg_2, arg_1, Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_2.c.x, -2147483647i, arg_0.x), vec3<i32>(arg_2.c.x, -2147483647i, -17803i)), vec3<i32>(2147483647i, global0.a.a.x, global0.c.c.x) >> (arg_1.b % vec3<u32>(32u))), (-52251i << (global0.a.b.x % 32u)) << (1u % 32u), -2147483647i, u_input.b >> (arg_2.b.x % 32u)), u_input.a.xwy | (abs(vec3<u32>(58184u, arg_1.b.x, arg_2.b.x)) | u_input.a.wyy), _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, max(1i, u_input.b)), arg_2.a.yw)));
    let var_1 = vec3<f32>(850f, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(arg_2.b.yy, var_0.c.b.yz) | ~u_input.e.x, ~15541u), _wgslsmith_add_u32(global0.a.b.x, 0u), 0u), 13u)], _wgslsmith_f_op_f32(f32(-1f) * -1155f));
    global0 = Struct_2(arg_1, Struct_1(vec4<i32>(max(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.c.x, 14676i), global0.c.a.wx), 1i), -1i, -8561i, min(-54343i, -24728i)), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(105295u, arg_3, arg_3), arg_2.b), ~vec3<u32>(u_input.d, arg_2.b.x, 44053u)), global0.a.b), vec2<i32>(countOneBits(~(-8905i)), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-30710i, 0i), ~arg_2.a.x, _wgslsmith_sub_i32(arg_0.x, 28174i)))), Struct_1(arg_2.a, abs(arg_2.b), var_0.c.c));
    let var_2 = select(select(select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), all(vec3<bool>(false, true, true))), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false)), select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), true)))), select(vec3<bool>(true, select(any(vec3<bool>(false, true, true)), any(vec4<bool>(true, false, true, true)), true), all(vec4<bool>(false, true, true, true))), vec3<bool>(!(223f < global1[_wgslsmith_index_u32(global0.a.b.x, 13u)]), false, true), !all(vec4<bool>(true, true, true, true))), select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, false, any(vec2<bool>(true, true))), true));
    let var_3 = arg_0.x;
    return select(1u, 2916u, false);
}

fn func_2(arg_0: f32) -> Struct_1 {
    global1 = array<f32, 13>();
    global0 = Struct_2(global0.b, global0.c, global0.c);
    global0 = Struct_2(Struct_1(vec4<i32>(global0.c.c.x, ~abs(-15281i), 2147483647i, global0.c.c.x), vec3<u32>(global0.c.b.x, abs(func_3(vec2<i32>(u_input.b, u_input.b), Struct_1(global0.b.a, vec3<u32>(43998u, 69578u, global0.a.b.x), vec2<i32>(-2147483647i, -29907i)), global0.b, u_input.e.x)), global0.c.b.x), ~(-vec2<i32>(global0.b.a.x, global0.b.a.x))), global0.a, global0.b);
    let var_0 = ~_wgslsmith_dot_vec2_u32(u_input.e, u_input.e);
    global1 = array<f32, 13>();
    return Struct_1(-(_wgslsmith_mod_vec4_i32(global0.a.a | vec4<i32>(0i, global0.b.a.x, -2147483647i, global0.a.a.x), vec4<i32>(u_input.b, global0.b.a.x, 1i, -23792i)) | ~_wgslsmith_sub_vec4_i32(vec4<i32>(global0.c.c.x, u_input.b, global0.a.c.x, 2147483647i), global0.c.a)), _wgslsmith_mod_vec3_u32(global0.c.b, _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a.wzx >> (global0.b.b % vec3<u32>(32u)), vec3<u32>(1u, 0u, global0.c.b.x)), _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 20560u, 0u), u_input.a.zyx), u_input.a.wxy), (global0.a.b ^ vec3<u32>(1u, 1u, 42868u)) & (vec3<u32>(global0.c.b.x, global0.a.b.x, u_input.c) & vec3<u32>(var_0, 31784u, 1851u)))), countOneBits(global0.a.a.ww));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: i32) -> Struct_1 {
    global0 = arg_0;
    var var_0 = arg_0.b;
    var var_1 = _wgslsmith_add_i32(u_input.b, 1i);
    var_0 = func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(arg_0.c.b.x, 13u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 13u)] * 141f), !arg_1))))));
    var var_2 = 1216f;
    return Struct_1(-_wgslsmith_mod_vec4_i32(-var_0.a, arg_0.b.a), vec3<u32>(~arg_0.a.b.x, min(u_input.a.x, 18274u), ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(16327u, u_input.d), 2584u)), select(vec2<i32>(select(_wgslsmith_mod_i32(0i, u_input.b), -8083i, arg_1), _wgslsmith_div_i32(3321i, abs(arg_0.b.a.x))), vec2<i32>(_wgslsmith_mod_i32(-u_input.b, -var_0.a.x), u_input.b), !select(!vec2<bool>(arg_1, true), !vec2<bool>(arg_1, arg_1), all(vec3<bool>(true, arg_1, false)))));
}

fn func_1() -> Struct_1 {
    var var_0 = firstTrailingBit(15892i) ^ global0.a.c.x;
    global0 = Struct_2(Struct_1(vec4<i32>(-23506i, -50281i, 1478i, _wgslsmith_dot_vec2_i32(vec2<i32>(-51584i, global0.b.a.x), global0.c.a.zy)), ~vec3<u32>(global0.b.b.x, global0.b.b.x, ~0u), abs(global0.a.a.zw)), func_4(Struct_2(global0.a, Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, global0.a.c.x, global0.b.c.x, u_input.b), vec4<i32>(-3143i, 2147483647i, u_input.b, 0i)), u_input.a.wwy, vec2<i32>(global0.c.c.x, global0.a.c.x)), func_2(-1000f)), true, u_input.b), Struct_1(vec4<i32>(_wgslsmith_div_i32(7262i, u_input.b), global0.b.c.x, global0.c.a.x | u_input.b, max(countOneBits(-20913i), -2447i)), global0.a.b, global0.b.a.wx));
    var var_1 = vec3<bool>((_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -744f))) > -208f) & any(vec2<bool>(false, true)), false, !all(select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)))));
    let var_2 = global0.c.b;
    var var_3 = Struct_2(func_4(Struct_2(func_2(_wgslsmith_f_op_f32(-1104f + global1[_wgslsmith_index_u32(global0.a.b.x, 13u)])), Struct_1(vec4<i32>(2147483647i, u_input.b, global0.c.c.x, global0.c.c.x), select(vec3<u32>(u_input.a.x, var_2.x, 17186u), vec3<u32>(1u, global0.c.b.x, u_input.c), false), global0.c.c | vec2<i32>(u_input.b, -2017i)), Struct_1(global0.c.a, ~global0.b.b, abs(vec2<i32>(u_input.b, -14558i)))), all(!select(var_1.xy, var_1.yz, var_1.x)), -(~u_input.b) << (u_input.e.x % 32u)), func_2(global1[_wgslsmith_index_u32(13806u, 13u)]), Struct_1(~vec4<i32>(0i, u_input.b, u_input.b, u_input.b), _wgslsmith_mod_vec3_u32(max(u_input.a.zwx, vec3<u32>(global0.b.b.x, u_input.a.x, u_input.e.x)), func_4(Struct_2(Struct_1(vec4<i32>(u_input.b, global0.a.a.x, u_input.b, global0.a.a.x), u_input.a.yxw, global0.c.a.zz), Struct_1(vec4<i32>(-23779i, 32654i, u_input.b, 40380i), vec3<u32>(4294967295u, 1u, 71730u), vec2<i32>(u_input.b, u_input.b)), Struct_1(vec4<i32>(global0.c.a.x, -1i, 0i, 1i), global0.c.b, global0.b.c)), true, -2147483647i).b), firstTrailingBit(_wgslsmith_add_vec2_i32(global0.b.a.zw, global0.b.a.yz) & (vec2<i32>(u_input.b, global0.c.c.x) ^ vec2<i32>(u_input.b, 31692i)))));
    return Struct_1(var_3.a.a, _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 0u, 0u), ~abs(firstLeadingBit(vec3<u32>(0u, global0.c.b.x, 4294967295u))), vec3<u32>(~firstLeadingBit(var_2.x), abs(1u), u_input.a.x)), var_3.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 13>();
    let var_0 = vec2<bool>(true, true);
    let var_1 = Struct_2(global0.a, func_1(), func_1());
    let var_2 = !vec3<bool>(any(select(select(vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(false, false, var_0.x, false)), vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(true, true, true, var_0.x))), all(vec2<bool>(var_0.x != var_0.x, !var_0.x)), firstTrailingBit(_wgslsmith_sub_u32(u_input.d, 1u)) >= _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(37557u, u_input.a.x, 79540u, 1u), vec4<u32>(55897u, 0u, global0.c.b.x, 51180u)), 36672u));
    global0 = Struct_2(func_2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(1u), ~1u), 13u)])), global0.c, var_1.a);
    let var_3 = u_input.b;
    global1 = array<f32, 13>();
    let var_4 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(337f, 3293f, global1[_wgslsmith_index_u32(38673u, 13u)])))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1[_wgslsmith_index_u32(global0.b.b.x, 13u)], -687f, 641f), vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 13u)], -1153f, 818f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(6189u, 13u)], -2972f, -1656f)))))));
    global1 = array<f32, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-2981f, global1[_wgslsmith_index_u32(1u, 13u)]), vec2<u32>(~global0.a.b.x, select(~var_1.c.b.x, ~(34459u | var_1.b.b.x), false)), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-309f, 1f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(786f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~var_1.c.b.x, 13u)] * _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(4999u, 13u)])))))), _wgslsmith_mult_vec3_i32(abs(var_1.c.a.yxw), select(min(vec3<i32>(-33977i, -24359i, var_3), vec3<i32>(20615i, -5101i, 1896i)), -global0.a.a.wzy, var_2)));
}

