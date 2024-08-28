struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: i32;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: i32) -> vec2<u32> {
    let var_0 = arg_1;
    let var_1 = select(vec3<bool>(false, true, !any(vec4<bool>(true, true, true, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(true, true, true, false)), true, true), vec3<bool>(true, all(vec2<bool>(false, true)), all(vec4<bool>(false, true, true, false)))), vec3<bool>(any(vec2<bool>(true, true)), true, false), vec3<bool>(false, true, false)), select(!vec3<bool>(all(vec4<bool>(false, false, false, true)), any(vec4<bool>(false, true, false, false)), true), select(vec3<bool>(true, arg_0 < u_input.a, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), any(vec3<bool>(false, true, true)) && select(true, false, false)), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true)), vec3<bool>(all(vec4<bool>(false, true, false, false)), false, true), select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)))));
    return abs(vec2<u32>(34145u, 1u));
}

fn func_4(arg_0: vec2<u32>, arg_1: f32) -> bool {
    var var_0 = Struct_1(countOneBits(vec4<i32>(max(i32(-1i) * -2147483647i, _wgslsmith_dot_vec2_i32(global0.wz, vec2<i32>(-2442i, 0i))), ~0i & (u_input.a ^ -1i), (global0.x << (1u % 32u)) | (global0.x << (arg_0.x % 32u)), _wgslsmith_sub_i32(20062i, -13546i >> (arg_0.x % 32u)))));
    let var_1 = Struct_1(vec4<i32>(reverseBits(-26415i), abs(-2229i), -var_0.a.x, ~15896i & _wgslsmith_div_i32(-global0.x, 41157i)));
    global0 = var_1.a;
    var var_2 = ~(~(~countOneBits(var_0.a.xwx)));
    let var_3 = all(vec2<bool>(~abs(101295u) > _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x & arg_0.x, 1u), false));
    return all(!select(vec4<bool>(var_3, false, select(true, var_3, true), var_3), vec4<bool>(true, any(vec3<bool>(var_3, var_3, var_3)), !var_3, !var_3), vec4<bool>(all(vec4<bool>(false, var_3, true, false)), any(vec4<bool>(false, var_3, true, var_3)), all(vec3<bool>(false, true, var_3)), !var_3)));
}

fn func_2(arg_0: vec2<bool>) -> vec3<bool> {
    var var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_f32(-124f * _wgslsmith_f_op_f32(-1179f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(292f)))))));
    let var_2 = select(select(vec3<bool>(arg_0.x, false, arg_0.x), select(vec3<bool>(true, true, true), vec3<bool>(true, arg_0.x, true), select(!vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(true, true, arg_0.x))), true), vec3<bool>(all(vec3<bool>(true, global0.x <= 0i, var_1 < -263f)), func_4(_wgslsmith_mod_vec2_u32(func_3(u_input.a, vec3<f32>(-1139f, -832f, var_1), Struct_1(vec4<i32>(1i, u_input.a, global0.x, u_input.a)), 1i), u_input.b.zy | vec2<u32>(21786u, var_0.x)), -1441f), any(!select(vec4<bool>(arg_0.x, false, true, false), vec4<bool>(arg_0.x, false, arg_0.x, true), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x)))), select(vec3<bool>(false, any(vec2<bool>(arg_0.x, true)), arg_0.x), vec3<bool>(arg_0.x, _wgslsmith_f_op_f32(round(565f)) <= _wgslsmith_f_op_f32(trunc(-835f)), arg_0.x), select(!vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(true, true, arg_0.x), arg_0.x)));
    let var_3 = Struct_1(-countOneBits(firstLeadingBit(vec4<i32>(global0.x, 1i, u_input.a, 10717i))) & -(~(vec4<i32>(global0.x, u_input.a, 0i, -40899i) & vec4<i32>(2147483647i, global0.x, global0.x, u_input.a))));
    var_0 = vec4<u32>(4294967295u, ~(u_input.b.x | ~var_0.x), ~reverseBits(u_input.b.x), reverseBits(~0u));
    return !(!(!vec3<bool>(!var_2.x, false, 0u >= u_input.b.x)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>) -> vec3<bool> {
    global0 = -_wgslsmith_mult_vec4_i32(-arg_0.a, arg_0.a);
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1500f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1175f - -785f))))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-614f * _wgslsmith_f_op_f32(f32(-1f) * -1122f))));
    return select(vec3<bool>(!all(vec2<bool>(false, true)), select(true, _wgslsmith_f_op_f32(step(235f, -177f)) > _wgslsmith_div_f32(1524f, 633f), true), true), select(!func_2(vec2<bool>(false, true)), select(vec3<bool>(any(vec2<bool>(true, false)), true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), 32608u != u_input.b.x)), true), any(!(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)))));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = max(_wgslsmith_sub_vec2_i32((vec2<i32>(-35334i, 46196i) | vec2<i32>(-2147483647i, global0.x)) << (~select(vec2<u32>(u_input.b.x, 40319u), u_input.b.xz, arg_0.xx) % vec2<u32>(32u)), vec2<i32>(u_input.a, reverseBits(arg_2.a.x))), -firstLeadingBit(countOneBits(max(vec2<i32>(32112i, global0.x), vec2<i32>(u_input.a, global0.x)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-709f, 580f) - vec2<f32>(-1000f, 489f))))) + vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-481f, -699f)))), _wgslsmith_f_op_f32(246f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -1826f)))));
    var var_2 = arg_1;
    var var_3 = vec2<bool>(false, all(select(select(vec4<bool>(false, false, arg_0.x, arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, false), true), vec4<bool>(func_2(vec2<bool>(true, false)).x, true, func_4(vec2<u32>(u_input.b.x, 1u), var_1.x), false), arg_1.a.x > 1i)));
    var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(925f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(268f, -624f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-462f, var_1.x) * vec2<f32>(-983f, var_1.x)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.x, 898f), vec2<f32>(1573f, -773f))), vec2<f32>(1f, 1f), true)))));
    return Struct_1(var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -151f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-479f, 644f))), _wgslsmith_f_op_f32(302f - _wgslsmith_f_op_f32(f32(-1f) * -303f)), -213f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-338f, 656f, 1000f, -618f) * vec4<f32>(209f, -535f, -1582f, -434f))))), vec4<bool>(true, any(vec4<bool>(true, true, true, true)), select(all(vec2<bool>(true, false)), u_input.a > u_input.a, true), true)))));
    let var_1 = func_5(select(select(!func_1(Struct_1(vec4<i32>(u_input.a, u_input.a, -74135i, 250i)), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), vec3<bool>(true, func_2(vec2<bool>(false, false)).x, true), vec3<bool>(6891i == u_input.a, true, true)), !vec3<bool>(true, true, global0.x == -7751i), !select(func_2(vec2<bool>(true, true)), vec3<bool>(false, false, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false))), Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, -1i, u_input.a, -2147483647i) >> (~vec4<u32>(u_input.b.x, 34049u, u_input.b.x, 87397u) % vec4<u32>(32u)), vec4<i32>(~2147483647i, -27972i, ~1i, ~global0.x))), Struct_1(-vec4<i32>(-62010i, global0.x, global0.x, 17781i) & select(vec4<i32>(-23536i, -29968i, global0.x, global0.x), -vec4<i32>(global0.x, 1i, u_input.a, -1i), global0.x > u_input.a)));
    var var_2 = var_1;
    var var_3 = 1u;
    let var_4 = Struct_1(vec4<i32>(-1i, -13302i, -var_1.a.x, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(5415u);
}

