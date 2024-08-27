struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec4<i32>, 11>;

var<private> global2: vec4<i32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec3<u32> {
    let var_0 = 0u;
    let var_1 = ~(~countOneBits(-global2.xz | (global2.yz >> (vec2<u32>(var_0, var_0) % vec2<u32>(32u)))));
    var var_2 = !vec4<bool>(all(vec2<bool>(true, true)), select(any(vec2<bool>(true, true)), any(vec3<bool>(true, false, true)), true), false, any(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true)));
    global1 = array<vec4<i32>, 11>();
    var var_3 = 1f;
    return reverseBits(vec3<u32>(~countOneBits(var_0), 37560u, var_0) | (abs(~vec3<u32>(11595u, var_0, 0u)) & vec3<u32>(35476u, var_0 | var_0, var_0)));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: bool) -> vec2<u32> {
    let var_0 = _wgslsmith_add_vec3_u32(~vec3<u32>(min(17286u, arg_1.a.b) & arg_1.a.b, arg_1.a.b, reverseBits(_wgslsmith_div_u32(arg_1.a.b, arg_1.a.b))), ~firstLeadingBit(vec3<u32>(0u, arg_1.a.b, 1u) ^ func_3()));
    var var_1 = arg_1.d;
    var var_2 = ~firstLeadingBit(select(~(vec4<u32>(var_0.x, 61784u, var_0.x, var_0.x) | vec4<u32>(arg_1.a.b, 0u, var_0.x, 4294967295u)), countOneBits(firstTrailingBit(vec4<u32>(arg_1.a.b, 69902u, arg_1.a.b, var_0.x))), any(select(vec2<bool>(false, arg_1.b.x), vec2<bool>(arg_2, true), vec2<bool>(true, arg_2)))));
    let var_3 = _wgslsmith_mult_i32(u_input.b, -6306i) & abs(_wgslsmith_sub_i32(_wgslsmith_mult_i32(arg_1.c >> (var_2.x % 32u), ~(-32334i)), _wgslsmith_sub_i32(-33769i, global2.x) >> (~var_0.x % 32u)));
    var var_4 = vec4<bool>(arg_1.b.x != (arg_2 || all(select(vec3<bool>(arg_1.b.x, false, true), vec3<bool>(arg_2, arg_2, arg_2), arg_1.b))), all(vec2<bool>(any(!vec4<bool>(arg_2, arg_1.b.x, arg_2, arg_1.b.x)), all(select(vec4<bool>(true, true, false, arg_2), vec4<bool>(true, true, false, true), arg_1.b.x)))), all(!arg_1.b.xx), false);
    return var_0.zy;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: u32) -> Struct_2 {
    global1 = array<vec4<i32>, 11>();
    global1 = array<vec4<i32>, 11>();
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-247f, -639f)), 4294967295u), !select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), select(all(vec2<bool>(false, true)), 93709u <= arg_2, true)), u_input.a.x, 1i);
    let var_1 = min(~_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(select(vec3<i32>(var_0.c, var_0.d, var_0.c), arg_0.xyx, false), -arg_0.wzx), ~arg_0.zwz), arg_0.yzx >> (_wgslsmith_div_vec3_u32(vec3<u32>(countOneBits(arg_2), var_0.a.b, firstLeadingBit(arg_2)), ~vec3<u32>(35475u, 64346u, 4294967295u)) % vec3<u32>(32u)));
    global2 = arg_0;
    return Struct_2(var_0.a, !select(!var_0.b, !vec3<bool>(var_0.b.x, var_0.b.x, true), vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x)), 20845i, firstTrailingBit(1i));
}

