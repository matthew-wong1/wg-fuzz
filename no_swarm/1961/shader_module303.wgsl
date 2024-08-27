struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global1: array<vec4<u32>, 10>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec2<i32> {
    global1 = array<vec4<u32>, 10>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1373f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(877f)) + _wgslsmith_f_op_f32(max(1000f, -859f)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-896f - 466f)))), _wgslsmith_f_op_f32(floor(-964f)), 793f);
    let var_1 = ~52265i;
    let var_2 = Struct_2(Struct_1(vec3<i32>(-29170i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(2147483647i, var_1), _wgslsmith_mult_i32(var_1, u_input.a.x)), 0i), ~(-firstTrailingBit(var_1)), _wgslsmith_add_i32(-25172i, 3440i), 1i << (_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(0u, 73163u, 1u, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(81143u, 0u, 0u, 104925u), global1[_wgslsmith_index_u32(1u, 10u)])) % 32u), 10363u), ~(-_wgslsmith_div_vec2_i32(u_input.a.xz, vec2<i32>(var_1, u_input.a.x))));
    global1 = array<vec4<u32>, 10>();
    return u_input.a.zx;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec4<f32> {
    let var_0 = Struct_2(arg_1, -func_3());
    let var_1 = _wgslsmith_mult_i32(arg_0.b, ~max(_wgslsmith_sub_i32(arg_1.a.x, arg_1.c) << (~arg_0.e % 32u), ~(-20294i)));
    var var_2 = global1[_wgslsmith_index_u32(countOneBits(37153u) >> (abs(_wgslsmith_mult_u32(arg_1.e >> (_wgslsmith_dot_vec2_u32(vec2<u32>(33275u, arg_1.e), vec2<u32>(39939u, 0u)) % 32u), arg_0.e)) % 32u), 10u)];
    var var_3 = Struct_2(var_0.a, u_input.a.zy);
    global0 = select(!select(vec4<bool>(true, true, global0.x, !arg_2), !vec4<bool>(arg_2, arg_2, true, arg_2), 1i >= (var_1 ^ u_input.a.x)), select(vec4<bool>(true, true, true, true), !select(select(vec4<bool>(global0.x, false, true, false), vec4<bool>(global0.x, global0.x, arg_2, arg_2), global0.x), !vec4<bool>(global0.x, true, arg_2, global0.x), !arg_2), any(vec4<bool>(global0.x, arg_2, global0.x, false)) || true), (_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(55133u, arg_0.e, 4294967295u), var_2.yyw), var_3.a.e) >> (3636u % 32u)) > arg_1.e);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-434f, 602f, _wgslsmith_f_op_f32(-1000f * 525f), -297f) * vec4<f32>(_wgslsmith_f_op_f32(min(419f, -631f)), -149f, _wgslsmith_f_op_f32(step(1278f, -1584f)), 1448f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(576f, 374f, 398f, 145f), vec4<f32>(136f, -383f, -521f, -1449f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(872f, 196f, 1261f, 250f), vec4<f32>(982f, -1110f, -1707f, -397f), vec4<bool>(true, false, global0.x, false))) * vec4<f32>(-622f, 764f, -1356f, 1114f))), !any(!vec4<bool>(arg_2, true, false, global0.x)))));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_2(arg_0, arg_0, any(vec4<bool>(true, global0.x, false, all(vec4<bool>(global0.x, true, true, global0.x))))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_0.x)))), -133f))), 230f);
    return arg_0;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_2(Struct_1(vec3<i32>(-1i, arg_2.b.x, arg_2.b.x), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(22850i, u_input.a.x, arg_1.b.x, arg_1.b.x), countOneBits(vec4<i32>(2147483647i, arg_2.b.x, arg_2.b.x, -19147i))), vec4<i32>(2147483647i, u_input.a.x, arg_2.a.c, arg_1.b.x) ^ abs(vec4<i32>(2147483647i, arg_2.a.d, -17796i, arg_2.b.x))), 13778i, ~(~1i), 17284u), arg_1.a, false)).zwy;
    var var_1 = -arg_2.a.a;
    var var_2 = arg_2.a;
    var_2 = arg_2.a;
    var var_3 = !select(global0.xw, global0.zz, global0.x | select(true, true, !global0.x));
    return vec4<bool>(false, all(!select(global0.yx, vec2<bool>(global0.x, var_3.x), vec2<bool>(true, false))), var_3.x, any(global0.xyz));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec4<bool>) -> vec3<i32> {
    var var_0 = Struct_2(Struct_1(vec3<i32>(-2147483647i, _wgslsmith_mod_i32(12876i, ~2147483647i), _wgslsmith_div_i32(arg_0.d, arg_0.a.x)), -u_input.a.x, max(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(5674i, -12154i), arg_0.a.zz)), -27211i), ~(-43199i), ~4294967295u), arg_0.a.xz);
    var var_1 = func_1(func_1(func_1(Struct_1(vec3<i32>(-1i, u_input.a.x, 0i) & var_0.a.a, u_input.a.x, var_0.b.x, u_input.a.x, 56484u & var_0.a.e))));
    global1 = array<vec4<u32>, 10>();
    var var_2 = Struct_2(func_1(func_1(func_1(var_0.a))), firstLeadingBit(func_1(var_0.a).a.zy));
    let var_3 = true;
    return ~max(-var_2.a.a, u_input.a);
}

fn func_6(arg_0: vec3<i32>, arg_1: i32) -> StorageBuffer {
    global1 = array<vec4<u32>, 10>();
    global1 = array<vec4<u32>, 10>();
    global1 = array<vec4<u32>, 10>();
    var var_0 = func_1(Struct_1(countOneBits(firstLeadingBit(u_input.a)), _wgslsmith_add_i32(1i, arg_1), u_input.a.x, select(-40281i, -_wgslsmith_mult_i32(arg_1, arg_1), global0.x), select(4294967295u, _wgslsmith_mod_u32(32241u, 4294967295u), true) | ~_wgslsmith_mult_u32(4850u, 0u)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1528f * _wgslsmith_f_op_f32(f32(-1f) * -1131f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec4_f32(func_2(func_1(Struct_1(vec3<i32>(-9097i, var_0.b, var_0.c), -2170i, 1i, arg_0.x, 33990u)), func_1(Struct_1(vec3<i32>(arg_0.x, u_input.a.x, -21341i), var_0.b, u_input.a.x, 1675i, var_0.e)), !global0.x)).x)))));
    return StorageBuffer(max(4294967295u, var_0.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 20751u;
    let var_1 = var_0;
    let x = u_input.a;
    s_output = func_6(func_5(Struct_1(~u_input.a, ~0i, -25479i, -(u_input.a.x | u_input.a.x), 0u), any(global0.yx), func_4(vec3<u32>(~var_0, _wgslsmith_add_u32(var_0, var_1), 48673u), Struct_2(func_1(Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), 2147483647i, u_input.a.x, u_input.a.x, 1u)), vec2<i32>(2147483647i, u_input.a.x) << (vec2<u32>(66559u, var_0) % vec2<u32>(32u))), Struct_2(Struct_1(u_input.a, 3183i, -1i, u_input.a.x, 42572u), vec2<i32>(u_input.a.x, u_input.a.x)))), -u_input.a.x);
}

