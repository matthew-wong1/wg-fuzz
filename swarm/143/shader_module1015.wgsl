struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<bool>,
    d: vec3<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32;

var<private> global2: array<bool, 23> = array<bool, 23>(false, true, false, false, true, true, false, true, true, true, false, false, true, true, true, true, true, true, true, false, true, false, false);

var<private> global3: vec3<bool>;

var<private> global4: u32 = 0u;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: vec4<bool>, arg_1: f32, arg_2: bool) -> Struct_1 {
    global1 = -1i;
    var var_0 = Struct_2(firstTrailingBit(_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a), -(vec4<i32>(-2147483647i, u_input.a, u_input.a, 0i) | vec4<i32>(10335i, -2147483647i, -8511i, -5581i)))), Struct_1(global0.a, _wgslsmith_clamp_vec3_u32(reverseBits(~global0.b), global0.b, global0.b), abs(global0.c)), select(vec4<bool>(any(arg_0), false, any(select(vec2<bool>(arg_2, global3.x), arg_0.zy, arg_2)), true), !arg_0, select(vec4<bool>(false, false && global2[_wgslsmith_index_u32(global0.b.x, 23u)], all(arg_0.yyz), global3.x), !select(arg_0, vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(global0.c.x, 23u)]), false), true)), _wgslsmith_f_op_vec3_f32(exp2(global0.a)), arg_0);
    global1 = var_0.a.x >> (4294967295u % 32u);
    var var_1 = ~u_input.a;
    global2 = array<bool, 23>();
    return var_0.b;
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    let var_0 = arg_1;
    let var_1 = global3.x;
    var var_2 = all(!select(!vec3<bool>(global3.x, arg_2.e.x, false), vec3<bool>(global3.x, true, true), any(select(vec4<bool>(global2[_wgslsmith_index_u32(39998u, 23u)], true, false, true), vec4<bool>(false, arg_2.e.x, global3.x, global3.x), arg_2.e.x))));
    global0 = func_2(!(!vec4<bool>(true, global3.x || true, global3.x, false & global3.x)), _wgslsmith_f_op_f32(f32(-1f) * -396f), global3.x);
    var var_3 = select(global3.x, true, select(var_0.a.x >= 639f, true, true));
    return false;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<u32>) -> vec4<i32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -720f), _wgslsmith_div_f32(284f, arg_0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)))))), global0.a.x, 954f, _wgslsmith_f_op_f32(ceil(arg_1.d.x)));
    let var_1 = func_2(!(!vec4<bool>(func_3(6117u, arg_0.b, arg_0), all(arg_0.c), true, arg_1.a.x == -1i)), 1041f, arg_0.d.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.d.x * 1005f))) + _wgslsmith_f_op_f32(f32(-1f) * -633f))).a.x;
    let var_2 = arg_0.b.b;
    global2 = array<bool, 23>();
    let var_3 = -556f;
    return abs(~arg_0.a);
}

