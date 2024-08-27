struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: i32,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_3,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 31>;

var<private> global1: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(67564u, Struct_1(vec2<bool>(true, false), vec2<i32>(2147483647i, 2636i)), Struct_3(vec4<f32>(-160f, -973f, 629f, -351f), Struct_2(Struct_1(vec2<bool>(true, false), vec2<i32>(2147483647i, 1i)), vec2<u32>(1u, 0u), Struct_1(vec2<bool>(true, true), vec2<i32>(-33501i, 0i)), 17111i, Struct_1(vec2<bool>(false, true), vec2<i32>(-6027i, 13439i))), 1i, vec2<u32>(16332u, 8115u), Struct_1(vec2<bool>(false, true), vec2<i32>(56977i, -58162i))), Struct_1(vec2<bool>(true, false), vec2<i32>(1i, -35262i)), Struct_1(vec2<bool>(true, true), vec2<i32>(2147483647i, i32(-2147483648)))), Struct_4(56445u, Struct_1(vec2<bool>(true, false), vec2<i32>(-15891i, 5822i)), Struct_3(vec4<f32>(1323f, 962f, 729f, 921f), Struct_2(Struct_1(vec2<bool>(true, false), vec2<i32>(2147483647i, 35880i)), vec2<u32>(5636u, 1u), Struct_1(vec2<bool>(true, false), vec2<i32>(28167i, 57568i)), 2147483647i, Struct_1(vec2<bool>(false, false), vec2<i32>(17819i, 1i))), 1i, vec2<u32>(68465u, 47692u), Struct_1(vec2<bool>(true, false), vec2<i32>(2147483647i, 31246i))), Struct_1(vec2<bool>(false, false), vec2<i32>(11375i, 0i)), Struct_1(vec2<bool>(false, true), vec2<i32>(-6123i, 0i))), Struct_4(0u, Struct_1(vec2<bool>(false, false), vec2<i32>(i32(-2147483648), 0i)), Struct_3(vec4<f32>(-309f, 292f, -539f, 911f), Struct_2(Struct_1(vec2<bool>(false, false), vec2<i32>(-38905i, 13954i)), vec2<u32>(58272u, 51311u), Struct_1(vec2<bool>(false, true), vec2<i32>(10570i, 2147483647i)), i32(-2147483648), Struct_1(vec2<bool>(true, true), vec2<i32>(2147483647i, 0i))), -1i, vec2<u32>(0u, 1u), Struct_1(vec2<bool>(true, false), vec2<i32>(-1i, 1i))), Struct_1(vec2<bool>(false, true), vec2<i32>(1i, 0i)), Struct_1(vec2<bool>(true, false), vec2<i32>(0i, i32(-2147483648)))), Struct_4(40761u, Struct_1(vec2<bool>(true, true), vec2<i32>(-30292i, 1i)), Struct_3(vec4<f32>(-346f, -349f, -462f, -1000f), Struct_2(Struct_1(vec2<bool>(false, true), vec2<i32>(3515i, -23489i)), vec2<u32>(24229u, 1u), Struct_1(vec2<bool>(false, true), vec2<i32>(1i, 2147483647i)), 0i, Struct_1(vec2<bool>(false, false), vec2<i32>(-1i, -21828i))), i32(-2147483648), vec2<u32>(0u, 1u), Struct_1(vec2<bool>(true, true), vec2<i32>(-12966i, 2060i))), Struct_1(vec2<bool>(true, true), vec2<i32>(-13598i, 2147483647i)), Struct_1(vec2<bool>(true, false), vec2<i32>(-17505i, -23278i))), Struct_4(1u, Struct_1(vec2<bool>(false, false), vec2<i32>(-83780i, 0i)), Struct_3(vec4<f32>(-498f, 562f, 1671f, -364f), Struct_2(Struct_1(vec2<bool>(false, true), vec2<i32>(2147483647i, -1i)), vec2<u32>(22722u, 16737u), Struct_1(vec2<bool>(true, true), vec2<i32>(-1i, 33905i)), 0i, Struct_1(vec2<bool>(true, false), vec2<i32>(-14428i, 8578i))), 56700i, vec2<u32>(0u, 1u), Struct_1(vec2<bool>(false, true), vec2<i32>(1i, -5426i))), Struct_1(vec2<bool>(false, false), vec2<i32>(2147483647i, 110i)), Struct_1(vec2<bool>(true, true), vec2<i32>(-23036i, 17296i))), Struct_4(52433u, Struct_1(vec2<bool>(false, true), vec2<i32>(45023i, 2147483647i)), Struct_3(vec4<f32>(-652f, -1000f, -209f, -295f), Struct_2(Struct_1(vec2<bool>(true, false), vec2<i32>(2147483647i, -9539i)), vec2<u32>(14540u, 0u), Struct_1(vec2<bool>(true, true), vec2<i32>(18307i, -1i)), -1i, Struct_1(vec2<bool>(false, true), vec2<i32>(1i, -3335i))), 0i, vec2<u32>(97963u, 0u), Struct_1(vec2<bool>(true, false), vec2<i32>(1i, 0i))), Struct_1(vec2<bool>(false, false), vec2<i32>(-1i, 16226i)), Struct_1(vec2<bool>(false, true), vec2<i32>(15675i, 58479i))), Struct_4(137813u, Struct_1(vec2<bool>(false, true), vec2<i32>(-34857i, 11137i)), Struct_3(vec4<f32>(-829f, -1119f, 505f, -654f), Struct_2(Struct_1(vec2<bool>(false, true), vec2<i32>(-1i, -8414i)), vec2<u32>(0u, 2535u), Struct_1(vec2<bool>(true, true), vec2<i32>(1i, 2147483647i)), -1i, Struct_1(vec2<bool>(true, false), vec2<i32>(59836i, 2147483647i))), 15788i, vec2<u32>(1u, 0u), Struct_1(vec2<bool>(false, false), vec2<i32>(-14958i, i32(-2147483648)))), Struct_1(vec2<bool>(false, true), vec2<i32>(53361i, -1i)), Struct_1(vec2<bool>(true, false), vec2<i32>(1i, 1i))), Struct_4(0u, Struct_1(vec2<bool>(false, true), vec2<i32>(8690i, -63547i)), Struct_3(vec4<f32>(-334f, 204f, 1020f, -1642f), Struct_2(Struct_1(vec2<bool>(false, true), vec2<i32>(57158i, -25119i)), vec2<u32>(116585u, 39639u), Struct_1(vec2<bool>(true, false), vec2<i32>(0i, 2147483647i)), 54854i, Struct_1(vec2<bool>(false, false), vec2<i32>(1164i, 1i))), 10494i, vec2<u32>(4294967295u, 8965u), Struct_1(vec2<bool>(true, true), vec2<i32>(0i, i32(-2147483648)))), Struct_1(vec2<bool>(true, false), vec2<i32>(2147483647i, -29734i)), Struct_1(vec2<bool>(false, true), vec2<i32>(40848i, 2147483647i))));

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec2<bool>(false, false), vec2<i32>(i32(-2147483648), -52575i)), Struct_1(vec2<bool>(true, true), vec2<i32>(-7472i, -29425i)), Struct_1(vec2<bool>(true, true), vec2<i32>(-38339i, 9929i)), Struct_1(vec2<bool>(false, false), vec2<i32>(0i, -22372i)), Struct_1(vec2<bool>(true, false), vec2<i32>(-1i, 2192i)), Struct_1(vec2<bool>(true, true), vec2<i32>(41189i, 2147483647i)), Struct_1(vec2<bool>(false, false), vec2<i32>(34314i, 1i)), Struct_1(vec2<bool>(false, false), vec2<i32>(-9336i, 11550i)), Struct_1(vec2<bool>(true, true), vec2<i32>(0i, -1534i)), Struct_1(vec2<bool>(false, false), vec2<i32>(23034i, i32(-2147483648))), Struct_1(vec2<bool>(true, true), vec2<i32>(2147483647i, 1i)), Struct_1(vec2<bool>(true, false), vec2<i32>(2147483647i, -3769i)), Struct_1(vec2<bool>(true, false), vec2<i32>(5188i, 10253i)), Struct_1(vec2<bool>(true, false), vec2<i32>(6428i, -3476i)), Struct_1(vec2<bool>(true, false), vec2<i32>(-1i, -29959i)), Struct_1(vec2<bool>(false, false), vec2<i32>(1i, i32(-2147483648))), Struct_1(vec2<bool>(false, true), vec2<i32>(2147483647i, 36725i)), Struct_1(vec2<bool>(false, true), vec2<i32>(-33342i, -13217i)), Struct_1(vec2<bool>(true, true), vec2<i32>(21502i, 0i)), Struct_1(vec2<bool>(true, false), vec2<i32>(-3551i, i32(-2147483648))), Struct_1(vec2<bool>(false, false), vec2<i32>(-1i, -14241i)), Struct_1(vec2<bool>(true, true), vec2<i32>(-1i, 32475i)));

