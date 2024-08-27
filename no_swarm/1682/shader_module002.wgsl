struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: bool,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2>;

var<private> global1: array<i32, 13>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_3) -> f32 {
    global0 = array<bool, 2>();
    global1 = array<i32, 13>();
    global1 = array<i32, 13>();
    let var_0 = 2147483647i;
    global1 = array<i32, 13>();
    return _wgslsmith_f_op_f32(f32(-1f) * -556f);
}

fn func_4(arg_0: vec3<i32>, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_2) -> vec3<f32> {
    global0 = array<bool, 2>();
    let var_0 = arg_3.a.a;
    let var_1 = arg_3.b;
    var var_2 = Struct_1(select(arg_0.x, -675i, false), u_input.c, !(!(!(!arg_3.a.c))));
    var var_3 = Struct_2(arg_3.a, arg_3.b, Struct_1(~(-9439i), ~reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(1u, var_2.b.x), u_input.b.xx)), !(!vec3<bool>(true, arg_3.a.c.x, global0[_wgslsmith_index_u32(var_2.b.x, 2u)]))), vec3<u32>(~var_2.b.x, _wgslsmith_clamp_u32(~5177u, select(_wgslsmith_dot_vec4_u32(vec4<u32>(8666u, u_input.c.x, u_input.d.x, 1u), u_input.b), ~u_input.e.x, global0[_wgslsmith_index_u32(4294967295u, 2u)]), firstTrailingBit(~u_input.e.x)), arg_3.d.x));
    return _wgslsmith_div_vec3_f32(arg_2.yxw, vec3<f32>(-2501f, arg_2.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.b), arg_2.x))));
}

