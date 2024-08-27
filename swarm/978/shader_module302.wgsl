struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 16>;

var<private> global1: array<Struct_2, 1>;

var<private> global2: vec2<i32>;

var<private> global3: i32;

var<private> global4: f32;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> bool {
    var var_0 = max(firstLeadingBit(~min(31923u, u_input.b)), 24869u);
    var var_1 = Struct_2(select(vec3<bool>(true, any(vec2<bool>(true, true)), true), vec3<bool>(true, any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false)), true), vec3<bool>(true, !all(vec2<bool>(false, true)), false)), Struct_1(vec2<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false))), any(vec3<bool>(true, true, true))), true || (any(vec3<bool>(true, false, true)) | false), countOneBits(~u_input.a) | vec4<u32>(_wgslsmith_clamp_u32(45964u, u_input.a.x, 1u), u_input.b, u_input.a.x, 41147u), countOneBits(~vec2<i32>(global2.x, -2147483647i))));
    var var_2 = _wgslsmith_add_vec2_u32(u_input.a.zy, ~var_1.b.c.zy);
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-557f * _wgslsmith_f_op_f32(2080f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-962f, -916f))))));
    var_2 = vec2<u32>(min(~_wgslsmith_mult_u32(abs(var_2.x), 1u), abs(~(u_input.a.x & 1u))), ~(~select(1u, u_input.b, var_1.b.a.x)));
    return true;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: i32, arg_3: i32) -> vec3<bool> {
    var var_0 = !(!select(arg_0, arg_1.a, !arg_0));
    global0 = array<vec4<i32>, 16>();
    let var_1 = _wgslsmith_f_op_f32(-444f + 1f);
    let var_2 = !all(select(select(arg_1.a, select(arg_0, vec3<bool>(var_0.x, arg_1.a.x, arg_0.x), true), arg_0), vec3<bool>(arg_3 < -13272i, func_3(), true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, arg_0.x), 1723f <= var_1)));
    var var_3 = vec4<u32>(max(_wgslsmith_mod_u32(~arg_1.b.c.x, abs(~0u)), 11740u), max(abs(~arg_1.b.c.x & ~4294967295u), abs(abs(~u_input.a.x))), firstTrailingBit(~reverseBits(u_input.a.x ^ 69183u)), ~arg_1.b.c.x);
    return !(!select(vec3<bool>(arg_1.b.b, true, !arg_0.x), !arg_1.a, arg_1.a.x & select(false, true, var_2)));
}

fn func_2() -> Struct_1 {
    global2 = _wgslsmith_clamp_vec2_i32(-vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global2.x, 0i, -2147483647i), vec3<i32>(global2.x, global2.x, -30994i)), select(vec3<i32>(-68120i, -86829i, 1i), vec3<i32>(global2.x, 24017i, global2.x), vec3<bool>(false, true, true))), global2.x), -(~(vec2<i32>(2147483647i, global2.x) | select(vec2<i32>(7065i, 42266i), vec2<i32>(-2147483647i, -1i), vec2<bool>(true, true)))), vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, global2.x, global2.x, 49837i), vec4<i32>(41303i, 12338i, global2.x, 57381i)) << (~u_input.b % 32u), global2.x));
    global0 = array<vec4<i32>, 16>();
    let var_0 = ~1u;
    let var_1 = func_4(!select(vec3<bool>(false, all(vec3<bool>(false, true, false)), any(vec3<bool>(true, false, true))), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), true), Struct_2(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), func_3()), Struct_1(select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true)), ~var_0 >= 31916u, vec4<u32>(~10508u, _wgslsmith_add_u32(36664u, var_0), _wgslsmith_dot_vec3_u32(u_input.a.xxw, u_input.a.xwy), _wgslsmith_clamp_u32(var_0, 25641u, 0u)), countOneBits(vec2<i32>(global2.x, 12902i)))), _wgslsmith_mod_i32(firstTrailingBit(-20122i), ~(-2475i)), 2147483647i);
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-461f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1203f + 2682f), _wgslsmith_f_op_f32(f32(-1f) * -919f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1286f - -1978f) * _wgslsmith_f_op_f32(select(758f, -417f, var_1.x))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(1020f * 1282f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1320f, -120f, 2406f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(865f, 629f, 1175f, 1000f) + vec4<f32>(237f, -351f, -2293f, -839f))))))));
    return Struct_1(select(var_1.zx, var_1.xz, !vec2<bool>(5794i <= global2.x, false)), !var_1.x, ~vec4<u32>(select(1u, var_0, true), ~u_input.b, ~(~1u), ~abs(var_0)), min(_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global2.x, global2.x), vec2<i32>(global2.x, global2.x)), -vec2<i32>(-33138i, -1i)), _wgslsmith_add_vec2_i32(vec2<i32>(global2.x, 1i), max(vec2<i32>(global2.x, 0i), vec2<i32>(global2.x, global2.x)))), abs(vec2<i32>(global2.x, countOneBits(global2.x)))));
}

