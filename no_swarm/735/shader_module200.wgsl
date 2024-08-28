struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29>;

var<private> global1: array<vec2<f32>, 4>;

var<private> global2: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(Struct_2(vec3<i32>(0i, 0i, -8587i), vec2<f32>(1000f, -1000f)), Struct_1(1451f, vec4<i32>(-1i, -41931i, -1i, 1i)), 1461f), Struct_3(Struct_2(vec3<i32>(4122i, -18761i, -1i), vec2<f32>(-757f, -344f)), Struct_1(215f, vec4<i32>(47299i, 0i, -16493i, 0i)), 166f), Struct_3(Struct_2(vec3<i32>(67443i, -1679i, 14755i), vec2<f32>(-1452f, 1746f)), Struct_1(881f, vec4<i32>(2147483647i, 2147483647i, -1i, -1i)), 324f), Struct_3(Struct_2(vec3<i32>(i32(-2147483648), 2147483647i, 1831i), vec2<f32>(1197f, 224f)), Struct_1(-831f, vec4<i32>(1i, -28140i, 59841i, 1i)), -859f), Struct_3(Struct_2(vec3<i32>(756i, 2147483647i, -13571i), vec2<f32>(1000f, 941f)), Struct_1(-304f, vec4<i32>(-27530i, 2147483647i, 47635i, -5116i)), -586f), Struct_3(Struct_2(vec3<i32>(2147483647i, -11005i, -36055i), vec2<f32>(1000f, -324f)), Struct_1(-1405f, vec4<i32>(-32883i, -14389i, -1i, -2716i)), -960f), Struct_3(Struct_2(vec3<i32>(0i, 15529i, 23438i), vec2<f32>(861f, 1761f)), Struct_1(1275f, vec4<i32>(0i, 26031i, 1075i, i32(-2147483648))), -323f), Struct_3(Struct_2(vec3<i32>(-14644i, 0i, 2147483647i), vec2<f32>(218f, 1000f)), Struct_1(1207f, vec4<i32>(1i, -39798i, -22736i, 38092i)), -756f), Struct_3(Struct_2(vec3<i32>(2147483647i, -42309i, -62449i), vec2<f32>(855f, 901f)), Struct_1(-571f, vec4<i32>(8433i, 50619i, -10082i, 2147483647i)), -440f), Struct_3(Struct_2(vec3<i32>(-39956i, 43318i, 1i), vec2<f32>(1133f, -255f)), Struct_1(869f, vec4<i32>(-41466i, 1i, 11179i, 1i)), -1571f), Struct_3(Struct_2(vec3<i32>(-5505i, 2147483647i, 0i), vec2<f32>(1000f, -1000f)), Struct_1(1477f, vec4<i32>(2147483647i, 17842i, 13534i, 21882i)), -728f), Struct_3(Struct_2(vec3<i32>(-65078i, -48395i, 1i), vec2<f32>(2420f, 719f)), Struct_1(-577f, vec4<i32>(23322i, i32(-2147483648), 24519i, -10224i)), 1386f), Struct_3(Struct_2(vec3<i32>(1i, 2147483647i, 32388i), vec2<f32>(-1672f, -827f)), Struct_1(-341f, vec4<i32>(3999i, 50240i, i32(-2147483648), 36554i)), -1000f));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> f32 {
    let var_0 = ~u_input.a;
    let var_1 = global2[_wgslsmith_index_u32(firstLeadingBit(79712u), 13u)];
    global0 = array<u32, 29>();
    var var_2 = Struct_1(_wgslsmith_div_f32(arg_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0))) + -947f)), ~var_1.b.b);
    let var_3 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-104f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -424f), arg_1.b.x))))));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(-2671f, Struct_2(vec3<i32>(arg_2, 2147483647i, arg_1), vec2<f32>(1984f, 1308f)))), _wgslsmith_f_op_f32(func_1(-1097f, Struct_2(vec3<i32>(arg_1, -2147483647i, 11284i), vec2<f32>(-157f, 2401f)))))))));
    var_0 = _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(1185f + 1f), Struct_2(reverseBits(vec3<i32>(-1i) * -vec3<i32>(1i, u_input.c, 8031i)), vec2<f32>(-1594f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-907f)), _wgslsmith_f_op_f32(select(-685f, 1329f, false)))))));
    var_0 = _wgslsmith_f_op_f32(-999f * 1020f);
    global1 = array<vec2<f32>, 4>();
    global1 = array<vec2<f32>, 4>();
    return ~(~(~u_input.d.x)) | 32021u;
}

fn func_2() -> vec2<i32> {
    global2 = array<Struct_3, 13>();
    let var_0 = func_3(~_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(6417u, 4294967295u), vec2<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], 62826u)), 29u)], _wgslsmith_div_u32(u_input.b.x, u_input.d.x)), -54936i, -4557i) ^ u_input.d.x;
    global1 = array<vec2<f32>, 4>();
    let var_1 = Struct_2(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, reverseBits(u_input.c), ~u_input.c), vec3<i32>(u_input.a, firstLeadingBit(-20674i) & ~u_input.c, firstTrailingBit(u_input.c))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(-1036f * 1000f)) * global1[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 4u)]));
    global0 = array<u32, 29>();
    return vec2<i32>(select(countOneBits(16854i), (u_input.c & reverseBits(2147483647i)) << (u_input.d.x % 32u), true), ~(~(~abs(-2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -108f), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1586f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-697f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(552f, -1067f), -1498f)))), _wgslsmith_f_op_f32(-176f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, var_0.x, -929f, var_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-576f, var_0.x, var_0.x, 1424f)), _wgslsmith_f_op_f32(-889f - var_0.x) >= _wgslsmith_f_op_f32(func_1(-1202f, Struct_2(vec3<i32>(u_input.a, u_input.c, u_input.a), vec2<f32>(var_0.x, 1000f)))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - 312f), var_0.x), -722f, _wgslsmith_div_f32(-1446f, 172f), -1318f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), 710f), 1000f, _wgslsmith_f_op_f32(max(-377f, _wgslsmith_f_op_f32(f32(-1f) * -1037f)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(min(var_0.x, var_0.x))), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-829f + var_0.x) - _wgslsmith_f_op_f32(var_0.x - 379f))))));
    var var_1 = firstTrailingBit(firstLeadingBit(func_2()));
    var_1 = vec2<i32>(reverseBits(u_input.a), -u_input.c);
    let var_2 = abs(abs(-countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, var_1.x, 1i, u_input.c), vec4<i32>(u_input.c, 19898i, 1592i, u_input.a)))));
    var var_3 = func_2() >> (firstLeadingBit(vec2<u32>(global0[_wgslsmith_index_u32(~u_input.d.x, 29u)] << (global0[_wgslsmith_index_u32(~u_input.d.x, 29u)] % 32u), ~4294967295u)) % vec2<u32>(32u));
    var_3 = vec2<i32>(countOneBits(-30836i), _wgslsmith_sub_i32(~var_1.x, _wgslsmith_div_i32(-(~var_3.x), abs(_wgslsmith_mod_i32(var_1.x, -35620i)))));
    var_3 = -(~var_2.ww);
    let var_4 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(27539u, 4u)] * vec2<f32>(var_0.x, 1147f)) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(583f, var_0.x))))))));
}

