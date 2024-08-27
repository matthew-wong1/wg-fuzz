struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 1>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<u32> {
    let var_0 = vec3<f32>(1734f, _wgslsmith_f_op_f32(sign(306f)), -325f);
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - -473f) * -590f))));
    let var_2 = Struct_1(518f, !vec4<bool>(any(vec2<bool>(true, true)), true, true || (0u <= u_input.a.x), all(vec2<bool>(true, true))), ~(_wgslsmith_clamp_vec3_u32(vec3<u32>(39625u, u_input.a.x, u_input.a.x), u_input.a.yyz, global0[_wgslsmith_index_u32(u_input.a.x, 1u)]) ^ ~global0[_wgslsmith_index_u32(4294967295u, 1u)]) << (vec3<u32>(~countOneBits(7853u), 10361u, (36604u & u_input.a.x) << ((u_input.a.x >> (0u % 32u)) % 32u)) % vec3<u32>(32u)));
    var var_3 = true;
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_2.a)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_2.a, var_2.a))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-191f - 681f), _wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(floor(-852f)))))));
    return vec4<u32>(~(~_wgslsmith_sub_u32(min(0u, 4294967295u), _wgslsmith_mult_u32(u_input.a.x, var_2.c.x))), (_wgslsmith_dot_vec2_u32(~u_input.a.zy, ~vec2<u32>(46377u, u_input.a.x)) | firstLeadingBit(111828u)) >> (~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.a.zw, var_2.c.yy), 29248u) % 32u), 4294967295u, 4294967295u);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<u32>) -> Struct_1 {
    global0 = array<vec3<u32>, 1>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -224f))) - _wgslsmith_f_op_f32(step(-1286f, _wgslsmith_f_op_f32(-921f + -439f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-872f - _wgslsmith_f_op_f32(max(-458f, -698f))) - _wgslsmith_f_op_f32(f32(-1f) * -1744f)) + 300f));
    var var_1 = _wgslsmith_mod_vec4_u32(func_3(), reverseBits(u_input.a));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, 565f), vec2<f32>(276f, var_0.x), arg_0.wz)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(697f, 419f) * vec2<f32>(-1983f, var_0.x)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -1207f) * vec2<f32>(1337f, 1248f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -588f)))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.x, var_0.x), vec2<f32>(-856f, 1256f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, 550f), vec2<f32>(var_0.x, 295f), arg_0.x))), !arg_0.x))));
    global0 = array<vec3<u32>, 1>();
    return Struct_1(-245f, arg_0, _wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 4294967295u, 48215u) << (vec3<u32>(var_1.x, 0u, _wgslsmith_mult_u32(arg_1.x, var_1.x)) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(arg_1, vec3<u32>(~arg_1.x, u_input.a.x, ~var_1.x))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: bool) -> Struct_1 {
    let var_0 = ~vec3<u32>(u_input.a.x, ~(~45939u | arg_0.c.x), _wgslsmith_add_u32(firstTrailingBit(4294967295u), ~max(1u, 13613u)));
    var var_1 = !vec2<bool>(true | (_wgslsmith_mod_i32(-2147483647i, -68330i) == _wgslsmith_clamp_i32(15763i, -37987i, -51163i)), false);
    var var_2 = ~13743u;
    let var_3 = Struct_1(arg_0.a, vec4<bool>(true, true, true, true), vec3<u32>(~0u, func_2(!arg_0.b, firstTrailingBit(global0[_wgslsmith_index_u32(arg_2.x, 1u)]) << ((vec3<u32>(2026u, 1577u, arg_1.c.x) ^ var_0) % vec3<u32>(32u))).c.x, ~_wgslsmith_mult_u32(101329u | arg_0.c.x, 1u)));
    var var_4 = arg_0;
    return Struct_1(_wgslsmith_f_op_f32(-arg_1.a), select(!arg_0.b, vec4<bool>(~u_input.a.x != ~arg_1.c.x, true, true, false), func_2(!(!arg_0.b), vec3<u32>(1u, 8792u | arg_1.c.x, arg_2.x & 3866u)).b), select(firstLeadingBit(var_4.c), ~var_4.c >> ((reverseBits(vec3<u32>(94249u, 43003u, arg_0.c.x)) ^ countOneBits(var_3.c)) % vec3<u32>(32u)), var_3.b.zww));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: u32, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = ~(-20716i);
    global0 = array<vec3<u32>, 1>();
    let var_2 = func_4(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1195f - 2614f)))), arg_0.b, _wgslsmith_mod_vec3_u32(~(~arg_0.c), global0[_wgslsmith_index_u32(48570u, 1u)])), arg_0, vec4<u32>(u_input.a.x, arg_0.c.x, var_0.c.x, _wgslsmith_sub_u32(arg_2, arg_3.x)) | u_input.a, arg_0.b.x);
    global0 = array<vec3<u32>, 1>();
    return func_4(func_2(!(!arg_0.b), var_0.c), Struct_1(arg_1.x, var_0.b, var_0.c), u_input.a >> ((_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.c.x, arg_2, u_input.a.x, 605u), ~vec4<u32>(1u, arg_3.x, arg_2, arg_0.c.x), vec4<u32>(arg_3.x, var_0.c.x, 4294967295u, arg_2)) << (_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(var_2.c.x, 49804u, 4294967295u, 76294u)), select(vec4<u32>(6865u, 76579u, arg_3.x, u_input.a.x), vec4<u32>(arg_3.x, var_0.c.x, 7956u, var_0.c.x), var_2.b)) % vec4<u32>(32u))) % vec4<u32>(32u)), true);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> Struct_1 {
    var var_0 = arg_1;
    return arg_1;
}

