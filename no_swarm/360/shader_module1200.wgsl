struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
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

var<private> global0: array<vec3<i32>, 15>;

var<private> global1: vec4<bool>;

var<private> global2: array<i32, 3>;

var<private> global3: vec3<f32> = vec3<f32>(1512f, 391f, -272f);

var<private> global4: i32 = 19055i;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec2<u32>, arg_3: Struct_5) -> u32 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.x, 172f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1189f, global3.x)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global3.x, 1075f, -1000f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1523f, global3.x, global3.x), vec3<f32>(1107f, global3.x, 1155f), true)))))), global3.x <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.x, global3.x) + _wgslsmith_f_op_f32(f32(-1f) * -552f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-954f, 278f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1392f) - global3.x)) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(598f, global3.x, global3.x) - vec3<f32>(747f, -1000f, global3.x)), _wgslsmith_div_vec3_f32(vec3<f32>(418f, global3.x, global3.x), vec3<f32>(global3.x, global3.x, -223f)))))));
    let var_1 = global1.wy;
    global0 = array<vec3<i32>, 15>();
    global2 = array<i32, 3>();
    let var_2 = Struct_1(~_wgslsmith_sub_vec4_u32(vec4<u32>(~arg_3.a.a.a, ~33212u, 0u, _wgslsmith_dot_vec2_u32(u_input.a.zz, arg_2)), _wgslsmith_add_vec4_u32(~vec4<u32>(arg_3.a.a.a, arg_2.x, 1u, 8572u), _wgslsmith_clamp_vec4_u32(vec4<u32>(21895u, arg_3.a.a.a, 4294967295u, arg_3.a.a.a), vec4<u32>(4294967295u, u_input.a.x, 0u, u_input.a.x), vec4<u32>(0u, 4294967295u, arg_2.x, arg_3.a.a.a)))), arg_0, arg_2.x);
    return _wgslsmith_mod_u32(var_2.c, abs(arg_3.a.a.a));
}

fn func_2(arg_0: vec2<u32>) -> Struct_2 {
    global3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global3.x, global3.x), _wgslsmith_f_op_f32(-105f * -1644f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x * -1000f) * _wgslsmith_f_op_f32(trunc(global3.x))), global3.x), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, 297f))))))));
    var var_0 = Struct_4(Struct_3(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_div_u32(arg_0.x, 9490u), ~1u), u_input.a), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(global2[_wgslsmith_index_u32(arg_0.x, 3u)], u_input.b.x, -15328i, 22526i), -vec4<i32>(-1i, global2[_wgslsmith_index_u32(u_input.d, 3u)], u_input.b.x, u_input.b.x)), select(vec4<i32>(-9316i, 23966i, global2[_wgslsmith_index_u32(arg_0.x, 3u)], -23030i) ^ vec4<i32>(-2147483647i, u_input.b.x, -31908i, 6034i), vec4<i32>(-41788i, 2147483647i, global2[_wgslsmith_index_u32(u_input.d, 3u)], -10543i) >> (vec4<u32>(arg_0.x, 0u, 4294967295u, 1u) % vec4<u32>(32u)), true), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-3966i, u_input.b.x, -2147483647i, global2[_wgslsmith_index_u32(u_input.d, 3u)]), vec4<i32>(u_input.b.x, 1i, global2[_wgslsmith_index_u32(44650u, 3u)], -2147483647i)), vec4<i32>(56205i, -27710i, global2[_wgslsmith_index_u32(arg_0.x, 3u)], -941i)))));
    let var_1 = _wgslsmith_add_u32(0u, ~var_0.a.a);
    let var_2 = _wgslsmith_dot_vec2_u32(select(abs(arg_0), ~u_input.a.yz, true), ~_wgslsmith_mod_vec2_u32(min(countOneBits(u_input.a.zx), vec2<u32>(u_input.a.x, 19387u)), u_input.a.xx));
    var var_3 = arg_0.x;
    return Struct_2(vec4<u32>(_wgslsmith_clamp_u32(var_2, 1u, u_input.c), 48462u, ~func_3(1i, true, vec2<u32>(4294967295u, 1u), Struct_5(Struct_4(var_0.a))), var_2), vec4<u32>(_wgslsmith_dot_vec2_u32(abs(arg_0), abs(vec2<u32>(40225u, var_2))), u_input.a.x, ~var_2, var_0.a.a & 1u) & _wgslsmith_clamp_vec4_u32(vec4<u32>(var_2, arg_0.x, 4294967295u, u_input.c), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a.zx, vec2<u32>(var_0.a.a, arg_0.x)), ~43668u, ~0u, var_2), select(vec4<u32>(4472u, 1u, 0u, var_2), vec4<u32>(19885u, 60031u, arg_0.x, 62232u), select(vec4<bool>(global1.x, false, global1.x, true), vec4<bool>(global1.x, true, false, true), vec4<bool>(true, true, true, false)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec3<u32>, arg_3: vec3<i32>) -> vec4<bool> {
    global4 = u_input.b.x;
    let var_0 = 473f;
    global2 = array<i32, 3>();
    var var_1 = Struct_1(~arg_0.a, -51045i & _wgslsmith_div_i32(reverseBits(~global2[_wgslsmith_index_u32(arg_0.a.x, 3u)]), (i32(-1i) * -2147483647i) & global2[_wgslsmith_index_u32(arg_1.x, 3u)]), u_input.a.x & 4294967295u);
    let var_2 = ~_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32((vec4<i32>(-2147483647i, var_1.b, u_input.b.x, 54835i) & vec4<i32>(-13624i, var_1.b, 5837i, var_1.b)) >> (_wgslsmith_mod_vec4_u32(var_1.a, var_1.a) % vec4<u32>(32u)), ~vec4<i32>(-7891i, var_1.b, -1i, 6472i)), vec4<i32>(0i, ~(-13479i), 6405i, i32(-1i) * -44156i));
    return !(!select(vec4<bool>(select(false, true, global1.x), true, global3.x < 542f, true), vec4<bool>(!global1.x, any(vec4<bool>(false, global1.x, false, global1.x)), true, !global1.x), any(!vec4<bool>(false, false, global1.x, true))));
}

