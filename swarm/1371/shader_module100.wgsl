struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec4<bool>,
    d: u32,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: vec4<f32>,
    c: u32,
    d: vec2<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-242f, 478f, -254f, 1034f);

var<private> global1: array<f32, 20>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_5, arg_2: vec3<u32>, arg_3: Struct_2) -> Struct_2 {
    return Struct_2(arg_1.b.x, global0.yyw, vec3<u32>(firstLeadingBit(firstLeadingBit(arg_2.x)), arg_1.c, _wgslsmith_clamp_u32(max(_wgslsmith_mod_u32(0u, 86067u), 58809u), _wgslsmith_mult_u32(u_input.a.x | arg_1.c, arg_3.c.x), 33574u)));
}

fn func_3(arg_0: Struct_4) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.x), 251f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(arg_0.c.b.zz, vec2<f32>(866f, global1[_wgslsmith_index_u32(arg_0.c.c.x, 20u)]))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(742f, 225f))))), arg_0.d.b)) * vec2<f32>(-541f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.c.b.x, -1872f, arg_0.d.c.x)), global1[_wgslsmith_index_u32(0u, 20u)]))));
    let var_1 = abs(4294967295u & (arg_0.c.c.x << (u_input.d % 32u)));
    let var_2 = Struct_3(!all(!(!vec2<bool>(arg_0.b, arg_0.b))), Struct_1(firstLeadingBit(arg_0.d.a), arg_0.d.c.zz, vec3<bool>(true, arg_0.d.c.x, reverseBits(1i) <= (u_input.b << (4294967295u % 32u)))), vec4<bool>(any(arg_0.d.c), false, all(!vec3<bool>(arg_0.b, arg_0.d.b.x, false)), 79092i < firstTrailingBit(-3227i)), reverseBits(arg_0.a.x), _wgslsmith_add_vec4_u32(~arg_0.a, ~arg_0.a));
    let var_3 = Struct_5(true, vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(arg_0.c.a + global0.x), _wgslsmith_f_op_f32(-871f * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 20u)])), var_0.x), ~arg_0.a.x, vec2<f32>(-190f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-649f)))))), !any(vec2<bool>(var_2.b.b.x && var_2.a, false)));
    global1 = array<f32, 20>();
    return -u_input.b;
}

