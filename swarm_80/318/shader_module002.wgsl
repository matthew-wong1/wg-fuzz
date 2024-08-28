struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: f32,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_4) -> vec2<bool> {
    var var_0 = ~(~(~(~(~vec4<u32>(u_input.d, 76310u, 4294967295u, u_input.d)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(430f, arg_0.c, arg_0.c, arg_0.c))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, -1908f, arg_0.c, 613f) * vec4<f32>(arg_0.c, -835f, arg_0.c, arg_0.c)))))));
    let var_2 = Struct_4(1i ^ u_input.b, 1u, -596f, all(select(select(vec2<bool>(false, true), !vec2<bool>(arg_0.d, arg_0.e.a), arg_0.d), !select(vec2<bool>(true, false), vec2<bool>(arg_0.d, false), false), true)), Struct_2(!(!(!arg_0.e.a)), ~select(1u, ~var_0.x, all(vec3<bool>(false, arg_0.d, arg_0.d)))));
    var var_3 = select(true, ~(arg_0.a >> (7951u % 32u)) == -2147483647i, false);
    return !(!(!vec2<bool>(arg_0.e.a, any(vec3<bool>(var_2.d, true, var_2.d)))));
}

fn func_3(arg_0: f32) -> vec3<i32> {
    let var_0 = u_input.a;
    var var_1 = vec2<u32>(u_input.d, select(33399u, _wgslsmith_div_u32(1u, _wgslsmith_div_u32(~u_input.d, u_input.c.x)), !func_1(Struct_4(var_0.x, u_input.c.x, -872f, true, Struct_2(false, u_input.d))).x));
    var_1 = max(~vec2<u32>(1u, ~34489u) | ~_wgslsmith_clamp_vec2_u32(firstLeadingBit(u_input.c.yx), ~vec2<u32>(5291u, u_input.d), vec2<u32>(64341u, 73152u)), u_input.c.xz);
    var_1 = vec2<u32>(var_1.x, ~var_1.x);
    var_1 = ~vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.c.xx, vec2<u32>(1u, 48143u)) ^ ~u_input.c.x, ~max(var_1.x, 87736u)) & max(_wgslsmith_add_vec2_u32(u_input.c.xx, _wgslsmith_mod_vec2_u32(~u_input.c.zz, _wgslsmith_sub_vec2_u32(vec2<u32>(var_1.x, u_input.d), u_input.c.yx))), vec2<u32>(4294967295u, ~(var_1.x | u_input.d)));
    return ~(~vec3<i32>(19720i, 2147483647i, 0i << (_wgslsmith_sub_u32(var_1.x, 1u) % 32u)));
}

fn func_2() -> f32 {
    var var_0 = true;
    var_0 = u_input.a.x >= (u_input.a.x ^ (u_input.a.x >> (~u_input.d % 32u)));
    var var_1 = _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(func_3(-1866f), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, 43039i, u_input.a.x), vec3<i32>(3216i, u_input.a.x, 2147483647i) ^ vec3<i32>(u_input.b, u_input.b, u_input.a.x), firstLeadingBit(vec3<i32>(u_input.a.x, 19195i, 12414i)))) | (_wgslsmith_add_i32(~u_input.a.x, 1i) >> (~1u % 32u)), _wgslsmith_dot_vec3_i32(func_3(_wgslsmith_f_op_f32(-854f - -1731f)), ~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, -2147483647i, u_input.a.x), vec3<i32>(u_input.b, 36129i, u_input.b))) & -1i);
    var_0 = u_input.d < ~u_input.c.x;
    var var_2 = 4294967295u;
    return -1076f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(false, all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(true, true, false))), vec2<bool>(true, u_input.c.x == u_input.d), all(func_1(Struct_4(-6439i, u_input.d, 819f, true, Struct_2(true, 6481u)))))));
    var var_1 = Struct_2(!var_0.x || var_0.x, u_input.c.x);
    var var_2 = -1000f;
    let var_3 = _wgslsmith_f_op_f32(-1107f + _wgslsmith_f_op_f32(func_2()));
    let var_4 = any(vec3<bool>(true, true, true));
    let var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_div_i32(select(-u_input.b, _wgslsmith_div_i32(u_input.a.x, u_input.a.x), u_input.b >= 17551i), u_input.a.x), u_input.a.x, 33843i), ~_wgslsmith_clamp_vec3_u32(~u_input.c, u_input.c, ~vec3<u32>(0u, 4294967295u, 6045u)) | vec3<u32>(max(~54216u, 4809u), 1u, var_1.b), ~_wgslsmith_clamp_vec2_u32(~(~vec2<u32>(43184u, u_input.c.x)), ~(vec2<u32>(var_1.b, 39371u) >> (vec2<u32>(var_1.b, var_1.b) % vec2<u32>(32u))), abs(~u_input.c.zy)), _wgslsmith_sub_u32(max(var_1.b, 11258u), 72920u), abs(~(~var_1.b) >> (reverseBits(~u_input.d) % 32u)));
}

