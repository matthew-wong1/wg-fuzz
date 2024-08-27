struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 3> = array<vec4<bool>, 3>(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_2) -> vec2<u32> {
    global0 = array<vec4<bool>, 3>();
    var var_0 = Struct_2(firstLeadingBit(vec2<i32>(~_wgslsmith_dot_vec3_i32(u_input.b.xxx, vec3<i32>(arg_0.a.x, 10400i, arg_0.c.x)), -28881i)), Struct_1(vec3<bool>(!arg_0.e.x && true, arg_0.b.a.x, arg_0.d.a.x), arg_0.d.b, u_input.c.ywz << (vec3<u32>(arg_0.b.c.x, 45080u, ~45995u) % vec3<u32>(32u))), vec2<i32>(select(max(u_input.a ^ -51704i, ~arg_0.c.x), 1i, true), 155i), Struct_1(arg_0.b.a, _wgslsmith_f_op_f32(777f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.b - arg_0.b.b))), ~arg_0.d.c), !(!arg_0.e));
    var var_1 = false;
    return var_0.d.c.zy;
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    global0 = array<vec4<bool>, 3>();
    let var_0 = firstLeadingBit(-u_input.b.x);
    let var_1 = arg_0;
    global0 = array<vec4<bool>, 3>();
    global0 = array<vec4<bool>, 3>();
    return Struct_2(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.b.yx, _wgslsmith_mult_vec2_i32(-u_input.b.wx, _wgslsmith_mod_vec2_i32(u_input.b.ww, u_input.b.zz))), -u_input.b.yw << (func_3(Struct_2(u_input.b.zz, Struct_1(vec3<bool>(arg_0.a.x, arg_0.a.x, true), var_1.b, vec3<u32>(2235u, arg_0.c.x, u_input.c.x)), vec2<i32>(1i, u_input.a), Struct_1(arg_0.a, 675f, u_input.c.wyx), global0[_wgslsmith_index_u32(arg_0.c.x, 3u)])) % vec2<u32>(32u))), arg_0, select(countOneBits(vec2<i32>(-u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b.xz, u_input.b.xx))), vec2<i32>(-(var_0 | 0i), _wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.b.yx), _wgslsmith_div_vec2_i32(u_input.b.yy, vec2<i32>(u_input.b.x, u_input.a)))), var_1.a.zz), Struct_1(vec3<bool>(var_1.a.x, any(vec2<bool>(arg_0.a.x, false)), true), arg_0.b, vec3<u32>(firstLeadingBit(arg_0.c.x), ~var_1.c.x, u_input.c.x)), select(vec4<bool>(all(vec4<bool>(true, var_1.a.x, true, false)), true, true, select(any(var_1.a), !var_1.a.x, all(arg_0.a.xy))), global0[_wgslsmith_index_u32(5527u, 3u)], true));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32) -> bool {
    var var_0 = vec4<u32>(arg_2, ~55664u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(arg_1.b.c.xz, arg_1.b.c.zz), vec2<u32>(0u, 62250u)) << (_wgslsmith_add_u32(abs(u_input.c.x), 1u >> (0u % 32u)) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(35736u), arg_1.d.c.x, firstTrailingBit(12122u)), ~u_input.c.xzx)) | vec4<u32>(~arg_1.d.c.x, 4294967295u, firstTrailingBit(4294967295u), ~func_3(Struct_2(arg_0.a, arg_1.d, vec2<i32>(2147483647i, u_input.a), arg_0.d, vec4<bool>(false, arg_1.d.a.x, arg_1.e.x, false))).x);
    var var_1 = arg_0;
    var var_2 = ~u_input.b.wwz;
    let var_3 = arg_1.d.a.x;
    let var_4 = func_2(Struct_1(select(vec3<bool>(any(arg_0.e.xw), true, u_input.b.x < 56861i), vec3<bool>(arg_1.d.a.x, arg_0.e.x, var_0.x != 0u), vec3<bool>(all(vec4<bool>(true, var_3, true, true)), false, var_1.b.b > arg_0.b.b)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-842f)))), countOneBits(_wgslsmith_add_vec3_u32(~vec3<u32>(arg_0.b.c.x, u_input.c.x, var_0.x), arg_1.b.c)))).b;
    return var_3;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: vec2<i32>, arg_3: f32) -> f32 {
    global0 = array<vec4<bool>, 3>();
    let var_0 = -45345i;
    let var_1 = reverseBits(~arg_2.x);
    global0 = array<vec4<bool>, 3>();
    let var_2 = !select(select(vec3<bool>(u_input.c.x < u_input.c.x, !arg_0.x, arg_0.x), vec3<bool>(0u == u_input.c.x, all(arg_0), true), any(select(vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(false, true), true))), select(vec3<bool>(true, arg_0.x || true, !arg_0.x), select(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x), select(vec3<bool>(arg_0.x, false, true), vec3<bool>(false, false, arg_0.x), vec3<bool>(false, arg_0.x, true)), true), true), vec3<bool>(func_4(func_2(Struct_1(vec3<bool>(false, arg_0.x, arg_0.x), arg_3, vec3<u32>(u_input.c.x, 18070u, 82147u))), Struct_2(arg_2, Struct_1(vec3<bool>(false, arg_0.x, true), -1367f, u_input.c.yxz), u_input.b.yx, Struct_1(vec3<bool>(arg_0.x, false, arg_0.x), arg_3, u_input.c.zwy), vec4<bool>(arg_0.x, arg_0.x, true, false)), _wgslsmith_add_u32(u_input.c.x, 33422u)), all(arg_0) != (arg_3 > arg_3), arg_0.x));
    return _wgslsmith_f_op_f32(abs(-1000f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(-926f, 1534f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(vec2<bool>(true, true), _wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.b.x, u_input.b.x, 5686i), reverseBits(u_input.b.yxy), abs(vec3<i32>(u_input.b.x, u_input.b.x, -1i))), _wgslsmith_clamp_vec2_i32(firstTrailingBit(u_input.b.zy), _wgslsmith_mod_vec2_i32(u_input.b.yx, vec2<i32>(u_input.a, 0i)), u_input.b.yw >> (u_input.c.xy % vec2<u32>(32u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1265f - -499f), -471f, true)))))), _wgslsmith_f_op_f32(abs(1f)));
    var var_1 = -(i32(-1i) * -(_wgslsmith_dot_vec3_i32(u_input.b.wxz, u_input.b.wyx) ^ -u_input.b.x));
    var_1 = _wgslsmith_sub_i32(-2147483647i, _wgslsmith_mod_i32(-1i, 1i));
    var var_2 = func_2(func_2(Struct_1(vec3<bool>(true, false, -16197i <= u_input.a), _wgslsmith_f_op_f32(-var_0.x), u_input.c.yyy)).b).b;
    let var_3 = !vec3<bool>(_wgslsmith_f_op_f32(sign(var_2.b)) <= var_2.b, var_2.a.x, true);
    var var_4 = var_3.x;
    let var_5 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(808f - _wgslsmith_f_op_f32(497f * _wgslsmith_f_op_f32(f32(-1f) * -361f))), _wgslsmith_f_op_f32(-var_2.b)), 257f));
    let x = u_input.a;
    s_output = StorageBuffer(-902i, firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.c.yyx, firstLeadingBit(var_2.c))), var_0.yzz, u_input.b.x, _wgslsmith_f_op_f32(-var_0.x));
}