var<private> global3: Struct_1 = Struct_1(vec2<bool>(false, false), vec2<i32>(1i, -11054i));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: u32) -> vec2<i32> {
    global3 = global2[_wgslsmith_index_u32(reverseBits(~_wgslsmith_mod_u32(min(_wgslsmith_div_u32(14645u, 46321u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 17500u), vec2<u32>(1u, 0u))), countOneBits(arg_2))), 22u)];
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1585f + _wgslsmith_f_op_f32(sign(arg_0.x))), -699f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.x * -179f)))))));
    let var_1 = all(!(!vec2<bool>(all(global3.a), false)));
    var var_2 = _wgslsmith_f_op_f32(-arg_0.x) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(var_0.x)))));
    return _wgslsmith_sub_vec2_i32(global3.b, ~_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global3.b.x, -6112i), global3.b), vec2<i32>(global3.b.x, -5472i)) ^ countOneBits(vec2<i32>(global3.b.x << (arg_2 % 32u), global3.b.x)));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2) -> f32 {
    global3 = Struct_1(!vec2<bool>(!(u_input.a <= arg_1.b.x), true), _wgslsmith_sub_vec2_i32(~vec2<i32>(-2147483647i, abs(-1i)), global3.b));
    global3 = Struct_1(global3.a, _wgslsmith_div_vec2_i32(-global3.b ^ global3.b, -(~vec2<i32>(global3.b.x, -1i))) ^ firstLeadingBit(-global3.b << (vec2<u32>(49758u, 14364u) % vec2<u32>(32u))));
    let var_0 = Struct_4(countOneBits(_wgslsmith_clamp_u32(1u, 1u, abs(_wgslsmith_mod_u32(u_input.a, 11512u)))), Struct_1(global3.a, countOneBits(_wgslsmith_mult_vec2_i32(func_3(vec2<f32>(-259f, -149f), arg_1.c.a, 41703u), vec2<i32>(0i, -1i) >> (vec2<u32>(arg_1.b.x, 4294967295u) % vec2<u32>(32u))))), Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(730f, -1317f), _wgslsmith_f_op_f32(floor(1517f)), _wgslsmith_f_op_f32(1023f + -695f), _wgslsmith_f_op_f32(432f + -782f))), arg_1, ~(~0i), arg_1.b, arg_1.a), arg_1.e, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, abs(1u)) | abs(_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a, 4294967295u), _wgslsmith_sub_u32(u_input.a, 75686u))), 22u)]);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_0.c.a.zxz)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-203f, var_0.c.a.x, -604f)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c.a.wz + _wgslsmith_f_op_vec2_f32(min(var_1.xz, vec2<f32>(-501f, var_0.c.a.x)))))));
    return _wgslsmith_f_op_f32(-var_1.x);
}

