struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
    e: bool,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: vec2<bool>,
    d: vec3<u32>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: i32,
    d: Struct_1,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12>;

var<private> global1: Struct_3 = Struct_3(3892i, vec3<i32>(0i, i32(-2147483648), -37452i), vec2<bool>(false, false), vec3<u32>(4294967295u, 61796u, 4294967295u), vec4<bool>(false, false, false, true));

var<private> global2: array<u32, 32>;

var<private> global3: Struct_2;

var<private> global4: vec3<i32> = vec3<i32>(24845i, 0i, 0i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_5, arg_1: u32, arg_2: Struct_5, arg_3: vec2<u32>) -> i32 {
    var var_0 = abs(arg_2.a.xxz);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-arg_2.c.b.c)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.c.a.c - global3.a.c) + _wgslsmith_f_op_vec3_f32(-global3.c.c)) + vec3<f32>(global3.a.c.x, _wgslsmith_f_op_f32(exp2(arg_0.c.c.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -666f))), vec3<f32>(_wgslsmith_f_op_f32(-350f + arg_0.c.b.c.x), _wgslsmith_f_op_f32(arg_0.c.a.c.x * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), arg_2.c.b.c.x)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global3.c.c.yz, vec2<f32>(1298f, arg_0.c.a.c.x), arg_0.b.x))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(arg_0.c.c.d - arg_0.c.c.d))))));
    var var_3 = global1.e;
    var var_4 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-693f - _wgslsmith_f_op_f32(abs(var_1.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.c.b.c.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -245f), _wgslsmith_f_op_f32(-arg_0.c.a.d.x), all(global1.c))), -734f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global3.b.c.x, var_1.x, var_2.x, -506f), vec4<f32>(arg_0.c.b.c.x, 1439f, global3.d.x, 1664f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1107f, arg_0.c.b.c.x, 1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -631f), _wgslsmith_div_f32(var_1.x, 1176f)))))));
    return ~abs(i32(-1i) * -(~1i));
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: vec3<bool>, arg_3: vec2<bool>) -> u32 {
    var var_0 = Struct_1(~vec4<i32>(50032i | -global1.b.x, arg_0.a, _wgslsmith_dot_vec4_i32(global3.a.a, global3.c.e), i32(-1i) * -36529i), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.d.x, global1.d.x, 4294967295u, u_input.c.x), u_input.c), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global3.a.b.x, 0u), 32u)]), vec2<u32>(~u_input.c.x, ~77245u)) & vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(41414u, 0u), max(arg_1, 108025u)), global2[_wgslsmith_index_u32(global1.d.x << (1u % 32u), 32u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(145f, 2012f, 1896f)) * _wgslsmith_f_op_vec3_f32(-global3.c.c))))), _wgslsmith_f_op_vec2_f32(-global3.b.d), global3.b.e);
    let var_1 = countOneBits(func_3(Struct_5(reverseBits(vec4<i32>(-2147483647i, -35322i, arg_0.a, global1.b.x)), arg_0.e.wy, Struct_2(global3.b, global3.c, global3.b, var_0.d, true)), ~reverseBits(25958u), Struct_5(global3.a.a, arg_0.e.wz, Struct_2(global3.b, global3.a, global3.b, global3.b.d, global3.e)), global1.d.zz)) & ~(0i >> (1u % 32u));
    var var_2 = ~(~1u);
    var var_3 = global3.c;
    let var_4 = Struct_5(_wgslsmith_sub_vec4_i32(vec4<i32>(abs(9406i | arg_0.b.x), var_1, 27689i, abs(global4.x >> (arg_1 % 32u))), min(_wgslsmith_sub_vec4_i32(vec4<i32>(-32264i, var_3.e.x, -2147483647i, -32223i), var_3.e), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -29278i, 4171i, -1i), global3.b.e)) >> (vec4<u32>(~68118u, 0u, _wgslsmith_mult_u32(global1.d.x, 2014u), arg_1) % vec4<u32>(32u))), select(vec2<bool>(any(!vec3<bool>(global3.e, arg_2.x, arg_3.x)), all(vec2<bool>(false, false))), vec2<bool>(!(!global1.e.x), any(arg_2)), select(vec2<bool>(arg_2.x, true), select(arg_2.zy, !arg_0.e.xw, !arg_0.c.x), global3.e)), Struct_2(global3.c, Struct_1(min(vec4<i32>(global1.a, 0i, -2147483647i, -2147483647i), vec4<i32>(var_3.e.x, -2147483647i, var_1, var_3.a.x)), ~firstLeadingBit(vec2<u32>(global2[_wgslsmith_index_u32(var_3.b.x, 32u)], 63211u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(991f, var_3.c.x, var_0.c.x), var_0.c)), vec2<f32>(var_3.d.x, _wgslsmith_f_op_f32(var_0.d.x - var_0.c.x)), _wgslsmith_add_vec4_i32(global3.b.e, vec4<i32>(-57408i, var_3.e.x, arg_0.a, -1i))), Struct_1(~vec4<i32>(global3.c.e.x, 1i, 7631i, 0i), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.c.yy, global1.d.zz), var_3.b.x), _wgslsmith_f_op_vec3_f32(trunc(var_3.c)), var_0.d, vec4<i32>(_wgslsmith_add_i32(1i, -2147483647i), 44666i, 1i, -60292i)), vec2<f32>(_wgslsmith_f_op_f32(step(1335f, -692f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.c.x + var_3.c.x), _wgslsmith_f_op_f32(step(var_3.d.x, var_3.c.x)))), all(!arg_3)));
    return ~(~2985u);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> Struct_5 {
    var var_0 = 4294967295u;
    var var_1 = ~select(42404u, abs(~0u), (func_2(Struct_3(64168i, vec3<i32>(arg_1.a.x, 3138i, 26077i), global1.c, vec3<u32>(u_input.c.x, global1.d.x, arg_1.b.x), global1.e), 0u, global1.e.xwy, vec2<bool>(false, global3.e)) | reverseBits(0u)) == 19985u);
    return Struct_5(countOneBits(_wgslsmith_div_vec4_i32((vec4<i32>(-2147483647i, -1351i, 6958i, arg_0.c.e.x) ^ global3.a.e) << ((vec4<u32>(global2[_wgslsmith_index_u32(12941u, 32u)], global1.d.x, global0[_wgslsmith_index_u32(arg_1.b.x, 12u)], 12530u) << (u_input.c % vec4<u32>(32u))) % vec4<u32>(32u)), ~firstTrailingBit(vec4<i32>(-2147483647i, u_input.a.x, global3.b.a.x, 28255i)))), !(!global1.e.zy), arg_0);
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_5, arg_3: bool) -> vec3<bool> {
    global1 = Struct_3(abs(global4.x), vec3<i32>(arg_1, ~_wgslsmith_clamp_i32(1i, _wgslsmith_div_i32(35794i, global3.a.e.x), u_input.a.x), -1i | reverseBits(_wgslsmith_sub_i32(-2147483647i, arg_2.c.a.e.x))), global1.c, _wgslsmith_mult_vec3_u32(vec3<u32>(0u, _wgslsmith_add_u32(1u, u_input.c.x), ~global3.a.b.x), ~firstLeadingBit(vec3<u32>(0u, global3.a.b.x, global1.d.x))), global1.e);
    global0 = array<u32, 12>();
    var var_0 = func_1(func_1(func_1(arg_2.c, arg_2.c.a, 534f).c, arg_2.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_2.c.c.d.x)))).c, global3.b, 1427f);
    var var_1 = ~_wgslsmith_mult_vec2_u32(~(~u_input.c.yw), _wgslsmith_clamp_vec2_u32(u_input.c.xz, reverseBits(u_input.c.zw), ~_wgslsmith_div_vec2_u32(vec2<u32>(arg_2.c.a.b.x, 38979u), arg_2.c.b.b)));
    let var_2 = func_1(arg_2.c, var_0.c.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1441f - _wgslsmith_f_op_f32(floor(1544f))))));
    return select(select(vec3<bool>(!arg_3, !any(global1.e), !arg_2.b.x), !select(select(global1.e.xwz, vec3<bool>(true, var_2.b.x, true), global1.e.zzw), vec3<bool>(false, false, false), vec3<bool>(arg_3, false, false)), vec3<bool>(2147483647i >= -arg_2.c.a.e.x, func_1(func_1(arg_2.c, Struct_1(vec4<i32>(1i, 33516i, global3.c.e.x, 56236i), vec2<u32>(1u, u_input.c.x), arg_2.c.b.c, vec2<f32>(var_2.c.b.d.x, arg_2.c.d.x), var_2.c.b.e), var_2.c.c.d.x).c, func_1(var_0.c, Struct_1(vec4<i32>(0i, 0i, u_input.b, u_input.a.x), vec2<u32>(global1.d.x, u_input.c.x), var_2.c.b.c, var_0.c.d, global3.c.a), 349f).c.a, func_1(Struct_2(var_0.c.b, Struct_1(var_0.a, u_input.c.xw, global3.c.c, var_2.c.a.c.yy, global3.c.a), var_0.c.a, vec2<f32>(421f, global3.c.c.x), false), Struct_1(global3.c.a, vec2<u32>(var_0.c.c.b.x, arg_2.c.b.b.x), var_0.c.c.c, global3.a.c.yx, arg_2.c.c.a), global3.c.d.x).c.b.d.x).c.e, !var_2.c.e)), select(global1.e.wzz, global1.e.zwx, select(!global1.e.xwy, global1.e.yww, !vec3<bool>(false, arg_2.c.e, true))), select(!select(!vec3<bool>(true, global1.c.x, false), select(global1.e.wyw, vec3<bool>(global1.e.x, global3.e, false), var_0.c.e), global3.e), vec3<bool>(!func_1(Struct_2(Struct_1(arg_2.c.a.e, global3.c.b, vec3<f32>(1377f, arg_2.c.d.x, 1000f), arg_2.c.c.c.xz, var_2.c.a.e), Struct_1(var_0.c.a.e, vec2<u32>(92185u, arg_2.c.a.b.x), vec3<f32>(global3.b.d.x, 1871f, var_0.c.c.d.x), vec2<f32>(1078f, arg_0), vec4<i32>(1i, -27330i, -10786i, global1.b.x)), Struct_1(var_0.c.b.e, var_2.c.a.b, vec3<f32>(var_2.c.a.c.x, arg_0, -489f), var_0.c.a.c.xy, vec4<i32>(global4.x, -2147483647i, var_0.a.x, global4.x)), vec2<f32>(138f, -350f), true), global3.c, var_0.c.b.d.x).c.e, true, var_2.c.e), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!vec3<bool>(true, global1.e.x, true), global1.e.yzy, select(select(func_4(global3.b.d.x, 1i, func_1(Struct_2(Struct_1(global3.a.e, vec2<u32>(35488u, u_input.c.x), global3.c.c, global3.a.d, vec4<i32>(global1.a, global3.c.a.x, -2147483647i, global4.x)), global3.c, Struct_1(global3.c.a, vec2<u32>(global1.d.x, 55231u), global3.b.c, global3.d, global3.c.a), global3.b.c.xx, global1.c.x), Struct_1(vec4<i32>(1i, 2147483647i, -2147483647i, -1i), vec2<u32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(39860u, 12u)], 12u)], 32u)], 88307u), vec3<f32>(global3.d.x, -965f, 1089f), global3.d, global3.c.e), -586f), true), vec3<bool>(true, true, true), global1.e.yxy), select(global1.e.wxz, !func_4(global3.d.x, -1i, Struct_5(global3.a.a, global1.e.yz, Struct_2(global3.b, Struct_1(global3.a.e, vec2<u32>(u_input.c.x, 4294967295u), vec3<f32>(-141f, global3.b.d.x, global3.c.d.x), vec2<f32>(1613f, global3.c.d.x), vec4<i32>(-1i, global3.b.a.x, -6229i, u_input.b)), Struct_1(global3.a.e, u_input.c.ww, vec3<f32>(-300f, global3.d.x, global3.a.c.x), global3.c.d, global3.c.a), global3.a.d, global3.e)), global3.e), !global1.e.wyy), global1.e.xyy));
    var var_1 = -639f;
    var var_2 = firstTrailingBit(vec2<u32>(~(~_wgslsmith_add_u32(0u, 21125u)), 0u));
    var_2 = countOneBits(global1.d.zy);
    global2 = array<u32, 32>();
    var var_3 = !vec4<bool>(_wgslsmith_dot_vec3_u32(select(global1.d, vec3<u32>(4294967295u, var_2.x, 11679u), global1.e.wxz), vec3<u32>(43769u, 0u, var_2.x)) <= 28515u, !func_1(Struct_2(global3.b, Struct_1(vec4<i32>(global1.a, u_input.b, -11118i, -1i), global3.a.b, global3.c.c, global3.c.c.zx, global3.b.a), Struct_1(global3.b.a, vec2<u32>(global3.c.b.x, 2083u), global3.c.c, vec2<f32>(global3.d.x, global3.d.x), global3.c.e), vec2<f32>(global3.b.c.x, 1000f), true), global3.a, -1000f).b.x, u_input.c.x >= _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(min(global0[_wgslsmith_index_u32(u_input.c.x, 12u)], var_2.x), 12u)], ~0u), all(select(global1.e.yxy, vec3<bool>(false, var_0.x, true), !global3.e)));
    global4 = _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(func_1(Struct_2(Struct_1(vec4<i32>(-37125i, global1.b.x, global1.a, 0i), u_input.c.xw, global3.a.c, global3.b.c.zx, vec4<i32>(global1.b.x, -8523i, global4.x, global1.a)), global3.a, Struct_1(global3.c.a, global1.d.yx, vec3<f32>(global3.b.d.x, global3.c.c.x, global3.c.c.x), global3.c.c.xy, global3.b.e), vec2<f32>(-2371f, global3.c.d.x), global3.e), global3.c, global3.d.x).a.zzw, vec3<i32>(u_input.b, global3.c.e.x, -1i)), vec3<i32>(i32(-1i) * -global4.x, u_input.b, 3313i), _wgslsmith_mult_vec3_i32(~(-global3.c.a.yyy), func_1(func_1(Struct_2(global3.a, Struct_1(vec4<i32>(global4.x, 34971i, -10406i, 9552i), vec2<u32>(39682u, 4294967295u), vec3<f32>(global3.b.d.x, 1773f, global3.b.c.x), global3.d, vec4<i32>(-15323i, u_input.b, u_input.b, -704i)), Struct_1(global3.c.a, vec2<u32>(global3.c.b.x, global1.d.x), global3.c.c, vec2<f32>(global3.c.c.x, global3.c.d.x), vec4<i32>(-32978i, 33069i, 39360i, -19260i)), global3.a.d, var_3.x), global3.a, 218f).c, Struct_1(vec4<i32>(u_input.a.x, 2147483647i, global4.x, 14743i), u_input.c.yw, vec3<f32>(-564f, 666f, global3.b.d.x), global3.c.c.yz, vec4<i32>(u_input.a.x, global1.a, global1.b.x, global1.b.x)), global3.b.c.x).a.yyy)), _wgslsmith_div_vec3_i32(max(~vec3<i32>(33538i, u_input.a.x, global3.a.a.x), global3.b.e.zzy) & ~min(vec3<i32>(global4.x, global4.x, u_input.a.x), global1.b), min(-countOneBits(global3.b.a.wxz), global3.c.e.yyw)));
    let x = u_input.a;
    s_output = StorageBuffer(~global0[_wgslsmith_index_u32(0u, 12u)], 1u);
}

