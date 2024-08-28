struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> f32 {
    let var_0 = Struct_1(true);
    var var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2308f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, 1000f)))), u_input.c, _wgslsmith_add_vec3_u32(~vec3<u32>(~0u, ~u_input.b.x, u_input.b.x >> (46191u % 32u)), vec3<u32>(max(firstTrailingBit(u_input.a), u_input.a & 0u), ~1u | ~u_input.c.x, 1u)));
    var var_2 = ~1u;
    var var_3 = _wgslsmith_f_op_f32(-arg_2);
    let var_4 = 55657u;
    return 618f;
}

fn func_2(arg_0: u32) -> bool {
    var var_0 = Struct_3(Struct_1(true), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(15986i, vec3<bool>(false, true, false)), Struct_1(false), 584f))) != 287f), Struct_1(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))), Struct_2(0i, select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true))));
    let var_1 = Struct_4(-686f, u_input.c, u_input.c);
    var var_2 = var_1.c.x;
    var var_3 = vec2<u32>(reverseBits(select(reverseBits(countOneBits(65852u)), min(arg_0, ~8003u), any(!vec4<bool>(false, var_0.b.a, true, true)))), 1u);
    let var_4 = max(countOneBits(_wgslsmith_sub_vec3_u32(~vec3<u32>(9870u, 15088u, 22635u), ~u_input.b.ywz) ^ reverseBits(var_1.c)), u_input.c);
    return (_wgslsmith_dot_vec3_u32(~max(vec3<u32>(62600u, u_input.a, 56412u), vec3<u32>(var_3.x, var_4.x, var_4.x)), u_input.b.zyx) ^ 4294967295u) < ~74191u;
}

fn func_1(arg_0: i32, arg_1: vec4<i32>) -> bool {
    let var_0 = vec4<bool>(func_2(firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 25770u, 0u, u_input.b.x), u_input.b), u_input.b.x))), true, false, true | any(vec2<bool>(true, true)));
    var var_1 = _wgslsmith_f_op_f32(1f + -1458f);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-252f, -353f)));
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -441f);
    return any(select(vec3<bool>(true, all(vec3<bool>(var_0.x, var_0.x, true)), !var_2), var_0.xzz, vec3<bool>(!var_0.x, any(var_0), any(vec3<bool>(false, var_0.x, var_2))))) | true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_1(-1i, firstTrailingBit(-vec4<i32>(-1i, -51441i, 1i, 1i)) & vec4<i32>(_wgslsmith_mult_i32(-7157i, -1i), _wgslsmith_div_i32(-37143i, 2147483647i), _wgslsmith_clamp_i32(-17439i, 951i, 7946i), 1i));
    var var_1 = select(-min(vec2<i32>(-17614i, _wgslsmith_dot_vec3_i32(vec3<i32>(-20946i, -2147483647i, 11573i), vec3<i32>(8754i, -9816i, 2147483647i))), ~_wgslsmith_mult_vec2_i32(vec2<i32>(14899i, 33845i), vec2<i32>(34807i, 32386i))), vec2<i32>(i32(-1i) * -35084i, -16456i), true);
    var_0 = !select(!(_wgslsmith_f_op_f32(-1529f + 472f) > _wgslsmith_f_op_f32(trunc(763f))), true, true);
    let var_2 = vec2<i32>(0i, _wgslsmith_dot_vec3_i32(max(vec3<i32>(var_1.x, _wgslsmith_div_i32(var_1.x, var_1.x), 2147483647i), select(vec3<i32>(var_1.x, 0i, -56302i) >> (u_input.c % vec3<u32>(32u)), vec3<i32>(0i, var_1.x, var_1.x), vec3<bool>(false, false, false))), -_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, var_1.x, var_1.x), vec3<i32>(var_1.x, -1i, var_1.x)) & _wgslsmith_mult_vec3_i32(~vec3<i32>(-2147483647i, var_1.x, var_1.x), vec3<i32>(0i, -4332i, -1i))));
    var_0 = false;
    var_1 = -vec2<i32>(2147483647i, ~(~var_1.x)) ^ select(-vec2<i32>(-32737i, var_1.x), -var_2, vec2<bool>(true, true));
    var var_3 = max(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 0u, 0u), ~u_input.b), 0u, max(_wgslsmith_dot_vec3_u32(vec3<u32>(49179u, 4294967295u, 4294967295u), vec3<u32>(u_input.a, u_input.c.x, 9286u)), select(32999u, u_input.b.x, true))), vec3<u32>(1u, _wgslsmith_mult_u32(4294967295u, u_input.a) & _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.a, u_input.b.x, 87289u, u_input.b.x)), _wgslsmith_mult_u32(u_input.a, u_input.a)) | _wgslsmith_clamp_vec3_u32(~countOneBits(vec3<u32>(0u, 1u, 4294967295u)), u_input.b.xwx, u_input.b.wxz));
    var var_4 = vec4<u32>(_wgslsmith_div_u32(u_input.a, ~var_3.x) >> (~4294967295u % 32u), 22193u, 41477u, 38858u);
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~71728u, 1u, max(var_2.x, 2147483647i), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(1474f * 1353f), 152f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1082f, 1201f))))), true)));
}

