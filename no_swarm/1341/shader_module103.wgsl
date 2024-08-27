struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> vec4<bool> {
    return select(vec4<bool>(false, all(vec3<bool>(true, true, true)), true, any(vec2<bool>(true, u_input.b < u_input.b))), vec4<bool>(true | select(true, false, all(vec3<bool>(true, true, true))), any(vec2<bool>(true, true)), _wgslsmith_add_u32(max(u_input.a.x, 3673u), _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x)) > u_input.a.x, u_input.b != u_input.b), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), any(vec2<bool>(false, false)))));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(-39618i, Struct_1(u_input.a, func_3(), _wgslsmith_mod_vec2_u32(select(~vec2<u32>(74646u, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x), func_3().xy), ~(~u_input.a.yy))), min(vec4<i32>(_wgslsmith_sub_i32(max(2147483647i, 1i), _wgslsmith_sub_i32(u_input.b, u_input.b)), abs(2147483647i), -5407i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.b), -vec2<i32>(u_input.b, -2147483647i))), -_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.b, 50778i, 25418i), vec4<i32>(2147483647i, -2147483647i, u_input.b, u_input.b)), -vec4<i32>(46343i, u_input.b, u_input.b, 0i))));
    var_0 = Struct_2(min(_wgslsmith_mult_i32(firstTrailingBit(var_0.c.x), -39233i), _wgslsmith_dot_vec3_i32(~vec3<i32>(-13803i, -77349i, u_input.b), vec3<i32>(u_input.b, -1i, -2147483647i))) >> (u_input.a.x % 32u), var_0.b, select(var_0.c, vec4<i32>(_wgslsmith_add_i32(-28575i ^ u_input.b, i32(-1i) * -26602i), ~var_0.c.x, u_input.b, 2147483647i), !func_3()));
    return Struct_2(u_input.b, var_0.b, var_0.c);
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    let var_0 = ~(u_input.a.xw << (u_input.a.zy % vec2<u32>(32u)));
    var var_1 = arg_2.b.b.x;
    let var_2 = Struct_1(_wgslsmith_add_vec4_u32(~(~vec4<u32>(4294967295u, u_input.a.x, 4294967295u, u_input.a.x)), firstTrailingBit(vec4<u32>(1u, arg_2.b.a.x, arg_2.b.c.x, arg_2.b.a.x) << (firstTrailingBit(vec4<u32>(arg_2.b.a.x, 0u, 4294967295u, u_input.a.x)) % vec4<u32>(32u)))), func_3(), select(vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 32430u, 4294967295u, 9094u), vec4<u32>(40562u, arg_2.b.a.x, u_input.a.x, 4294967295u)), _wgslsmith_div_u32(firstLeadingBit(u_input.a.x), ~45713u)), _wgslsmith_add_vec2_u32(var_0, arg_2.b.c), arg_0));
    let var_3 = -u_input.b;
    var_1 = any(vec4<bool>(any(vec4<bool>(arg_1, arg_1, arg_1, arg_0)), true, (0u >= u_input.a.x) | true, var_2.b.x || func_3().x)) | (var_2.b.x && false);
    return Struct_1(max(firstTrailingBit(select(u_input.a, _wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_2.c.x, 20056u, u_input.a.x), vec4<u32>(u_input.a.x, 1u, 1u, 26611u)), vec4<bool>(false, arg_0, arg_2.b.b.x, arg_2.b.b.x))), ((var_2.a | vec4<u32>(arg_2.b.c.x, var_2.a.x, 4294967295u, 58751u)) >> (vec4<u32>(4294967295u, 0u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) << (var_2.a % vec4<u32>(32u))), select(!vec4<bool>(var_3 == u_input.b, arg_1 & true, arg_2.b.b.x, all(vec3<bool>(var_2.b.x, arg_0, arg_2.b.b.x))), vec4<bool>(arg_0, !(!arg_2.b.b.x), true, false), arg_2.b.b.x), (vec2<u32>(~4294967295u, var_0.x) << (var_2.a.ww % vec2<u32>(32u))) & select(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(1947u, 28207u) | vec2<u32>(var_2.a.x, arg_2.b.a.x)), ~vec2<u32>(u_input.a.x, u_input.a.x), !select(var_2.b.zw, vec2<bool>(true, arg_1), vec2<bool>(var_2.b.x, false))));
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_2(abs(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(0i, 0i, 2147483647i, 38378i) | vec4<i32>(-46562i, -2147483647i, u_input.b, -31333i), vec4<i32>(0i, u_input.b, -2147483647i, 0i) & vec4<i32>(0i, u_input.b, u_input.b, u_input.b)), _wgslsmith_add_vec4_i32(-vec4<i32>(-26292i, -2147483647i, u_input.b, 48018i), vec4<i32>(u_input.b, u_input.b, -52625i, -34544i)))), func_4(!select(true, false, false), any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true))) || true, func_2()), vec4<i32>(u_input.b, u_input.b, _wgslsmith_div_i32(-1i << (u_input.a.x % 32u), _wgslsmith_clamp_i32(-32535i, u_input.b, -1i)) << (_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), u_input.a.x) % 32u), 0i));
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-682f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(428f)), 239f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1614f))) * -1613f) * _wgslsmith_f_op_f32(-384f + _wgslsmith_f_op_f32(step(-1850f, _wgslsmith_f_op_f32(-1188f - 835f)))))));
    let var_3 = Struct_2(~(-10847i), func_2().b, ~countOneBits(var_1.c));
    var var_4 = Struct_1(vec4<u32>(arg_0.x, 14770u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.x, 51239u, var_0.b.c.x), var_3.b.a.zww) << (vec3<u32>(14046u, arg_0.x, 33320u) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(countOneBits(var_0.b.a.xxy), vec3<u32>(42460u, 4793u, u_input.a.x))), ~4294967295u), !vec4<bool>(true, func_4(any(vec4<bool>(false, true, var_1.b.b.x, true)), true, var_0).b.x, all(!var_0.b.b.xzw), func_4(true, false, func_2()).b.x), var_3.b.c);
    return func_4(!all(var_3.b.b.zx), ((_wgslsmith_div_f32(752f, 144f) != _wgslsmith_f_op_f32(floor(var_2))) | !(!var_3.b.b.x)) | var_4.b.x, func_2());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~u_input.a.xww << ((~(~vec3<u32>(9893u, u_input.a.x, 38556u)) & _wgslsmith_mult_vec3_u32(u_input.a.yyw | u_input.a.zww, vec3<u32>(u_input.a.x, u_input.a.x, 25463u))) % vec3<u32>(32u)));
    var var_1 = vec2<u32>(max(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(var_0.a.x, u_input.a.x))), var_0.c.x), var_0.a.x), abs(0u));
    let var_2 = max(vec2<i32>(u_input.b | u_input.b, u_input.b), firstLeadingBit(_wgslsmith_mult_vec2_i32(select(vec2<i32>(61508i, u_input.b), _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b)), vec2<bool>(var_0.b.x, false)), -(~vec2<i32>(10809i, u_input.b)))));
    var var_3 = Struct_2(var_2.x, var_0, max(firstLeadingBit(-vec4<i32>(-42400i, var_2.x, -2147483647i, 2147483647i)), ~(-select(vec4<i32>(var_2.x, 239i, u_input.b, u_input.b), vec4<i32>(var_2.x, 37988i, 0i, -9506i), false))));
    let x = u_input.a;
    s_output = StorageBuffer(-587f, -300f);
}

