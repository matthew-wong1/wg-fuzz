struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: vec4<u32>,
    d: bool,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 5>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>) -> vec4<f32> {
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(898f * arg_0.c)));
    let var_0 = Struct_3(all(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.c, -372f, -1508f, 1000f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1094f, 504f, 203f, arg_0.c)))) * vec4<f32>(-1747f, -1000f, -1458f, 1176f)))), u_input.c, arg_0.b.a >= _wgslsmith_mod_u32(~u_input.c.x, ~24269u));
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(0u, 5u)])) * var_0.b.x), -1392f))), var_0.b.x, all(vec2<bool>(true, _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(7306u, 5u)])) >= 2276f))));
    var var_1 = Struct_3(true, var_0.b, select(vec4<u32>(1u, ~(u_input.b.x ^ var_0.c.x), _wgslsmith_dot_vec4_u32(var_0.c, reverseBits(var_0.c)), var_0.c.x), abs(_wgslsmith_div_vec4_u32(var_0.c << (u_input.c % vec4<u32>(32u)), var_0.c)), false), !var_0.a);
    let var_2 = arg_0.b;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1598f, _wgslsmith_f_op_f32(trunc(189f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.b.x))), -619f), vec4<f32>(-1145f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-396f - var_0.b.x), _wgslsmith_f_op_f32(-1452f - var_0.b.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_0.b.x, var_1.b.x)))), _wgslsmith_f_op_f32(var_1.b.x - -236f))));
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, u_input.b.x, u_input.c.x, 54493u)), 5u)])))));
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 5u)], -1000f, global1[_wgslsmith_index_u32(u_input.c.x, 5u)], global1[_wgslsmith_index_u32(u_input.b.x, 5u)]) - vec4<f32>(-1011f, global1[_wgslsmith_index_u32(4294967295u, 5u)], global1[_wgslsmith_index_u32(u_input.b.x, 5u)], -1000f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-630f, 856f, global1[_wgslsmith_index_u32(10703u, 5u)], global1[_wgslsmith_index_u32(u_input.c.x, 5u)]) - vec4<f32>(249f, global1[_wgslsmith_index_u32(4294967295u, 5u)], 795f, global1[_wgslsmith_index_u32(7400u, 5u)])) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global1[_wgslsmith_index_u32(32825u, 5u)], global1[_wgslsmith_index_u32(0u, 5u)], 1385f) - vec4<f32>(global1[_wgslsmith_index_u32(0u, 5u)], -161f, global1[_wgslsmith_index_u32(4294967295u, 5u)], global1[_wgslsmith_index_u32(u_input.c.x, 5u)])))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-807f, -850f, global1[_wgslsmith_index_u32(u_input.c.x, 5u)], global1[_wgslsmith_index_u32(u_input.b.x, 5u)])))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1287f, global1[_wgslsmith_index_u32(u_input.c.x, 5u)], global1[_wgslsmith_index_u32(u_input.b.x, 5u)], global1[_wgslsmith_index_u32(11415u, 5u)]) + vec4<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 5u)], global1[_wgslsmith_index_u32(u_input.b.x, 5u)], -976f, global1[_wgslsmith_index_u32(u_input.b.x, 5u)])), _wgslsmith_f_op_vec4_f32(func_3(Struct_2(arg_0.x, Struct_1(76227u), -682f, Struct_1(24899u)), arg_0.yzz)), true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(842f, -467f, global1[_wgslsmith_index_u32(4294967295u, 5u)], 1501f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(16116u, 5u)], 153f, global1[_wgslsmith_index_u32(u_input.c.x, 5u)], global1[_wgslsmith_index_u32(u_input.b.x, 5u)])))) - vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 5u)]), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 1u), 5u)], global1[_wgslsmith_index_u32(u_input.c.x, 5u)], -783f)), select(u_input.a > ~(~0i), any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true))) & (_wgslsmith_f_op_vec4_f32(func_3(Struct_2(-2147483647i, Struct_1(13754u), -1209f, Struct_1(u_input.b.x)), vec3<i32>(u_input.d, 0i, u_input.a))).x == _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.c.x, 5u)], global1[_wgslsmith_index_u32(29667u, 5u)])), all(select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), any(vec4<bool>(false, false, true, false)))))));
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(~(37685u ^ u_input.c.x), 5u)], _wgslsmith_f_op_f32(-var_0.x)))), var_0.x));
    var var_1 = Struct_4(u_input.c.yw);
    global1 = array<f32, 5>();
    return var_1.a.x;
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(max(func_2(~vec4<i32>(u_input.d, u_input.d, 1157i, u_input.d)), ~0u | func_2(vec4<i32>(-21041i, -12557i, u_input.a, -28333i))), min(~1u, u_input.b.x), _wgslsmith_mod_u32(abs(13157u), 1u) | u_input.c.x), ~firstTrailingBit(firstLeadingBit(select(vec3<u32>(35226u, 52056u, 12144u), vec3<u32>(4294967295u, 5516u, 96368u), false))));
    let var_1 = ~(~u_input.b.x ^ (~37088u >> ((firstLeadingBit(24229u) | (u_input.b.x >> (u_input.b.x % 32u))) % 32u)));
    var_0 = u_input.c.x;
    let var_2 = u_input.c.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~4294967295u, 4759u), 5u)] - -1000f), 1000f, 1112f) + vec4<f32>(-1000f, global1[_wgslsmith_index_u32(u_input.b.x, 5u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1132f - _wgslsmith_f_op_f32(-1777f - 1628f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(598f, global1[_wgslsmith_index_u32(17753u, 5u)]) * _wgslsmith_f_op_f32(max(1260f, -733f))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_1, 5u)] * -2466f) != _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(61749u, 5u)]))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(max(var_2, 32594u), 5u)])))));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.zz)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(406f, 1335f))))), vec3<f32>(_wgslsmith_f_op_f32(-var_3.x), 1385f, var_3.x), _wgslsmith_f_op_vec2_f32(-var_3.zx), 0u, select(vec3<i32>(_wgslsmith_sub_i32(-2530i, _wgslsmith_clamp_i32(u_input.d, u_input.d, u_input.d)), u_input.d, 0i), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, u_input.d, u_input.d), vec3<i32>(u_input.a, u_input.a, 2147483647i), vec3<i32>(-2147483647i, 1i, -2147483647i)) | vec3<i32>(u_input.d, u_input.a, u_input.a), vec3<i32>(-3587i, u_input.d, -u_input.a)), vec3<bool>(true, all(vec3<bool>(false, false, false)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 5>();
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1136f);
    var var_0 = vec3<f32>(-626f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(4294967295u, 5u)]))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 5u)]) - _wgslsmith_f_op_f32(-775f * global1[_wgslsmith_index_u32(u_input.c.x, 5u)])))), -804f);
    let var_1 = _wgslsmith_mult_vec2_u32(~(~(~vec2<u32>(93123u, u_input.c.x))), _wgslsmith_mult_vec2_u32(u_input.b, vec2<u32>(~countOneBits(u_input.c.x), _wgslsmith_dot_vec2_u32(u_input.c.xx, vec2<u32>(u_input.c.x, 1u)) << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 1u), u_input.b) % 32u))));
    var var_2 = Struct_4(max(abs(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, var_1.x), vec2<u32>(42879u, var_1.x)), ~u_input.c.yy)), var_1));
    let x = u_input.a;
    s_output = func_1();
}

