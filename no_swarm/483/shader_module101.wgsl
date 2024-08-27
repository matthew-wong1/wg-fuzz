struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
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

var<private> global0: vec3<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: bool, arg_3: vec4<i32>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2348f) * 923f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1000f))))));
    global0 = select(firstLeadingBit(u_input.a), vec3<i32>(u_input.a.x, 0i, reverseBits(max(arg_3.x, -62803i))), !arg_2 || !(any(vec3<bool>(false, arg_2, false)) && select(true, arg_2, arg_2)));
    global0 = vec3<i32>(53890i, global0.x, 34154i);
    let var_1 = any(!vec4<bool>(!all(vec3<bool>(arg_2, arg_2, false)), true, true, any(select(vec4<bool>(arg_2, arg_2, arg_2, arg_2), vec4<bool>(true, false, arg_2, arg_2), arg_2))));
    global0 = u_input.a;
    return select(vec4<bool>(!arg_2, true, !var_1, true), vec4<bool>(true, var_1, var_1, arg_2), !select(vec4<bool>(4294967295u <= arg_0.x, var_1 & true, 2147483647i > u_input.a.x, true), select(vec4<bool>(false, false, arg_2, true), !vec4<bool>(var_1, true, arg_2, false), any(vec2<bool>(arg_2, arg_2))), true));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec4<bool>) -> vec2<i32> {
    let var_0 = vec2<f32>(1737f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.a.x, arg_1.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.a.x, arg_1.x, false)), _wgslsmith_f_op_f32(sign(-936f))) * 935f))));
    global0 = ~vec3<i32>(~2134i, ~(-global0.x), global0.x | 37491i);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1)));
    global0 = ~vec3<i32>(abs(-1i), firstLeadingBit(firstLeadingBit(global0.x >> (17856u % 32u))), ~((global0.x << (u_input.b.x % 32u)) >> (1u % 32u)));
    global0 = ~(u_input.a & u_input.a);
    return reverseBits(vec2<i32>(u_input.a.x, ~select(5956i, u_input.a.x, true) | -global0.x));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>) -> i32 {
    let var_0 = true;
    global0 = vec3<i32>(2147483647i ^ global0.x, 0i, global0.x);
    global0 = max(-(~firstLeadingBit(vec3<i32>(-2147483647i, 2147483647i, 9399i))) << (vec3<u32>(_wgslsmith_mod_u32(u_input.b.x, ~u_input.b.x), ~u_input.b.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(117221u, u_input.b.x, 33676u), u_input.b.xzz) % 32u), ~u_input.b.x) % vec3<u32>(32u)), -u_input.a);
    var var_1 = !(!(!(var_0 && var_0) && false));
    let var_2 = arg_0;
    return _wgslsmith_mod_i32(global0.x & arg_1.x, -15535i);
}

