struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec3<bool>,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(true));

var<private> global1: array<vec3<i32>, 6>;

var<private> global2: i32 = -8794i;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: vec4<i32>, arg_3: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_f32(step(1547f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(789f))))))));
    var var_1 = ~arg_3.a.x;
    var_0 = _wgslsmith_f_op_f32(abs(1151f));
    let var_2 = arg_3.e;
    global0 = array<Struct_2, 8>();
    return arg_1;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<f32>) -> i32 {
    let var_0 = ~4294967295u;
    let var_1 = Struct_3(2147483647i < _wgslsmith_mod_i32(min(u_input.a.x, u_input.c.x >> (1u % 32u)), func_3(vec2<i32>(u_input.d.x, u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.c.x, 2147483647i), vec3<i32>(-1i, u_input.d.x, -1i)), u_input.c & u_input.d, Struct_1(vec4<u32>(arg_0.x, arg_0.x, 83215u, 0u), -2147483647i, 0i, false, 0u))), -727f, vec3<bool>(_wgslsmith_add_i32(u_input.b, u_input.b) == ~_wgslsmith_add_i32(72842i, u_input.c.x), true, !(arg_1.x != _wgslsmith_f_op_f32(max(1038f, arg_1.x)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.zy * vec2<f32>(791f, arg_1.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_1.x))), vec2<f32>(arg_1.x, -149f))), arg_1.yy, vec2<bool>((u_input.a.x >> (var_0 % 32u)) > ~(-1i), true))), Struct_1(~vec4<u32>(~8031u, ~u_input.e.x, 1u, 1u), reverseBits(~1i), -u_input.b, select(any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true))), _wgslsmith_f_op_f32(abs(788f)) <= _wgslsmith_f_op_f32(trunc(556f)), false), ~reverseBits(abs(31652u))));
    global2 = 0i;
    let var_2 = arg_0.x;
    let var_3 = global0[_wgslsmith_index_u32(var_2, 8u)];
    return var_1.e.c;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec4<u32>) -> bool {
    global2 = u_input.b;
    global0 = array<Struct_2, 8>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-764f, 330f), _wgslsmith_f_op_f32(f32(-1f) * -298f)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-441f, -1135f) - vec2<f32>(1000f, 1120f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-221f, -1377f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-429f, -1000f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(816f, 578f), vec2<f32>(-330f, 1000f)))), max(u_input.e.x, _wgslsmith_sub_u32(4294967295u, 64246u)) >= min(min(arg_2.x, arg_2.x), ~6468u))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-1000f + var_0.x), _wgslsmith_f_op_f32(var_0.x - var_0.x));
    let var_1 = Struct_1(vec4<u32>(_wgslsmith_mod_u32(u_input.e.x, 30811u), 4294967295u, ~1u, arg_2.x >> (((u_input.e.x | u_input.e.x) & ~u_input.e.x) % 32u)), func_2(abs(arg_2.ww << (vec2<u32>(u_input.e.x, u_input.e.x) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x - 332f), _wgslsmith_f_op_f32(var_0.x + var_0.x)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-219f, var_0.x, var_0.x)) - vec3<f32>(-836f, -881f, -1000f)))), ~arg_0.x, _wgslsmith_f_op_f32(-1f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), (((u_input.e.x << (0u % 32u)) | ~u_input.e.x) & arg_2.x) << (select(_wgslsmith_sub_u32(89386u, u_input.e.x << (15287u % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, 9628u), ~u_input.e.wz), true) % 32u));
    return any(select(vec2<bool>(select(false, all(vec4<bool>(false, false, true, var_1.d)), arg_1.a), !arg_1.a), !(!select(vec2<bool>(arg_1.a, var_1.d), vec2<bool>(var_1.d, var_1.d), false)), !all(select(vec4<bool>(var_1.d, false, arg_1.a, arg_1.a), vec4<bool>(true, false, arg_1.a, arg_1.a), false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.b, -13041i)));
    global1 = array<vec3<i32>, 6>();
    var var_1 = Struct_2(!all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true))) && func_1(reverseBits(vec4<i32>(-31434i, 2147483647i, u_input.c.x, 0i) ^ vec4<i32>(33336i, u_input.a.x, var_0.x, -2955i)), Struct_2(true), ~(vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, 89313u) ^ u_input.e)));
    var var_2 = ~_wgslsmith_dot_vec2_u32(~(~firstTrailingBit(vec2<u32>(u_input.e.x, u_input.e.x))), vec2<u32>(~u_input.e.x, u_input.e.x) << (u_input.e.yw % vec2<u32>(32u)));
    var var_3 = Struct_1(~reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(49132u, 4294967295u, u_input.e.x, u_input.e.x), u_input.e)) >> (u_input.e % vec4<u32>(32u)), u_input.b, 0i, !select(var_1.a, any(!vec3<bool>(true, var_1.a, var_1.a)), true), ~32435u);
    var_3 = Struct_1(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.e.zx, _wgslsmith_div_vec2_u32(~vec2<u32>(27434u, u_input.e.x), _wgslsmith_clamp_vec2_u32(var_3.a.zw, vec2<u32>(1u, var_3.e), vec2<u32>(4294967295u, 88658u)))), 27589u, firstLeadingBit(u_input.e.x), ~u_input.e.x), 45243i, firstLeadingBit(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b, 1i, u_input.c.x, -2147483647i), vec4<i32>(var_0.x, var_0.x, var_3.b, 0i))) >> (_wgslsmith_div_u32(u_input.e.x, ~u_input.e.x) % 32u), true && func_1(vec4<i32>(abs(25823i), -var_3.b, -var_0.x, firstTrailingBit(var_3.b)), global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.e.x, 7938u, 1u), 8u)], firstTrailingBit(u_input.e)), ~19215u);
    var var_4 = any(vec3<bool>(!select(any(vec3<bool>(var_1.a, var_3.d, false)), !var_1.a, false), any(!(!vec4<bool>(false, var_1.a, false, var_3.d))), !any(!vec2<bool>(var_3.d, false))));
    var var_5 = Struct_2(var_3.d);
    let var_6 = var_5.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(u_input.d, vec4<i32>(i32(-1i) * -6311i, -22190i, u_input.c.x, var_3.c)), ~var_3.a.zzw, -2147483647i);
}

