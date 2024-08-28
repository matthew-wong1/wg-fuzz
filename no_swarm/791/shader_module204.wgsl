struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec4<u32>, arg_3: u32) -> vec3<f32> {
    let var_0 = 29418u;
    var var_1 = Struct_3(arg_0);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(arg_1.x - 1892f), _wgslsmith_div_f32(var_1.a.b.a.x, arg_1.x)), arg_0.a)))));
    var_1 = Struct_3(arg_0);
    var var_3 = Struct_3(Struct_2(vec3<f32>(-138f, var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1761f)), arg_0.b, -vec2<i32>(1i, _wgslsmith_sub_i32(1i, -1i))));
    return arg_1;
}

fn func_2(arg_0: bool) -> bool {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1047f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(619f, 167f))))));
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-439f, 567f, 675f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1032f, 131f, 803f)))), Struct_1(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(vec3<f32>(566f, -1594f, 105f), Struct_1(vec3<f32>(777f, 2509f, 543f), u_input.a.xy, 14058u, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), u_input.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(158f, -1028f, 604f)), u_input.a << (u_input.a % vec4<u32>(32u)), _wgslsmith_mult_u32(69902u, u_input.a.x))), vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, 4294967295u), _wgslsmith_mult_u32(u_input.a.x, u_input.c)), 1u, _wgslsmith_sub_vec3_u32(u_input.a.xyx, u_input.a.wxz)), vec2<i32>(firstTrailingBit(-2147483647i), max(~1i, u_input.d ^ 6336i))));
    let var_2 = vec4<bool>(all(vec2<bool>(true || arg_0, false)), arg_0, select(true, _wgslsmith_add_u32(~u_input.c, _wgslsmith_sub_u32(15106u, u_input.a.x)) > 0u, true), true);
    var var_3 = var_1;
    var_3 = var_1;
    return !select(true, arg_0, 1505f != _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_1.a.b.a.x, 255f), _wgslsmith_f_op_f32(f32(-1f) * -529f))));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f * arg_0.b.a.x), arg_0.a.x, any(vec4<bool>(true, true, func_2(true), true)))), -1282f));
    var var_1 = vec2<bool>(true, true);
    let var_2 = !(!(!select(!vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, true), !vec2<bool>(var_1.x, var_1.x))));
    var_0 = -119f;
    var var_3 = Struct_3(arg_0);
    return var_3.a.b;
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = func_1(Struct_2(vec3<f32>(arg_0.a.x, -340f, 1f), func_1(Struct_2(_wgslsmith_f_op_vec3_f32(arg_0.a * arg_0.a), arg_0, u_input.b)), countOneBits(u_input.b)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * 132f))));
    let var_2 = _wgslsmith_sub_i32(reverseBits(min(_wgslsmith_mult_i32(-1i << (var_0.d.x % 32u), _wgslsmith_mult_i32(-22037i, -30242i)), -37408i)), 43366i);
    var var_3 = all(select(vec4<bool>(true, true, true, true), vec4<bool>(func_2(all(vec3<bool>(false, true, true))), u_input.d <= (u_input.b.x << (0u % 32u)), true, true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(var_0.c != 54173u, false, false, true), true)));
    var var_4 = vec3<i32>(_wgslsmith_mult_i32(~0i, 1i), _wgslsmith_sub_i32(-91999i, firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_div_i32(0i, u_input.d), i32(-1i) * -30805i))), -1i);
    return var_0.a.x;
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: u32, arg_3: vec3<u32>) -> Struct_2 {
    var var_0 = true;
    var var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-arg_1)), -840f, arg_0)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-var_2.ww);
    var var_4 = -_wgslsmith_dot_vec4_i32(-(vec4<i32>(1i, -1i, -48635i, 7272i) ^ vec4<i32>(u_input.d, u_input.b.x, u_input.b.x, 11193i)) | vec4<i32>(u_input.b.x, firstTrailingBit(15865i), _wgslsmith_div_i32(1i, u_input.b.x), ~0i), ~vec4<i32>(u_input.b.x, -13274i, i32(-1i) * -15987i, firstTrailingBit(u_input.d)));
    return Struct_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(208f * arg_1), -153f, arg_0))))), Struct_1(var_2.wxz, u_input.a.yx, ~_wgslsmith_mult_u32(~u_input.a.x, arg_3.x), ~vec3<u32>(85639u, 4294967295u, 1u)), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1516f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(604f - 557f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1(Struct_2(vec3<f32>(-435f, -1263f, -1029f), Struct_1(vec3<f32>(1072f, 2404f, -434f), u_input.a.zw, u_input.c, u_input.a.wwy), u_input.b)))))), _wgslsmith_clamp_u32(1u, select(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.a.yyy, vec3<u32>(u_input.a.x, u_input.a.x, u_input.c)), ~0u), 81458u, all(vec2<bool>(true, true))), ~u_input.a.x | _wgslsmith_dot_vec3_u32(~u_input.a.ywz, ~vec3<u32>(u_input.c, u_input.c, u_input.a.x))), _wgslsmith_div_vec3_u32(u_input.a.xzw, vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, 15660u) | vec3<u32>(u_input.c, u_input.c, 44873u), vec3<u32>(1897u, u_input.a.x, u_input.a.x) ^ vec3<u32>(0u, 4294967295u, u_input.c)), u_input.a.x, 52653u >> (u_input.a.x % 32u))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1051f);
    let var_2 = var_0.b;
    var var_3 = Struct_3(var_0);
    var_3 = Struct_3(Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(func_4(Struct_1(vec3<f32>(var_2.a.x, -886f, var_3.a.b.a.x), u_input.a.xw, var_3.a.b.d.x, vec3<u32>(u_input.a.x, 1106u, u_input.c)))), var_0.b.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1033f, var_3.a.b.a.x, 1036f))), func_1(func_5(var_0.b.a.x, _wgslsmith_f_op_f32(f32(-1f) * -579f), var_0.b.c, vec3<u32>(0u, var_3.a.b.b.x, var_3.a.b.c) | vec3<u32>(var_0.b.c, u_input.a.x, var_2.d.x))), -vec2<i32>(_wgslsmith_mult_i32(u_input.d, u_input.b.x), 17573i & var_0.c.x)));
    var var_4 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(var_3.a.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-529f * 764f) + _wgslsmith_f_op_f32(-var_3.a.a.x)) - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_2.a.x, var_0.b.a.x), 1035f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(u_input.a.zzy, vec3<u32>(~4294967295u, ~(1u << (var_3.a.b.b.x % 32u)), abs(var_2.d.x) & ~4294967295u)), countOneBits(_wgslsmith_sub_vec4_u32(~(~u_input.a), u_input.a >> (vec4<u32>(var_2.b.x, 1u, var_0.b.c, 7134u) % vec4<u32>(32u)))), 1u, _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(var_3.a.c.x, u_input.d, -20737i), vec3<i32>(var_3.a.c.x, 1i, u_input.b.x)), ~(-vec3<i32>(var_0.c.x, var_0.c.x, -2147483647i))), _wgslsmith_mult_vec3_i32(~(-vec3<i32>(u_input.d, 0i, var_0.c.x)), (vec3<i32>(u_input.d, u_input.d, 44060i) ^ vec3<i32>(-17901i, 2147483647i, 1i)) | max(vec3<i32>(-73169i, -3218i, u_input.b.x), vec3<i32>(1i, -2147483647i, -19879i)))));
}

