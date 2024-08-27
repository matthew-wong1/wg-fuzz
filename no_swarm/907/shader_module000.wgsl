struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec4<f32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1000f;

var<private> global1: array<vec2<i32>, 31>;

var<private> global2: vec2<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: u32) -> bool {
    global2 = global1[_wgslsmith_index_u32(select(arg_2, arg_2, arg_1.c.x < _wgslsmith_div_f32(1404f, _wgslsmith_f_op_f32(arg_1.c.x + _wgslsmith_f_op_f32(min(233f, arg_1.c.x))))), 31u)];
    let var_0 = arg_1;
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.x * _wgslsmith_f_op_f32(f32(-1f) * -380f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.x) + _wgslsmith_f_op_f32(-arg_1.c.x))))));
    let var_1 = vec4<bool>(true, var_0.b, true, !var_0.a.x);
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.c.x)));
    return !any(arg_1.a.xwz);
}

fn func_2(arg_0: vec3<u32>) -> u32 {
    let var_0 = ~(~firstTrailingBit(firstLeadingBit(1u >> (0u % 32u))));
    var var_1 = any(vec3<bool>(-1i > u_input.a.x, true, select(all(vec4<bool>(true, true, true, true)), !(global2.x >= 0i), false)));
    let var_2 = true;
    let var_3 = Struct_1(vec4<bool>(true, false, true, var_2), func_3(vec4<i32>(_wgslsmith_sub_i32(-17157i, min(u_input.a.x, global2.x)), global2.x, 2147483647i, _wgslsmith_sub_i32(global2.x, -44847i)), Struct_1(!(!vec4<bool>(false, var_2, true, var_2)), any(vec2<bool>(var_2, var_2)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1196f, -1000f, 1358f, -494f) * vec4<f32>(-1000f, -1187f, 1000f, -697f)), vec4<i32>(-16974i, global2.x, ~(-15212i), 1i & global2.x), abs(~vec4<i32>(-30947i, 21221i, u_input.a.x, u_input.a.x))), _wgslsmith_div_u32(var_0 & 4294967295u, ~7453u)), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1000f, -775f)), _wgslsmith_f_op_f32(select(1329f, -468f, true)))))), _wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-223f)), _wgslsmith_f_op_f32(ceil(-1332f)))), -668f, 987f), ~_wgslsmith_add_vec4_i32(vec4<i32>(-7409i, -19131i, global2.x, -2147483647i), vec4<i32>(-22052i, global2.x, 0i, u_input.a.x) & vec4<i32>(global2.x, global2.x, global2.x, global2.x)) >> ((select(u_input.b, _wgslsmith_sub_vec4_u32(u_input.b, u_input.b), vec4<bool>(var_2, true, false, var_2)) & reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x, 13874u, 4294967295u, 4294967295u), u_input.b))) % vec4<u32>(32u)), -(abs(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) ^ vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, 11876i), global1[_wgslsmith_index_u32(arg_0.x, 31u)]), firstLeadingBit(-6461i), 25806i, global2.x & -1i)));
    var var_4 = !var_3.a.x;
    return firstTrailingBit(u_input.b.x);
}

