struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: f32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
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

var<private> global0: array<bool, 31>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_4, arg_3: Struct_2) -> f32 {
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_3.b.a - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.a, arg_0.x)))));
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: vec4<u32>, arg_3: vec4<f32>) -> Struct_2 {
    global0 = array<bool, 31>();
    let var_0 = arg_1;
    let var_1 = countOneBits(1u);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-866f, _wgslsmith_f_op_f32(-arg_3.x)))) - _wgslsmith_div_f32(_wgslsmith_div_f32(830f, _wgslsmith_f_op_f32(func_3(arg_3.yx, arg_2.x, Struct_4(arg_3.x, Struct_3(Struct_2(1u, Struct_1(arg_3.x, vec2<bool>(arg_1, global0[_wgslsmith_index_u32(70075u, 31u)]), arg_3.x, arg_3.x, 38065u), vec4<u32>(14738u, arg_0.x, arg_0.x, var_1), u_input.b.xw), vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(arg_2.x, 31u)]), Struct_2(arg_0.x, Struct_1(892f, vec2<bool>(false, false), 323f, -823f, arg_2.x), vec4<u32>(0u, var_1, 30952u, 1u), u_input.b.yx)), vec2<f32>(arg_3.x, 418f), vec3<u32>(var_1, arg_0.x, var_1)), Struct_2(arg_0.x, Struct_1(arg_3.x, vec2<bool>(false, global0[_wgslsmith_index_u32(arg_2.x, 31u)]), arg_3.x, 981f, 32521u), arg_2, u_input.b.zz)))), arg_3.x)), !select(vec2<bool>(true, all(vec2<bool>(var_0, global0[_wgslsmith_index_u32(0u, 31u)]))), vec2<bool>(all(vec4<bool>(arg_1, arg_1, global0[_wgslsmith_index_u32(arg_0.x, 31u)], false)), true), vec2<bool>(true, true)), arg_3.x, _wgslsmith_f_op_f32(-arg_3.x), 1u);
    global0 = array<bool, 31>();
    return Struct_2(_wgslsmith_dot_vec4_u32(arg_2, vec4<u32>(~var_2.e, var_1, 33687u, _wgslsmith_dot_vec2_u32(arg_2.xz, vec2<u32>(var_2.e, arg_2.x))) & abs(_wgslsmith_mult_vec4_u32(arg_2, vec4<u32>(arg_2.x, 4294967295u, 13361u, var_2.e)))), var_2, ~select(firstTrailingBit(_wgslsmith_mult_vec4_u32(arg_2, arg_2)), select(vec4<u32>(4294967295u, 3490u, 0u, var_2.e), vec4<u32>(0u, arg_2.x, arg_0.x, 8402u), !vec4<bool>(false, var_2.b.x, false, var_2.b.x)), arg_1), u_input.b.zx);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32, arg_3: f32) -> Struct_3 {
    let var_0 = func_2(abs(arg_1.c.xw), !(!(!(!arg_1.b.b.x))), reverseBits(vec4<u32>(56317u, 1u, 4294967295u, 0u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-295f)), _wgslsmith_f_op_f32(arg_0.c - arg_1.b.a), _wgslsmith_f_op_f32(-arg_1.b.d), _wgslsmith_f_op_f32(select(arg_0.d, arg_1.b.c, true)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, 1204f, 1320f, arg_1.b.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, -1719f, arg_0.a, arg_3) - vec4<f32>(-2279f, arg_1.b.a, arg_1.b.a, arg_0.d)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1492f, arg_3, arg_0.d, arg_3), vec4<f32>(arg_0.c, 836f, 1000f, arg_1.b.a), vec4<bool>(true, arg_1.b.b.x, arg_0.b.x, global0[_wgslsmith_index_u32(1u, 31u)])))), select(vec4<bool>(global0[_wgslsmith_index_u32(93003u, 31u)], arg_0.b.x, arg_0.b.x, true), vec4<bool>(false, true, arg_1.b.b.x, arg_1.b.b.x), true))), vec4<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(arg_0.e, 31u)], arg_0.b.x, false, global0[_wgslsmith_index_u32(1870u, 31u)])), true, true, 31769u <= ~arg_1.c.x)))).b;
    global0 = array<bool, 31>();
    global0 = array<bool, 31>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(trunc(arg_0.d))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-552f - var_0.a))))), !vec2<bool>((u_input.a > 1i) && arg_0.b.x, true), arg_0.a, arg_0.c, 4294967295u);
    var var_2 = vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.e, 36661u) << (vec2<u32>(arg_0.e, 4294967295u) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(arg_1.c.wz, vec2<u32>(57983u, arg_2))), reverseBits(reverseBits(arg_1.c.xw))), abs(~_wgslsmith_div_vec2_u32(arg_1.c.zx, vec2<u32>(4294967295u, var_1.e)))), arg_0.e & 4294967295u, _wgslsmith_mult_u32(select(~(20711u << (arg_0.e % 32u)), ~arg_0.e ^ ~arg_1.b.e, func_2(vec2<u32>(arg_1.b.e, var_1.e), false, vec4<u32>(arg_1.c.x, arg_0.e, 24180u, arg_0.e) << (vec4<u32>(arg_1.b.e, 8829u, arg_0.e, arg_1.c.x) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.a, arg_3, -132f, -228f)))).b.b.x), 70720u & reverseBits(arg_2)));
    return Struct_3(Struct_2(countOneBits(arg_2), func_2(reverseBits(~vec2<u32>(1u, 4294967295u)), select(false && var_0.b.x, true, false), vec4<u32>(_wgslsmith_clamp_u32(35038u, arg_0.e, var_0.e), _wgslsmith_dot_vec3_u32(arg_1.c.xzw, vec3<u32>(1u, var_0.e, arg_2)), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, 2128u), arg_1.c.wy), _wgslsmith_dot_vec2_u32(arg_1.c.yw, vec2<u32>(9073u, arg_1.b.e))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d, -1355f, -743f, 137f) * vec4<f32>(arg_1.b.c, 384f, 1214f, var_0.d))))).b, arg_1.c, vec2<i32>(i32(-1i) * -arg_1.d.x, u_input.a)), !(!(!select(vec4<bool>(false, var_1.b.x, true, false), vec4<bool>(arg_0.b.x, false, arg_0.b.x, global0[_wgslsmith_index_u32(var_0.e, 31u)]), vec4<bool>(var_1.b.x, true, arg_1.b.b.x, arg_0.b.x)))), Struct_2(var_2.x, Struct_1(1327f, !vec2<bool>(arg_0.b.x, arg_0.b.x), 1146f, _wgslsmith_f_op_f32(arg_1.b.c + _wgslsmith_f_op_f32(-arg_0.c)), 0u), abs(~vec4<u32>(34234u, 31062u, 55912u, var_2.x)), vec2<i32>(func_2(vec2<u32>(1u, 44960u), any(vec2<bool>(true, arg_0.b.x)), arg_1.c, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.d, -494f, arg_3, arg_0.c), vec4<f32>(-342f, -748f, arg_1.b.c, -491f)))).d.x, ~_wgslsmith_add_i32(u_input.b.x, arg_1.d.x))));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: i32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.b.d) - _wgslsmith_f_op_f32(max(386f, 404f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.b.c - arg_1.a.b.d))), arg_1.a.b.d) * 923f);
    var_0 = -1495f;
    var var_1 = _wgslsmith_mod_u32(13537u, _wgslsmith_add_u32(abs(1u), _wgslsmith_dot_vec4_u32(arg_1.c.c, vec4<u32>(1u & arg_1.c.c.x, arg_1.c.c.x & arg_1.a.b.e, arg_1.a.c.x, arg_1.a.c.x))));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.b.d + arg_1.c.b.c) * -920f), func_4(arg_1.c.b, func_2(vec2<u32>(firstTrailingBit(4294967295u), 1u), func_2(vec2<u32>(arg_1.c.b.e, 30382u) >> (vec2<u32>(arg_1.a.c.x, arg_1.a.a) % vec2<u32>(32u)), true, arg_1.a.c, _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a.b.a, arg_1.a.b.a, arg_1.a.b.c, arg_1.c.b.c), vec4<f32>(-101f, -849f, 795f, -1000f))).b.b.x, arg_1.c.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.b.d, -337f, 728f, -219f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-646f, arg_1.c.b.a, 580f, arg_1.a.b.a) + vec4<f32>(arg_1.a.b.d, -365f, arg_1.c.b.d, 2000f)))), countOneBits(_wgslsmith_mod_u32(arg_1.a.a, firstTrailingBit(arg_1.a.b.e))), _wgslsmith_f_op_f32(-388f * -1315f)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1108f, 1518f)) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1.c.b.d, 418f)))))))), arg_1.a.c.yzz | arg_1.a.c.yxz);
    var var_3 = _wgslsmith_mult_vec3_i32(max((u_input.b.wzz | (u_input.b.xwy & u_input.b.www)) << (_wgslsmith_div_vec3_u32(var_2.d, arg_1.c.c.wxx) % vec3<u32>(32u)), ~vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_add_i32(arg_2, -12339i), -1i)), vec3<i32>(var_2.b.c.d.x, func_2(var_2.d.zx, true, _wgslsmith_mult_vec4_u32(var_2.b.c.c << (var_2.b.c.c % vec4<u32>(32u)), arg_1.a.c), vec4<f32>(_wgslsmith_div_f32(arg_1.c.b.a, -916f), _wgslsmith_f_op_f32(-arg_1.a.b.d), _wgslsmith_f_op_f32(-var_2.b.a.b.a), var_2.b.a.b.c)).d.x, ~(-arg_1.a.d.x)));
    return arg_1.c;
}

