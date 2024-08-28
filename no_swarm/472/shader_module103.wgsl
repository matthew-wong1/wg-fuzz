struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1015f + 1000f), _wgslsmith_f_op_f32(757f * 1674f), _wgslsmith_div_f32(-786f, -519f), _wgslsmith_div_f32(1000f, -1000f))), true)));
    let var_1 = vec3<bool>(true, any(vec4<bool>(true, true | any(vec4<bool>(false, false, false, true)), true, true)), false);
    let var_2 = Struct_1(-_wgslsmith_div_vec3_i32(u_input.b.www, _wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(arg_1, u_input.b.x, u_input.b.x)), select(u_input.b.wyz, u_input.b.yzy, true))), vec4<i32>(_wgslsmith_mult_i32(1i ^ u_input.b.x, _wgslsmith_mult_i32(reverseBits(-20161i), arg_1 << (arg_0.x % 32u))), reverseBits(_wgslsmith_sub_i32(u_input.b.x, -arg_1)), _wgslsmith_sub_i32(-2147483647i, u_input.b.x), 6833i << ((1u >> (arg_0.x % 32u)) % 32u)), var_0.yyy, ~(_wgslsmith_clamp_u32(38462u, u_input.e.x, 1u) ^ 1945u), var_1);
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_2.c.x)))), _wgslsmith_f_op_f32(var_0.x * var_0.x)));
    let var_3 = arg_0.wxz;
    return 1f;
}

fn func_2() -> u32 {
    let var_0 = 2147483647i;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(~vec4<u32>(u_input.d, 4294967295u, 0u, 4294967295u), var_0)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-800f))) - 2774f));
    let var_2 = Struct_2(select(vec2<u32>(u_input.e.x, 10003u), ~(u_input.e.yy >> (u_input.e.yx % vec2<u32>(32u))), true && any(vec4<bool>(false, false, true, false))) >> (u_input.e.yy % vec2<u32>(32u)));
    var var_3 = _wgslsmith_clamp_i32(u_input.b.x, -1i, _wgslsmith_clamp_i32(-_wgslsmith_dot_vec3_i32(u_input.b.wwy, u_input.b.wyw), -var_0 ^ var_0, -_wgslsmith_dot_vec4_i32(-u_input.b, _wgslsmith_mult_vec4_i32(u_input.b, u_input.b))));
    var_3 = 1i;
    return _wgslsmith_dot_vec3_u32(u_input.e, u_input.e) | ~var_2.a.x;
}

fn func_1(arg_0: vec3<u32>) -> StorageBuffer {
    let var_0 = -2147483647i;
    var var_1 = true;
    let var_2 = ~vec4<u32>(arg_0.x, func_2(), abs(reverseBits(~0u)), _wgslsmith_dot_vec2_u32((vec2<u32>(arg_0.x, 3670u) >> (arg_0.yz % vec2<u32>(32u))) & _wgslsmith_clamp_vec2_u32(vec2<u32>(69845u, 66855u), vec2<u32>(u_input.c, 0u), vec2<u32>(3560u, 25467u)), select(vec2<u32>(arg_0.x, 0u), ~u_input.e.zx, false)));
    var_1 = var_0 != _wgslsmith_dot_vec3_i32(min(reverseBits(select(u_input.b.yyx, u_input.b.wyy, vec3<bool>(false, false, false))), u_input.b.zwy), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-602i, u_input.a, 61484i), u_input.b.ywy), abs(vec3<i32>(77813i, var_0, u_input.a))));
    var var_3 = Struct_2(~abs(arg_0.zz) & u_input.e.xy);
    return StorageBuffer(~_wgslsmith_clamp_i32(-14630i, _wgslsmith_mult_i32(var_0 & 0i, _wgslsmith_dot_vec3_i32(u_input.b.wxw, vec3<i32>(var_0, var_0, u_input.b.x))), _wgslsmith_div_i32(-40508i, 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(reverseBits(select(_wgslsmith_div_vec3_u32(~u_input.e, u_input.e | vec3<u32>(46842u, u_input.d, 0u)), vec3<u32>(u_input.d, _wgslsmith_add_u32(u_input.c, u_input.c), _wgslsmith_div_u32(0u, 52983u)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), true))));
}

