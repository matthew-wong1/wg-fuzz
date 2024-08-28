struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec4<bool>,
    d: bool,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 5> = array<Struct_4, 5>(Struct_4(Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u)), Struct_1(vec4<u32>(62559u, 0u, 19831u, 4294967295u)), Struct_1(vec4<u32>(71985u, 4294967295u, 4294967295u, 1u)), true), vec3<i32>(-1773i, 9704i, 0i), vec4<bool>(false, true, true, false), false), Struct_4(Struct_2(Struct_1(vec4<u32>(15574u, 1u, 1u, 69695u)), Struct_1(vec4<u32>(73809u, 34509u, 0u, 0u)), Struct_1(vec4<u32>(10343u, 4294967295u, 15490u, 45930u)), false), vec3<i32>(i32(-2147483648), 27227i, -13174i), vec4<bool>(false, true, false, false), true), Struct_4(Struct_2(Struct_1(vec4<u32>(0u, 87787u, 1u, 7782u)), Struct_1(vec4<u32>(4294967295u, 0u, 79151u, 0u)), Struct_1(vec4<u32>(20969u, 70538u, 0u, 4294967295u)), false), vec3<i32>(-24441i, 22205i, 2147483647i), vec4<bool>(true, true, false, false), false), Struct_4(Struct_2(Struct_1(vec4<u32>(13506u, 1u, 0u, 540u)), Struct_1(vec4<u32>(0u, 0u, 26849u, 37365u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 11369u, 51347u)), false), vec3<i32>(20731i, i32(-2147483648), 1i), vec4<bool>(false, true, true, false), true), Struct_4(Struct_2(Struct_1(vec4<u32>(4294967295u, 0u, 0u, 5652u)), Struct_1(vec4<u32>(53108u, 0u, 4294967295u, 0u)), Struct_1(vec4<u32>(1u, 0u, 21279u, 1u)), true), vec3<i32>(i32(-2147483648), 16720i, 1i), vec4<bool>(false, false, true, true), false));

