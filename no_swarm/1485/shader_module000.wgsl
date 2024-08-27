struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(Struct_1(vec4<u32>(11101u, 0u, 0u, 34454u))), Struct_2(Struct_1(vec4<u32>(743u, 120176u, 26654u, 4294967295u))), Struct_2(Struct_1(vec4<u32>(2781u, 4294967295u, 4294967295u, 60165u))), Struct_2(Struct_1(vec4<u32>(25469u, 76233u, 0u, 38347u))), Struct_2(Struct_1(vec4<u32>(0u, 46399u, 29743u, 2513u))), Struct_2(Struct_1(vec4<u32>(113062u, 48588u, 1u, 0u))), Struct_2(Struct_1(vec4<u32>(29496u, 4294967295u, 34033u, 0u))), Struct_2(Struct_1(vec4<u32>(28553u, 9426u, 0u, 99950u))), Struct_2(Struct_1(vec4<u32>(21921u, 4294967295u, 11065u, 4294967295u))), Struct_2(Struct_1(vec4<u32>(8595u, 41228u, 1u, 0u))), Struct_2(Struct_1(vec4<u32>(63747u, 601u, 0u, 4294967295u))), Struct_2(Struct_1(vec4<u32>(4294967295u, 39248u, 27201u, 1u))), Struct_2(Struct_1(vec4<u32>(16110u, 35980u, 4421u, 1u))), Struct_2(Struct_1(vec4<u32>(0u, 0u, 0u, 11613u))), Struct_2(Struct_1(vec4<u32>(561u, 1u, 9169u, 40380u))), Struct_2(Struct_1(vec4<u32>(4294967295u, 6619u, 1u, 0u))), Struct_2(Struct_1(vec4<u32>(6238u, 1u, 4294967295u, 10770u))), Struct_2(Struct_1(vec4<u32>(62716u, 1u, 4294967295u, 4294967295u))), Struct_2(Struct_1(vec4<u32>(1u, 129618u, 15351u, 10401u))), Struct_2(Struct_1(vec4<u32>(0u, 0u, 66758u, 4294967295u))), Struct_2(Struct_1(vec4<u32>(4294967295u, 1u, 14238u, 4294967295u))), Struct_2(Struct_1(vec4<u32>(23239u, 23127u, 13888u, 20198u))), Struct_2(Struct_1(vec4<u32>(0u, 0u, 81635u, 0u))), Struct_2(Struct_1(vec4<u32>(2272u, 1u, 954u, 4294967295u))), Struct_2(Struct_1(vec4<u32>(46187u, 4294967295u, 4294967295u, 49589u))), Struct_2(Struct_1(vec4<u32>(0u, 29895u, 0u, 7060u))), Struct_2(Struct_1(vec4<u32>(4294967295u, 1u, 71159u, 7103u))), Struct_2(Struct_1(vec4<u32>(30687u, 1u, 1u, 54356u))), Struct_2(Struct_1(vec4<u32>(1u, 100515u, 4294967295u, 14387u))), Struct_2(Struct_1(vec4<u32>(0u, 29263u, 1u, 13696u))));

var<private> global1: array<i32, 30> = array<i32, 30>(-25200i, -1i, 0i, 0i, 0i, -1i, 2147483647i, 32786i, 13611i, 0i, 2147483647i, -33612i, -3553i, -3639i, -1i, 2147483647i, 0i, 1i, i32(-2147483648), 57825i, 46730i, i32(-2147483648), i32(-2147483648), -1i, -1i, 44662i, -24832i, 19193i, 13158i, 20558i);

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<u32>(12634u, 0u, 26447u, 109188u)));

