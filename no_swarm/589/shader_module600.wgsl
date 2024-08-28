struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: bool,
    d: Struct_2,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 36999u);

var<private> global1: array<vec2<f32>, 4> = array<vec2<f32>, 4>(vec2<f32>(-190f, -258f), vec2<f32>(-1048f, 1710f), vec2<f32>(-197f, 371f), vec2<f32>(-1295f, -1000f));

var<private> global2: array<i32, 22> = array<i32, 22>(2147483647i, 1i, i32(-2147483648), 2147483647i, i32(-2147483648), -22043i, -1i, 2147483647i, -6593i, 11630i, 0i, -1i, 42058i, i32(-2147483648), i32(-2147483648), 32765i, i32(-2147483648), -44991i, -1i, -1i, -34673i, i32(-2147483648));

var<private> global3: f32;

var<private> global4: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>) -> f32 {
    global1 = array<vec2<f32>, 4>();
    global1 = array<vec2<f32>, 4>();
    var var_0 = Struct_3(-386f, Struct_2(Struct_1(-769f, -2147483647i, 1u, select(vec3<bool>(true, false, global4.x), !vec3<bool>(global4.x, global4.x, arg_1.x), !global4.x), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, 1469u, 1u, global0.x), reverseBits(vec4<u32>(global0.x, 22986u, 23878u, global0.x)))), global0.x, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0))), u_input.b, global0.x, !(!vec3<bool>(global4.x, false, false)), vec4<u32>(global0.x, ~global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, 4294967295u), vec4<u32>(4294967295u, global0.x, 72125u, global0.x)), 0u))), arg_1.x | true, Struct_2(Struct_1(_wgslsmith_f_op_f32(-365f + _wgslsmith_f_op_f32(step(arg_0, arg_0))), 2147483647i, 0u, select(!vec3<bool>(global4.x, global4.x, arg_1.x), vec3<bool>(arg_1.x, false, global4.x), true), vec4<u32>(52570u, min(global0.x, global0.x), 4294967295u, 1u)), ~(~38542u) & global0.x, Struct_1(-815f, global2[_wgslsmith_index_u32(firstTrailingBit(~global0.x), 22u)], firstTrailingBit(global0.x), vec3<bool>(arg_1.x, all(vec2<bool>(global4.x, false)), true), countOneBits(vec4<u32>(global0.x, 4294967295u, 0u, global0.x)) ^ vec4<u32>(21146u, 83167u, 0u, 2878u))), !vec4<bool>(arg_1.x, !(!arg_1.x), true, true));
    let var_1 = -(~(~u_input.b) & var_0.b.c.b);
    let var_2 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(select(-1908f, 1976f, any(vec3<bool>(all(vec4<bool>(global4.x, global4.x, false, var_0.b.c.d.x)), global4.x, global4.x || arg_1.x)))));
    return var_0.b.a.a;
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_2 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-132f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(max(439f, -806f)), global4.yx)))) + _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -314f)), !select(global4.yy, vec2<bool>(arg_1, global4.x), false)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1656f)))), _wgslsmith_f_op_f32(f32(-1f) * -501f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(706f, _wgslsmith_f_op_f32(min(1481f, -1594f)), false)), -170f))));
    global0 = vec2<u32>(global0.x >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(global0.x, global0.x, 0u), _wgslsmith_mod_vec3_u32(max(vec3<u32>(global0.x, 72348u, 0u), vec3<u32>(global0.x, 39864u, global0.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(21015u, global0.x, 0u), vec3<u32>(global0.x, 28055u, 0u)))) % 32u), ~_wgslsmith_sub_u32(firstTrailingBit(1u) >> (global0.x % 32u), _wgslsmith_sub_u32(global0.x, _wgslsmith_div_u32(global0.x, global0.x))));
    var var_1 = select(vec2<bool>(true & !(!arg_1), true), vec2<bool>(true, any(vec3<bool>(all(vec4<bool>(arg_1, global4.x, global4.x, false)), true, !global4.x))), global4.yz);
    global3 = var_0.x;
    global4 = select(!(!vec3<bool>(true, true, var_1.x)), select(vec3<bool>(arg_1, !global4.x, true), vec3<bool>(true, global0.x <= max(1u, 1u), var_1.x), !(!all(vec4<bool>(false, true, global4.x, true)))), vec3<bool>(all(select(select(vec4<bool>(var_1.x, arg_1, true, true), vec4<bool>(arg_1, arg_1, arg_1, true), vec4<bool>(arg_1, false, false, global4.x)), select(vec4<bool>(arg_1, true, true, false), vec4<bool>(global4.x, false, true, true), vec4<bool>(var_1.x, global4.x, arg_1, var_1.x)), !var_1.x)), all(select(vec4<bool>(false, var_1.x, var_1.x, true), vec4<bool>(global4.x, var_1.x, true, false), true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -672f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(455f)))));
    return Struct_2(Struct_1(-1344f, abs(-15577i), ~abs(global0.x), select(!vec3<bool>(var_1.x, false, var_1.x), select(vec3<bool>(var_1.x, arg_1, false), select(vec3<bool>(global4.x, false, false), vec3<bool>(global4.x, false, true), arg_1), vec3<bool>(true, var_1.x, global4.x)), var_1.x), firstLeadingBit(vec4<u32>(~global0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, global0.x, global0.x), vec3<u32>(0u, 13453u, 1u)), global0.x, 29475u))), global0.x, Struct_1(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_mod_i32(_wgslsmith_sub_i32(-91160i, ~u_input.b), _wgslsmith_add_i32(arg_0, select(1i, 12378i, var_1.x))), ~global0.x, select(select(vec3<bool>(global4.x, global4.x, false), vec3<bool>(arg_1, true, true), select(vec3<bool>(arg_1, var_1.x, true), vec3<bool>(global4.x, false, true), vec3<bool>(true, false, arg_1))), !vec3<bool>(var_1.x, var_1.x, var_1.x), !select(vec3<bool>(true, true, arg_1), vec3<bool>(var_1.x, false, global4.x), global4.x)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(109760u, global0.x, 1u, global0.x), vec4<u32>(global0.x >> (global0.x % 32u), 26128u, global0.x, ~global0.x), firstTrailingBit(~vec4<u32>(56525u, global0.x, global0.x, global0.x)))));
}

