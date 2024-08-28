struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec4<u32>,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: Struct_3;

var<private> global2: vec4<u32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: vec3<bool>, arg_1: i32) -> Struct_1 {
    global2 = vec4<u32>(8149u, global1.c.x, 51584u, global1.c.x);
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-829f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -304f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(1518f, 443f) - _wgslsmith_f_op_f32(547f - 700f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(939f, -757f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1089f, -962f, global1.b.b.d)) - _wgslsmith_f_op_f32(max(178f, -207f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1140f) * -747f), -1128f)));
    var var_1 = arg_0.yz;
    let var_2 = firstLeadingBit(-global1.d.e);
    global2 = vec4<u32>(_wgslsmith_sub_u32(~_wgslsmith_div_u32(firstLeadingBit(9087u), _wgslsmith_sub_u32(global2.x, 8458u)), min(1u, ~(~u_input.a))), abs(u_input.a), ~reverseBits(20224u), _wgslsmith_mod_u32(4294967295u, _wgslsmith_div_u32(~global1.e.x, _wgslsmith_mult_u32(0u, 1u))) & 4294967295u);
    return Struct_1(reverseBits(abs(firstLeadingBit(vec2<i32>(-2147483647i, 1i)))) & _wgslsmith_sub_vec2_i32(~var_2.yx, _wgslsmith_mult_vec2_i32(var_2.yx, countOneBits(vec2<i32>(u_input.b, 7485i)))), ~min(_wgslsmith_add_u32(u_input.a, ~u_input.a), u_input.a), vec2<u32>(global1.c.x, global1.c.x & _wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, 58347u), vec2<u32>(global1.d.b, 1u))), false, vec3<i32>(-1i) * -(~var_2));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_3 {
    let var_0 = global1.d;
    global0 = _wgslsmith_mod_i32(countOneBits(global1.d.e.x), -2147483647i);
    global2 = _wgslsmith_mod_vec4_u32(~vec4<u32>(var_0.b, ~42317u, 20492u, arg_1.x) ^ global1.c, vec4<u32>(u_input.a ^ ~u_input.a, select(~arg_0, _wgslsmith_div_u32(arg_0, 17586u), !global1.a), _wgslsmith_div_u32(~12470u, 1u), max(_wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(global2.x, 4294967295u, 77881u, arg_0)), global1.e.x)) >> (~(~(~arg_1)) % vec4<u32>(32u)));
    global2 = global1.c;
    let var_1 = vec4<i32>(-2147483647i, abs(2147483647i), -abs(_wgslsmith_mult_i32(abs(21442i), -21939i)), countOneBits(u_input.b));
    return Struct_3(!arg_2.d, Struct_2(0u, func_2(!(!vec3<bool>(false, var_0.d, true)), arg_2.e.x), var_0.e), countOneBits(firstLeadingBit(select(~vec4<u32>(4294967295u, global2.x, var_0.c.x, u_input.a), vec4<u32>(arg_2.c.x, u_input.a, 34059u, 1u) >> (vec4<u32>(arg_0, 0u, arg_2.c.x, 4294967295u) % vec4<u32>(32u)), !vec4<bool>(false, true, false, var_0.d)))), arg_2, global1.e);
}

