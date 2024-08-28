struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec2<f32>) -> bool {
    var var_0 = 19223u;
    let var_1 = arg_0;
    let var_2 = ~arg_1.a.x;
    let var_3 = countOneBits(arg_1.b);
    var var_4 = 22129u;
    return !(((all(vec3<bool>(true, true, false)) && (0u >= u_input.a.x)) || (all(vec2<bool>(false, true)) || true)) && any(vec3<bool>(true, any(vec3<bool>(false, false, false)), true)));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: vec2<f32>) -> bool {
    var var_0 = vec3<bool>(arg_1.x != _wgslsmith_dot_vec3_i32(vec3<i32>(select(1i, arg_2.x, false), arg_2.x, max(-2147483647i, -24788i)), arg_2), true, !all(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true))));
    var_0 = select(!(!vec3<bool>(!var_0.x, 877f == arg_3.x, true)), vec3<bool>(true, true, true), select(!select(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(false, false, var_0.x), var_0.x), vec3<bool>(var_0.x, false, var_0.x), select(vec3<bool>(false, false, var_0.x), vec3<bool>(true, var_0.x, true), false)), !select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, false, true), var_0.x), !vec3<bool>(false, true, var_0.x), true), select(vec3<bool>(arg_3.x < arg_3.x, var_0.x, any(var_0.xx)), vec3<bool>(var_0.x, u_input.b.x >= 14778u, var_0.x), vec3<bool>(var_0.x, arg_2.x >= 1i, any(vec3<bool>(var_0.x, true, true))))));
    var_0 = !(!vec3<bool>((30357u > u_input.b.x) | var_0.x, select(var_0.x, var_0.x && false, true), all(vec4<bool>(var_0.x, var_0.x, false, false))));
    var var_1 = 746f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1524f)), -1139f), any(select(!vec4<bool>(var_0.x, true, false, var_0.x), !vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(false, true, var_0.x, var_0.x))))));
    return _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a.www, abs(u_input.a.wzy) >> (u_input.a.zxx % vec3<u32>(32u))), u_input.a.zzz) < 4294967295u;
}

fn func_2(arg_0: vec2<f32>) -> Struct_2 {
    let var_0 = vec4<bool>(select(!all(vec2<bool>(false, false)) | true, any(vec3<bool>(func_3(arg_0.x, vec2<i32>(1i, -3489i), vec3<i32>(46838i, 0i, -2147483647i), vec2<f32>(arg_0.x, -621f)), false, true)), func_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.x, -687f, -1000f), vec3<f32>(arg_0.x, arg_0.x, -147f))))), Struct_2(_wgslsmith_mod_vec2_i32(vec2<i32>(1571i, 38847i), vec2<i32>(44691i, -4949i)), ~vec3<i32>(-2147483647i, -20266i, 29648i)), _wgslsmith_f_op_vec2_f32(-arg_0))), true, true, false);
    return Struct_2(vec2<i32>(37280i, select(1i, _wgslsmith_mult_i32(firstLeadingBit(48954i), countOneBits(1i)), _wgslsmith_f_op_f32(-arg_0.x) > _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_mod_vec3_i32(-select(abs(vec3<i32>(0i, 1i, 13942i)), min(vec3<i32>(-6620i, -29551i, 57010i), vec3<i32>(-14753i, 0i, 2147483647i)), !var_0.x), ~_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(29522i, -34017i, -2147483647i), vec3<i32>(-2147483647i, -1i, 26333i)), ~vec3<i32>(-38104i, 32717i, -2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(!select(true, true, false), any(vec4<bool>(!(u_input.b.x > 65088u), false, any(vec3<bool>(true, true, true)), func_1(vec3<f32>(-429f, -1157f, 1428f), Struct_2(vec2<i32>(-71123i, 1i), vec3<i32>(-32434i, 2147483647i, 1i)), vec2<f32>(-148f, 620f)) & any(vec2<bool>(true, true)))));
    var var_1 = func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-954f + 344f))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1338f, -180f))))));
    let var_2 = Struct_1(vec2<i32>(firstLeadingBit(firstLeadingBit(~var_1.a.x)), _wgslsmith_mult_i32(0i, ~(var_1.b.x | var_1.b.x))), abs(-(~40143i ^ (var_1.b.x << (38572u % 32u)))), ~_wgslsmith_mod_vec4_i32(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.a.x, var_1.b.x, var_1.a.x, -23004i), vec4<i32>(var_1.b.x, -1i, var_1.a.x, var_1.b.x), vec4<i32>(var_1.b.x, -1i, -54547i, 2147483647i)), ~vec4<i32>(var_1.a.x, -2147483647i, 2147483647i, 1i), !var_0.x), vec4<i32>(reverseBits(var_1.b.x), ~var_1.b.x, _wgslsmith_mod_i32(-2147483647i, var_1.a.x), -30301i)));
    var var_3 = Struct_1(var_1.b.xx, ~(~0i), vec4<i32>(0i, -13882i, _wgslsmith_mult_i32(firstTrailingBit(i32(-1i) * -1i), firstLeadingBit(var_1.a.x | var_1.a.x)), var_2.b));
    var_3 = var_2;
    var_0 = select(!vec2<bool>(var_0.x, u_input.b.x < ~30808u), vec2<bool>(var_0.x, func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-681f)) + _wgslsmith_f_op_f32(round(-1127f))), vec2<i32>(_wgslsmith_clamp_i32(var_2.c.x, var_1.a.x, -17826i), _wgslsmith_mod_i32(-18130i, -6733i)), var_3.c.wzw, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(463f, -1046f) + vec2<f32>(994f, 113f)) - vec2<f32>(-394f, 1000f)))), vec2<bool>(true, ~(~38897u) <= (u_input.b.x ^ u_input.b.x)));
    var_0 = vec2<bool>(all(vec4<bool>(var_0.x, !(!var_0.x), any(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, true), false)), false)), var_0.x);
    var var_4 = var_3.b ^ _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(func_2(vec2<f32>(-457f, 771f)).b.x, _wgslsmith_dot_vec2_i32(var_3.c.zy, var_3.c.xw), var_1.a.x | -74320i, 2147483647i & var_3.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(0i, var_2.c.x, -5769i, 952i), ~vec4<i32>(var_2.b, 2147483647i, var_1.b.x, -2147483647i))), -1i);
    let var_5 = ~(~(~(vec2<i32>(1801i, var_2.c.x) << (_wgslsmith_mod_vec2_u32(vec2<u32>(24599u, u_input.a.x), u_input.b.xx) % vec2<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(reverseBits(~u_input.b) & vec3<u32>(u_input.b.x, ~u_input.a.x, _wgslsmith_clamp_u32(0u, u_input.b.x, u_input.b.x)), _wgslsmith_add_vec3_u32(~(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) << (vec3<u32>(u_input.a.x, 1u, u_input.b.x) % vec3<u32>(32u))), firstLeadingBit(u_input.b))), ~u_input.b, 1f, u_input.a.ww, _wgslsmith_f_op_f32(f32(-1f) * -661f));
}

