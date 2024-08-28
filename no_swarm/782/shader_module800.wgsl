struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: f32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: i32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_clamp_i32(-min(i32(-1i) * -11324i, 1i), arg_0.b.a, ~1i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), -1000f, arg_2.c.x, _wgslsmith_f_op_f32(select(-979f, arg_2.b.b.x, false)))) - _wgslsmith_f_op_vec4_f32(-arg_2.b.b)), abs(_wgslsmith_sub_i32(~arg_0.d.x, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_2.b.c, u_input.e), vec3<i32>(u_input.b.x, 2147483647i, -28321i))))), u_input.a.yz);
    let var_1 = Struct_2(~(_wgslsmith_mult_vec4_u32(~vec4<u32>(48772u, 0u, 60955u, arg_1.x), ~vec4<u32>(4294967295u, 55941u, arg_0.a.x, arg_1.x)) ^ ~arg_0.a), arg_0.b, arg_2.c, vec3<i32>(select(-27133i, _wgslsmith_mult_i32(-59224i, -26286i | arg_0.d.x), true), abs(_wgslsmith_mod_i32(arg_2.b.a, var_0.c)), -15112i));
    let var_2 = ~(~countOneBits(select(vec2<u32>(1u, 125142u) << (var_1.a.yw % vec2<u32>(32u)), arg_2.a.xz | arg_1.yy, select(vec2<bool>(false, false), vec2<bool>(false, false), true))));
    var var_3 = vec3<i32>(arg_0.d.x >> (u_input.c % 32u), 1i, 7029i);
    let var_4 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(arg_0.b.b)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.b.b - _wgslsmith_f_op_vec4_f32(-vec4<f32>(444f, var_1.c.x, var_1.c.x, var_0.b.x)))), var_0.b))));
    return arg_2.b.b.x;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(~(~_wgslsmith_mult_i32(u_input.a.x, -u_input.e)), _wgslsmith_f_op_vec4_f32(vec4<f32>(456f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(Struct_2(vec4<u32>(u_input.d.x, 0u, u_input.d.x, u_input.c), Struct_1(u_input.a.x, vec4<f32>(-1093f, -1000f, -469f, 245f), u_input.a.x, u_input.a.zx), vec3<f32>(1536f, -1170f, 130f), vec3<i32>(u_input.a.x, u_input.e, 1i)), vec3<u32>(u_input.c, 4294967295u, 31543u), Struct_2(vec4<u32>(132596u, 1300u, 24354u, 4294967295u), Struct_1(-16654i, vec4<f32>(1715f, 884f, 1195f, 1824f), -18603i, u_input.a.yz), vec3<f32>(-363f, -729f, 1474f), u_input.b), u_input.b.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1540f)), _wgslsmith_f_op_f32(round(-784f))), _wgslsmith_f_op_f32(step(367f, _wgslsmith_f_op_f32(-1940f - -245f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-545f, -1620f, -466f, -617f))))), i32(-1i) * -min(max(-15040i, u_input.a.x), abs(38374i)), vec2<i32>(abs(u_input.a.x), -2147483647i) >> (u_input.d.wy % vec2<u32>(32u)));
    let var_1 = Struct_2(vec4<u32>(~(~(~u_input.d.x)), 0u, abs(0u), _wgslsmith_dot_vec2_u32(select(u_input.d.yz, _wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.d.x), u_input.d.xy), select(vec2<bool>(true, false), vec2<bool>(false, false), false)), reverseBits(vec2<u32>(u_input.c, 275u)))), var_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1616f), var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1064f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.b.zxx, var_0.b.xzx)))) - var_0.b.xyw), vec3<i32>(u_input.b.x, _wgslsmith_sub_i32(~0i, min(u_input.a.x, _wgslsmith_dot_vec2_i32(var_0.d, u_input.a.yz))), u_input.e));
    var var_2 = all(!vec2<bool>(true, reverseBits(u_input.c) > var_1.a.x));
    var var_3 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1394f, var_1.b.b.x, var_0.b.x, _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.x, var_1.c.x, 594f, 1000f) + vec4<f32>(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(-var_0.b.x), var_0.b.x, _wgslsmith_f_op_f32(921f + var_0.b.x))) + vec4<f32>(var_1.c.x, _wgslsmith_f_op_f32(min(309f, -252f)), 2197f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) + var_1.c.x))), !vec4<bool>(true, true & (var_0.c <= var_0.a), false, any(vec2<bool>(true, true)))));
    var_3 = var_0.b;
    return Struct_1(12327i << (~_wgslsmith_dot_vec3_u32(reverseBits(var_1.a.yyw), _wgslsmith_mod_vec3_u32(var_1.a.yxz, vec3<u32>(var_1.a.x, 1u, var_1.a.x))) % 32u), vec4<f32>(_wgslsmith_div_f32(-2191f, _wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(select(var_1.b.b.x, var_0.b.x, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-246f)) * 659f), var_3.x, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(731f, -1000f)), var_3.x)))), var_0.c, countOneBits(vec2<i32>(abs(~25590i), 1i)));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2) -> f32 {
    var var_0 = Struct_2(arg_2.a, func_2(), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-arg_0.b.xzy))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_2.b.b.xwx, arg_0.b.wwz)))), firstTrailingBit(_wgslsmith_mod_vec3_i32(arg_2.d, vec3<i32>(-u_input.b.x, 95i, ~arg_2.b.c))));
    var_0 = Struct_2(vec4<u32>(~2054u, _wgslsmith_add_u32(28595u, 1u << (max(u_input.c, 1u) % 32u)), ~(~var_0.a.x), 4294967295u), var_0.b, arg_0.b.xwx, select(arg_2.d, arg_2.d, !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true))));
    let var_1 = -var_0.b.d.x;
    let var_2 = func_2();
    var_0 = arg_2;
    return arg_2.b.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(0i, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -783f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-596f, 1733f)), _wgslsmith_div_f32(903f, -198f)))), _wgslsmith_f_op_f32(1f + 1721f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(Struct_1(-6395i, vec4<f32>(1696f, -2588f, -1875f, 581f), 49961i, vec2<i32>(-1i, u_input.b.x)), 65863u, Struct_2(vec4<u32>(1u, u_input.d.x, u_input.d.x, 58293u), Struct_1(u_input.b.x, vec4<f32>(-1000f, -1000f, 149f, -494f), u_input.e, vec2<i32>(u_input.a.x, u_input.e)), vec3<f32>(-565f, -1208f, 1000f), u_input.a))))), 445f)), -214f), min(-15048i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), -(~u_input.a.x))), vec2<i32>(~abs(abs(-4167i)), reverseBits(firstLeadingBit(_wgslsmith_mod_i32(u_input.b.x, u_input.a.x)))));
    let var_1 = Struct_2(u_input.d, func_2(), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(952f - var_0.b.x) * _wgslsmith_f_op_f32(f32(-1f) * -753f)), _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(sign(1000f)))) - var_0.b.yzx), -vec3<i32>(firstTrailingBit(u_input.b.x), _wgslsmith_clamp_i32(~1i, u_input.a.x, var_0.c ^ 1569i), var_0.a & u_input.b.x));
    var_0 = var_1.b;
    var var_2 = func_2();
    var_0 = var_1.b;
    var var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_0.b.wyw)) * vec3<f32>(_wgslsmith_f_op_f32(var_1.b.b.x - _wgslsmith_f_op_f32(f32(-1f) * -729f)), -439f, _wgslsmith_f_op_f32(-var_2.b.x))), _wgslsmith_mod_vec2_u32(firstLeadingBit(~abs(vec2<u32>(48942u, u_input.c))), ~vec2<u32>(25203u, ~3486u)), var_1.c.x, reverseBits(~_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, var_2.c, var_2.d.x, var_2.a), vec4<i32>(var_2.d.x, var_0.c, -30170i, 48898i), vec4<i32>(var_3.x, var_2.c, -31240i, var_0.d.x)), _wgslsmith_add_vec4_i32(vec4<i32>(var_1.b.d.x, -1i, -2147483647i, 5098i), vec4<i32>(var_0.d.x, var_3.x, var_1.d.x, -7422i)), vec4<i32>(u_input.e, -9628i, var_3.x, var_0.c) | vec4<i32>(26468i, 11285i, 44072i, var_1.d.x))), _wgslsmith_dot_vec2_i32((vec2<i32>(-1i) * -vec2<i32>(-1085i, 22648i)) ^ (u_input.b.yx | vec2<i32>(u_input.e, -22081i)), var_1.d.xz));
}