fn func_1(arg_0: i32) -> bool {
    return true || !(func_2(abs(u_input.b.zzz)) != _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.b.wzx, vec3<u32>(28753u, 11712u, 76474u)), ~u_input.b.x));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> bool {
    let var_0 = arg_1.c;
    var var_1 = ~abs(min(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.b.xxy, vec3<u32>(u_input.b.x, 66483u, u_input.b.x)), u_input.b.zxy & u_input.b.wxz, firstTrailingBit(vec3<u32>(1u, u_input.b.x, u_input.b.x))), abs(reverseBits(vec3<u32>(9378u, 74913u, 21696u)))));
    global2 = (abs(vec2<i32>(31445i, u_input.a.x)) >> (u_input.b.wx % vec2<u32>(32u))) ^ (vec2<i32>(-1i) * -(~_wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(0i, u_input.a.x))));
    var_1 = u_input.b.xxw;
    var_1 = vec3<u32>(1u, _wgslsmith_mult_u32(u_input.b.x, u_input.b.x), u_input.b.x);
    return func_1(max(i32(-1i) * -2753i, max(1i, _wgslsmith_add_i32(max(2124i, arg_1.d.x), -2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_4(select(vec4<bool>(true, func_1(global2.x), all(vec3<bool>(true, false, false)), all(vec4<bool>(true, false, true, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true)), false), Struct_1(vec4<bool>(true, true, true, true), any(select(vec2<bool>(false, false), vec2<bool>(false, false), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1288f, 1769f, -1000f, 632f) * vec4<f32>(-977f, 344f, 912f, 1248f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1786f, 1521f, -759f, 843f) * vec4<f32>(230f, -755f, 245f, -289f))), select(-vec4<i32>(global2.x, -2147483647i, -31989i, -8154i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 0i, u_input.a.x, 1i), vec4<i32>(u_input.a.x, 318i, u_input.a.x, 0i)), vec4<bool>(true, false, false, false)), _wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.a.x, global2.x, 22072i, -81059i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 33854i), true), vec4<i32>(-1i, 0i, global2.x, -36005i) << (vec4<u32>(4294967295u, u_input.b.x, 1u, u_input.b.x) % vec4<u32>(32u)))));
    var var_1 = select(~(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.b.x), u_input.b.xy))), ~firstTrailingBit(~u_input.b.wz ^ ~u_input.b.xx), !vec2<bool>(all(vec3<bool>(true, false, var_0)), true));
    let var_2 = Struct_1(!select(!vec4<bool>(var_0, false, var_0, true), select(select(vec4<bool>(var_0, true, var_0, false), vec4<bool>(var_0, false, var_0, true), false), !vec4<bool>(true, var_0, var_0, true), vec4<bool>(var_0, false, false, false)), vec4<bool>(all(vec3<bool>(true, true, var_0)), 1u != var_1.x, false, var_0)), any(select(!select(vec4<bool>(true, var_0, false, false), vec4<bool>(false, true, false, var_0), var_0), select(!vec4<bool>(var_0, false, var_0, true), select(vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(false, true, var_0, false), vec4<bool>(var_0, var_0, var_0, var_0)), select(vec4<bool>(false, true, true, var_0), vec4<bool>(true, var_0, true, false), true)), false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-375f, 1172f, 1946f, 300f))))))), -_wgslsmith_clamp_vec4_i32(abs(_wgslsmith_add_vec4_i32(vec4<i32>(global2.x, u_input.a.x, u_input.a.x, 0i), vec4<i32>(-64032i, u_input.a.x, -2147483647i, -8289i))), ~(vec4<i32>(2147483647i, -14689i, 0i, global2.x) ^ vec4<i32>(0i, -5715i, global2.x, 1i)), -(vec4<i32>(30409i, global2.x, -30041i, u_input.a.x) | vec4<i32>(-61128i, global2.x, 24100i, global2.x))), ~(~select(select(vec4<i32>(u_input.a.x, -41262i, global2.x, u_input.a.x), vec4<i32>(-2147483647i, u_input.a.x, global2.x, u_input.a.x), vec4<bool>(var_0, true, true, true)), max(vec4<i32>(-4549i, 26757i, global2.x, global2.x), vec4<i32>(global2.x, 2147483647i, -62943i, u_input.a.x)), all(vec2<bool>(false, false)))));
    let var_3 = var_2.d.wxz;
    var var_4 = var_2.e;
    var var_5 = Struct_1(!(!var_2.a), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.c)), var_2.d, vec4<i32>(-1i) * -(~select(var_2.e, var_2.e, true)));
    let var_6 = _wgslsmith_dot_vec2_i32(countOneBits(var_2.e.zy) | vec2<i32>(-65903i, _wgslsmith_dot_vec4_i32(var_2.d, -vec4<i32>(u_input.a.x, 28960i, -21990i, -1i))), max(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(var_2.e.x, -1i, var_3.x), 2147483647i), var_5.d.zw), vec2<i32>(~0i, ~(u_input.a.x << (var_1.x % 32u)))));
    var var_7 = Struct_1(!var_2.a, true, vec4<f32>(var_2.c.x, 1090f, var_2.c.x, 345f), countOneBits(-var_5.d), var_2.d);
    let var_8 = -680f;
    let x = u_input.a;
    s_output = StorageBuffer(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 6019i >> (var_1.x % 32u), firstLeadingBit(~58i), ~var_2.e.x), ~vec4<i32>(min(18740i, 1i), var_6 ^ var_5.e.x, u_input.a.x << (var_1.x % 32u), _wgslsmith_sub_i32(2804i, 15362i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_8, var_7.c.x), vec2<f32>(1000f, var_7.c.x), true))) * var_2.c.wy) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_7.c.zz) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.c.x, -937f)) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(351f, var_8)))))), -986f);
}

