struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: vec2<f32>) -> i32 {
    var var_0 = _wgslsmith_dot_vec2_i32(-abs(-vec2<i32>(1i, 1i)), vec2<i32>(~firstTrailingBit(-1i), 2147483647i));
    let var_1 = select(select(vec2<bool>(true, true), !(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), !vec2<bool>(true, select(true, true, false))), vec2<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)), true), vec2<bool>(true, -_wgslsmith_clamp_i32(-7i, 36483i, -2147483647i) >= _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 20994i, 36843i), reverseBits(vec3<i32>(1i, 30813i, -29087i)))));
    var_0 = _wgslsmith_dot_vec4_i32(abs(-select(vec4<i32>(59718i, 595i, -16288i, -2147483647i), vec4<i32>(-5486i, -3124i, 29749i, -2147483647i), var_1.x)) & -countOneBits(-vec4<i32>(1i, 5115i, 13931i, -25077i)), vec4<i32>(~firstLeadingBit(-2147483647i), _wgslsmith_mult_i32(_wgslsmith_add_i32(-24077i, -1i >> (u_input.a.x % 32u)), 1i), _wgslsmith_dot_vec3_i32(min(vec3<i32>(-2147483647i, 4998i, 15687i), vec3<i32>(1i, -2147483647i, -32312i) << (vec3<u32>(arg_2.x, u_input.a.x, 4294967295u) % vec3<u32>(32u))), max(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i))), 2147483647i));
    var var_2 = arg_1.x;
    var var_3 = Struct_4(false);
    return ~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), min(-(~vec4<i32>(-22802i, -1i, 4255i, -29249i)), vec4<i32>(46659i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, -1i), vec3<i32>(24392i, 0i, 0i)), 28556i, _wgslsmith_add_i32(0i, 2147483647i))));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-1f);
    var var_1 = _wgslsmith_add_vec4_i32(arg_0.a, vec4<i32>(countOneBits(-1i), ~arg_0.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-arg_0.b, arg_0.a.x, arg_0.a.x | 1i), min(vec3<i32>(arg_0.a.x, arg_0.a.x, arg_0.a.x), firstTrailingBit(vec3<i32>(-1i, arg_0.a.x, arg_0.b)))), min(-func_3(u_input.c.x, vec4<f32>(705f, 714f, 428f, 734f), vec2<u32>(u_input.a.x, u_input.a.x), vec2<f32>(-956f, -366f)), arg_0.b)));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1904f * 2445f), _wgslsmith_f_op_f32(max(-1254f, -657f))) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1093f, 1254f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2085f, 1869f)), vec2<f32>(-871f, 1006f), select(vec2<bool>(true, true), vec2<bool>(arg_1, arg_1), vec2<bool>(true, true)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-399f, -846f), vec2<f32>(1615f, -335f))))))));
    var var_3 = vec3<i32>(35637i, var_1.x, ~arg_0.a.x);
    var_1 = vec4<i32>(-5336i, -38298i, _wgslsmith_mult_i32(-31197i & (~arg_0.a.x ^ 0i), arg_0.b), -_wgslsmith_dot_vec2_i32(var_1.wz, select(var_3.xz, vec2<i32>(arg_0.b, var_3.x), vec2<bool>(true, true))) | (_wgslsmith_mult_i32(arg_0.a.x, ~var_1.x) << (41585u % 32u)));
    return _wgslsmith_add_i32(_wgslsmith_mod_i32(var_3.x, _wgslsmith_mult_i32(_wgslsmith_mod_i32(arg_0.b, -2147483647i), 3166i)), abs(~(var_3.x & -6845i))) & ~var_3.x;
}

