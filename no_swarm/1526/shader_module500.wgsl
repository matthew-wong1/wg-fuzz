struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec4<bool>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(53224u, 90191u, 79111u), vec3<u32>(4294967295u, 25444u, 4294967295u), vec3<u32>(0u, 0u, 0u), vec3<u32>(3613u, 1u, 1u), vec3<u32>(54259u, 0u, 0u), vec3<u32>(76578u, 1u, 40533u), vec3<u32>(8718u, 26481u, 58334u), vec3<u32>(57948u, 4294967295u, 8220u), vec3<u32>(55255u, 13064u, 0u), vec3<u32>(0u, 28753u, 57567u), vec3<u32>(4294967295u, 1u, 50319u), vec3<u32>(41872u, 18597u, 35955u), vec3<u32>(29531u, 1u, 4294967295u), vec3<u32>(0u, 4294967295u, 25182u), vec3<u32>(58734u, 44632u, 0u), vec3<u32>(90635u, 133146u, 33929u), vec3<u32>(0u, 58337u, 4294967295u), vec3<u32>(40242u, 16542u, 47859u), vec3<u32>(0u, 4294967295u, 29525u), vec3<u32>(8598u, 30949u, 4294967295u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(1697u, 1u, 590u), vec3<u32>(94217u, 33212u, 0u), vec3<u32>(0u, 102762u, 87078u), vec3<u32>(22295u, 17445u, 0u), vec3<u32>(1u, 30544u, 47762u), vec3<u32>(24764u, 128054u, 4294967295u), vec3<u32>(23082u, 0u, 38077u), vec3<u32>(0u, 0u, 24151u));

var<private> global1: vec2<f32>;

var<private> global2: Struct_2 = Struct_2(vec3<f32>(560f, -784f, 1224f));

var<private> global3: array<Struct_5, 10>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_4, arg_3: vec2<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b.a.x, global2.a.x)));
    global0 = array<vec3<u32>, 29>();
    var var_1 = arg_2.b.c;
    var var_2 = Struct_4(vec4<u32>(~(_wgslsmith_dot_vec2_u32(arg_0.zw, vec2<u32>(1u, 1u)) & 1u), _wgslsmith_sub_u32(arg_2.b.d.x, abs(1u ^ arg_0.x)), _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a, _wgslsmith_add_u32(u_input.a, u_input.a)), 4294967295u), ~37497u), arg_2.b, abs(arg_2.b.d.x), _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1101f))))) < -233f);
    global0 = array<vec3<u32>, 29>();
    return all(select(!select(vec4<bool>(true, arg_2.b.c.x, false, arg_3.x), select(arg_2.b.c, arg_2.b.c, true), arg_3.x), !var_2.b.c, _wgslsmith_f_op_f32(arg_2.b.b.x - _wgslsmith_f_op_f32(ceil(1300f))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - -435f) + _wgslsmith_f_op_f32(f32(-1f) * -914f))));
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: bool, arg_3: vec2<i32>) -> vec4<bool> {
    var var_0 = Struct_2(arg_1.b.b.xxz);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1722f - var_0.a.x) + global1.x), _wgslsmith_f_op_f32(-228f - 1670f)))), 564f, _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-663f * -161f), -331f, _wgslsmith_f_op_f32(-var_1.x)))));
    var_0 = Struct_2(var_1);
    global2 = Struct_2(_wgslsmith_f_op_vec3_f32(select(arg_1.b.b.xxy, arg_1.b.b.zxz, arg_1.b.c.zxx)));
    return vec4<bool>(arg_1.b.c.x, false & (any(!arg_1.b.c.wx) & (select(2147483647i, -2147483647i, false) == 0i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(global1.x))))) <= global2.a.x, all(vec2<bool>(true, !select(arg_2, false, arg_2))));
}

