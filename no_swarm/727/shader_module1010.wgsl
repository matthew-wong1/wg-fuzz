struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: bool,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec3<f32>(-177f, 152f, -379f), vec3<bool>(true, false, false), true, vec2<i32>(219i, -1i), vec3<f32>(485f, 1194f, 2452f)), Struct_1(vec3<f32>(218f, 235f, 1834f), vec3<bool>(true, true, false), true, vec2<i32>(-1i, 2147483647i), vec3<f32>(1405f, -566f, -2332f)), Struct_1(vec3<f32>(396f, 820f, 144f), vec3<bool>(false, true, false), false, vec2<i32>(i32(-2147483648), 1i), vec3<f32>(1286f, 1076f, -1273f)), Struct_1(vec3<f32>(836f, -104f, -351f), vec3<bool>(false, true, true), false, vec2<i32>(-39488i, 0i), vec3<f32>(102f, 641f, -3257f)), Struct_1(vec3<f32>(1804f, 1331f, 258f), vec3<bool>(false, true, true), false, vec2<i32>(-1i, 2005i), vec3<f32>(326f, -637f, -373f)), Struct_1(vec3<f32>(725f, 280f, -2238f), vec3<bool>(true, false, true), false, vec2<i32>(7837i, -55979i), vec3<f32>(-861f, 2234f, -292f)), Struct_1(vec3<f32>(923f, -1000f, 1644f), vec3<bool>(true, true, false), false, vec2<i32>(84319i, -1i), vec3<f32>(-1795f, 231f, 979f)), Struct_1(vec3<f32>(205f, 329f, 882f), vec3<bool>(false, true, false), false, vec2<i32>(-39614i, i32(-2147483648)), vec3<f32>(-866f, -568f, -1522f)), Struct_1(vec3<f32>(-1000f, 1339f, 909f), vec3<bool>(false, true, true), false, vec2<i32>(1i, 21298i), vec3<f32>(1000f, -1000f, 627f)), Struct_1(vec3<f32>(-1275f, -587f, 1000f), vec3<bool>(true, false, true), true, vec2<i32>(-6166i, -27663i), vec3<f32>(-167f, -529f, 332f)), Struct_1(vec3<f32>(-951f, 555f, 1002f), vec3<bool>(true, false, false), true, vec2<i32>(2147483647i, 2147483647i), vec3<f32>(886f, -247f, 534f)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_1) -> i32 {
    let var_0 = 5759u;
    global0 = arg_0.d.x;
    let var_1 = arg_0;
    let var_2 = vec4<f32>(-1000f, -702f, _wgslsmith_f_op_f32(round(var_1.a.x)), var_1.a.x);
    var var_3 = Struct_1(vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1202f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(arg_0.e.x, -1403f)) - var_1.a.x)), var_1.b, all(!vec3<bool>(arg_0.b.x, arg_0.d.x > u_input.a, arg_0.b.x)), vec2<i32>(i32(-1i) * -50102i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-8358i, var_1.d.x)), arg_0.d)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e.x) + _wgslsmith_f_op_f32(f32(-1f) * -357f)), var_2.x), _wgslsmith_f_op_vec3_f32(var_1.e - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 991f, -2752f))))));
    return var_1.d.x;
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1052f, 1500f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1366f, 1255f)) + vec2<f32>(-454f, -117f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-738f, -1060f) * vec2<f32>(-542f, -849f))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -165f)))))), vec2<bool>(true, true)));
    global1 = array<Struct_1, 11>();
    let var_1 = ~18086i;
    let var_2 = vec4<bool>(false, true, all(select(vec3<bool>(true, true, true), vec3<bool>(var_0.x >= var_0.x, true, any(vec2<bool>(true, true))), true)), false);
    let var_3 = ~min(~(~_wgslsmith_add_vec2_u32(vec2<u32>(1u, 37163u), vec2<u32>(0u, 0u))), ~(~(~vec2<u32>(4294967295u, 13554u))));
    return _wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(_wgslsmith_clamp_i32(u_input.a << (var_3.x % 32u), 0i, ~(-54502i))), _wgslsmith_mult_i32(~(i32(-1i) * -44035i), _wgslsmith_mod_i32(firstTrailingBit(-1i), 1i)), -29296i), vec3<i32>(reverseBits(_wgslsmith_add_i32(_wgslsmith_add_i32(-11869i, u_input.a), ~u_input.a)), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1, u_input.a, var_1, 0i), vec4<i32>(u_input.a, 2147483647i, u_input.a, var_1))), _wgslsmith_clamp_i32(~0i, u_input.a, -1i), 1i), countOneBits(u_input.a)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: Struct_1) -> u32 {
    let var_0 = vec2<i32>(_wgslsmith_add_i32(-1i, 30338i), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(u_input.a, func_2(global1[_wgslsmith_index_u32(56386u, 11u)])), func_3(), func_2(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 70636u), 11u)]), 48549i), vec4<i32>(_wgslsmith_div_i32(-9265i, arg_2.d.x) & (arg_2.d.x << (4294967295u % 32u)), ~(-40987i), -37618i, -arg_2.d.x)));
    let var_1 = all(arg_2.b);
    var var_2 = 20384u;
    global0 = arg_0.x;
    var var_3 = !(!(!vec4<bool>(true, all(vec4<bool>(false, false, false, var_1)), false, arg_2.b.x)));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec2<i32>(u_input.a, _wgslsmith_add_i32(u_input.a, u_input.a));
    global0 = 0i;
    var var_1 = _wgslsmith_add_i32(var_0.x, var_0.x) << (_wgslsmith_sub_u32(~max(func_1(vec3<i32>(u_input.a, u_input.a, u_input.a), vec4<f32>(-541f, -573f, -1247f, 1337f), global1[_wgslsmith_index_u32(0u, 11u)]), 1u), ~1u) % 32u);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2242f, _wgslsmith_f_op_f32(1220f - 308f), -294f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1887f, -2478f, -1422f)) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1100f, 2149f, 1607f))))))), !vec3<bool>(false, true, any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)))), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2238f)) + _wgslsmith_f_op_f32(select(-985f, -290f, true))) == _wgslsmith_f_op_f32(f32(-1f) * -640f)), firstTrailingBit(_wgslsmith_sub_vec2_i32(var_0, vec2<i32>(var_0.x, var_0.x) | var_0)) & ~(~var_0), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-721f, -724f, -2406f)) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1025f, -579f, 835f) - vec3<f32>(444f, -1168f, -690f))))))));
    var_2 = global1[_wgslsmith_index_u32(9061u, 11u)];
    var var_3 = global1[_wgslsmith_index_u32(1u, 11u)];
    var var_4 = _wgslsmith_add_vec2_u32(~(vec2<u32>(23748u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 48386u, 4294967295u, 86614u), vec4<u32>(60967u, 4294967295u, 1u, 0u))) ^ max(vec2<u32>(1u, 1u), ~vec2<u32>(18092u, 76937u))), ~select(vec2<u32>(~4294967295u, ~1u), vec2<u32>(abs(13969u), abs(4294967295u)), var_2.b.xx));
    let var_5 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_3.e), _wgslsmith_f_op_vec3_f32(-var_3.e), true)))), !vec3<bool>(any(var_2.b.yy), all(!vec2<bool>(var_2.c, var_2.c)), true), false && (var_4.x < _wgslsmith_add_u32(abs(var_4.x), 4294967295u)), abs(min(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(var_2.d, vec2<i32>(63045i, -18561i)), -vec2<i32>(-2147483647i, var_3.d.x)), firstLeadingBit(~var_3.d))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_3.e.x, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-828f, var_2.e.x), _wgslsmith_f_op_f32(-var_3.e.x))), var_2.e.x))));
    var_4 = ~vec2<u32>(_wgslsmith_sub_u32(var_4.x, _wgslsmith_div_u32(var_4.x, var_4.x)), _wgslsmith_add_u32(countOneBits(var_4.x), 1u)) ^ reverseBits(abs(~vec2<u32>(var_4.x, var_4.x)));
    let x = u_input.a;
    s_output = StorageBuffer(28657i);
}

