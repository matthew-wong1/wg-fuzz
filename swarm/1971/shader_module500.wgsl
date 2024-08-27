struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: vec4<f32>,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec3<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec4<i32>(19213i, 2147483647i, -37802i, -1i), vec2<f32>(-1342f, 855f), vec4<f32>(-631f, -505f, -245f, -534f), vec3<bool>(false, false, false), 1i), Struct_1(vec4<i32>(1i, 1i, -32062i, i32(-2147483648)), vec2<f32>(-1323f, 2189f), vec4<f32>(-2562f, 478f, 1398f, -457f), vec3<bool>(true, false, true), -15943i), Struct_1(vec4<i32>(33108i, 1550i, -15557i, 1i), vec2<f32>(-586f, 775f), vec4<f32>(-641f, 1263f, -546f, 893f), vec3<bool>(true, false, true), 33989i), Struct_1(vec4<i32>(2147483647i, -38804i, -57171i, 1i), vec2<f32>(442f, -203f), vec4<f32>(-890f, -592f, -601f, -799f), vec3<bool>(true, true, false), -2058i), Struct_1(vec4<i32>(i32(-2147483648), 17378i, -1i, 0i), vec2<f32>(576f, -828f), vec4<f32>(384f, -2094f, -936f, -1211f), vec3<bool>(true, true, true), -3873i), Struct_1(vec4<i32>(i32(-2147483648), -26033i, -14798i, -1i), vec2<f32>(406f, 2085f), vec4<f32>(-104f, -515f, -300f, 944f), vec3<bool>(true, false, true), 60130i));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec4<u32> {
    global1 = array<Struct_1, 6>();
    var var_0 = Struct_5(global0.d.d.yy);
    var var_1 = -(~max(-4783i, global0.c.a.x));
    let var_2 = global0.c.c;
    var_0 = Struct_5(var_0.a);
    return firstLeadingBit(reverseBits(vec4<u32>(reverseBits(abs(1u)), ~(~26467u), 1u, abs(_wgslsmith_clamp_u32(0u, 1u, 1u)))));
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(~select(vec4<u32>(0u, 55082u, 0u, 33739u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 7680u, 7515u), vec4<u32>(0u, 4294967295u, 8876u, 1u), vec4<u32>(48389u, 79849u, 0u, 6764u)), !vec4<bool>(true, true, false, global0.c.d.x)), ~(func_3() | abs(vec4<u32>(0u, 13680u, 808u, 1u)))), vec4<u32>(abs(countOneBits(_wgslsmith_div_u32(70226u, 32003u))), ~(~(~31876u)), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, countOneBits(4294967295u)), countOneBits(abs(vec2<u32>(0u, 0u)))), _wgslsmith_mult_u32(~1u, 1u)));
    let var_1 = vec3<i32>(_wgslsmith_mult_i32(~global0.d.e, u_input.a.x), -max(global0.d.e, u_input.a.x), 1i) & _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(select(global0.d.a.xzw, vec3<i32>(49779i, 2147483647i, global0.e.a.x), true), vec3<i32>(1i, u_input.b, u_input.a.x) & vec3<i32>(global0.d.a.x, u_input.b, global0.d.e)), vec3<i32>(u_input.b, firstLeadingBit(global0.e.a.x), ~u_input.a.x)), abs(vec3<i32>(1i, global0.d.e, -2147483647i)));
    var var_2 = vec2<bool>(any(select(global0.d.d.zy, global0.c.d.zx, global0.c.d.zx)), all(select(!global0.e.d.xx, select(!vec2<bool>(global0.a, global0.c.d.x), global0.c.d.yx, global0.d.d.zx), all(select(vec3<bool>(false, global0.e.d.x, global0.e.d.x), vec3<bool>(global0.c.d.x, true, false), vec3<bool>(true, global0.d.d.x, global0.e.d.x))))));
    var_0 = firstLeadingBit(~countOneBits(~vec4<u32>(var_0.x, 4294967295u, 4294967295u, 1u) ^ vec4<u32>(var_0.x, var_0.x, 1u, 26218u)));
    let var_3 = Struct_4(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.c.c.x, global0.c.c.x))), Struct_1(~global0.c.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.d.c.x, -1000f), global0.e.c.wx, !vec2<bool>(true, global0.c.d.x))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -838f), _wgslsmith_f_op_f32(global0.e.b.x + -1000f))), vec4<f32>(global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d.c.x * 548f) * global0.e.b.x), -1162f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.c.c.x)))), select(!global0.c.d, !global0.e.d, vec3<bool>(false, !var_2.x, false)), -2147483647i), Struct_1(vec4<i32>(~(0i >> (var_0.x % 32u)), _wgslsmith_mod_i32(select(2147483647i, -1i, true), -2147483647i), 1i, _wgslsmith_clamp_i32(var_1.x, 18088i << (0u % 32u), _wgslsmith_div_i32(u_input.b, 2147483647i))), global0.e.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(448f, _wgslsmith_f_op_f32(global0.b * global0.b), _wgslsmith_f_op_f32(f32(-1f) * -715f), 1000f)), vec3<bool>(any(vec3<bool>(false, global0.a, global0.c.d.x)) || true, any(vec2<bool>(var_2.x, var_2.x)), !global0.c.d.x & any(global0.c.d.yz)), global0.c.a.x), Struct_1(global0.c.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-670f, -704f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, global0.e.c.x, global0.e.c.x, -569f)), global0.d.c, false))), vec3<bool>(all(select(vec2<bool>(true, var_2.x), global0.c.d.zz, vec2<bool>(false, true))), true, any(!vec2<bool>(global0.a, true))), ~_wgslsmith_add_i32(1i, var_1.x) >> (_wgslsmith_mod_u32(6008u, var_0.x) % 32u)));
    return var_3;
}

