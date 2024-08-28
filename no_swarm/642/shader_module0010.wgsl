struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: Struct_1,
    d: vec2<u32>,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: bool,
    d: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<i32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23> = array<f32, 23>(-1000f, 823f, -878f, 891f, -100f, -684f, 1897f, -558f, -1365f, -512f, 1000f, -560f, -732f, 152f, 2143f, -410f, -1319f, -2649f, -901f, -1678f, -1000f, 147f, 189f);

var<private> global1: u32 = 17591u;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: vec2<bool>, arg_3: u32) -> vec3<i32> {
    global1 = ~_wgslsmith_dot_vec3_u32((_wgslsmith_add_vec3_u32(vec3<u32>(34748u, 4294967295u, 0u), vec3<u32>(u_input.a, 6493u, 29030u)) | ~vec3<u32>(1u, arg_3, u_input.a)) ^ (~vec3<u32>(u_input.a, u_input.a, 20014u) & _wgslsmith_div_vec3_u32(vec3<u32>(arg_3, 46299u, u_input.a), vec3<u32>(4294967295u, u_input.a, u_input.a))), _wgslsmith_mod_vec3_u32(abs(vec3<u32>(arg_3, u_input.a, 1u) | vec3<u32>(0u, arg_3, 1u)), ~abs(vec3<u32>(50303u, 23552u, arg_3))));
    global0 = array<f32, 23>();
    var var_0 = Struct_3(1944f, Struct_2(~arg_1, firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(-52550i, -1i, arg_1.x), vec3<i32>(arg_1.x, u_input.b.x, arg_1.x) ^ vec3<i32>(2147483647i, 0i, 24646i))), Struct_1(80487u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(1u, 23u)], 1887f)), vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 23u)], global0[_wgslsmith_index_u32(u_input.a, 23u)])), firstTrailingBit(vec4<i32>(arg_1.x, -2147483647i, arg_1.x, arg_1.x) | vec4<i32>(-1i, u_input.b.x, -1i, 2147483647i)), 4517i, _wgslsmith_f_op_f32(trunc(230f))), _wgslsmith_sub_vec2_u32(select(~vec2<u32>(32795u, arg_3), ~vec2<u32>(u_input.a, u_input.a), !arg_2), vec2<u32>(firstLeadingBit(u_input.a), arg_3)), true), arg_3 >= 4294967295u, _wgslsmith_clamp_vec4_i32((vec4<i32>(-23820i, -89770i, 37387i, u_input.b.x) & (vec4<i32>(u_input.b.x, -2147483647i, 37921i, 2147483647i) | vec4<i32>(-2147483647i, arg_1.x, 1i, arg_1.x))) | _wgslsmith_div_vec4_i32(~vec4<i32>(arg_1.x, -2147483647i, 0i, arg_1.x), select(vec4<i32>(-2147483647i, -1i, arg_1.x, arg_1.x), vec4<i32>(22998i, arg_1.x, u_input.b.x, u_input.b.x), vec4<bool>(false, arg_2.x, false, arg_0))), min(max(~vec4<i32>(-2147483647i, 7408i, u_input.b.x, u_input.b.x), vec4<i32>(24400i, arg_1.x, 10469i, arg_1.x) & vec4<i32>(0i, u_input.b.x, arg_1.x, arg_1.x)), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 689i, 52843i), vec4<i32>(1i, 6319i, 0i, 25372i)), max(vec4<i32>(0i, u_input.b.x, u_input.b.x, arg_1.x), vec4<i32>(arg_1.x, -18791i, -29256i, arg_1.x)))), firstTrailingBit(vec4<i32>(u_input.b.x, arg_1.x, -34196i, arg_1.x) | vec4<i32>(0i, -7609i, u_input.b.x, 9265i)) ^ vec4<i32>(-u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(76570i, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, arg_1.x, 14600i)), u_input.b.x & 43259i, 2147483647i)));
    global0 = array<f32, 23>();
    let var_1 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstLeadingBit(u_input.a), 72372u), 23u)]))), Struct_2(vec2<i32>(reverseBits(u_input.b.x), -2147483647i) << ((vec2<u32>(u_input.a, arg_3) >> (firstTrailingBit(vec2<u32>(1u, 94918u)) % vec2<u32>(32u))) % vec2<u32>(32u)), vec3<i32>(firstTrailingBit(~arg_1.x), var_0.d.x, ~_wgslsmith_add_i32(0i, 0i)), Struct_1(var_0.b.d.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, var_0.b.c.b.x) * vec2<f32>(633f, 1373f)), _wgslsmith_div_vec2_f32(vec2<f32>(-249f, -1370f), vec2<f32>(var_0.a, -1457f)), true)), vec4<i32>(-1i) * -vec4<i32>(0i, 12201i, -2147483647i, -2147483647i), -_wgslsmith_add_i32(u_input.b.x, 2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-403f + -1033f) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_3, 23u)]))), var_0.b.d, true), var_0.c, ~countOneBits(firstTrailingBit(vec4<i32>(-2147483647i, var_0.b.b.x, 1i, 9374i))) ^ _wgslsmith_mult_vec4_i32(var_0.d, _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.d.x, 56311i, arg_1.x, arg_1.x), vec4<i32>(1i, u_input.b.x, 5261i, arg_1.x)) | vec4<i32>(u_input.b.x, 17667i, u_input.b.x, var_0.d.x)));
    return var_0.b.c.c.xww;
}