fn func_1() -> f32 {
    global0 = array<vec3<u32>, 1>();
    var var_0 = u_input.a.zz;
    var var_1 = func_6(func_5(func_4(Struct_1(_wgslsmith_f_op_f32(trunc(-684f)), vec4<bool>(true, true, false, false), _wgslsmith_sub_vec3_u32(global0[_wgslsmith_index_u32(var_0.x, 1u)], u_input.a.wzw)), func_2(vec4<bool>(false, true, false, false), _wgslsmith_add_vec3_u32(u_input.a.zxz, vec3<u32>(u_input.a.x, var_0.x, 0u))), _wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 4294967295u, var_0.x, 4294967295u) & u_input.a), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-445f, -1101f) - vec2<f32>(1000f, -662f)))), var_0.x, countOneBits(~vec4<u32>(u_input.a.x, u_input.a.x, var_0.x, 0u))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1402f) + _wgslsmith_f_op_f32(max(-250f, 600f))) + _wgslsmith_f_op_f32(388f - _wgslsmith_f_op_f32(select(1764f, -939f, true)))), vec4<bool>(func_5(Struct_1(321f, vec4<bool>(true, false, false, false), vec3<u32>(75487u, 48393u, var_0.x)), vec2<f32>(-2288f, 794f), _wgslsmith_mult_u32(0u, var_0.x), max(vec4<u32>(0u, 58374u, 4294967295u, u_input.a.x), vec4<u32>(var_0.x, 1u, var_0.x, u_input.a.x))).b.x, select(false, true, func_2(vec4<bool>(true, true, false, false), vec3<u32>(107750u, var_0.x, var_0.x)).b.x), true, !any(vec2<bool>(false, true))), _wgslsmith_sub_vec3_u32(select(select(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], u_input.a.zxx, true), ~global0[_wgslsmith_index_u32(u_input.a.x, 1u)], any(vec3<bool>(false, true, true))), max(vec3<u32>(37089u, u_input.a.x, 0u), func_4(Struct_1(1030f, vec4<bool>(false, false, true, false), vec3<u32>(14162u, 4294967295u, var_0.x)), Struct_1(1322f, vec4<bool>(true, false, false, false), vec3<u32>(12708u, 4294967295u, u_input.a.x)), vec4<u32>(u_input.a.x, 16734u, 0u, 85948u), true).c))), func_5(func_4(func_4(Struct_1(579f, vec4<bool>(true, false, false, true), vec3<u32>(1u, 12087u, 31907u)), func_4(Struct_1(-475f, vec4<bool>(false, true, true, false), vec3<u32>(u_input.a.x, var_0.x, u_input.a.x)), Struct_1(-1362f, vec4<bool>(true, true, false, true), vec3<u32>(u_input.a.x, 36848u, 4294967295u)), u_input.a, true), vec4<u32>(var_0.x, var_0.x, 89820u, 0u), any(vec3<bool>(false, false, false))), func_2(vec4<bool>(false, true, false, false), vec3<u32>(var_0.x, var_0.x, u_input.a.x)), ~firstTrailingBit(u_input.a), any(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(312f, 1081f)) + vec2<f32>(1f, 1f)), min(u_input.a.x << (_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(0u, 1u)]) % 32u), var_0.x), ~u_input.a).c.x, false);
    var var_2 = -(~min(~1i, 1i));
    var var_3 = vec3<i32>(-7779i, abs(-13246i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1i, i32(-1i) * -2147483647i), ~_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 0i, -20092i), vec3<i32>(-1i, -1944i, 7712i))), 62499i);
    return _wgslsmith_f_op_f32(-var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2191f - 204f), -1000f)))), _wgslsmith_f_op_f32(func_1()))), func_6(func_6(Struct_1(func_4(Struct_1(688f, vec4<bool>(true, true, true, false), vec3<u32>(78482u, u_input.a.x, 5505u)), Struct_1(-1284f, vec4<bool>(false, false, false, true), vec3<u32>(86172u, 4294967295u, 3215u)), u_input.a, false).a, select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), true), vec3<u32>(17801u, 1u, u_input.a.x)), Struct_1(_wgslsmith_f_op_f32(-1193f + 246f), vec4<bool>(false, false, true, false), func_5(Struct_1(474f, vec4<bool>(true, false, true, true), global0[_wgslsmith_index_u32(51009u, 1u)]), vec2<f32>(1831f, 1433f), u_input.a.x, u_input.a).c), max(u_input.a.x, _wgslsmith_clamp_u32(1u, 41758u, 11224u)), true), func_6(func_5(Struct_1(1000f, vec4<bool>(true, false, false, true), vec3<u32>(14361u, 3826u, 1u)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, -1400f))), u_input.a.x, firstTrailingBit(vec4<u32>(u_input.a.x, 79297u, 8762u, u_input.a.x))), func_2(vec4<bool>(true, true, true, true), ~global0[_wgslsmith_index_u32(1u, 1u)]), u_input.a.x, !select(false, true, true)), 4294967295u, func_5(func_2(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true)), ~global0[_wgslsmith_index_u32(0u, 1u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-631f, 298f), vec2<f32>(807f, 208f)))), _wgslsmith_mult_u32(u_input.a.x << (0u % 32u), 783u), vec4<u32>(~u_input.a.x, 4294967295u, ~4294967295u, u_input.a.x)).b.x).b, _wgslsmith_mod_vec3_u32(func_3().xyy, u_input.a.zyw));
    var var_1 = func_4(func_5(Struct_1(_wgslsmith_f_op_f32(min(-863f, _wgslsmith_f_op_f32(-var_0.a))), vec4<bool>(var_0.b.x || false, true, func_4(var_0, Struct_1(var_0.a, vec4<bool>(var_0.b.x, true, true, true), var_0.c), vec4<u32>(u_input.a.x, 4294967295u, 3983u, 0u), true).b.x, true), var_0.c), vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(336f * -409f)))), _wgslsmith_div_u32(u_input.a.x ^ _wgslsmith_dot_vec2_u32(u_input.a.xy, vec2<u32>(4294967295u, 24997u)), var_0.c.x), func_3()), func_5(var_0, vec2<f32>(_wgslsmith_f_op_f32(floor(var_0.a)), var_0.a), 28893u, u_input.a & reverseBits(~u_input.a)), u_input.a, !(var_0.a > 1275f));
    var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(round(var_1.a)))))) * -293f), !vec4<bool>(func_2(!var_1.b, _wgslsmith_div_vec3_u32(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], vec3<u32>(1u, 88616u, var_1.c.x))).b.x, var_0.b.x, !var_1.b.x, true), vec3<u32>(var_0.c.x, u_input.a.x, countOneBits(_wgslsmith_div_u32(func_2(vec4<bool>(var_1.b.x, var_1.b.x, true, false), vec3<u32>(0u, 24491u, var_0.c.x)).c.x, ~1u))));
    global0 = array<vec3<u32>, 1>();
    let var_2 = true;
    let var_3 = !func_4(func_4(var_0, Struct_1(_wgslsmith_f_op_f32(step(var_1.a, var_1.a)), var_1.b, global0[_wgslsmith_index_u32(~var_0.c.x, 1u)]), ~(~vec4<u32>(5502u, 27562u, 26238u, 60769u)), select(!var_0.b.x, any(var_1.b.ywx), func_5(var_0, vec2<f32>(376f, var_1.a), u_input.a.x, u_input.a).b.x)), Struct_1(_wgslsmith_f_op_f32(trunc(-1282f)), var_0.b, vec3<u32>(_wgslsmith_clamp_u32(var_0.c.x, var_0.c.x, var_1.c.x), _wgslsmith_dot_vec3_u32(var_0.c, vec3<u32>(4387u, u_input.a.x, u_input.a.x)), func_6(var_0, var_0, u_input.a.x, var_1.b.x).c.x)), _wgslsmith_div_vec4_u32(~select(vec4<u32>(0u, var_0.c.x, var_1.c.x, var_0.c.x), u_input.a, var_0.b.x), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(33817u, 4294967295u, var_0.c.x, 35327u)), _wgslsmith_sub_vec4_u32(u_input.a, u_input.a))), !var_2).b.xz;
    let var_4 = _wgslsmith_mod_vec4_u32(firstLeadingBit(u_input.a), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec4<u32>(var_4.x, 67362u, u_input.a.x, _wgslsmith_sub_u32(func_4(Struct_1(var_0.a, vec4<bool>(var_1.b.x, var_1.b.x, false, true), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), var_0, vec4<u32>(var_0.c.x, var_1.c.x, 17579u, var_0.c.x), true).c.x, _wgslsmith_dot_vec3_u32(var_0.c, vec3<u32>(var_0.c.x, 20892u, 0u))))));
}

