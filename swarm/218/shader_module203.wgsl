struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = arg_0;
    let var_1 = ~countOneBits(max(firstTrailingBit(vec2<u32>(arg_0.a.x, 4294967295u)), u_input.c.xz) | abs(max(var_0.a.zx, var_0.a.zx)));
    let var_2 = reverseBits(~(~(~(~vec2<u32>(0u, var_0.a.x)))));
    var var_3 = _wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~0u), _wgslsmith_mult_vec2_u32(var_0.a.yx, arg_0.a.xx));
    var var_4 = var_0;
    return _wgslsmith_mult_vec4_u32(~(~(vec4<u32>(30266u, 0u, u_input.b, 1u) << (u_input.c % vec4<u32>(32u))) ^ u_input.c), vec4<u32>(arg_0.a.x, var_4.a.x, _wgslsmith_clamp_u32(1u, select(_wgslsmith_mod_u32(var_1.x, 1u), 16006u, var_4.b), u_input.c.x), abs(var_0.a.x)));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(~u_input.a, _wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(-32875i, -13943i, u_input.a.x, u_input.e)) >> (func_3(Struct_1(u_input.c.wxw, true, -14146i)) % vec4<u32>(32u))), vec4<i32>(u_input.a.x, 16885i, u_input.e, ~u_input.d.x) | (_wgslsmith_mod_vec4_i32(u_input.d, vec4<i32>(-6327i, 2147483647i, 2147483647i, u_input.a.x)) & (u_input.d >> ((vec4<u32>(u_input.c.x, u_input.b, u_input.b, 21362u) | vec4<u32>(67671u, u_input.b, 5503u, u_input.b)) % vec4<u32>(32u)))));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -252f))) - _wgslsmith_f_op_f32(f32(-1f) * -149f))));
    return Struct_1(~vec3<u32>(_wgslsmith_mod_u32(~4294967295u, ~25978u), ~(~u_input.c.x), u_input.b), true, var_0.x);
}

fn func_1(arg_0: vec2<u32>, arg_1: i32, arg_2: u32) -> vec2<i32> {
    let var_0 = Struct_1(_wgslsmith_add_vec3_u32((reverseBits(u_input.c.zyw) ^ u_input.c.zxz) ^ ((vec3<u32>(arg_2, arg_2, 0u) ^ vec3<u32>(arg_2, arg_0.x, u_input.b)) >> (min(vec3<u32>(u_input.b, 20575u, 29780u), u_input.c.wzy) % vec3<u32>(32u))), vec3<u32>(~_wgslsmith_dot_vec2_u32(arg_0, arg_0), arg_2, 12328u)), false, 11385i);
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-237f))));
    var_1 = 214f;
    var var_2 = Struct_2(func_2(), var_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-600f, 749f, 219f, -1497f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-374f, 852f, 1215f, 825f) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1106f, -1000f, 778f, -214f), vec4<f32>(-354f, -1230f, -1059f, 591f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-958f, 705f, 261f, 1590f)) + vec4<f32>(-741f, 846f, -545f, -1574f)) * vec4<f32>(1f, 1f, 1f, 1f))));
    let var_3 = false;
    return abs(u_input.d.ww);
}

fn func_4(arg_0: vec2<i32>) -> i32 {
    let var_0 = ~u_input.a;
    let var_1 = vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(true, false, false)), true), true)), true, -1800f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1103f)) + _wgslsmith_f_op_f32(round(-1554f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1073f))));
    var var_2 = ~abs(u_input.c.yzw);
    var_2 = vec3<u32>(~(min(0u << (u_input.b % 32u), _wgslsmith_mult_u32(74223u, 28031u)) << (abs(50592u) % 32u)), var_2.x, 0u);
    var_2 = min(vec3<u32>(func_3(Struct_1(u_input.c.xzw, true, u_input.d.x)).x, var_2.x, 94142u), ~(~func_2().a)) ^ vec3<u32>(4294967295u, ~(~(~u_input.c.x)), abs(~(var_2.x & 52854u)));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(~reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(14186u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.c.x, 7670u))) >> ((min(abs(31019u), countOneBits(0u)) >> (u_input.b % 32u)) % 32u), abs(u_input.c.x));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1146f, -882f, -685f, -1694f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-683f, 571f, -1514f, 379f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1625f, 673f, 1434f, 1000f))))))));
    var var_2 = abs(u_input.e ^ _wgslsmith_add_i32(1i, u_input.a.x));
    let var_3 = 0i;
    var_2 = -(~min(select(u_input.a.x, u_input.a.x, false), -var_3) << (_wgslsmith_clamp_u32(~54496u, 53015u, 0u & reverseBits(u_input.c.x)) % 32u));
    var var_4 = -vec4<i32>(~u_input.e, func_4(func_1(~var_0, 71934i, countOneBits(var_0.x))), -1i, ~(-62068i));
    var var_5 = Struct_2(Struct_1(vec3<u32>(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(54917u, var_0.x)), var_0), u_input.c.x, func_2().a.x), all(vec4<bool>(true, false, true, true)), -10656i), Struct_1(u_input.c.zwz, all(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, false, true), true)), 13608i), var_1);
    let var_6 = true;
    var_2 = ~abs(1i >> (~(~0u) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec3<i32>(-2147483647i, 1i, var_5.a.c)), u_input.c, var_0.x << (min(~(u_input.c.x << (var_0.x % 32u)), 1u) % 32u), max(vec2<i32>(firstLeadingBit(-33582i), i32(-1i) * -var_5.b.c), ~(select(u_input.a.ww, u_input.a.xz, vec2<bool>(var_6, var_6)) ^ var_4.zy)));
}

