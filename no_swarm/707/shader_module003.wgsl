struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: vec2<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 10> = array<vec2<i32>, 10>(vec2<i32>(8483i, 82102i), vec2<i32>(0i, -12256i), vec2<i32>(-55112i, -1i), vec2<i32>(-87575i, 0i), vec2<i32>(0i, -59909i), vec2<i32>(-19497i, -37428i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(16126i, 0i), vec2<i32>(0i, 46259i));

var<private> global1: array<u32, 8> = array<u32, 8>(0u, 0u, 49129u, 4294967295u, 16677u, 53163u, 72007u, 4294967295u);

var<private> global2: array<Struct_1, 2>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    global1 = array<u32, 8>();
    var var_0 = true;
    let var_1 = vec2<i32>(select(firstTrailingBit(reverseBits(-6476i)), abs(6026i), true), max(-(i32(-1i) * -13975i), _wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -31575i, -2147483647i), abs(min(vec2<i32>(59439i, 22983i), vec2<i32>(1i, 30596i))))));
    global0 = array<vec2<i32>, 10>();
    global0 = array<vec2<i32>, 10>();
    return u_input.b;
}

fn func_4(arg_0: bool, arg_1: vec2<i32>) -> vec3<i32> {
    var var_0 = countOneBits(countOneBits(arg_1.x) | -_wgslsmith_dot_vec3_i32(~vec3<i32>(arg_1.x, arg_1.x, arg_1.x), firstLeadingBit(vec3<i32>(arg_1.x, 2147483647i, 43638i))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-202f + -471f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1380f, 1512f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1700f))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1255f, 1000f)) + 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-341f, 802f))), _wgslsmith_f_op_f32(trunc(-580f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1448f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1343f, 513f, -843f, -1330f), vec4<f32>(-557f, -1543f, -655f, -1182f))), vec4<f32>(-328f, -829f, 2553f, 544f)))), vec4<bool>(arg_0, select(false, true, arg_0), true, arg_0))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(253f, 922f, 945f, -1030f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1348f, -1095f, -882f, -597f), vec4<f32>(589f, 834f, 1266f, 926f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1471f, _wgslsmith_f_op_f32(f32(-1f) * -2282f), 934f, -2004f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-214f, -544f, 1006f, -899f), vec4<f32>(-1761f, -752f, 163f, -1000f), arg_0)) - vec4<f32>(268f, -2100f, 363f, -728f))))));
    global0 = array<vec2<i32>, 10>();
    let var_3 = global1[_wgslsmith_index_u32(~u_input.a, 8u)];
    return max(_wgslsmith_clamp_vec3_i32(~_wgslsmith_add_vec3_i32(-vec3<i32>(2628i, 48396i, arg_1.x), vec3<i32>(39412i, 7092i, arg_1.x)), -_wgslsmith_clamp_vec3_i32(~vec3<i32>(-12209i, arg_1.x, arg_1.x), vec3<i32>(arg_1.x, arg_1.x, -12444i), min(vec3<i32>(-1i, -2147483647i, arg_1.x), vec3<i32>(19646i, 903i, arg_1.x))), select(firstLeadingBit(vec3<i32>(-2147483647i, arg_1.x, arg_1.x)), _wgslsmith_add_vec3_i32(vec3<i32>(-41031i, arg_1.x, 1i) << (vec3<u32>(global1[_wgslsmith_index_u32(1u, 8u)], 58415u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(31937u, 8u)], 8u)], 8u)]) % vec3<u32>(32u)), min(vec3<i32>(13641i, 28180i, -2147483647i), vec3<i32>(1i, -27660i, 10882i))), arg_0)), abs(~vec3<i32>(arg_1.x, arg_1.x ^ 13655i, max(-2147483647i, arg_1.x))));
}