var<private> global1: array<Struct_5, 32> = array<Struct_5, 32>(Struct_5(Struct_2(Struct_1(vec4<u32>(36488u, 73394u, 0u, 0u)), Struct_1(vec4<u32>(0u, 4294967295u, 0u, 1u)), Struct_1(vec4<u32>(4294967295u, 21993u, 27739u, 4294967295u)), true)), Struct_5(Struct_2(Struct_1(vec4<u32>(1u, 5596u, 1u, 47531u)), Struct_1(vec4<u32>(22198u, 52121u, 0u, 0u)), Struct_1(vec4<u32>(28960u, 0u, 1u, 1u)), true)), Struct_5(Struct_2(Struct_1(vec4<u32>(1u, 77962u, 1u, 45385u)), Struct_1(vec4<u32>(4294967295u, 5738u, 0u, 56902u)), Struct_1(vec4<u32>(20709u, 5506u, 2334u, 29134u)), true)), Struct_5(Struct_2(Struct_1(vec4<u32>(12965u, 82790u, 24420u, 24268u)), Struct_1(vec4<u32>(4294967295u, 78204u, 4294967295u, 1u)), Struct_1(vec4<u32>(34489u, 69255u, 32311u, 10001u)), false)), Struct_5(Struct_2(Struct_1(vec4<u32>(4294967295u, 1u, 46784u, 4294967295u)), Struct_1(vec4<u32>(18762u, 50293u, 22712u, 918u)), Struct_1(vec4<u32>(0u, 0u, 106992u, 215u)), false)), Struct_5(Struct_2(Struct_1(vec4<u32>(4294967295u, 1u, 0u, 1u)), Struct_1(vec4<u32>(0u, 570u, 0u, 22680u)), Struct_1(vec4<u32>(97506u, 27111u, 0u, 1u)), false)), Struct_5(Struct_2(Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 0u, 1u, 74593u)), Struct_1(vec4<u32>(0u, 90337u, 4294967295u, 0u)), false)), Struct_5(Struct_2(Struct_1(vec4<u32>(4294967295u, 1u, 20758u, 11544u)), Struct_1(vec4<u32>(1u, 42539u, 24474u, 0u)), Struct_1(vec4<u32>(0u, 0u, 57702u, 1u)), true)), Struct_5(Struct_2(Struct_1(vec4<u32>(0u, 72852u, 51557u, 0u)), Struct_1(vec4<u32>(93276u, 19439u, 0u, 78542u)), Struct_1(vec4<u32>(1u, 31206u, 4294967295u, 1012u)), false)), Struct_5(Struct_2(Struct_1(vec4<u32>(25298u, 4294967295u, 13933u, 28300u)), Struct_1(vec4<u32>(4294967295u, 15090u, 0u, 0u)), Struct_1(vec4<u32>(46841u, 0u, 59417u, 15989u)), true)), Struct_5(Struct_2(Struct_1(vec4<u32>(26813u, 1u, 4294967295u, 0u)), Struct_1(vec4<u32>(54672u, 4294967295u, 1u, 0u)), Struct_1(vec4<u32>(22361u, 49082u, 4294967295u, 25067u)), false)), Struct_5(Struct_2(Struct_1(vec4<u32>(43402u, 13381u, 27796u, 17773u)), Struct_1(vec4<u32>(33927u, 36132u, 0u, 0u)), Struct_1(vec4<u32>(26571u, 181u, 26992u, 1u)), true)), Struct_5(Struct_2(Struct_1(vec4<u32>(4294967295u, 20771u, 367u, 35859u)), Struct_1(vec4<u32>(14251u, 18871u, 0u, 42114u)), Struct_1(vec4<u32>(5335u, 21105u, 0u, 4294967295u)), true)), Struct_5(Struct_2(Struct_1(vec4<u32>(4294967295u, 16130u, 0u, 70521u)), Struct_1(vec4<u32>(36593u, 4294967295u, 4294967295u, 81234u)), Struct_1(vec4<u32>(21204u, 0u, 18548u, 1u)), true)), Struct_5(Struct_2(Struct_1(vec4<u32>(1u, 35153u, 49209u, 17062u)), Struct_1(vec4<u32>(11662u, 4294967295u, 24639u, 1u)), Struct_1(vec4<u32>(0u, 0u, 5788u, 4294967295u)), true)), Struct_5(Struct_2(Struct_1(vec4<u32>(1u, 14394u, 69087u, 5338u)), Struct_1(vec4<u32>(0u, 18992u, 0u, 1u)), Struct_1(vec4<u32>(4294967295u, 1u, 1u, 29404u)), true)), Struct_5(Struct_2(Struct_1(vec4<u32>(20972u, 0u, 4294967295u, 0u)), Struct_1(vec4<u32>(74460u, 8997u, 21523u, 12622u)), Struct_1(vec4<u32>(1u, 4294967295u, 7761u, 9617u)), false)), Struct_5(Struct_2(Struct_1(vec4<u32>(1u, 3021u, 2675u, 1u)), Struct_1(vec4<u32>(4294967295u, 1u, 66602u, 44486u)), Struct_1(vec4<u32>(4294967295u, 8423u, 3946u, 4294967295u)), false)), Struct_5(Struct_2(Struct_1(vec4<u32>(19045u, 16272u, 1u, 4294967295u)), Struct_1(vec4<u32>(84089u, 38998u, 1u, 26407u)), Struct_1(vec4<u32>(43916u, 1u, 29506u, 4294967295u)), false)), Struct_5(Struct_2(Struct_1(vec4<u32>(0u, 13631u, 4294967295u, 18677u)), Struct_1(vec4<u32>(4294967295u, 1u, 41639u, 34016u)), Struct_1(vec4<u32>(0u, 17538u, 14485u, 43242u)), true)), Struct_5(Struct_2(Struct_1(vec4<u32>(22479u, 3925u, 54958u, 80233u)), Struct_1(vec4<u32>(72926u, 0u, 4294967295u, 0u)), Struct_1(vec4<u32>(1u, 42416u, 1u, 35126u)), true)), Struct_5(Struct_2(Struct_1(vec4<u32>(0u, 7987u, 47577u, 4294967295u)), Struct_1(vec4<u32>(10521u, 1u, 58739u, 29964u)), Struct_1(vec4<u32>(8322u, 1u, 19226u, 88751u)), false)), Struct_5(Struct_2(Struct_1(vec4<u32>(31070u, 4294967295u, 76511u, 69086u)), Struct_1(vec4<u32>(62568u, 55266u, 4294967295u, 35832u)), Struct_1(vec4<u32>(47982u, 4294967295u, 15199u, 53173u)), false)), Struct_5(Struct_2(Struct_1(vec4<u32>(10198u, 71210u, 138551u, 44058u)), Struct_1(vec4<u32>(1u, 4358u, 55786u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 1u, 474u, 1u)), false)), Struct_5(Struct_2(Struct_1(vec4<u32>(66612u, 31469u, 1u, 12695u)), Struct_1(vec4<u32>(1u, 6026u, 31596u, 1u)), Struct_1(vec4<u32>(4294967295u, 42398u, 4294967295u, 32233u)), true)), Struct_5(Struct_2(Struct_1(vec4<u32>(32144u, 4294967295u, 4294967295u, 38502u)), Struct_1(vec4<u32>(3737u, 4294967295u, 4294967295u, 43085u)), Struct_1(vec4<u32>(0u, 15952u, 0u, 99834u)), false)), Struct_5(Struct_2(Struct_1(vec4<u32>(4294967295u, 1u, 1u, 25123u)), Struct_1(vec4<u32>(0u, 93150u, 1u, 30132u)), Struct_1(vec4<u32>(1u, 34919u, 26591u, 18864u)), true)), Struct_5(Struct_2(Struct_1(vec4<u32>(1u, 19045u, 51634u, 0u)), Struct_1(vec4<u32>(51097u, 0u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(7018u, 4294967295u, 1u, 8327u)), true)), Struct_5(Struct_2(Struct_1(vec4<u32>(4294967295u, 0u, 38310u, 66648u)), Struct_1(vec4<u32>(1u, 27732u, 0u, 1u)), Struct_1(vec4<u32>(29749u, 1u, 1u, 6254u)), true)), Struct_5(Struct_2(Struct_1(vec4<u32>(0u, 51570u, 65454u, 0u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 3799u)), Struct_1(vec4<u32>(104012u, 1u, 43556u, 26854u)), true)), Struct_5(Struct_2(Struct_1(vec4<u32>(1u, 0u, 18414u, 4294967295u)), Struct_1(vec4<u32>(8340u, 8026u, 1u, 27544u)), Struct_1(vec4<u32>(28293u, 71621u, 76799u, 0u)), true)), Struct_5(Struct_2(Struct_1(vec4<u32>(22910u, 4294967295u, 1u, 0u)), Struct_1(vec4<u32>(0u, 24376u, 42862u, 4294967295u)), Struct_1(vec4<u32>(1u, 1u, 24853u, 1u)), false)));

