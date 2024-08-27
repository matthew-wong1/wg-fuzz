struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec2<i32> {
    let var_0 = u_input.c;
    var var_1 = all(select(vec4<bool>(!all(vec4<bool>(false, false, false, true)), true, false, false), select(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(u_input.e <= u_input.e, true, true, all(vec2<bool>(true, true))), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)));
    var var_2 = (_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -19675i, u_input.e, -12544i), vec4<i32>(u_input.a.x, u_input.e, u_input.a.x, u_input.e))), ~countOneBits(vec3<i32>(u_input.e, -20406i, 7023i))) | (vec3<i32>(-2147483647i << (u_input.c % 32u), -u_input.a.x, u_input.e | 17409i) & -vec3<i32>(-1i, u_input.e, u_input.a.x))) << (((_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(u_input.b, 0u, 94247u)), abs(vec3<u32>(17960u, u_input.c, var_0))) >> (vec3<u32>(var_0, 0u, min(u_input.d.x, u_input.b)) % vec3<u32>(32u))) << ((firstTrailingBit(~vec3<u32>(u_input.c, 127672u, u_input.c)) << (~_wgslsmith_mult_vec3_u32(vec3<u32>(var_0, 13335u, 43207u), vec3<u32>(29434u, 4294967295u, 4294967295u)) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_3 = Struct_1(_wgslsmith_div_vec2_i32(~_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(var_2.xy, var_2.yy), abs(u_input.a)), reverseBits(min(u_input.a, var_2.xy) >> (firstLeadingBit(u_input.d) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-123f * _wgslsmith_f_op_f32(max(-874f, 190f))), 262f)))), max(firstLeadingBit(-4424i), var_2.x));
    let var_4 = countOneBits(~(~select(vec3<u32>(var_0, 5703u, 32796u), vec3<u32>(1u, 0u, 10218u), vec3<bool>(true, true, false))) | ~countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(var_0, var_0, var_0), vec3<u32>(75359u, var_0, 1u))));
    return vec2<i32>((i32(-1i) * -(i32(-1i) * -7570i)) & select(2819i, var_3.c, u_input.c >= _wgslsmith_mod_u32(var_0, 0u)), ~firstLeadingBit(-_wgslsmith_dot_vec2_i32(u_input.a, var_2.xz)));
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_1(-(func_3() & _wgslsmith_clamp_vec2_i32(u_input.a, u_input.a | vec2<i32>(u_input.a.x, u_input.e), u_input.a)), arg_0.x, _wgslsmith_dot_vec4_i32(~((vec4<i32>(-1i, -2147483647i, 8667i, u_input.a.x) | vec4<i32>(7887i, 2147483647i, u_input.e, 718i)) & select(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.e), vec4<i32>(1i, u_input.a.x, 30746i, u_input.a.x), vec4<bool>(true, true, true, true))), reverseBits(countOneBits(vec4<i32>(u_input.e, 0i, u_input.a.x, u_input.a.x)) & ~vec4<i32>(u_input.e, 399i, 24382i, -2147483647i))));
    var var_1 = var_0.b;
    let var_2 = ~u_input.d;
    var var_3 = _wgslsmith_f_op_vec3_f32(floor(arg_0.xwz));
    var var_4 = -var_0.a.x;
    return Struct_1(select(var_0.a, ~vec2<i32>(var_0.a.x, 1i), all(vec4<bool>(false, false, false, true)) && !select(false, true, true)), _wgslsmith_f_op_f32(f32(-1f) * -1516f), select(u_input.a.x, firstTrailingBit(var_0.c), !all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false)))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = any(!vec4<bool>(true, false, _wgslsmith_add_i32(arg_3.a.x, 60976i) != 23927i, true));
    let var_1 = 1f;
    var var_2 = ~vec2<u32>(u_input.c, u_input.c);
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1546f, 206f) * vec2<f32>(arg_3.b, -552f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(226f, -1000f))))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1239f, -416f))));
    return !(!all(vec4<bool>(all(vec2<bool>(var_0, true)), any(vec2<bool>(true, true)), var_0, !var_0)));
}

fn func_5(arg_0: bool, arg_1: vec4<f32>, arg_2: f32) -> Struct_1 {
    return func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.x, -1000f, arg_1.x, arg_2))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1338f, -776f, arg_1.x, -992f), arg_1, arg_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_2, arg_2, 186f)))), _wgslsmith_f_op_vec4_f32(min(arg_1, _wgslsmith_div_vec4_f32(vec4<f32>(arg_2, arg_1.x, 813f, arg_1.x), vec4<f32>(arg_1.x, -667f, arg_1.x, 645f))))))));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: vec3<u32>) -> Struct_1 {
    return func_5(!func_4(_wgslsmith_add_i32(1i, u_input.a.x >> (u_input.c % 32u)), Struct_1(~vec2<i32>(u_input.e, 2916i), arg_0.x, -1i), func_2(arg_0), Struct_1(u_input.a, _wgslsmith_f_op_f32(step(1000f, arg_0.x)), u_input.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(arg_0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -207f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))) + _wgslsmith_f_op_f32(-arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (i32(-1i) * -2147483647i) << (~_wgslsmith_mod_u32(4294967295u, countOneBits(u_input.c | u_input.c)) % 32u);
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1084f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1235f)) - -559f))));
    var var_3 = var_0;
    var var_4 = ~vec2<u32>(~0u, _wgslsmith_sub_u32(u_input.d.x, reverseBits(~2181u)));
    var var_5 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, 305f, var_2, var_2) - vec4<f32>(var_2, var_2, var_2, 263f))))), _wgslsmith_f_op_f32(exp2(var_2)), vec3<u32>(_wgslsmith_sub_u32(1u, u_input.b), 4294967295u, 0u));
    var var_6 = abs(_wgslsmith_add_vec4_i32(vec4<i32>(-var_5.a.x, firstLeadingBit(-9117i), -12595i, 2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 2147483647i, 1911i, 2346i), _wgslsmith_add_vec4_i32(vec4<i32>(var_5.a.x, var_0, -2147483647i, -29287i), vec4<i32>(var_0, u_input.e, -31949i, var_0))))) ^ vec4<i32>(-56593i, ~var_0, 19834i, var_0);
    let x = u_input.a;
    s_output = StorageBuffer(-1320f);
}

