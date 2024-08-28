struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    let var_0 = Struct_1(~1i, arg_1.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.c - _wgslsmith_div_f32(arg_1.a.e.x, -543f))), _wgslsmith_sub_vec4_u32(~vec4<u32>(arg_1.b.x, arg_0.a.d.x, ~arg_1.b.x, ~16975u), ~(~_wgslsmith_mod_vec4_u32(arg_0.b, vec4<u32>(u_input.c.x, 23089u, 45938u, 4294967295u)))), arg_1.a.e);
    var var_1 = !(!(!select(vec2<bool>(true, arg_0.c), vec2<bool>(true, true), vec2<bool>(false, true))));
    var_1 = !vec2<bool>(true, var_1.x);
    let var_2 = Struct_2(var_0, min(~u_input.a, arg_1.a.d), arg_1.a.e.x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.e.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1.a.c)), _wgslsmith_f_op_f32(-arg_0.a.e.x))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(1000f * 1093f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.c))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.e.x * arg_1.a.e.x) - _wgslsmith_div_f32(839f, var_2.a.c)) * _wgslsmith_f_op_f32(sign(-878f)))), -263f);
    return any(select(!select(select(vec4<bool>(true, var_2.c, arg_1.c, false), vec4<bool>(arg_0.c, var_2.c, true, arg_0.c), true), vec4<bool>(true, arg_0.c, var_1.x, arg_1.c), select(vec4<bool>(false, true, true, var_1.x), vec4<bool>(false, true, false, false), vec4<bool>(arg_1.c, arg_0.c, arg_0.c, var_2.c))), vec4<bool>(true, !var_1.x, (arg_0.c || false) & false, arg_1.c), !select(vec4<bool>(arg_0.c, false, arg_0.c, var_2.c), select(vec4<bool>(true, var_1.x, true, var_2.c), vec4<bool>(arg_1.c, true, var_2.c, arg_0.c), false), vec4<bool>(arg_0.c, arg_0.c, var_2.c, arg_0.c))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<bool>) -> bool {
    var var_0 = vec4<bool>(true, arg_1.x, false, func_3(Struct_2(Struct_1(_wgslsmith_mult_i32(-1i, -29083i), vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_f_op_f32(441f - 2527f), u_input.a, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, -1120f, 1000f, 142f), vec4<f32>(-1000f, -587f, 749f, 1268f)))), ~(vec4<u32>(u_input.d.x, u_input.b, 41455u, 0u) | vec4<u32>(2593u, u_input.c.x, u_input.b, 16423u)), arg_1.x), Struct_2(Struct_1(-2147483647i << (u_input.a.x % 32u), select(vec4<i32>(-2147483647i, 2147483647i, 0i, -12704i), vec4<i32>(-48051i, 18551i, -23524i, 1i), vec4<bool>(arg_1.x, arg_0.x, arg_0.x, true)), _wgslsmith_f_op_f32(f32(-1f) * -172f), u_input.a, vec4<f32>(-1543f, 399f, -530f, -805f)), ~u_input.a << ((u_input.a >> (u_input.a % vec4<u32>(32u))) % vec4<u32>(32u)), true)));
    var var_1 = arg_0.x;
    var_0 = vec4<bool>(arg_1.x, !any(!vec4<bool>(var_0.x, false, true, true)), false, var_0.x);
    var var_2 = -292f;
    var_1 = func_3(Struct_2(Struct_1(-(~41614i), vec4<i32>(i32(-1i) * -2147483647i, 1i, 0i, 0i), _wgslsmith_f_op_f32(-1f), ~u_input.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(291f, -1000f, 1194f, -723f), vec4<f32>(102f, -136f, -228f, 1648f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(267f, 1051f, 390f, -972f), vec4<f32>(-573f, 752f, 251f, 1402f), vec4<bool>(arg_1.x, arg_0.x, true, arg_0.x))), select(vec4<bool>(false, false, var_0.x, false), vec4<bool>(false, arg_0.x, false, var_0.x), vec4<bool>(var_0.x, false, false, arg_1.x))))), reverseBits(~(vec4<u32>(70519u, u_input.c.x, 4294967295u, 4157u) >> (vec4<u32>(0u, 31924u, u_input.d.x, u_input.c.x) % vec4<u32>(32u)))), arg_1.x), Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(28856i, 0i, 2147483647i)), vec3<i32>(1i, 1i, 1i)), ~(vec4<i32>(2147483647i, 1i, 0i, -1i) << (u_input.a % vec4<u32>(32u))), _wgslsmith_f_op_f32(step(-612f, _wgslsmith_f_op_f32(908f - -1002f))), u_input.a, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(584f, -509f, -265f, 139f), vec4<f32>(591f, 1569f, -1016f, -790f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -257f, 162f, 908f) - vec4<f32>(-1065f, -363f, 187f, 1047f))))), reverseBits(vec4<u32>(max(6324u, u_input.d.x), _wgslsmith_div_u32(21019u, 4294967295u), u_input.d.x >> (u_input.c.x % 32u), u_input.c.x)), firstTrailingBit(2147483647i) == firstTrailingBit(firstLeadingBit(5869i))));
    return any(var_0.yw);
}

