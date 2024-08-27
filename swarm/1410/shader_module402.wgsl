struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(Struct_1(39822u)), Struct_2(Struct_1(4294967295u)), Struct_2(Struct_1(35232u)), Struct_2(Struct_1(4294967295u)), Struct_2(Struct_1(0u)), Struct_2(Struct_1(0u)), Struct_2(Struct_1(35710u)), Struct_2(Struct_1(0u)));

var<private> global3: vec2<u32> = vec2<u32>(62548u, 4294967295u);

var<private> global4: vec3<bool>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: i32, arg_1: vec4<bool>, arg_2: f32, arg_3: vec2<f32>) -> vec4<bool> {
    let var_0 = global2[_wgslsmith_index_u32(firstTrailingBit(50422u) >> (global1.a % 32u), 8u)];
    return vec4<bool>(global4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2095f)) + _wgslsmith_f_op_f32(167f * -793f))) > _wgslsmith_f_op_f32(trunc(arg_3.x)), global4.x, true);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> vec4<bool> {
    return select(select(func_1(1i, select(func_1(-17715i, vec4<bool>(global0.x, global4.x, true, global4.x), arg_0.x, arg_0.xy), select(vec4<bool>(global4.x, true, false, global4.x), vec4<bool>(true, false, true, true), false), all(vec4<bool>(global0.x, true, global4.x, false))), _wgslsmith_f_op_f32(424f + 260f), _wgslsmith_f_op_vec2_f32(-arg_0.xw)), !(!(!vec4<bool>(true, true, global4.x, global4.x))), vec4<bool>(global0.x, true || global4.x, true, false)), !select(select(select(vec4<bool>(global4.x, global4.x, global0.x, false), vec4<bool>(global0.x, false, false, global4.x), global0.x), func_1(-1i, vec4<bool>(true, global0.x, global4.x, true), arg_0.x, vec2<f32>(arg_0.x, arg_0.x)), all(vec3<bool>(false, true, global0.x))), select(!vec4<bool>(global4.x, global4.x, false, global4.x), vec4<bool>(global4.x, global0.x, global4.x, true), false), global0.x), !vec4<bool>(any(func_1(-25045i, vec4<bool>(global0.x, false, false, false), arg_0.x, vec2<f32>(arg_0.x, 1184f)).yw), any(!global4.zx), u_input.a <= _wgslsmith_mult_u32(global1.a, u_input.a), global0.x));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> bool {
    let var_0 = global0.x;
    let var_1 = !vec3<bool>(true, ~_wgslsmith_add_u32(56835u, global1.a) > global3.x, false);
    global2 = array<Struct_2, 8>();
    let var_2 = arg_1;
    global0 = var_1.zy;
    return all(select(func_1((1i >> (0u % 32u)) & _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2, -2127i), vec2<i32>(arg_2, 10827i)), vec4<bool>(arg_2 >= arg_2, !global4.x, false, any(vec3<bool>(true, arg_3, arg_3))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(932f, 551f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-573f, -576f)))), vec4<bool>(true, any(!var_1.zx), any(!arg_0.www), false), true));
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = u_input.a;
    global4 = vec3<bool>(false, func_4(select(vec4<bool>(global0.x, true, true, !global4.x), vec4<bool>(global0.x, true, true, false), func_3(vec4<f32>(arg_0, arg_0, -1034f, -868f), Struct_1(global3.x))), Struct_1(22489u), ~countOneBits(max(10299i, 0i)), firstTrailingBit(u_input.a) > select(1u, ~0u, global0.x && true)), _wgslsmith_f_op_f32(step(arg_0, -661f)) > _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1387f)))));
    let var_1 = vec4<i32>(1i, _wgslsmith_mod_i32(reverseBits(1i), ~firstLeadingBit(~(-37430i))), abs(-62629i) >> (_wgslsmith_div_u32(4237u, 27743u) % 32u), 1i);
    global1 = Struct_1(~_wgslsmith_div_u32(global1.a, 14469u));
    var var_2 = -1135f;
    return Struct_1(min(46869u, var_0));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec4<bool>) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(~arg_1.a, 8u)];
    var var_1 = 7869u;
    var var_2 = select(!arg_2, arg_2, any(!select(!arg_2, vec4<bool>(global0.x, true, false, arg_2.x), vec4<bool>(true, arg_2.x, true, true))));
    let var_3 = arg_1;
    let var_4 = var_0.a;
    return _wgslsmith_dot_vec3_u32(firstLeadingBit(~vec3<u32>(var_4.a, 14920u, arg_1.a)), ~vec3<u32>(arg_1.a, _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.a, 40783u, 43897u), vec3<u32>(global1.a, 33851u, u_input.a)), ~1u)) ^ (1u | _wgslsmith_mult_u32(~(var_3.a | 0u), _wgslsmith_div_u32(11982u, _wgslsmith_add_u32(9047u, global1.a))));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    global3 = firstTrailingBit(~_wgslsmith_sub_vec2_u32(max(vec2<u32>(arg_1.a.a, u_input.a), vec2<u32>(arg_0.a.a, 12568u)) >> (countOneBits(vec2<u32>(global1.a, 44436u)) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(abs(vec2<u32>(61322u, 0u)), vec2<u32>(0u, 0u))));
    return arg_0;
}

