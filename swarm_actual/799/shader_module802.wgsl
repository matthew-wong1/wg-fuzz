struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_3;

var<private> global2: f32;

var<private> global3: f32 = 821f;

var<private> global4: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec3<i32>(0i, -37391i, -14960i)), Struct_1(vec3<i32>(31589i, 0i, i32(-2147483648))), Struct_1(vec3<i32>(-37076i, i32(-2147483648), 58153i)), Struct_1(vec3<i32>(1i, 993i, 1464i)), Struct_1(vec3<i32>(i32(-2147483648), 0i, -22630i)), Struct_1(vec3<i32>(-30328i, i32(-2147483648), i32(-2147483648))), Struct_1(vec3<i32>(0i, 2147483647i, -1i)), Struct_1(vec3<i32>(1i, i32(-2147483648), 2147483647i)), Struct_1(vec3<i32>(1i, 0i, 1i)), Struct_1(vec3<i32>(-21932i, -1i, 1i)), Struct_1(vec3<i32>(-11354i, -47023i, 5289i)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: vec3<i32>) -> bool {
    global0 = ~(~(~_wgslsmith_mult_u32(arg_2.x, ~arg_2.x)));
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1466f, global1.c, 1068f, global1.c))))))));
    global4 = array<Struct_1, 11>();
    let var_1 = 284f;
    global1 = Struct_3(global1.d, global1.b, -544f, arg_0, ~_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.b.a.x, arg_3.x, 24707i, arg_0.a.x), global1.e & vec4<i32>(arg_0.a.x, -2147483647i, 1i, 2147483647i)) & max(vec4<i32>(2562i, 0i, 2147483647i, 2147483647i), global1.e));
    return arg_1.a;
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: vec4<f32>) -> bool {
    global3 = 717f;
    let var_0 = vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(abs(u_input.a.xy) & u_input.a.zz, _wgslsmith_add_vec2_i32(min(vec2<i32>(2147483647i, -38325i), vec2<i32>(u_input.a.x, 19760i)), vec2<i32>(u_input.a.x, u_input.a.x)));
    var var_1 = vec4<u32>(~_wgslsmith_dot_vec3_u32(~vec3<u32>(40150u, 4294967295u, 4294967295u), vec3<u32>(min(4294967295u, 25829u), ~1u, firstLeadingBit(4294967295u))), min(_wgslsmith_sub_u32(~(~96050u), 1u), 1u), 39042u, reverseBits(_wgslsmith_clamp_u32(~36976u, _wgslsmith_add_u32(44816u, 1u), min(95361u, 4294967295u)) >> (446u % 32u)));
    let var_2 = Struct_4(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(38576u, 1u), 1u, 4294967295u), abs(var_1.yxz >> (vec3<u32>(4294967295u, 0u, var_1.x) % vec3<u32>(32u)))) < ~var_1.x, global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(30791u, firstLeadingBit(~(var_1.x >> (16949u % 32u)))), 11u)]);
    var var_3 = Struct_3(Struct_1(vec3<i32>(u_input.a.x, ~(~u_input.a.x), 1i)), Struct_2(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(27610i, 40488i, -5448i) >> (vec3<u32>(34340u, 35062u, var_1.x) % vec3<u32>(32u)), vec3<i32>(var_0.x, var_0.x, 2147483647i)) << (~62184u % 32u)), _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), any(select(arg_0.yzx, vec3<bool>(true, true, arg_0.x), true))))), Struct_1(-(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, var_2.b.a.x, u_input.a.x), vec3<i32>(-10325i, var_2.b.a.x, u_input.a.x)))), vec4<i32>(-2147483647i, firstLeadingBit(1i), -2147483647i, -1i));
    return !(var_3.c == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(2438f)) + _wgslsmith_div_f32(1886f, arg_2.x)))));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: bool) -> Struct_3 {
    let var_0 = func_4(select(select(vec4<bool>(false, !arg_2, arg_2, arg_2 && arg_2), !(!vec4<bool>(arg_2, false, arg_2, true)), true & all(vec2<bool>(true, true))), vec4<bool>(any(vec2<bool>(arg_2, arg_2)) && any(vec4<bool>(arg_2, true, false, arg_2)), all(vec2<bool>(true, true)), true, func_3(global1.a, Struct_4(arg_2, Struct_1(u_input.a)), vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 34205i, 24662i), vec3<i32>(global1.d.a.x, -10279i, u_input.a.x)))), select(vec4<bool>(arg_2 & true, true, arg_2, false), vec4<bool>(true, global1.c == arg_0, true, any(vec4<bool>(true, arg_2, arg_2, false))), vec4<bool>(all(vec2<bool>(arg_2, true)), true, any(vec4<bool>(true, arg_2, arg_2, false)), false == arg_2))), (max(-2147483647i, firstTrailingBit(7224i)) == 9249i) | !arg_2, vec4<f32>(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.c, arg_0, arg_2)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1554f * _wgslsmith_div_f32(arg_0, 333f)))), _wgslsmith_f_op_f32(-global1.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 + -622f))), global1.c)));
    let var_1 = Struct_3(Struct_1(select(u_input.a, select(u_input.a, u_input.a, var_0), !(!vec3<bool>(false, arg_2, arg_2)))), global1.b, _wgslsmith_f_op_f32(-1f), global1.a, global1.e);
    var var_2 = var_1.b;
    var var_3 = Struct_2(var_1.d.a.x, _wgslsmith_dot_vec3_i32(~firstLeadingBit(~global1.a.a), -(~(~u_input.a))));
    global1 = var_1;
    return Struct_3(var_1.a, Struct_2(~0i, _wgslsmith_add_i32(~_wgslsmith_dot_vec3_i32(u_input.a, var_1.e.xyy), _wgslsmith_add_i32(var_3.b, ~global1.a.a.x))), _wgslsmith_f_op_f32(trunc(-1000f)), Struct_1(-vec3<i32>(var_3.b, _wgslsmith_mult_i32(4356i, -11896i), _wgslsmith_clamp_i32(var_3.a, u_input.a.x, 3316i))), ~var_1.e);
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = global4[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(58607u, 3728u, 41024u), vec3<u32>(1u, 40500u, 4294967295u)), ~30797u), _wgslsmith_mod_vec2_u32(select(vec2<u32>(1u, 1u), ~vec2<u32>(4294967295u, 95917u), select(false, true, false)), vec2<u32>(~4294967295u, firstTrailingBit(1u))))), 11u)];
    global2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) - _wgslsmith_f_op_f32(-global1.c)) * -1000f), _wgslsmith_f_op_f32(sign(global1.c)))));
    let var_1 = func_2(838f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.c))), _wgslsmith_f_op_f32(select(global1.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(955f, global1.c)))), true))), !any(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false))));
    let var_2 = 1u;
    var var_3 = Struct_1(reverseBits(vec3<i32>(func_2(var_1.c, 1385f, any(vec3<bool>(false, true, false))).d.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.e.x, var_0.a.x, -60264i), select(vec3<i32>(-2147483647i, 42271i, arg_0), var_0.a, false)), ~min(arg_0, -8793i))));
    return Struct_1(-(~(~(global1.e.ywx >> (vec3<u32>(48217u, var_2, var_2) % vec3<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~u_input.a);
    var var_1 = func_1(-2147483647i);
    var var_2 = ~countOneBits(~vec3<u32>(_wgslsmith_clamp_u32(4542u, 10141u, 13092u), 65198u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 7718u, 9062u), vec3<u32>(79677u, 15302u, 1u))));
    var_0 = global4[_wgslsmith_index_u32(~((var_2.x >> (~firstTrailingBit(var_2.x) % 32u)) >> (var_2.x % 32u)), 11u)];
    let var_3 = Struct_1(min(func_1(_wgslsmith_add_i32(-21636i, var_1.a.x)).a, _wgslsmith_sub_vec3_i32(vec3<i32>(-21010i, global1.e.x, -24002i), vec3<i32>(68898i, global1.b.b, func_1(u_input.a.x).a.x))));
    var var_4 = global1.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-314f, -621f, global1.c, global1.c))))), vec4<u32>(_wgslsmith_mult_u32(17945u, var_2.x), ~17509u, 60914u, var_2.x ^ var_2.x), var_2.x >> (_wgslsmith_dot_vec4_u32(abs(vec4<u32>(6256u, var_2.x, var_2.x, var_2.x) | vec4<u32>(1u, 27174u, var_2.x, 0u)), min(vec4<u32>(0u, var_2.x, var_2.x, var_2.x), vec4<u32>(var_2.x, 0u, var_2.x, 0u)) | ~vec4<u32>(var_2.x, 0u, var_2.x, 9418u)) % 32u));
}

