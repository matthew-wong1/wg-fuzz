struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: u32 = 10611u;

var<private> global2: array<u32, 13>;

var<private> global3: array<bool, 10>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_1(true, 762f, ~u_input.a.x, arg_0.d);
    let var_1 = any(!select(vec4<bool>(!global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(30228u, 13u)], 10u)], true, true, var_0.a), select(select(vec4<bool>(var_0.a, arg_0.a, false, true), vec4<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 10u)], var_0.a, false), global3[_wgslsmith_index_u32(0u, 10u)]), !vec4<bool>(global3[_wgslsmith_index_u32(83537u, 10u)], false, arg_0.a, var_0.a), vec4<bool>(true, true, true, true)), all(!vec4<bool>(true, arg_0.a, arg_0.a, true))));
    var var_2 = Struct_1(true, _wgslsmith_f_op_f32(190f - global0.x), firstTrailingBit(95336i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -465f)) * _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-784f + _wgslsmith_f_op_f32(global0.x * 640f)))));
    let var_3 = ~vec4<i32>(~2147483647i, ~1i, -1i, countOneBits(arg_0.c ^ _wgslsmith_sub_i32(1i, -1i)));
    var var_4 = ~(_wgslsmith_mod_vec3_i32(~var_3.wzz, var_3.xzx) << (_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(74086u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], 13u)], 13u)], 1u), vec3<u32>(0u, 4294967295u, global2[_wgslsmith_index_u32(69001u, 13u)]), vec3<u32>(65922u, 18805u, 1644u)), vec3<u32>(global2[_wgslsmith_index_u32(20201u, 13u)], 0u, global2[_wgslsmith_index_u32(10574u, 13u)])) % vec3<u32>(32u))) & ~(min(-vec3<i32>(var_3.x, 32447i, arg_0.c), ~vec3<i32>(arg_0.c, -1i, -21368i)) & vec3<i32>(1i, _wgslsmith_mod_i32(5234i, var_0.c), _wgslsmith_mod_i32(-4855i, var_0.c)));
    return global2[_wgslsmith_index_u32(~abs(global2[_wgslsmith_index_u32(~(~1u), 13u)]), 13u)];
}

fn func_1(arg_0: vec4<f32>, arg_1: i32) -> i32 {
    global3 = array<bool, 10>();
    global3 = array<bool, 10>();
    var var_0 = global3[_wgslsmith_index_u32(func_2(Struct_1(any(!select(vec4<bool>(false, true, false, global3[_wgslsmith_index_u32(47247u, 10u)]), vec4<bool>(global3[_wgslsmith_index_u32(51225u, 10u)], true, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 13u)], 13u)], 13u)], 10u)], false), vec4<bool>(false, true, false, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(1000f * global0.x)))), _wgslsmith_sub_i32(~min(-17535i, arg_1), abs(-39997i)), global0.x)), 10u)];
    return _wgslsmith_dot_vec2_i32(vec2<i32>(-arg_1, ~u_input.a.x), -u_input.a | vec2<i32>(arg_1, 17474i));
}

fn func_3(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: i32) -> f32 {
    var var_0 = vec4<u32>(~firstTrailingBit(select(_wgslsmith_clamp_u32(arg_0, arg_0, arg_0), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(22393u, 1412u), 13u)], select(false, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 13u)], 10u)], false))), _wgslsmith_add_u32(0u, reverseBits(arg_0)) >> (arg_0 % 32u), _wgslsmith_sub_u32(25358u, global2[_wgslsmith_index_u32(arg_0, 13u)]), func_2(Struct_1(true, -972f, _wgslsmith_mult_i32(min(arg_2.c, u_input.a.x), u_input.a.x), global0.x)));
    let var_1 = Struct_1(global3[_wgslsmith_index_u32(0u, 10u)], global0.x, firstLeadingBit(-2147483647i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2326f))) * _wgslsmith_f_op_f32(sign(global0.x))), -1747f));
    global1 = abs(firstTrailingBit(60347u));
    global1 = firstTrailingBit(~1u);
    global3 = array<bool, 10>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-909f * global0.x) - _wgslsmith_f_op_f32(1000f + arg_2.d)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1333f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 13>();
    let var_0 = Struct_1(-_wgslsmith_mod_i32(0i, ~u_input.a.x) >= u_input.a.x, _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.x)))))), ~func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-345f, 1509f, -968f, global0.x), vec4<f32>(global0.x, global0.x, -873f, global0.x)) - _wgslsmith_div_vec4_f32(vec4<f32>(-1296f, global0.x, global0.x, global0.x), vec4<f32>(global0.x, -1085f, -1125f, global0.x))), u_input.a.x), _wgslsmith_f_op_f32(func_3(0u, vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 10u)], global3[_wgslsmith_index_u32(31348u, 10u)]), Struct_1(global3[_wgslsmith_index_u32((global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 13u)], 13u)] >> (1u % 32u)) | ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 13u)], 13u)], 10u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.x, 341f)) + _wgslsmith_f_op_f32(-479f + global0.x)), u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2371f, global0.x) - 1000f)), u_input.a.x)));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(508f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-938f)), _wgslsmith_f_op_f32(-var_0.d))), 1441f)), 122f);
    global0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(min(global0.x, 956f))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1487f) * vec2<f32>(var_0.d, -421f)))))));
    var var_1 = Struct_1(global3[_wgslsmith_index_u32(1860u, 10u)], _wgslsmith_f_op_f32(step(-2017f, var_0.d)), _wgslsmith_mult_i32(i32(-1i) * -64328i, u_input.a.x), _wgslsmith_f_op_f32(func_3(countOneBits(~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(57863u, 13u)], 13u)], 13u)])), vec2<bool>(var_0.a, true), Struct_1(any(vec4<bool>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], 13u)], 10u)], var_0.a, var_0.a, false)), var_0.d, _wgslsmith_mod_i32(-u_input.a.x, 37249i), _wgslsmith_f_op_f32(-925f * _wgslsmith_f_op_f32(max(var_0.b, -868f)))), _wgslsmith_clamp_i32(u_input.a.x, -firstLeadingBit(13868i), 2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a << (((~vec2<u32>(38743u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 13u)], 13u)]) >> (select(vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(20166u, 13u)], 13u)]), vec2<u32>(global2[_wgslsmith_index_u32(0u, 13u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(54001u, 13u)], 13u)]), var_1.a) % vec2<u32>(32u))) & vec2<u32>(abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(46763u, 13u)], 13u)], 13u)], 13u)]), ~0u)) % vec2<u32>(32u)), var_0.c, _wgslsmith_add_vec3_i32(reverseBits(firstLeadingBit(select(vec3<i32>(-15860i, -1i, var_0.c), vec3<i32>(38924i, 15728i, u_input.a.x), global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(15616u, 13u)], 10u)]))), ~abs(vec3<i32>(0i, var_0.c, -27339i))));
}

