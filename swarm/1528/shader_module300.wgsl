struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_2(Struct_1(arg_3.a, ~(~vec3<u32>(4294967295u, u_input.a.x, 24919u))), ~u_input.a.x, Struct_1(_wgslsmith_clamp_vec3_i32(arg_3.a, arg_3.a, vec3<i32>(arg_3.a.x, 74040i, arg_3.a.x)) & arg_3.a, ~(~abs(vec3<u32>(23664u, 4294967295u, u_input.a.x)))));
    let var_1 = vec4<u32>(reverseBits(0u), 1u, ~(~(_wgslsmith_mod_u32(var_0.c.b.x, 4294967295u) ^ 7310u)), var_0.c.b.x);
    let var_2 = min(~_wgslsmith_div_u32(var_1.x, var_1.x) & _wgslsmith_mult_u32(0u, 1u), _wgslsmith_mod_u32(arg_3.b.x, arg_3.b.x) >> (reverseBits(4294967295u) % 32u)) == u_input.a.x;
    let var_3 = Struct_3(Struct_1(select(countOneBits(arg_3.a) << (_wgslsmith_div_vec3_u32(arg_3.b, var_0.a.b) % vec3<u32>(32u)), (vec3<i32>(arg_3.a.x, -28500i, -1i) | vec3<i32>(var_0.c.a.x, 0i, -43711i)) >> (arg_3.b % vec3<u32>(32u)), !select(vec3<bool>(false, var_2, false), vec3<bool>(true, var_2, arg_2), true)), firstTrailingBit(max(var_0.a.b, vec3<u32>(u_input.a.x, 0u, var_1.x)) | _wgslsmith_add_vec3_u32(var_1.wyx, vec3<u32>(var_0.b, 0u, arg_3.b.x)))), !any(!vec3<bool>(true, arg_2, false)), firstTrailingBit(1i), -51496i);
    var_0 = Struct_2(Struct_1(arg_3.a, _wgslsmith_div_vec3_u32(arg_3.b, _wgslsmith_mod_vec3_u32(select(vec3<u32>(arg_3.b.x, 1u, 1u), var_0.a.b, vec3<bool>(false, false, var_3.b)), ~vec3<u32>(4294967295u, arg_3.b.x, 0u)))), 131896u, Struct_1(vec3<i32>(_wgslsmith_add_i32(var_0.c.a.x, 2147483647i), 80207i, ~(-1i >> (u_input.a.x % 32u))), select(_wgslsmith_mod_vec3_u32(abs(var_0.c.b), vec3<u32>(1u, u_input.a.x, var_0.a.b.x)), _wgslsmith_sub_vec3_u32(abs(u_input.a.zxw), vec3<u32>(4294967295u, var_1.x, var_3.a.b.x)), var_3.b)));
    return countOneBits(_wgslsmith_sub_i32(-458i, ~var_3.d));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: vec4<f32>) -> u32 {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.xyy) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1425f, arg_2.x, -526f) * vec3<f32>(arg_2.x, -362f, -709f))))));
    var var_2 = !select(vec4<bool>(any(vec2<bool>(true, true)), 1u <= u_input.a.x, any(vec4<bool>(false, false, false, true)), false), select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true), 520f > var_1.x), vec4<bool>(var_1.x > arg_2.x, false, any(vec4<bool>(true, false, false, false)), true), all(vec2<bool>(true, true))), !vec4<bool>(all(vec4<bool>(true, true, true, false)), true, true, true));
    let var_3 = !any(select(!(!vec3<bool>(var_2.x, true, var_2.x)), vec3<bool>(true, true, any(vec2<bool>(var_2.x, var_2.x))), select(var_2.ywz, select(var_2.ywz, vec3<bool>(true, false, var_2.x), var_2.xwx), var_2.x != var_2.x)));
    var_0 = any(select(!vec2<bool>(var_2.x, var_3), var_2.zy, true)) | !(select(true, !var_3, var_3) & var_2.x);
    return abs(abs(abs(arg_0)));
}