fn func_1(arg_0: vec4<bool>) -> u32 {
    let var_0 = reverseBits((vec2<i32>(-22874i, global2.x) | vec2<i32>(2147483647i, global2.x)) << (_wgslsmith_mod_vec2_u32(~u_input.a.wz, vec2<u32>(98346u, 4294967295u)) % vec2<u32>(32u))) >> (~abs(u_input.a.yx) % vec2<u32>(32u));
    let var_1 = Struct_2(arg_0.zyx, func_2());
    let var_2 = func_2();
    global3 = 2147483647i;
    var var_3 = u_input.a.x ^ u_input.a.x;
    return ~15871u;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: vec2<f32>) -> u32 {
    global2 = _wgslsmith_clamp_vec2_i32(-(~_wgslsmith_div_vec2_i32(vec2<i32>(12143i, 2147483647i), arg_0.d)), vec2<i32>(~max(-26654i, -5664i), i32(-1i) * -firstTrailingBit(arg_2.b.d.x)), vec2<i32>(arg_1.x, arg_2.b.d.x) >> (reverseBits(vec2<u32>(arg_0.c.x, 1u)) % vec2<u32>(32u)));
    global0 = array<vec4<i32>, 16>();
    global3 = -20623i;
    var var_0 = 4294967295u;
    global2 = -arg_0.d;
    return _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(arg_0.c.x, arg_0.c.x) >> (vec2<u32>(arg_2.b.c.x, arg_2.b.c.x) % vec2<u32>(32u))) | arg_2.b.c.zw, arg_0.c.zw);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var var_1 = ~(~u_input.a.x);
    let var_2 = vec3<u32>(firstTrailingBit(~var_0.x), func_5(Struct_1(vec2<bool>(global2.x <= -2147483647i, true), any(vec2<bool>(false, true)), vec4<u32>(firstLeadingBit(var_0.x), var_0.x & u_input.b, func_1(vec4<bool>(false, false, true, true)), var_0.x), _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, global2.x), vec2<i32>(50459i, 1i) >> (u_input.a.yw % vec2<u32>(32u)))), max(vec3<i32>(global2.x, global2.x, global2.x) >> (var_0.zyx % vec3<u32>(32u)), -vec3<i32>(-13000i, global2.x, global2.x)) >> (vec3<u32>(min(1u, 1u), ~43292u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, var_0.x), vec3<u32>(var_0.x, var_0.x, u_input.a.x))) % vec3<u32>(32u)), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, 1u, 86398u, var_0.x), reverseBits(vec4<u32>(var_0.x, u_input.b, 3084u, 0u))), 1u)], vec2<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1180f))), ~0u);
    global1 = array<Struct_2, 1>();
    let var_3 = false;
    var var_4 = all(!select(vec4<bool>(true, var_3, any(vec4<bool>(true, var_3, true, var_3)), true), vec4<bool>(select(true, true, var_3), var_3 | var_3, !var_3, true), vec4<bool>(var_3, var_3, !var_3, all(vec3<bool>(false, var_3, false)))));
    var_1 = ~u_input.b ^ _wgslsmith_dot_vec3_u32(~var_2, abs(var_0.zxy));
    var_0 = _wgslsmith_sub_vec4_u32(firstTrailingBit(select(u_input.a, ~u_input.a, vec4<bool>(var_3, true, var_3, !var_3))), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b, var_0.x, 4294967295u, var_2.x), u_input.a) >> (vec4<u32>(1u, ~4294967295u, 1u, var_0.x) % vec4<u32>(32u)));
    let var_5 = vec4<i32>(-29865i, global2.x, 64065i, ~(-((32720i >> (u_input.b % 32u)) & -2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(~(select(var_5.x, global2.x, var_3) | -1i), ~22788u | (0u & ~select(31444u, var_2.x, var_3)));
}