fn func_1() -> bool {
    let var_0 = func_2(abs(u_input.a.x), !global4.x);
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f)));
    var var_1 = var_0;
    let var_2 = global0.x & (4294967295u & ~global0.x);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.c.a - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1622f * 1000f)))))), -435f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.a), _wgslsmith_f_op_f32(max(-1883f, var_1.a.a))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(var_1.c.a, var_0.a.a))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a.a, -879f)) * 182f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.c.a + -792f))));
    return !(var_0.c.d.x || !(4294967295u != ~global0.x));
}

fn func_4(arg_0: vec4<f32>, arg_1: u32, arg_2: vec2<bool>, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(-1331f, 444f), -1394f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))))));
    var var_1 = var_0.yz;
    global3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))));
    var var_2 = Struct_3(1976f, Struct_2(func_2(arg_3.x, (global4.x | global4.x) & (arg_2.x && global4.x)).c, global0.x, func_2(_wgslsmith_sub_i32(u_input.b, -arg_3.x), all(vec4<bool>(global4.x, global4.x, false, false))).c), !((1f != var_0.x) || all(!vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false))), func_2(~_wgslsmith_mult_i32(-1i & u_input.a.x, i32(-1i) * -25049i), (global0.x >> ((global0.x | 0u) % 32u)) < ~_wgslsmith_mult_u32(41299u, arg_1)), vec4<bool>(!all(!vec3<bool>(global4.x, false, true)), any(vec2<bool>(global4.x, global2[_wgslsmith_index_u32(global0.x, 22u)] <= 2147483647i)), arg_2.x, true));
    var var_3 = var_2.d.a.d;
    return var_2.d.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_4(vec4<f32>(1067f, 1136f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 767f)), -878f), 88103u, select(vec2<bool>(true, true), vec2<bool>(func_1(), true), vec2<bool>(all(global4.zy), false)), vec2<i32>(u_input.b, abs(global2[_wgslsmith_index_u32(70030u, 22u)] << (global0.x % 32u)))), abs(~_wgslsmith_sub_u32(func_2(2147483647i, false).c.e.x, 27373u)), func_2(~global2[_wgslsmith_index_u32(23969u, 22u)] >> (_wgslsmith_mod_u32(global0.x, 66583u) % 32u), !global4.x).a);
    var var_1 = ~max(vec2<u32>(countOneBits(_wgslsmith_dot_vec4_u32(var_0.a.e, vec4<u32>(global0.x, 21985u, 35371u, 36179u))), ~global0.x), var_0.c.e.zz);
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.a)) * var_0.a.a), !select(var_0.c.d.zx, global4.yy, global4.zx)))));
    global2 = array<i32, 22>();
    global1 = array<vec2<f32>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1196f))), var_0.a.a, _wgslsmith_f_op_f32(step(var_2, func_4(vec4<f32>(-1155f, -560f, var_2, var_0.c.a), var_1.x, vec2<bool>(global4.x, var_0.c.d.x), vec2<i32>(-37804i, 34695i)).a)), _wgslsmith_f_op_f32(-var_2)))), _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.c.e.xw, func_2(reverseBits(var_0.a.b), any(vec2<bool>(global4.x, global4.x))).a.e.yx), ~(_wgslsmith_clamp_vec2_u32(var_0.c.e.zy, vec2<u32>(var_0.c.e.x, global0.x), var_0.a.e.wz) | ~var_0.c.e.yx), var_0.a.e.wx), -u_input.a, ~min(_wgslsmith_add_vec2_u32(var_0.c.e.xw, var_0.a.e.wy), vec2<u32>(~var_1.x, _wgslsmith_clamp_u32(0u, global0.x, 6735u))));
}

