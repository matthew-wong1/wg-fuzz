struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(false, true, true, false));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: bool, arg_3: vec3<i32>) -> vec4<bool> {
    global0 = ~17011u;
    global1 = Struct_1(select(select(select(!global1.a, vec4<bool>(arg_2, arg_1, true, true), u_input.a.x >= -1i), vec4<bool>(arg_1 & arg_1, true, true, arg_1), vec4<bool>(arg_1, false, arg_1, select(true, global1.a.x, arg_1))), vec4<bool>(global1.a.x, true, global1.a.x, false), false));
    let var_0 = Struct_1(!vec4<bool>(true, false, arg_0.x, arg_1));
    let var_1 = 52171u;
    var var_2 = var_0;
    return !select(vec4<bool>(any(vec4<bool>(var_2.a.x, false, global1.a.x, false)), false, true, any(vec3<bool>(global1.a.x, true, true))), select(global1.a, !vec4<bool>(global1.a.x, false, arg_2, false), (u_input.a.x > 1i) && var_2.a.x), any(!(!vec4<bool>(true, arg_1, false, arg_2))));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: i32) -> vec4<bool> {
    var var_0 = Struct_1(select(global1.a, global1.a, global1.a));
    var var_1 = Struct_1(global1.a);
    let var_2 = true;
    let var_3 = -7652i;
    var var_4 = Struct_1(!func_3(vec2<bool>(any(vec2<bool>(true, true)), arg_1 >= u_input.a.x), all(vec4<bool>(var_1.a.x, global1.a.x, var_0.a.x, true)) || select(var_1.a.x, var_0.a.x, var_1.a.x), true, vec3<i32>(firstLeadingBit(var_3), _wgslsmith_mod_i32(var_3, 1i), 31651i)));
    return select(vec4<bool>(all(!select(vec4<bool>(true, true, arg_0, var_0.a.x), var_4.a, true)), true, all(var_0.a.yz), false), select(vec4<bool>(all(!var_0.a.zyw), false, var_0.a.x | true, var_1.a.x), var_1.a, vec4<bool>(true, true, var_4.a.x, any(func_3(global1.a.zz, false, true, u_input.a)))), vec4<bool>(((var_4.a.x && false) | true) == false, all(!vec4<bool>(global1.a.x, true, true, var_1.a.x)), global1.a.x & func_3(var_0.a.wz, !var_1.a.x, true, _wgslsmith_mod_vec3_i32(vec3<i32>(arg_2, 16832i, var_3), u_input.a)).x, !any(global1.a)));
}

fn func_1() -> vec4<f32> {
    let var_0 = Struct_1(func_2(!(!global1.a.x), 2728i, u_input.a.x));
    var var_1 = var_0;
    var var_2 = vec2<u32>(0u, max(~countOneBits(31055u), 13127u));
    let var_3 = Struct_1(select(vec4<bool>(any(vec4<bool>(var_0.a.x, var_1.a.x, var_1.a.x, var_0.a.x)), !select(false, true, false), _wgslsmith_clamp_u32(var_2.x, 28631u, 0u) >= ~var_2.x, var_2.x < 36316u), select(!vec4<bool>(global1.a.x, true, false, true), select(select(vec4<bool>(true, true, false, true), var_1.a, var_0.a.x), vec4<bool>(false, var_0.a.x, false, var_1.a.x), true & var_1.a.x), !select(vec4<bool>(true, false, global1.a.x, false), vec4<bool>(var_1.a.x, true, true, var_1.a.x), var_0.a)), func_2(true, abs(reverseBits(-40605i)), ~_wgslsmith_mult_i32(u_input.a.x, 35904i))));
    var_2 = vec2<u32>(var_2.x, 46837u);
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -622f, -907f, -1652f) - vec4<f32>(1392f, -2260f, -1000f, 207f)))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: bool, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = 1i;
    var var_1 = Struct_1(vec4<bool>(all(func_3(vec2<bool>(global1.a.x, false), true, false, ~vec3<i32>(-1i, 1i, 31233i))), -1i <= u_input.a.x, any(!vec4<bool>(false, global1.a.x, false, true)) || any(func_3(arg_2.xy, true, false, vec3<i32>(1i, u_input.a.x, 25260i)).zyw), func_2(false, u_input.a.x ^ 11610i, u_input.a.x).x));
    var_1 = Struct_1(select(vec4<bool>(any(global1.a), var_1.a.x & var_1.a.x, false, !(arg_0.x < arg_0.x)), !select(!vec4<bool>(true, arg_2.x, var_1.a.x, false), select(var_1.a, global1.a, vec4<bool>(arg_2.x, arg_2.x, global1.a.x, false)), var_1.a), global1.a));
    global1 = Struct_1(select(func_3(global1.a.zy, _wgslsmith_f_op_f32(max(arg_0.x, arg_0.x)) <= _wgslsmith_f_op_f32(f32(-1f) * -375f), func_2(any(var_1.a), 43433i, u_input.a.x).x, vec3<i32>(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), u_input.a.x, -1i)), !var_1.a, global1.a));
    global1 = Struct_1(vec4<bool>(arg_2.x, true, var_1.a.x, global1.a.x));
    return Struct_1(vec4<bool>(var_1.a.x, all(func_2(arg_2.x, u_input.a.x, 1i).zyy), arg_1, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 725f > _wgslsmith_f_op_f32(-449f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2389f + 235f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1015f - -1184f) + -2199f)));
    var var_1 = global1.a.xy;
    global1 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(341f, -913f, 561f, -955f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1733f, 501f, -663f, -197f) * vec4<f32>(369f, 539f, 141f, 293f))), vec4<f32>(1f, 1f, 1f, 1f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-141f, 330f, 219f, -136f) - _wgslsmith_f_op_vec4_f32(func_1())))), var_0, func_2(true, _wgslsmith_div_i32(firstTrailingBit(u_input.a.x), -2147483647i), u_input.a.x).zwx);
    let var_2 = vec3<bool>(all(global1.a.zww), all(vec2<bool>(true, true)), global1.a.x);
    let var_3 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-330f, 1739f, -241f, -1000f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1546f, -1117f, 447f, 1050f)))) + vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -357f))), -1180f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -1755f) + 628f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(167f, -1403f)))))), false, func_4(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(775f, 936f, 1215f, -828f))), vec4<f32>(1f, 1f, 1f, 1f))), !(true && global1.a.x), func_2(all(select(vec4<bool>(var_0, global1.a.x, var_1.x, global1.a.x), vec4<bool>(global1.a.x, var_2.x, var_2.x, var_0), false)), _wgslsmith_mod_i32(1i, -41408i), u_input.a.x).zyw).a.yzz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, ~u_input.a.x), abs(min(vec4<i32>(33370i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x)))), -vec4<i32>(_wgslsmith_sub_i32(2147483647i, u_input.a.x), ~u_input.a.x, firstLeadingBit(u_input.a.x), u_input.a.x)), 4294967295u, _wgslsmith_f_op_f32(1f * 1794f));
}