fn func_1() -> i32 {
    var var_0 = func_4(func_2(abs(max(firstTrailingBit(u_input.a.yy), u_input.a.xx))), firstTrailingBit(select(vec2<u32>(abs(u_input.c), reverseBits(u_input.c)), ~vec2<u32>(u_input.c, u_input.a.x), all(global1.zy))), ~vec3<u32>(4294967295u, _wgslsmith_div_u32(0u, u_input.d), u_input.d) << ((vec3<u32>(60822u, 22676u, u_input.c) & (~vec3<u32>(1u, u_input.d, u_input.c) >> (u_input.a % vec3<u32>(32u)))) % vec3<u32>(32u)), global0[_wgslsmith_index_u32(1u, 15u)]);
    let var_1 = 27038u;
    global2 = array<i32, 3>();
    var var_2 = vec4<bool>(!global1.x | (_wgslsmith_div_f32(global3.x, 1749f) < _wgslsmith_f_op_f32(-1f)), func_4(func_2(u_input.a.xy), reverseBits(max(vec2<u32>(4294967295u, var_1) ^ u_input.a.yz, u_input.a.zx)), u_input.a, reverseBits(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, ~var_1), 15u)])).x, var_0.x, global1.x);
    global4 = -2147483647i;
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = Struct_1(~select(vec4<u32>(~0u, u_input.d, ~4294967295u, u_input.d), ~select(vec4<u32>(u_input.c, u_input.c, 0u, u_input.a.x), vec4<u32>(u_input.d, u_input.c, 4294967295u, u_input.c), false), any(vec3<bool>(global1.x, false, false))), ~u_input.b.x, 37162u);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.x))) - _wgslsmith_f_op_f32(step(-1291f, -2280f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1002f, global3.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1133f - 379f))))));
    let var_3 = var_1;
    let var_4 = Struct_3(0u, _wgslsmith_add_vec4_i32(~vec4<i32>(1i, 2147483647i, abs(1i), -u_input.b.x), vec4<i32>(i32(-1i) * -27342i, 1i, -u_input.b.x, (0i >> (0u % 32u)) << ((var_1.c | 22459u) % 32u))));
    let var_5 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1472f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_2)), -555f))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.b);
}

