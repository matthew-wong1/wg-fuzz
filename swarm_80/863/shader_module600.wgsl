struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
    c: Struct_2,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 14> = array<vec2<u32>, 14>(vec2<u32>(70614u, 1u), vec2<u32>(19864u, 59388u), vec2<u32>(4294967295u, 29413u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 54342u), vec2<u32>(4966u, 17398u), vec2<u32>(0u, 1u), vec2<u32>(45046u, 1u), vec2<u32>(73827u, 43671u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(7935u, 9534u), vec2<u32>(0u, 733u), vec2<u32>(1u, 6491u));

var<private> global1: Struct_4;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool) -> bool {
    global0 = array<vec2<u32>, 14>();
    global1 = Struct_4(min(global1.a, vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-1i, global1.a.x), -u_input.a), 1i, _wgslsmith_add_i32(reverseBits(global1.b), firstLeadingBit(global1.c.a.x)))), max(global1.c.a.x, u_input.a), global1.c, ~(~max(vec2<u32>(global1.d.x, global1.e.x), global0[_wgslsmith_index_u32(global1.d.x, 14u)]) & vec2<u32>(40654u, 4294967295u)), global1.e);
    let var_0 = Struct_3(!vec4<bool>(true, false, !arg_0, ~57544u <= reverseBits(global1.d.x)), reverseBits(-global1.a.yy) | (firstLeadingBit(global1.a.xy | vec2<i32>(global1.c.a.x, u_input.a)) & global1.c.a));
    global1 = Struct_4(vec3<i32>(global1.b, var_0.b.x, var_0.b.x), ~var_0.b.x, global1.c, (global1.d ^ global1.e.yz) & global0[_wgslsmith_index_u32(abs(6858u), 14u)], global1.e ^ firstTrailingBit(~vec3<u32>(0u, global1.d.x, global1.d.x)));
    let var_1 = var_0.a;
    return var_1.x;
}

fn func_2() -> vec4<i32> {
    global0 = array<vec2<u32>, 14>();
    let var_0 = global1.d.x < 0u;
    var var_1 = vec2<bool>(func_3(true), !func_3(false));
    var var_2 = 38821u << (global1.e.x % 32u);
    var_1 = select(select(vec2<bool>(true, true), !vec2<bool>(!var_1.x, true), var_0), !(!vec2<bool>(var_1.x, true)), vec2<bool>(true & func_3(select(var_1.x, var_0, var_1.x)), !func_3(true)));
    return _wgslsmith_div_vec4_i32(firstLeadingBit(~vec4<i32>(global1.a.x, ~31170i, ~global1.a.x, abs(14881i))), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, abs(global1.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(global1.a.x, u_input.a), vec2<i32>(34355i, u_input.a)), 0i), ~select(vec4<i32>(global1.b, 54374i, global1.b, 33431i), vec4<i32>(u_input.a, -15218i, -2147483647i, -32310i), vec4<bool>(false, true, var_1.x, true))), global1.b, _wgslsmith_dot_vec4_i32(select(vec4<i32>(77483i, global1.b, 11095i, -1i) & vec4<i32>(u_input.a, u_input.a, 0i, u_input.a), vec4<i32>(global1.b, global1.b, global1.a.x, 0i), func_3(var_1.x)), -(vec4<i32>(global1.c.a.x, global1.c.a.x, 8377i, 0i) | vec4<i32>(global1.c.a.x, global1.b, -1i, 0i))), global1.c.a.x));
}

