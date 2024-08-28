struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(vec2<u32>(15842u, 1u), vec3<bool>(false, true, true), vec4<u32>(4294967295u, 1u, 0u, 103471u), Struct_1(-1548f)), Struct_2(vec2<u32>(12674u, 51586u), vec3<bool>(true, false, true), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u), Struct_1(804f)), Struct_2(vec2<u32>(35268u, 13343u), vec3<bool>(false, false, false), vec4<u32>(39049u, 39192u, 86366u, 1u), Struct_1(548f)), Struct_2(vec2<u32>(28052u, 0u), vec3<bool>(false, false, true), vec4<u32>(89583u, 50497u, 4294967295u, 62310u), Struct_1(1000f)), Struct_2(vec2<u32>(27421u, 153049u), vec3<bool>(true, false, true), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 9262u), Struct_1(-128f)), Struct_2(vec2<u32>(50649u, 1u), vec3<bool>(false, true, true), vec4<u32>(38323u, 4294967295u, 55883u, 43589u), Struct_1(-1293f)), Struct_2(vec2<u32>(13615u, 4765u), vec3<bool>(true, true, true), vec4<u32>(98269u, 1u, 0u, 1u), Struct_1(-1928f)), Struct_2(vec2<u32>(5873u, 46861u), vec3<bool>(false, true, false), vec4<u32>(4294967295u, 5149u, 57368u, 36006u), Struct_1(-653f)), Struct_2(vec2<u32>(1u, 1u), vec3<bool>(false, false, false), vec4<u32>(1u, 1u, 0u, 0u), Struct_1(695f)), Struct_2(vec2<u32>(0u, 16836u), vec3<bool>(true, true, true), vec4<u32>(12785u, 1u, 2553u, 0u), Struct_1(1557f)));

