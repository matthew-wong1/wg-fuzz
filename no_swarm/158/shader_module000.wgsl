struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<u32>(1u, 4294967295u, 23648u));

var<private> global1: array<i32, 32> = array<i32, 32>(-1i, 1i, i32(-2147483648), -30523i, i32(-2147483648), i32(-2147483648), 21846i, i32(-2147483648), 2147483647i, 0i, 2147483647i, 2147483647i, 40643i, 0i, 0i, 4129i, -1i, -26626i, 18670i, -23373i, 1i, 15630i, 44304i, -1i, 2147483647i, 14721i, 1i, -1i, i32(-2147483648), 2147483647i, -10078i, -1i);

var<private> global2: f32;

var<private> global3: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(vec3<u32>(1u, 52544u, 0u)), Struct_2(vec3<u32>(4294967295u, 1u, 23843u)), Struct_2(vec3<u32>(33189u, 70115u, 1u)));

var<private> global4: vec3<u32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32) -> vec4<f32> {
    global0 = Struct_2(_wgslsmith_mod_vec3_u32(firstLeadingBit(~firstTrailingBit(vec3<u32>(25179u, global0.a.x, 1u))), vec3<u32>(reverseBits(76108u), select(global4.x, global0.a.x, true), ~global0.a.x)));
    var var_0 = countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(~4294967295u, 0u, 31790u, _wgslsmith_mod_u32(4294967295u, 4294967295u)) | ~vec4<u32>(22737u, 47223u, global4.x, 38578u), abs(~(vec4<u32>(global4.x, global4.x, u_input.c, u_input.c) & vec4<u32>(global4.x, 0u, 4294967295u, 38771u)))));
    global1 = array<i32, 32>();
    global4 = ~global0.a;
    global4 = ~(~vec3<u32>(countOneBits(global4.x), 4294967295u, var_0.x));
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-186f, _wgslsmith_f_op_f32(348f * 620f), _wgslsmith_f_op_f32(ceil(-1077f)), 1069f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1538f, 1238f, -783f, 1819f) * vec4<f32>(2532f, 164f, -724f, 350f)))))));
}