var<private> global2: array<vec2<f32>, 6>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> vec3<bool> {
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 32u)];
    var var_1 = Struct_3(-1i >> (max(_wgslsmith_dot_vec3_u32(vec3<u32>(52387u, var_0.a.c.a.x, u_input.a) & vec3<u32>(u_input.a, 1u, 59083u), _wgslsmith_clamp_vec3_u32(var_0.a.b.a.xzw, var_0.a.b.a.wzz, vec3<u32>(u_input.a, var_0.a.c.a.x, var_0.a.c.a.x))), ~(var_0.a.c.a.x & u_input.a)) % 32u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -605f) - 1f))), 1163f));
    var var_2 = !(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 0u), ~vec2<u32>(41261u, u_input.a)) <= u_input.a);
    let var_3 = _wgslsmith_sub_vec4_i32(abs(_wgslsmith_mult_vec4_i32(~vec4<i32>(0i, var_1.a, var_1.a, 660i), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.a, var_1.a, -2147483647i, var_1.a), vec4<i32>(7384i, var_1.a, var_1.a, var_1.a)))) & (firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(0i, var_1.a, var_1.a, var_1.a), vec4<i32>(var_1.a, var_1.a, -2147483647i, 39543i))) & (-vec4<i32>(34167i, 46654i, -1i, -2147483647i) & (vec4<i32>(1i, var_1.a, var_1.a, 2147483647i) >> (var_0.a.c.a % vec4<u32>(32u))))), select(-abs(vec4<i32>(var_1.a, var_1.a, 2147483647i, var_1.a)), ~(~vec4<i32>(-2147483647i, 2147483647i, var_1.a, 1i)), vec4<bool>(var_1.b <= 102f, !var_0.a.d, all(vec2<bool>(true, var_0.a.d)), !var_0.a.d)) & -vec4<i32>(-2147483647i, _wgslsmith_add_i32(var_1.a, 36291i), 53355i, 1i & var_1.a));
    var var_4 = Struct_2(var_0.a.c, Struct_1(reverseBits(select(vec4<u32>(19082u, 1u, 4294967295u, 30490u), vec4<u32>(0u, var_0.a.a.a.x, u_input.a, 11074u), var_0.a.d)) >> (vec4<u32>(reverseBits(u_input.a), _wgslsmith_clamp_u32(u_input.a, 40829u, var_0.a.c.a.x), u_input.a, var_0.a.a.a.x) % vec4<u32>(32u))), var_0.a.c, true);
    return !select(select(vec3<bool>(any(vec3<bool>(var_0.a.d, true, true)), !var_4.d, !var_4.d), !(!vec3<bool>(var_4.d, false, var_0.a.d)), vec3<bool>(var_4.d, var_4.d, true)), vec3<bool>(all(!vec3<bool>(false, var_0.a.d, true)), !any(vec3<bool>(var_0.a.d, var_0.a.d, var_4.d)), !any(vec3<bool>(true, var_4.d, false))), true);
}