fn func_1() -> bool {
    var var_0 = abs(vec2<i32>(~(-(~63457i)), -2147483647i));
    var var_1 = !(!(!(!select(vec2<bool>(false, false), vec2<bool>(false, false), false))));
    var_0 = firstTrailingBit(vec2<i32>(~func_2(Struct_1(vec4<i32>(1i, var_0.x, -1i, var_0.x), var_0.x), true), i32(-1i) * -2147483647i));
    var var_2 = 29348u << (abs(u_input.a.x) % 32u);
    var var_3 = Struct_2(Struct_1(_wgslsmith_mult_vec4_i32(-vec4<i32>(-67805i, -1i, -9670i, -2147483647i), vec4<i32>(var_0.x << (u_input.c.x % 32u), ~(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(24775i, -4402i, var_0.x, var_0.x), vec4<i32>(51736i, 1i, var_0.x, var_0.x)), var_0.x)), ~20627i), vec4<bool>(any(vec2<bool>(var_1.x, var_1.x)) || var_1.x, !(_wgslsmith_add_i32(42479i, 25932i) != select(-2147483647i, -2678i, var_1.x)), true | var_1.x, all(vec2<bool>(select(var_1.x, false, var_1.x), 1u >= u_input.b.x))), Struct_1(~_wgslsmith_clamp_vec4_i32(min(vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<i32>(-3517i, var_0.x, var_0.x, var_0.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, -1i, var_0.x, var_0.x), vec4<i32>(1i, -2147483647i, var_0.x, var_0.x)), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, -23192i, var_0.x, 1i), vec4<i32>(15118i, var_0.x, 8073i, var_0.x))), var_0.x), var_1.x, Struct_1(reverseBits(min(vec4<i32>(var_0.x, -48383i, -14971i, var_0.x) & vec4<i32>(var_0.x, 22i, 10630i, var_0.x), -vec4<i32>(2147483647i, var_0.x, var_0.x, var_0.x))), 66020i));
    return var_3.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(max(u_input.a, vec4<u32>(90679u, u_input.a.x, u_input.a.x, 1u))) << (vec4<u32>(40279u, 1u, u_input.c.x, u_input.a.x) % vec4<u32>(32u)), ~vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b.zy, vec2<u32>(0u, 36814u)), ~0u, ~1u, 1u)), ~6140u, u_input.b.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-225f, 1062f))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(215f, -122f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1399f, -1126f, -227f))), vec3<f32>(_wgslsmith_f_op_f32(select(384f, -242f, false)), -1605f, -1000f))))));
    var var_2 = Struct_1(-vec4<i32>(max(31770i >> (var_0.x % 32u), ~(-28078i)), -firstLeadingBit(25788i), 1i, 1i), max(1i, 0i));
    let var_3 = Struct_2(Struct_1(var_2.a, var_2.b), vec4<bool>(all(vec3<bool>(false, true, any(vec4<bool>(false, false, true, true)))), true, false && select(var_2.b >= var_2.a.x, true, func_1()), !(-1605f == _wgslsmith_f_op_f32(floor(var_1.x)))), Struct_1(vec4<i32>(func_2(Struct_1(var_2.a, var_2.b), true) << (_wgslsmith_div_u32(1u, u_input.a.x) % 32u), firstTrailingBit(func_2(Struct_1(vec4<i32>(var_2.a.x, var_2.a.x, -8530i, 0i), var_2.a.x), true)), abs(func_3(var_0.x, vec4<f32>(562f, 777f, var_1.x, var_1.x), u_input.a.yw, var_1.yy)), -var_2.b >> (0u % 32u)), var_2.a.x), any(vec4<bool>(true, true, 4294967295u >= (u_input.b.x ^ 11114u), select(false, true, var_1.x < 995f))), Struct_1(vec4<i32>(2147483647i, var_2.b, -31584i, ~_wgslsmith_mod_i32(1i, -1i)), 25454i));
    var var_4 = true;
    var_2 = Struct_1(var_3.e.a, abs(~_wgslsmith_div_i32(var_3.a.b, -var_2.b)));
    let x = u_input.a;
    s_output = StorageBuffer(761f, vec3<u32>(31545u, _wgslsmith_mod_u32(~0u, countOneBits(~0u)), ~(~360u >> (u_input.b.x % 32u))), func_2(var_3.a, true), vec3<i32>(-(var_2.b >> (var_0.x % 32u)), _wgslsmith_dot_vec3_i32(-vec3<i32>(32017i, 53103i, var_3.c.a.x), var_2.a.wyw), min(~(-1i), var_2.b)));
}

