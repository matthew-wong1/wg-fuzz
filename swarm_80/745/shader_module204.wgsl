struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec2<u32>,
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

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    var var_0 = _wgslsmith_sub_vec2_i32(max(arg_0.zz, u_input.b.xw), -(~select(select(vec2<i32>(arg_0.x, 2147483647i), vec2<i32>(u_input.b.x, -23645i), vec2<bool>(true, false)), vec2<i32>(1i, arg_0.x), true)));
    var_0 = _wgslsmith_div_vec2_i32(arg_0.yy >> (vec2<u32>(0u, 0u) % vec2<u32>(32u)), vec2<i32>(11826i, u_input.b.x) | u_input.b.yw) << (firstLeadingBit(vec2<u32>(0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(14248u, 0u, 1u), ~vec3<u32>(34642u, 24177u, 1u)))) % vec2<u32>(32u));
    var_0 = arg_0.xy;
    var_0 = min(~vec2<i32>(min(u_input.b.x, arg_0.x), arg_0.x), vec2<i32>(-1i, _wgslsmith_add_i32(max(u_input.b.x, arg_0.x), i32(-1i) * -10399i))) >> (countOneBits(vec2<u32>(0u, 58785u)) % vec2<u32>(32u));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-555f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1027f * -172f))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(347f))) * _wgslsmith_f_op_f32(floor(-196f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1330f)) + -238f), -149f), false)));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<i32>(-u_input.a, abs(0i), 2147483647i, u_input.b.x) ^ vec4<i32>(1i, firstTrailingBit(u_input.a), -2147483647i, ~u_input.b.x))) - -665f);
    let var_1 = select(!((all(vec4<bool>(true, false, false, false)) == false) & true), true, (true || select(any(vec3<bool>(true, false, false)), any(vec4<bool>(true, true, false, false)), true)) || true);
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.b.x), ~(vec2<i32>(u_input.b.x, u_input.b.x) ^ u_input.b.wx) | ~vec2<i32>(u_input.b.x, u_input.a)), -28276i);
    let var_3 = select(59973u, _wgslsmith_mult_u32(4294967295u, select(_wgslsmith_mod_u32(4294967295u, 17326u), ~12770u, true)), !var_1) | abs(~28970u & firstTrailingBit(1u));
    var var_4 = var_1;
    return Struct_1(~((select(vec2<u32>(var_3, 3710u), vec2<u32>(83257u, 0u), var_1) ^ (vec2<u32>(0u, var_3) << (vec2<u32>(1u, var_3) % vec2<u32>(32u)))) ^ (countOneBits(vec2<u32>(var_3, var_3)) | (vec2<u32>(var_3, 43898u) | vec2<u32>(0u, var_3)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_2 {
    var var_0 = -min(1i, ~_wgslsmith_mod_i32(~(-2147483647i), 1i));
    var var_1 = Struct_3(all(!vec4<bool>(false, false, any(vec2<bool>(true, true)), true)));
    let var_2 = Struct_2(arg_0, true, Struct_1(vec2<u32>(~(~arg_0.a.x), select(arg_0.a.x, arg_0.a.x, var_1.a) & 26468u)), vec3<u32>(_wgslsmith_mult_u32(arg_0.a.x << (0u % 32u), ~47994u) >> (~(~0u) % 32u), firstTrailingBit(68929u) << (((arg_0.a.x >> (arg_0.a.x % 32u)) << (~46768u % 32u)) % 32u), countOneBits(arg_0.a.x)));
    var_0 = -2147483647i;
    var_0 = min(u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 0i), u_input.b.zw) & arg_1.x, -12098i), _wgslsmith_mult_vec2_i32(-vec2<i32>(-46095i, u_input.a), vec2<i32>(1i, 96686i)) | _wgslsmith_add_vec2_i32(vec2<i32>(arg_1.x, arg_1.x) | vec2<i32>(3352i, 43798i), ~arg_1.xz)));
    return var_2;
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = func_4(func_2(), vec4<i32>(1i, ~(~0i), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-22190i, u_input.b.x, select(0i, u_input.a, false)), -54470i), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.a, u_input.a, u_input.a) & vec3<i32>(u_input.a, 0i, -2147483647i)), -vec3<i32>(2147483647i, u_input.a, 17223i) << (_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 1u, 62900u), vec3<u32>(40849u, 17718u, 31502u)) % vec3<u32>(32u)))));
    let var_1 = vec3<u32>(var_0.a.a.x, 0u, 1u);
    var var_2 = _wgslsmith_mod_vec3_i32(select(reverseBits(-_wgslsmith_div_vec3_i32(u_input.b.xyz, vec3<i32>(1i, -20477i, u_input.a))), _wgslsmith_div_vec3_i32(max(max(u_input.b.xzy, u_input.b.wwy), -vec3<i32>(1i, u_input.b.x, u_input.a)), -countOneBits(vec3<i32>(u_input.b.x, 7508i, u_input.b.x))), false), -(~(-(~u_input.b.wzz))));
    let var_3 = abs(-u_input.b.yzw);
    let var_4 = true || var_0.b;
    return var_0.a;
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> bool {
    let var_0 = Struct_3(select(arg_1, arg_1, !(arg_1 || true)));
    let var_1 = Struct_3(true);
    var var_2 = Struct_4(var_0, -1598f);
    let var_3 = ~select(_wgslsmith_mod_u32(abs(_wgslsmith_add_u32(51451u, 1u)), ~(~arg_2.a.x)), max(arg_0, arg_0), ~(4294967295u ^ arg_2.a.x) < ~abs(33898u));
    var var_4 = var_0.a;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec4<bool>(func_5(~1u, false, func_1(-808f)), any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), true)), true, 2147483647i == -u_input.a), !(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), true)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), false), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), false), any(vec2<bool>(false, false))), false)), !(!(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), false))), vec4<bool>(true, true, all(vec2<bool>(true, true)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))))));
    let var_1 = !(!(!vec4<bool>(select(var_0.x, var_0.x, var_0.x), var_0.x, true, true)));
    var var_2 = func_2();
    var var_3 = Struct_4(Struct_3(true), _wgslsmith_f_op_f32(f32(-1f) * -818f));
    var var_4 = _wgslsmith_div_f32(372f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b * var_3.b))));
    let x = u_input.a;
    s_output = StorageBuffer(~87572u >> (func_2().a.x % 32u), vec3<u32>(var_2.a.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.a.x, var_2.a.x, 32430u) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(var_2.a.x, var_2.a.x, var_2.a.x), vec3<u32>(0u, var_2.a.x, var_2.a.x)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(var_2.a.x, var_2.a.x, 59810u), vec3<u32>(var_2.a.x, 4294967295u, 0u))), _wgslsmith_dot_vec2_u32(func_4(Struct_1(var_2.a), vec4<i32>(-13115i, u_input.a, 4519i, -1469i)).c.a, func_2().a ^ var_2.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b, 271f)))), var_2.a);
}

