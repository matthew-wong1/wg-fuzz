struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec4<f32>,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<i32>,
    d: vec3<bool>,
    e: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
    c: u32,
    d: u32,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec4<f32>, arg_3: Struct_4) -> f32 {
    let var_0 = Struct_2(Struct_1(select(!(!arg_0.a), arg_3.a.c.a, select(!vec2<bool>(arg_0.a.x, true), !arg_3.a.c.a, !vec2<bool>(arg_0.a.x, true))), ~arg_3.a.c.d.x, vec4<f32>(1687f, _wgslsmith_f_op_f32(arg_0.c.x * _wgslsmith_f_op_f32(arg_3.b.x + 1437f)), 423f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1156f, arg_2.x)))), arg_3.a.a.d, _wgslsmith_add_i32(-_wgslsmith_sub_i32(arg_0.e, -3720i), _wgslsmith_sub_i32(arg_3.a.c.b & 2147483647i, arg_0.e))), _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(0u, 16u)], 50256u, ~arg_3.d), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, global0[_wgslsmith_index_u32(arg_3.d, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21597u, 16u)], 16u)]) | vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], arg_3.a.b, 42225u), vec3<u32>(arg_3.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(76540u, 16u)], 16u)], 16u)], 64536u)), (vec3<u32>(0u, arg_3.d, global0[_wgslsmith_index_u32(arg_3.a.b, 16u)]) << (vec3<u32>(global0[_wgslsmith_index_u32(16214u, 16u)], 35567u, global0[_wgslsmith_index_u32(1u, 16u)]) % vec3<u32>(32u))) & vec3<u32>(1u, global0[_wgslsmith_index_u32(arg_3.d, 16u)], arg_3.c))), Struct_1(vec2<bool>(arg_3.a.c.a.x, _wgslsmith_f_op_f32(965f - arg_0.c.x) != _wgslsmith_f_op_f32(-arg_2.x)), ~arg_3.a.a.d.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_3.a.a.c.x, 246f)) * _wgslsmith_f_op_f32(1000f + 1087f)), 546f, 1860f, -581f), _wgslsmith_sub_vec3_i32(arg_3.a.a.d & arg_0.d, ~arg_3.a.c.d) << (select(~vec3<u32>(24067u, 0u, global0[_wgslsmith_index_u32(35690u, 16u)]), select(vec3<u32>(7885u, arg_3.c, 0u), vec3<u32>(arg_3.d, arg_3.d, global0[_wgslsmith_index_u32(54296u, 16u)]), arg_1), true) % vec3<u32>(32u)), firstLeadingBit(arg_0.b)));
    let var_1 = arg_2.x;
    let var_2 = vec2<bool>(!any(select(vec3<bool>(arg_3.a.c.a.x, false, false), vec3<bool>(arg_0.a.x, false, true), true)) & true, !((arg_0.a.x & !arg_0.a.x) & !var_0.c.a.x));
    global0 = array<u32, 16>();
    global0 = array<u32, 16>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -671f), _wgslsmith_f_op_f32(417f * _wgslsmith_f_op_f32(f32(-1f) * -230f)), var_2.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-566f, 1343f))))))));
}

