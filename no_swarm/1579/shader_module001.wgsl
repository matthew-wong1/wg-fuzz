struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_3;

var<private> global2: array<vec2<u32>, 16>;

var<private> global3: array<u32, 29>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec4<bool>) -> bool {
    let var_0 = vec3<u32>(global0.a.x, 26680u, _wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(~(global0.a.x ^ 1u), 29u)] | _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(4463u, 29u)], _wgslsmith_div_u32(4294967295u, global0.a.x)), arg_0.b, firstLeadingBit(4294967295u)));
    global1 = Struct_3(global1.a);
    var var_1 = !select(!(!select(global1.a, arg_2, global1.a)), vec4<bool>(!arg_2.x, true, _wgslsmith_f_op_f32(sign(1037f)) < _wgslsmith_f_op_f32(select(-996f, -1084f, arg_2.x)), arg_2.x), select(all(vec4<bool>(false, arg_2.x, true, arg_2.x)), !(2147483647i >= arg_0.d.x), false));
    let var_2 = select(-51301i, arg_1, !(u_input.b.x != arg_0.c.x)) >> (4294967295u % 32u);
    var var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2198f, -1610f, arg_0.a.x, arg_0.a.x))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, arg_0.a.x, -739f, arg_0.a.x))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e.x, arg_0.e.x, -744f, -1878f) + vec4<f32>(arg_0.e.x, arg_0.a.x, arg_0.e.x, arg_0.e.x))))))));
    return arg_2.x;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec4<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-778f, 486f, 1000f)) + vec3<f32>(-157f, -1000f, 1337f)) - vec3<f32>(_wgslsmith_f_op_f32(abs(-974f)), _wgslsmith_f_op_f32(f32(-1f) * -999f), _wgslsmith_f_op_f32(1000f - 239f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(489f, 972f, 1079f))), vec3<f32>(-132f, -1634f, 916f), false | global1.a.x)) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -681f), _wgslsmith_f_op_f32(step(-1000f, -160f)), -1618f)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-810f, _wgslsmith_f_op_f32(step(-271f, 1000f)), -397f)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-313f, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(444f)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x), 816f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2241f)) * _wgslsmith_f_op_f32(var_0.x * -319f)))), ~max(~1u, ~48809u) << (arg_0.a.x % 32u), u_input.d, vec3<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(arg_2.x, 0i, 28237i) << (_wgslsmith_mod_vec3_u32(vec3<u32>(1u, arg_0.a.x, global0.a.x), vec3<u32>(arg_0.a.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(24937u, 29u)], 29u)], global0.a.x)) % vec3<u32>(32u)), -(vec3<i32>(-2147483647i, arg_2.x, u_input.c) << (vec3<u32>(1u, arg_0.a.x, 1u) % vec3<u32>(32u)))), _wgslsmith_div_i32(_wgslsmith_sub_i32(firstLeadingBit(0i), _wgslsmith_div_i32(u_input.d.x, arg_2.x)), _wgslsmith_sub_i32(0i, arg_2.x)), -2147483647i), var_0.yz);
    var var_2 = Struct_3(arg_1);
    return var_0.x;
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: f32, arg_3: f32) -> vec2<u32> {
    let var_0 = Struct_3(select(vec4<bool>(all(!global1.a), any(global1.a), true, global1.a.x), global1.a, select(vec4<bool>(global1.a.x, false, global1.a.x, true), !select(vec4<bool>(true, global1.a.x, false, true), vec4<bool>(global1.a.x, global1.a.x, global1.a.x, true), true), !global1.a.x & any(global1.a.xwz))));
    let var_1 = vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, firstTrailingBit(54601u)), max(vec2<u32>(69601u, 1u), ~global2[_wgslsmith_index_u32(14906u, 16u)])), ~global3[_wgslsmith_index_u32(u_input.a, 29u)]) & global2[_wgslsmith_index_u32(0u, 16u)];
    global2 = array<vec2<u32>, 16>();
    var var_2 = _wgslsmith_mult_vec4_u32(~(~vec4<u32>(0u, 0u, 304u, var_1.x) >> (countOneBits(~vec4<u32>(0u, arg_0, 1780u, var_1.x)) % vec4<u32>(32u))), vec4<u32>(~0u, var_1.x, ~countOneBits(max(110468u, global0.a.x)), 29267u << (arg_0 % 32u)));
    var var_3 = all(vec3<bool>(false, 4294967295u < global0.a.x, select(false, any(vec2<bool>(var_0.a.x, false)) && var_0.a.x, select(false, true, false))));
    return abs(global2[_wgslsmith_index_u32(u_input.e, 16u)]);
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    global0 = Struct_2(func_5(88507u, -7714i, _wgslsmith_div_f32(332f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1724f * -2617f), -1798f))), _wgslsmith_f_op_f32(func_4(Struct_2(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(55884u, 29u)], 29u)], global3[_wgslsmith_index_u32(64538u, 29u)])), vec4<bool>(false, func_3(Struct_1(vec3<f32>(-1000f, -1000f, -275f), 40392u, vec4<i32>(-28587i, u_input.d.x, -30908i, -33519i), vec3<i32>(u_input.c, u_input.d.x, -38158i), vec2<f32>(362f, 496f)), 0i, arg_0), false || arg_0.x, any(vec4<bool>(true, arg_0.x, global1.a.x, global1.a.x))), vec4<i32>(1i, _wgslsmith_mult_i32(-1i, u_input.b.x), u_input.d.x, u_input.d.x)))));
    var var_0 = Struct_3(arg_0);
    var_0 = Struct_3(select(select(vec4<bool>(true, u_input.d.x >= u_input.d.x, 4294967295u >= global3[_wgslsmith_index_u32(global0.a.x, 29u)], any(vec3<bool>(arg_0.x, var_0.a.x, arg_0.x))), !select(vec4<bool>(global1.a.x, var_0.a.x, false, arg_0.x), vec4<bool>(true, false, true, arg_0.x), var_0.a), select(!vec4<bool>(var_0.a.x, false, false, false), vec4<bool>(false, false, global1.a.x, false), arg_0.x)), vec4<bool>(arg_0.x, !global1.a.x, var_0.a.x, true), select(select(vec4<bool>(arg_0.x, global1.a.x, var_0.a.x, false), arg_0, !vec4<bool>(arg_0.x, true, arg_0.x, false)), vec4<bool>(true, arg_0.x, arg_0.x, all(vec4<bool>(true, true, global1.a.x, true))), arg_0.x)));
    let var_1 = u_input.d.x;
    let var_2 = Struct_2(vec2<u32>(1u, 1u));
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(vec2<u32>(4294967295u, 4294967295u)), !vec4<bool>(true, true, global1.a.x, false), ~vec4<i32>(56414i, u_input.b.x, u_input.d.x, var_1)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -837f), -816f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-598f + 683f)))), ~(~(~u_input.a)), vec4<i32>(abs(var_1), 22895i, -_wgslsmith_mult_i32(-var_1, -u_input.d.x), ~u_input.d.x | _wgslsmith_mod_i32(u_input.c, var_1 | 11958i)), vec3<i32>(~max(var_1, -5755i), -26145i, 0i), vec2<f32>(-988f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(var_2, vec4<bool>(true, false, true, true), vec4<i32>(0i, 2664i, u_input.d.x, 0i))) - -690f)));
}

