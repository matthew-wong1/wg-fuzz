struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(0u, true, vec3<u32>(23030u, 10472u, 68188u), 64139u, 73514i), Struct_1(5259u, false, vec3<u32>(111085u, 4294967295u, 4294967295u), 13240u, 2147483647i), Struct_1(45902u, true, vec3<u32>(14451u, 35266u, 0u), 2228u, 19076i), Struct_1(12237u, false, vec3<u32>(12775u, 1u, 37811u), 13952u, 4930i), Struct_1(0u, false, vec3<u32>(1u, 13023u, 4294967295u), 1u, i32(-2147483648)), Struct_1(22180u, true, vec3<u32>(27597u, 1u, 5513u), 1u, -1i), Struct_1(1u, false, vec3<u32>(24581u, 88059u, 2737u), 18617u, 31889i), Struct_1(62982u, true, vec3<u32>(4294967295u, 3468u, 24453u), 17215u, -58415i), Struct_1(80189u, true, vec3<u32>(11035u, 21526u, 41117u), 4294967295u, 2147483647i), Struct_1(23660u, true, vec3<u32>(45691u, 54918u, 68708u), 0u, -1i), Struct_1(9194u, false, vec3<u32>(4294967295u, 15387u, 4294967295u), 1u, -48665i), Struct_1(18808u, true, vec3<u32>(4294967295u, 1u, 11586u), 1u, 0i), Struct_1(19791u, false, vec3<u32>(9830u, 4294967295u, 1u), 81974u, 30488i), Struct_1(4294967295u, false, vec3<u32>(42636u, 1u, 51845u), 1u, 41016i), Struct_1(1u, false, vec3<u32>(31720u, 46172u, 1u), 33778u, 0i), Struct_1(1u, true, vec3<u32>(16441u, 4294967295u, 0u), 4294967295u, 7191i), Struct_1(809u, true, vec3<u32>(48693u, 4294967295u, 4294967295u), 41538u, -2649i), Struct_1(4294967295u, true, vec3<u32>(0u, 1u, 67217u), 28369u, -41199i), Struct_1(0u, true, vec3<u32>(17226u, 4294967295u, 4294967295u), 50918u, 71170i), Struct_1(0u, true, vec3<u32>(0u, 136902u, 1u), 16328u, 32263i), Struct_1(85268u, false, vec3<u32>(29216u, 4294967295u, 8430u), 6065u, i32(-2147483648)), Struct_1(1u, false, vec3<u32>(27203u, 60232u, 1226u), 0u, 2147483647i), Struct_1(4294967295u, true, vec3<u32>(85892u, 4294967295u, 1u), 1u, -29154i), Struct_1(4294967295u, true, vec3<u32>(10417u, 3291u, 1u), 4294967295u, -1i), Struct_1(1u, false, vec3<u32>(0u, 0u, 1u), 21622u, 38224i), Struct_1(4294967295u, true, vec3<u32>(1u, 15887u, 12127u), 4294967295u, 32630i), Struct_1(70654u, false, vec3<u32>(0u, 119472u, 81438u), 1u, -1i));

var<private> global1: array<i32, 26>;

var<private> global2: vec3<u32>;

var<private> global3: vec3<bool>;

var<private> global4: array<vec3<i32>, 5> = array<vec3<i32>, 5>(vec3<i32>(5869i, i32(-2147483648), -10583i), vec3<i32>(38033i, 2147483647i, 8364i), vec3<i32>(-8578i, 9687i, i32(-2147483648)), vec3<i32>(0i, i32(-2147483648), -34250i), vec3<i32>(2147483647i, 2147483647i, -1i));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: f32) -> vec2<i32> {
    var var_0 = countOneBits((((global2.x ^ 1u) << (_wgslsmith_clamp_u32(global2.x, global2.x, global2.x) % 32u)) ^ 1u) | 1u);
    global0 = array<Struct_1, 27>();
    let var_1 = ~(~(~(~vec3<u32>(global2.x, 1u, global2.x))));
    global1 = array<i32, 26>();
    let var_2 = ~_wgslsmith_div_i32(-(~u_input.b.x), ~_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(global2.x, 26u)], 17988i)) >= 15272i;
    return -_wgslsmith_div_vec2_i32(u_input.b, vec2<i32>(~u_input.c, -44558i));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: vec2<bool>) -> vec2<i32> {
    global4 = array<vec3<i32>, 5>();
    global1 = array<i32, 26>();
    global2 = max(_wgslsmith_mult_vec3_u32(vec3<u32>(11929u, arg_0, ~arg_0), _wgslsmith_add_vec3_u32(~(~vec3<u32>(0u, global2.x, global2.x)), vec3<u32>(~1u, global2.x, firstTrailingBit(4294967295u)))), vec3<u32>(13727u, abs(_wgslsmith_add_u32(3452u, 0u)), countOneBits(~0u)) & ~vec3<u32>(~global2.x, ~global2.x, arg_0));
    var var_0 = max(_wgslsmith_dot_vec2_i32(vec2<i32>(max(34851i >> (arg_0 % 32u), -1i), _wgslsmith_div_i32(8692i, -23443i >> (global2.x % 32u))), _wgslsmith_mult_vec2_i32(-u_input.b, -u_input.b)), u_input.b.x);
    global1 = array<i32, 26>();
    return func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x))) & func_3(_wgslsmith_f_op_f32(-350f + arg_1.b.x));
}

