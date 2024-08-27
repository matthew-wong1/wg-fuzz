struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<bool>,
    d: i32,
    e: u32,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: Struct_3,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec3<u32>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1963f))))) + -1402f);
    let var_1 = ~u_input.b >> (~4294967295u % 32u);
    let var_2 = Struct_2(arg_0);
    var_0 = 2028f;
    let var_3 = ~var_2.a.d;
    return !vec2<bool>(!(arg_0.b <= _wgslsmith_f_op_f32(-var_2.a.b)), any(vec2<bool>(-7833i == var_2.a.a, true)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec4<f32>) -> Struct_5 {
    let var_0 = Struct_5(arg_0.a.c.xz, _wgslsmith_add_vec2_u32(u_input.e, ~u_input.c ^ (~u_input.e >> (u_input.e % vec2<u32>(32u)))), Struct_3(Struct_1(0i, arg_2.x, ~vec3<u32>(1u, u_input.b, 1u), vec4<u32>(u_input.c.x, arg_0.a.d.x, arg_0.a.c.x, ~u_input.e.x)), !func_3(Struct_1(-14210i, arg_0.a.b, vec3<u32>(32034u, 4294967295u, arg_0.a.c.x), vec4<u32>(53859u, arg_0.a.c.x, 65284u, 0u)), 53915u, vec3<u32>(1u, u_input.c.x, 40635u)), select(vec2<bool>(true, true), vec2<bool>(select(false, false, false), any(vec4<bool>(true, false, true, true))), !any(vec2<bool>(false, true))), u_input.d, ~0u), vec3<i32>(arg_0.a.a << (~0u % 32u), _wgslsmith_sub_i32(6746i, u_input.d), 2147483647i));
    let var_1 = Struct_2(var_0.c.a);
    var var_2 = abs(1u) > (_wgslsmith_mod_u32(~(arg_0.a.d.x >> (43669u % 32u)), min(var_0.a.x >> (0u % 32u), arg_0.a.d.x)) | _wgslsmith_mod_u32(_wgslsmith_div_u32(~arg_0.a.d.x, ~0u), ~1u));
    var var_3 = var_0.c.c.x;
    var_3 = false;
    return var_0;
}

fn func_4(arg_0: Struct_5, arg_1: f32, arg_2: vec2<f32>, arg_3: i32) -> vec2<bool> {
    var var_0 = Struct_4(arg_2.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-480f - _wgslsmith_f_op_f32(exp2(arg_0.c.a.b))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + arg_0.c.a.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1062f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1 + arg_1), arg_0.c.a.b)))));
    var var_1 = select(select(vec3<bool>(arg_0.c.b.x, _wgslsmith_f_op_f32(exp2(arg_0.c.a.b)) > _wgslsmith_f_op_f32(f32(-1f) * -1122f), true), vec3<bool>(!arg_0.c.b.x, any(arg_0.c.c), arg_0.c.b.x), select(!select(vec3<bool>(false, true, arg_0.c.b.x), vec3<bool>(arg_0.c.b.x, true, true), vec3<bool>(false, arg_0.c.c.x, arg_0.c.b.x)), select(select(vec3<bool>(true, arg_0.c.c.x, false), vec3<bool>(arg_0.c.b.x, arg_0.c.c.x, arg_0.c.c.x), vec3<bool>(arg_0.c.b.x, arg_0.c.c.x, arg_0.c.c.x)), !vec3<bool>(false, arg_0.c.b.x, arg_0.c.c.x), true), !vec3<bool>(false, true, arg_0.c.c.x))), vec3<bool>(true, true, true), vec3<bool>(arg_0.c.c.x, true, any(func_3(Struct_1(-1i, 315f, vec3<u32>(arg_0.c.a.c.x, arg_0.a.x, arg_0.b.x), vec4<u32>(64040u, u_input.e.x, arg_0.a.x, u_input.e.x)), 26230u >> (arg_0.b.x % 32u), _wgslsmith_clamp_vec3_u32(vec3<u32>(23114u, arg_0.c.a.c.x, arg_0.c.a.d.x), vec3<u32>(u_input.a.x, u_input.b, 0u), arg_0.c.a.d.xzw)))));
    let var_2 = arg_3;
    let var_3 = 907f <= arg_0.c.a.b;
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_0.c.a.b)), 650f, 564f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-174f, 419f, arg_1), vec3<f32>(-1056f, 414f, var_0.b.x)))), vec3<bool>(any(vec3<bool>(var_3, var_3, var_3)), select(false, var_1.x, false), true)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.a.b, -360f, arg_2.x)), vec3<f32>(var_0.a, -631f, 813f)))))));
    return arg_0.c.c;
}