fn func_2() -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f)));
    var var_1 = Struct_2(Struct_1(vec4<u32>((u_input.a & 37944u) << (4294967295u % 32u), max(~22423u, ~66291u), u_input.a, u_input.a)), Struct_1(~vec4<u32>(9261u, u_input.a, 1u, u_input.a) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 13950u, 74454u, 0u), vec4<u32>(u_input.a, 34803u, u_input.a, 21423u)) % vec4<u32>(32u))), Struct_1(vec4<u32>(~(~u_input.a), ~(~4294967295u), ~u_input.a, 4294967295u)), select(any(func_3()) & true, all(select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), all(vec4<bool>(true, false, true, false)))), !all(vec2<bool>(true, true))));
    var_1 = Struct_2(var_1.c, var_1.b, Struct_1(vec4<u32>(u_input.a, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(var_1.c.a.zz, vec2<u32>(u_input.a, u_input.a)), vec2<u32>(0u, var_1.a.a.x)), 1u, u_input.a)), (!all(vec3<bool>(var_1.d, var_1.d, true)) || (false || !var_1.d)) | func_3().x);
    var var_2 = Struct_3(countOneBits(firstLeadingBit(1i)), -955f);
    let var_3 = vec3<f32>(1477f, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -462f) + -1007f)), -585f);
    return global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~86380u, ~var_1.c.a.x), 5u)];
}

fn func_1() -> Struct_2 {
    global1 = array<Struct_5, 32>();
    global0 = array<Struct_4, 5>();
    var var_0 = func_2();
    let var_1 = 1u;
    var var_2 = var_0.d;
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<f32>, 6>();
    global1 = array<Struct_5, 32>();
    var var_0 = func_1();
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-2155f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -2141f) * _wgslsmith_f_op_f32(f32(-1f) * -2615f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-465f, -651f) - 1399f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1072f)), _wgslsmith_f_op_f32(floor(676f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.a.zx, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(var_2.x * var_2.x)) - -850f), var_2.x)), var_2.x);
}