fn func_2() -> i32 {
    global0 = array<bool, 2>();
    var var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1157f, -983f, _wgslsmith_f_op_f32(step(-246f, 884f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1154f, -1726f, 1758f), vec3<f32>(-968f, -1385f, -1011f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -972f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1368f) * -1069f), _wgslsmith_f_op_f32(sign(-900f))), !select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 2u)], global0[_wgslsmith_index_u32(u_input.e.x, 2u)], false), vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 2u)], true), global0[_wgslsmith_index_u32(u_input.e.x, 2u)]), select(vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(0u, 2u)]), vec3<bool>(global0[_wgslsmith_index_u32(43613u, 2u)], global0[_wgslsmith_index_u32(u_input.e.x, 2u)], true), vec3<bool>(false, global0[_wgslsmith_index_u32(89499u, 2u)], global0[_wgslsmith_index_u32(u_input.e.x, 2u)])), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)], true)))), _wgslsmith_f_op_vec3_f32(func_4(~vec3<i32>(_wgslsmith_mod_i32(u_input.a, global1[_wgslsmith_index_u32(u_input.c.x, 13u)]), 1i, 2147483647i), select(0i, i32(-1i) * -2147483647i, all(select(vec2<bool>(false, false), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 2u)]), true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(518f, -799f, 263f, -1301f)) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(357f, 515f, 872f, -2052f), vec4<f32>(-720f, 1147f, 103f, -763f))))), Struct_2(Struct_1(global1[_wgslsmith_index_u32(0u, 13u)] >> (16646u % 32u), vec2<u32>(u_input.e.x, 0u), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 2u)], false, true)), _wgslsmith_f_op_f32(func_3(4294967295u >> (u_input.d.x % 32u), Struct_1(global1[_wgslsmith_index_u32(51045u, 13u)], u_input.c, vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.c.x, 2u)])), false, Struct_3(global1[_wgslsmith_index_u32(u_input.e.x, 13u)], vec4<i32>(-1i, u_input.a, u_input.a, -56665i), true, Struct_2(Struct_1(2147483647i, vec2<u32>(1u, u_input.b.x), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 2u)], true)), 760f, Struct_1(-26920i, u_input.c, vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.b.x, 2u)])), u_input.e.zxx), Struct_2(Struct_1(23673i, u_input.b.yy, vec3<bool>(false, global0[_wgslsmith_index_u32(7073u, 2u)], global0[_wgslsmith_index_u32(u_input.e.x, 2u)])), -592f, Struct_1(u_input.a, u_input.b.xw, vec3<bool>(global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(u_input.e.x, 2u)], global0[_wgslsmith_index_u32(0u, 2u)])), u_input.e.xzy)))), Struct_1(~global1[_wgslsmith_index_u32(0u, 13u)], _wgslsmith_mod_vec2_u32(u_input.c, vec2<u32>(u_input.d.x, u_input.b.x)), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 2u)], false, false), vec3<bool>(global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(u_input.e.x, 2u)], global0[_wgslsmith_index_u32(92450u, 2u)]), true)), _wgslsmith_clamp_vec3_u32(vec3<u32>(27613u, u_input.b.x, u_input.b.x) << (u_input.e.wxy % vec3<u32>(32u)), ~vec3<u32>(12744u, u_input.c.x, 42609u), u_input.e.wyx))))));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, -1847f, -790f), vec3<f32>(var_0.x, 786f, var_0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -698f, -549f)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, var_0.x, var_0.x))))))), abs(reverseBits(-(vec4<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 13u)], u_input.a, global1[_wgslsmith_index_u32(6969u, 13u)], 1i) & vec4<i32>(-2147483647i, -1i, -2147483647i, u_input.a)))), Struct_1(i32(-1i) * -global1[_wgslsmith_index_u32(u_input.d.x, 13u)], reverseBits(~(vec2<u32>(15388u, u_input.e.x) >> (vec2<u32>(1u, u_input.b.x) % vec2<u32>(32u)))), !select(select(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.e.x, 2u)], true), vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.d.x, 2u)]), vec3<bool>(global0[_wgslsmith_index_u32(0u, 2u)], true, global0[_wgslsmith_index_u32(u_input.d.x, 2u)])), select(vec3<bool>(global0[_wgslsmith_index_u32(59764u, 2u)], true, false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)], true), vec3<bool>(true, false, global0[_wgslsmith_index_u32(0u, 2u)])), true)), select(!vec3<bool>(true, u_input.a >= -1i, !global0[_wgslsmith_index_u32(u_input.b.x, 2u)]), vec3<bool>(any(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 2u)], global0[_wgslsmith_index_u32(u_input.b.x, 2u)], global0[_wgslsmith_index_u32(u_input.b.x, 2u)]), vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.b.x, 2u)]), global0[_wgslsmith_index_u32(1u, 2u)])), any(vec3<bool>(true, true, false)), true), select(!vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(u_input.c.x, 2u)], false), select(vec3<bool>(true, true, true), vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(u_input.e.x, 2u)]), !vec3<bool>(global0[_wgslsmith_index_u32(1513u, 2u)], false, global0[_wgslsmith_index_u32(u_input.e.x, 2u)])), select(select(vec3<bool>(false, false, false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 2u)], global0[_wgslsmith_index_u32(u_input.b.x, 2u)], global0[_wgslsmith_index_u32(u_input.e.x, 2u)]), false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 2u)], global0[_wgslsmith_index_u32(2390u, 2u)], false), true))));
    let var_2 = 24476i;
    let var_3 = var_1.e.x;
    return 7858i;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: bool, arg_3: vec3<u32>) -> bool {
    let var_0 = arg_2;
    return ~func_2() <= 0i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-_wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(global1[_wgslsmith_index_u32(u_input.d.x, 13u)], -39929i, -2147483647i)) << (vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_sub_i32(-1i, -2147483647i), global1[_wgslsmith_index_u32(u_input.e.x & 0u, 13u)], -1i), firstLeadingBit(-vec3<i32>(global1[_wgslsmith_index_u32(0u, 13u)], -2147483647i, -2147483647i))));
    global0 = array<bool, 2>();
    let var_1 = vec4<i32>(0i, -2147483647i, max(var_0.x, u_input.a), var_0.x);
    var var_2 = Struct_3(var_1.x, select(~(vec4<i32>(-1i, 1i, -1089i, 1i) >> (~u_input.e % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, var_1.x, 0i, _wgslsmith_div_i32(u_input.a, var_0.x)), vec4<i32>(_wgslsmith_sub_i32(-19470i, -25277i), _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(1u, 13u)], u_input.a, -3525i), -67245i, var_0.x)), all(select(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 2u)], global0[_wgslsmith_index_u32(u_input.b.x, 2u)]), select(vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.b.x, 2u)]), vec3<bool>(global0[_wgslsmith_index_u32(1u, 2u)], false, true), false), !vec3<bool>(global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(67813u, 2u)], true)))), ((-14008i > var_1.x) | (~u_input.c.x < ~20299u)) != !func_1(true, 49134u, true, ~vec3<u32>(4294967295u, 20123u, u_input.e.x)), Struct_2(Struct_1(-2147483647i, firstTrailingBit(u_input.c), !(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 2u)], global0[_wgslsmith_index_u32(u_input.e.x, 2u)], global0[_wgslsmith_index_u32(u_input.d.x, 2u)]))), 568f, Struct_1(_wgslsmith_div_i32(_wgslsmith_sub_i32(-32011i, -2779i), select(var_0.x, var_1.x, global0[_wgslsmith_index_u32(u_input.d.x, 2u)])), u_input.e.zx, select(select(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 2u)], global0[_wgslsmith_index_u32(23022u, 2u)]), vec3<bool>(global0[_wgslsmith_index_u32(0u, 2u)], false, global0[_wgslsmith_index_u32(0u, 2u)]), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 2u)], false, false)), select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 2u)], true, global0[_wgslsmith_index_u32(4294967295u, 2u)]), vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(57313u, 2u)]), !global0[_wgslsmith_index_u32(u_input.e.x, 2u)])), abs(u_input.e.xxz)), Struct_2(Struct_1(abs(global1[_wgslsmith_index_u32(u_input.d.x, 13u)]) >> (abs(u_input.b.x) % 32u), u_input.b.zx, !vec3<bool>(false, false, global0[_wgslsmith_index_u32(34068u, 2u)])), _wgslsmith_f_op_f32(-2375f - _wgslsmith_f_op_f32(floor(-733f))), Struct_1(-53286i, select(u_input.e.zz, ~vec2<u32>(0u, u_input.d.x), all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 2u)], false, true, global0[_wgslsmith_index_u32(u_input.e.x, 2u)]))), vec3<bool>(true, global0[_wgslsmith_index_u32(~u_input.d.x, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)])), vec3<u32>(~29759u, ~u_input.e.x, _wgslsmith_clamp_u32(u_input.e.x, 1u, 27352u)) & vec3<u32>(firstLeadingBit(u_input.c.x), ~u_input.b.x, u_input.e.x)));
    let var_3 = !select(var_2.d.a.c, vec3<bool>(true, func_1(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_2.e.d.x, var_2.d.a.b.x), 2u)], ~u_input.d.x, false && global0[_wgslsmith_index_u32(var_2.e.c.b.x, 2u)], u_input.b.xzy), !all(vec4<bool>(true, true, false, true))), !vec3<bool>(var_2.c, global0[_wgslsmith_index_u32(~1u, 2u)], !var_2.e.c.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(1000f, -349f), _wgslsmith_f_op_f32(1466f - _wgslsmith_f_op_f32(var_2.e.b - var_2.d.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.e.b, var_2.d.b), vec2<f32>(var_2.d.b, var_2.d.b)), vec2<f32>(var_2.e.b, var_2.d.b), !var_2.d.c.c.x)))), var_2.d.b, u_input.c.x, ~select(vec2<u32>(var_2.e.a.b.x, 0u), _wgslsmith_sub_vec2_u32(vec2<u32>(var_2.d.c.b.x, 4294967295u), var_2.d.c.b), vec2<bool>(true, true)) >> (~(vec2<u32>(19952u, 60619u) >> (vec2<u32>(var_2.e.d.x, u_input.d.x) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.e.c.b.x, 70198u, 0u, u_input.e.x), _wgslsmith_clamp_vec4_u32(u_input.b, vec4<u32>(u_input.c.x, 48035u, 0u, 4294967295u), vec4<u32>(15416u, u_input.b.x, 1u, 74562u))), ~9281u), 6978u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(23071u, 4294967295u, var_2.d.a.b.x) ^ var_2.e.d, var_2.e.d)));
}

