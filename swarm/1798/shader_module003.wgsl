struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
    c: f32,
    d: f32,
    e: vec3<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24>;

var<private> global1: array<vec4<i32>, 11> = array<vec4<i32>, 11>(vec4<i32>(16371i, -1i, -1559i, 0i), vec4<i32>(-25787i, 5231i, i32(-2147483648), -16426i), vec4<i32>(22331i, 0i, 34530i, -1i), vec4<i32>(-14957i, 50498i, 2147483647i, 2147483647i), vec4<i32>(-10504i, 0i, 11123i, -27297i), vec4<i32>(i32(-2147483648), 23550i, 11650i, -18708i), vec4<i32>(25198i, i32(-2147483648), 0i, -20276i), vec4<i32>(31651i, i32(-2147483648), 0i, 0i), vec4<i32>(-26035i, -56604i, -33753i, -45261i), vec4<i32>(-14160i, 1i, -1i, -10156i), vec4<i32>(1i, 38181i, 2147483647i, -1i));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2() -> Struct_1 {
    var var_0 = vec4<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 24u)], _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~u_input.e.x, 24u)])))), -596f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.d.x, 24u)])))))));
    let var_1 = -1i;
    global1 = array<vec4<i32>, 11>();
    var_0 = vec4<f32>(105f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -374f)), global0[_wgslsmith_index_u32(u_input.d.x, 24u)], var_0.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, -1000f))), _wgslsmith_f_op_vec2_f32(abs(var_0.yx)))))) * vec2<f32>(-618f, _wgslsmith_f_op_f32(floor(-1000f)))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, global0[_wgslsmith_index_u32(60554u, 24u)], -874f)))), vec2<bool>(all(vec2<bool>(true, true)), select(true, -738f > var_0.x, all(vec2<bool>(true, false))) & false), false, select(vec2<bool>(true, true), vec2<bool>(!any(vec2<bool>(false, true)), any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)))), true));
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: u32) -> vec4<i32> {
    let var_0 = Struct_3(~select(select(global1[_wgslsmith_index_u32(~arg_2, 11u)], vec4<i32>(u_input.b, 0i, -1i, arg_0.a.x), vec4<bool>(arg_0.b, true, true, arg_0.b)), ~global1[_wgslsmith_index_u32(~34117u, 11u)], select(vec4<bool>(arg_0.b, true, true, arg_0.b), select(vec4<bool>(false, arg_0.b, arg_0.b, true), vec4<bool>(arg_0.b, arg_0.b, true, arg_0.b), arg_0.b), select(vec4<bool>(arg_0.b, arg_0.b, false, arg_0.b), vec4<bool>(true, arg_0.b, arg_0.b, true), arg_0.b))));
    global1 = array<vec4<i32>, 11>();
    global1 = array<vec4<i32>, 11>();
    global0 = array<f32, 24>();
    var var_1 = vec3<u32>(abs(~_wgslsmith_mult_u32(u_input.d.x, arg_2)), _wgslsmith_sub_u32(~(0u << (u_input.e.x % 32u)), 34428u), 80501u);
    return vec4<i32>(_wgslsmith_sub_i32(~1i, i32(-1i) * -1794i) & -_wgslsmith_clamp_i32(var_0.a.x, arg_0.a.x, -1i), _wgslsmith_mod_i32(-27810i, u_input.c.x), ~max(arg_0.a.x, abs(24694i) << (_wgslsmith_dot_vec4_u32(u_input.e, u_input.d) % 32u)), ~arg_0.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: Struct_3) -> Struct_3 {
    global0 = array<f32, 24>();
    var var_0 = countOneBits(max(7544i, arg_3.a.x));
    var var_1 = Struct_4(-vec2<i32>(~(arg_3.a.x << (u_input.d.x % 32u)), 19706i), false, global0[_wgslsmith_index_u32(61481u, 24u)], -354f, ~_wgslsmith_sub_vec3_u32(~(~vec3<u32>(5269u, 37862u, 0u)), max(u_input.d.www, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, 58159u), vec3<u32>(0u, u_input.e.x, u_input.e.x)))));
    var var_2 = 1000f;
    var var_3 = Struct_1(arg_0.a, !vec2<bool>(any(arg_0.d), !(u_input.d.x < 4294967295u)), false, arg_0.d);
    return Struct_3(max(_wgslsmith_sub_vec4_i32(vec4<i32>(9711i, ~(-13085i), ~8020i, ~3537i), countOneBits(global1[_wgslsmith_index_u32(u_input.d.x ^ 1u, 11u)])), max(-(global1[_wgslsmith_index_u32(var_1.e.x, 11u)] | vec4<i32>(-5740i, -2147483647i, var_1.a.x, 0i)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.c.x, -1i, -53008i), vec4<i32>(-56456i, u_input.c.x, 25857i, var_1.a.x)))));
}

