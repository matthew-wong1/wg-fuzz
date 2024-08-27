struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: f32,
    d: u32,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct Struct_5 {
    a: bool,
    b: vec2<f32>,
    c: u32,
    d: f32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 13> = array<vec2<i32>, 13>(vec2<i32>(-1i, 15553i), vec2<i32>(2147483647i, 0i), vec2<i32>(25637i, 73174i), vec2<i32>(-27695i, i32(-2147483648)), vec2<i32>(34072i, -23339i), vec2<i32>(1i, -32671i), vec2<i32>(-14457i, -41698i), vec2<i32>(30604i, -1i), vec2<i32>(2147483647i, 1i), vec2<i32>(2147483647i, 0i), vec2<i32>(-1i, -27366i), vec2<i32>(-44011i, 26923i), vec2<i32>(1i, i32(-2147483648)));

var<private> global1: vec2<f32>;

var<private> global2: array<Struct_3, 14>;

var<private> global3: array<vec3<f32>, 3>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: bool) -> vec2<i32> {
    let var_0 = global2[_wgslsmith_index_u32(1u, 14u)];
    var var_1 = !(!(!select(!vec3<bool>(arg_2, var_0.a, var_0.a), select(vec3<bool>(arg_2, false, arg_2), vec3<bool>(arg_2, var_0.a, false), arg_2), select(vec3<bool>(false, var_0.a, false), vec3<bool>(var_0.a, var_0.a, arg_2), true))));
    var_1 = vec3<bool>(var_1.x, true, !all(var_1.yy));
    let var_2 = arg_1.yx;
    let var_3 = var_1.x;
    return ~_wgslsmith_mod_vec2_i32(max(arg_0.zx, global0[_wgslsmith_index_u32(var_2.x, 13u)]), -(~(-arg_0.yz)));
}

fn func_4(arg_0: u32, arg_1: Struct_5, arg_2: Struct_2, arg_3: vec2<i32>) -> f32 {
    let var_0 = arg_2.b;
    var var_1 = Struct_4(max(u_input.a, -_wgslsmith_div_i32(func_3(arg_2.d.xyx, vec3<u32>(arg_1.c, 46917u, 43137u), arg_2.c).x, _wgslsmith_mod_i32(17014i, arg_3.x))), var_0.a.x, vec4<f32>(_wgslsmith_f_op_f32(-arg_1.d), _wgslsmith_div_f32(1f, global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1453f, _wgslsmith_f_op_f32(ceil(global1.x)), !var_0.b)) * _wgslsmith_f_op_f32(f32(-1f) * -1448f)), 577f), vec2<i32>(29304i, -15556i) >> ((~(vec2<u32>(arg_1.c, 0u) ^ vec2<u32>(arg_0, arg_0)) ^ (~vec2<u32>(arg_1.c, arg_0) & abs(vec2<u32>(arg_1.c, arg_1.c)))) % vec2<u32>(32u)), countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-58314i, arg_3.x), -2147483647i), arg_3)));
    let var_2 = _wgslsmith_div_i32(arg_2.a.x, abs(1i));
    let var_3 = true;
    let var_4 = Struct_4(var_1.e.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.c.x), var_0.c.x, all(vec2<bool>(var_3, arg_2.b.b))))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.c + _wgslsmith_f_op_vec4_f32(min(arg_1.e, _wgslsmith_div_vec4_f32(vec4<f32>(var_0.c.x, 1351f, var_0.c.x, var_0.a.x), var_1.c)))), var_1.c), arg_2.d.wx, -(~arg_2.d.wx));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-290f))));
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    let var_0 = Struct_3(all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * -504f), _wgslsmith_f_op_f32(f32(-1f) * -674f), all(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(func_4(1u, Struct_5(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x))), _wgslsmith_dot_vec4_u32(~vec4<u32>(24105u, 1872u, 81183u, 0u), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_f_op_f32(1f * 1012f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1201f, -652f, -621f, global1.x)))), Struct_2(countOneBits(func_3(vec3<i32>(-16823i, arg_0.x, 54074i), vec3<u32>(4294967295u, 1u, 40784u), false)), Struct_1(vec2<f32>(global1.x, -1000f), true, _wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(0u, 3u)] - vec3<f32>(674f, global1.x, -2183f))), true, _wgslsmith_sub_vec4_i32(vec4<i32>(15512i, u_input.a, 2147483647i, 546i), vec4<i32>(u_input.a, arg_0.x, 13346i, u_input.b) >> (vec4<u32>(16605u, 1u, 38692u, 19889u) % vec4<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(round(global1.x)), -535f)), global0[_wgslsmith_index_u32(1u, 13u)])), abs(_wgslsmith_sub_u32(~56352u, 1u)));
    var var_1 = vec2<i32>(-1i, arg_0.x);
    let var_2 = select(vec3<bool>(var_0.a, any(vec3<bool>(!var_0.a, select(var_0.a, var_0.a, var_0.a), !var_0.a)), any(vec3<bool>(true, true, all(vec4<bool>(false, var_0.a, var_0.a, false))))), select(!vec3<bool>(true, true, var_0.a), vec3<bool>(true, true, true), select(!(!vec3<bool>(false, false, var_0.a)), !select(vec3<bool>(var_0.a, var_0.a, true), vec3<bool>(var_0.a, var_0.a, true), var_0.a), vec3<bool>(var_0.a, false, any(vec2<bool>(var_0.a, true))))), true);
    global0 = array<vec2<i32>, 13>();
    var var_3 = var_0.b;
    return Struct_2(arg_0, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(312f, 1000f) - vec2<f32>(1148f, var_0.c)))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.x, var_0.b)))), var_0.a, global3[_wgslsmith_index_u32(var_0.d, 3u)]), true, -(~(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.x, arg_0.x, 51676i, 1i), vec4<i32>(arg_0.x, u_input.b, var_1.x, arg_0.x)) | -vec4<i32>(var_1.x, 0i, -17568i, 0i))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, var_0.c) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x))))), vec2<f32>(906f, var_0.b))));
}

