struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec3<f32>) -> f32 {
    let var_0 = Struct_3(~_wgslsmith_dot_vec2_i32(vec2<i32>(-19776i, -2935i), arg_0 & vec2<i32>(u_input.d.x, arg_1.d)) != -11399i, 1271i);
    var var_1 = Struct_3(any(!select(select(vec4<bool>(var_0.a, false, var_0.a, var_0.a), vec4<bool>(var_0.a, false, false, true), vec4<bool>(false, var_0.a, var_0.a, false)), select(vec4<bool>(var_0.a, false, false, true), vec4<bool>(true, var_0.a, false, var_0.a), false), var_0.a)), abs(~arg_1.d));
    var var_2 = ~(~_wgslsmith_mult_u32(u_input.b, ~max(81358u, 1u)));
    var var_3 = arg_1.c ^ _wgslsmith_clamp_vec3_u32(firstLeadingBit(~firstLeadingBit(arg_1.c)), vec3<u32>(firstTrailingBit(abs(1u)), max(_wgslsmith_sub_u32(54910u, u_input.a.x), abs(61534u)), 38773u), vec3<u32>(1u, 4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.b), vec4<u32>(arg_1.b, 33863u, u_input.b, 11681u)), vec4<u32>(4294967295u, arg_1.b, arg_1.c.x, arg_1.c.x))));
    let var_4 = _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-2147483647i, _wgslsmith_mult_i32(_wgslsmith_add_i32(var_1.b, -5518i), 1i))), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(2147483647i, var_0.b, -1i), -var_0.b) << (49578u % 32u), u_input.d.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(399f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-142f * arg_2.x) + _wgslsmith_f_op_f32(sign(arg_1.a.x)))))));
}

fn func_2(arg_0: i32) -> Struct_3 {
    let var_0 = Struct_3(false, arg_0);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(450f * _wgslsmith_f_op_f32(func_3(u_input.c, Struct_1(vec4<f32>(794f, -1162f, 1051f, 1118f), 4294967295u, vec3<u32>(14316u, 1u, u_input.a.x), 2147483647i), vec3<f32>(736f, -593f, 430f), vec3<f32>(-356f, 969f, -315f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(982f, 303f, var_0.a))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1066f), -404f, var_0.a)), 1285f)), _wgslsmith_clamp_u32(~u_input.a.x, ~(~(~6968u)), u_input.b), _wgslsmith_mult_vec3_u32(max(firstLeadingBit(~vec3<u32>(49798u, 4294967295u, 25708u)), min(select(vec3<u32>(u_input.b, u_input.b, 9812u), vec3<u32>(58207u, 0u, u_input.a.x), vec3<bool>(true, var_0.a, false)), vec3<u32>(u_input.b, 5374u, u_input.a.x))), ~vec3<u32>(28768u, 4294967295u, u_input.b)), _wgslsmith_mod_i32(var_0.b ^ abs(-arg_0), u_input.d.x));
    var var_2 = Struct_3(any(select(select(vec4<bool>(true, false, true, false), vec4<bool>(var_0.a, var_0.a, var_0.a, false), any(vec2<bool>(false, var_0.a))), vec4<bool>(true, var_0.a, u_input.a.x < var_1.c.x, true), vec4<bool>(var_0.a, var_0.a, true, var_0.a))), ~2147483647i);
    var var_3 = u_input.d;
    var var_4 = vec2<u32>(var_1.c.x, ~(_wgslsmith_add_u32(var_1.b, 55517u) & var_1.c.x)) & _wgslsmith_add_vec2_u32(vec2<u32>(~43186u, 0u), vec2<u32>(abs(u_input.a.x) << (abs(4294967295u) % 32u), _wgslsmith_mod_u32(u_input.a.x, var_1.c.x)));
    return Struct_3(true, u_input.c.x);
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: f32) -> bool {
    var var_0 = all(!vec2<bool>(arg_1.a || !arg_0, true));
    var_0 = !select(false, false, true);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-1035f + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_2)), arg_2)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.c, Struct_1(vec4<f32>(arg_2, arg_2, arg_2, 1480f), 1u, vec3<u32>(u_input.b, 0u, u_input.b), 0i), vec3<f32>(arg_2, arg_2, arg_2), vec3<f32>(655f, 447f, arg_2)))))), 262f);
    var_0 = all(vec4<bool>(u_input.d.x < _wgslsmith_mult_i32(i32(-1i) * -1i, _wgslsmith_mult_i32(-49421i, 15944i)), arg_0, select(func_2(1i).a, arg_0, !(!arg_1.a)), all(vec3<bool>(true, arg_1.a, arg_1.a)) != arg_1.a));
    let var_2 = arg_1.a;
    return (true && (all(vec4<bool>(false, var_2, arg_1.a, arg_0)) | (true || arg_1.a))) & any(!(!select(vec2<bool>(arg_1.a, false), vec2<bool>(false, true), vec2<bool>(arg_1.a, true))));
}

