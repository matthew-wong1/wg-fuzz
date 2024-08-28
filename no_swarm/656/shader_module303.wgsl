struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(666f, 568f, 1925f);

var<private> global1: vec4<f32> = vec4<f32>(-1714f, -1581f, 142f, -518f);

var<private> global2: vec3<f32>;

var<private> global3: Struct_1 = Struct_1(20429i, vec2<bool>(false, true), i32(-2147483648));

var<private> global4: array<vec4<i32>, 15>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(sign(global0.x));
    var var_1 = Struct_1(max(firstTrailingBit(0i << (u_input.a % 32u)), 2147483647i) >> (~18451u % 32u), global3.b, -global3.a);
    let var_2 = Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(-48459i, var_1.a, i32(-1i) * -var_1.c, _wgslsmith_sub_i32(-5725i, u_input.b)), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(~global4[_wgslsmith_index_u32(u_input.a, 15u)], select(vec4<i32>(2744i, -1803i, global3.c, u_input.b), vec4<i32>(u_input.b, 1i, global3.a, var_1.c), vec4<bool>(false, var_1.b.x, true, var_1.b.x)), _wgslsmith_mult_vec4_i32(global4[_wgslsmith_index_u32(4294967295u, 15u)], global4[_wgslsmith_index_u32(u_input.a, 15u)])), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 1u), 15u)])));
    var var_3 = vec4<u32>(u_input.a, _wgslsmith_dot_vec3_u32(firstTrailingBit(select(vec3<u32>(u_input.a, 19002u, u_input.a), ~vec3<u32>(0u, 1u, 1u), true)), select(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 38792u, u_input.a), vec3<u32>(28628u, 4294967295u, 1949u)), max(u_input.a, 55084u), _wgslsmith_add_u32(u_input.a, u_input.a)), ~reverseBits(vec3<u32>(4294967295u, 0u, u_input.a)), false)), u_input.a, ~u_input.a);
    global0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global1.yzy, _wgslsmith_f_op_vec3_f32(-global1.yyz))) - _wgslsmith_f_op_vec3_f32(-global1.zzy)))));
    return 24801u;
}

fn func_2(arg_0: vec3<i32>) -> f32 {
    var var_0 = Struct_4(true, ~firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, 78726u) | vec4<u32>(u_input.a, u_input.a, 31712u, 85672u), vec4<u32>(0u, 32847u, 4294967295u, u_input.a) & vec4<u32>(u_input.a, u_input.a, 4353u, 1u))));
    var var_1 = Struct_3(~func_3(!(!vec4<bool>(global3.b.x, false, true, global3.b.x))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(133f, global2.x, global2.x, global0.x), vec4<f32>(global1.x, global0.x, -1051f, global0.x))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(978f, global2.x, -1504f, global2.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, global1.x, global1.x, global2.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1357f, -1668f, -639f, -2970f) * vec4<f32>(global0.x, -996f, global2.x, -1069f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(159f, global0.x, global1.x, 637f)))))), _wgslsmith_clamp_vec3_u32(var_0.b.yzw, ~(var_0.b.xxz << (var_0.b.yww % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(~select(vec3<u32>(u_input.a, u_input.a, 61802u), vec3<u32>(u_input.a, 1u, 81053u), vec3<bool>(true, true, var_0.a)), ~(~vec3<u32>(44772u, u_input.a, 0u)))), Struct_1(arg_0.x | ~firstLeadingBit(arg_0.x), vec2<bool>(!var_0.a, global3.b.x), -_wgslsmith_add_i32(-7273i, i32(-1i) * -40207i)), var_0.b.xz | ~reverseBits(vec2<u32>(var_0.b.x, 4896u)));
    var var_2 = !var_1.d.b.x;
    var var_3 = var_0.b.xwx;
    let var_4 = 83836u;
    return global1.x;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<bool>) -> u32 {
    var var_0 = firstTrailingBit(u_input.a) & _wgslsmith_div_u32(u_input.a, 4294967295u);
    global1 = vec4<f32>(_wgslsmith_f_op_f32(-1290f - -2566f), global1.x, 561f, _wgslsmith_f_op_f32(func_2(countOneBits(vec3<i32>(firstTrailingBit(global3.c), global3.c, 20446i)))));
    let var_1 = (global4[_wgslsmith_index_u32(0u, 15u)] ^ (_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, global3.c, -49243i, u_input.b), vec4<i32>(global3.c, global3.a, -26297i, global3.c)) & (-vec4<i32>(global3.a, 34824i, -2147483647i, 0i) >> (vec4<u32>(4294967295u, 1u, u_input.a, u_input.a) % vec4<u32>(32u))))) | reverseBits(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, select(abs(4568u), 1u, true)), 15u)]);
    let var_2 = Struct_2(_wgslsmith_div_i32(abs(max(global3.c ^ -51359i, global3.c)), _wgslsmith_add_i32(14764i, reverseBits(~global3.c))));
    let var_3 = false;
    return ~(~(~max(u_input.a, u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_u32(func_1(!(!global3.b), select(select(global3.b, select(vec2<bool>(global3.b.x, global3.b.x), global3.b, global3.b.x), global3.b.x), global3.b, select(!global3.b, select(global3.b, global3.b, false), !global3.b))), u_input.a);
    let var_1 = Struct_4(!((_wgslsmith_mult_i32(-29976i, u_input.b) > (2147483647i ^ global3.a)) & false), vec4<u32>(55464u, ~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, 1u, 0u), firstTrailingBit(~vec3<u32>(32142u, u_input.a, u_input.a))), ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a, u_input.a), ~u_input.a)));
    var var_2 = Struct_4(true, vec4<u32>(4294967295u, ~0u, var_1.b.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 110324u, 59615u, 0u), var_1.b, vec4<u32>(4294967295u, 0u, 53112u, var_0)), var_1.b), var_0)));
    var_2 = Struct_4(false, firstLeadingBit(_wgslsmith_mod_vec4_u32(~min(var_2.b, var_2.b), ~var_1.b >> ((var_1.b & var_1.b) % vec4<u32>(32u)))));
    let var_3 = global4[_wgslsmith_index_u32(var_2.b.x, 15u)] << (firstLeadingBit(var_1.b) % vec4<u32>(32u));
    global3 = Struct_1(u_input.b, global3.b, max(1i, u_input.b));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1628f, global1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, vec4<u32>(~_wgslsmith_div_u32(var_2.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b.x, 48378u), var_2.b.zz)), ~var_0, firstTrailingBit(9301u), func_3(!(!vec4<bool>(true, var_2.a, global3.b.x, false)))), abs(~var_2.b.xy), abs(vec4<u32>(var_1.b.x, ~(~16658u), countOneBits(var_2.b.x), var_1.b.x)), reverseBits(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(select(var_1.b.wz, vec2<u32>(var_1.b.x, 48116u), global3.b), select(var_2.b.yz, var_1.b.zy, false)), ~var_0)));
}