fn func_1(arg_0: Struct_3) -> vec4<bool> {
    let var_0 = _wgslsmith_mult_vec3_u32(~u_input.e.xzw >> (u_input.e.wyx % vec3<u32>(32u)), u_input.d.zzy);
    var var_1 = Struct_3(max(arg_0.a, global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(var_0.x, var_0.x), 11u)] | select(global1[_wgslsmith_index_u32(23686u, 11u)], vec4<i32>(-1i, arg_0.a.x, -1i, 39215i), vec4<bool>(false, false, false, true))));
    global0 = array<f32, 24>();
    var_1 = arg_0;
    var var_2 = func_4(func_2(), all(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), vec3<bool>(false, true, true))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.e.x ^ countOneBits(var_0.x), 24u)] * _wgslsmith_f_op_f32(floor(698f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-118f, 532f)) - global0[_wgslsmith_index_u32(~21582u, 24u)])))), Struct_3(select(-func_3(Struct_4(var_1.a.xw, true, -1373f, global0[_wgslsmith_index_u32(0u, 24u)], var_0), -1568f, 12717u), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.a.x, 33903i, -2147483647i, u_input.c.x) >> (u_input.e % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(0i, 2768i, u_input.b, 2147483647i))), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)))));
    return !select(vec4<bool>(select(true, true, global0[_wgslsmith_index_u32(var_0.x, 24u)] == global0[_wgslsmith_index_u32(73023u, 24u)]), false, any(vec2<bool>(false, false)), false), !vec4<bool>(true, any(vec4<bool>(true, false, false, true)), false, true), u_input.b >= _wgslsmith_sub_i32(_wgslsmith_div_i32(arg_0.a.x, -2147483647i), arg_0.a.x));
}

fn func_5(arg_0: bool, arg_1: vec4<bool>, arg_2: u32) -> Struct_5 {
    var var_0 = Struct_4(~vec2<i32>(~abs(-7091i), -9976i), true, -153f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_2, 24u)]), vec3<u32>(arg_2, ~8452u, arg_2));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2().a.zz - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1320f, 1000f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(0u, 24u)], -462f))))));
    return Struct_5(Struct_4(u_input.c, 0u <= abs(u_input.d.x << (var_0.e.x % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_div_f32(-277f, global0[_wgslsmith_index_u32(var_0.e.x, 24u)])) * var_1.x), -881f, vec3<u32>(~_wgslsmith_add_u32(var_0.e.x, arg_2), max(1u, firstTrailingBit(6949u)), countOneBits(0u ^ u_input.e.x))), countOneBits(18020i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(~(vec4<i32>(i32(-1i) * -2147483647i, -2147483647i, u_input.c.x, ~u_input.a) & -(~vec4<i32>(1668i, u_input.b, u_input.c.x, u_input.a))));
    global0 = array<f32, 24>();
    let var_1 = func_5(false, !select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(any(vec2<bool>(true, false)), any(vec2<bool>(false, false)), false, false), select(func_1(var_0), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), u_input.d.x == u_input.d.x)), ~(~u_input.d.x));
    let var_2 = -45450i == func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-670f, -172f, 154f))), !(!vec2<bool>(var_1.a.b, false)), var_1.a.b, func_1(func_4(Struct_1(vec3<f32>(-1968f, global0[_wgslsmith_index_u32(var_1.a.e.x, 24u)], global0[_wgslsmith_index_u32(u_input.e.x, 24u)]), vec2<bool>(var_1.a.b, true), var_1.a.b, vec2<bool>(false, false)), false, 1000f, var_0)).zx), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(456f))), Struct_3(~(-var_0.a))).a.x;
    let var_3 = vec4<u32>(~abs(func_5(1000f != var_1.a.c, vec4<bool>(var_1.a.b, true, true, false), u_input.d.x).a.e.x), _wgslsmith_div_u32(1u, firstLeadingBit(~var_1.a.e.x)), ~_wgslsmith_div_u32(0u, var_1.a.e.x) << (~var_1.a.e.x % 32u), var_1.a.e.x);
    var var_4 = Struct_2(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1024f, 379f) - vec2<f32>(var_1.a.d, var_1.a.d)))) - vec2<f32>(-1020f, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(var_1.a.e, var_3.wzx, vec3<u32>(4294967295u, 4294967295u, var_3.x)), var_3.zxz), 24u)])), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(30708u, 24u)])), global0[_wgslsmith_index_u32(var_1.a.e.x, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)])), select(select(func_2().d, select(vec2<bool>(true, var_2), vec2<bool>(false, true), var_2), func_2().d), vec2<bool>(true, true), all(!vec2<bool>(var_2, false))), var_1.a.b, !vec2<bool>(var_2, !var_2)));
    let var_5 = Struct_2(!func_1(func_4(func_2(), true, _wgslsmith_f_op_f32(ceil(var_4.c.a.x)), var_0)).x, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(2449f, var_4.c.a.x))))))), var_4.c);
    var var_6 = firstLeadingBit(vec4<i32>(-u_input.a, ~var_0.a.x, -2147483647i, u_input.c.x)) >> (vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.e, var_3), 25087u, 25832u, ~_wgslsmith_div_u32(var_1.a.e.x, var_1.a.e.x)) % vec4<u32>(32u));
    var var_7 = select(func_1(var_0).x, (var_5.a && (abs(var_3.x) > ~1u)) & true, var_2);
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_div_u32(var_1.a.e.x, 1u)), ~func_5((var_1.a.e.x != var_1.a.e.x) & (var_1.a.b | true), func_1(func_4(var_5.c, var_5.c.b.x, -709f, Struct_3(global1[_wgslsmith_index_u32(var_1.a.e.x, 11u)]))), var_3.x << (~var_1.a.e.x % 32u)).a.e.zz);
}