fn func_2() -> Struct_3 {
    let var_0 = !func_4(-304f, Struct_4(vec4<u32>(~u_input.a, u_input.a & 0u, _wgslsmith_sub_u32(u_input.a, u_input.a), u_input.a), Struct_1(_wgslsmith_f_op_vec2_f32(global2.a.zx - vec2<f32>(global1.x, -1715f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.a.x, global1.x, -919f, global1.x))), vec4<bool>(true, true, true, true), vec2<u32>(122742u, 41804u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))), u_input.a, !func_3(vec4<u32>(2283u, u_input.a, 13490u, 1u), u_input.a, Struct_4(vec4<u32>(1u, 0u, u_input.a, 0u), Struct_1(global2.a.zx, vec4<f32>(global1.x, global1.x, global2.a.x, -163f), vec4<bool>(true, false, false, true), vec2<u32>(5474u, u_input.a)), u_input.a, false), vec2<bool>(true, true))), true, -_wgslsmith_add_vec2_i32(abs(u_input.c.yy), vec2<i32>(u_input.b, u_input.b)));
    global1 = vec2<f32>(698f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.a.x - _wgslsmith_f_op_f32(select(-175f, _wgslsmith_f_op_f32(f32(-1f) * -833f), !var_0.x))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1910f, -2025f, global1.x)), vec4<f32>(global2.a.x, 362f, 1000f, 806f)))))));
    let var_2 = var_0.x;
    global0 = array<vec3<u32>, 29>();
    return Struct_3(abs(~(~global0[_wgslsmith_index_u32(u_input.a, 29u)])) ^ (global0[_wgslsmith_index_u32(~(~17582u), 29u)] | global0[_wgslsmith_index_u32(1u, 29u)]), !vec3<bool>(!var_2, !var_2, !var_0.x || all(vec4<bool>(var_2, var_0.x, false, false))), select(var_0, !select(var_0, select(vec4<bool>(true, var_2, false, false), vec4<bool>(var_2, var_2, true, var_2), var_0), !var_2), vec4<bool>(true, !all(vec4<bool>(true, var_2, var_2, var_2)), true, all(vec2<bool>(true, var_0.x)))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.x, 259f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-730f, global1.x) - vec2<f32>(-209f, global2.a.x)), all(var_0.xzy))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1251f, 828f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-780f, var_1.x)))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1754f, var_1.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1186f), _wgslsmith_f_op_f32(exp2(global1.x)))), -1887f, var_1.x), vec4<bool>(true, true, var_0.x, true), vec2<u32>(1u, firstTrailingBit(~60217u))));
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: i32) -> vec4<u32> {
    let var_0 = func_2();
    global3 = array<Struct_5, 10>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) * 1101f), func_2().d.a.x)))));
    let var_2 = ~(firstTrailingBit(var_0.a.x & var_0.a.x) | 13651u);
    global3 = array<Struct_5, 10>();
    return vec4<u32>(~firstLeadingBit(7268u), ~(~(~_wgslsmith_mult_u32(var_2, u_input.a))), ~0u, ~u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec2_u32(abs(countOneBits(vec2<u32>(~24631u, 4294967295u ^ u_input.a))), vec2<u32>(0u, 13212u));
    let var_1 = Struct_4(_wgslsmith_add_vec4_u32(~vec4<u32>(46343u, 1u, 4294967295u, var_0.x) & (vec4<u32>(u_input.a, 24823u, 333u, 4294967295u) << (vec4<u32>(u_input.a, u_input.a, u_input.a, var_0.x) % vec4<u32>(32u))), vec4<u32>(var_0.x >> (u_input.a % 32u), ~u_input.a, var_0.x, 0u)) >> (~(~func_1(u_input.b, vec2<f32>(global1.x, -1001f), u_input.b)) % vec4<u32>(32u)), Struct_1(_wgslsmith_f_op_vec2_f32(-global2.a.xz), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, 251f, global2.a.x, 1000f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-391f, global2.a.x, 472f, global2.a.x), vec4<f32>(global1.x, -1006f, global1.x, global2.a.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1322f, -963f, global2.a.x, -171f) * vec4<f32>(global2.a.x, global1.x, 759f, global2.a.x)))), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), Struct_4(max(vec4<u32>(u_input.a, var_0.x, var_0.x, u_input.a), vec4<u32>(0u, u_input.a, u_input.a, 82281u)), Struct_1(vec2<f32>(global2.a.x, 1000f), vec4<f32>(605f, global1.x, global2.a.x, -302f), vec4<bool>(false, true, true, true), var_0), ~988u, true), var_0.x != var_0.x, u_input.c.yw), vec2<u32>(_wgslsmith_sub_u32(var_0.x, 1u), _wgslsmith_mod_u32(~0u, select(61158u, u_input.a, false)))), 1u, false);
    var var_2 = vec2<i32>(firstLeadingBit(u_input.b), ~_wgslsmith_clamp_i32(u_input.b, (u_input.b >> (var_1.b.d.x % 32u)) ^ -1i, -15391i));
    let var_3 = ~(~(~1u)) ^ func_1(abs(-40520i), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global1.x, -361f), var_1.b.b.x) + global2.a.xz), _wgslsmith_div_i32(~(-21490i), u_input.b)).x;
    let var_4 = func_2();
    var var_5 = Struct_3(var_4.a, !vec3<bool>(u_input.a <= abs(var_1.a.x), true | var_1.b.c.x, true), var_1.b.c, Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.d.b.x, global2.a.x) * var_4.d.b.xz)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global2.a.zz - var_4.d.b.xy)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.d.b.x, -1076f, 1286f, 1000f) * var_4.d.b), vec4<f32>(1000f, global2.a.x, 1000f, global1.x)))), var_1.b.c, abs(vec2<u32>(var_1.c, var_1.c) << (var_4.d.d % vec2<u32>(32u)))));
    var var_6 = Struct_4(~_wgslsmith_div_vec4_u32(~max(var_1.a, var_1.a), ~vec4<u32>(var_1.b.d.x, 1u, 1u, 41372u)), func_2().d, ~abs(~(~28772u)), !(2147483647i >= -max(-38600i, u_input.c.x)));
    var_6 = var_1;
    let var_7 = select(vec2<i32>(var_2.x, -1i), max(vec2<i32>(1i, 1i), vec2<i32>(_wgslsmith_sub_i32(0i, u_input.b), u_input.c.x)), !var_4.b.x) << (_wgslsmith_sub_vec2_u32(min(~var_4.a.zy, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, var_6.b.d.x), countOneBits(vec2<u32>(0u, var_1.b.d.x)))), var_4.d.d) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1429f), -859f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1000f)))), 108f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_5.d.b) * _wgslsmith_f_op_vec4_f32(var_1.b.b + var_1.b.b))));
}