fn func_2(arg_0: bool, arg_1: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(588f, 572f, -1354f, 1536f)))))))));
    global0 = array<vec2<i32>, 10>();
    global2 = array<Struct_1, 2>();
    let var_1 = func_4(1u <= ~func_3(), global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~6169u, countOneBits(global1[_wgslsmith_index_u32(u_input.b, 8u)]), 4294967295u), 10u)] ^ arg_1);
    global1 = array<u32, 8>();
    return _wgslsmith_dot_vec2_u32(~(~(min(vec2<u32>(global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(u_input.b, 8u)]), vec2<u32>(1u, 24287u)) & (vec2<u32>(51851u, u_input.a) << (vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u))))), reverseBits(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.b, global1[_wgslsmith_index_u32(4294967295u, 8u)]), ~vec2<u32>(0u, 3402u), vec2<u32>(1u, 4294967295u) >> (vec2<u32>(49632u, u_input.a) % vec2<u32>(32u)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec3<f32>) -> f32 {
    var var_0 = (~arg_2.e | _wgslsmith_add_u32(global1[_wgslsmith_index_u32(func_2(true, global0[_wgslsmith_index_u32(u_input.b, 10u)]) ^ ~37077u, 8u)], global1[_wgslsmith_index_u32(4294967295u, 8u)])) == ~1u;
    let var_1 = -835f;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1 - arg_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-953f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.c.x - var_1))) + _wgslsmith_f_op_f32(2154f - -646f)))));
}

fn func_5(arg_0: vec3<f32>, arg_1: bool, arg_2: f32, arg_3: vec2<u32>) -> Struct_2 {
    global1 = array<u32, 8>();
    global1 = array<u32, 8>();
    let var_0 = Struct_2(vec4<i32>(~_wgslsmith_dot_vec2_i32(~global0[_wgslsmith_index_u32(arg_3.x, 10u)], global0[_wgslsmith_index_u32(abs(arg_3.x), 10u)]), 1i, -26082i, -57986i), func_2(arg_1, ~(~(vec2<i32>(1i, -1i) << (arg_3 % vec2<u32>(32u))))), ~global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(firstLeadingBit(u_input.b), 8u)], ~700u), 8u)], 10u)] & vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(-3960i, 1i, 0i, 2147483647i), select(vec4<i32>(81796i, -61202i, -1i, 1i), vec4<i32>(39827i, 2147483647i, -2147483647i, 0i), arg_1)), 25320i), 13875i);
    return Struct_2(var_0.a, 0u, select(abs(vec2<i32>(abs(-1i), -1i)), vec2<i32>(-2660i & countOneBits(var_0.c.x), ~var_0.a.x), arg_1), abs(var_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 2>();
    let var_0 = vec2<u32>(4294967295u, 52031u);
    let var_1 = true;
    var var_2 = 1u;
    let var_3 = func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-388f, 400f, 1718f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(242f, 633f, 499f), vec3<f32>(733f, 2194f, -870f), vec3<bool>(true, var_1, false)))))), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(1u, 2u)], _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, global1[_wgslsmith_index_u32(u_input.b, 8u)]), max(vec3<u32>(var_0.x, 67800u, u_input.a), vec3<u32>(1u, 12630u, var_0.x))), global2[_wgslsmith_index_u32(var_0.x, 2u)], vec3<f32>(-367f, _wgslsmith_f_op_f32(f32(-1f) * -250f), _wgslsmith_f_op_f32(f32(-1f) * -777f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(18061u, 8u)], 4294967295u), 2u)], min(vec3<u32>(4294967295u, 0u, var_0.x), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(38407u, 8u)], 8u)], 0u, 47930u)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4384u, 32417u, var_0.x, 0u), vec4<u32>(0u, 0u, u_input.b, 19164u)), 2u)], _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-731f, -1187f, 2030f), vec3<f32>(-918f, 1225f, 234f), var_1)))))), firstLeadingBit(_wgslsmith_add_vec2_u32(~(vec2<u32>(45455u, 19157u) >> (var_0 % vec2<u32>(32u))), ~vec2<u32>(global1[_wgslsmith_index_u32(u_input.b, 8u)], var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(~reverseBits(var_3.c.x) >> (select(select(0u, global1[_wgslsmith_index_u32(var_3.b, 8u)], true), _wgslsmith_mult_u32(39914u, var_0.x), true) % 32u), _wgslsmith_sub_i32(35288i, 1i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-713f * 1723f)), -1000f, -927f)));
}

