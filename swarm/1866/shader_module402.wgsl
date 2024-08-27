struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec2<u32>,
    d: f32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: vec2<f32>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1() -> f32 {
    return _wgslsmith_div_f32(-1149f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(830f, 616f))))))));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_2) -> f32 {
    var var_0 = 466f;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(542f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, 1000f)))))), 137f);
    var_0 = 2455f;
    var var_1 = Struct_2(arg_2.a);
    var var_2 = u_input.b;
    return _wgslsmith_f_op_f32(-168f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - arg_1) + _wgslsmith_f_op_f32(arg_2.a.d - _wgslsmith_f_op_f32(select(-1000f, arg_1, any(vec2<bool>(false, false)))))));
}

fn func_2(arg_0: vec2<f32>) -> Struct_3 {
    var var_0 = ~vec3<u32>(countOneBits(u_input.d), 0u, u_input.d);
    return Struct_3(Struct_2(Struct_1(_wgslsmith_add_vec2_u32(~var_0.xx, var_0.zz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, true))), var_0.yx, arg_0.x, _wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(30721i, -1i, u_input.b)), u_input.c.xxx))), Struct_1(vec2<u32>(u_input.d, ~var_0.x) >> (var_0.xz % vec2<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -1516f), vec2<u32>(_wgslsmith_add_u32(firstLeadingBit(var_0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 39626u, var_0.x), vec3<u32>(u_input.d, 50802u, 4294967295u))), 0u), -690f, (vec3<i32>(u_input.b, u_input.c.x, 564i) & vec3<i32>(-30326i, 11116i, u_input.c.x)) >> (~(~vec3<u32>(4294967295u, 4294967295u, var_0.x)) % vec3<u32>(32u))), Struct_2(Struct_1(~firstLeadingBit(var_0.yy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_0.x, 2414f, Struct_2(Struct_1(vec2<u32>(var_0.x, 4294967295u), arg_0.x, vec2<u32>(8394u, var_0.x), -647f, u_input.c.ywx)))) * 731f), firstTrailingBit(firstTrailingBit(var_0.zy)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(trunc(-433f))), ~(-vec3<i32>(u_input.c.x, u_input.b, 33088i)))), _wgslsmith_div_vec2_f32(arg_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(abs(arg_0.x))))), vec3<i32>(2147483647i, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.c.x, u_input.b), u_input.c.wx), u_input.b));
}

fn func_4(arg_0: Struct_3) -> vec3<u32> {
    let var_0 = arg_0.c;
    var var_1 = vec4<i32>(arg_0.a.a.e.x, reverseBits(u_input.c.x), ~2147483647i, -var_0.a.e.x << (arg_0.c.a.a.x % 32u));
    var_1 = u_input.c;
    var_1 = vec4<i32>(-1i, var_1.x, var_0.a.e.x, arg_0.e.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(-arg_0.d);
    return vec3<u32>(abs(1u), _wgslsmith_clamp_u32(~78066u, ~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(arg_0.a.a.c, vec2<u32>(arg_0.c.a.c.x, 6953u)), ~1u), 45298u), _wgslsmith_dot_vec3_u32(vec3<u32>(min(arg_0.b.c.x, arg_0.a.a.c.x), var_0.a.a.x & 1u, u_input.a) << (vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.c.x, 0u, u_input.d, var_0.a.c.x), vec4<u32>(4294967295u, 4294967295u, 1u, u_input.a)), _wgslsmith_sub_u32(u_input.d, 82540u), _wgslsmith_mult_u32(12192u, arg_0.c.a.c.x)) % vec3<u32>(32u)), reverseBits(~(~vec3<u32>(arg_0.b.a.x, arg_0.c.a.c.x, u_input.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(max(firstTrailingBit(vec2<u32>(0u, u_input.d)), max(vec2<u32>(u_input.d, u_input.a), vec2<u32>(u_input.a, 4294967295u))) & countOneBits(vec2<u32>(u_input.d, u_input.a)), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(func_1())), ~select(~vec2<u32>(u_input.a, u_input.d), max(vec2<u32>(u_input.d, u_input.a), vec2<u32>(8792u, 24023u)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2054f + -746f) - 1000f)), u_input.c.xyw));
    let var_1 = var_0.a;
    let var_2 = var_1.e >> (_wgslsmith_add_vec3_u32(func_4(func_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-309f, var_0.a.d))))), ~abs(~vec3<u32>(4294967295u, u_input.a, var_1.a.x))) % vec3<u32>(32u));
    let var_3 = Struct_1(~_wgslsmith_mod_vec2_u32(select(vec2<u32>(4294967295u, u_input.d), var_0.a.c, false) >> (var_1.c % vec2<u32>(32u)), vec2<u32>(4294967295u, var_1.c.x >> (var_0.a.a.x % 32u))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.d * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_1.d, 1493f)), 1462f)))), var_0.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-921f)) * _wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(-var_0.a.b)))), reverseBits(select(u_input.c.zyw, vec3<i32>(_wgslsmith_mult_i32(-1i, var_1.e.x), 2147483647i, 8102i), vec3<bool>(true, true, true))));
    var var_4 = ~_wgslsmith_mod_vec2_i32(-_wgslsmith_sub_vec2_i32(select(vec2<i32>(1i, var_1.e.x), var_2.yy, vec2<bool>(false, true)), u_input.c.zy | vec2<i32>(8383i, var_2.x)), var_2.zz);
    let var_5 = var_0.a;
    let var_6 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(func_2(vec2<f32>(var_3.b, var_3.d)).b.d, _wgslsmith_f_op_f32(1268f * var_0.a.b), _wgslsmith_f_op_f32(func_3(var_3.b, 981f, Struct_2(Struct_1(var_3.a, var_0.a.d, var_3.a, var_3.b, var_2)))), _wgslsmith_f_op_f32(var_1.d - var_5.b)))));
    var var_7 = var_1.c.x | ~4294967295u;
    var_7 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.a, ~(0u & var_0.a.a.x), ~124951u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-var_5.b), -1918f, -1366f, -756f), var_6.a, true)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1540f, var_0.a.b, var_1.d, var_1.b)) + _wgslsmith_f_op_vec4_f32(-var_6.a))));
}

