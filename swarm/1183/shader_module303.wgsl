struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_1(select(select(!vec2<bool>(arg_1.c.x, true), vec2<bool>(true, true), _wgslsmith_sub_u32(22321u, arg_1.b.x) != 10367u), select(arg_1.a, select(vec2<bool>(false, false), select(global0.zz, arg_1.c, vec2<bool>(arg_1.a.x, true)), u_input.a.x <= 0u), vec2<bool>(arg_1.a.x, !global0.x)), vec2<bool>(arg_1.c.x, !arg_1.a.x)), arg_1.b, select(arg_1.a, global0.xx, true));
    var var_1 = vec3<i32>(-2147483647i, -abs(~(-68159i)), ~2147483647i);
    global0 = select(!select(vec3<bool>(true, true, !global0.x), vec3<bool>(true, all(vec2<bool>(false, true)), all(arg_0)), !(!arg_0)), !(!vec3<bool>(true, all(vec4<bool>(arg_0.x, true, true, arg_1.c.x)), true)), !var_0.a.x);
    var var_2 = -177f;
    var var_3 = _wgslsmith_mult_vec4_i32(abs(_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(var_1.x, -1i, var_1.x, 1i) & vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x)), vec4<i32>(-1i) * -vec4<i32>(var_1.x, var_1.x, -4497i, var_1.x))), _wgslsmith_mult_vec4_i32(firstTrailingBit(firstLeadingBit(vec4<i32>(var_1.x, 2147483647i, -75337i, var_1.x))), vec4<i32>(-var_1.x, var_1.x, _wgslsmith_dot_vec2_i32(-var_1.xy, vec2<i32>(40723i, var_1.x)), 1i)));
    return 45443u;
}

fn func_2(arg_0: bool) -> Struct_2 {
    global0 = !vec3<bool>(true, !(func_3(vec3<bool>(arg_0, true, false), Struct_1(vec2<bool>(false, true), u_input.a.yx, global0.xy)) != 0u), true);
    let var_0 = _wgslsmith_dot_vec2_i32(select(~countOneBits(~vec2<i32>(-23724i, 0i)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), ~vec2<i32>(13148i, 1i)), ~_wgslsmith_sub_i32(-31526i, 45116i)), select(false, true, true)), countOneBits(_wgslsmith_add_vec2_i32(max(vec2<i32>(1i, 1i), vec2<i32>(1i, 1i)), abs(reverseBits(vec2<i32>(20672i, 0i))))));
    global0 = !(!select(vec3<bool>(false, true, arg_0), !(!vec3<bool>(true, true, global0.x)), true));
    let var_1 = Struct_2(min(u_input.a.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(1u, 84191u, u_input.a.x, u_input.a.x)), reverseBits(vec4<u32>(1u, 1u, u_input.a.x, 61989u))), (u_input.a.x << (u_input.a.x % 32u)) ^ ~4294967295u)), !vec4<bool>(arg_0, _wgslsmith_mod_i32(2147483647i, -1i) > var_0, !global0.x | true, !any(global0.yz)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1045f - -212f))))), _wgslsmith_f_op_f32(floor(-392f))));
    global0 = select(!var_1.b.yxz, !vec3<bool>(all(!var_1.b.yw), !(28658i >= var_0), select(var_0, var_0, false) < _wgslsmith_sub_i32(var_0, -15010i)), all(var_1.b));
    return Struct_2(0u, vec4<bool>(any(!select(vec2<bool>(false, arg_0), var_1.b.yz, var_1.b.ww)), var_1.b.x, arg_0, _wgslsmith_div_f32(-567f, _wgslsmith_f_op_f32(floor(var_1.c))) >= _wgslsmith_f_op_f32(sign(var_1.c))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.c))))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: f32) -> vec3<bool> {
    var var_0 = -1i;
    let var_1 = Struct_3(func_2(any(select(vec2<bool>(true, false), arg_1, arg_0.a))), -23400i, -1651f);
    let var_2 = min(vec4<i32>(firstTrailingBit(-32487i) << (var_1.a.a % 32u), max(_wgslsmith_mult_i32(var_1.b, var_1.b), -var_1.b), _wgslsmith_sub_i32(-4068i, _wgslsmith_div_i32(-2147483647i, 2683i)), min(0i, var_1.b)), vec4<i32>(-1i, var_1.b, -13124i >> (~arg_0.b.x % 32u), -abs(-1i))) >> (~(~_wgslsmith_add_vec4_u32(~vec4<u32>(var_1.a.a, u_input.a.x, 48685u, 0u), vec4<u32>(33764u, arg_0.b.x, u_input.a.x, arg_0.b.x))) % vec4<u32>(32u));
    var var_3 = max(firstLeadingBit(~_wgslsmith_clamp_vec2_u32(arg_0.b, vec2<u32>(0u, 27689u), arg_0.b)), firstTrailingBit(vec2<u32>(func_3(vec3<bool>(true, arg_1.x, false), Struct_1(var_1.a.b.ww, arg_0.b, vec2<bool>(global0.x, var_1.a.b.x))), ~14412u)));
    let var_4 = arg_0.b.x;
    return vec3<bool>(true, any(select(var_1.a.b.yxy, vec3<bool>(true, var_2.x >= -1i, var_1.a.b.x), false)), global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(Struct_1(vec2<bool>(global0.x, true), vec2<u32>(u_input.a.x, ~u_input.a.x), !select(!global0.zx, vec2<bool>(global0.x, global0.x), !vec2<bool>(global0.x, global0.x))), vec2<bool>(false, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))));
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1600f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-430f)))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(685f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0)))), var_0));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -801f), _wgslsmith_f_op_f32(var_0 + var_1.x)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.x, 1888f)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0, -1527f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.x, -574f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-269f, 1135f), vec2<f32>(var_1.x, var_0)))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(152f, _wgslsmith_f_op_f32(-var_1.x)) * _wgslsmith_div_vec2_f32(vec2<f32>(-976f, var_1.x), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-166f, 1085f), vec2<f32>(var_1.x, 1111f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(u_input.a.xz, u_input.a.xx), -1970f);
}