fn func_4(arg_0: vec4<bool>, arg_1: i32) -> Struct_2 {
    var var_0 = ~u_input.c.xx;
    var_0 = ~u_input.d;
    var var_1 = ~(~(~vec2<u32>(abs(var_0.x), 879u)));
    var var_2 = ~(var_0.x | var_0.x);
    var_2 = ~(~u_input.a.x);
    return Struct_2(Struct_1(arg_1 << (var_1.x % 32u), abs(-countOneBits(vec4<i32>(1i, 1i, 28321i, -1i))), _wgslsmith_f_op_f32(-1f), vec4<u32>(reverseBits(_wgslsmith_sub_u32(4294967295u, u_input.a.x)), 30851u, ~(~4294967295u), _wgslsmith_mod_u32(_wgslsmith_sub_u32(var_0.x, var_1.x), ~u_input.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), ~((~vec4<u32>(var_1.x, var_0.x, var_1.x, 47218u) ^ u_input.a) | ~(~vec4<u32>(0u, 50948u, var_0.x, u_input.b))), arg_0.x || func_3(Struct_2(Struct_1(arg_1, vec4<i32>(-29279i, arg_1, 17056i, 2147483647i), -226f, u_input.a, vec4<f32>(-1000f, -1500f, -534f, 142f)), vec4<u32>(1u, u_input.d.x, u_input.c.x, var_0.x), arg_0.x && true), Struct_2(Struct_1(arg_1, vec4<i32>(22319i, 26362i, 1i, arg_1), -1187f, vec4<u32>(u_input.a.x, var_1.x, 0u, u_input.b), vec4<f32>(-1288f, 115f, 134f, -129f)), min(vec4<u32>(1u, 15528u, 29587u, var_0.x), vec4<u32>(17430u, 52116u, 4294967295u, 4294967295u)), select(arg_0.x, arg_0.x, true))));
}

fn func_1() -> Struct_2 {
    var var_0 = func_4(vec4<bool>(false, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(551f, 653f))) >= _wgslsmith_f_op_f32(512f - _wgslsmith_f_op_f32(680f + -847f)), any(vec4<bool>(any(vec2<bool>(true, false)), false, true, all(vec3<bool>(true, false, true)))), !func_2(vec2<bool>(true, true), vec3<bool>(false, false, false))), 1i);
    var_0 = Struct_2(func_4(!(!select(vec4<bool>(var_0.c, true, false, true), vec4<bool>(false, var_0.c, var_0.c, true), vec4<bool>(var_0.c, false, false, var_0.c))), var_0.a.b.x).a, u_input.a >> (vec4<u32>(var_0.a.d.x, ~73411u, ~(~u_input.c.x), var_0.a.d.x) % vec4<u32>(32u)), true);
    var_0 = Struct_2(Struct_1(-1i, _wgslsmith_mod_vec4_i32(-(var_0.a.b | vec4<i32>(-64609i, 21499i, var_0.a.a, 1900i)), ~abs(vec4<i32>(var_0.a.a, var_0.a.a, var_0.a.a, -69288i))), _wgslsmith_div_f32(var_0.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.c))), vec4<u32>(~(var_0.a.d.x ^ u_input.a.x), var_0.a.d.x, ~(var_0.b.x << (var_0.b.x % 32u)), 4294967295u), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.a.c, var_0.a.c, var_0.a.c, 712f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(950f, 956f, var_0.a.e.x, var_0.a.e.x) - var_0.a.e)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(var_0.a.e, var_0.a.e)))))), _wgslsmith_sub_vec4_u32(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.d.x, u_input.d.x, 0u), vec4<u32>(u_input.b, 20021u, u_input.c.x, u_input.a.x))) & _wgslsmith_mod_vec4_u32(vec4<u32>(51589u, u_input.a.x, var_0.b.x, var_0.b.x), vec4<u32>(27620u, 0u, u_input.d.x, var_0.b.x)), u_input.a), var_0.c);
    var_0 = func_4(vec4<bool>(true, !all(select(vec2<bool>(true, var_0.c), vec2<bool>(false, false), vec2<bool>(false, true))), all(vec2<bool>(var_0.c, true)), func_2(!vec2<bool>(var_0.c, var_0.c), vec3<bool>(true, false || var_0.c, true == var_0.c))), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(var_0.a.b.wzy, var_0.a.b.xzz), -_wgslsmith_div_i32(var_0.a.a, 0i), var_0.a.a) & var_0.a.a);
    var var_1 = var_0.a.e;
    return Struct_2(func_4(!(!select(vec4<bool>(var_0.c, var_0.c, true, false), vec4<bool>(var_0.c, var_0.c, false, false), vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c))), _wgslsmith_sub_i32(var_0.a.a & ~(-2147483647i), 1i)).a, vec4<u32>(u_input.b, select(abs(1u), u_input.d.x, !var_0.c), ~(~var_0.b.x) >> (var_0.b.x % 32u), 9795u), select(abs(-var_0.a.a) > -var_0.a.b.x, false, func_4(vec4<bool>(any(vec2<bool>(false, var_0.c)), func_3(Struct_2(Struct_1(var_0.a.b.x, var_0.a.b, 458f, var_0.b, var_0.a.e), vec4<u32>(u_input.d.x, 1u, var_0.a.d.x, 23933u), var_0.c), Struct_2(Struct_1(2147483647i, var_0.a.b, var_1.x, vec4<u32>(u_input.b, 1u, u_input.a.x, var_0.b.x), vec4<f32>(-485f, var_1.x, var_0.a.c, -1504f)), vec4<u32>(u_input.b, 1u, var_0.b.x, 31370u), true)), true != var_0.c, false && var_0.c), var_0.a.a).c));
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-arg_0.a.e);
    let var_1 = func_4(vec4<bool>(func_2(vec2<bool>(true, true), select(vec3<bool>(true, true, arg_0.c), vec3<bool>(arg_1, arg_0.c, arg_1), true)), true, func_3(arg_0, Struct_2(arg_0.a, u_input.a & arg_0.b, arg_1)), !(!(!arg_0.c))), _wgslsmith_mult_i32(arg_0.a.a, arg_0.a.b.x));
    let var_2 = vec4<i32>(0i, _wgslsmith_div_i32(_wgslsmith_mod_i32(-(var_1.a.a << (var_1.a.d.x % 32u)), _wgslsmith_mult_i32(-44087i, 2147483647i & arg_0.a.a)), countOneBits(arg_0.a.a)), arg_0.a.a, var_1.a.b.x);
    let var_3 = func_4(!vec4<bool>(!func_4(vec4<bool>(arg_1, true, false, arg_1), -22832i).c, var_1.c, !(true && var_1.c), arg_1), var_1.a.b.x);
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(179f, -204f, var_3.c)), -173f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-674f - -189f) * 158f), _wgslsmith_f_op_f32(f32(-1f) * -525f))));
    return _wgslsmith_mult_i32(arg_0.a.a, _wgslsmith_dot_vec3_i32((var_1.a.b.wyx & vec3<i32>(-32634i, -1i, -7421i)) & vec3<i32>(var_2.x, 1i, -1i), var_3.a.b.xxw)) & _wgslsmith_mult_i32(countOneBits(_wgslsmith_sub_i32(~14361i, arg_0.a.a)), func_4(!select(vec4<bool>(false, false, true, arg_1), vec4<bool>(false, false, false, var_1.c), vec4<bool>(var_1.c, false, var_3.c, arg_0.c)), ~(-2147483647i) << (_wgslsmith_mod_u32(var_3.b.x, 101816u) % 32u)).a.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<i32>(1i, 10406i, countOneBits(reverseBits(_wgslsmith_div_i32(46960i, 2147483647i)))), countOneBits(vec3<i32>(-1i) * -firstTrailingBit(vec3<i32>(-2147483647i, 1i, -1i))), !all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))) & true);
    var_0 = vec3<i32>(~_wgslsmith_add_i32(var_0.x, _wgslsmith_clamp_i32(var_0.x, var_0.x, -45612i)), func_5(func_1(), all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)))) | _wgslsmith_mod_i32(_wgslsmith_div_i32(firstTrailingBit(15834i), -1i), _wgslsmith_dot_vec4_i32(min(vec4<i32>(-40437i, var_0.x, 0i, var_0.x), vec4<i32>(var_0.x, 22274i, var_0.x, var_0.x)), reverseBits(vec4<i32>(var_0.x, -27503i, var_0.x, var_0.x)))), abs(countOneBits(select(-2147483647i, 1i, true))));
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(513f, 915f, -621f)))))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1162f + _wgslsmith_f_op_f32(-1667f * 174f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -263f), func_4(vec4<bool>(false, false, false, false), var_0.x).a.c)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1548f)) + _wgslsmith_div_f32(536f, -1399f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -119f))), 1000f)))));
    var_1 = vec3<f32>(var_1.x, -1747f, -473f);
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, -697f) + vec3<f32>(1163f, var_1.x, var_1.x))))) - vec3<f32>(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1795f, var_1.x))), -180f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1130f - var_1.x), var_1.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(abs(var_1.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(select(~u_input.a, func_1().a.d, select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), _wgslsmith_sub_i32(~_wgslsmith_clamp_i32(_wgslsmith_div_i32(var_0.x, -1i), -var_0.x, _wgslsmith_add_i32(var_0.x, -21482i)), _wgslsmith_div_i32(var_0.x, var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.x)) + _wgslsmith_f_op_f32(f32(-1f) * -208f))) + 803f), _wgslsmith_mult_vec2_u32(~u_input.d, vec2<u32>(u_input.b, ~71082u)));
}

