struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8>;

var<private> global1: array<vec2<f32>, 5>;

var<private> global2: i32;

var<private> global3: array<Struct_2, 30>;

var<private> global4: array<Struct_1, 18>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec2<u32>, arg_3: i32) -> vec4<i32> {
    global0 = array<f32, 8>();
    let var_0 = Struct_1(any(select(!vec2<bool>(true, arg_1), select(vec2<bool>(arg_1, false), select(vec2<bool>(arg_1, false), vec2<bool>(arg_1, arg_1), arg_1), any(vec3<bool>(arg_1, false, true))), !vec2<bool>(arg_1, arg_1))), ~vec4<u32>(select(~arg_0, _wgslsmith_dot_vec2_u32(u_input.b.zz, u_input.b.xx), false), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, u_input.b.x, 15488u), abs(vec4<u32>(arg_2.x, arg_2.x, u_input.b.x, u_input.b.x))), ~arg_2.x << (arg_0 % 32u), 1u));
    global1 = array<vec2<f32>, 5>();
    global1 = array<vec2<f32>, 5>();
    global3 = array<Struct_2, 30>();
    return select(vec4<i32>(arg_3, arg_3, u_input.a << (abs(47057u) % 32u), 2147483647i), ~(~(~vec4<i32>(-1i, -30198i, 1i, arg_3))) << (vec4<u32>(~90465u, arg_2.x, _wgslsmith_add_u32(139581u, 1u), _wgslsmith_dot_vec4_u32(~var_0.b, firstTrailingBit(var_0.b))) % vec4<u32>(32u)), !(!(!select(vec4<bool>(false, true, true, var_0.a), vec4<bool>(false, true, false, true), vec4<bool>(arg_1, true, true, arg_1)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> f32 {
    global1 = array<vec2<f32>, 5>();
    var var_0 = Struct_2(Struct_1(true, vec4<u32>(arg_0.b.x, _wgslsmith_dot_vec2_u32(arg_0.b.yw, vec2<u32>(arg_2.b.x, 42830u)), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.b.x, u_input.b.x), max(arg_2.b.ww, vec2<u32>(arg_2.b.x, arg_2.b.x))), reverseBits(~arg_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1164f - global0[_wgslsmith_index_u32(4294967295u, 8u)]) * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 8u)] - global0[_wgslsmith_index_u32(1u, 8u)])), 2208f))));
    return _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(22515u, 8u)]));
}

fn func_2(arg_0: i32) -> i32 {
    let var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 8u)]), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1957f, -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-870f)) + -613f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(global4[_wgslsmith_index_u32(6675u & u_input.b.x, 18u)], func_3(32371u, true, u_input.b.xz, u_input.c.x), global4[_wgslsmith_index_u32(~u_input.b.x, 18u)])) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 8u)] + global0[_wgslsmith_index_u32(1u, 8u)]))) * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(abs(~u_input.b.x), 8u)] * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 8u)] + _wgslsmith_f_op_f32(round(545f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-215f * -1321f), _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.b.x, 8u)], 912f)))))));
    global2 = _wgslsmith_dot_vec4_i32(vec4<i32>(0i, ~firstTrailingBit(1i), _wgslsmith_dot_vec2_i32(firstTrailingBit(-vec2<i32>(-2147483647i, u_input.a)), vec2<i32>(u_input.c.x, -1i)), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(arg_0, 80576i, arg_0, -1i), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 4743i, 27196i, arg_0), vec4<i32>(2147483647i, -8012i, u_input.a, 22716i))), -min(vec4<i32>(arg_0, 17911i, u_input.a, u_input.c.x), vec4<i32>(-1i, arg_0, u_input.c.x, arg_0)))), min(vec4<i32>(~(~0i), ~5215i, u_input.c.x, _wgslsmith_clamp_i32(arg_0, arg_0 & u_input.c.x, ~arg_0)), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(4500i, -4105i, -17015i, u_input.c.x), vec4<i32>(arg_0, u_input.a, 0i, 1i)), abs(vec4<i32>(arg_0, u_input.a, 0i, 0i)))));
    global0 = array<f32, 8>();
    var var_1 = vec3<bool>(true, !all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false))) & true, true);
    var var_2 = vec2<bool>(var_1.x, !select(arg_0 >= -arg_0, false, false));
    return u_input.c.x;
}

