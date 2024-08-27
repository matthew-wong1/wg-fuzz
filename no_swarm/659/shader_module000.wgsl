struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: Struct_2) -> f32 {
    let var_0 = Struct_1(countOneBits(-12152i), _wgslsmith_f_op_f32(-arg_2.b), -(~max(~vec4<i32>(2147483647i, -41713i, -2147483647i, -13491i), min(vec4<i32>(-27597i, u_input.a.x, 17007i, u_input.a.x), vec4<i32>(-1i, 2147483647i, 15077i, 22308i)))), 4294967295u);
    let var_1 = arg_1;
    return _wgslsmith_f_op_f32(var_1.x - arg_2.b);
}

fn func_2() -> vec4<i32> {
    var var_0 = Struct_2(true, _wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1352f), _wgslsmith_f_op_f32(func_3(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(841f, -1263f) - vec2<f32>(-595f, -371f)), Struct_2(false, 206f, 427f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(772f))))) * 1336f));
    var_0 = Struct_2(!any(!select(vec2<bool>(false, false), vec2<bool>(var_0.a, true), true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b))));
    var_0 = Struct_2(var_0.a & var_0.a, 1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))))));
    var var_1 = Struct_3(Struct_2(all(vec3<bool>(true, var_0.a && var_0.a, true)), var_0.c, _wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)))), var_0.a);
    var_1 = Struct_3(var_1.a, var_1.a.a);
    return max(_wgslsmith_clamp_vec4_i32(((vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x) | vec4<i32>(-73978i, -29844i, u_input.a.x, -38885i)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(48086u, u_input.b.x, 1u, 14713u)) % vec4<u32>(32u))) & abs(countOneBits(vec4<i32>(31190i, 2147483647i, u_input.a.x, -2147483647i))), vec4<i32>(~(-2147483647i), -u_input.a.x, 20462i, select(~u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, 27371i, u_input.a.x), !var_0.a)), firstLeadingBit(vec4<i32>(1i, -u_input.a.x, select(u_input.a.x, u_input.a.x, var_0.a), _wgslsmith_div_i32(15168i, u_input.a.x)))), vec4<i32>(-(i32(-1i) * -2147483647i), _wgslsmith_clamp_i32(u_input.a.x, 1i, abs(-u_input.a.x)), 0i, u_input.a.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_1 {
    return Struct_1(arg_0.a, _wgslsmith_f_op_f32(ceil(-536f)), reverseBits(_wgslsmith_add_vec4_i32(-arg_0.c, _wgslsmith_add_vec4_i32(arg_0.c, vec4<i32>(u_input.a.x, arg_0.a, -41462i, -1i)))) & ~vec4<i32>(1i, u_input.a.x, -32017i, 1i), select(61238u, 68161u, true));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec2<f32>, arg_3: vec3<f32>) -> bool {
    let var_0 = ~_wgslsmith_mod_vec4_i32(vec4<i32>(-u_input.a.x, u_input.a.x, ~u_input.a.x ^ arg_0.a, -(u_input.a.x << (4294967295u % 32u))), vec4<i32>(arg_0.c.x >> (_wgslsmith_div_u32(0u, u_input.b.x) % 32u), 2147483647i & u_input.a.x, -(arg_0.a & u_input.a.x), _wgslsmith_dot_vec3_i32(min(u_input.a, u_input.a), u_input.a)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-933f, _wgslsmith_f_op_f32(110f - arg_0.b))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1444f))), arg_0.b, _wgslsmith_f_op_f32(f32(-1f) * -1799f));
    var var_2 = Struct_3(Struct_2(any(vec4<bool>(true, false, true, arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -670f)), var_1.x), !(!(-157f <= _wgslsmith_f_op_f32(select(1961f, arg_2.x, true)))));
    let var_3 = Struct_3(var_2.a, !var_2.b | var_2.a.a);
    let var_4 = Struct_3(var_2.a, 1000f != _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.x))), 933f));
    return _wgslsmith_mult_i32(-_wgslsmith_div_i32(countOneBits(var_0.x), abs(2545i)), -1i) != abs(24091i);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec2<i32>) -> f32 {
    var var_0 = false;
    var_0 = any(!(!arg_0.zz));
    var_0 = func_5(func_4(Struct_1(arg_2.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -700f))), -func_2(), _wgslsmith_mod_u32(~u_input.b.x, 41260u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.b, -230f, -766f, arg_1.a.b)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.c, 542f, arg_1.a.b, arg_1.a.b) * vec4<f32>(arg_1.a.c, 584f, arg_1.a.c, arg_1.a.c))))), false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.b, arg_1.a.c)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1.a.c, -173f), vec2<f32>(arg_1.a.b, arg_1.a.c))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.b, arg_1.a.b, _wgslsmith_f_op_f32(arg_1.a.b - arg_1.a.b)))));
    var_0 = true;
    let var_1 = !(!any(arg_0.xz));
    return 785f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(false, _wgslsmith_f_op_f32(func_1(!vec4<bool>(true, false, 7482u != u_input.b.x, false), Struct_3(Struct_2(true, _wgslsmith_f_op_f32(-364f + 284f), _wgslsmith_f_op_f32(-128f + -782f)), (u_input.b.x == u_input.b.x) & true), vec2<i32>(firstTrailingBit(-22210i), -7138i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(vec2<bool>(true, true), vec2<f32>(-826f, -631f), Struct_2(true, 1000f, 1333f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<bool>(true, false, false, true), Struct_3(Struct_2(true, 174f, -375f), true), u_input.a.xy)) * _wgslsmith_div_f32(305f, -1000f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(840f)), _wgslsmith_div_f32(-1438f, _wgslsmith_f_op_f32(trunc(-167f))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0.b)), _wgslsmith_f_op_f32(var_0.c * var_0.c)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)));
    let var_2 = func_4(Struct_1(u_input.a.x, _wgslsmith_f_op_f32(var_0.b + 159f), -(~(-vec4<i32>(-30457i, u_input.a.x, u_input.a.x, u_input.a.x))), u_input.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(func_4(Struct_1(u_input.a.x, var_0.b, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), u_input.b.x), vec4<f32>(-1044f, var_0.c, var_0.b, 1000f)).b, _wgslsmith_f_op_f32(func_3(vec2<bool>(false, var_0.a), vec2<f32>(-1000f, var_0.b), Struct_2(var_0.a, var_0.b, 676f))), _wgslsmith_f_op_f32(f32(-1f) * -756f), 120f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(494f, var_0.b, var_0.b, var_0.b)), vec4<f32>(-1528f, 1230f, 185f, 130f))), var_0.a))));
    var_1 = _wgslsmith_div_f32(-524f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c), 675f));
    var_1 = _wgslsmith_f_op_f32(floor(func_4(var_2, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1673f, var_2.b, var_2.b, 1450f))) + vec4<f32>(_wgslsmith_f_op_f32(var_0.b * var_2.b), _wgslsmith_f_op_f32(1059f * 276f), -1000f, _wgslsmith_f_op_f32(-385f - -1056f)))).b));
    var var_3 = select(!(!(!(!vec2<bool>(var_0.a, var_0.a)))), vec2<bool>(any(!select(vec4<bool>(false, true, true, var_0.a), vec4<bool>(var_0.a, false, var_0.a, var_0.a), var_0.a)), false), vec2<bool>(all(select(vec4<bool>(false, var_0.a, var_0.a, var_0.a), vec4<bool>(var_0.a, true, var_0.a, var_0.a), false)), var_0.a));
    var var_4 = var_2.a;
    var_4 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(max(u_input.b.x, 482u), _wgslsmith_clamp_u32(u_input.b.x, _wgslsmith_dot_vec2_u32(countOneBits(u_input.b.yy), min(u_input.b.xz, u_input.b.yy)), _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.b.x, var_2.d), 4294967295u, u_input.b.x)), ~(~4294967295u) >> (min(abs(0u), var_2.d) % 32u), _wgslsmith_mod_u32(var_2.d ^ ~u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(53199u, u_input.b.x, 1u, 32843u), vec4<u32>(u_input.b.x, 0u, 34688u, u_input.b.x)) >> (var_2.d % 32u))), ~_wgslsmith_sub_vec2_u32(~vec2<u32>(3958u, 1u), _wgslsmith_mult_vec2_u32(u_input.b.yy, u_input.b.xx)) >> (vec2<u32>(min(24018u, countOneBits(4294967295u)), _wgslsmith_div_u32(u_input.b.x, u_input.b.x) << (_wgslsmith_add_u32(1u, u_input.b.x) % 32u)) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b, var_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) - _wgslsmith_f_op_f32(-var_2.b)), 1f) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1168f), -1606f), 1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, 1748f)), var_2.b)));
}