fn func_1() -> Struct_1 {
    global1 = array<f32, 20>();
    var var_0 = select(true, true, _wgslsmith_f_op_f32(-global0.x) <= _wgslsmith_f_op_f32(round(-504f)));
    var var_1 = vec4<bool>(any(vec2<bool>(true, true)), global0.x != global1[_wgslsmith_index_u32(u_input.a.x, 20u)], true, any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, all(vec2<bool>(true, false)), select(true, false, true)))));
    let var_2 = var_1.x;
    return Struct_1(vec2<i32>(func_3(Struct_4(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 45920u, u_input.d, u_input.a.x), vec4<u32>(1u, u_input.a.x, u_input.d, u_input.a.x), vec4<u32>(38062u, u_input.d, 0u, 7628u)), var_1.x, func_2(Struct_1(vec2<i32>(u_input.b, -1i), var_1.wy, var_1.wwy), Struct_5(var_1.x, vec4<f32>(global1[_wgslsmith_index_u32(85313u, 20u)], global0.x, global0.x, global1[_wgslsmith_index_u32(u_input.a.x, 20u)]), u_input.d, global0.xw, var_1.x), vec3<u32>(0u, u_input.d, u_input.d), Struct_2(global0.x, vec3<f32>(953f, 1035f, 207f), vec3<u32>(u_input.d, u_input.a.x, u_input.a.x))), Struct_1(vec2<i32>(u_input.b, u_input.c), vec2<bool>(var_1.x, var_1.x), var_1.ywz))), 44802i), select(var_1.xw, !var_1.yx, var_1.yy), !vec3<bool>(any(!vec2<bool>(var_1.x, var_1.x)), any(vec4<bool>(var_1.x, true, var_1.x, var_1.x)), var_1.x));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> vec4<f32> {
    let var_0 = vec3<i32>(-2147483647i, _wgslsmith_div_i32(-u_input.c, ~2147483647i), _wgslsmith_clamp_i32(3817i, arg_1.b.a.x, _wgslsmith_div_i32(_wgslsmith_add_i32(1i, u_input.b) >> (33657u % 32u), 24200i)));
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, arg_0.a, arg_0.b.x, 607f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1068f, -1246f, 556f, -1162f) + vec4<f32>(arg_0.b.x, -1867f, 287f, 1000f)), true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(func_2(Struct_1(vec2<i32>(arg_1.b.a.x, u_input.c), arg_1.b.b, vec3<bool>(arg_1.b.b.x, arg_1.a, false)), Struct_5(arg_1.a, vec4<f32>(430f, arg_0.b.x, -729f, arg_0.b.x), 4294967295u, global0.xx, true), arg_0.c, Struct_2(-935f, vec3<f32>(-2235f, -1573f, arg_0.a), vec3<u32>(4294967295u, arg_1.e.x, arg_0.c.x))).b.x, _wgslsmith_f_op_f32(f32(-1f) * -1174f), 1009f, _wgslsmith_f_op_f32(689f * 1038f)) + vec4<f32>(1f, global0.x, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 20u)] - global0.x), global0.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1162f, global1[_wgslsmith_index_u32(4294967295u, 20u)], -356f)))), vec4<bool>(any(arg_1.c.yx), all(select(vec4<bool>(true, true, true, arg_1.b.b.x), arg_1.c, select(arg_1.c, arg_1.c, arg_1.c))), !select(false, select(arg_1.c.x, true, true), arg_1.b.c.x), false)));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, global0.x, global0.x, 930f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1111f, arg_0.b.x, global0.x, global0.x) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.b.x, global1[_wgslsmith_index_u32(0u, 20u)], arg_0.b.x, global1[_wgslsmith_index_u32(1u, 20u)]), vec4<f32>(arg_0.a, 849f, -166f, -1123f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -589f, -1000f, 894f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.a, 508f, 1978f, -760f))))), select(!(!vec4<bool>(false, arg_1.b.b.x, arg_1.c.x, false)), vec4<bool>(false, 4971i >= var_0.x, !arg_1.c.x, var_0.x < var_0.x), arg_1.c))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.b.x - global0.x), -486f, arg_1.a || true)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 20u)]), 2524f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0.c.x, 20u)]))))));
    global0 = vec4<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 20u)])) * _wgslsmith_f_op_f32(max(562f, _wgslsmith_f_op_f32(step(-1823f, global0.x))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(932f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -374f), -546f)))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.xy, ~vec2<u32>(arg_0.c.x, 4294967295u)), 20u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.a)) * _wgslsmith_div_f32(global0.x, arg_0.b.x)))))));
    var var_1 = Struct_1(-var_0.zz, func_1().b, arg_1.c.zyz);
    return vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1.d, 20u)]), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(f32(-1f) * -436f)), _wgslsmith_f_op_f32(-global0.x), global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_4(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(601f, global1[_wgslsmith_index_u32(1u, 20u)])) - _wgslsmith_f_op_f32(trunc(799f))), vec3<f32>(-962f, -968f, _wgslsmith_f_op_f32(global0.x + -170f)), ~countOneBits(u_input.a)), Struct_3(any(vec4<bool>(false, true, true, false)), func_1(), vec4<bool>(any(vec3<bool>(true, true, true)), true, true, true), _wgslsmith_mult_u32(reverseBits(0u), ~0u), vec4<u32>(u_input.d, u_input.d << (u_input.d % 32u), u_input.d << (16190u % 32u), ~u_input.d))))));
    let var_0 = Struct_3((((u_input.b << (0u % 32u)) > _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.b, u_input.c), vec3<i32>(u_input.b, u_input.b, u_input.b))) || true) & any(vec4<bool>(true, true, true, all(vec3<bool>(true, true, false)))), Struct_1(~(~(-vec2<i32>(19976i, u_input.c))), vec2<bool>(true, true), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), func_1().c.x), u_input.b >= ~(-21251i))), vec4<bool>(!all(vec2<bool>(false, false)), !all(func_1().c), !select(true, true, all(vec2<bool>(false, false))), u_input.d < max(u_input.d, 23035u)), 44607u, _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 22999u, u_input.d, 4294967295u) ^ vec4<u32>(103304u, u_input.d, u_input.d, u_input.d), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.d, 4294967295u, 27402u), vec4<u32>(u_input.d, 40253u, u_input.d, 4294967295u))), vec4<u32>(u_input.a.x, 62726u, 19031u, 1u) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, u_input.d, 1u, 1u), vec4<u32>(u_input.a.x, u_input.d, u_input.a.x, 6045u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.d, u_input.a.x))), vec4<u32>(0u >> (u_input.a.x % 32u), _wgslsmith_dot_vec2_u32(u_input.a.zz, vec2<u32>(u_input.a.x, u_input.a.x)), u_input.a.x, 7988u) >> ((countOneBits(vec4<u32>(0u, 60607u, 46064u, 0u)) & ~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x)) % vec4<u32>(32u))));
    var var_1 = vec2<i32>(~u_input.b & var_0.b.a.x, ~(-8528i));
    var var_2 = var_0.c;
    global1 = array<f32, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.xy >> ((~_wgslsmith_mod_vec2_u32(var_0.e.xw, u_input.a.yz) & vec2<u32>(1u, 0u)) % vec2<u32>(32u)), 1u, _wgslsmith_f_op_f32(f32(-1f) * -474f));
}

