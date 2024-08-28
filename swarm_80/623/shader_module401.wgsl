struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: vec4<u32>) -> vec2<i32> {
    return select(~vec2<i32>(firstTrailingBit(u_input.b) >> (~arg_3.x % 32u), _wgslsmith_mod_i32(arg_1.e, -1i)), vec2<i32>(~_wgslsmith_div_i32(1i, 1i), _wgslsmith_mod_i32(u_input.e.x, arg_1.c.x)) ^ reverseBits(vec2<i32>(~u_input.b, _wgslsmith_clamp_i32(u_input.b, arg_1.c.x, -38586i))), !(!vec2<bool>(true, any(vec3<bool>(arg_0, true, false)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = arg_0;
    var var_1 = Struct_1(!arg_3.a == all(select(!vec4<bool>(false, false, arg_3.a, false), vec4<bool>(true, arg_0.a, true, false), !vec4<bool>(true, arg_3.a, var_0.a, true))), var_0.b, ~_wgslsmith_clamp_vec2_i32(-firstLeadingBit(u_input.e.zx), var_0.c, arg_2.d), ~abs(_wgslsmith_add_vec2_i32(arg_2.d, vec2<i32>(u_input.b, -1i)) >> (vec2<u32>(u_input.c.x, u_input.d) % vec2<u32>(32u))), -(~_wgslsmith_div_i32(-1i, u_input.e.x)));
    var var_2 = arg_3.a;
    var var_3 = vec3<u32>(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.c.zxz, u_input.c.wwx), u_input.c.wzw), ~abs(~(~u_input.a)), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 4294967295u), max(abs(u_input.c.xz), u_input.c.wx >> (vec2<u32>(0u, u_input.c.x) % vec2<u32>(32u)))), ~(~(~2075u))));
    var var_4 = vec4<u32>(_wgslsmith_div_u32(~(~(u_input.c.x & u_input.c.x)), firstTrailingBit(148982u)), ~u_input.d, abs(30387u) >> ((countOneBits(47410u) >> (firstTrailingBit(u_input.a) % 32u)) % 32u), ~u_input.a);
    return arg_0.a;
}

