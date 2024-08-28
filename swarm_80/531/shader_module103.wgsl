struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: vec4<i32>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 27> = array<vec4<f32>, 27>(vec4<f32>(401f, -3380f, 537f, -1566f), vec4<f32>(-556f, -1379f, 1117f, -555f), vec4<f32>(-773f, 855f, 380f, 1000f), vec4<f32>(-1000f, -791f, 645f, 750f), vec4<f32>(398f, -1188f, 545f, 567f), vec4<f32>(902f, -902f, 1054f, 525f), vec4<f32>(-424f, -1970f, -387f, -398f), vec4<f32>(126f, 159f, -909f, 564f), vec4<f32>(-163f, -1219f, -404f, -769f), vec4<f32>(-448f, -1000f, 1536f, 878f), vec4<f32>(1451f, 482f, 1248f, -902f), vec4<f32>(150f, -2409f, -135f, -887f), vec4<f32>(-108f, 1246f, -1000f, 602f), vec4<f32>(-455f, -1083f, -420f, 990f), vec4<f32>(-385f, -342f, -753f, 275f), vec4<f32>(415f, -575f, 296f, -562f), vec4<f32>(-1037f, 458f, 139f, 700f), vec4<f32>(-650f, -472f, -1000f, -942f), vec4<f32>(672f, -718f, -1002f, -634f), vec4<f32>(-864f, -1002f, -1000f, 204f), vec4<f32>(-592f, 383f, 491f, -162f), vec4<f32>(524f, -898f, -1000f, 1193f), vec4<f32>(-407f, 467f, 412f, 1000f), vec4<f32>(-538f, -1000f, 407f, 657f), vec4<f32>(758f, -3018f, 462f, -1582f), vec4<f32>(-557f, -1000f, 983f, 1000f), vec4<f32>(1980f, 1300f, -392f, -367f));

var<private> global1: array<i32, 23>;

var<private> global2: array<i32, 2>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec3<bool>) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -190f) + -1200f));
}

