struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: Struct_2,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: array<u32, 16>;

var<private> global2: Struct_1 = Struct_1(vec4<f32>(1448f, 445f, -683f, -421f), 3306u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec2<i32> {
    let var_0 = max(~_wgslsmith_sub_vec2_i32(-u_input.b, u_input.b), vec2<i32>(u_input.c, -25468i));
    var var_1 = _wgslsmith_f_op_vec4_f32(-global2.a);
    var var_2 = _wgslsmith_mult_u32(global2.b, global2.b);
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -259f);
    let var_4 = select(max(_wgslsmith_add_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(29460i, u_input.c, -17351i, 0i), vec4<i32>(u_input.a, 1i, u_input.b.x, 13139i)), -select(vec4<i32>(1i, -2561i, -2147483647i, u_input.a), vec4<i32>(var_0.x, -2147483647i, u_input.b.x, -36777i), vec4<bool>(false, true, true, true))), -_wgslsmith_mult_vec4_i32(-vec4<i32>(var_0.x, -42703i, -44051i, var_0.x), countOneBits(vec4<i32>(u_input.c, -12325i, -16356i, 3076i)))), _wgslsmith_mod_vec4_i32(firstLeadingBit(abs(vec4<i32>(var_0.x, -51579i, -28441i, 24053i))), vec4<i32>(0i, firstTrailingBit(reverseBits(u_input.a)), -countOneBits(u_input.b.x), 27439i ^ _wgslsmith_mult_i32(var_0.x, -27215i))), vec4<bool>(true, true, select(true, true, true), false));
    return reverseBits(~firstTrailingBit(var_4.xz));
}

