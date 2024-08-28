struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_3,
    c: bool,
    d: Struct_4,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: f32) -> u32 {
    global0 = _wgslsmith_add_u32(u_input.b, u_input.c);
    var var_0 = ~50975u;
    var_0 = firstLeadingBit(u_input.c);
    let var_1 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-arg_2));
    var var_2 = vec3<u32>(~_wgslsmith_mod_u32(1u, u_input.c) >> (1u % 32u), ~40194u, ~(~4294967295u));
    return 37037u;
}

fn func_3() -> u32 {
    var var_0 = vec2<u32>(_wgslsmith_mult_u32(u_input.e, _wgslsmith_sub_u32(u_input.b, u_input.b)), ~(~u_input.e << (u_input.b % 32u)));
    let var_1 = 37359i;
    let var_2 = vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-480f * 131f)))), 1119f);
    var var_3 = ~vec4<i32>(abs(~1i), u_input.a, var_1 ^ -36664i, countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1, u_input.d.x, -2147483647i, var_1), u_input.d)) | u_input.d.x);
    let var_4 = !select(select(vec3<bool>(true, all(vec2<bool>(false, false)), all(vec4<bool>(false, true, false, true))), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(all(vec2<bool>(true, true)), true, true), select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)), !(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false))));
    return _wgslsmith_div_u32(~firstTrailingBit(~var_0.x) ^ (countOneBits(var_0.x) >> (max(8857u << (u_input.b % 32u), var_0.x) % 32u)), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(3455u, 4294967295u, var_0.x, var_0.x), vec4<u32>(8875u, 42917u, var_0.x, u_input.b) >> (vec4<u32>(65783u, 0u, 1u, 23555u) % vec4<u32>(32u))) & u_input.e);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_5, arg_2: u32) -> u32 {
    let var_0 = Struct_1(abs(firstLeadingBit(2147483647i)), arg_1.d.a.b);
    return _wgslsmith_add_u32(~(~select(~0u, abs(4294967295u), arg_1.d.a.b)), 1u);
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: f32) -> Struct_2 {
    global0 = func_4(vec4<i32>(1i, u_input.d.x, ~20872i ^ _wgslsmith_mult_i32(u_input.a, u_input.a), reverseBits(-8500i)), Struct_5(select(vec4<u32>(u_input.e, u_input.b, 0u, u_input.e), vec4<u32>(u_input.c, 19462u, u_input.b, u_input.e), arg_1) << (vec4<u32>(u_input.e, u_input.c, 4294967295u, u_input.c) % vec4<u32>(32u)), Struct_3(_wgslsmith_clamp_vec3_i32(u_input.d.zyw, vec3<i32>(u_input.a, 11496i, u_input.a), u_input.d.zzz), !arg_0, _wgslsmith_f_op_f32(-778f + arg_2)), !all(vec3<bool>(false, true, true)), Struct_4(Struct_1(u_input.a, arg_1), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(542f, arg_2, -983f))), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.e, 61784u, 61403u, u_input.b), vec4<u32>(43190u, 0u, u_input.e, 0u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_2, -1012f)), vec2<i32>(u_input.a, -19308i)), !(0u >= u_input.e)), func_3()) << (~(~4294967295u >> (u_input.c % 32u)) % 32u);
    global0 = u_input.c;
    global0 = u_input.c;
    let var_0 = select(vec4<bool>(true, !all(vec2<bool>(arg_1, arg_1)), true, arg_1), vec4<bool>(false, !arg_0, arg_1, false), !any(!vec4<bool>(true, arg_0, false, arg_0)));
    global0 = firstTrailingBit(u_input.e);
    return Struct_2(Struct_1(select(u_input.a, _wgslsmith_add_i32(-23173i, u_input.a), !any(vec4<bool>(arg_0, arg_0, var_0.x, false))), !any(select(vec4<bool>(arg_0, arg_0, true, false), var_0, var_0))), Struct_1(abs(~u_input.d.x >> (26194u % 32u)), any(select(vec3<bool>(arg_0, true, arg_1), vec3<bool>(false, false, false), !vec3<bool>(false, arg_1, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~_wgslsmith_clamp_u32(u_input.b, reverseBits(~func_1(Struct_3(u_input.d.zyx, false, 1775f), Struct_2(Struct_1(23898i, true), Struct_1(u_input.d.x, true)), -777f)), min(40930u, ~(~4294967295u)));
    var var_0 = func_2(!any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), any(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(217f)), 530f));
    let var_1 = reverseBits(func_4(vec4<i32>(-(~(-7274i)), 13842i, u_input.a, max(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.a, -177i), vec2<i32>(u_input.a, 0i)), ~0i)), Struct_5(~(~vec4<u32>(u_input.c, u_input.e, 5314u, u_input.e)), Struct_3(_wgslsmith_mult_vec3_i32(u_input.d.xxx, vec3<i32>(0i, var_0.b.a, -2147483647i)), var_0.a.b, -398f), !(!var_0.a.b), Struct_4(func_2(var_0.b.b, false, -2078f).a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-760f, -198f, 644f)), vec4<u32>(u_input.c, u_input.b, 4294967295u, u_input.b), vec3<f32>(1503f, -1759f, -229f), u_input.d.yw), var_0.b.b), ~u_input.e));
    var var_2 = Struct_3(_wgslsmith_clamp_vec3_i32(u_input.d.zyy, firstTrailingBit(~u_input.d.yyz), min(~(vec3<i32>(var_0.a.a, 96017i, 11783i) >> (vec3<u32>(u_input.b, var_1, u_input.b) % vec3<u32>(32u))), u_input.d.wyz)), var_0.b.b, _wgslsmith_f_op_f32(1422f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-345f * 127f)))));
    var var_3 = Struct_2(Struct_1(max((i32(-1i) * -108657i) & (9846i | var_2.a.x), u_input.d.x), var_0.b.b), Struct_1(-(~reverseBits(-2147483647i)), var_2.b));
    var_2 = Struct_3(~(-u_input.d.yyz), !(-1i >= (i32(-1i) * -var_2.a.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(154f * -1356f)), var_2.c)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~vec3<i32>(6755i, var_2.a.x, var_3.b.a)) ^ vec3<i32>(~(-14017i), var_2.a.x, ~_wgslsmith_mod_i32(var_3.b.a, 2147483647i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 208f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1410f, -715f) * vec2<f32>(var_2.c, var_2.c))) - vec2<f32>(_wgslsmith_f_op_f32(var_2.c - -1000f), -1309f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.c, 441f))), ~u_input.b, 628f);
}

