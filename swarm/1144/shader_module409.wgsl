struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31> = array<f32, 31>(-334f, -734f, -1685f, -761f, -1493f, -944f, -537f, -1027f, -1000f, 1000f, 1954f, 1409f, -236f, 1082f, 1042f, -1322f, 1149f, -409f, 524f, -309f, -680f, -1532f, 1000f, 924f, -352f, -1531f, 565f, 1539f, 104f, 123f, 1171f);

var<private> global1: f32;

var<private> global2: bool;

var<private> global3: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_2) -> vec3<bool> {
    global3 = Struct_1(vec3<i32>(-67450i, -(~(-2147483647i)), 14191i));
    let var_0 = Struct_1((vec3<i32>(~2147483647i, 47356i & arg_0.c.a.x, _wgslsmith_add_i32(arg_0.c.a.x, 1i)) ^ ~vec3<i32>(arg_0.c.a.x, 1i, arg_0.c.a.x)) | vec3<i32>(1i, ~select(global3.a.x, 0i, true), _wgslsmith_div_i32(26852i, 2147483647i) << (_wgslsmith_mod_u32(u_input.b.x, 55953u) % 32u)));
    var var_1 = ~(~var_0.a.x);
    var var_2 = _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_0.d, vec4<u32>(arg_0.d.x, u_input.b.x, 37799u, 4294967295u), u_input.c), reverseBits(arg_0.d)), 0u), 31u)], global0[_wgslsmith_index_u32(~(min(7771u, max(55065u, arg_0.d.x)) << (select(min(arg_0.d.x, arg_0.d.x), u_input.a, true) % 32u)), 31u)]));
    let var_3 = arg_0.c;
    return vec3<bool>(arg_0.a.x, true, false);
}

fn func_2() -> f32 {
    var var_0 = Struct_2(func_3(Struct_2(vec3<bool>(true, true, true), -2443f == _wgslsmith_f_op_f32(ceil(-1055f)), Struct_1(global3.a), ~u_input.c | u_input.c)), true, Struct_1(~vec3<i32>(-43736i, _wgslsmith_div_i32(global3.a.x, u_input.d.x), 1i)), u_input.c);
    var var_1 = var_0.b;
    var var_2 = any(!(!select(vec4<bool>(false, false, false, var_0.a.x), vec4<bool>(true, false, true, true), true))) & (!all(!vec3<bool>(var_0.b, false, var_0.a.x)) & true);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, _wgslsmith_add_u32(min(u_input.c.x, var_0.d.x), 45389u)), 31u)]) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(var_0.d.x, 31u)], global0[_wgslsmith_index_u32(u_input.a, 31u)], var_0.b)) - global0[_wgslsmith_index_u32(1u, 31u)]));
    var var_4 = firstTrailingBit(vec3<i32>(~firstTrailingBit(min(var_0.c.a.x, var_0.c.a.x)), _wgslsmith_mult_i32(u_input.d.x, -firstTrailingBit(var_0.c.a.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(~global3.a.x, _wgslsmith_mult_i32(u_input.d.x, var_0.c.a.x), countOneBits(-2147483647i)), global3.a)));
    return global0[_wgslsmith_index_u32(u_input.a, 31u)];
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: i32) -> Struct_2 {
    let var_0 = Struct_1(abs(vec3<i32>(-arg_1, arg_1, firstTrailingBit(~(-1i)))));
    global1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2()), 130f));
    global2 = false;
    var var_1 = _wgslsmith_clamp_u32(4294967295u, ~(~arg_0.x), 1u);
    let var_2 = ~_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(var_0.a, vec3<i32>(u_input.d.x, 44799i, arg_1)), abs(61986i)), 7766i, _wgslsmith_div_i32(global3.a.x, 18602i) ^ global3.a.x, firstTrailingBit(0i)), ~(-vec4<i32>(0i, var_0.a.x, -1i, -1i)));
    return Struct_2(select(select(vec3<bool>(true, any(vec4<bool>(false, true, true, true)), true), func_3(Struct_2(vec3<bool>(false, true, false), false, Struct_1(vec3<i32>(global3.a.x, var_0.a.x, -23013i)), vec4<u32>(1u, u_input.a, 54810u, u_input.b.x))), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false)), vec3<bool>(true, true, true), !select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), vec3<bool>(false, true, true), true)), ((-u_input.d.x >> ((u_input.b.x ^ 4294967295u) % 32u)) << (_wgslsmith_dot_vec2_u32(~vec2<u32>(4720u, u_input.b.x), u_input.c.xz) % 32u)) > -arg_1, Struct_1(-vec3<i32>(-23030i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, -6087i, arg_1, u_input.d.x), vec4<i32>(global3.a.x, var_2.x, 0i, global3.a.x)), i32(-1i) * -2147483647i)), vec4<u32>(firstTrailingBit(~_wgslsmith_mod_u32(u_input.a, arg_0.x)), 4294967295u, 112872u, 8612u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 31>();
    var var_0 = func_1(u_input.b | ~u_input.b, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(~u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x)), select(-vec4<i32>(u_input.d.x, -2147483647i, global3.a.x, 2166i), _wgslsmith_mult_vec4_i32(vec4<i32>(-28440i, -32095i, global3.a.x, global3.a.x), vec4<i32>(0i, -14307i, -1i, u_input.d.x)), true) | ~(~vec4<i32>(u_input.d.x, 39209i, 1i, -2147483647i))), 1i);
    let var_1 = -u_input.d.x;
    let var_2 = 1065f;
    let var_3 = -var_1;
    global0 = array<f32, 31>();
    var_0 = func_1(min(countOneBits(vec3<u32>(1u, var_0.d.x << (var_0.d.x % 32u), ~var_0.d.x)), ~(~u_input.b | (vec3<u32>(u_input.b.x, var_0.d.x, var_0.d.x) ^ vec3<u32>(14449u, var_0.d.x, 63009u)))), _wgslsmith_dot_vec2_i32(global3.a.zx, vec2<i32>(1i, firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 808i), u_input.d)))), ~var_0.c.a.x);
    var_0 = func_1(max(u_input.c.wzy, _wgslsmith_mult_vec3_u32(u_input.b, vec3<u32>(~u_input.b.x, 0u, 108782u << (u_input.b.x % 32u)))), ~(-select(2147483647i, global3.a.x, var_0.a.x) & firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3, 6258i, global3.a.x), global3.a))), 58531i);
    let var_4 = -246f;
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(max(-19322i, 1i), global3.a.x), var_0.c.a & vec3<i32>(-35271i, _wgslsmith_mult_i32(u_input.d.x, 45630i & u_input.d.x), 49016i), ~(~_wgslsmith_mult_u32(~58461u, func_1(vec3<u32>(17174u, u_input.b.x, u_input.c.x), 0i, 49256i).d.x)), abs(vec4<i32>(~u_input.d.x, min(-82i, 10185i) | (var_0.c.a.x >> (1u % 32u)), 31959i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, -2147483647i, global3.a.x) << (vec3<u32>(4294967295u, 4294967295u, u_input.b.x) % vec3<u32>(32u)), select(global3.a, global3.a, vec3<bool>(var_0.b, var_0.b, false))))), 42448i);
}