fn func_2() -> i32 {
    var var_0 = Struct_2(true, func_3(), 27544u, 7507i, Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2.a.x, 320f, -1138f, global2.a.x), _wgslsmith_f_op_vec4_f32(-global2.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(499f, 234f, 1823f, -1037f)))), 81305u));
    var_0 = Struct_2(false, abs(vec2<i32>(u_input.b.x & u_input.b.x, i32(-1i) * -5076i)), ~_wgslsmith_div_u32(max(83863u, global1[_wgslsmith_index_u32(59820u, 16u)]), 1u) | ~global2.b, -_wgslsmith_sub_i32(var_0.b.x, -u_input.a), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1068f, _wgslsmith_f_op_f32(sign(var_0.e.a.x)), var_0.e.a.x, _wgslsmith_f_op_f32(-global2.a.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, var_0.e.a.x, var_0.e.a.x, -1275f)))), 1u >> ((_wgslsmith_clamp_u32(var_0.c, var_0.e.b, var_0.e.b) & var_0.e.b) % 32u)));
    global2 = Struct_1(vec4<f32>(1391f, global2.a.x, _wgslsmith_f_op_f32(ceil(610f)), global2.a.x), ~countOneBits(abs(global1[_wgslsmith_index_u32(var_0.c, 16u)])) | firstLeadingBit(global1[_wgslsmith_index_u32(~global2.b, 16u)] >> (~var_0.e.b % 32u)));
    var var_1 = Struct_3(-u_input.b ^ ~max(vec2<i32>(u_input.b.x, 1i) << (vec2<u32>(8585u, global1[_wgslsmith_index_u32(var_0.e.b, 16u)]) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.d, var_0.d), var_0.b)), firstLeadingBit(vec3<u32>(30735u, reverseBits(global2.b), _wgslsmith_div_u32(global1[_wgslsmith_index_u32(52829u, 16u)], 12102u))) ^ ~abs(vec3<u32>(global2.b, var_0.e.b, global2.b)), Struct_2(all(select(!vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, var_0.a), !var_0.a)), u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(5719u, 71151u, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(global2.b, 16u)], 18207u), 16u)]), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(select(4294967295u, 0u, true), 16u)], 16u)], ~18087u, global2.b)), select(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(29461i, u_input.c, var_0.d), vec3<i32>(2147483647i, 0i, var_0.d)), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 1i, u_input.a), vec3<i32>(u_input.a, var_0.d, u_input.b.x))), abs(var_0.b.x ^ var_0.b.x), true), var_0.e), ~vec3<u32>(max(global1[_wgslsmith_index_u32(firstLeadingBit(global1[_wgslsmith_index_u32(global2.b, 16u)]), 16u)], var_0.e.b), 4294967295u, 61118u));
    global0 = min(32625i, ~countOneBits(_wgslsmith_sub_i32(countOneBits(-2147483647i), ~(-2147483647i))));
    return _wgslsmith_sub_i32(var_0.d, min(~(~21866i), _wgslsmith_add_i32(-10873i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.d, u_input.c), vec2<i32>(-61766i, 2147483647i)) & ~u_input.a)));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: u32) -> Struct_2 {
    global0 = i32(-1i) * -_wgslsmith_sub_i32(_wgslsmith_sub_i32(arg_1, u_input.b.x) & _wgslsmith_add_i32(u_input.c, arg_1), -2835i);
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-global2.a.x));
    let var_1 = Struct_3(u_input.b, ~countOneBits(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 87556u, 47160u), vec3<u32>(0u, 90660u, 1u))), Struct_2(true, vec2<i32>(~(-2147483647i), -(u_input.c & u_input.b.x)), global1[_wgslsmith_index_u32(4294967295u, 16u)], _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(select(vec2<i32>(21292i, 2147483647i), u_input.b, vec2<bool>(arg_0, false)), ~vec2<i32>(-2147483647i, arg_1)), u_input.b), Struct_1(_wgslsmith_f_op_vec4_f32(-global2.a), ~global2.b)), vec3<u32>(firstTrailingBit(global2.b), arg_2, _wgslsmith_mod_u32(_wgslsmith_div_u32(4294967295u, global2.b), 54259u)));
    global0 = -_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(~32561i, _wgslsmith_add_i32(189i, arg_1), ~31695i, -arg_1), vec4<i32>(-1i) * -vec4<i32>(arg_1, var_1.a.x, -30381i, var_1.a.x)), firstTrailingBit(max(vec4<i32>(-27910i, var_1.a.x, arg_1, u_input.a) >> (vec4<u32>(global1[_wgslsmith_index_u32(27592u, 16u)], 40386u, 4294967295u, var_1.b.x) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-14760i, -1i, u_input.c, -2147483647i), vec4<i32>(var_1.c.d, 0i, -14413i, 2147483647i), vec4<i32>(arg_1, var_1.c.b.x, arg_1, 2147483647i)))));
    let var_2 = max(min(select(~vec4<i32>(-2147483647i, var_1.c.b.x, 1i, -1i), vec4<i32>(var_1.a.x, arg_1, var_1.c.d, -1i) | vec4<i32>(-42815i, var_1.a.x, u_input.b.x, 1i), select(vec4<bool>(var_1.c.a, arg_0, var_1.c.a, var_1.c.a), vec4<bool>(true, false, false, arg_0), false)) >> (~firstLeadingBit(vec4<u32>(19657u, 49302u, 29792u, global2.b)) % vec4<u32>(32u)), vec4<i32>(-27935i, -(i32(-1i) * -2147483647i), countOneBits(i32(-1i) * -18889i), 2147483647i)), -vec4<i32>(-1i, reverseBits(-4351i), _wgslsmith_mod_i32(-2147483647i, arg_1), -67282i << (arg_2 % 32u)) ^ vec4<i32>(~(-40617i << (arg_2 % 32u)), 12644i, _wgslsmith_dot_vec2_i32(u_input.b, u_input.b), min(_wgslsmith_mod_i32(-2147483647i, 40381i), min(u_input.b.x, u_input.a))));
    return var_1.c;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = func_4(firstLeadingBit(_wgslsmith_dot_vec3_i32(-vec3<i32>(1i, 10692i, -6727i), vec3<i32>(arg_1.a.x, arg_1.a.x, u_input.c))) != -func_2(), -reverseBits(-47851i), min(arg_2.x, reverseBits(_wgslsmith_dot_vec2_u32(min(arg_2.yy, vec2<u32>(global1[_wgslsmith_index_u32(1u, 16u)], arg_2.x)), reverseBits(vec2<u32>(4294967295u, arg_0.b))))));
    global1 = array<u32, 16>();
    global0 = var_0.b.x;
    global0 = -2147483647i;
    let var_1 = Struct_2(!(firstTrailingBit(var_0.e.b) >= _wgslsmith_dot_vec4_u32(arg_2, vec4<u32>(0u, 12379u, 4294967295u, var_0.e.b))) != select(true, (arg_0.a.x != 862f) || any(vec2<bool>(true, true)), true), arg_1.c.b, arg_0.b, abs(-(arg_1.c.d << (~global2.b % 32u))), arg_1.c.e);
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.c.e.a.x, -448f, var_1.e.a.x, -2075f), var_0.e.a), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.e.a.x, var_1.e.a.x, -1629f, 1810f)))) - _wgslsmith_div_vec4_f32(vec4<f32>(var_1.e.a.x, var_1.e.a.x, 1100f, 127f), vec4<f32>(arg_1.c.e.a.x, -484f, -1679f, -312f)))), var_1.c);
}

