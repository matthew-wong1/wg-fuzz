struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<i32>(-14627i, 2147483647i, 5085i), Struct_1(vec3<i32>(1458i, 2147483647i, i32(-2147483648)), vec4<u32>(20117u, 0u, 4294967295u, 1u), vec4<bool>(false, false, true, true), vec3<i32>(-27849i, -43977i, -18322i), 1i), vec3<bool>(false, false, false));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: Struct_1) -> i32 {
    var var_0 = ~arg_2.b.d.x;
    var_0 = 35610i;
    var var_1 = arg_0;
    var var_2 = !all(arg_2.b.c.zxy);
    let var_3 = u_input.a;
    return _wgslsmith_dot_vec4_i32(~(-(~(vec4<i32>(-33147i, arg_3.d.x, 8145i, 55758i) ^ vec4<i32>(arg_3.a.x, var_3, 19870i, -30304i)))), firstLeadingBit((vec4<i32>(-26094i, -30862i, var_3, -1i) << (reverseBits(global0.b.b) % vec4<u32>(32u))) | vec4<i32>(select(-14608i, -46098i, true), _wgslsmith_mult_i32(-2147483647i, -1i), arg_2.b.d.x, -arg_3.d.x)));
}

fn func_3() -> vec3<i32> {
    global0 = Struct_2(global0.a, Struct_1(_wgslsmith_add_vec3_i32(firstTrailingBit(-global0.a), global0.b.a), select(vec4<u32>(12348u, 4294967295u, global0.b.b.x, _wgslsmith_clamp_u32(global0.b.b.x, 0u, 2650u)), select(~vec4<u32>(global0.b.b.x, global0.b.b.x, 112369u, global0.b.b.x), global0.b.b, true), !global0.b.c), vec4<bool>(global0.b.c.x, u_input.a > -1i, false, !any(vec3<bool>(global0.b.c.x, true, global0.b.c.x))), select(~global0.a, abs(global0.a), vec3<bool>(global0.b.c.x, global0.b.c.x, true)) << (global0.b.b.zzz % vec3<u32>(32u)), global0.a.x >> (_wgslsmith_mod_u32(32145u, _wgslsmith_div_u32(70202u, global0.b.b.x)) % 32u)), vec3<bool>(_wgslsmith_sub_i32(30103i, -42041i) != countOneBits(u_input.a), ~(~global0.b.b.x) <= 1u, global0.c.x || global0.c.x));
    let var_0 = min(u_input.a, u_input.a);
    global0 = Struct_2(~(global0.b.d | _wgslsmith_mod_vec3_i32(global0.b.a, vec3<i32>(global0.a.x, var_0, -2147483647i))), global0.b, !global0.c);
    var var_1 = Struct_2(select(-_wgslsmith_div_vec3_i32(~vec3<i32>(-1i, var_0, var_0), vec3<i32>(u_input.a, 2147483647i, 17636i)), -vec3<i32>(-var_0, countOneBits(2147483647i), i32(-1i) * -2147483647i), !global0.b.c.x), global0.b, select(!vec3<bool>(global0.c.x == false, any(global0.c.xx), true), select(select(!global0.c, !global0.c, false), !(!vec3<bool>(global0.b.c.x, false, true)), !select(global0.c, global0.b.c.xxw, true)), global0.b.c.ywz));
    global0 = Struct_2(countOneBits(global0.b.d), var_1.b, select(select(!var_1.c, select(vec3<bool>(true, true, true), !vec3<bool>(global0.b.c.x, true, var_1.b.c.x), global0.b.c.x), var_1.c.x), var_1.c, !(!(!vec3<bool>(global0.c.x, true, false)))));
    return -(~var_1.a) >> (max(~vec3<u32>(~var_1.b.b.x, ~31093u, 1605u), global0.b.b.zww >> (_wgslsmith_mult_vec3_u32(var_1.b.b.yyw, ~var_1.b.b.wwy) % vec3<u32>(32u))) % vec3<u32>(32u));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_div_i32(66691i, global0.b.d.x) >= 46482i;
    global0 = Struct_2(arg_2.b.d | ~vec3<i32>(1i, ~global0.a.x, -arg_2.a.x), Struct_1(~arg_2.b.d, _wgslsmith_div_vec4_u32(select(arg_2.b.b, abs(vec4<u32>(1u, arg_2.b.b.x, arg_0.x, 4464u)), true), global0.b.b >> (vec4<u32>(global0.b.b.x, arg_0.x, global0.b.b.x, global0.b.b.x) % vec4<u32>(32u))), !arg_2.b.c, _wgslsmith_sub_vec3_i32(global0.b.a, func_3()), 8905i), select(!(!global0.b.c.xzw), vec3<bool>(true, arg_2.b.c.x, true), !arg_2.b.c.zxz));
    global0 = arg_2;
    let var_1 = ~global0.b.a;
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-204f, -381f)) - _wgslsmith_f_op_f32(f32(-1f) * -357f))), _wgslsmith_f_op_f32(f32(-1f) * -1148f)));
    return Struct_2(-vec3<i32>(var_1.x, global0.b.e, -_wgslsmith_div_i32(u_input.a, -1i)), global0.b, select(select(!select(global0.b.c.wyx, vec3<bool>(arg_2.c.x, arg_3.x, false), vec3<bool>(var_0, var_0, global0.c.x)), select(arg_3, select(vec3<bool>(false, false, true), vec3<bool>(false, true, global0.c.x), vec3<bool>(arg_3.x, var_0, false)), !arg_2.b.c.xwy), global0.c), global0.b.c.xxy, select(vec3<bool>(var_0, !arg_2.b.c.x, any(vec3<bool>(true, arg_3.x, arg_3.x))), vec3<bool>(0i >= u_input.a, var_0, global0.a.x > var_1.x), select(select(arg_2.c, arg_2.c, true), vec3<bool>(arg_2.b.c.x, false, global0.c.x), arg_2.b.c.yxy))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_2(vec2<u32>(global0.b.b.x, abs(4294967295u)), vec2<u32>(~global0.b.b.x, _wgslsmith_sub_u32(min(42016u, 1u), min(global0.b.b.x, global0.b.b.x))), Struct_2(-vec3<i32>(~(-959i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, global0.b.d.x), global0.a.zz), func_1(710f, vec3<f32>(-1000f, -1238f, 158f), Struct_2(vec3<i32>(u_input.a, 1i, -50813i), Struct_1(vec3<i32>(global0.a.x, -26720i, 17364i), global0.b.b, global0.b.c, global0.b.d, global0.a.x), global0.b.c.yyx), global0.b)), global0.b, !global0.b.c.zxw), global0.b.c.yyy);
    let var_0 = abs(i32(-1i) * -global0.b.a.x) | abs(global0.b.e);
    global0 = func_2(global0.b.b.xz, firstTrailingBit(global0.b.b.yw), func_2(max(~vec2<u32>(global0.b.b.x, global0.b.b.x), ~vec2<u32>(global0.b.b.x, global0.b.b.x)) ^ _wgslsmith_mult_vec2_u32(global0.b.b.zx, global0.b.b.yx << (vec2<u32>(global0.b.b.x, 1u) % vec2<u32>(32u))), ~(~vec2<u32>(global0.b.b.x, 0u)), func_2(global0.b.b.ww, ~(global0.b.b.wy ^ global0.b.b.zy), Struct_2(_wgslsmith_mod_vec3_i32(global0.a, vec3<i32>(-31764i, var_0, global0.a.x)), func_2(vec2<u32>(global0.b.b.x, 0u), global0.b.b.zw, Struct_2(global0.a, global0.b, vec3<bool>(global0.c.x, global0.c.x, global0.c.x)), vec3<bool>(false, global0.b.c.x, true)).b, vec3<bool>(global0.b.c.x, global0.c.x, global0.c.x)), func_2(vec2<u32>(global0.b.b.x, global0.b.b.x), vec2<u32>(global0.b.b.x, global0.b.b.x), func_2(global0.b.b.zx, global0.b.b.ww, Struct_2(global0.a, Struct_1(vec3<i32>(-50670i, global0.a.x, -2147483647i), vec4<u32>(5274u, 1u, global0.b.b.x, 0u), global0.b.c, global0.b.d, 3959i), vec3<bool>(global0.b.c.x, global0.c.x, true)), global0.b.c.wzx), !global0.b.c.zxz).c), select(!select(vec3<bool>(false, false, global0.b.c.x), vec3<bool>(global0.c.x, true, true), true), !vec3<bool>(global0.b.c.x, global0.b.c.x, global0.b.c.x), !global0.b.c.xyw)), !select(!(!vec3<bool>(global0.c.x, true, false)), vec3<bool>(true, true, any(global0.c.xz)), vec3<bool>(true, true, true)));
    var var_1 = vec3<f32>(1f, 1f, 1f);
    let var_2 = 1820i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, -935f), vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_1.x, -1000f, -1446f) * vec4<f32>(437f, var_1.x, var_1.x, 848f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1292f, var_1.x, -950f))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, 674f, 827f, 101f))))))), 1066f, _wgslsmith_mod_i32(0i, -var_0), ~71594u);
}

