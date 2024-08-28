struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 3> = array<vec2<bool>, 3>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true));

var<private> global1: array<u32, 8> = array<u32, 8>(1u, 0u, 48407u, 13421u, 10223u, 1u, 57881u, 34590u);

var<private> global2: vec3<u32>;

var<private> global3: array<i32, 26> = array<i32, 26>(0i, -1i, i32(-2147483648), -62621i, i32(-2147483648), 12389i, 3979i, 9331i, 2147483647i, -46605i, -1i, 2147483647i, 7632i, -22201i, 2147483647i, i32(-2147483648), 2147483647i, -9625i, i32(-2147483648), -1i, 2147483647i, 1i, i32(-2147483648), 0i, 21827i, 39652i);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1() -> vec2<bool> {
    return !global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(64892u, 8u)], 8u)], 3u)];
}

fn func_3() -> f32 {
    global0 = array<vec2<bool>, 3>();
    var var_0 = Struct_2(reverseBits(abs(firstTrailingBit(global3[_wgslsmith_index_u32(global2.x, 26u)]) >> (4294967295u % 32u))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(199f, -255f, 696f))))) + vec3<f32>(-2327f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1046f * 521f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1016f))))), ~select(abs(~vec3<i32>(u_input.b, -2147483647i, global3[_wgslsmith_index_u32(u_input.a.x, 26u)])), -abs(vec3<i32>(1i, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.x, 8u)], 26u)], u_input.b)), all(vec2<bool>(true, false))), -((vec3<i32>(-1i, 2147483647i, global3[_wgslsmith_index_u32(u_input.c, 26u)]) | vec3<i32>(-55835i, -23717i, var_0.a)) | _wgslsmith_clamp_vec3_i32(vec3<i32>(-22198i, var_0.a, var_0.a), vec3<i32>(u_input.b, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 26u)], u_input.b), vec3<i32>(u_input.b, var_0.a, -2147483647i))) | ~(-select(vec3<i32>(u_input.b, var_0.a, global3[_wgslsmith_index_u32(29837u, 26u)]), vec3<i32>(-2147483647i, 11769i, var_0.a), true)), ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(global2.x, global1[_wgslsmith_index_u32(26137u, 8u)], 60353u), vec3<u32>(1u, 0u, 0u))));
    let var_2 = vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -827f)))))));
    var var_3 = var_1.b;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(var_1.a.x + -470f))))), var_2.x);
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-784f, 1082f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1070f - -801f) - _wgslsmith_f_op_f32(select(-751f, 1153f, true)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-440f)), _wgslsmith_f_op_f32(-269f * 231f)))))));
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0 * var_0), var_0), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 108f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1919f, var_0))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -771f), _wgslsmith_f_op_f32(ceil(var_0))) + vec2<f32>(2241f, _wgslsmith_f_op_f32(f32(-1f) * -1620f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1541f, 1000f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1067f, var_0)))))));
    var var_3 = Struct_2(_wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.b, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(29573u, 8u)], 26u)]), ~arg_0), 0i) & countOneBits(2147483647i));
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0, var_0, -908f), vec3<f32>(-304f, var_2.x, var_0))), vec3<f32>(-1612f, _wgslsmith_f_op_f32(-187f - 1000f), _wgslsmith_f_op_f32(var_2.x - 244f)), select(all(vec3<bool>(false, true, var_1)), true, !var_1))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_0, -332f)) - vec3<f32>(var_0, var_2.x, var_0)))), -select(vec3<i32>(23724i, global3[_wgslsmith_index_u32(u_input.a.x, 26u)], 3301i) ^ max(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(44031i, 36419i, global3[_wgslsmith_index_u32(global2.x, 26u)])), -abs(vec3<i32>(var_3.a, arg_0, var_3.a)), any(vec3<bool>(false, true, var_1))), ~max(~(~vec3<i32>(-45984i, u_input.b, var_3.a)), firstLeadingBit(vec3<i32>(-53679i, var_3.a, 1i)) << (_wgslsmith_mult_vec3_u32(u_input.a, u_input.a) % vec3<u32>(32u))), u_input.a);
    return Struct_2(countOneBits(2147483647i));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> vec4<i32> {
    let var_0 = func_2(_wgslsmith_add_i32(global3[_wgslsmith_index_u32(arg_2.d.x, 26u)], select(-2147483647i, firstTrailingBit(~(-15742i)), true)));
    return _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(select(vec4<i32>(-1i, -2147483647i, -2147483647i, 1i), vec4<i32>(arg_2.b.x, -2147483647i, global3[_wgslsmith_index_u32(arg_2.d.x, 26u)], -1i), false), ~firstTrailingBit(vec4<i32>(-2147483647i, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_2.d.x, 8u)], 26u)], u_input.b, arg_2.b.x))) | vec4<i32>(31479i, ~min(-2147483647i, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 26u)]), arg_2.b.x, var_0.a << (97797u % 32u)), max(~vec4<i32>(-2147483647i, -2147483647i, -1i, arg_2.b.x), vec4<i32>(-1i) * -vec4<i32>(arg_1.a, -27836i, 2147483647i, -2147483647i)) & select(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.a, 19128i, arg_2.b.x, -8031i), vec4<i32>(arg_1.a, 20526i, -1749i, arg_1.a)) | -vec4<i32>(global3[_wgslsmith_index_u32(3430u, 26u)], -2147483647i, 66075i, 1i), select(-vec4<i32>(u_input.b, var_0.a, arg_2.c.x, 13196i), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 0i, -1i, arg_2.c.x), vec4<i32>(-17580i, -16770i, -2147483647i, -2147483647i)), global3[_wgslsmith_index_u32(arg_2.d.x, 26u)] == 1i), !(u_input.b == 27978i)), vec4<i32>(15245i, -2147483647i, select(var_0.a, _wgslsmith_add_i32(23293i, -7977i), all(vec4<bool>(false, false, true, true))) | arg_2.b.x, var_0.a));
}

