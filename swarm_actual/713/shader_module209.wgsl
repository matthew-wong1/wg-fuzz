struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: i32;

var<private> global2: array<Struct_1, 10>;

var<private> global3: array<Struct_1, 22>;

var<private> global4: Struct_3 = Struct_3(vec2<u32>(50990u, 0u), vec4<i32>(-7844i, -3340i, 27062i, -1i), vec3<u32>(0u, 1u, 19856u), 1u, vec3<bool>(true, true, true));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: vec4<bool>) -> f32 {
    global1 = -_wgslsmith_sub_i32(1i, u_input.d << (16759u % 32u));
    global1 = 10165i;
    global3 = array<Struct_1, 22>();
    var var_0 = _wgslsmith_mod_vec3_u32(u_input.a.ywz, max(reverseBits(vec3<u32>(0u, ~u_input.c, abs(1u))), u_input.a.wxx));
    let var_1 = Struct_1(!arg_2, ~u_input.a, -max(-23552i, 2737i >> (firstTrailingBit(var_0.x) % 32u)), 82437u);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(abs(arg_1)), true)) * -386f)));
}

fn func_2(arg_0: u32) -> vec2<u32> {
    let var_0 = vec3<bool>(0i != _wgslsmith_add_i32(25165i, global4.b.x ^ ~u_input.d), _wgslsmith_f_op_f32(func_3(global4.b, _wgslsmith_f_op_f32(f32(-1f) * -1650f), vec4<bool>(true, global4.e.x, false, true))) == 1018f, global4.e.x);
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1226f, 542f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-129f, 170f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-449f, -339f))) + vec2<f32>(_wgslsmith_f_op_f32(sign(-1452f)), _wgslsmith_f_op_f32(trunc(-317f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)));
    return ~_wgslsmith_clamp_vec2_u32(vec2<u32>(global4.c.x, 4294967295u), ~firstTrailingBit(reverseBits(u_input.a.zw)), vec2<u32>(max(_wgslsmith_div_u32(27519u, global4.d), ~global4.d), global4.d));
}

fn func_1() -> Struct_2 {
    global3 = array<Struct_1, 22>();
    global3 = array<Struct_1, 22>();
    global3 = array<Struct_1, 22>();
    let var_0 = Struct_3(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.c, 4294967295u, u_input.c), u_input.a), reverseBits(0u))), func_2(u_input.b)), firstLeadingBit(countOneBits(global4.b)), vec3<u32>(16425u, 39361u, abs(~4294967295u << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global4.d, 0u, global4.a.x), u_input.a) % 32u))), ~_wgslsmith_div_u32(3622u, 24562u), global4.e);
    let var_1 = var_0.b.x;
    return Struct_2(Struct_1(!(!(!vec4<bool>(var_0.e.x, false, global4.e.x, global4.e.x))), firstTrailingBit(u_input.a), global4.b.x, ~select(1u, firstTrailingBit(79460u), var_0.e.x)), select(false || all(vec2<bool>(var_0.e.x, var_0.e.x)), any(vec2<bool>(true, true)), any(vec3<bool>(var_0.e.x, true, global4.e.x))), Struct_1(vec4<bool>(true, true, any(!vec4<bool>(false, var_0.e.x, var_0.e.x, false)), true), ~u_input.a | countOneBits(u_input.a), select(_wgslsmith_mult_i32(~(-39453i), ~(-33735i)), max(-var_1, _wgslsmith_sub_i32(global4.b.x, global4.b.x)), all(vec4<bool>(true, true, true, true))), global4.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = Struct_3(countOneBits(reverseBits(abs(global4.a))), vec4<i32>(var_0.a.c, -(~(-1i)), max(_wgslsmith_dot_vec3_i32(~global4.b.ywy, vec3<i32>(33239i, -56790i, u_input.d)), reverseBits(-1i)), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global4.b.x, -40532i, global4.b.x), ~global4.b.xxy, _wgslsmith_sub_vec3_i32(global4.b.wxx, global4.b.zwy)), _wgslsmith_mult_vec3_i32(vec3<i32>(global4.b.x, u_input.d, u_input.d), vec3<i32>(u_input.d, 3677i, -54012i)))), ~select(abs(vec3<u32>(var_0.c.d, 149363u, u_input.b)), firstLeadingBit(var_0.c.b.zyw), global4.e.x), 0u, global4.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_3(abs(-var_1.b), _wgslsmith_f_op_f32(f32(-1f) * -490f), !func_1().a.a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(vec4<i32>(1i, -1i, var_1.b.x, u_input.d), 485f, vec4<bool>(var_0.a.a.x, false, var_0.b, true))), _wgslsmith_f_op_f32(select(1000f, -1378f, var_0.a.a.x)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1553f), _wgslsmith_f_op_f32(round(1000f)))))), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(global4.c.x, 4294967295u)), ~var_0.a.b.xz), ~var_1.c.x));
}