fn func_1() -> Struct_5 {
    var var_0 = func_2(vec2<i32>(u_input.a, -1i));
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(var_0.b.c.x, func_2(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.d.x, -2147483647i), var_0.a)).b.a.x)), global1.x));
    var var_1 = all(!vec4<bool>(true, !all(vec2<bool>(var_0.b.b, var_0.c)), !(var_0.b.b & var_0.b.b), (true | var_0.c) & !var_0.c));
    return Struct_5(any(!select(vec4<bool>(var_0.b.b, false, var_0.b.b, var_0.b.b), vec4<bool>(true, var_0.b.b, true, true), vec4<bool>(true, false, true, var_0.c))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1298f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + 666f))), reverseBits(~(~4294967295u)) | max(firstTrailingBit(firstLeadingBit(4294967295u)), ~1u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.b.c.x, global1.x, var_0.c)))), -447f, true)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1064f, 412f, var_0.e.x, 227f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, var_0.b.c.x, var_0.e.x, global1.x)))))));
}

fn func_5(arg_0: Struct_5) -> vec2<i32> {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(max(11544u, arg_0.c), 4294967295u, 25541u, ~arg_0.c)), ~(~select(vec4<u32>(arg_0.c, 4294967295u, arg_0.c, 1u), vec4<u32>(4294967295u, 26956u, 102183u, 1646u), arg_0.a))) >> (~_wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_0.c, arg_0.c), vec3<u32>(0u, arg_0.c, arg_0.c)), 26131u) % 32u), 14u)];
    var var_1 = Struct_4(_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.b, u_input.b), ~u_input.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -415f))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-453f, var_0.b, global1.x, arg_0.d), arg_0.e)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.x, _wgslsmith_f_op_f32(trunc(1296f)), var_0.c, 3386f))))), global0[_wgslsmith_index_u32(var_0.d, 13u)], ~global0[_wgslsmith_index_u32(reverseBits(0u), 13u)]);
    let var_2 = !vec3<bool>(-2147483647i >= u_input.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-542f - var_1.b))) > 154f, !all(!vec3<bool>(false, false, arg_0.a)));
    global0 = array<vec2<i32>, 13>();
    let var_3 = true;
    return -var_1.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_dot_vec2_i32(-func_5(func_1()), global0[_wgslsmith_index_u32(~1u, 13u)]), -537f, func_1().e, _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(u_input.a, 81462i) | (i32(-1i) * -1i), u_input.a), _wgslsmith_sub_vec2_i32(abs(vec2<i32>(2147483647i, u_input.b)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(select(8354u, 1u, false), _wgslsmith_add_u32(83033u, 101169u), 1u), 13u)])), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.a), global0[_wgslsmith_index_u32(877u, 13u)])) << (firstLeadingBit(vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u)), vec2<i32>(select(35724i, 1i, true), ~(i32(-1i) * -23051i))));
    let var_1 = reverseBits(firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(3962u, 68456u, 29802u), vec3<u32>(1u, 1u, 1u), vec3<u32>(20861u, 4294967295u, 12412u))) | (~(~vec3<u32>(1u, 11970u, 1u)) & (firstTrailingBit(vec3<u32>(4294967295u, 0u, 4294967295u)) >> (vec3<u32>(14702u, 1u, 11702u) % vec3<u32>(32u)))));
    var var_2 = func_1();
    var var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(step(global1.x, func_1().b.x)), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(var_2.e.x - -527f))), !(!func_2(func_5(Struct_5(false, vec2<f32>(global1.x, 231f), 94741u, var_2.d, var_0.c))).b.b), var_0.c.yzy);
    var_0 = Struct_4(u_input.b >> (abs(var_2.c) % 32u), -1223f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(var_0.c.x * -836f), -1602f, var_2.d, -1188f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c), _wgslsmith_f_op_vec4_f32(-var_2.e)))), vec2<i32>(-var_0.a, func_5(func_1()).x), ~global0[_wgslsmith_index_u32(1u, 13u)]);
    var var_4 = Struct_2(vec2<i32>(14694i, u_input.b), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_0.c.ww)), func_2(var_0.d).b.c.zx) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-247f, 170f))), var_3.b, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.c.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4(18042u, Struct_5(var_2.a, var_3.c.xz, var_1.x, var_2.e.x, var_0.c), Struct_2(var_0.d, Struct_1(var_2.e.zy, var_3.b, var_2.e.zyz), false, vec4<i32>(1104i, 15313i, -1i, u_input.b), var_0.c.xz), vec2<i32>(u_input.b, u_input.b))), _wgslsmith_f_op_f32(max(-1177f, -845f)))), -423f)), !(!(9169i >= ~var_0.e.x)), ~(~(vec4<i32>(0i, u_input.b, -46228i, var_0.d.x) | countOneBits(vec4<i32>(24936i, -50510i, u_input.a, -2147483647i)))), var_3.a);
    var var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_4.b.c, var_2.e.xzw) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_4.b.c, var_2.e.yzw)) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_0.c.zwz)))) - _wgslsmith_f_op_vec3_f32(round(global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(var_1.x, 0u), 3u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_dot_vec2_i32(reverseBits(var_4.a) & _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), global0[_wgslsmith_index_u32(4294967295u, 13u)]), func_2(vec2<i32>(var_4.d.x, var_0.a)).d.xx), ~((abs(vec4<u32>(var_1.x, var_2.c, 12726u, var_1.x)) >> (max(vec4<u32>(35473u, var_2.c, var_1.x, 38554u), vec4<u32>(var_1.x, var_2.c, 4294967295u, var_1.x)) % vec4<u32>(32u))) | countOneBits(~vec4<u32>(var_1.x, var_1.x, 15051u, var_2.c))), ~_wgslsmith_div_u32(_wgslsmith_sub_u32(reverseBits(47350u), 52256u), reverseBits(var_1.x)));
}