fn func_2() -> bool {
    let var_0 = Struct_1(vec2<bool>(true, select(any(vec2<bool>(false, true)), true, true) || !(u_input.a.x <= u_input.b)), 1i, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(Struct_1(vec2<bool>(true, true), 13641i, vec4<f32>(-551f, -1637f, -598f, 952f), vec3<i32>(-7181i, u_input.b, u_input.b), -2147483647i), false, vec4<f32>(1790f, -961f, 1893f, 107f), Struct_4(Struct_2(Struct_1(vec2<bool>(false, false), 2147483647i, vec4<f32>(164f, 325f, 892f, 1333f), vec3<i32>(u_input.b, 1i, -60396i), u_input.b), global0[_wgslsmith_index_u32(48388u, 16u)], Struct_1(vec2<bool>(false, false), -1i, vec4<f32>(1103f, 2001f, 692f, -769f), vec3<i32>(1i, -1i, 51873i), 2147483647i)), vec4<f32>(842f, -424f, -524f, -1979f), 0u, 4294967295u))))), _wgslsmith_f_op_f32(f32(-1f) * -337f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-2074f, -202f)), _wgslsmith_f_op_f32(step(-1000f, -1905f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2160f - -477f) * -1081f)))), _wgslsmith_clamp_vec3_i32(firstLeadingBit(~(~vec3<i32>(u_input.a.x, -4534i, 0i))), vec3<i32>(256i, _wgslsmith_dot_vec2_i32(~u_input.a, vec2<i32>(u_input.a.x, 1i) & u_input.a), u_input.b), _wgslsmith_clamp_vec3_i32(abs(select(vec3<i32>(u_input.a.x, u_input.b, u_input.a.x), vec3<i32>(-1i, u_input.a.x, 0i), false)), vec3<i32>(-2147483647i, countOneBits(u_input.a.x), _wgslsmith_add_i32(9857i, 1i)), vec3<i32>(u_input.b, u_input.b, u_input.b << (4294967295u % 32u)))), _wgslsmith_dot_vec2_i32(select(abs(~vec2<i32>(u_input.b, -20972i)), vec2<i32>(~u_input.b, firstTrailingBit(u_input.a.x)), vec2<bool>(true, true)), u_input.a));
    let var_1 = !select(!select(vec4<bool>(true, false, false, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x), var_0.a.x), vec4<bool>(any(vec3<bool>(var_0.a.x, false, false)), any(select(vec3<bool>(var_0.a.x, false, var_0.a.x), vec3<bool>(var_0.a.x, false, true), true)), !any(vec3<bool>(var_0.a.x, false, var_0.a.x)), any(vec2<bool>(var_0.a.x, false))), select(_wgslsmith_f_op_f32(1322f + var_0.c.x) <= _wgslsmith_f_op_f32(var_0.c.x - 1000f), any(!vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x)), false));
    var var_2 = Struct_2(var_0, 0u, var_0);
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.c.x, var_2.c.c.x, -1000f, 574f))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1596f, -157f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(-1511f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-709f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.c.x)), 2311f, var_0.c.x)), var_1));
    var_2 = Struct_2(var_2.a, ~32483u, Struct_1(var_0.a, _wgslsmith_dot_vec3_i32(-var_0.d, select(max(vec3<i32>(1i, 2147483647i, var_2.a.b), var_0.d), firstLeadingBit(var_2.a.d), true)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(var_2.c.c * var_3))), var_2.c.d, 0i));
    return all(vec3<bool>(!var_2.a.a.x, var_0.a.x, true));
}

fn func_1(arg_0: vec3<f32>, arg_1: f32) -> vec2<u32> {
    let var_0 = Struct_1(select(!select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(false, true, true)), any(vec4<bool>(true, true, true, true))), func_2()), !vec2<bool>(any(vec4<bool>(false, true, false, false)), true)), -_wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.b, 1i, u_input.b)), vec3<i32>(2490i, 0i, 41460i)) & -2147483647i, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -117f)), _wgslsmith_f_op_f32(-2097f + _wgslsmith_f_op_f32(select(arg_1, arg_1, false))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1 * 1000f))), _wgslsmith_f_op_f32(f32(-1f) * -1371f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_f32(-2191f, -1372f), arg_1, arg_0.x), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(521f, 648f, arg_0.x, arg_1) * vec4<f32>(-845f, 687f, arg_1, 596f)))))), select(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true), true))), countOneBits(countOneBits(vec3<i32>(46788i, u_input.a.x, 1i) >> (min(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15297u, 16u)], 16u)], 16u)], 16535u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)], 16u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33933u, 16u)], 16u)], global0[_wgslsmith_index_u32(11599u, 16u)], global0[_wgslsmith_index_u32(33066u, 16u)])) % vec3<u32>(32u)))), u_input.b);
    var var_1 = var_0.a.x;
    let var_2 = !(!vec3<bool>(_wgslsmith_f_op_f32(-1081f - arg_1) < _wgslsmith_f_op_f32(var_0.c.x - -542f), false, 1080f == _wgslsmith_div_f32(arg_0.x, 1000f)));
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(~(~1u), 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)]), 16u)];
    var var_4 = Struct_5(!var_2);
    return vec2<u32>(global0[_wgslsmith_index_u32(~125746u, 16u)], 38428u);
}

