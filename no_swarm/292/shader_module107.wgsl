struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<vec3<u32>, 28>;

var<private> global2: array<i32, 26> = array<i32, 26>(4008i, -14106i, 1921i, -1i, 1i, 77826i, -18733i, 2147483647i, 2147483647i, -38246i, i32(-2147483648), 61172i, -1i, 0i, i32(-2147483648), -68316i, 43870i, 1i, 7970i, 355i, -20098i, 10770i, i32(-2147483648), -7307i, -1i, 0i);

var<private> global3: array<f32, 7>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>) -> i32 {
    var var_0 = ~max(~1u, 54777u);
    global0 = !(!vec2<bool>(global0.x, global0.x && global0.x));
    let var_1 = vec2<u32>(~(max(u_input.b.x, 4294967295u) & arg_0), _wgslsmith_clamp_u32(4294967295u, u_input.b.x, ~1u));
    let var_2 = Struct_1(4294967295u << (~(55196u & firstTrailingBit(u_input.b.x)) % 32u));
    let var_3 = _wgslsmith_f_op_f32(-1f);
    return _wgslsmith_sub_i32(_wgslsmith_mult_i32(1i, _wgslsmith_add_i32(u_input.a | _wgslsmith_clamp_i32(22197i, 29796i, u_input.c), ~(-2147483647i))), ~(~35248i & -_wgslsmith_sub_i32(1i, u_input.c)));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>, arg_2: u32) -> u32 {
    var var_0 = ~1u | arg_0;
    global1 = array<vec3<u32>, 28>();
    global0 = arg_1.ww;
    global1 = array<vec3<u32>, 28>();
    let var_1 = _wgslsmith_mult_i32(~2147483647i, func_3(~(~arg_0) & 1u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 7u)], -367f, global3[_wgslsmith_index_u32(4294967295u, 7u)], global3[_wgslsmith_index_u32(u_input.b.x, 7u)])) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 7u)], global3[_wgslsmith_index_u32(19136u, 7u)], global3[_wgslsmith_index_u32(arg_0, 7u)], -223f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(62254u, 7u)], 2239f, -1310f, global3[_wgslsmith_index_u32(4294967295u, 7u)]) + vec4<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 7u)], global3[_wgslsmith_index_u32(u_input.b.x, 7u)], global3[_wgslsmith_index_u32(u_input.b.x, 7u)], global3[_wgslsmith_index_u32(4294967295u, 7u)])) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(544f, 1000f, 1491f, global3[_wgslsmith_index_u32(arg_2, 7u)]))))));
    return firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.b.zy, u_input.b.xy >> (u_input.b.xx % vec2<u32>(32u))), _wgslsmith_add_u32(1u, ~u_input.b.x))) >> (arg_0 % 32u);
}

