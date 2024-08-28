struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> bool {
    let var_0 = 1u;
    var var_1 = ~_wgslsmith_add_vec3_u32(select(vec3<u32>(_wgslsmith_add_u32(0u, var_0), u_input.b, max(1u, var_0)), (vec3<u32>(952u, 28936u, var_0) << (vec3<u32>(u_input.b, u_input.b, 4294967295u) % vec3<u32>(32u))) & _wgslsmith_sub_vec3_u32(vec3<u32>(72042u, 60256u, var_0), vec3<u32>(var_0, u_input.b, var_0)), false), countOneBits(reverseBits(vec3<u32>(37518u, 58500u, u_input.b)) << ((vec3<u32>(u_input.b, var_0, 1u) << (vec3<u32>(var_0, 0u, var_0) % vec3<u32>(32u))) % vec3<u32>(32u))));
    let var_2 = arg_0.e.wwz;
    let var_3 = -select(_wgslsmith_sub_vec2_i32(firstLeadingBit(arg_0.d.xz), arg_0.c.xy), vec2<i32>(0i, ~_wgslsmith_sub_i32(arg_0.c.x, -20119i)), arg_1);
    var var_4 = arg_0;
    return !arg_0.b.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: i32) -> f32 {
    let var_0 = arg_2;
    let var_1 = var_0.b.x;
    var var_2 = select(select(!select(var_0.a, arg_0.a, select(arg_2.a, var_0.a, vec3<bool>(false, arg_2.b.x, true))), vec3<bool>(true && any(vec2<bool>(true, false)), select(false, true, var_0.a.x), any(vec4<bool>(arg_0.a.x, false, arg_2.b.x, var_0.a.x))), arg_0.a), vec3<bool>(!all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, arg_0.a.x, true), vec4<bool>(arg_0.b.x, arg_2.a.x, false, false))), all(!(!vec4<bool>(true, true, true, arg_2.a.x))), false | select(func_3(var_0, true), arg_2.a.x & var_1, true)), ((arg_0.a.x | true) & true) & any(!(!arg_2.a)));
    var var_3 = 105f;
    var var_4 = !vec3<bool>(arg_2.a.x, true, any(arg_0.a));
    return _wgslsmith_f_op_f32(arg_0.e.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.e.x * -1000f), -331f)))) - _wgslsmith_f_op_f32(var_0.e.x + 304f)));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(arg_1.e.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-663f)) - arg_1.e.x) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(Struct_1(arg_1.a, vec2<bool>(arg_1.a.x, arg_1.a.x), u_input.a, vec3<i32>(arg_1.d.x, u_input.a.x, 1i), vec4<f32>(arg_1.e.x, arg_1.e.x, 1219f, arg_1.e.x)), vec4<i32>(2147483647i, -23708i, -11487i, u_input.a.x), Struct_1(arg_1.a, arg_1.a.yy, u_input.a, u_input.a, vec4<f32>(arg_1.e.x, arg_1.e.x, -183f, arg_1.e.x)), 1i)))))));
    var var_1 = -1i;
    var var_2 = !arg_1.b.x;
    var var_3 = arg_1.a;
    let var_4 = u_input.a.xz;
    return arg_1.a.zz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!vec3<bool>(false, !any(vec2<bool>(true, true)), all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), true))), select(vec2<bool>(true, any(vec4<bool>(false, false, true, false))), !func_1(u_input.b, Struct_1(vec3<bool>(false, false, false), vec2<bool>(true, true), vec3<i32>(u_input.a.x, u_input.a.x, 0i), vec3<i32>(-22418i, -1i, u_input.a.x), vec4<f32>(-103f, 968f, 183f, -658f))), vec2<bool>(true, true)), -vec3<i32>(firstLeadingBit(~(-2147483647i)), -2147483647i, 47687i), u_input.a, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(960f)), _wgslsmith_f_op_f32(min(422f, 743f)), _wgslsmith_f_op_f32(step(-293f, 709f)), _wgslsmith_f_op_f32(ceil(196f)))))));
    var_0 = Struct_1(var_0.a, select(select(var_0.b, select(var_0.b, vec2<bool>(false, true), false), var_0.a.x), select(!(!vec2<bool>(false, var_0.a.x)), select(select(vec2<bool>(true, var_0.b.x), vec2<bool>(var_0.b.x, true), false), var_0.a.zx, vec2<bool>(false, true)), any(select(vec4<bool>(var_0.b.x, true, false, false), vec4<bool>(var_0.a.x, false, true, var_0.a.x), true))), !vec2<bool>(!var_0.a.x, var_0.b.x)), ~u_input.a, u_input.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.e, _wgslsmith_f_op_vec4_f32(-var_0.e))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.e.x + var_0.e.x), var_0.e.x, var_0.e.x, _wgslsmith_f_op_f32(433f * -1357f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.x, -1000f, var_0.e.x, -340f) - var_0.e), var_0.e))));
    let var_1 = Struct_1(!(!(!(!vec3<bool>(var_0.b.x, var_0.b.x, false)))), var_0.a.zx, select(u_input.a, ~u_input.a, any(select(select(var_0.a, vec3<bool>(var_0.b.x, false, var_0.b.x), vec3<bool>(false, var_0.a.x, var_0.a.x)), !var_0.a, var_0.b.x))), vec3<i32>(-27445i, (-var_0.d.x ^ 1i) ^ ~var_0.c.x, _wgslsmith_mod_i32(1i, ~u_input.a.x | _wgslsmith_sub_i32(1i, u_input.a.x))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.x, var_0.e.x, -1152f, -789f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-486f, var_0.e.x, -1221f, var_0.e.x), vec4<f32>(var_0.e.x, var_0.e.x, 2024f, -2496f))))))));
    var_0 = var_1;
    var_0 = Struct_1(var_0.a, var_1.a.xx, min(~reverseBits(abs(u_input.a)), select(vec3<i32>(-33201i, var_1.d.x, -13087i), _wgslsmith_mod_vec3_i32(var_0.d, vec3<i32>(u_input.a.x, 1i, u_input.a.x)), var_0.b.x) ^ var_0.d), -_wgslsmith_add_vec3_i32(~vec3<i32>(2147483647i, u_input.a.x, -2147483647i) >> (vec3<u32>(4294967295u, u_input.b, 17403u) % vec3<u32>(32u)), ~(-var_0.c)), _wgslsmith_f_op_vec4_f32(var_0.e + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-var_1.e.x), 1236f, -1222f, _wgslsmith_f_op_f32(-var_0.e.x))))));
    var_0 = var_1;
    var var_2 = (~(-_wgslsmith_clamp_i32(-1i, -6794i, -54606i)) != _wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.a.xy, vec2<i32>(13910i, u_input.a.x))), 58432i)) != !(12162u >= (_wgslsmith_dot_vec4_u32(vec4<u32>(48878u, 71625u, 27558u, 0u), vec4<u32>(1u, u_input.b, 37952u, 3851u)) | ~82536u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(var_1.c.x, u_input.a.x, -2147483647i), min(vec4<u32>(u_input.b, _wgslsmith_clamp_u32(4294967295u, 646u, u_input.b), u_input.b ^ u_input.b, 1u), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 33747u), vec4<u32>(978u, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, 0u, 0u, u_input.b))) & (~select(vec4<u32>(4294967295u, 62868u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 0u, u_input.b), false) >> (abs(vec4<u32>(1u, 0u, 46442u, u_input.b)) % vec4<u32>(32u))));
}