fn func_1() -> Struct_2 {
    global2 = array<i32, 2>();
    var var_0 = Struct_3(u_input.b, -(~_wgslsmith_dot_vec4_i32(u_input.b, u_input.b)) >= -2147483647i, min(u_input.b, firstLeadingBit(countOneBits(vec4<i32>(-1i, -1i, 2147483647i, global2[_wgslsmith_index_u32(1u, 2u)])))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-938f, -960f, 958f)), vec3<f32>(-1000f, _wgslsmith_f_op_f32(352f * 172f), _wgslsmith_f_op_f32(func_2(true, Struct_1(false, vec4<bool>(false, false, true, false), vec4<i32>(u_input.b.x, 257i, u_input.b.x, -46743i)), vec4<u32>(11431u, u_input.a, 4294967295u, 55852u), vec3<bool>(true, true, true))))))));
    var var_1 = var_0.d.x;
    var var_2 = ~_wgslsmith_div_vec2_u32(select(countOneBits(vec2<u32>(22667u, 1u)), firstLeadingBit(vec2<u32>(u_input.a, u_input.a)), select(select(vec2<bool>(false, true), vec2<bool>(var_0.b, var_0.b), var_0.b), vec2<bool>(false, var_0.b), var_0.b)), vec2<u32>(~_wgslsmith_add_u32(u_input.a, u_input.a), u_input.a));
    global2 = array<i32, 2>();
    return Struct_2(_wgslsmith_f_op_f32(round(var_0.d.x)), ~countOneBits(vec4<u32>(4294967295u, var_2.x, _wgslsmith_sub_u32(u_input.a, 80821u), ~var_2.x)));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    var var_0 = Struct_3(vec4<i32>(_wgslsmith_sub_i32(-u_input.b.x, global2[_wgslsmith_index_u32(30541u, 2u)] | global1[_wgslsmith_index_u32(arg_1.b.x, 23u)]), global2[_wgslsmith_index_u32(60860u << (arg_1.b.x % 32u), 2u)], global2[_wgslsmith_index_u32(u_input.a & 1127u, 2u)] >> (u_input.a % 32u), -6180i) | max(u_input.b, u_input.b), false, _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(14393i ^ u_input.b.x, max(global2[_wgslsmith_index_u32(arg_1.b.x, 2u)], global2[_wgslsmith_index_u32(4294967295u, 2u)]), i32(-1i) * -49337i, countOneBits(0i))), _wgslsmith_sub_vec4_i32(select(u_input.b >> (arg_1.b % vec4<u32>(32u)), u_input.b, !vec4<bool>(arg_0, true, true, arg_0)), select(u_input.b, vec4<i32>(-2147483647i, 12261i, global2[_wgslsmith_index_u32(u_input.a, 2u)], -1i), true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, _wgslsmith_f_op_f32(-967f - _wgslsmith_f_op_f32(func_2(false, Struct_1(false, vec4<bool>(arg_0, arg_0, arg_0, false), u_input.b), arg_1.b, vec3<bool>(false, true, arg_0)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.a))))));
    let var_1 = 15271u;
    let var_2 = func_1();
    var var_3 = ~6716u;
    let var_4 = _wgslsmith_mult_vec2_u32(max(reverseBits(func_1().b.yz), ~(~(arg_1.b.yw >> (var_2.b.yz % vec2<u32>(32u))))), min(~(~var_2.b.wz), arg_1.b.yw) | ~((var_2.b.wx ^ arg_1.b.yw) | arg_1.b.zw));
    return Struct_1(global2[_wgslsmith_index_u32(1u, 2u)] <= _wgslsmith_dot_vec3_i32(u_input.b.zxx << (~vec3<u32>(u_input.a, u_input.a, 21965u) % vec3<u32>(32u)), vec3<i32>(var_0.a.x, max(-13386i, var_0.c.x), var_0.c.x)), select(select(select(select(vec4<bool>(false, true, arg_0, true), vec4<bool>(false, false, arg_0, var_0.b), false), !vec4<bool>(false, var_0.b, var_0.b, var_0.b), false), vec4<bool>(select(arg_0, var_0.b, var_0.b), any(vec4<bool>(var_0.b, var_0.b, arg_0, arg_0)), true, var_0.b), vec4<bool>(select(var_0.b, false, true), true, false, !arg_0)), vec4<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false)), true, true, !var_0.b), var_0.b), vec4<i32>(min(_wgslsmith_dot_vec3_i32(u_input.b.zxy << (arg_1.b.zwx % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(-27610i, -1i, global2[_wgslsmith_index_u32(var_1, 2u)]), vec3<i32>(global1[_wgslsmith_index_u32(47386u, 23u)], -2147483647i, 1i))), 9307i), 0i, i32(-1i) * -49927i, -79898i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, true, true);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 731f, 828f) * vec3<f32>(390f, 611f, 315f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(303f, 1650f, 342f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-668f, -1577f, -108f)))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(402f, _wgslsmith_f_op_f32(-1268f * -1543f), -334f)))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-996f, -497f, -654f)))))));
    let var_2 = var_1;
    let var_3 = _wgslsmith_sub_vec2_i32(~(~u_input.b.wx), u_input.b.zx);
    var var_4 = func_3(_wgslsmith_div_f32(var_2.x, var_2.x) == _wgslsmith_f_op_f32(-370f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, var_2.x))), func_1());
    var var_5 = _wgslsmith_add_vec2_u32(vec2<u32>(98286u, firstLeadingBit(min(1u, 46562u))), select(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, 67693u)), _wgslsmith_mod_u32(85895u, 1u)), (vec2<u32>(u_input.a, 4294967295u) & vec2<u32>(1u, 10016u)) & vec2<u32>(u_input.a, 4562u), global2[_wgslsmith_index_u32(31374u, 2u)] != -var_3.x)) ^ _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(abs(firstLeadingBit(vec2<u32>(35719u, 0u))), vec2<u32>(u_input.a, u_input.a)), min(vec2<u32>(u_input.a, ~u_input.a), vec2<u32>(u_input.a, ~53199u)), countOneBits(~vec2<u32>(u_input.a, u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(select(select(_wgslsmith_add_i32(firstLeadingBit(global1[_wgslsmith_index_u32(4294967295u, 23u)]), u_input.b.x), ~_wgslsmith_clamp_i32(0i, var_3.x, var_4.c.x), true), -2147483647i, !var_0.x), vec4<i32>(-1i) * -vec4<i32>(var_4.c.x, -1i, global2[_wgslsmith_index_u32(var_5.x, 2u)] & var_3.x, reverseBits(9230i)), var_2, _wgslsmith_mod_u32(countOneBits(4294967295u), 1u));
}

