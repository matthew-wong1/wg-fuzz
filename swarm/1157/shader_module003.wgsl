struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: u32,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 25>;

var<private> global1: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(vec4<u32>(9802u, 1u, 1u, 4294967295u), -360f), vec3<i32>(-1i, 1i, i32(-2147483648))), Struct_2(Struct_1(vec4<u32>(20963u, 3099u, 0u, 23363u), -468f), vec3<i32>(1i, 74470i, i32(-2147483648))), Struct_2(Struct_1(vec4<u32>(1u, 98520u, 0u, 4294967295u), -1405f), vec3<i32>(-1i, -47977i, i32(-2147483648))), Struct_2(Struct_1(vec4<u32>(0u, 1u, 21048u, 0u), 664f), vec3<i32>(24867i, -8895i, 1i)), Struct_2(Struct_1(vec4<u32>(32584u, 57906u, 71163u, 81438u), 594f), vec3<i32>(22458i, -1i, -1i)), Struct_2(Struct_1(vec4<u32>(15511u, 1u, 3670u, 22533u), 665f), vec3<i32>(2147483647i, 41570i, i32(-2147483648))), Struct_2(Struct_1(vec4<u32>(79680u, 4294967295u, 9381u, 1u), 614f), vec3<i32>(-5590i, 0i, -1i)), Struct_2(Struct_1(vec4<u32>(14126u, 44037u, 0u, 0u), 461f), vec3<i32>(2147483647i, 15849i, 11854i)), Struct_2(Struct_1(vec4<u32>(0u, 201u, 1u, 81451u), 1756f), vec3<i32>(2147483647i, -23055i, 1i)), Struct_2(Struct_1(vec4<u32>(58123u, 11866u, 5320u, 4294967295u), -723f), vec3<i32>(-58691i, 1i, 1i)), Struct_2(Struct_1(vec4<u32>(80210u, 4294967295u, 54610u, 57465u), -957f), vec3<i32>(-1i, 34363i, 2147483647i)), Struct_2(Struct_1(vec4<u32>(0u, 9231u, 0u, 0u), 788f), vec3<i32>(-21094i, i32(-2147483648), i32(-2147483648))), Struct_2(Struct_1(vec4<u32>(4294967295u, 53718u, 30536u, 19005u), -1503f), vec3<i32>(1i, -51658i, -21718i)), Struct_2(Struct_1(vec4<u32>(78909u, 44119u, 0u, 0u), 1406f), vec3<i32>(-76580i, 1i, 20109i)), Struct_2(Struct_1(vec4<u32>(6152u, 1u, 1u, 1u), 1325f), vec3<i32>(-16525i, -47082i, 2147483647i)), Struct_2(Struct_1(vec4<u32>(4294967295u, 12055u, 1u, 0u), 158f), vec3<i32>(-1i, 0i, 8012i)), Struct_2(Struct_1(vec4<u32>(4294967295u, 0u, 61361u, 12021u), 983f), vec3<i32>(i32(-2147483648), 0i, 0i)), Struct_2(Struct_1(vec4<u32>(0u, 19383u, 20013u, 3210u), 1000f), vec3<i32>(4499i, 0i, -1i)), Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 16995u, 107u), 226f), vec3<i32>(-24952i, -3706i, -3959i)), Struct_2(Struct_1(vec4<u32>(4294967295u, 25593u, 33104u, 78208u), -694f), vec3<i32>(0i, 19985i, 16433i)), Struct_2(Struct_1(vec4<u32>(22402u, 5943u, 0u, 0u), 1320f), vec3<i32>(0i, 1i, 11601i)), Struct_2(Struct_1(vec4<u32>(53905u, 49469u, 40400u, 4294967295u), 169f), vec3<i32>(24508i, 1i, i32(-2147483648))), Struct_2(Struct_1(vec4<u32>(35071u, 59918u, 27380u, 49402u), 234f), vec3<i32>(1i, -5532i, 45078i)));

var<private> global2: Struct_1 = Struct_1(vec4<u32>(13557u, 1u, 19335u, 759u), 1195f);

var<private> global3: array<vec4<i32>, 15> = array<vec4<i32>, 15>(vec4<i32>(-34941i, -13885i, -1i, 0i), vec4<i32>(31012i, 52871i, -105010i, -1i), vec4<i32>(-58455i, -11393i, 1i, i32(-2147483648)), vec4<i32>(25826i, 36488i, 1i, 2147483647i), vec4<i32>(i32(-2147483648), 62624i, -5324i, -5720i), vec4<i32>(2147483647i, 2147483647i, -14335i, 2147483647i), vec4<i32>(2147483647i, 217i, -145i, 0i), vec4<i32>(13639i, 40794i, i32(-2147483648), -1i), vec4<i32>(-49525i, -1i, -1i, -31903i), vec4<i32>(0i, 0i, -1i, 2147483647i), vec4<i32>(i32(-2147483648), 19476i, 2909i, i32(-2147483648)), vec4<i32>(1i, 8992i, -1i, 73691i), vec4<i32>(-1i, 7054i, -98799i, 7176i), vec4<i32>(0i, -16180i, 26052i, -51433i), vec4<i32>(2147483647i, 11032i, -17067i, 2147483647i));