var<private> global3: u32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: i32) -> vec3<f32> {
    let var_0 = global0[_wgslsmith_index_u32(1u, 30u)];
    let var_1 = _wgslsmith_add_vec4_i32(firstLeadingBit(~vec4<i32>(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(29360u, 30u)], arg_2), -2147483647i, -50919i, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), 30u)])), ~vec4<i32>(reverseBits(-arg_2), abs(-2147483647i << (u_input.a.x % 32u)), arg_2, 2147483647i));
    global1 = array<i32, 30>();
    var var_2 = 81290i;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-499f + 467f), _wgslsmith_f_op_f32(ceil(1626f)), -1000f, _wgslsmith_f_op_f32(abs(815f))) - _wgslsmith_div_vec4_f32(vec4<f32>(976f, -299f, -2523f, 454f), vec4<f32>(963f, -1766f, 978f, 329f)))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-255f * 782f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1893f), 631f))), _wgslsmith_f_op_f32(ceil(2147f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-325f, -800f)) + _wgslsmith_f_op_f32(trunc(2324f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1232f, 428f) - -621f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(465f * -814f), _wgslsmith_f_op_f32(step(1231f, 467f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) - 288f))));
    return vec3<f32>(var_3.x, _wgslsmith_f_op_f32(ceil(var_3.x)), 847f);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: vec2<u32>, arg_3: vec2<i32>) -> vec4<u32> {
    global2 = global0[_wgslsmith_index_u32(global2.a.a.x, 30u)];
    let var_0 = vec3<i32>(~_wgslsmith_sub_i32(-1i, -2147483647i) ^ (~global1[_wgslsmith_index_u32(arg_2.x, 30u)] | -55225i), 15644i, ~(-39807i));
    let var_1 = global2.a;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-1570f * -1000f), _wgslsmith_f_op_f32(-235f * 1359f), 278f), _wgslsmith_f_op_vec3_f32(vec3<f32>(434f, 860f, 820f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-388f, 481f, -1821f))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(false, false, var_0.x))))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true))), vec3<bool>(true, true, true), 2147483647i > (var_0.x ^ 59548i)))));
    global2 = Struct_2(global2.a);
    return abs(u_input.a);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2) -> u32 {
    var var_0 = ~firstTrailingBit(_wgslsmith_dot_vec4_u32(countOneBits(global2.a.a), func_2(arg_1.a.a.xz, vec4<u32>(arg_1.a.a.x, global2.a.a.x, 4294967295u, global2.a.a.x), global2.a.a.xy, vec2<i32>(global1[_wgslsmith_index_u32(global2.a.a.x, 30u)], global1[_wgslsmith_index_u32(arg_1.a.a.x, 30u)]))) ^ 2311u);
    global0 = array<Struct_2, 30>();
    var var_1 = firstLeadingBit(4294967295u);
    global0 = array<Struct_2, 30>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-376f)), _wgslsmith_f_op_f32(-arg_0.x)) * _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_div_f32(-935f, 299f)));
    return _wgslsmith_add_u32(0u, ~(~u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~54270u, 30u)];
    var var_1 = Struct_2(Struct_1(global2.a.a));
    let var_2 = -1000f;
    let var_3 = vec4<i32>(2147483647i, _wgslsmith_dot_vec3_i32((~vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(var_0.a.a.x, 30u)], global1[_wgslsmith_index_u32(global2.a.a.x, 30u)]) << (_wgslsmith_add_vec3_u32(vec3<u32>(global2.a.a.x, var_1.a.a.x, var_1.a.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 11869u)) % vec3<u32>(32u))) >> (var_1.a.a.zyx % vec3<u32>(32u)), ~(-firstLeadingBit(vec3<i32>(global1[_wgslsmith_index_u32(var_0.a.a.x, 30u)], global1[_wgslsmith_index_u32(16041u, 30u)], global1[_wgslsmith_index_u32(var_0.a.a.x, 30u)])))), _wgslsmith_add_i32(_wgslsmith_mult_i32(-2147483647i, firstTrailingBit(-38250i)), -46741i), global1[_wgslsmith_index_u32(1u, 30u)]);
    global1 = array<i32, 30>();
    var var_4 = _wgslsmith_mult_u32(var_0.a.a.x, 5882u);
    var_0 = global0[_wgslsmith_index_u32(u_input.a.x, 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(firstTrailingBit(countOneBits(global2.a.a.x) >> (func_1(vec3<f32>(-2536f, var_2, -1040f), Struct_2(Struct_1(vec4<u32>(27317u, global2.a.a.x, 23763u, u_input.a.x)))) % 32u)), firstTrailingBit(_wgslsmith_mult_u32(4294967295u, u_input.a.x)), _wgslsmith_clamp_u32(~(~global2.a.a.x), ~global2.a.a.x, ~(~5635u))), _wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-304f)))))), countOneBits(var_3.zxz << (global2.a.a.xwx % vec3<u32>(32u))), _wgslsmith_sub_vec2_u32(vec2<u32>(~(~var_1.a.a.x), u_input.a.x), ~((var_0.a.a.yy << (var_0.a.a.xz % vec2<u32>(32u))) >> (~var_0.a.a.zz % vec2<u32>(32u)))), ~(-1233i));
}

