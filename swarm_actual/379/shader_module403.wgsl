struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(0i, 1659f, 0u, vec4<i32>(0i, -34782i, 0i, -24241i), -1i), Struct_1(-22946i, 641f, 0u, vec4<i32>(2147483647i, -6489i, -1i, -1i), 26974i), Struct_1(-8419i, 696f, 43218u, vec4<i32>(-26814i, 2147483647i, -1i, 0i), -2550i), Struct_1(-1i, 1857f, 0u, vec4<i32>(-22409i, -26484i, 0i, -9652i), -5467i), Struct_1(1i, -338f, 4294967295u, vec4<i32>(39324i, 59678i, -365i, -30927i), -11437i), Struct_1(-1i, -247f, 4294967295u, vec4<i32>(-51809i, i32(-2147483648), i32(-2147483648), 0i), 82299i), Struct_1(i32(-2147483648), 655f, 1u, vec4<i32>(19754i, -18733i, -22835i, -7647i), 1i), Struct_1(2147483647i, 449f, 14250u, vec4<i32>(i32(-2147483648), -42601i, 0i, 18825i), 2147483647i), Struct_1(1i, -509f, 5065u, vec4<i32>(-31697i, i32(-2147483648), -1i, 1i), i32(-2147483648)), Struct_1(2147483647i, -391f, 86398u, vec4<i32>(-659i, 0i, 3671i, 2147483647i), 1i), Struct_1(2147483647i, 355f, 90143u, vec4<i32>(0i, 2147483647i, 5741i, 1i), i32(-2147483648)), Struct_1(0i, 219f, 0u, vec4<i32>(1721i, 2774i, -1i, 1i), 1i), Struct_1(44511i, 2393f, 19889u, vec4<i32>(-1i, 1i, 46462i, i32(-2147483648)), -20622i), Struct_1(-54027i, 891f, 0u, vec4<i32>(2147483647i, -25719i, -29853i, 0i), 2147483647i), Struct_1(14921i, 840f, 0u, vec4<i32>(-17316i, 0i, -20229i, 43146i), -9107i), Struct_1(42486i, 672f, 7173u, vec4<i32>(-14099i, 29142i, 0i, 0i), -30742i), Struct_1(-27431i, -2078f, 4294967295u, vec4<i32>(0i, i32(-2147483648), i32(-2147483648), -1i), 51287i), Struct_1(34075i, -322f, 943u, vec4<i32>(0i, 2147483647i, -24977i, 2147483647i), 11525i), Struct_1(i32(-2147483648), 1892f, 0u, vec4<i32>(19457i, -31877i, -1i, -1i), 9691i), Struct_1(1i, 840f, 4294967295u, vec4<i32>(-13270i, 31273i, 0i, 26883i), -1i), Struct_1(0i, 1000f, 30190u, vec4<i32>(-39668i, 12746i, 2147483647i, -1i), -12188i), Struct_1(0i, 809f, 1u, vec4<i32>(-31353i, 1i, 1i, 1i), -11989i), Struct_1(-1i, 454f, 0u, vec4<i32>(i32(-2147483648), -1i, 2147483647i, -47432i), -19295i), Struct_1(65424i, 256f, 89338u, vec4<i32>(0i, 12833i, 32147i, 1i), -40414i), Struct_1(-7656i, -2690f, 5273u, vec4<i32>(0i, 16599i, -1i, -58495i), 1i), Struct_1(-13855i, 821f, 0u, vec4<i32>(-1i, 2147483647i, 25786i, -10796i), 21561i), Struct_1(470i, -1000f, 0u, vec4<i32>(36605i, 0i, 2147483647i, i32(-2147483648)), 1i), Struct_1(1i, -2143f, 0u, vec4<i32>(i32(-2147483648), -30813i, 1i, 0i), 1i), Struct_1(-39425i, -745f, 1u, vec4<i32>(1i, -55305i, i32(-2147483648), -79878i), i32(-2147483648)), Struct_1(25820i, 831f, 4294967295u, vec4<i32>(16500i, -1i, i32(-2147483648), -103488i), 2294i), Struct_1(1i, 1975f, 16007u, vec4<i32>(-62343i, 23474i, 0i, 1i), 35767i));

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(-36687i, -2063f, 0u, vec4<i32>(i32(-2147483648), 6784i, 2147483647i, -1i), -20379i), Struct_1(-29307i, 2017f, 11678u, vec4<i32>(-3342i, 1i, 0i, -8577i), 2147483647i), Struct_1(1i, 1089f, 20114u, vec4<i32>(2147483647i, 40267i, -46722i, 41880i), -1i), Struct_1(-39969i, -1000f, 0u, vec4<i32>(1i, -37607i, 0i, -64573i), 25264i), Struct_1(-75366i, -1351f, 51267u, vec4<i32>(-1724i, 17997i, -37728i, 28635i), 38680i), Struct_1(-73387i, -526f, 1u, vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 11464i), -266i), Struct_1(2147483647i, 2281f, 0u, vec4<i32>(2147483647i, 32506i, -18097i, 1i), -31845i), Struct_1(30682i, -1224f, 69217u, vec4<i32>(-32583i, 4988i, i32(-2147483648), -3149i), -51602i), Struct_1(2147483647i, -371f, 0u, vec4<i32>(1i, 1i, 68970i, 2147483647i), i32(-2147483648)), Struct_1(-39120i, -420f, 25055u, vec4<i32>(-1i, 1i, -2619i, i32(-2147483648)), 1i), Struct_1(-1i, -1531f, 23153u, vec4<i32>(-32955i, 0i, -33530i, 33127i), i32(-2147483648)), Struct_1(0i, -153f, 0u, vec4<i32>(-17089i, 24792i, 2147483647i, 6670i), 14548i), Struct_1(20016i, 389f, 31594u, vec4<i32>(-1i, 0i, 1i, -21029i), i32(-2147483648)), Struct_1(-50455i, -1730f, 24614u, vec4<i32>(22809i, -25274i, 0i, -24062i), 0i), Struct_1(-25185i, 1575f, 1u, vec4<i32>(-2345i, -1i, 1i, -5951i), 0i), Struct_1(5121i, -1000f, 4294967295u, vec4<i32>(1i, -37167i, -26920i, i32(-2147483648)), 42436i), Struct_1(i32(-2147483648), -1085f, 0u, vec4<i32>(2714i, -11928i, 81917i, 33899i), -38439i), Struct_1(i32(-2147483648), 1200f, 2006u, vec4<i32>(1i, -16539i, 0i, 2147483647i), 2147483647i), Struct_1(-1i, 1475f, 0u, vec4<i32>(37588i, 3547i, 42516i, 12653i), 12429i), Struct_1(34313i, -447f, 19567u, vec4<i32>(14130i, 10965i, 13700i, -1i), i32(-2147483648)), Struct_1(i32(-2147483648), -1223f, 57196u, vec4<i32>(0i, 896i, 0i, 7116i), -1343i), Struct_1(1i, 709f, 56590u, vec4<i32>(2147483647i, -1i, -5434i, 1i), i32(-2147483648)), Struct_1(1i, 771f, 0u, vec4<i32>(1i, 670i, -1i, -1i), 15142i), Struct_1(-26130i, 1000f, 912u, vec4<i32>(0i, -33832i, -12458i, 10631i), 37827i), Struct_1(1i, 545f, 0u, vec4<i32>(-32057i, 2147483647i, -1i, 45498i), 1i), Struct_1(-27342i, 230f, 5460u, vec4<i32>(-1i, 39611i, 46052i, 10140i), -14740i), Struct_1(-19318i, -680f, 51928u, vec4<i32>(1i, -1i, -13482i, 0i), 1i), Struct_1(-1i, -483f, 1u, vec4<i32>(24121i, 11712i, -1i, 18978i), -46776i), Struct_1(1i, -844f, 49686u, vec4<i32>(59659i, -18161i, -1i, 0i), 1i), Struct_1(21525i, -225f, 0u, vec4<i32>(34683i, 0i, -8438i, -39315i), i32(-2147483648)));