fn func_4(arg_0: vec2<i32>) -> i32 {
    let var_0 = global4[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(global2.x, global2.x ^ select(global2.x, abs(41984u), global3.x)), ~countOneBits(global2.x)), 5u)];
    global0 = array<Struct_1, 27>();
    global3 = vec3<bool>(false, any(!global3.xy), global3.x);
    var var_1 = firstTrailingBit(vec3<i32>(~(~var_0.x), reverseBits(_wgslsmith_add_i32(0i, firstLeadingBit(global1[_wgslsmith_index_u32(0u, 26u)]))), ~(-2147483647i)));
    var var_2 = Struct_2(any(select(vec2<bool>(global3.x, any(vec3<bool>(true, global3.x, false))), global3.zx, select(global3.yy, global3.xy, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * vec3<f32>(170f, -1000f, 227f))) * vec3<f32>(-394f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(275f))), _wgslsmith_f_op_f32(ceil(706f)))));
    return ~var_0.x;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<bool>) -> f32 {
    var var_0 = Struct_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, global2.x), select(global2.yz, global2.xx, vec2<bool>(arg_1.x, false))) | ~(_wgslsmith_sub_u32(1u, 1u) >> (global2.x % 32u)), ~1i == global1[_wgslsmith_index_u32(global2.x, 26u)], ~_wgslsmith_add_vec3_u32(vec3<u32>(global2.x, 58922u, 1u), vec3<u32>(0u, 4294967295u, global2.x)) | firstTrailingBit(firstLeadingBit(vec3<u32>(global2.x, global2.x, 4294967295u))), reverseBits(_wgslsmith_mod_u32(global2.x, global2.x >> (18153u % 32u))), func_4(firstTrailingBit(~func_2(global2.x, Struct_2(true, vec3<f32>(1066f, -222f, 1725f)), vec2<bool>(false, global3.x)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1038f, -1722f), -298f)), -311f, _wgslsmith_f_op_f32(f32(-1f) * -463f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(1901f + 1126f), 2239f, -1000f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(1370f, 1531f)), _wgslsmith_f_op_f32(floor(613f)), _wgslsmith_f_op_f32(-721f - 798f)) * vec3<f32>(1767f, _wgslsmith_f_op_f32(select(689f, 918f, arg_1.x)), 1f))), !arg_1.wyw));
    global2 = ~(select(var_0.c, var_0.c, arg_1.xzw) & _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(31759u, global2.x, var_0.c.x)), vec3<u32>(1u, global2.x, global2.x)), var_0.c));
    global1 = array<i32, 26>();
    var var_2 = ~1u ^ ~select(global2.x, max(min(0u, 2983u), 76043u), false);
    return 367f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(func_1(u_input.b, vec4<bool>(global3.x, global3.x, false, true))), _wgslsmith_f_op_f32(round(327f)), -857f, _wgslsmith_f_op_f32(max(156f, -1010f)))))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(153f)))), 963f, 701f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1590f, -303f)) + _wgslsmith_f_op_f32(-199f * -495f))))));
    let var_1 = select(_wgslsmith_add_vec3_u32(~vec3<u32>(global2.x, global2.x ^ global2.x, ~1u), ~((vec3<u32>(4707u, global2.x, 1u) & vec3<u32>(0u, global2.x, global2.x)) | abs(vec3<u32>(4294967295u, 20543u, 1u)))), ~abs(max(vec3<u32>(global2.x, global2.x, 3096u), firstLeadingBit(vec3<u32>(1u, global2.x, global2.x)))), 1u < global2.x);
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(min(~firstTrailingBit(abs(var_1.x)), global2.x), _wgslsmith_mod_u32(~var_1.x, 16277u)), 27u)];
    let var_3 = abs(firstTrailingBit(var_1));
    global0 = array<Struct_1, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(-1i, 342f);
}