fn func_1(arg_0: bool) -> Struct_1 {
    global2 = global1.c;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -704f))))));
    var var_1 = 48956u;
    let var_2 = Struct_3(all(!vec4<bool>(all(vec4<bool>(global1.d.d, false, global1.b.b.d, global1.d.d)), global1.d.d, global1.d.d != arg_0, global1.b.b.d)), Struct_2(global2.x, Struct_1(countOneBits(global1.b.b.a | vec2<i32>(8159i, -13692i)), ~(~1u), vec2<u32>(global1.d.b, global2.x) >> (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, global2.x), vec2<u32>(global2.x, global1.c.x)) % vec2<u32>(32u)), true, firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, global1.d.e.x, 1i), global1.b.b.e))), vec3<i32>(1i, _wgslsmith_sub_i32(-u_input.b, abs(u_input.b)), countOneBits(u_input.b))), _wgslsmith_div_vec4_u32(firstTrailingBit(global1.c), global1.c), global1.d, select(vec3<u32>(1u, global2.x, 14523u), vec3<u32>(global2.x, global1.d.b, _wgslsmith_add_u32(65237u, 68983u >> (1u % 32u))), !vec3<bool>(true, false && global1.a, true)));
    var var_3 = func_3(~_wgslsmith_sub_u32(~global2.x, var_2.b.a), global1.c | _wgslsmith_clamp_vec4_u32(var_2.c, var_2.c, abs(global1.c)), func_2(vec3<bool>(any(vec4<bool>(true, true, false, false)), any(!vec4<bool>(false, arg_0, var_2.a, arg_0)), true | global1.a), ~_wgslsmith_sub_i32(~var_2.b.b.e.x, ~(-3974i))));
    return func_3(global1.b.a << ((countOneBits(global1.e.x) >> (_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(var_2.e, var_2.e), ~global1.e) % 32u)) % 32u), vec4<u32>(1u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(29918u, 0u), vec2<u32>(39195u, global1.c.x)), _wgslsmith_mod_u32(func_3(var_2.e.x, global1.c, Struct_1(global1.d.a, 39241u, vec2<u32>(0u, 43490u), var_3.d.d, vec3<i32>(-2147483647i, var_3.b.b.e.x, -1i))).e.x, global2.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, _wgslsmith_dot_vec2_u32(var_3.b.b.c, global1.c.wz), ~1u), vec3<u32>(~u_input.a, abs(u_input.a), var_2.e.x)), var_2.b.b.b), var_2.d).d;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3) -> Struct_2 {
    let var_0 = vec4<bool>(false, all(select(select(select(vec3<bool>(true, false, false), vec3<bool>(arg_1, true, arg_2.d.d), vec3<bool>(global1.a, false, true)), !vec3<bool>(global1.d.d, arg_1, true), false), vec3<bool>(true, true, true), !(arg_1 == arg_2.d.d))), arg_1, arg_2.a);
    global2 = ~global1.c;
    global1 = arg_2;
    global1 = Struct_3(global1.b.b.d, func_3(~(~max(0u, 35998u)), _wgslsmith_div_vec4_u32(global1.c, arg_2.c), func_2(!var_0.zwx, func_1(1i < arg_0.a.x).a.x)).b, vec4<u32>(~(~_wgslsmith_dot_vec2_u32(global2.ww, global2.ww)), 4294967295u, ~u_input.a, arg_2.b.a), func_2(var_0.xyx, -12734i), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, ~_wgslsmith_dot_vec4_u32(vec4<u32>(71029u, 45701u, 1u, global2.x), arg_2.c), ~global1.b.b.c.x), global1.e));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-203f - _wgslsmith_f_op_f32(f32(-1f) * -2891f)) - -506f);
    return arg_2.b;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: bool) -> Struct_3 {
    global1 = Struct_3(global1.d.d, func_4(func_1(true), all(!vec2<bool>(arg_1.b.d, global1.b.b.d)) != true, Struct_3(!arg_1.b.d, arg_1, vec4<u32>(0u, 4294967295u, 77501u, u_input.a), arg_1.b, _wgslsmith_add_vec3_u32(vec3<u32>(4592u, 4294967295u, 38224u), global2.xyz))), global1.c, Struct_1(abs(global1.d.e.xz), ~3663u, ~global1.e.yz, all(vec2<bool>(arg_1.b.c.x <= 1u, !global1.d.d)), -vec3<i32>(u_input.b, _wgslsmith_sub_i32(global1.d.e.x, 25824i), -global1.d.a.x)), global1.e);
    var var_0 = global1.d.e;
    global2 = vec4<u32>(_wgslsmith_add_u32(u_input.a, ~0u), reverseBits(4294967295u), ~u_input.a, 0u | _wgslsmith_div_u32((u_input.a >> (3199u % 32u)) ^ 4294967295u, ~1u));
    var var_1 = func_4(func_2(vec3<bool>(true, true, true), _wgslsmith_clamp_i32(~(-2147483647i & var_0.x), arg_1.b.e.x, 0i)), true, func_3((0u ^ u_input.a) ^ _wgslsmith_mod_u32(func_3(61407u, global1.c, arg_1.b).e.x, 58216u), global1.c, Struct_1(func_1(arg_1.b.d).a, global2.x, reverseBits(select(global1.e.yx, vec2<u32>(global2.x, arg_1.a), vec2<bool>(arg_1.b.d, arg_1.b.d))), true, firstTrailingBit(vec3<i32>(-71097i, u_input.b, 38023i))))).b.c;
    var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(global2.x, global2.x), vec2<u32>(~arg_1.a, ~func_3(arg_1.a, global1.c, arg_1.b).e.x) | global1.c.xy);
    return func_3(~_wgslsmith_dot_vec3_u32(vec3<u32>(~var_1.x, func_3(28424u, vec4<u32>(1u, 38645u, 0u, 81235u), Struct_1(arg_1.b.e.zx, global2.x, vec2<u32>(global1.d.c.x, 18195u), global1.b.b.d, vec3<i32>(-1i, arg_1.c.x, 55513i))).b.b.b, arg_1.a), _wgslsmith_add_vec3_u32(select(global1.e, vec3<u32>(55017u, var_1.x, arg_1.a), vec3<bool>(arg_2, false, false)), abs(vec3<u32>(var_1.x, 1u, 26478u)))), _wgslsmith_mod_vec4_u32(select(vec4<u32>(var_1.x, 7783u, global1.e.x, 0u), vec4<u32>(1u, global2.x, var_1.x, global1.c.x), true), vec4<u32>(_wgslsmith_mult_u32(u_input.a, u_input.a), _wgslsmith_add_u32(var_1.x, arg_1.a), ~global1.e.x, 0u)) ^ ~vec4<u32>(firstTrailingBit(1u), 1u, _wgslsmith_add_u32(44707u, 1u), 9175u), func_4(Struct_1(global1.d.e.xz ^ (vec2<i32>(var_0.x, 1i) << (global2.zw % vec2<u32>(32u))), max(u_input.a, ~1u), vec2<u32>(~91897u, ~1u), !arg_1.b.d | arg_1.b.d, arg_1.b.e), all(!vec3<bool>(true, arg_2, global1.b.b.d)), func_3(arg_1.a, vec4<u32>(_wgslsmith_div_u32(arg_1.a, arg_1.b.c.x), 27641u, ~57865u, 1u), Struct_1(arg_1.c.xy ^ global1.d.e.yx, ~0u, global1.c.ww, arg_2, vec3<i32>(var_0.x, 30010i, 1843i)))).b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec3_u32(global2.xwy, ~_wgslsmith_add_vec3_u32(~vec3<u32>(global2.x, u_input.a, global2.x), vec3<u32>(global1.b.b.c.x, 4294967295u, 33027u)) & vec3<u32>(select(global1.c.x ^ 1u, global2.x | 70496u, !global1.a), global1.e.x, _wgslsmith_dot_vec3_u32(global1.e, global1.c.xxx) & ~121322u));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-981f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -437f) * 1f)));
    global1 = func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), -2003f)), func_4(func_1(_wgslsmith_f_op_f32(f32(-1f) * -998f) == _wgslsmith_f_op_f32(-710f + var_1.x)), !global1.a, func_3(var_0.x, ~(~global1.c), Struct_1(global1.d.a, _wgslsmith_mod_u32(var_0.x, 40155u), ~global1.d.c, all(vec4<bool>(false, global1.d.d, global1.a, true)), ~vec3<i32>(global1.d.a.x, 594i, -39224i)))), !(u_input.b != -(i32(-1i) * -11647i)));
    var var_2 = !(any(vec2<bool>(global1.a, global1.d.d)) || global1.d.d) && ((countOneBits(u_input.b) | ((global1.d.e.x << (1u % 32u)) | 1i)) >= -22973i);
    global1 = Struct_3(true, global1.b, ~vec4<u32>(28121u, global2.x, 1u, 4294967295u), Struct_1(_wgslsmith_mod_vec2_i32(func_5(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.x, var_1.x))), global1.b, true).b.c.yy, global1.b.b.a), func_3(~min(var_0.x, 0u), ~_wgslsmith_add_vec4_u32(vec4<u32>(1u, global1.d.c.x, 0u, u_input.a), global1.c), global1.b.b).d.b, global1.b.b.c, false, firstLeadingBit(vec3<i32>(_wgslsmith_clamp_i32(global1.b.b.a.x, global1.d.a.x, -12167i), 2147483647i, 2147483647i))), select(vec3<u32>(~func_5(var_1, Struct_2(u_input.a, Struct_1(global1.b.c.yy, 62138u, vec2<u32>(global1.d.b, global1.c.x), global1.d.d, vec3<i32>(global1.b.c.x, 1i, u_input.b)), vec3<i32>(0i, u_input.b, global1.b.c.x)), global1.a).b.b.c.x, global1.d.c.x, ~(~var_0.x)), vec3<u32>(global1.c.x, var_0.x, firstLeadingBit(~50624u)), global1.d.d));
    let var_3 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(633f * _wgslsmith_f_op_f32(ceil(-1244f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_1.x, -556f, false)), _wgslsmith_f_op_f32(var_1.x * var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * var_1.x)))));
    var var_4 = -(~select(vec4<i32>(global1.b.c.x, -19318i, -1i, -2147483647i) ^ vec4<i32>(global1.d.a.x, u_input.b, -4286i, 41030i), countOneBits(vec4<i32>(-1i, -31783i, 1i, global1.d.a.x)), global1.a)) << (_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(global1.c, vec4<u32>(firstLeadingBit(19118u), global1.b.b.b, var_0.x ^ 6060u, u_input.a)), reverseBits(~(~global1.c))) % vec4<u32>(32u));
    let var_5 = select(select(vec2<bool>(global1.d.d, global1.b.b.d), !vec2<bool>(!global1.d.d, !global1.b.b.d), !select(any(vec3<bool>(global1.a, false, false)), true, any(vec2<bool>(global1.b.b.d, false)))), select(!select(vec2<bool>(true, true), !vec2<bool>(global1.b.b.d, global1.d.d), select(global1.d.d, true, global1.a)), !vec2<bool>(select(true, true, global1.d.d), true), select(vec2<bool>(func_1(global1.b.b.d).d, global1.d.d), select(!vec2<bool>(global1.d.d, global1.b.b.d), !vec2<bool>(global1.a, global1.a), vec2<bool>(global1.b.b.d, false)), 0i <= func_1(global1.a).a.x)), !(!(!(!vec2<bool>(true, global1.b.b.d)))));
    var var_6 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3 * _wgslsmith_f_op_vec3_f32(-var_3)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, var_1.x, var_3.x) - vec3<f32>(1000f, var_1.x, -971f))))));
}

