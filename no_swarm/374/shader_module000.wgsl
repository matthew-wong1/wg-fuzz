struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: f32) -> vec4<bool> {
    let var_0 = Struct_1(vec4<i32>(abs(u_input.d.x >> (_wgslsmith_mod_u32(u_input.a.x, arg_2.b) % 32u)), 2147483647i, u_input.c.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.d.x, -1i, -20480i), vec3<i32>(u_input.c.x, u_input.b, u_input.c.x))), false, -firstTrailingBit(-firstLeadingBit(1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(max(countOneBits(1i), -u_input.d.x), -13898i, u_input.b, ~(~1i)), abs(vec4<i32>(u_input.d.x | u_input.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, u_input.b), u_input.d.yzx), ~u_input.c.x, -28877i))), u_input.d.x);
    var var_1 = !select(!vec3<bool>(true, arg_2.a && false, all(vec3<bool>(var_0.b, false, arg_2.a))), !select(select(vec3<bool>(arg_2.a, var_0.b, arg_2.a), vec3<bool>(true, false, arg_2.a), arg_2.a), vec3<bool>(arg_2.a, var_0.b, true), true), true);
    let var_2 = 104f;
    var var_3 = vec3<i32>(u_input.b, _wgslsmith_mult_i32(_wgslsmith_add_i32(2147483647i, var_0.c), var_0.c) | u_input.d.x, var_0.d.x) >> ((min(~u_input.a.xyz & ~u_input.a.xyy, _wgslsmith_mult_vec3_u32(~u_input.a.ywx, u_input.a.yyw)) >> (countOneBits(firstTrailingBit(vec3<u32>(u_input.a.x, u_input.a.x, 67458u)) | u_input.a.wwy) % vec3<u32>(32u))) % vec3<u32>(32u));
    var_3 = ~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(abs(-1i), -1i, 47787i, 2147483647i), var_0.d), _wgslsmith_sub_i32(var_0.e << ((arg_2.b ^ 1u) % 32u), countOneBits(-1i)), abs(select(i32(-1i) * -2147483647i, -2147483647i, var_0.b || true)));
    return vec4<bool>(false, any(select(select(vec3<bool>(true, true, false), !vec3<bool>(false, var_1.x, true), select(vec3<bool>(arg_2.a, true, true), vec3<bool>(true, false, var_1.x), var_1.x)), vec3<bool>(true, true, false), select(select(vec3<bool>(arg_2.a, var_1.x, false), vec3<bool>(var_0.b, var_0.b, true), var_1.x), !vec3<bool>(arg_2.a, true, arg_2.a), select(vec3<bool>(var_0.b, false, arg_2.a), vec3<bool>(var_1.x, var_0.b, false), arg_2.a)))), select(var_1.x, ~abs(u_input.a.x) <= 3478u, any(select(var_1.zy, var_1.xx, false)) || any(var_1.xy)), false | var_0.b);
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_2 {
    var var_0 = Struct_1(firstLeadingBit(abs(vec4<i32>(u_input.d.x, u_input.d.x, 1i, u_input.c.x))), true, u_input.d.x, firstTrailingBit(select(u_input.d, ~u_input.c, select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), false), func_3(u_input.a.x, vec3<f32>(1309f, 938f, -1000f), Struct_2(false, u_input.a.x), -1398f)))), _wgslsmith_div_i32(u_input.d.x, u_input.d.x));
    var_0 = Struct_1(vec4<i32>(-1i, ~u_input.d.x, u_input.c.x, 35365i), true, min(var_0.c, -1i), -countOneBits(u_input.d >> ((u_input.a | vec4<u32>(u_input.a.x, u_input.a.x, 24214u, 47612u)) % vec4<u32>(32u))), 1i);
    var_0 = Struct_1(select(var_0.d, ~u_input.d, select(vec4<bool>(var_0.b && true, arg_1 < arg_1, !var_0.b, !var_0.b), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, var_0.b), vec4<bool>(true, true, var_0.b, true)), !(!vec4<bool>(var_0.b, true, false, var_0.b)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1, 1041f))))) < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(arg_1)))), _wgslsmith_dot_vec4_i32(abs(select(vec4<i32>(-2147483647i, u_input.b, u_input.b, 57126i), vec4<i32>(-8618i, var_0.d.x, var_0.a.x, 8351i), !vec4<bool>(true, var_0.b, true, true))), var_0.a), _wgslsmith_add_vec4_i32(vec4<i32>(~var_0.c, -24947i, u_input.c.x, var_0.e), var_0.d), abs(abs(u_input.d.x)));
    let var_1 = Struct_2(!(_wgslsmith_f_op_f32(ceil(751f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0)))), min(~(u_input.a.x >> (min(0u, 94169u) % 32u)), 1u));
    var var_2 = true;
    return Struct_2(false, _wgslsmith_dot_vec2_u32(max(vec2<u32>(max(4294967295u, var_1.b), max(1u, 1u)), _wgslsmith_div_vec2_u32(u_input.a.yz, ~u_input.a.zy)), ~(~(~vec2<u32>(var_1.b, u_input.a.x)))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2) -> vec4<i32> {
    let var_0 = select(!vec2<bool>(all(vec3<bool>(arg_2.a, arg_1.b, arg_1.b)) || (false | arg_2.a), false), select(select(vec2<bool>(any(vec4<bool>(arg_2.a, arg_2.a, false, false)), false), vec2<bool>(true, !arg_1.b), !(!vec2<bool>(arg_1.b, arg_2.a))), !vec2<bool>(arg_2.a, !arg_2.a), arg_2.a), vec2<bool>(true, true && (arg_1.b || all(vec3<bool>(arg_2.a, true, true)))));
    var var_1 = vec3<i32>(i32(-1i) * -44740i, -19594i, u_input.d.x);
    let var_2 = u_input.a.wxy;
    var_1 = vec3<i32>(var_1.x, arg_1.d.x, 0i);
    let var_3 = Struct_1(vec4<i32>(u_input.d.x, 7207i, -(~2147483647i), ~abs(~13305i)), any(!vec3<bool>(true, !arg_2.a, all(vec4<bool>(arg_1.b, false, false, arg_1.b)))), ~(-44134i), vec4<i32>(0i, _wgslsmith_dot_vec4_i32(abs(u_input.c | vec4<i32>(11462i, -42504i, -2147483647i, 76067i)), countOneBits(countOneBits(vec4<i32>(arg_1.e, 0i, arg_0, arg_0)))), u_input.d.x, reverseBits(u_input.d.x)), 73064i);
    return var_3.d;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_2(arg_0.a, 0u);
    var var_1 = Struct_1(~(func_4(-u_input.c.x, Struct_1(u_input.c, false, u_input.b, vec4<i32>(u_input.c.x, 21639i, u_input.b, u_input.d.x), 1i), func_2(arg_1.x, -190f)) >> (max(~vec4<u32>(u_input.a.x, 0u, 4294967295u, 35497u), vec4<u32>(arg_0.b, 13835u, var_0.b, 2593u)) % vec4<u32>(32u))), true, -33620i, select(max(vec4<i32>(u_input.d.x, u_input.c.x >> (u_input.a.x % 32u), -u_input.d.x, -u_input.c.x), u_input.c), min(-u_input.c, u_input.d) >> (_wgslsmith_clamp_vec4_u32(~u_input.a, u_input.a, ~vec4<u32>(u_input.a.x, u_input.a.x, 0u, 100641u)) % vec4<u32>(32u)), select(!select(vec4<bool>(false, true, arg_0.a, var_0.a), vec4<bool>(true, false, false, false), vec4<bool>(false, true, var_0.a, false)), func_3(_wgslsmith_add_u32(1u, u_input.a.x), _wgslsmith_f_op_vec3_f32(arg_1 * vec3<f32>(arg_1.x, arg_1.x, 457f)), func_2(arg_1.x, -1229f), arg_1.x), func_3(~60948u, vec3<f32>(arg_1.x, arg_1.x, -381f), func_2(1000f, arg_1.x), arg_1.x))), -u_input.b);
    var_1 = Struct_1(u_input.c, var_1.b, ~_wgslsmith_div_i32(-u_input.c.x ^ reverseBits(var_1.d.x), -16340i), var_1.d, _wgslsmith_clamp_i32(var_1.c, abs(_wgslsmith_mult_i32(firstTrailingBit(var_1.e), 1i)), u_input.d.x << (countOneBits(_wgslsmith_div_u32(var_0.b, var_0.b)) % 32u)));
    return Struct_1(vec4<i32>(u_input.c.x | -_wgslsmith_mod_i32(var_1.a.x, -48143i), var_1.a.x, max(i32(-1i) * -2147483647i, u_input.d.x), max(var_1.c, 8544i & _wgslsmith_div_i32(37951i, var_1.a.x))), false, 0i, -vec4<i32>(1i, 1i, u_input.c.x, 2147483647i), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_2(false, 1u), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2213f, 363f, 788f))))), vec3<f32>(1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1229f)), _wgslsmith_f_op_f32(939f + -660f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-625f, 1611f))))), vec3<bool>(any(vec2<bool>(true, false)), true, false))));
    var var_1 = true;
    let var_2 = vec3<u32>(0u, 1u, u_input.a.x);
    var_1 = !var_0.b;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1909f)) != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1186f) + _wgslsmith_f_op_f32(f32(-1f) * -640f)))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-(~(~2147483647i))));
}