fn func_1(arg_0: vec2<f32>, arg_1: u32, arg_2: i32, arg_3: Struct_1) -> Struct_2 {
    let var_0 = func_4(-vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(global2.x, u_input.a.x), min(global2.x, global2.x)), _wgslsmith_mod_i32(global2.x, max(arg_2, arg_2)), max(~2147483647i, global2.x), firstTrailingBit(_wgslsmith_clamp_i32(1i, u_input.b, u_input.a.x))), _wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u >> (arg_1 % 32u), arg_3.b)), _wgslsmith_mod_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(34026u, 14134u), vec2<u32>(arg_1, 46804u)), func_2(_wgslsmith_f_op_f32(max(arg_3.a.x, arg_0.x)), Struct_2(arg_3, vec3<bool>(false, true, false), 27781i, -1i), true))), ~arg_3.b);
    global0 = true;
    var var_1 = Struct_2(arg_3, vec3<bool>(true, var_0.b.x, any(!var_0.b.zx)), 0i, -12303i);
    var var_2 = func_4(~abs(-vec4<i32>(-1357i, -2147483647i, -2147483647i, 8513i)), (_wgslsmith_div_vec2_u32(vec2<u32>(21701u, var_1.a.b), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 43075u), vec2<u32>(var_0.a.b, var_1.a.b))) << (abs(max(vec2<u32>(arg_3.b, var_0.a.b), vec2<u32>(arg_1, var_1.a.b))) % vec2<u32>(32u))) << (_wgslsmith_div_vec2_u32((vec2<u32>(arg_3.b, arg_3.b) >> (vec2<u32>(var_0.a.b, 1u) % vec2<u32>(32u))) ^ vec2<u32>(arg_3.b, 1u), ~(~vec2<u32>(149u, var_1.a.b))) % vec2<u32>(32u)), arg_1).a;
    var var_3 = func_4(-max(global1[_wgslsmith_index_u32(~52987u, 11u)] | _wgslsmith_add_vec4_i32(vec4<i32>(10344i, -33659i, global2.x, -62096i), vec4<i32>(u_input.b, arg_2, var_0.d, -11646i)), global1[_wgslsmith_index_u32(arg_3.b & var_2.b, 11u)]), firstLeadingBit(firstLeadingBit(~vec2<u32>(0u, 44692u))) ^ (vec2<u32>(~arg_3.b, arg_1) | abs(~vec2<u32>(0u, 1197u))), _wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(var_2.b, var_2.b, 8390u), vec3<u32>(101203u, 4294967295u, 1u)), vec3<u32>(abs(1u), arg_3.b | var_0.a.b, firstTrailingBit(~27840u)))).a;
    return Struct_2(var_0.a, vec3<bool>(all(vec4<bool>(var_0.b.x, false, true, true)), arg_1 < 1u, 1508f > _wgslsmith_f_op_f32(min(var_3.a.x, var_1.a.a.x))), ~(~1i), -2147483647i);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -836f)));
    let var_1 = vec3<u32>(~(~0u | max(func_1(vec2<f32>(745f, 288f), arg_0.a.b, arg_1.x, Struct_1(vec2<f32>(183f, arg_2.x), arg_0.a.b)).a.b, ~1u)), _wgslsmith_div_u32(1981u, arg_0.a.b), reverseBits(1u));
    var var_2 = select(vec4<bool>(!arg_0.b.x, false, func_4(global1[_wgslsmith_index_u32(~5104u, 11u)], ~_wgslsmith_mod_vec2_u32(var_1.xx, var_1.zz), _wgslsmith_sub_u32(1u, var_1.x << (35432u % 32u))).b.x, true || func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.a.x, -1174f) + arg_2.wx), arg_0.a.b | arg_0.a.b, ~(-1i), func_1(arg_0.a.a, 39704u, arg_0.d, Struct_1(vec2<f32>(744f, var_0), 111192u)).a).b.x), !(!vec4<bool>(true, true, all(vec4<bool>(arg_0.b.x, true, true, true)), all(vec3<bool>(arg_0.b.x, true, true)))), -_wgslsmith_mod_i32(global2.x >> (arg_0.a.b % 32u), global2.x ^ arg_1.x) >= -u_input.b);
    let var_3 = 1252f;
    global2 = -(~((~vec4<i32>(global2.x, arg_1.x, arg_1.x, 2147483647i) & _wgslsmith_clamp_vec4_i32(vec4<i32>(42731i, arg_0.c, 2147483647i, -30503i), vec4<i32>(5082i, 1i, arg_1.x, -84853i), vec4<i32>(global2.x, -1959i, -2147483647i, -27393i))) << ((vec4<u32>(var_1.x, 0u, 0u, 0u) & _wgslsmith_div_vec4_u32(vec4<u32>(7460u, arg_0.a.b, 0u, 45007u), vec4<u32>(arg_0.a.b, 76985u, 0u, 33761u))) % vec4<u32>(32u))));
    return Struct_2(Struct_1(vec2<f32>(arg_0.a.a.x, _wgslsmith_div_f32(func_4(vec4<i32>(u_input.a.x, arg_1.x, 14308i, -2232i), vec2<u32>(arg_0.a.b, 0u), var_1.x).a.a.x, var_3)), (~19776u | var_1.x) << (func_2(_wgslsmith_f_op_f32(var_0 + arg_0.a.a.x), func_4(vec4<i32>(2147483647i, global2.x, -30342i, 6097i), vec2<u32>(arg_0.a.b, arg_0.a.b), arg_0.a.b), arg_0.b.x).x % 32u)), var_2.yyx, abs(func_1(vec2<f32>(var_0, var_0), ~1u, arg_0.c, arg_0.a).c) & firstTrailingBit(global2.x), -(~24945i));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    global1 = array<vec4<i32>, 11>();
    global1 = array<vec4<i32>, 11>();
    global1 = array<vec4<i32>, 11>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(max(func_1(vec2<f32>(_wgslsmith_f_op_f32(round(396f)), arg_0.a.a.x), ~1004u, -(0i | arg_0.c), func_4(select(global1[_wgslsmith_index_u32(arg_0.a.b, 11u)], vec4<i32>(59492i, -1i, -64323i, arg_2), true), select(vec2<u32>(arg_1.b, arg_0.a.b), vec2<u32>(0u, arg_0.a.b), vec2<bool>(arg_0.b.x, arg_0.b.x)), 4294967295u).a).a.a, arg_0.a.a)), func_2(func_4(-(vec4<i32>(arg_2, u_input.a.x, arg_2, arg_0.d) | vec4<i32>(u_input.b, 0i, -9142i, -1i)), func_3().xz, 0u).a.a.x, arg_0, !(func_5(arg_0, vec2<i32>(44093i, arg_0.c), vec4<f32>(-1465f, arg_1.a.x, arg_0.a.a.x, -768f)).d < u_input.b)).x);
    let var_1 = Struct_2(func_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_0.a.x) - _wgslsmith_f_op_vec2_f32(-arg_1.a)))), arg_1.b, (abs(global2.x) >> (abs(var_0.b) % 32u)) >> (abs(23801u) % 32u), Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0.a.a), _wgslsmith_mod_u32(4294967295u ^ var_0.b, arg_1.b))).a, vec3<bool>(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.x, arg_0.a.a.x) + arg_0.a.a)), _wgslsmith_add_u32(arg_1.b | 4294967295u, 1u), min(global2.x, _wgslsmith_div_i32(global2.x, 1i)), var_0).b.x, true, !(!arg_0.b.x || false)), -select(u_input.a.x, i32(-1i) * -1089i, false), -45195i);
    return arg_1;
}

