struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: Struct_1,
    d: u32,
    e: vec3<u32>,
}

struct Struct_4 {
    a: bool,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec4<f32>,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec2<u32> {
    let var_0 = select(vec2<bool>(all(vec2<bool>(true, all(vec3<bool>(true, false, true)))), all(vec2<bool>(true, true))), select(vec2<bool>(true, select(true, true, true)), select(vec2<bool>(true, false), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, true)), true), vec2<bool>(true, all(vec4<bool>(false, false, false, true)))), vec2<bool>(!any(vec2<bool>(true, true)), all(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true)))));
    return select(vec2<u32>(u_input.a.x, abs(u_input.b.x)), ~firstLeadingBit(u_input.b.yx), vec2<bool>(select((var_0.x & var_0.x) & !var_0.x, !any(vec3<bool>(var_0.x, true, var_0.x)), all(!vec4<bool>(true, var_0.x, var_0.x, var_0.x))), true));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec3<i32>) -> vec2<u32> {
    global0 = arg_2;
    return _wgslsmith_div_vec2_u32(func_3(), u_input.b.yy);
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: vec2<u32>) -> vec3<i32> {
    let var_0 = Struct_1(arg_2);
    var var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, _wgslsmith_clamp_i32(global0.x, -29238i, 21685i) << (arg_2.x % 32u)), vec2<i32>(global0.x & select(global0.x, 55034i, false), min(global0.x, _wgslsmith_mod_i32(global0.x, global0.x)))) | -(global0.zx | ~(~global0.yy));
    let var_2 = var_0;
    let var_3 = Struct_3(!all(select(vec2<bool>(true, false), vec2<bool>(true, false), false)) && !all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), vec4<f32>(-2519f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.a))), -1171f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(730f, arg_1.a)) - _wgslsmith_f_op_f32(arg_1.a + arg_1.a))))), Struct_1(_wgslsmith_mod_vec2_u32(var_2.a, arg_2)), ~var_2.a.x, u_input.a.wzw);
    let var_4 = vec3<u32>(_wgslsmith_dot_vec2_u32(arg_2, func_2(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(global0.x, var_1.x, 2147483647i)), countOneBits(vec3<i32>(2147483647i, -2147483647i, global0.x))), 0u, vec3<i32>(abs(var_1.x), global0.x, -2147483647i))), ~43797u, ~(~_wgslsmith_sub_u32(0u, _wgslsmith_mult_u32(var_3.e.x, var_3.e.x))));
    return vec3<i32>(firstTrailingBit(_wgslsmith_mult_i32(-4265i, var_1.x)), global0.x >> (_wgslsmith_clamp_u32(max(u_input.b.x, 0u), ~70981u, abs(var_2.a.x)) % 32u), var_1.x) | ((vec3<i32>(-1i) * -firstTrailingBit(vec3<i32>(-13234i, -25279i, 0i))) << (firstTrailingBit(~(~vec3<u32>(var_2.a.x, 2282u, 4294967295u))) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(14247i, global0.x, 50278i) << (u_input.a.zxw % vec3<u32>(32u)), -(vec3<i32>(global0.x, global0.x, 18366i) << (vec3<u32>(u_input.c, 0u, u_input.c) % vec3<u32>(32u)))), countOneBits(~select(vec3<i32>(-1i, global0.x, global0.x), vec3<i32>(0i, global0.x, 0i), vec3<bool>(true, true, false))), -(-vec3<i32>(32400i, -2147483647i, global0.x) & _wgslsmith_mult_vec3_i32(vec3<i32>(global0.x, -32544i, -1i), vec3<i32>(-49845i, global0.x, -27027i)))), _wgslsmith_sub_vec3_i32(select(_wgslsmith_mult_vec3_i32(vec3<i32>(global0.x, global0.x, -2147483647i), -vec3<i32>(1i, global0.x, global0.x)), ~(~vec3<i32>(0i, 0i, global0.x)), true), vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(vec3<i32>(global0.x, -4746i, global0.x), vec3<i32>(global0.x, -1i, 28678i))));
    global0 = ~(_wgslsmith_sub_vec3_i32(-(~vec3<i32>(-1i, global0.x, 0i)), func_1(_wgslsmith_div_u32(u_input.a.x, 4294967295u), Struct_2(-730f), u_input.b.zx)) & ~vec3<i32>(_wgslsmith_mult_i32(-1i, 6705i), 64609i, -global0.x));
    let var_0 = vec3<bool>(true && any(vec4<bool>(true, true, false, all(vec2<bool>(false, true)))), true, any(!vec4<bool>(true, true, true, any(vec2<bool>(true, true)))));
    global0 = abs(vec3<i32>(-(0i & (5372i & global0.x)), ~(global0.x << (min(u_input.c, u_input.b.x) % 32u)), max(global0.x, firstTrailingBit(4912i) << (3153u % 32u))));
    global0 = vec3<i32>(_wgslsmith_sub_i32(-(global0.x & 2147483647i), _wgslsmith_sub_i32(~min(47659i, 18594i), 31188i)), 1i, global0.x);
    let var_1 = ~vec4<u32>(~(~u_input.a.x), _wgslsmith_mod_u32(1u, ~1u), _wgslsmith_sub_u32(_wgslsmith_div_u32(~u_input.c, 47830u), max(_wgslsmith_dot_vec3_u32(vec3<u32>(62143u, u_input.c, 30362u), u_input.b), 1u)), abs(_wgslsmith_sub_u32(1u, ~u_input.a.x)));
    global0 = vec3<i32>(-1i) * -abs(_wgslsmith_mult_vec3_i32(-vec3<i32>(-11028i, global0.x, global0.x), vec3<i32>(global0.x, -1i, global0.x) >> (vec3<u32>(var_1.x, 64470u, u_input.a.x) % vec3<u32>(32u))));
    var var_2 = Struct_3(!any(vec3<bool>(var_0.x | var_0.x, any(var_0.xx), true)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-140f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -725f))), _wgslsmith_f_op_f32(f32(-1f) * -1003f), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(min(-1524f, _wgslsmith_f_op_f32(-1f)))), Struct_1(vec2<u32>(~var_1.x ^ countOneBits(var_1.x), u_input.a.x)), var_1.x, _wgslsmith_mult_vec3_u32(vec3<u32>(~_wgslsmith_mult_u32(u_input.b.x, 4294967295u), 26136u, ~u_input.c), _wgslsmith_clamp_vec3_u32(~u_input.b, _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.x, var_1.x, u_input.b.x), ~vec3<u32>(69666u, u_input.b.x, u_input.b.x)), var_1.wyy)));
    let var_3 = _wgslsmith_mod_vec2_i32(countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(global0.x, 0i), global0.yx)), ~_wgslsmith_mult_vec2_i32(func_1(0u, Struct_2(-109f), var_2.e.xz).yx, _wgslsmith_add_vec2_i32(global0.yz, vec2<i32>(global0.x, global0.x)))) ^ select(-(~global0.yy), select(reverseBits(vec2<i32>(global0.x, 18081i)), abs(global0.xz), var_2.a && var_0.x) & global0.xy, !(_wgslsmith_f_op_f32(-1104f * var_2.b.x) == var_2.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(~1u, _wgslsmith_sub_i32(~select(-2147483647i, -31343i, -5911i > var_3.x), -(~1i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -743f), 1f))), _wgslsmith_f_op_f32(f32(-1f) * -980f), 1f);
}

