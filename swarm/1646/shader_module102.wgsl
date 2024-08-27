struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
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

var<private> global0: array<vec4<bool>, 7> = array<vec4<bool>, 7>(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false));

var<private> global1: i32 = 1i;

var<private> global2: vec3<u32> = vec3<u32>(0u, 0u, 66454u);

var<private> global3: array<i32, 21>;

var<private> global4: bool = true;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    global2 = _wgslsmith_mod_vec3_u32((~(vec3<u32>(0u, global2.x, 39782u) << (vec3<u32>(global2.x, 10713u, global2.x) % vec3<u32>(32u))) << (firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(global2.x, 4294967295u, 12854u), vec3<u32>(global2.x, 58755u, 7658u))) % vec3<u32>(32u))) ^ ~select(~vec3<u32>(1u, 25630u, 1u), select(vec3<u32>(global2.x, 20952u, 1u), vec3<u32>(global2.x, global2.x, global2.x), vec3<bool>(false, true, false)), true), _wgslsmith_add_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 36581u, global2.x), vec3<u32>(global2.x, global2.x, global2.x)) << (firstTrailingBit(~vec3<u32>(global2.x, 33944u, global2.x)) % vec3<u32>(32u)), ~abs(vec3<u32>(global2.x, global2.x, global2.x))));
    let var_0 = Struct_1(select(!global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 71541u), ~global2.zy), 7u)], !vec4<bool>(true, true, true, all(vec3<bool>(false, false, true))), false), _wgslsmith_f_op_f32(floor(arg_0.x)));
    var var_1 = min(global2.x, global2.x) & (global2.x << (_wgslsmith_mult_u32(global2.x, ~_wgslsmith_mod_u32(global2.x, 14016u)) % 32u));
    global3 = array<i32, 21>();
    return -116f;
}

fn func_2(arg_0: bool) -> Struct_4 {
    global1 = global3[_wgslsmith_index_u32(global2.x, 21u)];
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-920f, 749f) - vec2<f32>(374f, 1831f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -513f) - -756f)), _wgslsmith_div_f32(1862f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-584f))))))) * 197f);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-533f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -510f))), 1170f) - vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1711f, 631f, true)), _wgslsmith_f_op_f32(-1720f * 654f))), _wgslsmith_f_op_f32(-455f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1032f + 1000f) - _wgslsmith_f_op_f32(round(1879f))))));
    let var_2 = var_1.xz;
    var var_3 = ~0u >> ((global2.x & max(~(~global2.x), ~(global2.x << (global2.x % 32u)))) % 32u);
    return Struct_4(Struct_1(select(select(!vec4<bool>(arg_0, arg_0, arg_0, arg_0), select(global0[_wgslsmith_index_u32(1u, 7u)], vec4<bool>(arg_0, true, false, true), true), arg_0), !select(global0[_wgslsmith_index_u32(global2.x, 7u)], global0[_wgslsmith_index_u32(74492u, 7u)], arg_0), select(vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(~1u, 7u)])), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x * var_2.x), 242f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1031f, var_2.x, var_1.x, var_1.x)))), _wgslsmith_div_f32(var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -125f)), _wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1545f))))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3) -> Struct_3 {
    let var_0 = global2.x;
    var var_1 = arg_1.a.d;
    let var_2 = arg_0.a.a.zw;
    var_1 = vec3<i32>(49455i, _wgslsmith_dot_vec4_i32(firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.a.d.x, global3[_wgslsmith_index_u32(27538u, 21u)], 2147483647i, -1i), vec4<i32>(u_input.a.x, 2147483647i, arg_1.a.d.x, var_1.x))), abs(-vec4<i32>(var_1.x, arg_1.a.d.x, -23880i, -2147483647i))) << (arg_1.b % 32u), min(arg_1.a.d.x, max(var_1.x, ~global3[_wgslsmith_index_u32(global2.x, 21u)]) << (~arg_1.b % 32u)));
    var var_3 = arg_0;
    return arg_1;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2) -> Struct_3 {
    var var_0 = Struct_3(arg_1, 45025u);
    return func_4(func_2(!arg_1.a.a.x), Struct_3(Struct_2(func_2(false).a, func_2(!arg_0.x).a, select(func_2(true).a.a, vec4<bool>(false, true, var_0.a.a.a.x, true), !arg_1.a.a), arg_1.d), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.b, 1759u), vec3<u32>(9693u, 35091u, global2.x)), var_0.b) << (~global2.x % 32u)));
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: Struct_3) -> vec2<i32> {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.a.d.x << (global2.x % 32u), _wgslsmith_mult_i32(func_4(func_2(false), arg_2).a.d.x, ~func_4(Struct_4(Struct_1(vec4<bool>(true, arg_2.a.b.a.x, arg_2.a.c.x, arg_2.a.b.a.x), arg_2.a.b.b), vec4<f32>(-2019f, arg_1, 787f, arg_2.a.a.b), -1000f, -1000f), Struct_3(arg_2.a, global2.x)).a.d.x), 2147483647i), vec3<i32>(arg_2.a.d.x, ~arg_2.a.d.x, max(-arg_2.a.d.x, _wgslsmith_dot_vec2_i32(u_input.a, arg_2.a.d.yz)) << (countOneBits(15483u) % 32u)));
    let var_1 = arg_2;
    let var_2 = abs(~23641u) << (~(~(~func_1(vec3<bool>(true, true, false), var_1.a).b)) % 32u);
    let var_3 = _wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(reverseBits(1u), arg_2.b, firstTrailingBit(arg_2.b))) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(58782u, _wgslsmith_clamp_u32(47813u, 119060u, global2.x), _wgslsmith_div_u32(global2.x, 0u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_2, global2.x, 1u), abs(vec3<u32>(0u, var_2, 4294967295u)), vec3<u32>(arg_2.b, 27009u, 0u))) % vec3<u32>(32u)), reverseBits(_wgslsmith_mult_vec3_u32(abs(firstLeadingBit(vec3<u32>(var_1.b, 56558u, 0u))), vec3<u32>(global2.x, ~1u, var_2 | 0u))));
    var var_4 = vec2<bool>(false, false);
    return reverseBits(arg_2.a.d.zx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -187i;
    global2 = vec3<u32>(0u, _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(28u, 1u), global2.x), ~global2.x | _wgslsmith_sub_u32(global2.x, global2.x)), ~abs(abs(34713u)));
    let var_1 = reverseBits(-1i);
    let var_2 = global2.x;
    global3 = array<i32, 21>();
    var var_3 = _wgslsmith_mult_vec2_i32(u_input.a, ~func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(129f + 524f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1725f, 456f, true))), func_1(vec3<bool>(false, false, true), Struct_2(Struct_1(global0[_wgslsmith_index_u32(global2.x, 7u)], -1510f), Struct_1(global0[_wgslsmith_index_u32(47550u, 7u)], 1100f), global0[_wgslsmith_index_u32(29218u, 7u)], vec3<i32>(-30855i, 21523i, -23237i)))));
    global1 = -19096i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(~28072i, 2147483647i));
}