fn func_1(arg_0: vec4<f32>) -> vec4<u32> {
    let var_0 = Struct_3(Struct_1(abs(_wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.d, 13695i), max(u_input.d, -70146i))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.x)) + arg_0.x))), vec3<u32>(u_input.e.x, u_input.b, u_input.b), vec4<u32>(~u_input.e.x, ~(~u_input.e.x), u_input.a.x, u_input.b)), !func_4(func_2(Struct_2(Struct_1(-1i, -1377f, vec3<u32>(u_input.e.x, 0u, u_input.c.x), vec4<u32>(0u, u_input.a.x, 4294967295u, u_input.e.x))), arg_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-130f, -250f, -286f, arg_0.x))), -2423f, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 1778f) + arg_0.zx))), abs(u_input.d)), vec2<bool>(func_3(func_2(Struct_2(Struct_1(u_input.d, 692f, vec3<u32>(4294967295u, u_input.b, u_input.e.x), vec4<u32>(34620u, 76370u, u_input.b, u_input.c.x))), vec4<f32>(arg_0.x, arg_0.x, -1000f, -323f), arg_0).c.a, ~u_input.c.x, _wgslsmith_sub_vec3_u32(~vec3<u32>(1u, u_input.e.x, u_input.e.x), vec3<u32>(63973u, 0u, 24197u) >> (vec3<u32>(1u, 3617u, u_input.e.x) % vec3<u32>(32u)))).x, all(vec4<bool>(true, true, true, true))), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, -2147483647i, u_input.d) >> (vec3<u32>(u_input.b, 4294967295u, 70814u) % vec3<u32>(32u)), -vec3<i32>(1121i, u_input.d, -5496i)) >> (vec3<u32>(u_input.e.x, _wgslsmith_mult_u32(u_input.c.x, 27819u), _wgslsmith_sub_u32(4294967295u, u_input.c.x)) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, u_input.d, -44315i), vec3<i32>(u_input.d, u_input.d, 2147483647i)) | firstTrailingBit(vec3<i32>(u_input.d, -2147483647i, u_input.d)), countOneBits(~vec3<i32>(u_input.d, u_input.d, -4094i)), ~(-vec3<i32>(u_input.d, u_input.d, -14976i)))), ~(~u_input.b));
    let var_1 = vec4<i32>(u_input.d, var_0.a.a, -1i, -_wgslsmith_dot_vec2_i32(-vec2<i32>(0i, u_input.d), vec2<i32>(-13352i, ~1i)));
    let var_2 = ~_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(var_1.xxz, vec3<i32>(u_input.d, 0i, var_1.x)), -(~var_1.zyz)) & -35720i;
    let var_3 = (u_input.d & (u_input.d << (var_0.e % 32u))) >> (~(~(_wgslsmith_mod_u32(var_0.a.c.x, var_0.e) | 577u)) % 32u);
    return ~_wgslsmith_mult_vec4_u32(var_0.a.d, vec4<u32>(_wgslsmith_dot_vec3_u32(~var_0.a.c, var_0.a.c & vec3<u32>(var_0.a.d.x, 9035u, 4294967295u)), 7227u, ~(~7619u), u_input.e.x));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_2(func_2(Struct_2(func_2(Struct_2(Struct_1(u_input.d, -141f, arg_1.xyw, arg_1)), vec4<f32>(3290f, arg_0.x, arg_0.x, arg_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-903f, arg_0.x, -789f, 778f))).c.a), vec4<f32>(787f, arg_0.x, _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)), arg_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_f_op_f32(floor(arg_0.x))))).c.a);
    var_0 = Struct_2(Struct_1(var_0.a.a, _wgslsmith_f_op_f32(-arg_0.x), arg_1.zxz, ~_wgslsmith_mult_vec4_u32(var_0.a.d, ~vec4<u32>(46558u, arg_1.x, arg_1.x, arg_1.x))));
    var var_1 = 19565u;
    var_0 = Struct_2(var_0.a);
    var var_2 = u_input.d | ((_wgslsmith_mod_i32(-var_0.a.a, _wgslsmith_div_i32(u_input.d, u_input.d)) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), var_0.a.c.zy) % 32u)) & var_0.a.a);
    return Struct_1(firstLeadingBit(~var_0.a.a ^ 2147483647i) & _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.a, -2147483647i, u_input.d) | vec3<i32>(2147483647i, u_input.d, 2147483647i), firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, 1i, u_input.d), vec3<i32>(u_input.d, -14838i, var_0.a.a)))), _wgslsmith_f_op_f32(-297f - _wgslsmith_f_op_f32(-arg_0.x)), vec3<u32>(func_1(vec4<f32>(-572f, var_0.a.b, var_0.a.b, var_0.a.b)).x, ~4294967295u, func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.b, 1375f, -1099f, 465f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1786f, var_0.a.b, 498f, var_0.a.b)))).x), _wgslsmith_sub_vec4_u32(vec4<u32>(~13063u, var_0.a.d.x, var_0.a.d.x, u_input.a.x), arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(706f, -517f, -1000f) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1709f, 1381f, -875f), vec3<f32>(-1192f, -121f, -743f)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(480f, 659f, -802f)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -621f)), -216f, 505f)), _wgslsmith_add_vec4_u32(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(426f, 842f, 1543f, -496f) * vec4<f32>(-1586f, -997f, 1223f, 1293f)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-818f, -543f, -787f, 1000f))))), vec4<u32>(~_wgslsmith_div_u32(46549u, 12120u), 4294967295u, _wgslsmith_mult_u32(~u_input.e.x, 31001u), _wgslsmith_add_u32(countOneBits(u_input.c.x), 1u))));
    let var_1 = func_2(Struct_2(func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1984f, var_0.b, -1487f)) * vec3<f32>(var_0.b, -678f, var_0.b)), var_0.d)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.b - var_0.b), var_0.b, _wgslsmith_f_op_f32(146f * var_0.b), _wgslsmith_f_op_f32(min(-119f, var_0.b)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-var_0.b), -1000f, -548f, _wgslsmith_f_op_f32(f32(-1f) * -199f))))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b))), -255f, _wgslsmith_f_op_f32(sign(func_2(Struct_2(var_0), vec4<f32>(492f, var_0.b, var_0.b, -1112f), vec4<f32>(var_0.b, -495f, var_0.b, 1599f)).c.a.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -526f) + -1545f)))));
    let var_2 = ~var_1.d.x;
    var var_3 = vec4<bool>(!select(func_4(Struct_5(var_0.d.yx, var_0.c.zx, var_1.c, vec3<i32>(var_1.d.x, 2147483647i, 59415i)), -964f, vec2<f32>(469f, var_0.b), u_input.d).x & var_1.c.b.x, any(select(vec3<bool>(true, var_1.c.c.x, var_1.c.c.x), vec3<bool>(var_1.c.b.x, false, true), false)), true), var_1.c.c.x && any(vec4<bool>(true, true, any(vec2<bool>(var_1.c.c.x, false)), false)), var_1.c.c.x, var_1.c.c.x);
    let var_4 = var_0.c.x;
    var_3 = !(!select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, var_3.x), vec4<bool>(true, true, false, true)), vec4<bool>(func_3(Struct_1(u_input.d, var_1.c.a.b, vec3<u32>(1u, var_1.b.x, var_0.c.x), var_1.c.a.d), var_1.b.x, vec3<u32>(var_0.c.x, 4294967295u, var_4)).x, true, true, true), true));
    let var_5 = Struct_5(abs(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(~var_0.c.yz, func_2(Struct_2(var_0), vec4<f32>(1146f, var_0.b, -1747f, 434f), vec4<f32>(-353f, var_0.b, var_1.c.a.b, var_1.c.a.b)).c.a.c.zy), vec2<u32>(~var_4, var_0.d.x))), select(~var_1.c.a.d.xz, abs(abs(~vec2<u32>(var_0.d.x, u_input.a.x))), vec2<bool>(func_3(var_0, ~33199u, func_1(vec4<f32>(var_0.b, 2803f, -847f, -1801f)).zyw).x, true)), Struct_3(Struct_1(var_2, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.c.a.b + 1105f), 141f)), _wgslsmith_mod_vec3_u32(~var_0.c, vec3<u32>(4294967295u, u_input.a.x, 35981u)), var_0.d), vec2<bool>(select(var_3.x, !var_1.c.c.x, select(var_3.x, var_3.x, false)), var_1.c.b.x), var_1.c.c, ~var_1.c.a.a | countOneBits(_wgslsmith_clamp_i32(18140i, var_2, var_0.a)), var_4), -var_1.d >> (vec3<u32>(19843u, _wgslsmith_dot_vec2_u32(u_input.a, ~var_1.c.a.d.zw), firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d.x, 4294967295u, var_0.d.x), var_0.d.yxx))) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~_wgslsmith_dot_vec2_u32(func_5(vec3<f32>(var_1.c.a.b, 1362f, var_1.c.a.b), var_0.d).d.xz, ~var_1.b)), _wgslsmith_dot_vec3_u32(~var_5.c.a.c, vec3<u32>(_wgslsmith_add_u32(1u, 1u), var_1.b.x, _wgslsmith_dot_vec2_u32(var_5.b, u_input.e))), 1i, var_1.a.x << (29062u % 32u), var_5.c.a.c);
}

