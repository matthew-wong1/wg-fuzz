struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<i32, 22>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: u32) -> i32 {
    var var_0 = global0.b;
    let var_1 = u_input.d ^ vec4<u32>(_wgslsmith_mod_u32(28382u, _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(u_input.c, 692u, u_input.c, 1u))) ^ ~(~u_input.d.x), arg_0.b << (arg_0.b % 32u), ~(~abs(u_input.c)), _wgslsmith_mod_u32(20974u, 1263u & u_input.c));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a * arg_0.d.ywy))), select(select(select(global0.b, !vec2<bool>(var_0.x, var_0.x), var_0.x), !(!vec2<bool>(var_0.x, false)), !vec2<bool>(global0.c, true)), global0.b, !vec2<bool>(global0.b.x, !global0.c)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.a + 672f))))) >= _wgslsmith_f_op_f32(step(global0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-435f + -1670f), _wgslsmith_f_op_f32(-503f - -404f)))));
    let var_3 = vec4<i32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(u_input.c, 0u), var_1.x, u_input.c << (var_1.x % 32u), 10448u), u_input.d, vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 73232u), vec3<u32>(44648u, arg_0.b, var_1.x)), arg_0.b, arg_0.b, _wgslsmith_dot_vec3_u32(u_input.d.wwx, var_1.yzy))), u_input.d), 22u)], -2147483647i, countOneBits(1i), 16017i);
    var_2 = Struct_2(vec3<f32>(arg_0.c.x, var_2.a.x, arg_0.d.x), select(vec2<bool>(false, !(7603i < u_input.b.x)), global0.b, !var_2.b), global0.c);
    return u_input.b.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: u32, arg_2: vec2<u32>, arg_3: vec4<u32>) -> bool {
    global1 = array<i32, 22>();
    let var_0 = firstLeadingBit(vec4<i32>(func_3(Struct_1(970f, 38436u, vec4<f32>(-1621f, global0.a.x, global0.a.x, global0.a.x), vec4<f32>(-192f, global0.a.x, 563f, global0.a.x)), _wgslsmith_mod_vec2_i32(u_input.b, -vec2<i32>(global1[_wgslsmith_index_u32(arg_1, 22u)], 2147483647i)), ~u_input.c ^ arg_2.x), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_3.x, arg_2.x), 22u)] >> (arg_2.x % 32u), u_input.a, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.c, arg_3.x) ^ 0u, 4294967295u), 22u)]));
    let var_1 = Struct_1(global0.a.x, firstLeadingBit(arg_2.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(global0.a.x, 382f), -589f, _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(global0.a.x - global0.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global0.a.x, -1171f, global0.a.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a.x, -440f, _wgslsmith_f_op_f32(587f * global0.a.x), global0.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global0.a.x, global0.a.x, 397f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global0.a.x, global0.a.x, 184f))), vec4<bool>(all(global0.b), false, false, global0.b.x && global0.b.x)))));
    let var_2 = vec3<i32>(-2147483647i, firstLeadingBit(1i) | ~u_input.a, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-12084i, _wgslsmith_clamp_i32(~var_0.x, u_input.a, _wgslsmith_mod_i32(39612i, var_0.x)), 2147483647i), var_0.x));
    global0 = Struct_2(vec3<f32>(-1766f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1655f) - 2576f)), _wgslsmith_f_op_f32(502f * global0.a.x)), vec2<bool>(any(!(!arg_0)), global0.c), arg_0.x);
    return global0.c;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<i32>) -> f32 {
    var var_0 = (firstTrailingBit(-2147483647i) >> (4294967295u % 32u)) == -2147483647i;
    let var_1 = u_input.d;
    var_0 = global0.b.x;
    var_0 = any(!(!(!vec3<bool>(global0.b.x, false, global0.b.x))));
    let var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-2112f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1242f + 231f), _wgslsmith_f_op_f32(trunc(546f)), all(vec4<bool>(global0.c, false, global0.c, global0.c))))), global0.a.x, 476f), vec2<bool>(any(select(vec3<bool>(true, false, global0.b.x), vec3<bool>(global0.c, global0.b.x, false), vec3<bool>(true, global0.b.x, true))) & func_2(!vec4<bool>(global0.b.x, global0.b.x, global0.b.x, global0.b.x), ~u_input.d.x, vec2<u32>(101892u, var_1.x), u_input.d), false), false);
    return _wgslsmith_f_op_f32(floor(var_2.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a.xx;
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<i32>(16677i, u_input.a), vec4<i32>(-5195i, global1[_wgslsmith_index_u32(u_input.d.x, 22u)], 11536i, u_input.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x))), vec3<f32>(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(exp2(var_0.x)), any(vec3<bool>(true, global0.c, false)))), _wgslsmith_f_op_f32(max(var_0.x, 1000f)), var_0.x))), vec2<bool>(false, true), false);
    global1 = array<i32, 22>();
    let var_2 = !vec4<bool>(var_1.b.x, all(select(select(vec3<bool>(false, true, global0.c), vec3<bool>(false, true, var_1.b.x), false), select(vec3<bool>(var_1.c, true, true), vec3<bool>(true, global0.c, true), var_1.c), !global0.c)), any(!(!vec4<bool>(true, false, global0.b.x, true))), !(min(u_input.c, 0u) > max(4294967295u, u_input.c)));
    var_1 = Struct_2(vec3<f32>(-694f, -2175f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(var_1.a.x * var_0.x), !var_2.x)))), select(vec2<bool>(select(true, !var_2.x, func_2(vec4<bool>(false, true, true, false), 22382u, vec2<u32>(u_input.d.x, u_input.c), u_input.d)), false), vec2<bool>(0u > _wgslsmith_mod_u32(u_input.d.x, 0u), !any(global0.b)), !(!select(var_1.b, global0.b, true))), _wgslsmith_mult_i32(-(u_input.b.x & u_input.a), _wgslsmith_mod_i32(-2147483647i, -u_input.b.x)) < abs(-(1i >> (u_input.c % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(firstTrailingBit(u_input.b.x), -(-global1[_wgslsmith_index_u32(1269u, 22u)] ^ (i32(-1i) * -1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))))), ~(vec4<i32>(reverseBits(15215i), i32(-1i) * -44771i, abs(global1[_wgslsmith_index_u32(35314u, 22u)]), u_input.b.x << (0u % 32u)) & firstLeadingBit(~vec4<i32>(1i, u_input.a, 38142i, global1[_wgslsmith_index_u32(5711u, 22u)]))));
}