fn func_2(arg_0: i32, arg_1: vec3<i32>, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_3(0i))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1210f, -953f, 1272f, 551f), vec4<f32>(-183f, -1295f, 555f, -968f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1291f, -846f, 318f, -416f) + vec4<f32>(-1044f, -270f, 359f, 133f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(399f, 401f, 1019f, 582f), vec4<f32>(-1761f, 440f, -1000f, 1053f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(257f, -1128f, -248f, 431f), vec4<f32>(850f, -2485f, 520f, -264f), vec4<bool>(true, true, true, false))))))));
    let var_1 = Struct_1(abs(max(arg_1.x, -44210i)), reverseBits(firstTrailingBit(u_input.c)), abs(~(~16090u)));
    var var_2 = vec4<i32>(_wgslsmith_div_i32(abs(1i), 12174i), -1i, max(_wgslsmith_dot_vec3_i32(min(vec3<i32>(-1i, 0i, -8648i), arg_1), arg_1), _wgslsmith_mult_i32(-1319i, arg_0)) << ((1u >> (_wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, global0.a.x), var_1.b << (arg_2.x % 32u)) % 32u)) % 32u), arg_0);
    let var_3 = var_0.wwz;
    let var_4 = Struct_1(_wgslsmith_dot_vec2_i32(arg_1.xz << (_wgslsmith_div_vec2_u32(global0.a.zy | vec2<u32>(arg_2.x, var_1.b), global0.a.zz) % vec2<u32>(32u)), vec2<i32>(select(~var_2.x, ~1i, true), var_2.x)), arg_2.x, 4294967295u);
    return var_1;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>) -> u32 {
    var var_0 = 2147483647i;
    let var_1 = global3[_wgslsmith_index_u32(~arg_0.c, 3u)];
    var var_2 = func_2(reverseBits(arg_0.a) | 29445i, -_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(32652i, arg_0.a), vec2<i32>(global1[_wgslsmith_index_u32(48467u, 32u)], -5002i)), max(2147483647i, arg_0.a), -35410i), vec3<i32>(arg_0.a, arg_0.a, -arg_0.a)), ~(~vec3<u32>(_wgslsmith_dot_vec3_u32(global0.a, var_1.a), 72070u, 12528u)));
    let var_3 = vec4<i32>(~(-27422i), firstTrailingBit(max(func_2(-1i, vec3<i32>(var_2.a, arg_0.a, -6350i), vec3<u32>(global4.x, 49951u, arg_0.b)).a, _wgslsmith_dot_vec3_i32(vec3<i32>(-28557i, arg_0.a, 65938i), vec3<i32>(-30144i, var_2.a, 16846i)))), -17974i, 0i) ^ vec4<i32>(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(~35936u, 32u)], _wgslsmith_mult_i32(_wgslsmith_add_i32(arg_0.a, arg_0.a), -2147483647i)), -abs(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, global1[_wgslsmith_index_u32(4294967295u, 32u)], global1[_wgslsmith_index_u32(1u, 32u)], arg_0.a), vec4<i32>(arg_0.a, -1i, arg_0.a, -4884i))), 2147483647i, firstLeadingBit(~1i) << (0u % 32u));
    global1 = array<i32, 32>();
    return 75013u;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: vec3<i32>, arg_3: u32) -> Struct_1 {
    var var_0 = Struct_1(global1[_wgslsmith_index_u32(~(global4.x ^ _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global4.x, 26737u, 93454u), vec4<u32>(arg_3, u_input.a, u_input.c, u_input.c))), 32u)] | _wgslsmith_div_i32(33693i, (47629i & global1[_wgslsmith_index_u32(global0.a.x, 32u)]) ^ select(arg_0, 1i, false)), global0.a.x, _wgslsmith_mult_u32(~(~arg_3), min(_wgslsmith_dot_vec2_u32(global0.a.zy, global4.zz), u_input.a) & ~0u));
    let var_1 = _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(abs(global0.a.x), global4.x, func_1(Struct_1(8369i, global4.x, global0.a.x), vec4<bool>(false, true, arg_1, arg_1)), var_0.b) & _wgslsmith_sub_vec4_u32(~vec4<u32>(43124u, global4.x, global0.a.x, arg_3), ~vec4<u32>(arg_3, global0.a.x, var_0.b, var_0.c))), abs(~_wgslsmith_mult_vec4_u32(vec4<u32>(12021u, 55737u, global4.x, 0u), vec4<u32>(var_0.b, 111527u, 19310u, u_input.a)) | select(vec4<u32>(14238u, u_input.a, var_0.c, var_0.b) & vec4<u32>(arg_3, 20513u, 4294967295u, 36469u), ~vec4<u32>(global4.x, 4294967295u, 69611u, 0u), arg_1)));
    var var_2 = Struct_1(-20114i, max(~4294967295u, func_2(1i, ~arg_2, _wgslsmith_sub_vec3_u32(~vec3<u32>(global0.a.x, var_1.x, global4.x), vec3<u32>(0u, u_input.c, 0u))).b), reverseBits(var_0.c));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-233f + _wgslsmith_div_f32(602f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1243f))))) + 1000f);
    let var_3 = _wgslsmith_div_vec4_u32(~vec4<u32>(~9416u, _wgslsmith_mult_u32(var_0.b, 4294967295u), func_1(Struct_1(arg_2.x, arg_3, global4.x), vec4<bool>(false, false, arg_1, false)), 23197u) & firstLeadingBit(reverseBits(~var_1)), ~abs(reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(15265u, 10104u, var_2.c, arg_3), var_1))));
    return Struct_1(2147483647i, _wgslsmith_dot_vec2_u32(var_3.xx, abs(global4.yx)), 11436u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(~(~(~_wgslsmith_sub_u32(global0.a.x, ~4294967295u))), 3u)];
    global4 = _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global0.a.x, global4.x), vec2<u32>(global4.x, u_input.b) | global4.yz), _wgslsmith_sub_vec2_u32(vec2<u32>(global0.a.x, 86650u), firstLeadingBit(vec2<u32>(global4.x, var_0.a.x)))), 24900u, 1u), _wgslsmith_mult_vec3_u32(select(~var_0.a, vec3<u32>(0u, 32456u, var_0.a.x), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true)), ~(~var_0.a)) & vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(51025u, 39969u), vec2<u32>(1u, 1u)) << (~var_0.a.x % 32u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, global4.x, var_0.a.x), vec3<u32>(global4.x, 19062u, var_0.a.x)), 7725u));
    global2 = -1000f;
    let var_1 = firstLeadingBit(-(abs(vec2<i32>(global1[_wgslsmith_index_u32(global0.a.x, 32u)], global1[_wgslsmith_index_u32(70341u, 32u)])) << (~reverseBits(vec2<u32>(4294967295u, 36407u)) % vec2<u32>(32u))));
    global0 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global4.x, var_0.a.x | countOneBits(~32406u), 59801u), 3u)];
    let var_2 = func_4(1i >> (~func_1(Struct_1(global1[_wgslsmith_index_u32(40356u, 32u)], global4.x, u_input.b), vec4<bool>(true, false, false, true)) % 32u), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2684f) * _wgslsmith_f_op_f32(round(-1000f))) <= _wgslsmith_div_f32(1422f, _wgslsmith_f_op_f32(-2045f + 1052f))), vec3<i32>(countOneBits(_wgslsmith_add_i32(2147483647i, global1[_wgslsmith_index_u32(~var_0.a.x, 32u)])), 21123i, -(18930i ^ firstTrailingBit(var_1.x))), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i & abs(_wgslsmith_sub_i32(var_1.x | -2147483647i, firstLeadingBit(var_2.a))), -_wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(7953i, -31401i, 1i)) >> (vec3<u32>(14459u, global0.a.x, 35165u) % vec3<u32>(32u)), min(~vec3<i32>(var_1.x, global1[_wgslsmith_index_u32(global4.x, 32u)], 0i), _wgslsmith_mod_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(37406u, 32u)], var_2.a, 2147483647i), vec3<i32>(12999i, 1i, -12875i))), -(~vec3<i32>(var_2.a, -3091i, -13537i))));
}

