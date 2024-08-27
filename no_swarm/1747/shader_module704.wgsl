struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16>;

var<private> global1: array<bool, 18>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<i32>) -> u32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(max(506f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-199f + 1074f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-110f * 755f)) - -266f), -400f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1925f * -1542f)))));
    let var_1 = Struct_3(firstTrailingBit(reverseBits(countOneBits(1u))), arg_0, Struct_2(arg_1, _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(u_input.e, 67356u), ~u_input.e), countOneBits(~vec2<u32>(13929u, u_input.e)), reverseBits(~vec2<u32>(1u, u_input.e))), arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(763f))))), arg_1);
    let var_2 = ~u_input.e;
    var var_3 = var_1;
    global0 = array<i32, 16>();
    return u_input.e;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2) -> u32 {
    var var_0 = Struct_3(~_wgslsmith_mod_u32(~u_input.e, 1u), Struct_1(any(!select(vec2<bool>(true, true), arg_1.a.b.yx, global1[_wgslsmith_index_u32(u_input.e, 18u)])), arg_1.c.b, min(arg_1.a.c >> (_wgslsmith_div_vec2_u32(arg_1.b, vec2<u32>(u_input.e, 0u)) % vec2<u32>(32u)), -vec2<i32>(-28323i, -2147483647i)), ~(~vec3<i32>(-1i, 1i, arg_1.a.d.x))), Struct_2(arg_1.c, vec2<u32>(~1u, func_3(arg_1.c, arg_1.c, arg_1.c, vec4<i32>(global0[_wgslsmith_index_u32(u_input.e, 16u)], arg_1.a.d.x, -40705i, global0[_wgslsmith_index_u32(u_input.e, 16u)]))), Struct_1(true, select(vec3<bool>(true, arg_1.a.a, false), !vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.e, 18u)], true), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(22422u, u_input.e, 4294967295u), vec3<u32>(arg_1.b.x, 49465u, 3677u)), 18u)]), reverseBits(_wgslsmith_clamp_vec2_i32(u_input.c, arg_1.a.d.zx, arg_1.a.d.xx)), ~vec3<i32>(global0[_wgslsmith_index_u32(arg_1.b.x, 16u)], -22451i, 1i)), 1804f), arg_1.c);
    var var_1 = reverseBits(-firstTrailingBit(vec3<i32>(1i >> (arg_1.b.x % 32u), u_input.a, _wgslsmith_sub_i32(u_input.d.x, var_0.b.d.x))));
    var_0 = Struct_3(u_input.e, var_0.c.c, var_0.c, Struct_1(31572i >= arg_1.a.d.x, var_0.b.b, u_input.d.zy, vec3<i32>(_wgslsmith_dot_vec2_i32(var_1.xz | vec2<i32>(0i, -39265i), max(arg_1.c.c, var_0.d.d.zx)), reverseBits(0i << (0u % 32u)), -2147483647i)));
    var var_2 = Struct_2(var_0.b, vec2<u32>(1u, _wgslsmith_mod_u32(20628u, firstTrailingBit(68881u))), Struct_1(arg_1.a.a, var_0.c.c.b, var_1.zy ^ min(vec2<i32>(0i, -21933i), vec2<i32>(-12487i, 2147483647i)), vec3<i32>(~(-var_1.x), -44847i, ~0i)), _wgslsmith_f_op_f32(f32(-1f) * -881f));
    var var_3 = arg_0.yxy;
    return 30759u;
}

fn func_1(arg_0: vec4<bool>) -> StorageBuffer {
    var var_0 = ~u_input.e | ~_wgslsmith_div_u32(min(func_2(vec4<f32>(-504f, 765f, 2369f, -361f), Struct_2(Struct_1(true, vec3<bool>(arg_0.x, false, global1[_wgslsmith_index_u32(u_input.e, 18u)]), u_input.b.wx, vec3<i32>(u_input.d.x, u_input.d.x, -10931i)), vec2<u32>(0u, 6919u), Struct_1(false, arg_0.wyz, vec2<i32>(-22541i, global0[_wgslsmith_index_u32(u_input.e, 16u)]), vec3<i32>(-27838i, 0i, global0[_wgslsmith_index_u32(3219u, 16u)])), 1186f)), 62052u), ~4294967295u ^ u_input.e);
    let var_1 = reverseBits(~(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(21761u, u_input.e, u_input.e), vec3<u32>(u_input.e, 14579u, u_input.e), vec3<u32>(1u, u_input.e, u_input.e)))));
    global0 = array<i32, 16>();
    var var_2 = _wgslsmith_mod_i32(-global0[_wgslsmith_index_u32(47467u, 16u)], _wgslsmith_div_i32(~reverseBits(42781i) ^ u_input.c.x, ~reverseBits(-28008i)));
    var var_3 = abs(vec3<i32>(-firstTrailingBit(-2147483647i), _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(var_1.x, 16u)], ~u_input.a, firstTrailingBit(-40066i)), ~11643i) >> (abs(min(~vec3<u32>(55184u, 4294967295u, var_1.x), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 23107u, u_input.e), var_1))) % vec3<u32>(32u)));
    return StorageBuffer(29492i, firstTrailingBit(vec2<u32>(0u, firstLeadingBit(46419u)) | vec2<u32>(u_input.e, min(var_1.x, 0u))), _wgslsmith_div_f32(-1819f, 1349f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(vec4<i32>(-global0[_wgslsmith_index_u32(min(u_input.e, u_input.e), 16u)], _wgslsmith_clamp_i32(-2147483647i, -u_input.b.x, 31888i), 287i, 2147483647i) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 73838u, u_input.e, 1u | u_input.e), abs(~vec4<u32>(2518u, 83249u, u_input.e, 0u))) % vec4<u32>(32u)));
    let var_1 = ~u_input.e;
    global0 = array<i32, 16>();
    global1 = array<bool, 18>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -859f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1077f, _wgslsmith_f_op_f32(max(-1359f, 1230f)), global1[_wgslsmith_index_u32(var_1, 18u)])) * _wgslsmith_f_op_f32(trunc(-780f))))));
    global1 = array<bool, 18>();
    var var_3 = ~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_div_u32(5534u, 5762u)), select(vec2<u32>(u_input.e, 49390u) << ((vec2<u32>(0u, u_input.e) & vec2<u32>(0u, var_1)) % vec2<u32>(32u)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.e, 4294967295u), vec2<u32>(7731u, var_1), vec2<u32>(var_1, 99682u)), all(vec2<bool>(true, true))), _wgslsmith_div_vec2_u32(vec2<u32>(11387u, u_input.e) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(14772u, var_1)), ~vec2<u32>(16709u, var_1) | vec2<u32>(29155u, 4294967295u)));
    let x = u_input.a;
    s_output = func_1(vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1213f)) * -283f) > _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1000f, 141f), _wgslsmith_div_f32(686f, 511f))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, u_input.e, 1u, 6959u)), _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(u_input.e, 13687u, 7859u, u_input.e)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 67567u, var_1, 19624u), vec4<u32>(99161u, 4294967295u, var_1, u_input.e)), _wgslsmith_add_vec4_u32(vec4<u32>(var_1, 4294967295u, var_1, u_input.e), vec4<u32>(17043u, 80975u, 27552u, 73458u)))), 18u)], false, !(!global1[_wgslsmith_index_u32(select(2435u, var_3.x, true), 18u)])));
}

