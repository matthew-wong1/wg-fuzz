struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: vec4<f32>,
    c: bool,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 19>;

var<private> global1: array<u32, 2>;

var<private> global2: array<Struct_2, 10>;

var<private> global3: f32 = 416f;

var<private> global4: i32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<f32> {
    var var_0 = firstTrailingBit(~vec3<i32>(55618i, -2147483647i | ~u_input.d.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(16529i, 0i, u_input.d.x), u_input.d.zyw)));
    return vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2483f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2205f)) + 1179f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

fn func_2(arg_0: vec2<u32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(203f, -296f, 714f) - vec3<f32>(-477f, -301f, -200f)))) * _wgslsmith_f_op_vec3_f32(func_3()))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(-1172f, -1129f, -832f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-608f, 433f, -1000f)))))))));
    global4 = reverseBits(_wgslsmith_dot_vec2_i32(~u_input.d.ww, vec2<i32>(~(-u_input.d.x), u_input.b)));
    var var_1 = Struct_1(~9736u, ~global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(60307u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(61711u, 2u)], 2u)]), ~u_input.a), u_input.a & abs(4294967295u), firstLeadingBit(~1u)), 2u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(179f + var_0.x), _wgslsmith_f_op_f32(373f - var_0.x), _wgslsmith_f_op_f32(step(var_0.x, -2427f)), _wgslsmith_f_op_f32(-var_0.x)))) - vec4<f32>(_wgslsmith_f_op_f32(abs(-375f)), _wgslsmith_f_op_f32(920f * var_0.x), -475f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -942f))))), firstLeadingBit(~(-1i)), _wgslsmith_div_i32(min(min(_wgslsmith_sub_i32(u_input.b, 30837i), 2147483647i), _wgslsmith_dot_vec4_i32(u_input.d, _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.b, u_input.c, 22204i), u_input.d))), -u_input.d.x));
    var_1 = Struct_1(~(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0.x), vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(0u, 2u)])), min(arg_0.x, global1[_wgslsmith_index_u32(u_input.a, 2u)])) | var_1.a), 0u << (max(~var_1.a, var_1.a) % 32u), var_1.c, -_wgslsmith_dot_vec4_i32(vec4<i32>(12565i, -1i, -1i, var_1.e >> (1u % 32u)), u_input.d), _wgslsmith_dot_vec4_i32(abs(reverseBits(~vec4<i32>(u_input.c, var_1.d, 47116i, -32569i))), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.c, -1i, 2147483647i), min(vec4<i32>(-2147483647i, -10192i, var_1.e, 0i), vec4<i32>(24646i, u_input.c, -14672i, 80634i)), vec4<i32>(u_input.b, u_input.c, 0i, u_input.b)))));
    global4 = -(~_wgslsmith_mod_i32(u_input.c, var_1.d));
    return var_1.b >= arg_0.x;
}