fn func_1() -> vec3<f32> {
    global0 = Struct_2(global0.a);
    let var_0 = func_2(!global1.a);
    global2 = array<vec2<u32>, 16>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-736f, -180f)));
    global3 = array<u32, 29>();
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -804f, 1399f) - vec3<f32>(909f, var_0.a.x, var_0.a.x)))), vec3<f32>(var_0.e.x, -789f, _wgslsmith_f_op_f32(521f * _wgslsmith_f_op_f32(f32(-1f) * -487f))));
}

fn func_6(arg_0: Struct_2, arg_1: i32, arg_2: vec3<f32>, arg_3: f32) -> u32 {
    var var_0 = -2147483647i;
    let var_1 = global1.a;
    global2 = array<vec2<u32>, 16>();
    var var_2 = !vec4<bool>(firstTrailingBit(~4294967295u) < 21690u, true, all(!(!global1.a)), !global1.a.x);
    var_2 = !vec4<bool>(false, all(vec3<bool>(true, false, false)) || any(select(global1.a.yy, vec2<bool>(false, true), vec2<bool>(var_2.x, global1.a.x))), var_1.x, u_input.d.x >= arg_1);
    return firstLeadingBit(func_5(~(~1u), firstLeadingBit(arg_1), arg_2.x, _wgslsmith_f_op_f32(arg_3 * -1065f)).x >> ((_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(27052u >> (arg_0.a.x % 32u), 29u)], 29u)], 1508u) | _wgslsmith_mult_u32(_wgslsmith_add_u32(33958u, 0u), 1u | global3[_wgslsmith_index_u32(global0.a.x, 29u)])) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_2(~vec2<u32>(global0.a.x, 1u)), -20818i << (_wgslsmith_div_u32(48680u, ~118056u << ((0u ^ global0.a.x) % 32u)) % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1())), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(2279f, 926f) * _wgslsmith_f_op_f32(f32(-1f) * -653f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2395f)))));
    let var_1 = ~(~(1i >> (countOneBits(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(u_input.a, 29u)], 50232u)) % 32u)));
    var var_2 = vec4<bool>(any(vec2<bool>(any(global1.a), !all(vec3<bool>(true, true, false)))), select(!any(!global1.a.yyw), false, true), global3[_wgslsmith_index_u32(~(0u >> (global0.a.x % 32u)), 29u)] >= (~4294967295u & _wgslsmith_add_u32(u_input.e, 52621u)), global1.a.x && (global1.a.x || !global1.a.x));
    var var_3 = vec4<bool>(true, global1.a.x, true, global1.a.x);
    var var_4 = vec2<bool>(0i <= -_wgslsmith_mod_i32(var_1, ~var_1), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1247f, -976f), vec2<f32>(893f, -181f))), vec2<f32>(1f, -786f), _wgslsmith_div_f32(-1494f, 1241f) < _wgslsmith_f_op_f32(trunc(-1221f))))), vec3<u32>(global3[_wgslsmith_index_u32(1u, 29u)], u_input.e, global3[_wgslsmith_index_u32(12197u >> (func_6(Struct_2(global0.a), u_input.c, _wgslsmith_f_op_vec3_f32(func_1()), _wgslsmith_f_op_f32(round(-311f))) % 32u), 29u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1785f) + _wgslsmith_f_op_f32(f32(-1f) * -1449f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(func_2(select(vec4<bool>(true, global1.a.x, true, true), global1.a, var_3.x)).a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 666f, -1080f))))), func_6(Struct_2(global0.a), i32(-1i) * -11160i, vec3<f32>(_wgslsmith_f_op_f32(-177f * _wgslsmith_f_op_f32(-1011f - -1356f)), -3240f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f * -429f), _wgslsmith_f_op_f32(f32(-1f) * -101f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1301f * -877f)), -2115f)));
}