fn func_1() -> u32 {
    var var_0 = Struct_4(-645f, Struct_3(func_5(!(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(10696u, 31u)], global0[_wgslsmith_index_u32(7215u, 31u)], global0[_wgslsmith_index_u32(0u, 31u)])), func_4(Struct_1(1369f, vec2<bool>(global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(2306u, 31u)]), -1000f, 144f, 0u), func_2(vec2<u32>(4294967295u, 32533u), global0[_wgslsmith_index_u32(0u, 31u)], vec4<u32>(0u, 59479u, 0u, 7144u), vec4<f32>(-525f, 622f, 687f, 806f)), ~43076u, _wgslsmith_f_op_f32(799f * 1802f)), func_4(func_2(vec2<u32>(1u, 1u), false, vec4<u32>(4294967295u, 4294967295u, 27372u, 0u), vec4<f32>(671f, -1180f, 781f, -1104f)).b, func_2(vec2<u32>(0u, 1u), false, vec4<u32>(0u, 4294967295u, 1u, 1u), vec4<f32>(797f, -579f, 897f, -599f)), 0u, _wgslsmith_f_op_f32(-261f * 1114f)).a.d.x), select(!select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 31u)], false), vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(73438u, 31u)], global0[_wgslsmith_index_u32(1u, 31u)]), global0[_wgslsmith_index_u32(4294967295u, 31u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 31u)], true, true, global0[_wgslsmith_index_u32(4294967295u, 31u)]), !vec4<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(17605u, 31u)]), true), !vec4<bool>(global0[_wgslsmith_index_u32(0u, 31u)], false, global0[_wgslsmith_index_u32(0u, 31u)], true)), func_5(!(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(35116u, 31u)], global0[_wgslsmith_index_u32(95992u, 31u)], global0[_wgslsmith_index_u32(1u, 31u)])), Struct_3(Struct_2(2995u, Struct_1(482f, vec2<bool>(global0[_wgslsmith_index_u32(44863u, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)]), 1104f, -1796f, 4294967295u), vec4<u32>(1u, 7001u, 36954u, 121758u), u_input.b.wx), vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(0u, 31u)]), func_4(Struct_1(2639f, vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(2353u, 31u)]), -599f, -846f, 4294967295u), Struct_2(4294967295u, Struct_1(156f, vec2<bool>(true, false), -1277f, 893f, 0u), vec4<u32>(0u, 447u, 29700u, 4294967295u), vec2<i32>(u_input.a, u_input.a)), 1u, 311f).c), abs(~0i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2022f, -745f), vec2<f32>(710f, -112f), global0[_wgslsmith_index_u32(0u, 31u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(111f, 1089f) * vec2<f32>(505f, 2573f))) * vec2<f32>(1f, 1f))), vec3<u32>(~(~_wgslsmith_add_u32(1u, 0u)), ~14625u, 4294967295u));
    var var_1 = _wgslsmith_f_op_f32(round(-1285f));
    return ~func_5(!vec4<bool>(!global0[_wgslsmith_index_u32(var_0.d.x, 31u)], var_0.b.c.b.b.x, true, var_0.b.a.b.e <= 25382u), Struct_3(Struct_2(min(var_0.b.a.b.e, var_0.d.x), Struct_1(var_0.a, vec2<bool>(global0[_wgslsmith_index_u32(var_0.b.a.b.e, 31u)], true), 1489f, var_0.c.x, 52207u), min(var_0.b.a.c, var_0.b.a.c), min(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(27305i, 8341i))), select(vec4<bool>(true, var_0.b.c.b.b.x, true, var_0.b.a.b.b.x), vec4<bool>(true, false, global0[_wgslsmith_index_u32(4294967295u, 31u)], false), var_0.b.b), func_2(vec2<u32>(0u, var_0.b.a.b.e), func_5(var_0.b.b, var_0.b, var_0.b.c.d.x).b.b.x, var_0.b.c.c & var_0.b.a.c, vec4<f32>(-565f, 1000f, var_0.b.c.b.a, -995f))), u_input.a).c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_u32(min(_wgslsmith_div_vec2_u32(vec2<u32>(abs(54048u), ~4294967295u), vec2<u32>(~99217u, 1u)), ~vec2<u32>(1u, 1u)), _wgslsmith_div_vec2_u32(vec2<u32>(countOneBits(firstTrailingBit(71856u)), _wgslsmith_mod_u32(func_1(), 36035u)), vec2<u32>(_wgslsmith_clamp_u32(1u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(35736u, 1u, 4294967295u, 54502u), vec4<u32>(40402u, 1u, 50681u, 0u))), 1u)));
    let var_1 = func_2(abs(~vec2<u32>(reverseBits(var_0), ~var_0)), global0[_wgslsmith_index_u32(var_0, 31u)], vec4<u32>(countOneBits(~4294967295u), _wgslsmith_add_u32(var_0, 4294967295u >> (var_0 % 32u)), 73528u, _wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(0u ^ var_0, _wgslsmith_sub_u32(1u, var_0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2218f, -1927f, -732f, -386f) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1916f, 1207f, 1253f, 365f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-582f, -838f, -1414f, 1000f))))))).b;
    var var_2 = vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(firstTrailingBit(countOneBits(vec4<i32>(u_input.a, u_input.a, -1i, u_input.b.x))), min(_wgslsmith_sub_vec4_i32(vec4<i32>(-47221i, -12820i, u_input.a, u_input.a), u_input.b), reverseBits(vec4<i32>(-43923i, u_input.a, u_input.a, u_input.b.x)))), firstTrailingBit(-u_input.b)), u_input.a, u_input.b.x, _wgslsmith_add_i32(u_input.b.x, max(countOneBits(40762i), u_input.b.x)));
    global0 = array<bool, 31>();
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a * -986f) * var_1.d), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1150f + var_1.a)))), 4294967295u, Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<f32>(var_1.d, var_1.c), var_1.e, Struct_4(var_1.a, Struct_3(Struct_2(var_1.e, var_1, vec4<u32>(var_1.e, var_1.e, var_0, 1u), vec2<i32>(u_input.b.x, 2301i)), vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 31u)], var_1.b.x, var_1.b.x), Struct_2(var_0, Struct_1(var_1.a, vec2<bool>(false, true), var_1.a, var_1.a, 1u), vec4<u32>(var_0, var_0, var_0, 8284u), u_input.b.zw)), vec2<f32>(-650f, -1641f), vec3<u32>(4294967295u, var_0, var_0)), Struct_2(4294967295u, Struct_1(var_1.d, var_1.b, var_1.a, 629f, 54179u), vec4<u32>(var_1.e, 1u, 1u, var_0), vec2<i32>(var_2.x, var_2.x))))), Struct_3(func_4(var_1, Struct_2(var_0, var_1, vec4<u32>(var_0, 1u, 4294967295u, var_0), vec2<i32>(u_input.b.x, var_2.x)), 8828u, 689f).c, vec4<bool>(var_1.b.x, global0[_wgslsmith_index_u32(24440u, 31u)], true, false), func_2(vec2<u32>(var_0, 25910u), true, vec4<u32>(55408u, 4294967295u, var_1.e, 1u), vec4<f32>(var_1.c, -520f, 871f, var_1.a))), vec2<f32>(var_1.c, -105f), vec3<u32>(_wgslsmith_div_u32(var_0, 20635u), 44740u, 4294967295u)), func_2(func_4(Struct_1(var_1.c, vec2<bool>(false, true), var_1.d, -781f, var_1.e), Struct_2(var_1.e, var_1, vec4<u32>(var_0, var_0, 1u, 1u), var_2.wy), _wgslsmith_mod_u32(var_0, 47738u), _wgslsmith_f_op_f32(step(428f, var_1.a))).c.c.zx, global0[_wgslsmith_index_u32(1u, 31u)], _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.e, 0u, 21775u, var_1.e), _wgslsmith_div_vec4_u32(vec4<u32>(22392u, var_0, var_1.e, var_0), vec4<u32>(var_0, var_1.e, var_1.e, 1u)), countOneBits(vec4<u32>(var_0, var_0, var_0, var_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, var_1.c, -1063f, 1305f))))))) - -806f);
    let var_4 = func_5(select(select(vec4<bool>(true, true, true, true), vec4<bool>(!var_1.b.x, true, true, true), select(select(vec4<bool>(var_1.b.x, global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(var_0, 31u)], false), vec4<bool>(global0[_wgslsmith_index_u32(var_1.e, 31u)], global0[_wgslsmith_index_u32(48210u, 31u)], var_1.b.x, true), vec4<bool>(false, false, false, false)), !vec4<bool>(false, global0[_wgslsmith_index_u32(var_1.e, 31u)], false, true), func_4(Struct_1(1368f, vec2<bool>(global0[_wgslsmith_index_u32(var_0, 31u)], var_1.b.x), -357f, var_1.c, var_1.e), Struct_2(39189u, Struct_1(1114f, vec2<bool>(global0[_wgslsmith_index_u32(1u, 31u)], false), 920f, var_1.d, var_1.e), vec4<u32>(var_1.e, var_1.e, 0u, var_1.e), vec2<i32>(32980i, u_input.b.x)), 4294967295u, var_1.d).b)), vec4<bool>(var_1.b.x && true, var_1.b.x, true, !(!var_1.b.x)), select(!select(vec4<bool>(var_1.b.x, true, var_1.b.x, global0[_wgslsmith_index_u32(28596u, 31u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_0, 31u)], false, var_1.b.x, true), false), !vec4<bool>(var_1.b.x, true, global0[_wgslsmith_index_u32(var_1.e, 31u)], var_1.b.x), !(!vec4<bool>(global0[_wgslsmith_index_u32(10100u, 31u)], global0[_wgslsmith_index_u32(var_1.e, 31u)], true, global0[_wgslsmith_index_u32(var_0, 31u)])))), Struct_3(Struct_2(func_4(func_4(Struct_1(var_1.a, vec2<bool>(global0[_wgslsmith_index_u32(var_0, 31u)], true), var_1.a, -1300f, 4294967295u), Struct_2(19247u, Struct_1(var_1.d, var_1.b, var_1.d, var_1.d, 0u), vec4<u32>(var_0, var_1.e, var_0, var_0), var_2.xy), var_0, -379f).c.b, func_4(Struct_1(var_1.c, vec2<bool>(true, var_1.b.x), var_1.a, var_1.a, 0u), Struct_2(var_1.e, Struct_1(var_1.c, var_1.b, -499f, 1539f, 1u), vec4<u32>(25031u, var_0, 1u, var_1.e), u_input.b.yz), var_1.e, var_1.c).a, var_0, var_1.a).c.b.e, func_2(vec2<u32>(40177u, var_0) ^ vec2<u32>(61955u, 0u), !var_1.b.x, firstLeadingBit(vec4<u32>(0u, 73425u, 4294967295u, var_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-222f, -434f, var_1.c, -830f))).b, func_4(var_1, Struct_2(var_1.e, var_1, vec4<u32>(var_0, 4294967295u, var_1.e, 11814u), u_input.b.zy), var_0, var_1.c).c.c, firstLeadingBit(vec2<i32>(2147483647i, var_2.x)) ^ abs(u_input.b.wz)), !vec4<bool>(var_1.b.x, !var_1.b.x, false, global0[_wgslsmith_index_u32(var_0, 31u)] | var_1.b.x), Struct_2(var_1.e, Struct_1(var_1.a, vec2<bool>(var_1.b.x, var_1.b.x), _wgslsmith_f_op_f32(-var_1.d), var_1.c, 11161u & var_1.e), func_5(select(vec4<bool>(false, true, false, true), vec4<bool>(global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(7322u, 31u)], global0[_wgslsmith_index_u32(var_1.e, 31u)], global0[_wgslsmith_index_u32(3563u, 31u)]), vec4<bool>(true, var_1.b.x, true, true)), func_4(Struct_1(var_1.d, var_1.b, var_1.d, -1378f, var_1.e), Struct_2(var_0, var_1, vec4<u32>(31246u, var_0, 23604u, 1u), var_2.yy), var_1.e, -1094f), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -5625i), vec2<i32>(-25893i, var_2.x))).c, -vec2<i32>(u_input.b.x, var_2.x))), -8519i).b;
    var var_5 = func_4(var_1, Struct_2(var_4.e << (_wgslsmith_dot_vec4_u32(~vec4<u32>(9053u, 0u, 40701u, 41955u), ~vec4<u32>(var_4.e, var_1.e, var_1.e, var_4.e)) % 32u), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-382f, var_4.d))), var_1.b, var_4.d, 1091f, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(48022u, var_1.e, 28055u, 75239u), vec4<u32>(4294967295u, var_1.e, var_1.e, var_4.e)))), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.e, var_0, var_0, 42969u) << (vec4<u32>(var_1.e, 15496u, var_1.e, 0u) % vec4<u32>(32u)), ~vec4<u32>(var_1.e, 12411u, var_1.e, var_4.e), ~vec4<u32>(var_1.e, var_1.e, 4294967295u, var_0)) << (vec4<u32>(1u, var_4.e, var_0, ~var_0) % vec4<u32>(32u)), u_input.b.xy), reverseBits(~(~var_0)), 757f).c.b;
    var_5 = Struct_1(917f, vec2<bool>(var_4.b.x || global0[_wgslsmith_index_u32(0u, 31u)], true), _wgslsmith_f_op_f32(select(var_1.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) - 458f), _wgslsmith_f_op_f32(f32(-1f) * -1026f))), true)), _wgslsmith_div_f32(var_4.a, var_4.c), abs(countOneBits(min(abs(35114u), ~0u))));
    var_3 = var_4.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.c, -595f, var_5.d, var_4.d), vec4<f32>(-1561f, -737f, -564f, var_4.d))) * vec4<f32>(_wgslsmith_f_op_f32(select(1000f, var_4.c, true)), -1012f, _wgslsmith_f_op_f32(abs(var_4.a)), var_1.d))));
}