fn func_2(arg_0: Struct_4) -> Struct_1 {
    var var_0 = false;
    var_0 = (_wgslsmith_mod_u32(abs(4294967295u), _wgslsmith_add_u32(~4294967295u, arg_0.a.b.x)) <= u_input.a.x) || !all(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)));
    var var_1 = (u_input.a & (vec4<u32>(arg_0.a.b.x, 1u, 1u, abs(u_input.a.x)) | vec4<u32>(88394u, 68029u, _wgslsmith_mod_u32(arg_0.a.b.x, u_input.a.x), arg_0.a.b.x))) >> (u_input.a % vec4<u32>(32u));
    var_1 = select(u_input.a, vec4<u32>(func_4(0u, func_3(true, -335f, true, arg_0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1243f, 1038f, 779f, -1634f))), ~1u, 25825u, max(func_4(65088u, -1i, vec4<f32>(1896f, 212f, -616f, -259f)), select(u_input.a.x, 4294967295u, true))), vec4<bool>(false, ~u_input.a.x > u_input.a.x, all(vec2<bool>(false, false)), false)) ^ _wgslsmith_mod_vec4_u32(u_input.a, u_input.a);
    var_0 = ~arg_0.a.a.x < (-1i | arg_0.a.a.x);
    return Struct_1(arg_0.a.a, ~max(~vec3<u32>(1u, u_input.a.x, arg_0.a.b.x) & _wgslsmith_mod_vec3_u32(u_input.a.xzx, vec3<u32>(arg_0.a.b.x, var_1.x, u_input.a.x)), ~_wgslsmith_sub_vec3_u32(u_input.a.zxx, vec3<u32>(48258u, 1u, arg_0.a.b.x))));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<u32>) -> vec4<bool> {
    let var_0 = vec3<u32>(~17085u, countOneBits(~abs(30549u)), max(1u, (u_input.a.x & arg_0.a.b.x) << (u_input.a.x % 32u)) << (~abs(abs(u_input.a.x)) % 32u));
    var var_1 = false;
    let var_2 = Struct_4(func_2(Struct_4(arg_0.a)));
    var var_3 = vec4<i32>(var_2.a.a.x, -arg_0.c ^ var_2.a.a.x, arg_0.a.a.x, -arg_0.c << (_wgslsmith_div_u32(arg_1.x, 41859u) % 32u));
    var_3 = firstTrailingBit(~(-(vec4<i32>(arg_0.a.a.x, 0i, var_2.a.a.x, -5034i) >> (u_input.a % vec4<u32>(32u)))) >> ((vec4<u32>(firstTrailingBit(52131u), var_2.a.b.x, select(4294967295u, 13663u, true), u_input.a.x) & ~vec4<u32>(var_2.a.b.x, arg_1.x, 0u, u_input.a.x)) % vec4<u32>(32u)));
    return !select(vec4<bool>(all(select(vec4<bool>(true, false, arg_0.b, arg_0.b), vec4<bool>(true, false, arg_0.b, arg_0.b), false)), !(!arg_0.b), all(vec4<bool>(true, arg_0.b, false, true)) && any(vec3<bool>(false, true, true)), any(!vec3<bool>(true, false, arg_0.b))), !vec4<bool>(arg_0.b, true, any(vec3<bool>(true, false, true)), true), !any(vec2<bool>(true, true)));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> Struct_4 {
    var var_0 = !(!(!vec4<bool>(true, true, true, all(vec3<bool>(true, false, false)))));
    var_0 = vec4<bool>(true, all(!vec4<bool>(var_0.x, all(vec3<bool>(var_0.x, var_0.x, true)), true, !var_0.x)), !var_0.x, true);
    var_0 = !func_5(Struct_3(func_2(Struct_4(arg_1)), !(!var_0.x), 12069i, arg_1.a.x), countOneBits(select(vec4<u32>(1u, 41049u, u_input.a.x, 1u), ~vec4<u32>(4294967295u, 31616u, 4294967295u, u_input.a.x), !var_0.x)));
    var_0 = !(!select(vec4<bool>(any(vec2<bool>(var_0.x, true)), !var_0.x, true, true), !vec4<bool>(true, true, var_0.x, true), vec4<bool>(true, true, true, true)));
    var_0 = select(!func_5(Struct_3(arg_1, true, arg_1.a.x ^ arg_1.a.x, ~arg_1.a.x), u_input.a), vec4<bool>(var_0.x, !var_0.x, var_0.x, var_0.x), true);
    return Struct_4(func_2(Struct_4(arg_1)));
}

fn func_6(arg_0: f32, arg_1: i32, arg_2: f32, arg_3: Struct_4) -> Struct_3 {
    let var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(max(max(arg_1, arg_3.a.a.x), arg_1), arg_3.a.a.x, -1i, abs(arg_1)), _wgslsmith_mod_vec4_i32(select(-vec4<i32>(1i, arg_3.a.a.x, arg_3.a.a.x, arg_1), max(~vec4<i32>(arg_1, -2147483647i, -2147483647i, -23461i), vec4<i32>(arg_3.a.a.x, -37611i, 0i, arg_1)), false), ~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-80348i, 2147483647i, 2147483647i, 24256i), vec4<i32>(-2147483647i, 0i, arg_1, arg_1), vec4<i32>(0i, arg_1, 0i, -21143i)))), _wgslsmith_add_vec4_i32(-(vec4<i32>(1i, arg_3.a.a.x, 2621i, 2147483647i) >> (vec4<u32>(1u, 34937u, arg_3.a.b.x, 0u) % vec4<u32>(32u))), ~(-vec4<i32>(arg_1, arg_3.a.a.x, -2147483647i, 1i))) ^ vec4<i32>(1i, max(1i, 7324i ^ arg_1), ~(5553i | arg_3.a.a.x), -1i));
    var var_1 = arg_2;
    var_1 = 1217f;
    let var_2 = Struct_3(Struct_1(vec3<i32>(func_1(0i, arg_3.a).a.a.x, arg_3.a.a.x, countOneBits(~var_0.x)), vec3<u32>(u_input.a.x, abs(firstLeadingBit(u_input.a.x)), u_input.a.x)), true, arg_1, countOneBits(-1605i) >> (arg_3.a.b.x % 32u));
    var var_3 = reverseBits(_wgslsmith_mult_u32(max(_wgslsmith_sub_u32(0u, arg_3.a.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.a.b.x, 9249u, var_2.a.b.x), vec3<u32>(u_input.a.x, 8343u, u_input.a.x))), ~3055u)) >> (func_4(arg_3.a.b.x, _wgslsmith_clamp_i32(~var_2.a.a.x, abs(30687i), var_2.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2, 241f, arg_2, arg_0), vec4<f32>(587f, arg_2, 489f, arg_2))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -1816f, 203f, -988f)))) % 32u);
    return Struct_3(func_2(func_1(-17373i, func_2(Struct_4(Struct_1(vec3<i32>(arg_3.a.a.x, 15236i, 1i), u_input.a.zxx))))), var_2.b, firstLeadingBit(reverseBits(select(-8110i, var_0.x, var_2.b))) ^ arg_1, arg_3.a.a.x);
}

