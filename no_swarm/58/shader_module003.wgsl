struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12>;

var<private> global1: vec4<u32> = vec4<u32>(4294967295u, 1u, 62359u, 86605u);

var<private> global2: Struct_1 = Struct_1(0i, vec2<i32>(-1i, -74016i), vec3<i32>(-1i, 33218i, -46784i), vec2<f32>(-168f, 1000f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    global0 = array<i32, 12>();
    var var_0 = arg_0;
    var var_1 = countOneBits(vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(-40429i, u_input.e, u_input.e, global2.b.x), firstTrailingBit(vec4<i32>(1i, -1i, 2147483647i, global2.a))), ~global0[_wgslsmith_index_u32(u_input.c.x, 12u)], _wgslsmith_sub_i32(~global2.b.x, reverseBits(firstLeadingBit(arg_0.c.x))), -_wgslsmith_dot_vec2_i32(var_0.c.yz, ~vec2<i32>(global2.a, 12496i))));
    var_1 = firstTrailingBit(vec4<i32>(-1i, global2.b.x, arg_0.c.x, i32(-1i) * -global0[_wgslsmith_index_u32(102226u, 12u)]) >> (vec4<u32>(global1.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 10580u, u_input.d, global1.x), vec4<u32>(global1.x, 4294967295u, u_input.d, 7657u)), _wgslsmith_dot_vec2_u32(global1.yw, vec2<u32>(u_input.b.x, 29851u))), global1.x, ~(~global1.x)) % vec4<u32>(32u)));
    let var_2 = !all(vec2<bool>(true, any(vec3<bool>(true, false, true))));
    return vec4<u32>(~(~max(_wgslsmith_sub_u32(global1.x, u_input.c.x), 4294967295u << (u_input.b.x % 32u))), ~u_input.b.x, _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b.x, u_input.d), global1.x), select(0u, ~select(_wgslsmith_mod_u32(4294967295u, global1.x), ~4294967295u, var_1.x >= 2147483647i), true));
}

fn func_2(arg_0: bool) -> vec3<f32> {
    var var_0 = Struct_1(u_input.e, abs(-(~global2.c.xy)), reverseBits(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(38674u, 12u)], 2147483647i, -1i), global2.c) << (u_input.c % vec3<u32>(32u)), global2.c, global2.c | ~vec3<i32>(u_input.a.x, global2.a, -1i))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.d.x, global2.d.x)) - global2.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -832f) * -827f)));
    global1 = ((abs(~vec4<u32>(global1.x, 4294967295u, u_input.d, global1.x)) | ~func_3(Struct_1(9131i, var_0.b, var_0.c, var_0.d))) & _wgslsmith_add_vec4_u32(~(~vec4<u32>(u_input.b.x, global1.x, u_input.c.x, 1u)), ~firstTrailingBit(vec4<u32>(u_input.b.x, 0u, global1.x, u_input.d)))) << (vec4<u32>(~(~u_input.d >> (global1.x % 32u)), global1.x, _wgslsmith_sub_u32(func_3(Struct_1(0i, vec2<i32>(2147483647i, 3668i), var_0.c, vec2<f32>(-1768f, 530f))).x, ~_wgslsmith_sub_u32(4294967295u, u_input.b.x)), 1u) % vec4<u32>(32u));
    var var_1 = Struct_1(-_wgslsmith_sub_i32(-var_0.a, -abs(global2.a)), -max(select(u_input.a, -vec2<i32>(global0[_wgslsmith_index_u32(0u, 12u)], global2.a), !vec2<bool>(arg_0, arg_0)), vec2<i32>(abs(global2.c.x), u_input.e)), _wgslsmith_sub_vec3_i32(var_0.c, var_0.c), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_0.d), _wgslsmith_f_op_vec2_f32(min(global2.d, vec2<f32>(_wgslsmith_f_op_f32(var_0.d.x + var_0.d.x), global2.d.x))))));
    var var_2 = ~_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(abs(u_input.a), max(var_1.b, var_0.b)), min(firstTrailingBit(var_0.c.yy), vec2<i32>(6907i, global2.b.x)), u_input.a) << (u_input.c.yx % vec2<u32>(32u));
    var var_3 = Struct_1(-(_wgslsmith_mod_i32(~var_1.b.x, _wgslsmith_dot_vec2_i32(u_input.a, global2.c.yy)) << (u_input.b.x % 32u)), firstLeadingBit(firstTrailingBit(var_0.c.xz)), -(~countOneBits(vec3<i32>(u_input.e, 25553i, -66458i))), var_0.d);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(917f, var_3.d.x, 1021f) - vec3<f32>(global2.d.x, -1308f, 595f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1888f, 478f, var_1.d.x), vec3<f32>(global2.d.x, -613f, 2379f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d.x, -357f, var_3.d.x) + vec3<f32>(179f, -1911f, var_3.d.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.d.x, var_1.d.x, var_0.d.x) + vec3<f32>(-1911f, global2.d.x, var_1.d.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_0.d.x, var_1.d.x) + vec3<f32>(var_3.d.x, var_0.d.x, var_0.d.x))))));
}