fn func_1() -> Struct_5 {
    global2 = array<Struct_2, 10>();
    global1 = array<u32, 2>();
    global2 = array<Struct_2, 10>();
    let var_0 = select(!vec3<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), true, select(all(vec3<bool>(true, true, false)), true, false)), !(!vec3<bool>(any(vec3<bool>(false, true, false)), all(vec3<bool>(false, false, true)), true)), func_2(vec2<u32>(3320u, ~_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(4294967295u, 2u)], 0u, global1[_wgslsmith_index_u32(1u, 2u)]))));
    global2 = array<Struct_2, 10>();
    return Struct_5((-u_input.b <= u_input.d.x) & (any(vec3<bool>(true, false, var_0.x)) != (_wgslsmith_f_op_f32(floor(-1895f)) == _wgslsmith_f_op_f32(672f - -156f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-252f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-488f, -1215f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(152f)) - _wgslsmith_f_op_f32(f32(-1f) * -540f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(473f + -2207f), -398f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1475f, 1000f, 1319f, -662f)))), select(false, false, all(select(vec4<bool>(var_0.x, true, true, var_0.x), select(vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(false, var_0.x, true, true), vec4<bool>(var_0.x, var_0.x, true, false)), vec4<bool>(var_0.x, false, true, false)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-174f)), -236f, any(var_0.zz)))), -1355f, 912f, _wgslsmith_f_op_f32(max(793f, _wgslsmith_f_op_f32(max(390f, -1728f))))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_5) -> bool {
    var var_0 = ~((_wgslsmith_add_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 2u)], u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 2u)], 2u)], 31593u), vec4<u32>(global1[_wgslsmith_index_u32(7256u, 2u)], u_input.a, 4294967295u, u_input.a)) ^ ~vec4<u32>(1319u, 4294967295u, 0u, global1[_wgslsmith_index_u32(u_input.a, 2u)])) ^ (~vec4<u32>(u_input.a, 24538u, global1[_wgslsmith_index_u32(70091u, 2u)], global1[_wgslsmith_index_u32(u_input.a, 2u)]) | vec4<u32>(0u, 0u, u_input.a, 70018u))) | countOneBits(~(~(~vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 2u)], u_input.a, u_input.a, 32395u))));
    global3 = 1000f;
    let var_1 = 1i;
    let var_2 = _wgslsmith_div_vec2_i32(arg_0.xx, _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -1i) >> (((var_0.xx ^ vec2<u32>(global1[_wgslsmith_index_u32(427u, 2u)], 4294967295u)) ^ var_0.wx) % vec2<u32>(32u)), -vec2<i32>(44346i, abs(30217i)), arg_0.zy));
    var var_3 = min(firstTrailingBit(1i) ^ 5686i, i32(-1i) * -70586i) << (17360u % 32u);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 10>();
    global1 = array<u32, 2>();
    global2 = array<Struct_2, 10>();
    global1 = array<u32, 2>();
    global2 = array<Struct_2, 10>();
    global0 = array<vec2<f32>, 19>();
    let var_0 = Struct_5(func_4(firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(12702i, 1i, u_input.c, 48534i), vec4<i32>(u_input.d.x, u_input.b, u_input.d.x, 5994i) & vec4<i32>(u_input.d.x, -1i, u_input.c, 1i))), func_1()), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(340f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-110f * -1151f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-250f, -1000f)), -724f)), 734f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -215f) - -351f)), func_4(vec4<i32>(0i, _wgslsmith_add_i32(-30314i, u_input.d.x), abs(_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(-3594i, u_input.b, -2147483647i, -36023i))), min(_wgslsmith_sub_i32(-39860i, -47645i), _wgslsmith_clamp_i32(u_input.b, u_input.c, -51938i))), Struct_5(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 10713i), u_input.d.wx) != abs(531i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-265f, -844f, -306f, -1303f), vec4<f32>(957f, -678f, -573f, -143f))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-294f, -775f, 1794f, -631f), vec4<f32>(643f, 1000f, -1069f, 1414f)))), any(vec2<bool>(false, false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-161f, 898f, -361f, 1370f))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-599f + -1183f))), 1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1000f, -642f))), _wgslsmith_f_op_f32(528f * _wgslsmith_f_op_f32(f32(-1f) * -590f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(-u_input.d.wy, -abs(u_input.d.wz)), vec2<u32>(min(max(max(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13811u, 2u)], 2u)]), _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(u_input.a, 2u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 2u)], 2u)])), 0u & ~global1[_wgslsmith_index_u32(51893u, 2u)]), reverseBits(~global1[_wgslsmith_index_u32(0u, 2u)] >> (~33795u % 32u))), 0u, max(u_input.a, global1[_wgslsmith_index_u32(~u_input.a << (0u % 32u), 2u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), 156f, _wgslsmith_div_f32(var_0.d.x, -968f)) + vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.d.x, var_0.b.x), _wgslsmith_f_op_f32(-971f - var_0.d.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.b.x - var_0.d.x))), 1579f)));
}