fn func_5(arg_0: Struct_2) -> vec4<f32> {
    var var_0 = vec3<i32>(_wgslsmith_div_i32(-u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(max(arg_0.b.x, 1i), -6798i, arg_0.d, -9744i), -_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.b.x, 1i), vec4<i32>(u_input.c, -25424i, arg_0.d, 0i)))), i32(-1i) * -22234i, arg_0.b.x);
    global1 = array<u32, 16>();
    global2 = func_4(arg_0.a, -abs(-var_0.x >> (1u % 32u)), select(~arg_0.e.b, firstLeadingBit(_wgslsmith_mult_u32(arg_0.c, global2.b)) >> ((_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(84267u, 16u)], arg_0.c) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(29548u, 0u, 11532u), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)], global1[_wgslsmith_index_u32(41857u, 16u)], global1[_wgslsmith_index_u32(arg_0.c, 16u)])) % 32u)) % 32u), true)).e;
    let var_1 = _wgslsmith_div_u32(52746u, 19153u);
    var var_2 = select(vec4<bool>(any(!vec2<bool>(arg_0.a, true)), (i32(-1i) * -arg_0.d) <= firstLeadingBit(-50525i), true, true), vec4<bool>(all(vec2<bool>(var_0.x > var_0.x, true)), _wgslsmith_f_op_f32(trunc(global2.a.x)) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(-148f + -202f), -1546f), arg_0.a, arg_0.a), false);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.e.a.x, _wgslsmith_f_op_f32(1503f * _wgslsmith_f_op_f32(round(global2.a.x))), _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1188f * arg_0.e.a.x), global2.a.x)), func_4(var_2.x, -u_input.c, abs(1u)).e.a, vec4<bool>(func_4(true, -51775i, firstLeadingBit(1u)).a, var_2.x && (arg_0.e.a.x == global2.a.x), var_2.x, func_3().x == var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(884f, 1482f, -943f, 948f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.a.x, 1894f, -1206f, global2.a.x), global2.a, vec4<bool>(true, true, true, false)))))) * _wgslsmith_f_op_vec4_f32(func_5(Struct_2(false, -u_input.b, 1u, -1i, func_1(Struct_1(vec4<f32>(global2.a.x, global2.a.x, 237f, 589f), global2.b), Struct_3(u_input.b, vec3<u32>(global2.b, 1u, 0u), Struct_2(true, u_input.b, 1u, u_input.c, Struct_1(vec4<f32>(global2.a.x, -466f, global2.a.x, -1000f), 18293u)), vec3<u32>(0u, 0u, 47294u)), vec4<u32>(50711u, 50412u, global2.b, global1[_wgslsmith_index_u32(80927u, 16u)]))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(2985i, 2147483647i, 0i, -1i), ~(~(~vec4<u32>(4294967295u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 16u)], 16u)], 1u) << (reverseBits(vec4<u32>(0u, 4294967295u, 4294967295u, 1u)) % vec4<u32>(32u)))), global1[_wgslsmith_index_u32(~(~28386u), 16u)]);
}