fn func_1() -> Struct_4 {
    global0 = func_2();
    global0 = Struct_4(global0.d.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-997f + global0.c.c.x))) - _wgslsmith_f_op_f32(-global0.c.c.x)), global1[_wgslsmith_index_u32(~reverseBits(~58143u), 6u)], Struct_1(abs(vec4<i32>(u_input.b, u_input.b, 12063i, 50403i) << (countOneBits(vec4<u32>(4294967295u, 4294967295u, 0u, 56936u)) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-894f, _wgslsmith_f_op_f32(-global0.c.b.x)), vec2<f32>(181f, _wgslsmith_f_op_f32(-1052f * global0.b)), !func_2().c.d.zz)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1498f, -884f, global0.b, global0.c.b.x))) + _wgslsmith_div_vec4_f32(vec4<f32>(-1883f, global0.b, global0.e.b.x, -240f), global0.d.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, global0.e.b.x, -427f, global0.c.c.x) + global0.d.c)))), global0.c.d, -41940i), global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_div_u32(firstTrailingBit(4294967295u), ~54526u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), func_3().wwx)), 6u)]);
    let var_0 = -1241f;
    let var_1 = 54433u;
    var var_2 = Struct_2(_wgslsmith_add_vec2_u32(vec2<u32>(~var_1, countOneBits(firstLeadingBit(1u))), ~(~vec2<u32>(30147u, var_1) & (vec2<u32>(var_1, 18481u) | vec2<u32>(36712u, var_1)))), _wgslsmith_clamp_i32(0i, _wgslsmith_sub_i32(-1i, ~global0.d.e), ~_wgslsmith_dot_vec3_i32(firstTrailingBit(global0.c.a.zzy), firstTrailingBit(vec3<i32>(global0.e.e, global0.e.e, global0.e.a.x)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.d.c * vec4<f32>(203f, var_0, global0.b, -431f)) + vec4<f32>(global0.e.b.x, -826f, -763f, global0.e.b.x)) + func_2().d.c))), func_2().c, select(!global0.d.d.zx, !select(!global0.c.d.xx, select(vec2<bool>(true, false), vec2<bool>(true, true), global0.e.d.zy), false), !(!(!vec2<bool>(global0.e.d.x, false)))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global1 = array<Struct_1, 6>();
    var var_0 = global0.c.c.zyw;
    let var_1 = Struct_5(!global0.d.d.yz);
    let x = u_input.a;
    s_output = StorageBuffer(0i, 216f, func_2().c.b.x, func_1().d.a.xxz, ~(~(~global0.d.a) >> (vec4<u32>(_wgslsmith_mod_u32(1u, 4294967295u), _wgslsmith_mod_u32(39655u, 4294967295u), max(41191u, 47617u), select(18242u, 0u, false)) % vec4<u32>(32u))));
}

