struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<bool>,
    d: vec4<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<f32, 10> = array<f32, 10>(766f, -1731f, -758f, -987f, 1020f, 136f, 436f, -710f, -843f, -2656f);

var<private> global2: Struct_1;

var<private> global3: array<f32, 7> = array<f32, 7>(1077f, 1378f, 1171f, 1950f, 711f, 998f, 1158f);

var<private> global4: vec2<f32>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(1286f - global1[_wgslsmith_index_u32(4294967295u, 10u)]);
    let var_1 = 866f;
    let var_2 = max(vec3<i32>(_wgslsmith_sub_i32(0i, -global2.b.x) ^ -19376i, abs(min(u_input.a, arg_2.b.x)) & -_wgslsmith_add_i32(arg_3.b.x, -2147483647i), arg_3.b.x), arg_3.b.xxw);
    let var_3 = select(select(arg_0.e, select(!(!global2.e), select(!vec4<bool>(false, true, global2.e.x, false), select(vec4<bool>(arg_0.c.x, arg_0.c.x, true, global2.e.x), vec4<bool>(false, true, false, global2.e.x), arg_2.e), !arg_2.e.x), !select(vec4<bool>(true, arg_0.e.x, arg_3.c.x, arg_3.e.x), vec4<bool>(true, true, false, false), global2.c.x)), select(!select(arg_3.e, arg_0.e, false), select(vec4<bool>(arg_3.e.x, arg_2.e.x, global2.e.x, arg_2.e.x), select(global2.e, vec4<bool>(arg_0.c.x, arg_2.c.x, true, arg_3.c.x), vec4<bool>(false, true, arg_3.c.x, true)), global2.e.x), arg_2.c.x)), arg_0.e, !vec4<bool>(max(1i, 1i) >= var_2.x, !all(arg_0.e.yyz), !any(vec3<bool>(global2.c.x, arg_3.e.x, true)), global2.e.x));
    var var_4 = Struct_1(abs(vec3<u32>(_wgslsmith_mod_u32(0u, _wgslsmith_clamp_u32(0u, 1u, 4294967295u)), global2.a.x | arg_2.a.x, arg_0.a.x)), _wgslsmith_add_vec4_i32(arg_3.b, -(~(~arg_3.b))), vec2<bool>(!(!any(arg_2.e.wxy)), arg_0.e.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1 * -998f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -411f))), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~abs(0u), 7u)] - _wgslsmith_f_op_f32(step(1399f, global4.x)))), arg_2.e);
    return ~select(~(~vec3<u32>(0u, 765u, u_input.e) >> (min(global2.a, arg_2.a) % vec3<u32>(32u))), arg_3.a, arg_3.e.zwx);
}

fn func_2() -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(1u, 10u)];
    var var_1 = (min(global2.b.wxy, global2.b.yxx) ^ ~select(vec3<i32>(global2.b.x, 14672i, -1i), vec3<i32>(0i, 2147483647i, -462i) >> (vec3<u32>(32524u, 40380u, u_input.e) % vec3<u32>(32u)), global2.c.x)) << (~(~func_3(Struct_1(vec3<u32>(68590u, u_input.e, u_input.e), vec4<i32>(u_input.a, 1i, global2.b.x, u_input.b), global2.e.ww, global2.d, vec4<bool>(global2.c.x, global2.c.x, global2.c.x, false)), 30833i, Struct_1(vec3<u32>(0u, 1u, u_input.c), global2.b, vec2<bool>(false, true), vec4<f32>(global1[_wgslsmith_index_u32(1u, 10u)], global3[_wgslsmith_index_u32(u_input.d.x, 7u)], -1203f, global2.d.x), global2.e), Struct_1(vec3<u32>(28387u, 0u, 0u), global2.b, vec2<bool>(true, global2.c.x), global2.d, global2.e)) & ~select(vec3<u32>(1u, global2.a.x, 0u), u_input.d.zzz, vec3<bool>(global2.c.x, true, global2.e.x))) % vec3<u32>(32u));
    var var_2 = Struct_1(u_input.d.zxy, _wgslsmith_div_vec4_i32(firstLeadingBit(global2.b), _wgslsmith_add_vec4_i32(global2.b, vec4<i32>(-1i, abs(u_input.a), var_1.x, _wgslsmith_mult_i32(global2.b.x, var_1.x)))), vec2<bool>(any(!global2.e.yzw), !(global2.c.x | true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-249f * global4.x), _wgslsmith_f_op_f32(-global2.d.x), -745f, -1000f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-global2.d), global2.d))))), global2.e);
    var var_3 = var_2.e.zxz;
    let var_4 = Struct_1(vec3<u32>(var_2.a.x >> (reverseBits(31641u) % 32u), u_input.d.x >> (~(73200u | var_2.a.x) % 32u), u_input.e), var_2.b, select(var_3.xz, vec2<bool>(max(-2147483647i, u_input.a) < ~var_1.x, all(vec3<bool>(false, var_3.x, var_3.x)) | all(var_2.e.wzx)), all(vec3<bool>(any(global2.e.wz), global2.e.x, select(var_2.c.x, false, var_2.c.x)))), var_2.d, !global2.e);
    return ~firstLeadingBit(var_4.a.x << (_wgslsmith_div_u32(1u, global2.a.x) % 32u)) | _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_4.a.x, global2.a.x), vec3<u32>(var_4.a.x, var_2.a.x, 57622u)), min(~vec3<u32>(u_input.c, 4294967295u, 25596u), vec3<u32>(61632u, global2.a.x, var_2.a.x))), select(~(~var_4.a), vec3<u32>(~var_2.a.x, global2.a.x | 1u, firstTrailingBit(global2.a.x)), var_4.e.x));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.d), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global2.a.x, 7u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c, 10u)])), -660f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1833f + global3[_wgslsmith_index_u32(u_input.e, 7u)]))), global1[_wgslsmith_index_u32(func_2(), 10u)])));
    var var_1 = global2.e.ww;
    var var_2 = firstTrailingBit(vec2<i32>(-38544i >> (global2.a.x % 32u), -2147483647i));
    var var_3 = false;
    var var_4 = all(vec3<bool>(global2.e.x, any(global2.e.wy), true));
    return Struct_1(~(vec3<u32>(u_input.e, 0u, u_input.e) >> (u_input.d.zzx % vec3<u32>(32u))) & ~_wgslsmith_add_vec3_u32(~u_input.d.zwz, vec3<u32>(u_input.e, 0u, 30974u) << (u_input.d.wyz % vec3<u32>(32u))), global2.b, global2.e.zw, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(global2.d, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-175f, -519f, global4.x, 565f) - vec4<f32>(1000f, global2.d.x, -881f, -1077f)))))))), vec4<bool>(any(!(!global2.e.yyz)), global2.c.x, !var_1.x, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global2 = var_0;
    global4 = global2.d.wz;
    var var_1 = vec4<bool>(true, select(38441u >= ~func_2(), any(!vec4<bool>(true, global2.c.x, global2.e.x, false)), global2.c.x), !(func_1().e.x | (any(vec2<bool>(var_0.e.x, global2.c.x)) & true)), all(global2.e));
    let var_2 = _wgslsmith_mod_vec4_u32(~(u_input.d >> ((~vec4<u32>(0u, u_input.c, global2.a.x, global2.a.x) << (vec4<u32>(global2.a.x, var_0.a.x, 21836u, var_0.a.x) % vec4<u32>(32u))) % vec4<u32>(32u))), u_input.d);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1f, -1108f, var_0.d.x))) + _wgslsmith_f_op_vec3_f32(var_0.d.yxx * global2.d.xwx)));
}