fn func_7(arg_0: f32, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: f32) -> StorageBuffer {
    global2 = ~global1[_wgslsmith_index_u32(func_6(Struct_2(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.x, arg_1.a.x)), func_1(vec2<f32>(arg_0, arg_1.a.x), 70338u, 2147483647i, arg_1).a.b, 1i << (arg_1.b % 32u), Struct_1(arg_1.a, arg_1.b)).a, vec3<bool>(false, true, true), -6359i, global2.x), func_4(_wgslsmith_sub_vec4_i32(global1[_wgslsmith_index_u32(arg_1.b | 0u, 11u)], vec4<i32>(global2.x, u_input.c, global2.x, u_input.b) & global1[_wgslsmith_index_u32(arg_2.x, 11u)]), vec2<u32>(min(4294967295u, arg_2.x), arg_2.x), 10725u << (arg_1.b % 32u)).a, ~_wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(67529u, 11u)] << (vec4<u32>(arg_2.x, arg_1.b, 1u, 85117u) % vec4<u32>(32u)), -vec4<i32>(29507i, 1i, global2.x, 1i))).b, 11u)];
    var var_0 = -2147483647i;
    var var_1 = arg_1.a;
    let var_2 = ~firstTrailingBit(reverseBits(u_input.a.x));
    let var_3 = func_4(global1[_wgslsmith_index_u32(~func_1(arg_1.a, ~(~11356u), ~51817i, Struct_1(arg_1.a, arg_2.x)).a.b, 11u)], vec2<u32>(arg_1.b, 54646u) ^ func_3().yy, ~(_wgslsmith_clamp_u32(arg_2.x, _wgslsmith_mod_u32(arg_1.b, 42159u), ~arg_2.x) >> (~(arg_2.x << (arg_2.x % 32u)) % 32u)));
    return StorageBuffer(vec2<u32>(1u, ~func_2(_wgslsmith_f_op_f32(var_1.x * var_3.a.a.x), func_5(Struct_2(var_3.a, vec3<bool>(false, false, true), u_input.b, 2147483647i), global2.wx, vec4<f32>(814f, -177f, var_3.a.a.x, arg_0)), false != var_3.b.x).x), vec4<f32>(-1211f, -1202f, 2083f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-609f)) * arg_1.a.x)), var_3.a.b ^ 26191u, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_7(_wgslsmith_f_op_f32(-427f - 259f), func_6(func_5(func_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, -500f), vec2<f32>(-1493f, 1309f), vec2<bool>(false, false))), _wgslsmith_mult_u32(4294967295u, 1u), 1i, Struct_1(vec2<f32>(-158f, 223f), 4305u)), select(global2.wx, vec2<i32>(global2.x, 1i), true) & vec2<i32>(-1i, -2147483647i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-424f, -1000f, 1683f, 166f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, 264f, -1335f, -663f))))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), 1u), i32(-1i) * -2147483647i), _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(~firstTrailingBit(vec2<u32>(67550u, 4294967295u)), ~(~vec2<u32>(4427u, 31326u))), vec2<u32>(func_3().x, ~_wgslsmith_sub_u32(56742u, 1u))), 229f);
}