fn func_2(arg_0: vec4<f32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(floor(arg_0.x));
    var var_1 = func_5(Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0.wx)), func_4(Struct_1(vec2<f32>(arg_0.x, 395f)), arg_0.yx, select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), true), func_3(u_input.b.zz, u_input.b.ww, true, vec4<i32>(-33583i, 35256i, global0.x, global0.x)), true)) << (_wgslsmith_add_vec2_u32(u_input.b.yz, vec2<u32>(0u, u_input.b.x) | vec2<u32>(4383u, u_input.b.x)) % vec2<u32>(32u)));
    global0 = _wgslsmith_div_vec3_i32(vec3<i32>(global0.x, ~1i, 0i), vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.a.zx, global0.xz), -_wgslsmith_div_i32(global0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global0.x), vec2<i32>(u_input.a.x, 2147483647i))), 31409i));
    let var_2 = _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -_wgslsmith_sub_i32(~(-47387i), select(-9427i, global0.x, true)), -18883i, u_input.a.x), vec4<i32>(u_input.a.x, max(global0.x << (27197u % 32u), u_input.a.x), u_input.a.x, _wgslsmith_div_i32(_wgslsmith_mod_i32(2147483647i, global0.x), i32(-1i) * -44742i)) ^ max(vec4<i32>(2147483647i, abs(57691i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 1i, 44716i), vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x)), -22613i), firstLeadingBit(vec4<i32>(-2147483647i, global0.x, global0.x, u_input.a.x)) ^ -vec4<i32>(global0.x, global0.x, -2147483647i, u_input.a.x)));
    var_1 = _wgslsmith_dot_vec2_i32(~vec2<i32>(~(var_2.x ^ var_2.x), select(u_input.a.x, -var_2.x, -1i < var_2.x)), abs(~u_input.a.zx));
    return -countOneBits(min(-2147483647i, 1005i) | -u_input.a.x);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: i32) -> Struct_1 {
    global0 = vec3<i32>(func_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, 865f, 1000f, 1221f))))))), -2147483647i, _wgslsmith_dot_vec2_i32(global0.zz, select(~vec2<i32>(-1i, arg_2), abs(-u_input.a.yz), vec2<bool>(!arg_1.x, !arg_1.x))));
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(382f, 923f), vec2<f32>(-2064f, 778f))))))));
    let var_1 = select(countOneBits(~(vec4<i32>(-2147483647i, -41012i, arg_0.x, -49009i) | vec4<i32>(32399i, u_input.a.x, arg_0.x, -23430i)) & vec4<i32>(i32(-1i) * -1i, ~u_input.a.x, firstLeadingBit(12593i), ~u_input.a.x)), firstLeadingBit(~vec4<i32>(1i, 10977i, -45249i, -14334i) | _wgslsmith_add_vec4_i32(select(vec4<i32>(global0.x, 1i, -3075i, -1i), vec4<i32>(arg_2, 0i, 24371i, global0.x), true), vec4<i32>(-1i, global0.x, 1i, arg_0.x) & vec4<i32>(2147483647i, u_input.a.x, -2147483647i, u_input.a.x))), -_wgslsmith_dot_vec2_i32(u_input.a.xx, arg_0) != ~u_input.a.x);
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_0.a, vec2<f32>(683f, -1000f))) * var_0.a) + _wgslsmith_f_op_vec2_f32(var_0.a - vec2<f32>(var_0.a.x, -405f))) + var_0.a));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_3.a)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(879f, var_2.a.x), vec2<f32>(-337f, 1321f))))));
}

fn func_6(arg_0: Struct_1, arg_1: vec2<f32>) -> i32 {
    var var_0 = i32(-1i) * -2147483647i;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, -1000f) - arg_1)));
    var_0 = _wgslsmith_add_i32(max(~func_4(Struct_1(var_1.a), _wgslsmith_f_op_vec2_f32(select(arg_1, var_1.a, false)), vec4<bool>(false, false, true, true)).x, -2147483647i >> (0u % 32u)), -41530i);
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.a.x, arg_1.x))))), arg_0.a)));
    var_1 = func_1(global0.xz, vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1035f, -1393f))) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.x * 1655f))), true), _wgslsmith_add_i32(19205i, -u_input.a.x));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<i32>(reverseBits(-func_6(func_1(global0.yy, vec2<bool>(true, false), -1i), vec2<f32>(-870f, -618f))), ~1i, u_input.a.x);
    global0 = u_input.a;
    global0 = u_input.a;
    global0 = _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a.x, 2147483647i) << (u_input.b.xzy % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(u_input.a, u_input.a)), firstTrailingBit(2147483647i), func_4(func_1(vec2<i32>(0i, 9143i), vec2<bool>(true, false), 0i), _wgslsmith_f_op_vec2_f32(vec2<f32>(2618f, -1000f) * vec2<f32>(1238f, 511f)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false))).x), firstTrailingBit(u_input.a), reverseBits(~u_input.a)), u_input.a);
    global0 = u_input.a;
    let var_0 = true;
    global0 = ~(~(-_wgslsmith_div_vec3_i32(vec3<i32>(global0.x, global0.x, global0.x), vec3<i32>(global0.x, global0.x, u_input.a.x)))) & _wgslsmith_mult_vec3_i32(u_input.a, _wgslsmith_sub_vec3_i32(~(~vec3<i32>(global0.x, u_input.a.x, 2147483647i)), -u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(u_input.a.zx, u_input.a.yz));
}