fn func_1() -> Struct_1 {
    var var_0 = all(vec3<bool>(false, false, func_4(true, func_2(u_input.d.x), -512f))) | false;
    var_0 = all(vec3<bool>(true, true, true));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -631f), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(856f, -1000f, -1000f, 524f) + vec4<f32>(919f, -495f, 191f, 1018f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-245f, -1343f, 1000f, 1892f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(568f, -940f, -973f, 341f)), vec4<bool>(true, u_input.c.x > u_input.d.x, 0u != u_input.b, all(vec4<bool>(true, true, true, true))))), u_input.b, _wgslsmith_sub_vec3_u32(~reverseBits(vec3<u32>(4294967295u, 4294967295u, 4294967295u)), firstLeadingBit(abs(vec3<u32>(u_input.a.x, 24915u, u_input.b)))), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(u_input.d.x, u_input.d.x)) & _wgslsmith_sub_i32(-1i, u_input.d.x), -max(2147483647i, u_input.d.x))), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, _wgslsmith_div_f32(2008f, -1000f), _wgslsmith_f_op_f32(-431f * -666f), _wgslsmith_f_op_f32(max(1219f, 329f))))), ~u_input.a.x, abs(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 34624u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 0u)) << (select(vec3<u32>(67873u, u_input.b, u_input.b), vec3<u32>(4294967295u, 105298u, u_input.a.x), true) % vec3<u32>(32u))), -1i), firstTrailingBit(-(~u_input.d) & u_input.d));
    var var_2 = func_2(_wgslsmith_mult_i32(~26484i, u_input.c.x));
    let var_3 = u_input.d.zww;
    return Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(var_1.c.a, _wgslsmith_f_op_vec4_f32(select(var_1.b.a, vec4<f32>(var_1.a, 1795f, -653f, 897f), var_2.a)))))))), u_input.a.x, var_1.b.c, select(var_3.x, _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_mult_i32(var_3.x, -36596i), var_3.x), 11385i), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = select(false, !(!(!(var_0.b != u_input.a.x))), !(!(u_input.a.x == u_input.b)) || func_4(all(vec3<bool>(false, true, true)) && (var_0.d > -1i), func_2(var_0.d), var_0.a.x));
    var var_2 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(-24051i, var_0.d, -1i), u_input.d.yzw), max(~u_input.d.zxy, _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, var_0.d, -2147483647i), vec3<i32>(u_input.d.x, 20871i, 19215i), vec3<i32>(-24644i, -2147483647i, 1i))), firstLeadingBit(vec3<i32>(1i, var_0.d, -27737i))), u_input.d.xyx), u_input.c.x, -u_input.d.x);
    var_0 = func_1();
    var_0 = func_1();
    var var_3 = max(u_input.a.x, ~_wgslsmith_mod_u32(1u, _wgslsmith_div_u32(u_input.a.x ^ 1u, 1u)));
    let var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(21738u, var_0.a.x);
}

