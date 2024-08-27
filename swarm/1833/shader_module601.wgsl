struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<bool>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12>;

var<private> global1: array<Struct_3, 6>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    var var_0 = ~(-vec3<i32>(1i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_3.d, u_input.a, -26379i, -2147483647i)), vec4<i32>(2147483647i, -2147483647i, arg_3.d, arg_3.d)), -35999i));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-892f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -408f))))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<u32>) -> i32 {
    var var_0 = _wgslsmith_add_i32(_wgslsmith_mod_i32(-_wgslsmith_add_i32(31325i, 0i), -1i), arg_0.x) >> (arg_1.x % 32u);
    global0 = array<Struct_2, 12>();
    var_0 = _wgslsmith_mod_i32(0i, 1i) | _wgslsmith_div_i32(_wgslsmith_mod_i32(-u_input.a << (~arg_1.x % 32u), _wgslsmith_clamp_i32(arg_0.x, ~arg_0.x, u_input.a)), 67890i);
    let var_1 = _wgslsmith_f_op_f32(func_3(92345u, vec3<f32>(-1936f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(878f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -234f), _wgslsmith_f_op_f32(-1167f + 1125f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-238f)))), global0[_wgslsmith_index_u32(arg_1.x, 12u)], Struct_1(false, _wgslsmith_f_op_f32(f32(-1f) * -2314f), vec4<bool>(true, true, true, true), _wgslsmith_dot_vec2_i32(vec2<i32>(~(-1i), arg_0.x), max(arg_0, arg_0) ^ firstTrailingBit(arg_0)), arg_1.x)));
    global0 = array<Struct_2, 12>();
    return u_input.b >> (firstLeadingBit(reverseBits(~reverseBits(0u))) % 32u);
}

fn func_4(arg_0: Struct_1) -> i32 {
    let var_0 = ~firstTrailingBit(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.e, 1u, arg_0.e) << (vec3<u32>(arg_0.e, arg_0.e, 65090u) % vec3<u32>(32u)), abs(vec3<u32>(66514u, arg_0.e, arg_0.e)), vec3<u32>(4294967295u, arg_0.e, 79398u)), vec3<u32>(~30811u, abs(arg_0.e), ~arg_0.e)));
    global1 = array<Struct_3, 6>();
    let var_1 = ~arg_0.d;
    global0 = array<Struct_2, 12>();
    let var_2 = _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(0i, -31012i), arg_0.d, _wgslsmith_mod_i32(0i, ~max(arg_0.d, -1i)), max(-1i, -u_input.a << (~arg_0.e % 32u))), select(-max(vec4<i32>(var_1, u_input.a, u_input.d, -1i), vec4<i32>(28824i, 12430i, var_1, -2147483647i) | vec4<i32>(var_1, u_input.c, arg_0.d, var_1)), abs(vec4<i32>(_wgslsmith_mod_i32(arg_0.d, var_1), _wgslsmith_mod_i32(arg_0.d, -24457i), abs(arg_0.d), _wgslsmith_sub_i32(-16084i, -23901i))), (_wgslsmith_f_op_f32(abs(-535f)) > _wgslsmith_f_op_f32(-arg_0.b)) || any(select(arg_0.c.xxz, vec3<bool>(false, arg_0.a, true), true))));
    return _wgslsmith_add_i32(min(_wgslsmith_clamp_i32(var_2.x, func_2(~vec2<i32>(u_input.d, var_2.x), ~vec3<u32>(47927u, 4294967295u, arg_0.e)), 77376i), firstLeadingBit(~1i)), -(firstLeadingBit(arg_0.d) | 4480i));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3) -> Struct_2 {
    let var_0 = abs(_wgslsmith_clamp_i32(-76698i, -2147483647i, min(_wgslsmith_mod_i32(-11086i, 23242i), (u_input.b ^ u_input.d) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.e, arg_1.a, arg_0.e, 4294967295u), vec4<u32>(arg_1.a, 0u, 1u, arg_1.d.a.e)) % 32u))));
    var var_1 = vec2<i32>(_wgslsmith_sub_i32(min(_wgslsmith_add_i32(arg_1.d.a.d, 0i), 0i), 48332i), func_4(Struct_1(_wgslsmith_f_op_f32(-arg_0.b) < -312f, 792f, select(select(vec4<bool>(false, false, arg_0.c.x, arg_1.d.a.c.x), arg_0.c, vec4<bool>(false, true, true, true)), select(vec4<bool>(true, false, false, arg_1.d.a.c.x), arg_0.c, arg_0.c), arg_1.d.a.c.x & arg_0.c.x), func_2(arg_1.c.yx, vec3<u32>(arg_1.a, arg_1.d.a.e, 12252u)) >> (~arg_0.e % 32u), ~0u)));
    var var_2 = arg_0.c.zyx;
    var_2 = arg_1.d.a.c.yyy;
    let var_3 = func_4(arg_1.d.a);
    return arg_1.d;
}

