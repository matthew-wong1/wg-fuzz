struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec4<bool>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: u32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> f32 {
    var var_0 = !arg_0.a;
    let var_1 = _wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.b), ~(~vec2<u32>(1u, ~u_input.b)));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.zy - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-389f, 1924f), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, global0.x) - vec2<f32>(global0.x, -1000f)), select(var_0.yy, arg_0.a.xy, vec2<bool>(arg_0.a.x, false))))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_1.zy - vec2<f32>(1083f, -1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, -1004f)), !arg_0.a.zz))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.x))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global0.x, 1000f))))));
    return _wgslsmith_f_op_f32(-arg_1.x);
}

fn func_4(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    global1 = _wgslsmith_sub_u32(~u_input.b, 1u);
    let var_0 = ~min(_wgslsmith_mod_vec3_i32(-firstLeadingBit(vec3<i32>(u_input.a, u_input.a, -2147483647i)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, 2147483647i), vec3<i32>(23539i, -41640i, -1i)) ^ -vec3<i32>(u_input.a, 35146i, 1i)), vec3<i32>(u_input.a, _wgslsmith_clamp_i32(-13009i, _wgslsmith_add_i32(u_input.a, u_input.a), -u_input.a), -1i));
    let var_1 = arg_3;
    global1 = _wgslsmith_div_u32(_wgslsmith_mult_u32(~1u, _wgslsmith_mult_u32(select(~0u, 4294967295u, true), 1u)), u_input.b);
    let var_2 = var_0.xz;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2529f, -1000f)) + _wgslsmith_f_op_f32(ceil(-264f)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(vec3<bool>(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(1u, u_input.b, 4294967295u, 26971u)), min(vec4<u32>(65248u, u_input.b, u_input.b, u_input.b), vec4<u32>(0u, u_input.b, u_input.b, u_input.b))) > _wgslsmith_dot_vec2_u32(abs(vec2<u32>(15626u, u_input.b)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(1u, u_input.b))), all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false)) | any(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, true, true))));
    let var_1 = _wgslsmith_f_op_f32(func_4(any(!var_0.a.xz), countOneBits((~vec2<u32>(3239u, 1u) ^ (vec2<u32>(0u, 4294967295u) | vec2<u32>(59596u, u_input.b))) ^ min(firstLeadingBit(vec2<u32>(0u, 1u)), ~vec2<u32>(u_input.b, 0u))), Struct_2(!(!var_0.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, global0.x))))), vec4<bool>(true, !(u_input.b == u_input.b), ~1u >= firstTrailingBit(u_input.b), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(var_0.a), vec4<f32>(global0.x, -1017f, -1186f, global0.x))))), Struct_1(select(var_0.a, var_0.a, var_0.a))));
    let var_2 = Struct_2(var_0.a.x | true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1)) * 164f), select(vec4<bool>(!(!var_0.a.x), all(select(var_0.a.xy, var_0.a.yy, vec2<bool>(var_0.a.x, false))), false, any(select(vec4<bool>(var_0.a.x, var_0.a.x, true, true), vec4<bool>(var_0.a.x, var_0.a.x, true, true), var_0.a.x))), select(select(vec4<bool>(var_0.a.x, false, true, true), vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x), true), !select(vec4<bool>(var_0.a.x, false, false, false), vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x), var_0.a.x), false), true), _wgslsmith_f_op_f32(trunc(-464f)));
    let var_3 = Struct_2(any(!var_0.a.xy), -1273f, vec4<bool>(var_0.a.x, var_0.a.x, u_input.b < _wgslsmith_dot_vec2_u32(vec2<u32>(3842u, u_input.b), vec2<u32>(0u, 1u)), var_2.a), var_2.b);
    var var_4 = Struct_2(any(var_0.a), var_2.b, !select(!var_3.c, var_3.c, var_3.c), _wgslsmith_f_op_f32(trunc(904f)));
    return var_0;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_1) -> u32 {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(~(~4294967295u), 66603u, max(~_wgslsmith_mult_u32(arg_2.x, u_input.b), arg_2.x), u_input.b), vec4<u32>(_wgslsmith_sub_u32(34050u, _wgslsmith_mod_u32(~4294967295u, ~arg_2.x)), _wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(0u, 4294967295u, 68436u)), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.x, 1u, 4294967295u), vec3<u32>(71789u, arg_2.x, arg_2.x))), _wgslsmith_clamp_u32(~(~16256u), arg_2.x, u_input.b), _wgslsmith_clamp_u32(abs(~29258u), 4294967295u, min(~arg_2.x, arg_2.x))));
    let var_2 = 1u;
    var var_3 = arg_1.a.x;
    var var_4 = vec3<u32>(_wgslsmith_div_u32(~0u, ~reverseBits(26054u)), ~(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 44073u), vec2<u32>(var_1.x, var_2)) & 15572u), ~var_2);
    return var_4.x;
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = abs(vec3<u32>(u_input.b << (_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, 17014u)), ~u_input.b) % 32u), func_5(_wgslsmith_f_op_f32(-global0.x), func_2(), abs(vec2<u32>(u_input.b, u_input.b)), Struct_1(vec3<bool>(false, false, false))), min(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 13620u), vec2<u32>(u_input.b, u_input.b)), 0u)));
    let var_1 = Struct_2(true, 622f, vec4<bool>(countOneBits(reverseBits(u_input.a)) == _wgslsmith_div_i32(-u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, 0i), vec2<i32>(-2147483647i, 1i))), true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true))), select(u_input.b < 0u, u_input.a == u_input.a, true) == true), _wgslsmith_f_op_f32(-global0.x));
    let var_2 = _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_add_u32(var_0.x, var_0.x), 0u, 20179u), _wgslsmith_clamp_vec3_u32(min(select(vec3<u32>(10347u, 0u, var_0.x), vec3<u32>(33566u, 55468u, var_0.x) & vec3<u32>(4133u, 32205u, u_input.b), vec3<bool>(var_1.c.x, false, true)), _wgslsmith_div_vec3_u32(abs(vec3<u32>(0u, 2632u, u_input.b)), select(vec3<u32>(32367u, u_input.b, 41370u), vec3<u32>(4294967295u, u_input.b, 1u), var_1.c.wyy))), vec3<u32>(_wgslsmith_mult_u32(67923u, 1u), u_input.b, func_5(1997f, Struct_1(var_1.c.xyy), vec2<u32>(0u, var_0.x), Struct_1(var_1.c.xxx))) | vec3<u32>(u_input.b & var_0.x, 92118u, u_input.b), vec3<u32>(var_0.x, _wgslsmith_clamp_u32(~42704u, ~u_input.b, 4294967295u), ~(~var_0.x))));
    var var_3 = ~max(_wgslsmith_mod_u32(abs(1u), ~min(17861u, u_input.b)), 1u);
    let var_4 = Struct_2(false, _wgslsmith_f_op_f32(-global0.x), var_1.c, -2030f);
    return Struct_2(any(vec4<bool>(~u_input.a == countOneBits(arg_0), (var_4.a && true) | all(vec3<bool>(var_1.a, var_4.c.x, var_1.c.x)), var_4.a, var_1.a)), 903f, var_4.c, var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(!vec4<bool>(true, false, true, any(select(vec2<bool>(false, true), vec2<bool>(false, true), false))));
    var var_1 = ~(~(abs(vec4<u32>(u_input.b, 39343u, 17179u, u_input.b)) | ((vec4<u32>(4294967295u, u_input.b, u_input.b, 1u) << (vec4<u32>(u_input.b, u_input.b, u_input.b, 9648u) % vec4<u32>(32u))) >> (~vec4<u32>(u_input.b, 115786u, u_input.b, 57744u) % vec4<u32>(32u)))));
    let var_2 = func_1(19182i);
    let var_3 = func_1(-u_input.a);
    var var_4 = vec2<i32>(firstLeadingBit(u_input.a), firstTrailingBit(-2147483647i));
    let var_5 = Struct_1(!var_3.c.zxz);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(u_input.b ^ var_1.x))), var_4.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(561f, var_3.b, _wgslsmith_f_op_f32(select(var_2.d, -683f, var_5.a.x)), global0.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_3.b, 133f, -421f, var_2.b), vec4<f32>(-167f, 786f, 756f, var_3.d))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1019f, 265f, -235f, var_3.b))), !select(var_2.c, var_2.c, vec4<bool>(var_3.c.x, var_2.a, true, var_2.a)))), false)), var_1.ww);
}