var<private> global1: array<vec2<bool>, 8>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec3<u32>) -> u32 {
    var var_0 = arg_2;
    let var_1 = Struct_4(-u_input.c.x, arg_2, Struct_2(firstTrailingBit(vec2<u32>(29944u, 0u)), vec3<bool>(true, true, true), ~vec4<u32>(25255u, abs(58230u), _wgslsmith_div_u32(arg_3.x, 9441u), 30433u), arg_2), min(_wgslsmith_div_u32(arg_1.x, firstTrailingBit(arg_3.x)), _wgslsmith_add_u32(1u, ~_wgslsmith_div_u32(arg_1.x, 1u))), global0[_wgslsmith_index_u32(4294967295u, 10u)]);
    global0 = array<Struct_2, 10>();
    global1 = array<vec2<bool>, 8>();
    var var_2 = var_1.b;
    return _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(arg_3.x, _wgslsmith_add_u32(74388u, 62677u), ~(~arg_1.x)), min(var_1.d, ~var_1.c.c.x) & arg_3.x, select(_wgslsmith_clamp_u32(var_1.e.c.x, ~4294967295u, abs(1u)), var_1.c.a.x, false)) << (_wgslsmith_clamp_u32(~firstTrailingBit(var_1.d) | _wgslsmith_add_u32(1u, min(1u, arg_3.x)), 72412u, max(reverseBits(~31411u), ~(~arg_3.x))) % 32u);
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    var var_0 = vec2<u32>(~(~73228u), ~_wgslsmith_clamp_u32(abs(firstTrailingBit(48205u)), 1u, ~func_3(vec4<f32>(201f, -216f, -1000f, -260f), vec4<u32>(4294967295u, 59296u, 69612u, 1222u), Struct_1(-1000f), vec3<u32>(0u, 0u, 11559u))));
    var var_1 = _wgslsmith_mult_vec4_i32(-u_input.b, vec4<i32>(-1i) * -(vec4<i32>(2147483647i, 56027i, u_input.a, u_input.a) | arg_0)) ^ vec4<i32>(u_input.c.x, -u_input.c.x, 2147483647i, u_input.c.x);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -996f))))));
    global1 = array<vec2<bool>, 8>();
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.a), var_2.a))));
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(~(~vec4<u32>(var_0.x, 1u, 1u, 1039u)), vec4<u32>(47687u, var_0.x, reverseBits(4294967295u), 0u)), select(abs(~vec4<u32>(0u, var_0.x, var_0.x, var_0.x)) | vec4<u32>(4294967295u, var_0.x, ~var_0.x, ~var_0.x), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, 4294967295u, var_0.x, var_0.x), reverseBits(vec4<u32>(4294967295u, var_0.x, var_0.x, var_0.x))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(46242u, 38340u, var_0.x, 50332u), vec4<u32>(var_0.x, var_0.x, 80654u, var_0.x))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, any(vec4<bool>(false, false, true, false)), all(vec4<bool>(false, false, false, false)), all(vec3<bool>(false, false, false))), vec4<bool>(true, true, true, true)))), 10u)];
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_4) -> bool {
    var var_0 = arg_1.a;
    global1 = array<vec2<bool>, 8>();
    let var_1 = Struct_4(abs(-2147483647i), Struct_1(_wgslsmith_f_op_f32(round(314f))), global0[_wgslsmith_index_u32(max(arg_1.c.a.x, ~firstLeadingBit(~arg_1.e.c.x)), 10u)], 4294967295u, Struct_2(~arg_1.e.c.xy, arg_1.e.b, abs(~_wgslsmith_div_vec4_u32(vec4<u32>(22515u, 21705u, arg_1.d, arg_1.e.c.x), arg_1.c.c)), func_2(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.c.xz, vec2<i32>(25003i, u_input.c.x)), arg_1.a, _wgslsmith_sub_i32(arg_1.a, 22620i), -22186i)).d));
    let var_2 = Struct_4(arg_1.a, var_1.c.d, Struct_2(vec2<u32>(arg_1.e.c.x, 77250u), vec3<bool>(func_2(vec4<i32>(14546i, u_input.c.x, var_1.a, arg_1.a)).b.x, true, !var_1.c.b.x), ~select(vec4<u32>(0u, 0u, 38612u, 1290u), arg_1.e.c, !vec4<bool>(true, false, var_1.c.b.x, false)), var_1.b), 3639u, Struct_2(_wgslsmith_clamp_vec2_u32(~(~arg_1.e.c.xz), var_1.c.c.zw, ~abs(vec2<u32>(var_1.d, arg_1.c.a.x))), var_1.c.b, ~vec4<u32>(0u, ~1018u, arg_1.e.a.x, 38062u), arg_1.c.d));
    var var_3 = 4294967295u;
    return arg_1.c.b.x && (arg_1.c.b.x & all(vec3<bool>(true, true, true)));
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: vec2<bool>, arg_3: vec2<u32>) -> i32 {
    let var_0 = Struct_2(arg_3, vec3<bool>(!(!arg_0), !all(vec4<bool>(false, true, true, false)) && all(select(vec3<bool>(arg_0, false, arg_2.x), vec3<bool>(arg_0, false, arg_2.x), vec3<bool>(false, false, arg_0))), func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -810f, -291f)), Struct_4(2147483647i, Struct_1(arg_1.x), func_2(u_input.b), 22029u, Struct_2(arg_3, vec3<bool>(arg_0, arg_2.x, false), vec4<u32>(102113u, 33099u, 1u, arg_3.x), Struct_1(-1147f))))), vec4<u32>(arg_3.x, arg_3.x, ~_wgslsmith_div_u32(arg_3.x, arg_3.x), _wgslsmith_mod_u32(arg_3.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.x, 4294967295u, 56058u, arg_3.x), vec4<u32>(arg_3.x, 38336u, 1u, 100651u)))) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_add_u32(arg_3.x, arg_3.x), arg_3.x, ~arg_3.x, 4294967295u), ~vec4<u32>(2308u, arg_3.x, 11119u, 0u) >> (~vec4<u32>(0u, arg_3.x, 4294967295u, 8460u) % vec4<u32>(32u))), func_2(u_input.b).d);
    var var_1 = all(func_2(u_input.b).b.zz);
    var var_2 = abs(firstLeadingBit(u_input.b.wyx));
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.a, 1335f) + vec2<f32>(-667f, var_0.d.a)), vec2<f32>(var_0.d.a, 1387f))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(max(-565f, var_0.d.a)), 581f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, arg_1.x), vec2<f32>(arg_1.x, 1515f), !vec2<bool>(false, var_0.b.x)))))), _wgslsmith_f_op_vec2_f32(-arg_1));
    let var_4 = func_2(_wgslsmith_div_vec4_i32(~(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, u_input.c.x, var_2.x, var_2.x), u_input.b)), u_input.b));
    return ~_wgslsmith_sub_i32(var_2.x, -1i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<bool>, 8>();
    global0 = array<Struct_2, 10>();
    global1 = array<vec2<bool>, 8>();
    let var_0 = vec3<i32>(_wgslsmith_sub_i32(func_1(select(true, false, true), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(975f, 998f))), vec2<bool>(true, true), ~vec2<u32>(1u, 1u)), _wgslsmith_div_i32(~2147483647i, 6849i)) | -26996i, _wgslsmith_dot_vec3_i32(u_input.b.yxy, _wgslsmith_mult_vec3_i32(u_input.c, u_input.c)), _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(-45259i, 2147483647i, (u_input.b.x >> (46632u % 32u)) << (_wgslsmith_mod_u32(1u, 43922u) % 32u), ~u_input.c.x)));
    var var_1 = !func_2(u_input.b).b.x;
    let var_2 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(738f, 559f), 1f, true))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-570f, -1271f)));
}

