struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<f32>(1000f, 285f, -334f, -1654f), 2147483647i), Struct_1(vec4<f32>(891f, -1000f, 499f, 543f), i32(-2147483648)), 36721u);

var<private> global1: Struct_1 = Struct_1(vec4<f32>(957f, -1000f, -815f, -386f), 34i);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2) -> f32 {
    var var_0 = arg_1;
    global1 = global0.a;
    let var_1 = true;
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(arg_1.b.a)), abs(-28716i)), global0.b, global0.c);
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(global0.b.a, vec4<f32>(global1.a.x, -887f, var_0.b.a.x, 507f), var_1)), global0.a.a)), global1.a)), _wgslsmith_sub_i32(27256i, abs(global0.b.b))), Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_0.x, global0.a.a.x, -391f) * var_0.a.a), _wgslsmith_f_op_vec4_f32(-arg_1.a.a), !vec4<bool>(true, false, true, var_1))), vec4<f32>(_wgslsmith_f_op_f32(max(-833f, global0.b.a.x)), arg_1.b.a.x, arg_0.x, _wgslsmith_f_op_f32(sign(arg_1.a.a.x))))), -min(u_input.a, -global1.b)), var_0.c);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1224f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1207f + _wgslsmith_f_op_f32(trunc(global1.a.x))), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(exp2(arg_1.a.a.x))))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.x, var_0.a.a.x)) - _wgslsmith_f_op_f32(-arg_1.a.a.x)));
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) * _wgslsmith_f_op_f32(780f - _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(-arg_2.zww), Struct_2(arg_3, arg_3, abs(u_input.c))))));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-131f + 764f), global0.a.a.x, _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(max(arg_0.x, 1576f))))) * _wgslsmith_f_op_vec4_f32(global1.a + vec4<f32>(_wgslsmith_f_op_f32(func_2(vec4<i32>(0i, global1.b, u_input.a, u_input.a), -1i, global0.a.a, global0.a)), -1333f, _wgslsmith_f_op_f32(-890f - -1667f), _wgslsmith_f_op_f32(max(439f, 490f))))));
    var var_1 = Struct_2(global0.a, global0.a, 114332u);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(994f, arg_0.x, _wgslsmith_f_op_f32(var_1.b.a.x - global1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec4<i32>(-1i, 32661i, 1i, u_input.a), var_1.b.b, vec4<f32>(-1089f, 687f, -386f, global0.a.a.x), var_1.b)) - var_1.b.a.x)))), _wgslsmith_mod_i32(firstLeadingBit(var_1.b.b), (2147483647i << (var_1.c % 32u)) >> (global0.c % 32u)));
    var var_3 = firstTrailingBit(~u_input.c);
    var_1 = Struct_2(var_1.b, global0.a, global0.c);
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(337f, -1824f, -864f, global0.a.a.x), global1.a)), _wgslsmith_f_op_vec4_f32(-var_1.a.a)))), min(~(global0.b.b | ~var_1.a.b), reverseBits(-27696i)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_2 {
    global0 = Struct_2(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(arg_3.a.zx, _wgslsmith_f_op_vec2_f32(select(global0.b.a.zz, vec2<f32>(162f, arg_0.b.a.x), false)))) - global1.a.xy), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true))), func_1(global1.a.wx, !select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), true)), 14614u);
    global1 = func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-362f, arg_0.a.a.x) - -466f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_3.a.x, -833f, true)) - _wgslsmith_f_op_f32(abs(-1130f))))), !select(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, all(vec3<bool>(true, false, false)), select(true, false, false)), true));
    let var_0 = ~(min(vec3<u32>(reverseBits(0u), arg_1.x, u_input.c), _wgslsmith_div_vec3_u32(max(u_input.b.zxx, vec3<u32>(1u, 4294967295u, u_input.b.x)), ~u_input.b.wzy)) & u_input.b.ywy);
    global0 = Struct_2(Struct_1(global1.a, -2147483647i), Struct_1(_wgslsmith_div_vec4_f32(global0.b.a, vec4<f32>(-227f, -1001f, -262f, _wgslsmith_f_op_f32(f32(-1f) * -467f))), i32(-1i) * -reverseBits(global1.b)), arg_0.c);
    var var_1 = arg_0;
    return Struct_2(global0.a, Struct_1(vec4<f32>(1019f, arg_3.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1498f), _wgslsmith_f_op_f32(f32(-1f) * -1012f)), global1.b | abs(0i)), _wgslsmith_div_u32(1u, firstTrailingBit(var_0.x ^ var_0.x)) & 31596u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(Struct_2(global0.b, func_1(vec2<f32>(_wgslsmith_div_f32(global0.a.a.x, -756f), global1.a.x), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false))), 22808u), u_input.b.yw, vec3<i32>(firstTrailingBit(func_1(_wgslsmith_f_op_vec2_f32(global1.a.yz - vec2<f32>(-466f, global1.a.x)), vec4<bool>(false, true, false, false)).b), _wgslsmith_mod_i32(58397i, _wgslsmith_mult_i32(global0.a.b, u_input.a)), -(~global1.b)), func_1(vec2<f32>(global1.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(global1.a.x, global1.a.x, false)), _wgslsmith_f_op_f32(-global0.b.a.x)))), select(vec4<bool>(all(vec4<bool>(false, false, false, false)), true, u_input.c <= 0u, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), true), _wgslsmith_div_u32(global0.c, 4294967295u) >= max(u_input.b.x, u_input.c))));
    global0 = func_4(Struct_2(global0.a, func_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1851f, global1.a.x), global1.a.yw)), select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), true), any(vec3<bool>(false, true, false)))), u_input.c), ~(~u_input.b.xx), _wgslsmith_add_vec3_i32(vec3<i32>(12574i << (u_input.c % 32u), abs(_wgslsmith_sub_i32(3420i, global0.b.b)), -2147483647i ^ global0.b.b), vec3<i32>(i32(-1i) * -1i, global1.b, firstLeadingBit(global0.b.b))), global0.b);
    global0 = Struct_2(global0.b, Struct_1(global0.b.a, -16059i), 1u << (u_input.c % 32u));
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.a.x)))));
    let var_1 = func_4(func_4(func_4(Struct_2(Struct_1(vec4<f32>(global0.b.a.x, global0.b.a.x, global1.a.x, global0.b.a.x), 2147483647i), Struct_1(global0.a.a, global1.b), ~4294967295u), _wgslsmith_add_vec2_u32(u_input.b.zw, u_input.b.wx), max(-vec3<i32>(u_input.a, -4328i, 2147483647i), _wgslsmith_div_vec3_i32(vec3<i32>(15875i, global0.b.b, -14502i), vec3<i32>(-41753i, u_input.a, u_input.a))), global0.b), ~(~u_input.b.wx), _wgslsmith_clamp_vec3_i32(max(vec3<i32>(1i, 38550i, global0.b.b), vec3<i32>(2147483647i, global1.b, global0.a.b)), vec3<i32>(global0.a.b, global0.b.b, global0.a.b), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, global0.b.b, -1i), vec3<i32>(1i, u_input.a, global0.b.b))) >> (vec3<u32>(select(53957u, u_input.c, false), u_input.b.x, u_input.c) % vec3<u32>(32u)), func_4(func_4(Struct_2(global0.a, Struct_1(global0.b.a, global0.b.b), 4294967295u), ~vec2<u32>(1u, 1u), firstLeadingBit(vec3<i32>(-74957i, 2147483647i, 56168i)), func_1(global0.b.a.xw, vec4<bool>(true, false, true, false))), ~vec2<u32>(global0.c, 4294967295u), ~firstLeadingBit(vec3<i32>(0i, 26105i, -1i)), global0.a).b), reverseBits(~_wgslsmith_add_vec2_u32(u_input.b.yx, u_input.b.yx) << ((_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.b.x, 0u), vec2<u32>(global0.c, 1u)) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 53691u), u_input.b.xz)) % vec2<u32>(32u))), countOneBits(vec3<i32>(_wgslsmith_clamp_i32(u_input.a, ~(-1i), -u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-1i, -16850i)) ^ _wgslsmith_div_i32(u_input.a, 4301i), ~(-2147483647i))), Struct_1(_wgslsmith_f_op_vec4_f32(min(global0.b.a, global1.a)), abs(abs(31017i))));
    let var_2 = u_input.b.yx;
    var var_3 = func_4(func_4(func_4(func_4(var_1, reverseBits(vec2<u32>(1u, var_1.c)), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, -2147483647i, global1.b), vec3<i32>(global1.b, -2147483647i, -3954i)), Struct_1(global0.a.a, -1i)), ~(~vec2<u32>(global0.c, var_1.c)), -select(vec3<i32>(32101i, -16957i, var_1.a.b), vec3<i32>(global0.b.b, global0.a.b, 2147483647i), false), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1450f, global1.a.x, -1012f, var_1.a.a.x) * vec4<f32>(var_1.a.a.x, var_1.a.a.x, var_1.b.a.x, global0.b.a.x)), -23410i)), var_2, select(~(vec3<i32>(1i, var_1.b.b, global1.b) >> (vec3<u32>(14945u, var_1.c, var_1.c) % vec3<u32>(32u))), vec3<i32>(global0.a.b << (var_2.x % 32u), _wgslsmith_mult_i32(37895i, -48571i), global1.b), !(var_1.c < 4294967295u)), func_1(vec2<f32>(-685f, _wgslsmith_f_op_f32(1699f * 546f)), vec4<bool>(true, true, true, true))), ~var_2, ~abs(vec3<i32>(global0.b.b, _wgslsmith_mod_i32(-22726i, u_input.a), u_input.a)), func_4(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.a.x, var_1.b.a.x, -301f, -222f) - vec4<f32>(208f, -417f, var_1.b.a.x, var_1.a.a.x)), abs(44754i)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-473f, global1.a.x, var_1.b.a.x, 339f)), 1i), countOneBits(u_input.b.x) & _wgslsmith_mod_u32(74922u, global0.c)), vec2<u32>(var_1.c, u_input.b.x), vec3<i32>(56940i, global0.a.b, -_wgslsmith_mod_i32(var_1.a.b, -20136i)), var_1.a).a);
    let var_4 = Struct_2(func_1(vec2<f32>(_wgslsmith_f_op_f32(-1150f - 953f), _wgslsmith_f_op_f32(global0.a.a.x + var_3.b.a.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), all(vec2<bool>(false, false))))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(func_1(vec2<f32>(-753f, 1431f), vec4<bool>(false, true, true, false)).a.x - _wgslsmith_f_op_f32(-126f - -971f)), 313f, global0.a.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-871f - var_1.b.a.x)))), -(_wgslsmith_mod_i32(global1.b, var_3.b.b) | (global0.a.b | 1278i))), 33526u);
    let x = u_input.a;
    s_output = StorageBuffer(func_4(var_1, _wgslsmith_mult_vec2_u32(reverseBits(~var_2), abs(var_2)), vec3<i32>(1i, var_3.a.b, ~_wgslsmith_mod_i32(-1i, var_3.b.b)), func_1(vec2<f32>(794f, 456f), vec4<bool>(select(true, false, false), all(vec4<bool>(true, false, true, false)), all(vec4<bool>(false, false, false, false)), var_3.a.a.x <= var_3.b.a.x))).b.a, u_input.b, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.b.a.x, var_3.a.a.x))), 1167f), func_4(Struct_2(func_1(vec2<f32>(var_4.a.a.x, global1.a.x), vec4<bool>(false, false, false, true)), func_4(Struct_2(Struct_1(global0.b.a, 0i), Struct_1(var_3.a.a, u_input.a), 51332u), vec2<u32>(var_1.c, 4294967295u), vec3<i32>(-69538i, -15947i, global1.b), Struct_1(vec4<f32>(var_4.a.a.x, global1.a.x, var_4.a.a.x, -1000f), 11854i)).b, _wgslsmith_mod_u32(var_1.c, var_2.x)), vec2<u32>(var_3.c, 49380u), firstLeadingBit(vec3<i32>(-8429i, -19230i, var_1.b.b)), Struct_1(vec4<f32>(var_3.b.a.x, global1.a.x, global1.a.x, var_1.a.a.x), 1i)).a.a.x, _wgslsmith_div_f32(var_4.a.a.x, _wgslsmith_f_op_f32(-318f - _wgslsmith_f_op_f32(571f + 968f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.a.a.x * global0.a.a.x)))), ~vec3<i32>(~(var_3.b.b ^ 2147483647i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-20609i, -11756i, 1936i, 40971i), vec4<i32>(6665i, 2147483647i, global1.b, 2147483647i)), reverseBits(1i)));
}