fn func_1() -> f32 {
    global2 = array<Struct_1, 22>();
    global1 = array<Struct_4, 8>();
    global0 = array<vec4<i32>, 31>();
    var var_0 = vec3<i32>(1i, i32(-1i) * -1i, _wgslsmith_div_i32(~30980i, global3.b.x));
    let var_1 = !global3.a;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(168f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -359f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-503f, 1625f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec3<bool>(true, true, false), Struct_2(global2[_wgslsmith_index_u32(25371u, 22u)], vec2<u32>(u_input.a, u_input.a), Struct_1(global3.a, vec2<i32>(var_0.x, global3.b.x)), var_0.x, global2[_wgslsmith_index_u32(u_input.a, 22u)]))), _wgslsmith_f_op_f32(step(-1312f, -115f))))))));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: f32, arg_3: vec4<u32>) -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(344f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, arg_2)), arg_0, -980f) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_2)), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(abs(-1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(305f, arg_2)))), Struct_2(global2[_wgslsmith_index_u32(select(5133u | ~u_input.a, _wgslsmith_add_u32(u_input.a, _wgslsmith_add_u32(arg_3.x, arg_3.x)), true), 22u)], ~_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(arg_3.wx, arg_3.xy), arg_3.wy ^ vec2<u32>(arg_3.x, u_input.a)), Struct_1(!select(vec2<bool>(false, arg_1), global3.a, global3.a), vec2<i32>(select(-2147483647i, 292i, false), -1i ^ global3.b.x)), 0i, global2[_wgslsmith_index_u32(27570u, 22u)]), 68073i, vec2<u32>(~u_input.a, 1u), global2[_wgslsmith_index_u32(1u, 22u)]);
    global0 = array<vec4<i32>, 31>();
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-873f, 1106f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0)))) + var_0.a), Struct_2(Struct_1(var_0.b.c.a, select(vec2<i32>(1i, 1i) & global3.b, ~vec2<i32>(33547i, global3.b.x), vec2<bool>(true, true))), var_0.d, Struct_1(select(global3.a, global3.a, select(var_0.b.e.a, vec2<bool>(true, true), true)), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global3.b.x, var_0.e.b.x), vec2<i32>(-1i, global3.b.x)), max(var_0.b.e.b, vec2<i32>(global3.b.x, var_0.b.a.b.x)))), var_0.e.b.x, Struct_1(var_0.e.a, min(vec2<i32>(-2147483647i, var_0.c), var_0.b.a.b) | _wgslsmith_mult_vec2_i32(global3.b, vec2<i32>(var_0.e.b.x, global3.b.x)))), 7141i, min(vec2<u32>(1u, u_input.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(~u_input.a, var_0.d.x), ~vec2<u32>(91412u, 28615u), var_0.b.b)), var_0.e);
    return Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 1461f, 458f, -1949f)) + _wgslsmith_f_op_vec4_f32(select(var_1.a, var_0.a, false))), vec4<f32>(arg_2, arg_2, 945f, arg_2), !vec4<bool>(false, var_1.b.e.a.x, arg_1, true))), var_0.a), Struct_2(global2[_wgslsmith_index_u32(0u, 22u)], reverseBits(var_1.d), global2[_wgslsmith_index_u32(abs(~1u), 22u)], ~(abs(6443i) << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.x, var_1.b.b.x, u_input.a, 1u), arg_3) % 32u)), Struct_1(!select(vec2<bool>(global3.a.x, false), vec2<bool>(false, var_0.b.a.a.x), false), -var_1.b.e.b ^ (var_0.b.c.b | vec2<i32>(global3.b.x, var_1.c)))), global3.b.x, ~(~var_0.b.b), Struct_1(select(vec2<bool>(true, all(var_0.b.c.a)), vec2<bool>(all(vec3<bool>(var_1.b.a.a.x, var_1.e.a.x, false)), global3.a.x), false), abs(select(~vec2<i32>(-2147483647i, global3.b.x), _wgslsmith_div_vec2_i32(var_0.e.b, vec2<i32>(-2147483647i, var_1.e.b.x)), false))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 8>();
    var var_0 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))), 1352f), all(vec2<bool>(true, true)), -2252f, max(~(~vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a) | (vec4<u32>(u_input.a, 4294967295u, 0u, u_input.a) << (vec4<u32>(1u, 28656u, 17040u, u_input.a) % vec4<u32>(32u)))), vec4<u32>(u_input.a, ~(~u_input.a), ~(~4294967295u), reverseBits(firstTrailingBit(u_input.a)))));
    var var_1 = _wgslsmith_dot_vec2_i32(~(~countOneBits(vec2<i32>(0i, var_0.b.c.b.x))), abs(min(vec2<i32>(var_0.e.b.x, global3.b.x), vec2<i32>(var_0.e.b.x, var_0.e.b.x) & vec2<i32>(6746i, 2147483647i)))) == global3.b.x;
    var var_2 = _wgslsmith_mult_i32(0i, var_0.b.d);
    let var_3 = any(!select(select(select(vec3<bool>(global3.a.x, true, true), vec3<bool>(var_0.b.e.a.x, false, global3.a.x), vec3<bool>(global3.a.x, false, true)), select(vec3<bool>(global3.a.x, global3.a.x, false), vec3<bool>(var_0.b.c.a.x, var_0.b.e.a.x, true), false), select(vec3<bool>(var_0.b.e.a.x, global3.a.x, true), vec3<bool>(var_0.b.e.a.x, global3.a.x, var_0.b.c.a.x), vec3<bool>(false, global3.a.x, var_0.b.e.a.x))), select(select(vec3<bool>(false, var_0.b.e.a.x, true), vec3<bool>(false, false, global3.a.x), vec3<bool>(global3.a.x, true, true)), select(vec3<bool>(false, global3.a.x, var_0.e.a.x), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, global3.a.x), vec3<bool>(global3.a.x, var_0.e.a.x, true), var_0.b.e.a.x), !vec3<bool>(var_0.b.a.a.x, false, true), true)));
    var var_4 = vec4<bool>(!(global3.b.x < ~(~global3.b.x)), true, all(vec2<bool>(global3.a.x && !global3.a.x, global3.a.x)), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(reverseBits(firstTrailingBit(global0[_wgslsmith_index_u32(4294967295u, 31u)])), ~_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global3.b.x, var_0.c, 17934i, 0i), vec4<i32>(-30464i, -1i, global3.b.x, var_0.e.b.x)), ~vec4<i32>(var_0.b.a.b.x, var_0.b.c.b.x, global3.b.x, var_0.c))), 0u, vec2<i32>(var_0.c, 2147483647i), _wgslsmith_mult_i32(~1i, var_0.e.b.x));
}

