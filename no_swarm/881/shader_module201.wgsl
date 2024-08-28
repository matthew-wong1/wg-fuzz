struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec2<u32>) -> bool {
    return true;
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> bool {
    let var_0 = Struct_1(vec2<i32>(abs(u_input.a), _wgslsmith_add_i32(max(u_input.b.x, _wgslsmith_clamp_i32(0i, -19920i, u_input.b.x)), 1i)), ~_wgslsmith_mod_u32(~(~arg_0), 4294967295u));
    var var_1 = var_0;
    var_1 = var_0;
    var var_2 = countOneBits(~76998u);
    let var_3 = Struct_1(-(u_input.e.xx << (_wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(4294967295u, arg_0)), ~vec2<u32>(arg_0, 0u)) % vec2<u32>(32u))), ~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, arg_0, 4294967295u, arg_1.b), vec4<u32>(arg_0, arg_0, arg_1.b, var_1.b)) << (select(vec4<u32>(43587u, 0u, 40947u, var_0.b), vec4<u32>(u_input.d.x, arg_1.b, 8329u, u_input.d.x), vec4<bool>(false, false, false, false)) % vec4<u32>(32u)), ~vec4<u32>(u_input.c, var_1.b, 1u, 4294967295u) >> ((vec4<u32>(var_0.b, var_0.b, var_1.b, var_1.b) ^ vec4<u32>(arg_0, u_input.c, var_1.b, var_1.b)) % vec4<u32>(32u))));
    return any(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false)))));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = !(!vec4<bool>(false, arg_0.b <= 26807u, select(func_2(vec2<u32>(20500u, 0u)), all(vec2<bool>(false, false)), all(vec4<bool>(true, false, true, true))), true));
    var var_1 = vec4<bool>(func_3(~(~_wgslsmith_div_u32(30869u, arg_0.b)), Struct_1(_wgslsmith_add_vec2_i32(arg_0.a, vec2<i32>(u_input.b.x, arg_0.a.x)) | ~arg_0.a, 0u)), _wgslsmith_clamp_u32(~4294967295u, arg_0.b, _wgslsmith_sub_u32(5921u, arg_0.b) >> (_wgslsmith_add_u32(arg_0.b, arg_0.b) % 32u)) <= _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(arg_0.b, 12846u), arg_0.b), ~abs(u_input.d.yz)), ~u_input.a < -_wgslsmith_sub_i32(abs(-2147483647i), max(u_input.b.x, -504i)), !var_0.x);
    let var_2 = _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(31361u, 29733u, 4294967295u), vec3<u32>(0u, u_input.d.x, u_input.c))), u_input.d.x)), vec2<u32>(4294967295u, _wgslsmith_dot_vec2_u32(u_input.d.xx, vec2<u32>(arg_0.b << (u_input.d.x % 32u), ~arg_0.b))));
    var var_3 = vec4<i32>(_wgslsmith_mult_i32(select(-20246i, firstLeadingBit(abs(73225i)), all(vec4<bool>(var_1.x, var_1.x, true, false)) || (var_0.x & var_0.x)), 1i), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(-select(vec3<i32>(arg_0.a.x, -1i, -2147483647i), vec3<i32>(-5699i, -37132i, u_input.e.x), var_0.yzw), -firstLeadingBit(u_input.e)), u_input.e), u_input.b.x, ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(u_input.e, _wgslsmith_add_vec3_i32(u_input.b, u_input.e)), ~u_input.a, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(43615i, -2147483647i, u_input.e.x, u_input.a)), ~vec4<i32>(18898i, 84617i, -26528i, -1i))));
    let var_4 = _wgslsmith_mod_i32(30490i, arg_0.a.x);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = Struct_1(min(~(-u_input.e.zy), -u_input.b.zz), 28038u);
    var_1 = Struct_1(~vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, -11930i), -u_input.e.zx), _wgslsmith_dot_vec4_i32(-vec4<i32>(var_1.a.x, 39317i, 2147483647i, u_input.b.x), vec4<i32>(-62967i, -25197i, u_input.a, 2147483647i))), _wgslsmith_div_u32(4294967295u, var_1.b));
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-297f, 2473f), vec2<f32>(-1115f, 2078f))))))))));
    var var_3 = func_1(Struct_1(select(abs(var_1.a), vec2<i32>(~var_1.a.x, select(var_1.a.x, u_input.b.x, true)), vec2<bool>(true, true)), ~(~7466u)));
    let var_4 = Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(var_3.a.x, var_1.a.x), abs(vec2<i32>(var_1.a.x, ~var_1.a.x))), _wgslsmith_clamp_u32(min(_wgslsmith_div_u32(~var_3.b, u_input.d.x), ~(var_1.b | u_input.c)), var_3.b, (_wgslsmith_mult_u32(692u, 20752u) & ~var_3.b) >> (37800u % 32u)));
    var var_5 = func_1(func_1(var_4));
    var var_6 = (i32(-1i) * -2147483647i) > abs(_wgslsmith_sub_i32(firstLeadingBit(var_1.a.x ^ var_1.a.x), select(i32(-1i) * -334i, var_1.a.x, false)));
    let x = u_input.a;
    s_output = StorageBuffer(-24303i, vec2<i32>(_wgslsmith_add_i32(-1i, max(max(u_input.e.x, var_4.a.x), var_5.a.x)), i32(-1i) * -60698i), _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_div_i32(~var_5.a.x, max(var_5.a.x, -1i)), -_wgslsmith_mult_i32(2147483647i, var_4.a.x), var_5.a.x), min(abs(u_input.e), ~_wgslsmith_mult_vec3_i32(u_input.e, u_input.b))), _wgslsmith_clamp_vec2_u32(~u_input.d.zy, ~vec2<u32>(var_3.b, 1u), u_input.d.zx));
}

