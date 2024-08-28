struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_2,
    d: vec3<u32>,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec2<bool>;

var<private> global2: array<i32, 12>;

var<private> global3: array<f32, 8>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: i32, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_1(global1.x, ~vec3<i32>(-(u_input.b >> (arg_1.x % 32u)), ~u_input.b & _wgslsmith_sub_i32(-54711i, global2[_wgslsmith_index_u32(4294967295u, 12u)]), _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, arg_1.x, arg_1.x), 12u)], _wgslsmith_sub_i32(35650i, u_input.c))));
    var var_1 = ~(arg_1.x >> (4294967295u % 32u));
    global2 = array<i32, 12>();
    let var_2 = 1f;
    let var_3 = -23825i;
    return Struct_1(true, global0.yzz & -var_0.b);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(~arg_1.xzw, arg_1.zxw ^ vec3<u32>(arg_1.x, 13793u, u_input.a.x), any(vec3<bool>(arg_3.b.a, global1.x, arg_3.a.x))), vec3<u32>(u_input.a.x, ~1u, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x))), 8u)]), global3[_wgslsmith_index_u32(35936u, 8u)]));
    var var_1 = -max(arg_3.c.x << (~arg_0.x % 32u), -2147483647i >> (arg_0.x % 32u));
    var_1 = u_input.c;
    global3 = array<f32, 8>();
    let var_2 = 4294967295u;
    return func_2(-4129i, ~arg_1.wxz);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<bool>) -> f32 {
    global1 = arg_2.yy;
    var var_0 = vec4<i32>(arg_0.x, func_1(select(vec2<u32>(u_input.a.x, ~u_input.a.x), abs(~u_input.a), any(arg_2.zz)), select(abs(vec4<u32>(53873u, 14010u, u_input.a.x, 4294967295u) << (vec4<u32>(28170u, u_input.a.x, 208u, u_input.a.x) % vec4<u32>(32u))), abs(firstLeadingBit(vec4<u32>(u_input.a.x, 78176u, u_input.a.x, u_input.a.x))), false), Struct_2(select(select(vec3<bool>(false, arg_2.x, global1.x), arg_2, vec3<bool>(true, arg_2.x, true)), vec3<bool>(true, arg_2.x, arg_1.a), false), Struct_1(true, vec3<i32>(-10293i, -4737i, 2147483647i)), -_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, -2403i, -2147483647i), arg_0)), Struct_2(vec3<bool>(577f <= global3[_wgslsmith_index_u32(75124u, 8u)], func_1(vec2<u32>(u_input.a.x, u_input.a.x), vec4<u32>(26979u, 12530u, 0u, 4294967295u), Struct_2(arg_2, Struct_1(arg_2.x, arg_0), vec3<i32>(global2[_wgslsmith_index_u32(0u, 12u)], 2147483647i, -2147483647i)), Struct_2(arg_2, arg_1, vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], u_input.c, global2[_wgslsmith_index_u32(u_input.a.x, 12u)]))).a, global1.x), arg_1, -arg_0)).b.x, ~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, 4294967295u, 1082u) << (select(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 3362u), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 0u), false) % vec4<u32>(32u)), max(vec4<u32>(u_input.a.x, 64244u, 28573u, 0u) << (vec4<u32>(27u, u_input.a.x, u_input.a.x, 1u) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x)))), 12u)], 11350i);
    global0 = abs(select(vec4<i32>(2147483647i, _wgslsmith_mod_i32(-45778i, arg_1.b.x), global2[_wgslsmith_index_u32(u_input.a.x, 12u)], _wgslsmith_mult_i32(arg_1.b.x, u_input.b) >> (~1306u % 32u)), ~(~reverseBits(vec4<i32>(3340i, var_0.x, var_0.x, 2147483647i))), -88513i != ~(~global0.x)));
    var var_1 = Struct_4(-29000i, all(select(!(!vec4<bool>(true, global1.x, false, arg_2.x)), vec4<bool>(global1.x, any(vec2<bool>(arg_1.a, arg_2.x)), !arg_1.a, false), !func_2(u_input.c, vec3<u32>(u_input.a.x, u_input.a.x, 17055u)).a)), Struct_1(true, global0.wwy), 47082i);
    var var_2 = var_1.c;
    return global3[_wgslsmith_index_u32(_wgslsmith_div_u32(countOneBits(_wgslsmith_div_u32(u_input.a.x ^ ~u_input.a.x, u_input.a.x)), _wgslsmith_dot_vec2_u32(~u_input.a, u_input.a)), 8u)];
}