fn func_5(arg_0: bool, arg_1: vec4<i32>) -> StorageBuffer {
    global2 = vec3<u32>(_wgslsmith_mult_u32(select(global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(global2.x, 8u)] & 32511u, func_1().x) ^ 10488u, ~(~global1[_wgslsmith_index_u32(u_input.c << (29065u % 32u), 8u)])), ~_wgslsmith_dot_vec2_u32(global2.xx, global2.xz & u_input.a.zx), global2.x);
    var var_0 = Struct_2(3952i);
    var_0 = Struct_2(min(_wgslsmith_dot_vec3_i32(arg_1.zzz, countOneBits(-vec3<i32>(22677i, u_input.b, 4245i))), 80609i));
    var var_1 = ~countOneBits(((vec4<u32>(4294967295u, 56825u, u_input.c, global1[_wgslsmith_index_u32(global2.x, 8u)]) << (vec4<u32>(u_input.c, u_input.a.x, global1[_wgslsmith_index_u32(0u, 8u)], global2.x) % vec4<u32>(32u))) >> (select(vec4<u32>(u_input.c, 5529u, u_input.a.x, global1[_wgslsmith_index_u32(global2.x, 8u)]), vec4<u32>(1u, 91758u, 45216u, global2.x), vec4<bool>(arg_0, arg_0, arg_0, arg_0)) % vec4<u32>(32u))) << (vec4<u32>(_wgslsmith_clamp_u32(1u, global1[_wgslsmith_index_u32(global2.x, 8u)], global2.x), u_input.a.x, ~43625u, ~23664u) % vec4<u32>(32u)));
    let var_2 = Struct_1(vec3<f32>(1f, 1f, 1f), select(countOneBits(_wgslsmith_div_vec3_i32(arg_1.xzw, arg_1.wzz)), vec3<i32>(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, u_input.a.x, global2.x), 26u)], u_input.b, u_input.b >> (u_input.c % 32u)), arg_0) << (~vec3<u32>(u_input.c & global2.x, firstLeadingBit(global1[_wgslsmith_index_u32(global2.x, 8u)]), select(13202u, u_input.c, false)) % vec3<u32>(32u)), arg_1.xzw, vec3<u32>(1u << (select(global2.x, ~32869u, false) % 32u), 52075u >> (global2.x % 32u), ~16635u));
    return StorageBuffer(select(vec2<i32>(u_input.b, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(arg_1.x, var_2.c.x), vec2<i32>(var_2.c.x, -2147483647i)), var_2.c.xy)), max(-vec2<i32>(var_0.a, 12857i) & arg_1.yy, select(arg_1.yx, ~var_2.b.zx, true)), select(!vec2<bool>(arg_0, true), !(!vec2<bool>(true, arg_0)), func_1().x)), var_1.x, vec4<i32>(i32(-1i) * -1i, var_2.c.x, ~select(~2147483647i, abs(arg_1.x), arg_0), -abs(max(arg_1.x, -79354i))), vec3<u32>(select(global1[_wgslsmith_index_u32(var_1.x << (u_input.a.x % 32u), 8u)] ^ var_2.d.x, 9986u, _wgslsmith_f_op_f32(trunc(var_2.a.x)) <= _wgslsmith_f_op_f32(min(-551f, var_2.a.x))), global2.x, firstTrailingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 51252u, 60923u), var_2.d))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 26>();
    let var_0 = Struct_2(-reverseBits(2147483647i));
    global3 = array<i32, 26>();
    let var_1 = vec2<i32>(~_wgslsmith_div_i32(abs(u_input.b), abs(-14903i)) ^ var_0.a, var_0.a);
    global3 = array<i32, 26>();
    let var_2 = global2.x;
    let x = u_input.a;
    s_output = func_5(any(select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 26u)] < u_input.b, true), vec2<bool>(true, false), func_1())), _wgslsmith_add_vec4_i32(func_4(~global2.x, func_2(1i), Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-176f, 241f, 520f), vec3<f32>(1167f, -993f, 1000f))), -vec3<i32>(var_1.x, var_1.x, 0i), -vec3<i32>(global3[_wgslsmith_index_u32(global2.x, 26u)], var_1.x, var_1.x), u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-854f - 1137f) + -877f)), -max(vec4<i32>(var_1.x, var_0.a, u_input.b, -16545i), func_4(0u, var_0, Struct_1(vec3<f32>(524f, 1480f, -1007f), vec3<i32>(-10927i, var_0.a, var_1.x), vec3<i32>(-2147483647i, var_1.x, global3[_wgslsmith_index_u32(68455u, 26u)]), vec3<u32>(u_input.a.x, 4294967295u, global1[_wgslsmith_index_u32(4294967295u, 8u)])), -1557f))));
}

