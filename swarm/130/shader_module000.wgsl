struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(2147483647i, 1i);

var<private> global1: vec3<i32>;

var<private> global2: i32 = i32(-2147483648);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec2<i32>) -> f32 {
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -182f), -1326f)))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -625f)))), -152f);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(836f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-169f + _wgslsmith_f_op_f32(func_3(arg_1, true, Struct_1(-1i, vec3<bool>(true, true, arg_1.b.x)), vec2<i32>(arg_0.a, -1i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(global0.x, vec3<bool>(arg_2.b.x, arg_1.b.x, true)), true, arg_0, global1.zy)) + _wgslsmith_f_op_f32(floor(887f)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-477f, 860f), _wgslsmith_f_op_f32(f32(-1f) * -605f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 646f) - vec4<f32>(_wgslsmith_f_op_f32(step(-613f, -712f)), _wgslsmith_f_op_f32(f32(-1f) * -968f), -441f, 1f)))), vec4<bool>(arg_1.b.x, true, true, arg_2.b.x)));
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(arg_1.a, ~1i, _wgslsmith_mod_i32(global0.x, 2147483647i) >> (3976u % 32u)), ~1i, 3323i, _wgslsmith_mult_i32(~(-18055i) ^ _wgslsmith_sub_i32(24403i, arg_2.a), arg_2.a)), vec4<i32>(-1i, 1948i >> (firstTrailingBit(1u) % 32u), ~u_input.b, select(2147483647i, _wgslsmith_mod_i32(abs(global1.x), 19561i), select(false, arg_0.b.x & arg_0.b.x, !arg_1.b.x))));
    let var_2 = arg_2.b.x;
    global2 = reverseBits(reverseBits(arg_2.a));
    global2 = _wgslsmith_div_i32(-1i, countOneBits(global0.x) & abs(-1i)) | ~(~abs(arg_1.a));
    return true;
}

fn func_1() -> u32 {
    var var_0 = Struct_1(select(~(i32(-1i) * -2147483647i), global1.x, true), vec3<bool>(true | any(vec4<bool>(true, true, true, true)), !any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), false)), -_wgslsmith_mult_i32(-2147483647i, global1.x) != global1.x));
    let var_1 = select(select(!vec2<bool>(func_2(Struct_1(-21892i, var_0.b), Struct_1(-2147483647i, vec3<bool>(var_0.b.x, false, true)), Struct_1(u_input.b, vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x))), true), vec2<bool>(true, !any(vec2<bool>(var_0.b.x, false))), select(var_0.b.yz, var_0.b.yy, true)), vec2<bool>(true, !(!var_0.b.x)), select(vec2<bool>(!all(vec3<bool>(var_0.b.x, var_0.b.x, true)), true), vec2<bool>(true, true), select(var_0.b.x && true, !all(vec3<bool>(var_0.b.x, true, var_0.b.x)), var_0.b.x)));
    var_0 = Struct_1(~(~_wgslsmith_clamp_i32(var_0.a, -global0.x, abs(global1.x))), var_0.b);
    let var_2 = min(global1.x >> (1u % 32u), ~abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-9024i, -27928i), max(global1.zx, vec2<i32>(-1i, var_0.a)))));
    var var_3 = var_0.b;
    return ~select(20209u, reverseBits(36381u), true) | ~4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(countOneBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(21390u, 1u), vec2<u32>(22520u, 1u))), firstTrailingBit(~func_1())), ~(~vec2<u32>(~33311u, _wgslsmith_dot_vec3_u32(vec3<u32>(5960u, 1u, 11947u), vec3<u32>(0u, 8420u, 31736u)))));
    var_0 = (~(~abs(vec2<u32>(92044u, 67542u))) & max(select(vec2<u32>(var_0.x, var_0.x), abs(vec2<u32>(4294967295u, var_0.x)), vec2<bool>(true, true)), ~firstLeadingBit(vec2<u32>(var_0.x, 29840u)))) >> (_wgslsmith_div_vec2_u32(~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(29917u, 43741u), vec2<u32>(53216u, 4294967295u), vec2<u32>(7135u, var_0.x))), vec2<u32>(select(var_0.x, var_0.x, true) >> (max(9477u, 0u) % 32u), ~(var_0.x | var_0.x))) % vec2<u32>(32u));
    let var_1 = _wgslsmith_div_i32(global1.x, _wgslsmith_sub_i32(-_wgslsmith_add_i32(2147483647i, global0.x), global1.x) >> (35753u % 32u));
    global2 = countOneBits(global1.x);
    var_0 = _wgslsmith_clamp_vec2_u32(~abs(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, 36533u), vec2<u32>(var_0.x, 4294967295u)), ~vec2<u32>(var_0.x, var_0.x))), vec2<u32>(~countOneBits(_wgslsmith_add_u32(17072u, var_0.x)), ~1u), _wgslsmith_clamp_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, 5547u), vec2<u32>(var_0.x, var_0.x) ^ vec2<u32>(22418u, var_0.x)), max(vec2<u32>(var_0.x, 9551u), vec2<u32>(var_0.x, 4294967295u) | vec2<u32>(0u, 0u)) & vec2<u32>(4294967295u, var_0.x & var_0.x), _wgslsmith_add_vec2_u32(~vec2<u32>(1u, 1u), select(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 36644u), vec2<u32>(var_0.x, var_0.x)), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 11958u), vec2<u32>(var_0.x, 1458u)), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false))))));
    let var_2 = Struct_1(global1.x, select(vec3<bool>(true, _wgslsmith_mult_i32(2147483647i, global0.x) > _wgslsmith_mod_i32(-1i, global1.x), ~1u < (var_0.x ^ var_0.x)), vec3<bool>(true, true, true), -(i32(-1i) * -1i) <= _wgslsmith_add_i32(12693i, ~u_input.b)));
    let var_3 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -2289f, _wgslsmith_f_op_f32(step(685f, 1000f))))), ~(~firstLeadingBit(vec3<u32>(var_0.x, 38207u, var_0.x)) << (_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, var_0.x, 89272u), vec3<u32>(var_0.x, 1u, 153065u)), firstLeadingBit(vec3<u32>(var_0.x, var_0.x, 4294967295u))) % vec3<u32>(32u))));
}