fn func_4(arg_0: i32, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(reverseBits(_wgslsmith_mod_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16572u, arg_1.x, global0[_wgslsmith_index_u32(4294967295u, 16u)]), vec4<u32>(56533u, arg_1.x, arg_1.x, global0[_wgslsmith_index_u32(1u, 16u)]))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(33849u, 4294967295u, 21909u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21401u, 16u)], 16u)]) ^ vec4<u32>(0u, 11496u, 0u, arg_1.x), vec4<u32>(global0[_wgslsmith_index_u32(arg_1.x, 16u)], arg_1.x, arg_1.x, 0u))), abs(countOneBits(~(~vec4<u32>(arg_1.x, 33455u, global0[_wgslsmith_index_u32(arg_1.x, 16u)], 20600u)))));
    let var_1 = Struct_1(vec2<bool>(false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1309f), _wgslsmith_f_op_f32(func_3(Struct_1(vec2<bool>(true, false), 1i, vec4<f32>(-958f, 516f, 739f, -1403f), vec3<i32>(-1i, arg_0, -1i), arg_0), true, vec4<f32>(-601f, 221f, 165f, 1028f), Struct_4(Struct_2(Struct_1(vec2<bool>(true, true), -1i, vec4<f32>(131f, -515f, -1385f, 668f), vec3<i32>(u_input.a.x, 15598i, arg_0), u_input.b), arg_1.x, Struct_1(vec2<bool>(false, true), 6873i, vec4<f32>(-1000f, -311f, -858f, 620f), vec3<i32>(-55234i, u_input.b, -1i), u_input.b)), vec4<f32>(174f, -1163f, 633f, -1144f), global0[_wgslsmith_index_u32(arg_1.x, 16u)], arg_1.x)))) > _wgslsmith_f_op_f32(floor(-693f))), 68985i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(765f, 1262f, -236f, 148f)) * vec4<f32>(-2166f, -734f, 417f, 2430f)) - vec4<f32>(_wgslsmith_f_op_f32(316f * -3333f), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -567f), _wgslsmith_f_op_f32(trunc(1008f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -529f, 817f, 1282f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-1443i, -2147483647i, u_input.b, arg_0)), vec4<i32>(arg_0, 33522i, -17214i, arg_0)), 58218i), _wgslsmith_sub_vec3_i32(-vec3<i32>(-59753i, -2147483647i, u_input.a.x), vec3<i32>(arg_0, arg_0, u_input.b)) >> (vec3<u32>(var_0.x, min(arg_1.x, var_0.x), ~6553u) % vec3<u32>(32u))), 2638i);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(2147483647i, func_1(vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1837f)) - _wgslsmith_f_op_f32(405f * 1000f)), _wgslsmith_f_op_f32(189f + _wgslsmith_f_op_f32(-2510f * -417f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-745f * _wgslsmith_f_op_f32(trunc(1185f)))))));
    var var_1 = vec4<u32>(_wgslsmith_div_u32(1u, 46561u), ~86443u, ~abs(37322u >> ((global0[_wgslsmith_index_u32(20585u, 16u)] >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(58663u, 16u)], 16u)] % 32u)) % 32u)), select(_wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, 1u), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, global0[_wgslsmith_index_u32(1u, 16u)]), vec2<u32>(1u, 4294967295u)), !var_0.a), _wgslsmith_mult_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13906u, 16u)], 16u)], 16u)]), abs(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(48218u, 16u)], 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17141u, 16u)], 16u)], 16u)], 16u)])))), global0[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)], 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)], 16u)], 16u)], 16u)], 16u)]), 16u)]), 16u)], func_4(-(var_0.d.x >> (53061u % 32u)), ~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5238u, 16u)], 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)], 16u)], 16u)], 16u)]) ^ ~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(64131u, 16u)], 16u)], 16u)], 16u)], 16u)], 19832u)).a.x));
    let var_2 = -max(~_wgslsmith_div_i32(min(-17597i, u_input.a.x), ~40717i), ~(var_0.e << (_wgslsmith_dot_vec4_u32(vec4<u32>(10565u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)], 18153u, 0u), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], 0u, 20329u, 6446u)) % 32u)));
    let var_3 = Struct_5(!select(select(!vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<bool>(var_0.a.x, false, var_0.a.x)), !select(vec3<bool>(var_0.a.x, true, var_0.a.x), vec3<bool>(var_0.a.x, false, false), vec3<bool>(var_0.a.x, true, var_0.a.x)), var_0.a.x));
    var var_4 = ~firstLeadingBit(max(countOneBits(~vec3<i32>(u_input.a.x, u_input.a.x, 6732i)), var_0.d));
    let var_5 = Struct_1(var_3.a.xx, ~(~u_input.a.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_0.c.x, var_0.c.x), _wgslsmith_f_op_f32(select(var_0.c.x, 1068f, var_0.a.x)), 1312f, 809f)), var_0.c), select(reverseBits(select(~vec3<i32>(-2147483647i, var_0.b, var_4.x), -vec3<i32>(-3957i, var_4.x, var_4.x), select(vec3<bool>(false, true, var_3.a.x), vec3<bool>(true, var_3.a.x, var_3.a.x), false))), vec3<i32>(-7764i, func_4(-var_2, firstTrailingBit(var_1.ww)).e, -(~var_2)), any(vec3<bool>(false, var_0.a.x, var_0.a.x)) | all(!vec4<bool>(false, false, var_0.a.x, false))), -19434i);
    let var_6 = ~firstTrailingBit(-((-43278i | var_5.e) << (21469u % 32u)));
    global0 = array<u32, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<i32>(select(1i, -var_0.b, all(vec4<bool>(var_5.a.x, var_0.a.x, false, var_0.a.x))), _wgslsmith_add_i32(~2270i, _wgslsmith_mult_i32(var_0.e, 24699i)), max(_wgslsmith_div_i32(-2147483647i, -18885i), _wgslsmith_mult_i32(var_4.x, var_2)), countOneBits(var_2) >> (firstTrailingBit(global0[_wgslsmith_index_u32(1u, 16u)]) % 32u))), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_add_i32(2634i, -1i), ~var_6, _wgslsmith_mod_i32(7368i, var_6)), ~(-vec3<i32>(var_2, -22125i, var_5.d.x))), _wgslsmith_clamp_vec3_i32(var_5.d, vec3<i32>(var_0.e, 1i, abs(u_input.a.x)), reverseBits(vec3<i32>(0i, u_input.b, var_2) & var_0.d))), _wgslsmith_div_vec4_i32(vec4<i32>(~1i, _wgslsmith_mod_i32(1i, abs(var_0.e)), var_4.x, ~firstTrailingBit(u_input.b)), -(firstLeadingBit(vec4<i32>(-2147483647i, 1i, -19361i, 8089i)) | vec4<i32>(-59886i, -34970i, var_5.d.x, var_0.e))), ~(-reverseBits(vec3<i32>(var_6, var_0.e, var_2))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_5.c.x, _wgslsmith_f_op_f32(-var_5.c.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.c.x + 2427f)))))));
}