fn func_1() -> Struct_1 {
    var var_0 = select(select(vec4<bool>(false, false, select(true, global0.x & false, !global0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -11818i, 2147483647i), vec3<i32>(u_input.c, -18012i, u_input.a)) < u_input.a), !(!(!vec4<bool>(true, global0.x, global0.x, global0.x))), vec4<bool>(false, select(all(vec4<bool>(global0.x, true, true, false)), true & global0.x, global0.x), !(u_input.b.x != u_input.b.x), func_2(u_input.b.x, vec4<bool>(false, false, global0.x, global0.x), 0u) >= u_input.b.x)), !vec4<bool>(true || all(vec2<bool>(true, global0.x)), any(select(vec3<bool>(global0.x, false, false), vec3<bool>(true, global0.x, false), true)), any(vec2<bool>(global0.x, global0.x)), select(true, global0.x, true) & all(vec3<bool>(global0.x, false, global0.x))), select(select(vec4<bool>(false, true, true, global0.x), vec4<bool>(global0.x, global0.x, any(vec4<bool>(global0.x, true, false, global0.x)), global3[_wgslsmith_index_u32(68633u, 7u)] >= global3[_wgslsmith_index_u32(u_input.b.x, 7u)]), global0.x), !select(select(vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(global0.x, false, global0.x, false), vec4<bool>(false, true, true, false)), !vec4<bool>(global0.x, true, false, global0.x), select(vec4<bool>(false, global0.x, true, true), vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(global0.x, global0.x, true, global0.x))), select(vec4<bool>(true, all(vec3<bool>(true, global0.x, false)), all(vec4<bool>(false, true, true, false)), true), select(vec4<bool>(false, global0.x, false, global0.x), select(vec4<bool>(global0.x, true, false, false), vec4<bool>(true, global0.x, false, true), vec4<bool>(true, true, global0.x, global0.x)), u_input.a > 1i), vec4<bool>(true, true, true, true))));
    let var_1 = _wgslsmith_f_op_f32(select(381f, 207f, all(var_0.ww)));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 7u)])))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(var_1 - var_1))));
    let var_3 = _wgslsmith_sub_vec3_u32(~(~(~u_input.b) << (_wgslsmith_add_vec3_u32(min(u_input.b, global1[_wgslsmith_index_u32(14233u, 28u)]), global1[_wgslsmith_index_u32(func_2(28970u, vec4<bool>(var_0.x, true, var_0.x, true), 0u), 28u)]) % vec3<u32>(32u))), global1[_wgslsmith_index_u32(u_input.b.x, 28u)] << (~(~_wgslsmith_mod_vec3_u32(global1[_wgslsmith_index_u32(35496u, 28u)], u_input.b)) % vec3<u32>(32u)));
    var var_4 = Struct_1(select(~4294967295u, 0u << (_wgslsmith_div_u32(1u & u_input.b.x, ~var_3.x) % 32u), false));
    return Struct_1(var_3.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3[_wgslsmith_index_u32(arg_0.a, 7u)], -139f, -1000f), vec3<f32>(325f, -628f, -182f), arg_1))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-280f, global3[_wgslsmith_index_u32(1u, 7u)], global3[_wgslsmith_index_u32(u_input.b.x, 7u)]), vec3<f32>(509f, global3[_wgslsmith_index_u32(4058u, 7u)], global3[_wgslsmith_index_u32(arg_0.a, 7u)]), vec3<bool>(arg_1.x, arg_1.x, global0.x))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2232f, 1000f, global3[_wgslsmith_index_u32(48963u, 7u)])))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(14209u, 7u)], global3[_wgslsmith_index_u32(u_input.b.x, 7u)], global3[_wgslsmith_index_u32(u_input.b.x, 7u)]) + vec3<f32>(global3[_wgslsmith_index_u32(arg_0.a, 7u)], -843f, global3[_wgslsmith_index_u32(u_input.b.x, 7u)])))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(21467u, 7u)], global3[_wgslsmith_index_u32(u_input.b.x, 7u)], -1000f), vec3<f32>(-1390f, global3[_wgslsmith_index_u32(arg_0.a, 7u)], global3[_wgslsmith_index_u32(arg_0.a, 7u)])))))));
    global1 = array<vec3<u32>, 28>();
    global3 = array<f32, 7>();
    let var_1 = Struct_2(arg_0, global0.x);
    let var_2 = var_1;
    return vec2<bool>(!all(vec2<bool>(true, arg_1.x)), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(4380u, 7u)];
    var var_1 = 1u;
    var var_2 = -1373f;
    var var_3 = Struct_1(_wgslsmith_dot_vec3_u32(~(abs(vec3<u32>(80376u, 4294967295u, 64403u)) >> ((u_input.b & vec3<u32>(u_input.b.x, 57603u, 4294967295u)) % vec3<u32>(32u))), global1[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(1u, u_input.b.x)), 28u)]));
    let var_4 = select(func_4(func_1(), !(!(!vec3<bool>(global0.x, true, true)))), vec2<bool>(false, true), global0.x);
    var var_5 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_div_u32(14266u, 1u)) << (~((18999u ^ var_3.a) << (var_3.a % 32u)) % 32u), 7u)], _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(var_3.a, 26u)], 12693i, u_input.a, 36445i), _wgslsmith_clamp_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(var_3.a, 26u)], global2[_wgslsmith_index_u32(0u, 26u)], u_input.c, 1i), vec4<i32>(-24253i, 1i, global2[_wgslsmith_index_u32(var_3.a, 26u)], u_input.c), vec4<i32>(global2[_wgslsmith_index_u32(var_3.a, 26u)], global2[_wgslsmith_index_u32(var_3.a, 26u)], u_input.a, 0i))), vec4<i32>(firstTrailingBit(0i), -35092i, 0i, -19457i | global2[_wgslsmith_index_u32(var_3.a, 26u)])) << (~reverseBits(~vec4<u32>(30970u, var_3.a, var_3.a, var_3.a)) % vec4<u32>(32u)), vec2<i32>(abs(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-38303i, -1i, global2[_wgslsmith_index_u32(68157u, 26u)])), ~vec3<i32>(-1i, u_input.c, 9877i))), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.b.x, var_3.a, var_3.a), 26u)]), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(38607u, 7u)], 653f, -171f))))));
}

