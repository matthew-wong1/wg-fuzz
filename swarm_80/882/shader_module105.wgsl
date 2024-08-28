struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 28> = array<vec3<i32>, 28>(vec3<i32>(-45791i, 14178i, 2990i), vec3<i32>(21647i, 2147483647i, i32(-2147483648)), vec3<i32>(36083i, 8011i, 33571i), vec3<i32>(i32(-2147483648), 10097i, -41947i), vec3<i32>(-3819i, 1i, 0i), vec3<i32>(1i, 1i, i32(-2147483648)), vec3<i32>(-593i, -11444i, -29172i), vec3<i32>(24011i, -15216i, 1i), vec3<i32>(0i, 0i, -41433i), vec3<i32>(2147483647i, 2147483647i, 29113i), vec3<i32>(-107499i, 2147483647i, i32(-2147483648)), vec3<i32>(-2741i, 2679i, 2147483647i), vec3<i32>(-1i, 29188i, 2147483647i), vec3<i32>(-1i, -4900i, 1i), vec3<i32>(-6406i, 1i, 2147483647i), vec3<i32>(0i, 51898i, 1i), vec3<i32>(6685i, 52018i, -1i), vec3<i32>(0i, i32(-2147483648), 15510i), vec3<i32>(-9947i, 43067i, -29312i), vec3<i32>(-18364i, -1i, 45226i), vec3<i32>(0i, -1i, 111333i), vec3<i32>(-69472i, 1i, 7778i), vec3<i32>(3089i, -1i, -22179i), vec3<i32>(29346i, -51095i, 41436i), vec3<i32>(i32(-2147483648), i32(-2147483648), 19281i), vec3<i32>(-6746i, i32(-2147483648), 0i), vec3<i32>(13773i, -7389i, i32(-2147483648)), vec3<i32>(-1i, i32(-2147483648), 14752i));

var<private> global1: array<u32, 8> = array<u32, 8>(106352u, 21035u, 5941u, 8607u, 4294967295u, 1u, 1u, 0u);

var<private> global2: vec4<i32>;

var<private> global3: f32;

var<private> global4: Struct_1 = Struct_1(-2185i, 0u, vec2<i32>(0i, -1i), vec4<u32>(17180u, 0u, 29636u, 1u));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: u32) -> vec4<i32> {
    let var_0 = Struct_2(Struct_1(~_wgslsmith_div_i32(_wgslsmith_div_i32(-1i, global2.x), ~16322i), ~(~71578u) & _wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.a.yy), ~vec2<u32>(28067u, u_input.a.x)), -(vec2<i32>(global2.x, global4.c.x) ^ vec2<i32>(-1i, global4.a)) << (~arg_0.wy % vec2<u32>(32u)), vec4<u32>(~0u, arg_2, firstLeadingBit(global4.d.x), select(_wgslsmith_sub_u32(1u, 1u), ~u_input.b.x, global1[_wgslsmith_index_u32(56124u, 8u)] < 1u))), Struct_1(abs(-35471i) & firstTrailingBit(-36043i), 1u, _wgslsmith_sub_vec2_i32(global4.c, global4.c), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 18389u, 57411u, global4.b), ~vec4<u32>(u_input.a.x, arg_0.x, arg_0.x, global4.d.x)), global4.d, min(global4.d | global4.d, abs(vec4<u32>(4294967295u, 38580u, 54145u, 1u))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1840f, -656f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(971f, 561f))))))));
    var var_2 = var_1.x;
    var var_3 = select(vec4<bool>(!arg_1.x, arg_1.x, arg_1.x, false), select(vec4<bool>(arg_1.x, all(vec2<bool>(arg_1.x, true)), !all(arg_1), arg_1.x), vec4<bool>(all(!arg_1.xw), false, true, any(arg_1.yxx)), !(!arg_1)), 1u < ~_wgslsmith_sub_u32(0u, var_0.b.b << (global4.d.x % 32u)));
    var var_4 = var_0.a.d.zzy;
    return vec4<i32>(-1i ^ _wgslsmith_sub_i32(var_0.a.c.x, firstLeadingBit(-global2.x)), i32(-1i) * -2147483647i, global2.x, var_0.b.a);
}