var<private> global2: array<f32, 26>;

var<private> global3: Struct_1 = Struct_1(-1i, 813f, 4294967295u, vec4<i32>(0i, -69085i, -15706i, -1i), 0i);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> u32 {
    let var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(step(arg_3, var_0.b)))))));
    let var_2 = ~(~_wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(u_input.b, 25008u, 46530u)), abs(vec3<u32>(arg_1.c, 1u, 1u))));
    global1 = array<Struct_1, 30>();
    let var_3 = arg_0.x | -8583i;
    return global3.c;
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: bool, arg_3: f32) -> Struct_1 {
    global3 = Struct_1(_wgslsmith_div_i32(_wgslsmith_add_i32(1i, global3.d.x) << (func_3(countOneBits(vec4<i32>(u_input.a, u_input.a, u_input.a, global3.e)), Struct_1(-947i, arg_3, u_input.b, global3.d, u_input.a), global1[_wgslsmith_index_u32(arg_0, 30u)], _wgslsmith_f_op_f32(abs(global3.b))) % 32u), u_input.a), arg_3, ~arg_0 >> (arg_0 % 32u), global3.d, 4587i);
    var var_0 = true;
    var var_1 = Struct_1(~global3.e, arg_3, ~(_wgslsmith_sub_u32(1u, max(0u, global3.c)) ^ 28077u), vec4<i32>(~0i, 1i, u_input.a, _wgslsmith_mod_i32(i32(-1i) * -1i, -global3.d.x)), -6622i);
    let var_2 = global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b >> (44913u % 32u), 24082u << (arg_0 % 32u)), ~(~vec2<u32>(arg_0, var_1.c)))) >> (u_input.b % 32u), 31u)];
    let var_3 = Struct_1(firstTrailingBit(~(-2147483647i)), _wgslsmith_f_op_f32(-global3.b), global3.c, vec4<i32>(var_1.e | (var_2.d.x & 34118i), ~_wgslsmith_add_i32(u_input.a, -2147483647i) | global3.e, _wgslsmith_dot_vec2_i32(var_1.d.xz, vec2<i32>(var_1.a, -20062i)), _wgslsmith_div_i32(~_wgslsmith_mod_i32(7185i, 1i), var_1.a << (var_1.c % 32u))), -2147483647i);
    return Struct_1(global3.e, arg_3, max(~var_1.c, select(var_2.c, _wgslsmith_add_u32(~4294967295u, 0u), false)), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(var_3.d ^ var_3.d, var_2.d) | vec4<i32>(global3.e, 1i, var_3.a, 0i), ~var_3.d), -2147483647i);
}