fn func_1(arg_0: f32) -> vec4<i32> {
    let var_0 = 34209i;
    global2 = array<bool, 23>();
    var var_1 = ~var_0;
    let var_2 = func_2(vec4<bool>(!(!(!global3.x)), all(vec4<bool>(true, true, true, any(vec3<bool>(true, global3.x, true)))), global3.x, true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1216f, -1405f) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(arg_0))))))), all(vec4<bool>(any(vec3<bool>(global2[_wgslsmith_index_u32(global0.c.x, 23u)], false, global2[_wgslsmith_index_u32(1808u, 23u)])) | (var_0 == var_0), all(vec4<bool>(global3.x, true, true, global2[_wgslsmith_index_u32(u_input.b, 23u)])), global0.c.x == firstTrailingBit(1u), any(global3.xx))));
    var var_3 = var_2;
    return func_4(Struct_2(min(select(vec4<i32>(-20248i, u_input.a, var_0, 28929i), vec4<i32>(var_0, u_input.a, u_input.a, var_0), true) & (vec4<i32>(5998i, 1i, var_0, var_0) >> (vec4<u32>(var_2.c.x, var_2.c.x, var_3.b.x, 0u) % vec4<u32>(32u))), vec4<i32>(16085i, -1i >> (0u % 32u), min(-2147483647i, 20059i), var_0)), var_2, select(!(!vec4<bool>(false, global2[_wgslsmith_index_u32(1391u, 23u)], global3.x, global3.x)), vec4<bool>(!global2[_wgslsmith_index_u32(u_input.b, 23u)], any(vec2<bool>(global2[_wgslsmith_index_u32(51309u, 23u)], global3.x)), true, func_3(global0.c.x, var_2, Struct_2(vec4<i32>(0i, var_0, 1i, var_0), Struct_1(vec3<f32>(var_3.a.x, -738f, var_3.a.x), var_2.b, var_3.c), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.b, 23u)], global3.x, global3.x), vec3<f32>(var_2.a.x, global0.a.x, -1188f), vec4<bool>(global3.x, global2[_wgslsmith_index_u32(var_3.b.x, 23u)], global2[_wgslsmith_index_u32(global0.b.x, 23u)], global2[_wgslsmith_index_u32(27065u, 23u)])))), any(select(vec4<bool>(false, false, true, global2[_wgslsmith_index_u32(4294967295u, 23u)]), vec4<bool>(global2[_wgslsmith_index_u32(5553u, 23u)], global2[_wgslsmith_index_u32(11577u, 23u)], true, global2[_wgslsmith_index_u32(4294967295u, 23u)]), false))), vec3<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(select(-548f, _wgslsmith_f_op_f32(abs(-1340f)), true))), vec4<bool>(true, false, false, true)), Struct_2(vec4<i32>(_wgslsmith_add_i32(abs(var_0), -60233i), countOneBits(countOneBits(2147483647i)), ~_wgslsmith_clamp_i32(1i, 2147483647i, var_0), u_input.a), Struct_1(global0.a, _wgslsmith_sub_vec3_u32(~var_3.b, vec3<u32>(var_3.b.x, 0u, 29906u)), ~var_3.c), select(vec4<bool>(true, any(vec3<bool>(global3.x, false, true)), global3.x, u_input.b >= global0.c.x), select(vec4<bool>(true, global2[_wgslsmith_index_u32(var_3.c.x, 23u)], global2[_wgslsmith_index_u32(var_2.c.x, 23u)], global2[_wgslsmith_index_u32(1u, 23u)]), vec4<bool>(global3.x, true, global2[_wgslsmith_index_u32(4294967295u, 23u)], global3.x), !vec4<bool>(global3.x, false, true, false)), true), vec3<f32>(var_2.a.x, _wgslsmith_f_op_f32(trunc(1000f)), global0.a.x), select(!(!vec4<bool>(global2[_wgslsmith_index_u32(global0.c.x, 23u)], true, global3.x, global3.x)), !vec4<bool>(false, global3.x, true, global3.x), vec4<bool>(global2[_wgslsmith_index_u32(global0.b.x, 23u)], false, true, true))), _wgslsmith_add_vec3_u32((~var_2.b & vec3<u32>(1u, 1u, 61709u)) >> (var_3.b % vec3<u32>(32u)), reverseBits(vec3<u32>(1u, 4294967295u, 4294967295u))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<u32>) -> Struct_2 {
    var var_0 = select(!arg_1.e.wyy, !select(vec3<bool>(!global3.x, arg_0.a.x >= -1097f, !global2[_wgslsmith_index_u32(arg_2.x, 23u)]), arg_1.e.wyy, select(select(arg_1.c.yzw, vec3<bool>(global3.x, arg_1.e.x, arg_1.c.x), global3.x), !vec3<bool>(arg_1.c.x, true, global3.x), global0.b.x == arg_2.x)), vec3<bool>(global2[_wgslsmith_index_u32(firstTrailingBit(global0.b.x), 23u)] & global3.x, true, true));
    var var_1 = arg_1;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) + 229f))), 411f)), _wgslsmith_f_op_f32(976f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1386f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.a.x)))))), var_1.b.a.x);
    global2 = array<bool, 23>();
    global0 = func_2(select(vec4<bool>(any(var_0.zy), global3.x, !any(vec3<bool>(false, false, var_1.c.x)), true), var_1.c, true), -2036f, any(select(select(vec3<bool>(true, global3.x, true), vec3<bool>(global2[_wgslsmith_index_u32(30710u, 23u)], false, global3.x), false), vec3<bool>(arg_1.c.x, false, false), all(var_1.e.wyx))) || var_0.x);
    return Struct_2(firstLeadingBit(firstTrailingBit(arg_1.a)), func_2(var_1.c, _wgslsmith_f_op_f32(select(1129f, _wgslsmith_div_f32(-836f, _wgslsmith_f_op_f32(arg_1.d.x * global0.a.x)), true)), false), select(select(vec4<bool>(true, false, any(vec3<bool>(var_0.x, false, true)), all(arg_1.c.yz)), var_1.c, var_1.c), !arg_1.e, select(!(!arg_1.c), !var_1.c, all(!vec3<bool>(true, var_0.x, true)))), _wgslsmith_f_op_vec3_f32(floor(arg_0.a)), !var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(10893u, 4294967295u, ~(~4294967295u), ~(~u_input.b)), select(vec4<u32>(global0.b.x & global0.b.x, _wgslsmith_mult_u32(27476u, 0u), u_input.b, min(global0.c.x, u_input.b)), ~vec4<u32>(u_input.b, global0.b.x, global0.b.x, 35761u) & _wgslsmith_add_vec4_u32(vec4<u32>(0u, global0.c.x, 39457u, 119572u), vec4<u32>(54861u, 6645u, 62834u, global0.b.x)), select(!vec4<bool>(global2[_wgslsmith_index_u32(38381u, 23u)], global2[_wgslsmith_index_u32(27709u, 23u)], global2[_wgslsmith_index_u32(u_input.b, 23u)], global3.x), select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 23u)], true, true, global3.x), vec4<bool>(false, true, true, false), false), vec4<bool>(global3.x, global3.x, global2[_wgslsmith_index_u32(1u, 23u)], false))) >> (~firstLeadingBit(reverseBits(vec4<u32>(global0.c.x, global0.b.x, 17097u, global0.c.x))) % vec4<u32>(32u)));
    let var_1 = func_5(Struct_1(global0.a, ~abs(global0.b), ~global0.b.zx), Struct_2(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1125f * -887f))), func_2(vec4<bool>(false, !global3.x, true, true), -676f, true | (1001i >= u_input.a)), !vec4<bool>(global2[_wgslsmith_index_u32(1u, 23u)], global2[_wgslsmith_index_u32(1u, 23u)], true, global2[_wgslsmith_index_u32(1u, 23u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(global0.a))), vec4<bool>(!any(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 23u)], false, global2[_wgslsmith_index_u32(global0.b.x, 23u)])), any(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 23u)], global2[_wgslsmith_index_u32(global0.c.x, 23u)], false, false)), 9916i == u_input.a, true)), vec4<u32>(u_input.b, 29087u | ~select(global0.c.x, 36542u, false), countOneBits(firstLeadingBit(1u)) >> (_wgslsmith_dot_vec4_u32(min(vec4<u32>(global0.c.x, 1u, u_input.b, global0.b.x), vec4<u32>(0u, u_input.b, global0.c.x, u_input.b)), select(vec4<u32>(1u, 84185u, 43492u, u_input.b), vec4<u32>(17733u, 4825u, 30402u, 4294967295u), vec4<bool>(global3.x, true, false, false))) % 32u), abs(56814u)));
    global3 = func_5(func_5(func_5(var_1.b, func_5(var_1.b, var_1, vec4<u32>(var_1.b.c.x, global0.b.x, 1u, 1u) << (vec4<u32>(u_input.b, u_input.b, var_1.b.b.x, 46582u) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 82715u, global0.c.x), vec4<u32>(u_input.b, 35637u, global0.b.x, global0.c.x)), vec4<u32>(80054u, var_1.b.c.x, 58064u, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(global0.b.x, global0.b.x, 43183u, u_input.b), vec4<u32>(4294967295u, u_input.b, 0u, 4294967295u)))).b, var_1, reverseBits(vec4<u32>(7071u, 18997u, 44464u, 17306u) << (abs(vec4<u32>(17870u, u_input.b, var_1.b.b.x, u_input.b)) % vec4<u32>(32u)))).b, var_1, vec4<u32>(~((22590u & u_input.b) | global0.b.x), u_input.b, 102687u >> (firstTrailingBit(firstLeadingBit(0u)) % 32u), _wgslsmith_mod_u32(u_input.b, ~35419u) << (u_input.b % 32u))).c.yzz;
    let var_2 = !global3.x;
    let var_3 = -10060i & u_input.a;
    var var_4 = _wgslsmith_mod_u32(41991u, _wgslsmith_dot_vec2_u32(firstLeadingBit(~var_1.b.b.xz), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(global0.c, global0.b.xx, global0.b.xy), var_1.b.b.yy) >> (abs(~vec2<u32>(var_1.b.b.x, global0.b.x)) % vec2<u32>(32u))));
    var var_5 = Struct_2(var_1.a, Struct_1(vec3<f32>(-1648f, 562f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.a.x))), global0.b, vec2<u32>(0u, global0.b.x)), var_1.e, var_1.d, !vec4<bool>(func_5(Struct_1(var_1.d, global0.b, vec2<u32>(0u, 7794u)), Struct_2(var_1.a, Struct_1(var_1.d, vec3<u32>(global0.b.x, u_input.b, 1u), var_1.b.b.yy), vec4<bool>(var_1.e.x, true, var_1.c.x, false), vec3<f32>(830f, var_1.b.a.x, -1229f), vec4<bool>(true, true, false, var_1.e.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.b.b.x, var_1.b.b.x, u_input.b, 0u), vec4<u32>(u_input.b, 0u, 84680u, 69222u))).e.x, true, true, !(!var_2)));
    let var_6 = _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(~firstTrailingBit(_wgslsmith_div_vec2_u32(var_1.b.c, vec2<u32>(0u, global0.b.x))), ~vec2<u32>(8545u, var_1.b.b.x)), ~global0.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(max(1u, ~var_1.b.b.x), 1u, 0u, ~1u), var_3 >> (_wgslsmith_sub_u32(~1u, global0.b.x) % 32u), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(u_input.b, var_6.x), global0.b.x, firstTrailingBit(var_1.b.c.x), global0.b.x ^ var_5.b.b.x), vec4<u32>(var_5.b.b.x, _wgslsmith_sub_u32(u_input.b, 0u), ~99597u, ~var_5.b.c.x)) & ~reverseBits(vec4<u32>(19159u, var_5.b.b.x, var_5.b.b.x, var_1.b.b.x)), _wgslsmith_mult_u32(var_5.b.b.x, ~28443u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-583f, 766f, var_5.b.a.x, -823f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.a.x, var_1.d.x, var_5.d.x, var_5.d.x))), !var_1.c))))));
}