fn func_7(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> Struct_2 {
    global2 = array<Struct_2, 8>();
    let var_0 = func_6(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(692f + -1806f) + _wgslsmith_f_op_f32(f32(-1f) * -569f))).a, func_6(arg_0, global2[_wgslsmith_index_u32(0u, 8u)], func_2(_wgslsmith_div_f32(-1000f, 484f)), func_6(Struct_2(arg_0.a), func_6(Struct_2(arg_1), Struct_2(arg_0.a), Struct_1(9159u), Struct_2(Struct_1(arg_1.a))), Struct_1(88331u), func_6(arg_0, global2[_wgslsmith_index_u32(global1.a, 8u)], arg_2, global2[_wgslsmith_index_u32(0u, 8u)]))).a.a), 8u)], global2[_wgslsmith_index_u32(~1u, 8u)], Struct_1(~4294967295u), func_6(Struct_2(func_6(Struct_2(Struct_1(4294967295u)), func_6(arg_0, Struct_2(arg_1), Struct_1(arg_2.a), arg_0), arg_0.a, arg_0).a), global2[_wgslsmith_index_u32(abs(1u), 8u)], Struct_1(abs(u_input.a)), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(countOneBits(func_5(u_input.a, Struct_1(4193u), vec4<bool>(global4.x, global0.x, false, false))), 21645u), 8u)])).a;
    var var_1 = func_2(782f);
    let var_2 = _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(global3.x, u_input.a), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 12306u), vec2<u32>(var_0.a, 14258u))) & vec2<u32>((global1.a ^ var_1.a) >> (_wgslsmith_mult_u32(arg_1.a, 18592u) % 32u), ~countOneBits(arg_0.a.a)), max(countOneBits(~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.a, 13055u), vec2<u32>(var_1.a, arg_2.a), vec2<u32>(arg_1.a, 39789u))), vec2<u32>(4642u, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.a, 1u, 21668u, var_0.a), min(vec4<u32>(global1.a, 47237u, arg_2.a, arg_1.a), vec4<u32>(global3.x, var_1.a, 26902u, 24530u))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1939f, -250f, -737f))))) * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-729f)), _wgslsmith_f_op_f32(f32(-1f) * -460f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(746f + 428f))), _wgslsmith_f_op_f32(abs(1278f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1395f)) - -1704f), _wgslsmith_div_f32(338f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1324f - 428f))), -1460f)));
    return global2[_wgslsmith_index_u32(~(~(~(~0u))), 8u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(vec4<bool>(!global0.x, global0.x, global0.x, false || global0.x), select(select(vec4<bool>(true, true, false, true), vec4<bool>(global4.x, false, global4.x, global0.x), vec4<bool>(false, true, global4.x, false)), select(vec4<bool>(global0.x, false, false, false), vec4<bool>(true, global0.x, global4.x, false), global4.x), all(vec4<bool>(global4.x, true, global0.x, global4.x))), all(!vec4<bool>(true, global0.x, global4.x, true))), vec4<bool>(false, all(vec2<bool>(global4.x, global0.x)) & global0.x, true, (global0.x | global0.x) & (global0.x || global0.x)), global4.x), select(select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), global4.x), select(vec4<bool>(true, true, false, true), select(vec4<bool>(global0.x, true, true, true), vec4<bool>(global4.x, global4.x, true, global0.x), global4.x), vec4<bool>(global4.x, true, false, false)), select(select(vec4<bool>(true, global0.x, true, global0.x), vec4<bool>(global4.x, false, global0.x, global4.x), vec4<bool>(true, true, false, global0.x)), !vec4<bool>(global0.x, global0.x, false, global0.x), all(vec3<bool>(global4.x, true, global4.x)))), !(!vec4<bool>(true, global4.x, global4.x, false)), func_1(0i | _wgslsmith_dot_vec2_i32(vec2<i32>(-81492i, -28456i), vec2<i32>(-1i, 4166i)), !(!vec4<bool>(global4.x, false, global0.x, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(517f + 159f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1548f, 843f) * vec2<f32>(-825f, -925f))))), global4.x);
    global2 = array<Struct_2, 8>();
    let var_1 = ~global1.a;
    var var_2 = func_7(func_6(Struct_2(Struct_1(~4294967295u)), global2[_wgslsmith_index_u32(func_5(global1.a, func_2(_wgslsmith_f_op_f32(174f - 907f)), !(!vec4<bool>(global4.x, global0.x, var_0.x, false))), 8u)], Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(9322u, global1.a), _wgslsmith_mod_vec2_u32(vec2<u32>(global1.a, u_input.a), vec2<u32>(global1.a, var_1)))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~firstTrailingBit(vec2<u32>(0u, var_1)), ~firstTrailingBit(vec2<u32>(var_1, 0u))), 8u)]), Struct_1(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1, global3.x, 4294967295u), ~vec3<u32>(38420u, var_1, 1u)), abs(0u) ^ abs(global3.x), global3.x)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2347f, -392f) * _wgslsmith_f_op_f32(-1377f * 1690f)))), countOneBits(_wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(2248i, 2147483647i, 1i), vec3<i32>(34880i, -39205i, -2147483647i), vec3<i32>(1i, -7787i, -21171i))), firstLeadingBit(~vec3<i32>(-1i, 16312i, 1i)))));
    let var_3 = ~vec4<u32>(global3.x, 0u << (_wgslsmith_clamp_u32(1u, ~var_2.a.a, var_1) % 32u), _wgslsmith_add_u32(1u, 35084u), ~_wgslsmith_add_u32(var_2.a.a & 2067u, global1.a));
    let var_4 = select(vec3<i32>(abs(_wgslsmith_div_i32(-36273i, _wgslsmith_mod_i32(-11697i, -14588i))), -5958i, (firstTrailingBit(-22962i) | select(-39621i, 35193i, var_0.x)) ^ -(i32(-1i) * -2147483647i)), ~select(_wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(-55671i, 1i, 0i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(29842i, 24846i, 0i), vec3<i32>(12293i, 726i, 1293i), vec3<i32>(-1i, -73634i, -31695i))), vec3<i32>(-40480i, _wgslsmith_mod_i32(2147483647i, -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(15841i, -5447i, 2147483647i), vec3<i32>(14765i, -1i, -2147483647i))), global0.x), select(!(!select(vec3<bool>(true, true, true), var_0.wzx, var_0.wzx)), var_0.xwy, true));
    let var_5 = global4.x;
    let x = u_input.a;
    s_output = StorageBuffer(-var_4.zy, vec3<i32>(-1i) * -(~(var_4 & var_4)), firstLeadingBit(_wgslsmith_mult_vec2_u32(var_3.xz, var_3.zx)), var_3.wxy, _wgslsmith_div_i32(reverseBits(_wgslsmith_add_i32(-14524i, -11092i) >> (~var_2.a.a % 32u)), _wgslsmith_mod_i32(var_4.x, firstTrailingBit(-3085i))));
}