var<private> global4: bool = false;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-arg_0.a.b);
    let var_1 = _wgslsmith_dot_vec4_i32(-min(vec4<i32>(i32(-1i) * -2147483647i, 18962i & u_input.b.x, i32(-1i) * -11565i, arg_0.b.x >> (4294967295u % 32u)), u_input.b), ~vec4<i32>(~(-1i), _wgslsmith_mult_i32(~(-1i), u_input.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 1i), vec2<i32>(84724i, 5706i)), -35535i));
    let var_2 = Struct_5(-796f, true, Struct_2(Struct_1(abs(vec4<u32>(global2.a.x, 112612u, 65684u, 29208u)), _wgslsmith_f_op_f32(-global2.b)), _wgslsmith_div_vec3_i32(-arg_0.b, -firstTrailingBit(arg_0.b))), Struct_2(arg_0.a, _wgslsmith_mult_vec3_i32(min(arg_0.b, vec3<i32>(27133i, u_input.b.x, var_1)), abs(u_input.b.xxw))));
    var var_3 = true;
    let var_4 = Struct_3(vec3<u32>(~min(reverseBits(var_2.c.a.a.x), global2.a.x), _wgslsmith_mult_u32(~48753u, u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(~137278u, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.a.x, 0u, var_2.c.a.a.x), vec3<u32>(global2.a.x, 22678u, var_2.c.a.a.x))), ~vec2<u32>(0u, var_2.d.a.a.x))), !select(vec3<bool>(1663f > var_2.c.a.b, 3249f < arg_0.a.b, var_2.b), select(select(vec3<bool>(false, var_2.b, true), vec3<bool>(var_2.b, false, true), false), !vec3<bool>(true, var_2.b, var_2.b), false), select(vec3<bool>(false, false, var_2.b), vec3<bool>(var_2.b, false, var_2.b), vec3<bool>(var_2.b, var_2.b, false))), _wgslsmith_mult_u32(var_2.c.a.a.x, ~(~_wgslsmith_add_u32(global2.a.x, arg_0.a.a.x))), _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(i32(-1i) * -11043i, ~1i), u_input.b.yx), vec2<i32>(-u_input.b.x, firstLeadingBit(1i)), -max(vec2<i32>(-26870i, var_1) & vec2<i32>(0i, -1i), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, -2147483647i), vec2<i32>(u_input.b.x, 1i)))), Struct_1(_wgslsmith_sub_vec4_u32(~(arg_0.a.a ^ var_2.c.a.a), countOneBits(~arg_0.a.a)), var_0));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.e.b) + 542f);
}

fn func_2() -> Struct_1 {
    global0 = array<vec2<f32>, 25>();
    let var_0 = vec4<bool>(!select(all(vec2<bool>(true, true)), true, false), false, true, true);
    global0 = array<vec2<f32>, 25>();
    var var_1 = _wgslsmith_f_op_f32(select(global2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1035f + 1000f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.b), _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(global2.a, global2.b), u_input.b.wwx)))))), true));
    let var_2 = Struct_1(~global2.a, _wgslsmith_f_op_f32(max(-2966f, 553f)));
    return var_2;
}

fn func_1() -> StorageBuffer {
    global2 = func_2();
    global1 = array<Struct_2, 23>();
    global2 = func_2();
    let var_0 = min(~27917u, abs(4294967295u));
    let var_1 = _wgslsmith_mult_i32(i32(-1i) * -10149i, 4181i);
    return StorageBuffer(_wgslsmith_f_op_f32(-237f - _wgslsmith_f_op_f32(round(global2.b))), _wgslsmith_div_vec3_u32(global2.a.yzz, countOneBits(abs(global2.a.xwz))) | vec3<u32>(~(~97444u), 24626u, min(global2.a.x, abs(var_0))), global2.b, _wgslsmith_add_u32(~countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(24890u, u_input.a, 4294967295u), vec3<u32>(u_input.a, 26934u, u_input.a))), 9204u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec4<bool>(any(vec4<bool>(true, true, true, false)), true, !all(vec4<bool>(true, false, true, false)), false), vec4<bool>(true, true, true, true), !all(vec4<bool>(true, true, true, true)));
    let x = u_input.a;
    s_output = func_1();
}