fn func_2() -> vec2<i32> {
    global0 = array<f32, 23>();
    global1 = u_input.a;
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -851f);
    var var_1 = u_input.a;
    var var_2 = Struct_5(Struct_2(-countOneBits(u_input.b & vec2<i32>(u_input.b.x, u_input.b.x)), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, 10725i, u_input.b.x) >> (vec3<u32>(0u, 4294967295u, u_input.a) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, 14796i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, 1i))), func_3(false, firstTrailingBit(u_input.b), vec2<bool>(true, true), 19875u)), Struct_1(firstLeadingBit(1u) | u_input.a, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 23u)], var_0)))), vec4<i32>(1i, ~u_input.b.x, -u_input.b.x, _wgslsmith_add_i32(-18071i, u_input.b.x)), ~u_input.b.x, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, abs(u_input.a)), 23u)]), firstTrailingBit(_wgslsmith_clamp_vec2_u32(select(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(2801u, 38594u), false), ~vec2<u32>(u_input.a, u_input.a), vec2<u32>(16146u, u_input.a))), !(u_input.a != ~24819u)), Struct_1(~u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -583f)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0, global0[_wgslsmith_index_u32(54491u, 23u)]))))), vec4<i32>(u_input.b.x, 0i, u_input.b.x, -u_input.b.x), min(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.b.x, -28789i, -1i, u_input.b.x)), -vec4<i32>(u_input.b.x, -1i, -1i, 0i)), -(36717i | u_input.b.x)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~u_input.a, 23u)])), vec3<i32>(42583i, -firstLeadingBit(_wgslsmith_sub_i32(-20231i, -2147483647i)), -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(~(i32(-1i) * -17252i), -1i, -22257i, u_input.b.x), max(vec4<i32>(-2147483647i, -1i, u_input.b.x, -1i), ~vec4<i32>(u_input.b.x, 41809i, u_input.b.x, 5350i)) << (min(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 0u, 4294967295u, u_input.a), vec4<u32>(96391u, u_input.a, u_input.a, u_input.a)), ~vec4<u32>(u_input.a, 4294967295u, u_input.a, 46571u)) % vec4<u32>(32u))));
    return _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(~(-41524i), var_2.d), ~var_2.b.c.wx), select(vec2<i32>(_wgslsmith_add_i32(-1i, -75514i), 25465i), _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(var_2.b.c.wz, u_input.b), -var_2.c.xz), !vec2<bool>(true, var_2.a.e)) | vec2<i32>(reverseBits(max(2147483647i, 8128i)), 11097i));
}

fn func_1(arg_0: vec3<i32>) -> u32 {
    let var_0 = -1i;
    var var_1 = Struct_2(arg_0.zx, -vec3<i32>(16721i, 26341i & (20830i >> (u_input.a % 32u)), 48842i), Struct_1(1u, vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 23u)], -1000f), -vec4<i32>(u_input.b.x, var_0, var_0, var_0) & vec4<i32>(_wgslsmith_clamp_i32(arg_0.x, -2147483647i, arg_0.x), arg_0.x, 0i, firstLeadingBit(46094i)), 12927i, 1068f), _wgslsmith_mult_vec2_u32(~vec2<u32>(0u, 0u), select(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, 0u)), ~(~vec2<u32>(u_input.a, 30513u)), any(vec3<bool>(true, true, true)))), true);
    let var_2 = Struct_2(_wgslsmith_mult_vec2_i32(func_2(), -var_1.c.c.yx), arg_0, var_1.c, ~vec2<u32>(7605u, ~_wgslsmith_mult_u32(0u, var_1.c.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -872f)), 1000f) == _wgslsmith_div_f32(var_1.c.b.x, _wgslsmith_div_f32(-846f, _wgslsmith_f_op_f32(-1873f + 1000f))));
    var_1 = var_2;
    global0 = array<f32, 23>();
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 23u)]) + _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(0u, 23u)]))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(u_input.a, 23u)]))))), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(27049u, 4649u), 23u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1932f * -420f)))) + global0[_wgslsmith_index_u32(u_input.a, 23u)]);
    global1 = firstLeadingBit(func_1(max(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, -2554i, u_input.b.x), vec3<i32>(u_input.b.x, -24895i, -7813i)) & -vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i), vec3<i32>(u_input.b.x, _wgslsmith_add_i32(u_input.b.x, u_input.b.x), 1i))));
    var var_1 = any(vec4<bool>(all(vec3<bool>(true, true, true)), u_input.a == _wgslsmith_mult_u32(~50204u, _wgslsmith_sub_u32(u_input.a, 48470u)), select(any(vec4<bool>(true, true, true, true)), all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true))), false), false));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(824f * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(118493u, 23u)] - 785f)) * global0[_wgslsmith_index_u32(42059u, 23u)]);
    var var_2 = ~u_input.a;
    var var_3 = ~(~29204i);
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.a >> (~u_input.a % 32u), _wgslsmith_mod_u32(u_input.a << (~4294967295u % 32u), u_input.a)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1304f))), global0[_wgslsmith_index_u32(1u, 23u)], _wgslsmith_div_f32(240f, _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(u_input.a, 23u)]))), -267f), vec4<f32>(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 108221u), vec3<u32>(u_input.a, u_input.a, u_input.a)), 23u)], -775f, -129f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1155f + global0[_wgslsmith_index_u32(u_input.a, 23u)]) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(19911u, 23u)] * 1430f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 23u)], -926f, -990f, -440f)))) + vec4<f32>(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(23437u, 23u)], -1362f, false)), _wgslsmith_f_op_f32(round(-427f)), global0[_wgslsmith_index_u32(50585u, 23u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(8598u, u_input.a, 1u, u_input.a), vec4<u32>(u_input.a, 5663u, u_input.a, u_input.a)), 23u)]))));
}