fn func_1() -> Struct_1 {
    var var_0 = all(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), true), !(1u != u_input.b.x)));
    var var_1 = global4[_wgslsmith_index_u32(105762u, 18u)];
    var var_2 = ~(~_wgslsmith_div_i32(u_input.a, func_2(_wgslsmith_clamp_i32(u_input.a, 1i, -1440i))));
    var var_3 = global4[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.b.x, 23179u), u_input.b.zy)), var_1.b.xz >> ((u_input.b.zz << (var_1.b.zy % vec2<u32>(32u))) % vec2<u32>(32u))), reverseBits(min(_wgslsmith_add_vec2_u32(var_1.b.yx, var_1.b.wz), _wgslsmith_clamp_vec2_u32(vec2<u32>(67088u, 0u), u_input.b.zx, vec2<u32>(10621u, u_input.b.x)))))), 18u)];
    global1 = array<vec2<f32>, 5>();
    return global4[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(var_3.b.x, u_input.b.x, 4294967295u), _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(var_1.b.x, 20795u), countOneBits(42770u)), _wgslsmith_add_u32(_wgslsmith_mult_u32(12400u, 0u), u_input.b.x << (u_input.b.x % 32u))) ^ firstLeadingBit(~1u)), 18u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.b.x, 8u)], global0[_wgslsmith_index_u32(41433u, 8u)]))));
    var var_1 = vec3<i32>(-1i, -u_input.c.x, abs(_wgslsmith_div_i32(~abs(4523i), abs(-2147483647i))));
    var_1 = _wgslsmith_sub_vec3_i32(abs(vec3<i32>(var_1.x, 0i, -8167i)) ^ (vec3<i32>(1i, -1i, 2147483647i) | (vec3<i32>(0i, -21841i, -2147483647i) ^ vec3<i32>(var_1.x, u_input.c.x, 17255i))), ~vec3<i32>(-30160i, 0i, u_input.c.x)) | (vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, var_1.x, var_1.x) | vec3<i32>(u_input.a, -2147483647i, u_input.c.x), select(vec3<i32>(-10712i, -2902i, u_input.a), vec3<i32>(var_1.x, var_1.x, -1i), true)));
    let var_2 = vec3<i32>(_wgslsmith_mult_i32(~u_input.a, -_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 29155i, var_1.x, 55795i), vec4<i32>(u_input.a, var_1.x, 80297i, var_1.x)), -2147483647i >> (u_input.b.x % 32u))), ~(~2147483647i), firstLeadingBit(var_1.x));
    global0 = array<f32, 8>();
    global2 = _wgslsmith_mult_i32(8604i, var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(max(~1u, ~1u), 8u)], min(-_wgslsmith_mult_vec4_i32(~vec4<i32>(-1i, -42341i, 1i, var_2.x), abs(vec4<i32>(13251i, -2147483647i, -1i, var_1.x))), abs(vec4<i32>(countOneBits(7760i), ~var_1.x, -4292i, var_2.x >> (14187u % 32u)))), abs(firstTrailingBit(min(vec2<u32>(var_0.a.b.x, 0u), u_input.b.zz)) << (_wgslsmith_sub_vec2_u32(~u_input.b.xz, vec2<u32>(23765u, 76237u)) % vec2<u32>(32u))), vec4<i32>(_wgslsmith_mult_i32(countOneBits(20599i) ^ ~var_1.x, firstTrailingBit(2147483647i)), var_1.x, -u_input.c.x, var_2.x), vec3<f32>(_wgslsmith_f_op_f32(ceil(292f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -667f), _wgslsmith_f_op_f32(-327f * global0[_wgslsmith_index_u32(var_0.a.b.x, 8u)]), var_0.a.a)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1000f))))), -1423f));
}