fn func_2(arg_0: Struct_2) -> bool {
    var var_0 = ~(_wgslsmith_mod_vec4_u32(global4.d, _wgslsmith_div_vec4_u32(~global4.d, ~arg_0.a.d)) ^ arg_0.b.d);
    var var_1 = 1991f;
    global2 = ~select(~abs(vec4<i32>(global4.c.x, -1i, -7316i, arg_0.a.a)), vec4<i32>(-1i) * -vec4<i32>(global2.x, 30164i, 0i, 1i), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false))) | _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, global4.a, global4.c.x, -1i) << (arg_0.a.d % vec4<u32>(32u)), vec4<i32>(arg_0.b.c.x, 0i, global2.x, global2.x) ^ vec4<i32>(-45237i, 41445i, 11666i, arg_0.a.c.x)), -select(global2.x, global2.x, false), -(~(-23598i)), 23215i), ~func_3(arg_0.b.d, vec4<bool>(true, true, false, false), arg_0.b.d.x) | _wgslsmith_add_vec4_i32(~vec4<i32>(arg_0.a.a, -2412i, arg_0.b.a, arg_0.a.a), vec4<i32>(global4.a, global4.a, -2147483647i, -35522i)), abs(vec4<i32>(0i, abs(global2.x), ~1i, 0i)));
    var var_2 = all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, 2147483647i < global2.x, true), false), vec3<bool>(!all(vec4<bool>(false, false, false, true)), true & all(vec2<bool>(false, false)), all(vec3<bool>(true, true, false)) & true)));
    var var_3 = _wgslsmith_mult_vec4_u32(arg_0.a.d, vec4<u32>(_wgslsmith_mod_u32(reverseBits(u_input.a.x), global1[_wgslsmith_index_u32(~1u, 8u)]), firstTrailingBit((arg_0.a.d.x | 16282u) >> (global1[_wgslsmith_index_u32(max(global1[_wgslsmith_index_u32(1u, 8u)], 0u), 8u)] % 32u)), ~4294967295u, global4.d.x));
    return true;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<i32>) -> Struct_1 {
    global1 = array<u32, 8>();
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f)));
    let var_0 = select(select(!arg_0.wx, vec2<bool>(arg_0.x, select(arg_0.x, !arg_0.x, true & arg_0.x)), select(!select(arg_0.yz, arg_0.yz, true), select(select(vec2<bool>(true, arg_0.x), vec2<bool>(true, true), arg_0.x), vec2<bool>(arg_0.x, false), !arg_0.xy), true != arg_0.x)), !vec2<bool>(!arg_0.x, any(select(vec2<bool>(arg_0.x, arg_0.x), arg_0.xy, vec2<bool>(arg_0.x, true)))), !arg_0.wz);
    var var_1 = abs(_wgslsmith_sub_u32(74718u, reverseBits((4294967295u >> (global1[_wgslsmith_index_u32(u_input.b.x, 8u)] % 32u)) << ((global4.b & 0u) % 32u))));
    var var_2 = vec2<f32>(158f, _wgslsmith_f_op_f32(sign(-999f)));
    return Struct_1(firstTrailingBit(~global2.x), 0u, arg_1, vec4<u32>(1u, _wgslsmith_sub_u32(4294967295u, 0u), global4.b, 1u));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: vec3<f32>, arg_3: vec4<u32>) -> Struct_1 {
    global0 = array<vec3<i32>, 28>();
    global2 = ~firstLeadingBit(vec4<i32>(_wgslsmith_sub_i32(global4.a, firstLeadingBit(global4.c.x)), ~(-2147483647i), -global2.x >> (arg_3.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(global4.a, global4.a, -18102i, 2147483647i), vec4<i32>(-1i, 1i, global4.c.x, global2.x))));
    var var_0 = Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-1i, -2147483647i, -17676i, -2147483647i) | vec4<i32>(-1i, global4.a, global4.c.x, -2147483647i)), vec4<i32>(_wgslsmith_mult_i32(-1i, -7825i), -1i, global4.c.x, 1i)), _wgslsmith_div_u32(_wgslsmith_mult_u32(142323u, arg_3.x) ^ ~1u, 1u), vec2<i32>(global4.c.x, ~(-36322i)), global4.d), func_4(vec4<bool>(!func_2(Struct_2(Struct_1(global4.c.x, arg_0.x, vec2<i32>(2147483647i, global4.a), global4.d), Struct_1(global2.x, 0u, global4.c, global4.d))), all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), true != (global4.c.x == global2.x), func_2(Struct_2(Struct_1(42450i, u_input.b.x, global2.wz, vec4<u32>(0u, 4294967295u, u_input.b.x, 4294967295u)), Struct_1(global2.x, arg_3.x, vec2<i32>(0i, global2.x), arg_3)))), ~vec2<i32>(7239i, reverseBits(global4.a))));
    var var_1 = var_0.a;
    let var_2 = global0[_wgslsmith_index_u32(~(63144u << (var_1.b % 32u)), 28u)];
    return func_4(vec4<bool>(false, !any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false))), all(vec4<bool>(true, true, true, true)), false), abs(var_0.b.c >> (min(arg_0 << (var_1.d.yx % vec2<u32>(32u)), max(var_0.b.d.zy, var_0.a.d.xx)) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(~u_input.b.x, 1u);
    global0 = array<vec3<i32>, 28>();
    let var_1 = !(!vec2<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true)), true));
    global1 = array<u32, 8>();
    global2 = select(vec4<i32>(global4.a, ~global2.x, ~global2.x, -1i), select(~_wgslsmith_mod_vec4_i32(vec4<i32>(global4.a, -10612i, global4.c.x, global4.c.x), vec4<i32>(global2.x, -43564i, -2147483647i, 0i)), vec4<i32>(-27048i, 1i, global2.x, -21541i) << (abs(global4.d) % vec4<u32>(32u)), select(select(vec4<bool>(false, false, true, var_1.x), vec4<bool>(var_1.x, true, var_1.x, true), vec4<bool>(var_1.x, true, var_1.x, true)), !vec4<bool>(false, true, var_1.x, var_1.x), select(vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(false, var_1.x, true, true), var_1.x))) << (max(global4.d & (global4.d << (vec4<u32>(1u, 10476u, 74633u, var_0.x) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(global4.d, global4.d) & vec4<u32>(global4.d.x, var_0.x, var_0.x, 15989u)) % vec4<u32>(32u)), var_1.x);
    let var_2 = -global2.x == global4.c.x;
    global4 = func_1(vec2<u32>(~(~_wgslsmith_mod_u32(u_input.a.x, 33696u)), _wgslsmith_mod_u32(8261u, u_input.a.x)), vec2<f32>(-1188f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-200f, -1408f) + _wgslsmith_f_op_f32(1304f + 288f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(186f - -329f))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-1095f, 836f, -864f), vec3<f32>(-1000f, -1316f, -1403f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1410f, -179f, 657f), vec3<f32>(-181f, -155f, 2075f), vec3<bool>(var_2, var_2, true))) * vec3<f32>(-1383f, 1268f, -1032f)), !vec3<bool>(true, var_1.x, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-399f, 326f, 1000f))))), countOneBits(~global4.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -2101f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(346f + 1000f)))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1157f, 410f, true)), -2157f), -238f)), var_1.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-458f, 812f), vec2<f32>(-1111f, 1236f), var_1))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-425f, 789f)))), ~(~firstLeadingBit(~0u)), reverseBits(4294967295u) & var_0.x);
}