fn func_4(arg_0: vec3<f32>) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.d.x)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1201f * _wgslsmith_f_op_f32(exp2(global2.d.x)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, _wgslsmith_div_f32(1265f, arg_0.x), _wgslsmith_f_op_f32(ceil(arg_0.x))) * arg_0);
    var var_2 = 2147483647i | -_wgslsmith_add_i32(_wgslsmith_mod_i32(2147483647i, max(global2.a, global0[_wgslsmith_index_u32(4294967295u, 12u)])), ~(~global0[_wgslsmith_index_u32(4294967295u, 12u)]));
    var var_3 = ~(~4294967295u);
    global1 = abs(~_wgslsmith_add_vec4_u32(abs(vec4<u32>(u_input.d, global1.x, 36574u, u_input.b.x)), ~vec4<u32>(4294967295u, u_input.c.x, 0u, global1.x))) >> (vec4<u32>(34145u, 7675u, u_input.c.x, ~70798u & ~(global1.x << (4294967295u % 32u))) % vec4<u32>(32u));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), var_1.x, -722f, arg_0.x) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(-1824f + _wgslsmith_f_op_f32(217f * var_1.x))), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(var_1.x - -869f))), 947f, _wgslsmith_f_op_f32(sign(var_1.x))));
}

fn func_5(arg_0: vec4<f32>, arg_1: bool, arg_2: vec4<f32>) -> vec2<i32> {
    global0 = array<i32, 12>();
    var var_0 = Struct_1(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(global2.b, vec2<i32>(u_input.e, global2.b.x)), global0[_wgslsmith_index_u32(4294967295u, 12u)] << (u_input.b.x % 32u)), 2147483647i, global2.a) & 0i, vec2<i32>(u_input.e, global2.b.x), ~global2.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, arg_0.x) * global2.d)), vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(-arg_0.x)), vec2<bool>(u_input.a.x > global2.a, true)))));
    var var_1 = _wgslsmith_f_op_f32(round(var_0.d.x));
    var_1 = var_0.d.x;
    return _wgslsmith_add_vec2_i32(~select(vec2<i32>(countOneBits(0i), global0[_wgslsmith_index_u32(~u_input.d, 12u)]), global2.c.yx, true), ~_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a, var_0.c.zy), _wgslsmith_div_vec2_i32(reverseBits(var_0.b), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(-2147483647i, -1i)))));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: f32, arg_3: vec3<f32>) -> Struct_1 {
    global2 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_div_i32(2147483647i, _wgslsmith_sub_i32(firstLeadingBit(arg_0.x), -2147483647i)), _wgslsmith_mod_i32(5510i & firstTrailingBit(global2.a), -(~8858i))), func_5(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec3_f32(func_2(global2.b.x >= 0i)))), true, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-156f, -688f, 1000f, -318f), vec4<f32>(arg_2, -316f, arg_1.d.x, -1328f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.x, 1225f, arg_1.d.x, global2.d.x)), select(select(false, true, false), true, true)))), abs(abs(vec3<i32>(abs(0i), -35908i, u_input.e | arg_1.c.x))), arg_1.d);
    var var_0 = (any(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, true), true), arg_1.d.x <= arg_3.x)) | true) == select(!all(vec4<bool>(true, true, true, true)) | true, any(vec4<bool>(true, true, true, true)), true);
    global2 = arg_1;
    var var_1 = arg_1.c.x;
    let var_2 = arg_1;
    return Struct_1(i32(-1i) * -abs(countOneBits(arg_0.x)), arg_0.zz, abs(-(global2.c & firstLeadingBit(arg_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3.xz)));
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_1(-_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(arg_1.b.x, global2.a, arg_2.c.x, global0[_wgslsmith_index_u32(u_input.d, 12u)]), firstTrailingBit(vec4<i32>(arg_1.b.x, arg_2.b.x, -24564i, 0i))), -vec4<i32>(-1i, global2.a, 2147483647i, 0i)), ~(-vec2<i32>(global0[_wgslsmith_index_u32(11410u, 12u)], arg_2.a)) | firstLeadingBit(abs(vec2<i32>(-40754i, -49506i))), vec3<i32>(1i, firstLeadingBit(-39307i) >> (u_input.d % 32u), -2147483647i), arg_2.d);
    global1 = vec4<u32>(~countOneBits(~60981u) ^ select(1u, u_input.c.x, 421f < var_0.d.x), ~32016u, global1.x, ~global1.x ^ ~(~(~1u)));
    var var_1 = vec4<f32>(470f, -1666f, arg_2.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.d.x, arg_1.d.x))));
    var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-2971f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.d.x), -495f))), var_0.d.x) + _wgslsmith_f_op_vec4_f32(func_4(vec3<f32>(-1344f, _wgslsmith_f_op_f32(func_1(vec3<i32>(var_0.a, arg_1.a, -13011i), Struct_1(u_input.a.x, vec2<i32>(1i, 0i), vec3<i32>(global2.b.x, 56103i, -20931i), arg_2.d), arg_2.d.x, var_1.zyz).d.x - _wgslsmith_f_op_vec3_f32(func_2(arg_0.x)).x), -1036f))));
    let var_2 = arg_0.x;
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<u32>(_wgslsmith_clamp_u32(global1.x, select(~1u, ~6817u, true), 1u), ~global1.x << (4400u % 32u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, global1.x), vec2<u32>(11182u, global1.x)), 9744u | func_6(vec2<bool>(true, false), Struct_1(global0[_wgslsmith_index_u32(32327u, 12u)], vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(global1.x, 12u)]), global2.c, vec2<f32>(-984f, -1675f)), func_1(vec3<i32>(-1i, global0[_wgslsmith_index_u32(0u, 12u)], -5025i), Struct_1(u_input.a.x, u_input.a, global2.c, global2.d), global2.d.x, vec3<f32>(global2.d.x, global2.d.x, -475f)))) ^ (abs(_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(u_input.c.x, 1u, 4294967295u, u_input.c.x)), ~vec4<u32>(0u, global1.x, global1.x, u_input.b.x))) >> (countOneBits(~vec4<u32>(5609u, 13329u, u_input.d, 0u) >> (vec4<u32>(1u, 6263u, u_input.b.x, global1.x) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_0 = true;
    global2 = func_1(global2.c, func_1(_wgslsmith_mult_vec3_i32(-global2.c, countOneBits(global2.c) & _wgslsmith_mult_vec3_i32(global2.c, vec3<i32>(-21126i, global2.b.x, 1i))), func_1(global2.c, Struct_1(1i, global2.b & u_input.a, global2.c, _wgslsmith_div_vec2_f32(vec2<f32>(global2.d.x, global2.d.x), vec2<f32>(global2.d.x, 1000f))), global2.d.x, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.d.x, global2.d.x, global2.d.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.d.x, global2.d.x, global2.d.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d.x * -287f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(202f, global2.d.x, global2.d.x)), _wgslsmith_f_op_vec4_f32(func_4(vec3<f32>(global2.d.x, -835f, 1159f))).xwy)) * _wgslsmith_f_op_vec3_f32(func_2(true)))), _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(1989f, global2.d.x, 1418f), vec3<f32>(-865f, global2.d.x, global2.d.x))))))).x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.d.x, global2.d.x, _wgslsmith_f_op_f32(-global2.d.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.d.x, -2376f, 329f) * vec3<f32>(-1266f, 1249f, -1063f)) * vec3<f32>(-763f, global2.d.x, global2.d.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(global2.b >> (abs(global1.xx) % vec2<u32>(32u)), ~(vec2<u32>(4294967295u, ~global1.x) >> (global1.yx % vec2<u32>(32u))), 177f);
}