fn func_1() -> Struct_1 {
    global0 = array<vec2<u32>, 14>();
    var var_0 = -1347f;
    global0 = array<vec2<u32>, 14>();
    let var_1 = global0[_wgslsmith_index_u32(7469u, 14u)];
    let var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1425f * _wgslsmith_f_op_f32(301f + 1000f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1542f * 682f)))), -324f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2113f) * -552f))));
    return Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(0i, ~(~14742i), -2147483647i, _wgslsmith_div_i32(global1.b, firstTrailingBit(u_input.a))), ~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -26307i, u_input.a, 2147483647i), vec4<i32>(2303i, u_input.a, u_input.a, 2147483647i)) & func_2()), _wgslsmith_div_u32(firstLeadingBit(0u), 1u), u_input.a);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> u32 {
    global1 = Struct_4(-arg_1.a.yyy, global1.b, Struct_2(_wgslsmith_mod_vec2_i32(select(-vec2<i32>(-4432i, 2147483647i), global1.c.a, select(vec2<bool>(false, false), vec2<bool>(false, true), false)), _wgslsmith_div_vec2_i32(global1.c.a, global1.a.yz >> (global0[_wgslsmith_index_u32(arg_2, 14u)] % vec2<u32>(32u))))), firstTrailingBit(vec2<u32>(~arg_2, abs(_wgslsmith_mult_u32(arg_2, arg_1.b)))), global1.e);
    let var_0 = ~(~_wgslsmith_div_u32(~18075u ^ global1.d.x, abs(arg_0)));
    var var_1 = Struct_3(vec4<bool>(true, !select(true, u_input.a == arg_1.a.x, true), true, true && (all(vec3<bool>(false, false, true)) & any(vec4<bool>(false, true, false, false)))), arg_1.a.zw);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-276f, -1000f, 614f), vec3<f32>(1175f, -754f, 677f), var_1.a.wzx)))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -228f)), 152f, 1f));
    global1 = Struct_4(countOneBits(max(vec3<i32>(-22494i, global1.c.a.x, u_input.a), vec3<i32>(u_input.a, 0i, -54789i)) << (select(vec3<u32>(var_0, arg_0, 0u), vec3<u32>(arg_0, 0u, 4294967295u), true) % vec3<u32>(32u))) << (vec3<u32>(~global1.e.x, global1.d.x, ~global1.e.x) % vec3<u32>(32u)), -1i, global1.c, global1.e.zx, ~_wgslsmith_add_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0, 15337u, global1.e.x), vec3<u32>(arg_2, arg_2, 1u)), vec3<u32>(45880u, ~arg_1.b, 4294967295u)));
    return 4294967295u;
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: vec2<f32>, arg_3: i32) -> Struct_3 {
    let var_0 = _wgslsmith_add_i32(countOneBits(~abs(i32(-1i) * -2147483647i)), reverseBits(_wgslsmith_sub_i32(global1.b << (~global1.e.x % 32u), _wgslsmith_sub_i32(-2147483647i, -4409i) & (57854i << (global1.d.x % 32u)))));
    global1 = Struct_4(firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(-43687i, arg_3, var_0), vec3<i32>(-51546i, 2147483647i, u_input.a) | global1.a)) << (global1.e % vec3<u32>(32u)), 10378i, global1.c, abs(~_wgslsmith_div_vec2_u32(vec2<u32>(global1.d.x, 4294967295u), vec2<u32>(arg_1, 1u)) | ~max(vec2<u32>(global1.d.x, global1.d.x), global1.d)), min(~global1.e >> (~global1.e % vec3<u32>(32u)), vec3<u32>(~67846u, ~6046u, 4294967295u)));
    global1 = Struct_4(global1.a, ~(-1i), global1.c, ~vec2<u32>(88112u, 99775u), abs(select(~(global1.e ^ vec3<u32>(arg_1, 43988u, 1u)), _wgslsmith_clamp_vec3_u32(abs(global1.e), vec3<u32>(0u, 0u, 4294967295u), max(global1.e, global1.e)), vec3<bool>(true, true, true))));
    var var_1 = global1.d.x;
    var_1 = 0u;
    return Struct_3(select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec3<bool>(false, false, false)), false, false, any(vec4<bool>(false, true, false, true))), vec4<bool>(true, func_3(false), 2698i >= arg_0, true)), true), global1.a.xy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(2147483647i, func_4(33568u, func_1(), select(~7620u, 1u, false)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(484f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-349f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1512f, -281f)), _wgslsmith_f_op_f32(sign(1122f)))))), -1i);
    let var_1 = global1.c;
    var var_2 = global1.e.x != global1.e.x;
    let var_3 = -733f;
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -1486f);
    global1 = Struct_4(~global1.a, var_1.a.x, global1.c, ~(vec2<u32>(_wgslsmith_mod_u32(global1.d.x, global1.d.x), ~93190u) >> (global0[_wgslsmith_index_u32(~global1.e.x, 14u)] % vec2<u32>(32u))), (~global1.e >> (global1.e % vec3<u32>(32u))) & ~(~min(global1.e, vec3<u32>(49584u, global1.d.x, 1u))));
    var var_5 = Struct_4(-countOneBits(global1.a), global1.a.x, global1.c, _wgslsmith_sub_vec2_u32(~abs(vec2<u32>(19949u, 4294967295u)), firstTrailingBit(min(global1.d, ~global1.e.xz))), ~(~select(vec3<u32>(global1.d.x, global1.d.x, 1u), _wgslsmith_mod_vec3_u32(global1.e, global1.e), var_0.a.wzw)));
    var var_6 = Struct_1(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(0i, -2147483647i), -2147483647i ^ var_1.a.x, 1i, 6799i), -vec4<i32>(57121i, var_0.b.x, 21146i, var_5.b)), 1i, _wgslsmith_mod_i32(firstTrailingBit(u_input.a), firstTrailingBit(3019i)) << (~_wgslsmith_mult_u32(1u, var_5.e.x) % 32u), ~func_2().x), 4294967295u, ~(~(~(-var_1.a.x))));
    let var_7 = min(var_1.a.x, -15842i);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(var_1.a.x), abs(~(~firstLeadingBit(vec4<u32>(var_5.e.x, 0u, var_5.e.x, var_6.b)))), _wgslsmith_f_op_f32(-1051f * _wgslsmith_f_op_f32(-var_3)), _wgslsmith_mult_i32(reverseBits(_wgslsmith_dot_vec2_i32(-global1.a.yy, global1.c.a)), var_1.a.x | _wgslsmith_sub_i32(abs(0i), _wgslsmith_div_i32(var_6.c, u_input.a))));
}