fn func_4(arg_0: vec3<f32>, arg_1: u32, arg_2: f32, arg_3: Struct_2) -> Struct_3 {
    let var_0 = ~select(select(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1, 1u), vec2<u32>(4294967295u, arg_1)) >> (vec2<u32>(1u, 62260u) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(10065u, arg_1)), u_input.a << (vec2<u32>(arg_1, 0u) % vec2<u32>(32u))), all(vec2<bool>(true, false))), vec2<u32>(~(1u & arg_1), abs(arg_1)), !func_1(~u_input.a, ~vec4<u32>(16348u, 46273u, 12199u, 110222u), arg_3, arg_3).a);
    var var_1 = Struct_2(select(!arg_3.a, select(select(arg_3.a, !vec3<bool>(false, true, global1.x), select(vec3<bool>(arg_3.b.a, false, arg_3.a.x), vec3<bool>(arg_3.b.a, global1.x, arg_3.a.x), global1.x)), select(select(arg_3.a, arg_3.a, true), vec3<bool>(true, false, arg_3.b.a), true), arg_3.a), !(!select(arg_3.a, vec3<bool>(arg_3.a.x, global1.x, false), vec3<bool>(arg_3.b.a, arg_3.a.x, arg_3.b.a)))), func_2(arg_3.b.b.x, _wgslsmith_sub_vec3_u32(vec3<u32>(26313u, arg_1, 57588u), _wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, 10735u, 0u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<u32>(34516u, arg_1, u_input.a.x))))), ~vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(47544i, -2147483647i, -2147483647i), global0.x), global0.x, reverseBits(-arg_3.c.x)));
    var var_2 = -abs(_wgslsmith_div_vec3_i32(arg_3.b.b, select(-vec3<i32>(-39952i, u_input.c, -2147483647i), vec3<i32>(arg_3.c.x, -5232i, 1i), arg_3.a)));
    global1 = !(!(!(!vec2<bool>(arg_3.a.x, false))));
    var_1 = Struct_2(!(!vec3<bool>(arg_3.b.a, arg_3.a.x, true)), func_1(~reverseBits(vec2<u32>(arg_1, arg_1)), vec4<u32>(49732u, arg_1, u_input.a.x, u_input.a.x), arg_3, Struct_2(select(!var_1.a, var_1.a, true), func_1(u_input.a, ~vec4<u32>(arg_1, arg_1, var_0.x, 0u), Struct_2(vec3<bool>(false, true, arg_3.a.x), Struct_1(true, var_1.b.b), vec3<i32>(global0.x, 1i, 1i)), arg_3), vec3<i32>(i32(-1i) * -1i, select(1i, 12190i, arg_3.b.a), 1i))), ~(vec3<i32>(10616i, ~6792i, 1i) & vec3<i32>(1i >> (arg_1 % 32u), arg_3.c.x >> (var_0.x % 32u), _wgslsmith_mod_i32(global0.x, 97188i))));
    return Struct_3(select(vec3<i32>(~(~u_input.c), 11195i ^ _wgslsmith_add_i32(38901i, var_1.b.b.x), var_1.b.b.x), vec3<i32>(~countOneBits(arg_3.b.b.x), ~(-global0.x), select(_wgslsmith_add_i32(-2147483647i, u_input.c), 1i, true)), arg_3.a), Struct_2(select(arg_3.a, select(!arg_3.a, select(vec3<bool>(arg_3.a.x, arg_3.b.a, arg_3.a.x), arg_3.a, vec3<bool>(global1.x, false, true)), !var_1.a.x), true), func_1(~vec2<u32>(110895u, 27227u), ~vec4<u32>(16310u, 60341u, var_0.x, 1u), arg_3, Struct_2(arg_3.a, arg_3.b, global0.wwx)), vec3<i32>(-9864i, _wgslsmith_sub_i32(-2147483647i, u_input.b), countOneBits(0i)) >> (vec3<u32>(var_0.x, ~var_0.x, 58811u) % vec3<u32>(32u))), Struct_2(arg_3.a, Struct_1(var_1.a.x, -_wgslsmith_mod_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(var_0.x, 12u)], u_input.b, -2147483647i), arg_3.b.b)), vec3<i32>(-u_input.c, reverseBits(var_2.x) | 32633i, countOneBits(-1i))), ~vec3<u32>(arg_1, u_input.a.x, 0u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !vec2<bool>(global1.x, global1.x);
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(func_3(~global0.zwx, func_1(vec2<u32>(0u, u_input.a.x), vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x), Struct_2(vec3<bool>(true, global1.x, global1.x), Struct_1(global1.x, global0.xxz), global0.yzy), Struct_2(vec3<bool>(global1.x, global1.x, false), Struct_1(global1.x, global0.zxy), global0.wzw)), vec3<bool>(global1.x, global1.x, true))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-145f * 884f))), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(0u, u_input.a.x, 17722u)), 8u)])), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-471f, global3[_wgslsmith_index_u32(43439u, 8u)], global3[_wgslsmith_index_u32(u_input.a.x, 8u)]) - vec3<f32>(581f, global3[_wgslsmith_index_u32(19316u, 8u)], global3[_wgslsmith_index_u32(1u, 8u)])) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(33386u, 8u)], global3[_wgslsmith_index_u32(1u, 8u)], 193f))))))), _wgslsmith_clamp_u32((25827u ^ u_input.a.x) << (1u % 32u), _wgslsmith_clamp_u32(~max(1u, u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(19819u, 30909u, 5795u), vec3<u32>(u_input.a.x, u_input.a.x, 82566u)), 10417u | ~u_input.a.x), ~_wgslsmith_add_u32(17868u, ~53466u)), global3[_wgslsmith_index_u32(1476u, 8u)], Struct_2(vec3<bool>(true, any(!vec3<bool>(true, global1.x, global1.x)), global1.x), func_2(global2[_wgslsmith_index_u32(~4294967295u, 12u)], firstLeadingBit(~vec3<u32>(u_input.a.x, 139043u, 14106u))), countOneBits(global0.ywz)));
    global2 = array<i32, 12>();
    let var_1 = Struct_3(min(~func_2(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.d.x, 4294967295u), 12u)], func_4(vec3<f32>(197f, global3[_wgslsmith_index_u32(var_0.d.x, 8u)], global3[_wgslsmith_index_u32(1u, 8u)]), 136046u, global3[_wgslsmith_index_u32(u_input.a.x, 8u)], Struct_2(var_0.b.a, var_0.b.b, global0.xxx)).d).b, var_0.a), Struct_2(select(!var_0.b.a, select(select(var_0.c.a, vec3<bool>(true, false, var_0.c.b.a), false), func_4(vec3<f32>(global3[_wgslsmith_index_u32(var_0.d.x, 8u)], global3[_wgslsmith_index_u32(69660u, 8u)], global3[_wgslsmith_index_u32(u_input.a.x, 8u)]), 13943u, -786f, var_0.c).b.a, true), func_4(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 8u)], global3[_wgslsmith_index_u32(52045u, 8u)], global3[_wgslsmith_index_u32(u_input.a.x, 8u)]))), ~29057u, 775f, func_4(vec3<f32>(global3[_wgslsmith_index_u32(var_0.d.x, 8u)], global3[_wgslsmith_index_u32(1u, 8u)], 723f), u_input.a.x, 1946f, var_0.b).c).b.a), func_2(~(-2147483647i), ~(~var_0.d)), vec3<i32>(-_wgslsmith_div_i32(var_0.a.x, 1i), 34467i, global2[_wgslsmith_index_u32(var_0.d.x, 12u)])), Struct_2(var_0.c.a, func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global3[_wgslsmith_index_u32(87989u, 8u)], global3[_wgslsmith_index_u32(0u, 8u)], 1319f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -848f, global3[_wgslsmith_index_u32(1u, 8u)]) + vec3<f32>(998f, global3[_wgslsmith_index_u32(41181u, 8u)], 1464f))), func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-176f, global3[_wgslsmith_index_u32(var_0.d.x, 8u)], global3[_wgslsmith_index_u32(35714u, 8u)]) + vec3<f32>(global3[_wgslsmith_index_u32(47894u, 8u)], -1761f, -954f)), ~0u, 1f, func_4(vec3<f32>(global3[_wgslsmith_index_u32(15547u, 8u)], global3[_wgslsmith_index_u32(0u, 8u)], global3[_wgslsmith_index_u32(46121u, 8u)]), u_input.a.x, -455f, Struct_2(var_0.c.a, Struct_1(true, vec3<i32>(0i, u_input.b, u_input.c)), vec3<i32>(62382i, -1i, -32878i))).c).d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-282f, 2566f, global1.x))), Struct_2(vec3<bool>(false, false, global1.x), Struct_1(false, var_0.c.c), _wgslsmith_div_vec3_i32(vec3<i32>(global0.x, global2[_wgslsmith_index_u32(0u, 12u)], 0i), var_0.c.b.b))).b.b, ~global0.zxz & vec3<i32>(_wgslsmith_clamp_i32(-31419i, global0.x, 0i), _wgslsmith_add_i32(global2[_wgslsmith_index_u32(11400u, 12u)], var_0.a.x), _wgslsmith_mult_i32(21832i, -23120i))), ~(countOneBits(var_0.d) << (_wgslsmith_mult_vec3_u32(var_0.d, var_0.d) % vec3<u32>(32u))) | firstTrailingBit(var_0.d));
    let var_2 = _wgslsmith_div_u32(var_1.d.x, firstTrailingBit(1u));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.c, firstLeadingBit(u_input.a), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~max(vec4<u32>(var_0.d.x, var_2, var_2, u_input.a.x), vec4<u32>(u_input.a.x, var_1.d.x, 0u, 47449u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_1.d.x, 35523u, u_input.a.x), vec4<u32>(var_0.d.x, u_input.a.x, 4294967295u, 4294967295u)) & _wgslsmith_sub_vec4_u32(vec4<u32>(16590u, u_input.a.x, var_0.d.x, 4294967295u), vec4<u32>(var_1.d.x, 1u, 1u, var_1.d.x))), ~(~vec4<u32>(129911u, u_input.a.x, 0u, var_2))), vec2<i32>(min(-7163i, _wgslsmith_mod_i32(var_1.a.x | -8347i, abs(global0.x))), 27121i));
}