fn func_1() -> u32 {
    let var_0 = func_2(50226u, vec3<bool>(true, true, true), -abs(~u_input.a) <= 0i, global2[_wgslsmith_index_u32(0u, 26u)]);
    let var_1 = func_2(0u, select(vec3<bool>(true, true, !all(vec3<bool>(false, true, true))), !vec3<bool>(true, select(false, true, true), true), true), true, -237f);
    var var_2 = vec4<u32>(firstLeadingBit(89727u), u_input.b, var_1.c, ~5087u);
    let var_3 = false;
    global3 = func_2(58957u, vec3<bool>(true, !(var_3 == var_3), !(global3.b <= global3.b)), all(!(!select(vec3<bool>(var_3, var_3, var_3), vec3<bool>(var_3, var_3, var_3), vec3<bool>(var_3, var_3, var_3)))), _wgslsmith_f_op_f32(627f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(725f + global2[_wgslsmith_index_u32(global3.c, 26u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 26u)])))));
    return ~(~37438u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(global3.c, ~_wgslsmith_mod_u32(0u, u_input.b)), _wgslsmith_clamp_u32(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, global3.c, global3.c), vec4<u32>(u_input.b, global3.c, u_input.b, 16088u)) ^ 81950u, 4294967295u), abs(_wgslsmith_mult_u32(26638u, func_1())), ~4996u), max(vec4<u32>(_wgslsmith_mult_u32(min(global3.c, global3.c), ~u_input.b), ~u_input.b, 64793u, ~func_1()), ~((vec4<u32>(u_input.b, 17960u, global3.c, 4294967295u) | vec4<u32>(u_input.b, global3.c, 4294967295u, global3.c)) >> (firstTrailingBit(vec4<u32>(u_input.b, global3.c, 54463u, 8428u)) % vec4<u32>(32u)))), vec4<u32>(4294967295u, u_input.b, global3.c >> (56213u % 32u), (_wgslsmith_mult_u32(u_input.b, 0u) & (33735u >> (global3.c % 32u))) | 4294967295u));
    let var_1 = vec2<i32>(u_input.a, -2147483647i);
    global2 = array<f32, 26>();
    var var_2 = func_2(_wgslsmith_sub_u32(firstLeadingBit(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 40137u), vec2<u32>(19243u, 36352u)))), _wgslsmith_mod_u32(~max(4294967295u, 0u), ~1u)), vec3<bool>(all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(global3.c, 26u)])) * _wgslsmith_div_f32(global2[_wgslsmith_index_u32(4294967295u, 26u)], -182f)) < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3.b + -553f), _wgslsmith_f_op_f32(f32(-1f) * -396f), true)), true), true, -1000f);
    let var_3 = countOneBits(var_2.a);
    var var_4 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(select(countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(global3.c, 2366u, 53183u), vec3<u32>(4294967295u, var_0.x, var_0.x))), var_0.zwx, vec3<bool>(all(vec3<bool>(true, true, false)), true, true)), vec3<u32>(global3.c, 4294967295u, max(u_input.b, 1u))), 31u)];
    var var_5 = vec3<i32>(-var_1.x, -_wgslsmith_clamp_i32(firstLeadingBit(-8586i), 12214i, -80640i), global3.d.x) ^ (global3.d.wyx & var_2.d.zzz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(abs(var_0.zw), ~var_0.zy), ~(~var_0.zx)), vec2<u32>(abs(0u) << (var_0.x % 32u), global3.c)), select(firstLeadingBit(firstTrailingBit(~vec4<u32>(38801u, 0u, 4294967295u, global3.c))), _wgslsmith_mult_vec4_u32(~reverseBits(vec4<u32>(4294967295u, u_input.b, 4294967295u, 36082u)), ~vec4<u32>(4294967295u, global3.c, 1u, var_4.c) >> (_wgslsmith_div_vec4_u32(vec4<u32>(22114u, 1u, global3.c, 9745u), vec4<u32>(99472u, 0u, var_2.c, 0u)) % vec4<u32>(32u))), false), var_2.d.yy, firstLeadingBit(vec2<u32>(var_2.c, var_2.c >> (~var_0.x % 32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1457f - -741f), _wgslsmith_f_op_f32(global3.b * 829f), _wgslsmith_f_op_f32(global3.b + global2[_wgslsmith_index_u32(58589u, 26u)])))));
}