fn func_7(arg_0: u32, arg_1: Struct_3) -> Struct_4 {
    let var_0 = Struct_3(func_1(_wgslsmith_mod_i32(arg_1.a.a.x, 2147483647i), func_1(arg_1.d, Struct_1(arg_1.a.a | vec3<i32>(arg_1.d, arg_1.d, 2147483647i), u_input.a.wzz)).a).a, all(!func_5(Struct_3(arg_1.a, arg_1.b, arg_1.a.a.x, -2147483647i), vec4<u32>(arg_0, 1u, 1u, arg_0)).zz), 0i, arg_1.c);
    var var_1 = var_0;
    var_1 = Struct_3(Struct_1(vec3<i32>(19334i, min(var_1.a.a.x, _wgslsmith_add_i32(40575i, 0i)), var_0.d), arg_1.a.b), !any(!vec3<bool>(false, true, var_1.b)), var_1.a.a.x, firstTrailingBit(_wgslsmith_dot_vec2_i32(func_6(_wgslsmith_f_op_f32(select(2014f, 1042f, var_0.b)), -1i, -369f, func_1(0i, var_0.a)).a.a.zy, vec2<i32>(min(var_1.c, 0i), 59951i))));
    var_1 = func_6(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-314f * _wgslsmith_f_op_f32(trunc(-2049f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -294f) + -2207f))))), -arg_1.a.a.x | (i32(-1i) * -29651i), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1000f, -1319f))), -173f)))), Struct_4(func_6(_wgslsmith_f_op_f32(abs(-133f)), var_1.a.a.x, -893f, Struct_4(Struct_1(var_0.a.a, u_input.a.yzz))).a));
    var_1 = Struct_3(Struct_1(func_1(countOneBits(i32(-1i) * -21454i), var_0.a).a.a, u_input.a.wzw), var_0.b, firstTrailingBit(6982i), arg_1.d);
    return func_1(~arg_1.d, var_1.a);
}

