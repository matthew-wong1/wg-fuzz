struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18> = array<f32, 18>(-1632f, 1000f, -296f, -2143f, -1227f, 906f, 109f, -1000f, 876f, 863f, 266f, -591f, -600f, 664f, 1561f, -850f, 2612f, 2190f);

var<private> global1: bool = false;

var<private> global2: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(811f, Struct_1(vec2<f32>(453f, -123f), vec2<u32>(88167u, 4294967295u)), vec4<f32>(-783f, -510f, 981f, 940f), Struct_1(vec2<f32>(-469f, -598f), vec2<u32>(4294967295u, 59765u)), Struct_1(vec2<f32>(357f, -345f), vec2<u32>(18589u, 73360u))));

var<private> global3: bool;

var<private> global4: Struct_2 = Struct_2(186f, Struct_1(vec2<f32>(-1277f, -1371f), vec2<u32>(1u, 593u)), vec4<f32>(-315f, -945f, 2573f, 925f), Struct_1(vec2<f32>(-542f, 839f), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec2<f32>(-839f, 1666f), vec2<u32>(4294967295u, 4294967295u)));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    let var_0 = vec4<i32>(reverseBits(u_input.a), -(i32(-1i) * -14704i), _wgslsmith_dot_vec2_i32((vec2<i32>(u_input.a, u_input.a) ^ ~vec2<i32>(u_input.a, 1i)) ^ -select(vec2<i32>(-2147483647i, 287i), vec2<i32>(-54066i, u_input.a), vec2<bool>(false, true)), vec2<i32>(-u_input.a << (~u_input.b.x % 32u), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, u_input.a, u_input.a), firstTrailingBit(vec3<i32>(8732i, 0i, u_input.a))))), u_input.a);
    return 772f;
}

fn func_2(arg_0: vec4<f32>, arg_1: i32, arg_2: bool) -> vec4<u32> {
    let var_0 = global4.d;
    let var_1 = Struct_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.a.x, global0[_wgslsmith_index_u32(global4.b.b.x, 18u)])) * _wgslsmith_f_op_f32(round(-946f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3()))), arg_2)), u_input.b.ww, vec2<i32>(arg_1, _wgslsmith_div_i32(-_wgslsmith_div_i32(u_input.a, 2147483647i), _wgslsmith_div_i32(26847i, max(-1i, -1i)))), firstTrailingBit(min(1u, 67469u)) >> ((_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global4.d.b.x, 25323u), u_input.c.yz), _wgslsmith_div_u32(60178u, var_0.b.x)) ^ _wgslsmith_add_u32(global4.d.b.x, _wgslsmith_mult_u32(global4.d.b.x, 27402u))) % 32u), !select(!arg_2, !any(vec2<bool>(arg_2, false)), _wgslsmith_f_op_f32(func_3()) >= global0[_wgslsmith_index_u32(reverseBits(var_0.b.x), 18u)]));
    var var_2 = select(vec2<bool>(-72417i < arg_1, (~u_input.c.x > ~global4.e.b.x) | any(vec2<bool>(true, true))), !vec2<bool>(true, !arg_2), true);
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0) + vec4<f32>(-1488f, _wgslsmith_f_op_f32(635f * -1000f), 671f, arg_0.x))), global4.e, global2[_wgslsmith_index_u32(abs(firstLeadingBit(~var_0.b.x)), 1u)]);
    global0 = array<f32, 18>();
    return _wgslsmith_sub_vec4_u32(select(~u_input.b, u_input.b, !select(select(vec4<bool>(var_2.x, false, var_2.x, false), vec4<bool>(arg_2, true, var_1.e, var_1.e), var_2.x), !vec4<bool>(false, true, arg_2, var_2.x), vec4<bool>(false, arg_2, var_1.e, var_2.x))), ~abs(~(~vec4<u32>(var_0.b.x, var_1.d, 4294967295u, global4.d.b.x))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: vec4<f32>) -> f32 {
    let var_0 = _wgslsmith_sub_vec4_u32(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1961f, 285f, -999f, arg_1.x)))), -_wgslsmith_mod_i32(u_input.a, 0i), false), func_2(_wgslsmith_f_op_vec4_f32(global4.c - vec4<f32>(_wgslsmith_div_f32(global4.d.a.x, -284f), 321f, _wgslsmith_f_op_f32(arg_1.x + arg_1.x), -1151f)), 1i, _wgslsmith_f_op_f32(f32(-1f) * -224f) == _wgslsmith_f_op_f32(select(global4.e.a.x, _wgslsmith_f_op_f32(f32(-1f) * -549f), true))));
    var var_1 = abs(_wgslsmith_dot_vec2_u32(vec2<u32>(~global4.d.b.x, global4.d.b.x ^ 58899u), ~(~(~vec2<u32>(var_0.x, 19330u)))));
    var var_2 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-240f, arg_1.x, -212f, -794f)) + vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(max(global4.a, arg_2.x)), 531f, 740f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_2), _wgslsmith_div_vec4_f32(vec4<f32>(407f, -1000f, global4.b.a.x, arg_1.x), arg_2), any(vec3<bool>(false, true, false)))))), Struct_1(arg_2.yy, select(~select(u_input.c.xx, vec2<u32>(global4.e.b.x, var_0.x), true), abs(~global4.d.b), select(vec2<bool>(true, true), vec2<bool>(true, true), true))), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.x << (var_0.x % 32u), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(global4.d.b, vec2<u32>(u_input.c.x, var_0.x), global4.e.b), global4.e.b)) << (0u % 32u), 1u)]);
    global3 = all(vec2<bool>(any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), true)), any(vec3<bool>(true, false, false))));
    let var_3 = reverseBits(_wgslsmith_dot_vec4_i32(~abs(reverseBits(vec4<i32>(32993i, 2793i, -47864i, u_input.a))), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.a, arg_0.x, u_input.a), vec4<i32>(48421i, -1i, 8246i, 2147483647i)) << (~u_input.b % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a)) | vec4<i32>(4407i, 2147483647i, arg_0.x, arg_0.x))));
    return _wgslsmith_f_op_f32(-global4.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(612f - -287f), global4.b.a.x)) <= 1339f;
    var var_0 = Struct_4(1f, vec2<u32>(39251u, u_input.c.x), vec2<i32>(-1i << (~firstLeadingBit(u_input.b.x) % 32u), countOneBits(-2147483647i)), 14255u, all(!vec2<bool>(false, 2147483647i >= u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(global4.c + global4.c), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -111f), var_0.a, global4.b.a.x, _wgslsmith_f_op_f32(var_0.a + -360f))))), var_0.b.x, ~max(var_0.b.x, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_div_vec2_i32(vec2<i32>(2378i, u_input.a), _wgslsmith_clamp_vec2_i32(var_0.c, vec2<i32>(3296i, 1i), vec2<i32>(u_input.a, u_input.a))), vec4<f32>(202f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.d, 18u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.b.x, 18u)]), -919f), global4.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-1537f)))) - _wgslsmith_f_op_f32(-963f * _wgslsmith_f_op_f32(max(1000f, -1511f)))) - global0[_wgslsmith_index_u32(abs(~(~var_0.d)), 18u)]));
}