fn func_2() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -294f));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -666f) * _wgslsmith_f_op_f32(abs(1487f))))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(909f * -389f))))))));
    let var_1 = vec3<u32>(4294967295u, u_input.d, u_input.c.x << (~(~42961u) % 32u));
    let var_2 = (!(!func_3(Struct_1(true, -1000f, vec2<i32>(1i, u_input.b), u_input.e.zw, -1i), vec3<f32>(-294f, -1000f, -2502f), Struct_1(false, -812f, vec2<i32>(34029i, u_input.e.x), u_input.e.yw, -19708i), Struct_1(false, -1154f, vec2<i32>(-51128i, -23412i), u_input.e.yw, u_input.e.x))) | false) & (_wgslsmith_f_op_f32(trunc(-286f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1193f, 727f) - -303f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1548f - -470f))));
    var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -199f), _wgslsmith_f_op_f32(-663f - _wgslsmith_f_op_f32(-551f + -1281f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-209f, -160f))))));
    return firstLeadingBit(~((_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, 0u, u_input.d), u_input.c.yxx) >> (u_input.c.zyz % vec3<u32>(32u))) >> (vec3<u32>(1u, ~22088u, 1u) % vec3<u32>(32u))));
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: bool) -> i32 {
    let var_0 = vec2<i32>(u_input.b, reverseBits(_wgslsmith_mod_i32(~(-2147483647i), (17476i & u_input.b) & _wgslsmith_dot_vec3_i32(u_input.e.xww, u_input.e.xzx))));
    let var_1 = select(select(vec2<bool>(arg_2, all(vec4<bool>(arg_2, arg_2, false, arg_2))), !select(vec2<bool>(arg_2, arg_2), select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, true), arg_2), vec2<bool>(arg_2, true)), !vec2<bool>(any(vec3<bool>(arg_2, arg_2, true)), arg_2)), select(vec2<bool>(func_3(Struct_1(true, 350f, vec2<i32>(-5653i, 0i), vec2<i32>(var_0.x, var_0.x), var_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_1)), Struct_1(arg_2, 529f, var_0, var_0, 5842i), Struct_1(false, 1148f, vec2<i32>(u_input.b, var_0.x), u_input.e.wx, var_0.x)), arg_2), select(select(vec2<bool>(arg_2, true), select(vec2<bool>(true, false), vec2<bool>(arg_2, false), true), false), !(!vec2<bool>(true, arg_2)), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(arg_2, true))), vec2<bool>(true, true)), false);
    var var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(~0u, 4294967295u, arg_0.x), _wgslsmith_add_vec3_u32(u_input.c.wzx, arg_0));
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(270f, -129f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-603f * _wgslsmith_f_op_f32(1000f + arg_1))), 850f, -1000f)));
    let var_4 = _wgslsmith_f_op_f32(min(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -392f) + var_3.x)))));
    return func_1(all(select(vec3<bool>(false, any(vec3<bool>(arg_2, var_1.x, false)), arg_2 | false), vec3<bool>(all(vec3<bool>(arg_2, false, false)), all(vec4<bool>(arg_2, var_1.x, arg_2, false)), !var_1.x), !vec3<bool>(arg_2, arg_2, false))), Struct_1((arg_2 | arg_2) == func_3(Struct_1(var_1.x, var_4, var_0, u_input.e.wz, var_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1291f, 434f, var_4)), Struct_1(var_1.x, 337f, vec2<i32>(var_0.x, 21085i), u_input.e.wx, 18262i), Struct_1(arg_2, arg_1, vec2<i32>(var_0.x, u_input.b), vec2<i32>(var_0.x, 0i), u_input.e.x)), -1742f, u_input.e.xx, vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.e, max(u_input.e, u_input.e)), 1i), reverseBits(i32(-1i) * -1i)), arg_0.x, ~select(u_input.c, u_input.c, select(select(vec4<bool>(var_1.x, true, true, false), vec4<bool>(false, var_1.x, false, true), false), vec4<bool>(false, var_1.x, var_1.x, false), select(vec4<bool>(arg_2, false, arg_2, false), vec4<bool>(var_1.x, true, arg_2, false), true)))).x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 973f;
    var var_1 = Struct_1(true, 1f, _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(1i, u_input.e.x), -u_input.e.ww), ~(-_wgslsmith_add_vec2_i32(u_input.e.yx, vec2<i32>(14547i, 21155i)))), select(-_wgslsmith_add_vec2_i32(u_input.e.zz, -vec2<i32>(8238i, 0i)), _wgslsmith_sub_vec2_i32(func_1(true, Struct_1(true, -816f, u_input.e.ww, vec2<i32>(u_input.b, u_input.e.x), 31949i), 1u, vec4<u32>(7824u, 0u, 4294967295u, u_input.a)) | vec2<i32>(1i, 57693i), u_input.e.xz), !vec2<bool>(true, 4294967295u < u_input.c.x)), func_4(_wgslsmith_mod_vec3_u32(~u_input.c.ywy, func_2()), _wgslsmith_f_op_f32(495f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1099f + -185f), -1410f))), !all(vec4<bool>(true, true, true, true))));
    var_0 = -214f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(u_input.e.ywy, -_wgslsmith_mod_vec3_i32(min(vec3<i32>(-22478i, var_1.c.x, u_input.e.x), u_input.e.xwx), u_input.e.zxz | u_input.e.xyy)), firstTrailingBit(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, var_1.d.x, -1i) >> (vec3<u32>(0u, u_input.d, u_input.d) % vec3<u32>(32u)), reverseBits(u_input.e.xzz)))), firstTrailingBit(~(~firstTrailingBit(u_input.c))));
}