fn func_8(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_4) -> Struct_2 {
    var var_0 = Struct_2(arg_1, reverseBits(select(~_wgslsmith_clamp_u32(34470u, arg_2.a.b.x, u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(85068u, 4294967295u, arg_0.x), vec3<u32>(u_input.a.x, 0u, 4294967295u)) ^ 0u, true)), arg_2.a);
    let var_1 = _wgslsmith_mod_vec4_i32((vec4<i32>(-1i) * -reverseBits(vec4<i32>(arg_2.a.a.x, -1i, -10581i, -7120i))) ^ (_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_2.a.a.x, arg_2.a.a.x, arg_1.a.x, 8144i), vec4<i32>(arg_2.a.a.x, arg_1.a.x, arg_2.a.a.x, 0i)), select(vec4<i32>(arg_2.a.a.x, arg_1.a.x, arg_2.a.a.x, -2147483647i), vec4<i32>(arg_2.a.a.x, 52241i, arg_1.a.x, var_0.c.a.x), vec4<bool>(true, true, false, false))) >> (~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 0u, arg_1.b.x, arg_0.x), vec4<u32>(arg_2.a.b.x, arg_2.a.b.x, 135639u, 62336u)) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.a.x, -43422i, var_0.a.a.x, 0i), vec4<i32>(var_0.c.a.x, arg_2.a.a.x, -1i, var_0.c.a.x)) ^ max(vec4<i32>(var_0.a.a.x, 1209i, -1i, arg_1.a.x), vec4<i32>(0i, -2147483647i, var_0.c.a.x, -1i)), -_wgslsmith_div_vec4_i32(vec4<i32>(-53734i, arg_2.a.a.x, arg_2.a.a.x, var_0.c.a.x), vec4<i32>(arg_2.a.a.x, var_0.a.a.x, var_0.c.a.x, arg_1.a.x))));
    var_0 = Struct_2(func_1(_wgslsmith_add_i32(func_7(_wgslsmith_mod_u32(4294967295u, arg_1.b.x), Struct_3(var_0.a, true, var_1.x, var_0.c.a.x)).a.a.x, arg_2.a.a.x), Struct_1(firstTrailingBit(reverseBits(vec3<i32>(arg_2.a.a.x, var_1.x, var_1.x))), select(func_2(arg_2).b, vec3<u32>(arg_2.a.b.x, 21306u, arg_2.a.b.x), true))).a, arg_2.a.b.x, Struct_1(vec3<i32>(func_1(func_6(-1633f, -1i, 1867f, arg_2).a.a.x, func_2(Struct_4(Struct_1(vec3<i32>(var_1.x, var_1.x, var_1.x), vec3<u32>(0u, u_input.a.x, 109556u))))).a.a.x, 16157i, abs(-2147483647i) << (arg_1.b.x % 32u)), arg_0.xzx));
    var_0 = Struct_2(var_0.c, ~countOneBits(_wgslsmith_sub_u32(u_input.a.x, var_0.a.b.x)), func_1(-_wgslsmith_dot_vec3_i32(var_0.a.a, func_7(4139u, Struct_3(arg_2.a, false, var_0.c.a.x, -1i)).a.a), var_0.a).a);
    var_0 = Struct_2(var_0.c, abs(countOneBits(min(arg_0.x ^ 1u, 76146u))), arg_1);
    return Struct_2(func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(153f * 808f), -455f, true)) + 1f), 1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1243f, -153f)) - _wgslsmith_f_op_f32(trunc(-1790f))), func_1(~(var_0.c.a.x >> (1u % 32u)), func_6(_wgslsmith_f_op_f32(sign(-964f)), ~var_1.x, -109f, func_1(var_1.x, Struct_1(vec3<i32>(-2705i, var_0.a.a.x, -19641i), vec3<u32>(arg_0.x, var_0.c.b.x, 32893u)))).a)).a, 0u, var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_8((vec4<u32>(_wgslsmith_sub_u32(0u, u_input.a.x), ~0u, u_input.a.x << (u_input.a.x % 32u), ~u_input.a.x) << ((_wgslsmith_div_vec4_u32(vec4<u32>(510u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u)) << (_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a.x, 1u, u_input.a.x), vec4<u32>(55619u, 4294967295u, u_input.a.x, 981u)) % vec4<u32>(32u))) % vec4<u32>(32u))) >> (vec4<u32>(u_input.a.x, 1u, _wgslsmith_dot_vec3_u32(u_input.a.ywx, countOneBits(vec3<u32>(u_input.a.x, 0u, u_input.a.x))), u_input.a.x) % vec4<u32>(32u)), Struct_1(-(vec3<i32>(1i, 1i, 1i) << (abs(vec3<u32>(u_input.a.x, 88149u, u_input.a.x)) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.a.x, u_input.a.x), u_input.a.zwz) | u_input.a.zyx), func_7(4294967295u, func_6(-120f, 1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(425f - 849f) - _wgslsmith_f_op_f32(1764f + 440f)), func_1(i32(-1i) * -2147483647i, Struct_1(vec3<i32>(16818i, 2147483647i, -9584i), u_input.a.zwz)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-578f, -1522f)))))));
    var var_2 = _wgslsmith_add_vec2_i32(var_0.a.a.zz, -vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.a.x, 39615i, -41205i, var_0.c.a.x), vec4<i32>(-54457i, var_0.c.a.x, var_0.a.a.x, var_0.c.a.x)), -33582i), -(~2147483647i)));
    var_2 = ~func_7(~(u_input.a.x ^ 4294967295u), func_6(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_1.x, var_1.x)))), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_0.a.a.x, var_2.x, var_0.a.a.x), -vec4<i32>(-147i, var_0.c.a.x, var_2.x, -1i)), _wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(abs(var_1.x)))), Struct_4(var_0.a))).a.a.xy;
    let var_3 = func_7(_wgslsmith_dot_vec2_u32(vec2<u32>(~0u, firstLeadingBit(_wgslsmith_add_u32(var_0.c.b.x, 186u))), ~(~(~vec2<u32>(var_0.b, 0u)))), Struct_3(Struct_1(~(~var_0.a.a), reverseBits(vec3<u32>(40795u, var_0.c.b.x, u_input.a.x))), ~0u == ~(~u_input.a.x), var_2.x, 11679i));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(-2147483647i, Struct_1(~(-vec3<i32>(2147483647i, 15518i, var_3.a.a.x)), var_0.c.b)).a.a.xx, var_3.a.b.x, var_2.x);
}