fn func_5(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: i32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_0.zw, vec2<f32>(arg_2.a.b, arg_0.x), arg_2.a.c.x)), arg_0.xw), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1193f, arg_2.a.b) * arg_0.zw))) + arg_0.yz), _wgslsmith_f_op_vec2_f32(-arg_0.zw)));
    var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(arg_0.xw)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.wz - vec2<f32>(1985f, -201f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_0.ww, vec2<f32>(arg_0.x, 251f), true)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.zw - _wgslsmith_f_op_vec2_f32(-arg_0.zz)) * arg_0.zy))));
    global0 = array<Struct_2, 12>();
    var var_1 = global0[_wgslsmith_index_u32(arg_2.a.e, 12u)];
    var_1 = global0[_wgslsmith_index_u32(min(1u, firstLeadingBit(var_1.a.e)), 12u)];
    return vec4<bool>(true, !(!var_1.a.c.x & false), all(var_1.a.c), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!(u_input.a >= -2147483647i), -1000f, !select(vec4<bool>(true, true, true, true), func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-692f, -375f, 1904f, 1594f)), ~vec2<i32>(-18066i, u_input.a), func_1(Struct_1(true, -1016f, vec4<bool>(true, false, true, true), u_input.c, 83920u), Struct_3(1u, -1361f, vec4<i32>(u_input.a, -2147483647i, 13997i, u_input.d), global0[_wgslsmith_index_u32(91383u, 12u)], u_input.b)), 2147483647i), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), u_input.a, ~1u);
    let var_1 = vec3<bool>(true, !var_0.a, all(!(!(!vec4<bool>(var_0.c.x, var_0.c.x, false, true)))));
    let var_2 = Struct_1(var_0.c.x, 262f, !func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(679f, var_0.b, var_0.b, var_0.b))), vec2<i32>(var_0.d >> (var_0.e % 32u), var_0.d), func_1(func_1(Struct_1(true, var_0.b, var_0.c, u_input.b, var_0.e), global1[_wgslsmith_index_u32(19453u, 6u)]).a, global1[_wgslsmith_index_u32(4294967295u, 6u)]), u_input.d), ~(~var_0.d), ~(var_0.e >> (_wgslsmith_sub_u32(~var_0.e, 0u) % 32u)));
    var var_3 = ~(~(~(~vec2<u32>(1u, var_2.e)))) ^ select(max(_wgslsmith_sub_vec2_u32(vec2<u32>(var_2.e, 47734u) << (vec2<u32>(var_0.e, 0u) % vec2<u32>(32u)), max(vec2<u32>(var_0.e, 28011u), vec2<u32>(var_2.e, 19291u))), (vec2<u32>(var_2.e, 69528u) >> (vec2<u32>(5479u, 0u) % vec2<u32>(32u))) << (~vec2<u32>(var_2.e, 0u) % vec2<u32>(32u))), vec2<u32>(reverseBits(var_2.e), _wgslsmith_sub_u32(var_0.e, 4294967295u)) << (~(~vec2<u32>(4294967295u, var_0.e)) % vec2<u32>(32u)), true && var_2.a);
    var_0 = var_2;
    var var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.d, firstTrailingBit(~(~vec4<i32>(var_0.d, var_0.d, -8778i, 2195i) << (~vec4<u32>(var_2.e, var_4.e, var_3.x, var_2.e) % vec4<u32>(32u)))));
}

