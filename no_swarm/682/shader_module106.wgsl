struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5) -> vec4<f32> {
    var var_0 = vec2<bool>(!select(any(global0.yw), global0.x, global0.x), !global0.x);
    global0 = select(vec4<bool>(!global0.x, -1i == ~u_input.b, var_0.x, !var_0.x), vec4<bool>(true, true, global0.x, true), select(vec4<bool>(all(vec2<bool>(false, false)), false, global0.x, var_0.x), select(vec4<bool>(true, var_0.x, true, true), vec4<bool>(var_0.x, false & global0.x, true, var_0.x), all(global0.yx)), any(vec4<bool>(true, true, true, true))));
    var var_1 = Struct_3(reverseBits(u_input.b));
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2721f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(402f - -1000f) - _wgslsmith_div_f32(148f, 161f)))))));
    global0 = vec4<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1206f, -1411f) - var_2))) > var_2, !any(select(global0.zw, vec2<bool>(true, true), vec2<bool>(global0.x, var_0.x))), !(arg_0.b != arg_0.b) && select((global0.x || false) && true, arg_0.b >= arg_0.b, (false && var_0.x) && true), global0.x);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, 1517f, var_2, var_2))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(897f, var_2, 181f, 180f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2, 323f, var_2, 1814f), vec4<f32>(var_2, var_2, -2273f, 1004f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_2, var_2, var_2))))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2, var_2, var_2, var_2), vec4<f32>(var_2, 196f, -2071f, var_2)))))))));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_3(Struct_5(~(-(vec4<i32>(u_input.a.x, -34648i, 31961i, 32994i) ^ vec4<i32>(u_input.a.x, u_input.b, 0i, 2147483647i))), ~4294967295u)));
    var var_1 = Struct_2(global0.x);
    global0 = select(vec4<bool>(!global0.x || select(-2147483647i != u_input.b, true, 1118f <= var_0.x), var_1.a, ((u_input.a.x <= u_input.a.x) || global0.x) && var_1.a, !(var_0.x > _wgslsmith_f_op_f32(max(-1743f, var_0.x)))), select(!select(select(vec4<bool>(false, true, var_1.a, false), vec4<bool>(var_1.a, global0.x, global0.x, global0.x), vec4<bool>(var_1.a, var_1.a, var_1.a, global0.x)), !vec4<bool>(false, false, global0.x, global0.x), false), !select(vec4<bool>(var_1.a, global0.x, var_1.a, false), select(vec4<bool>(true, var_1.a, var_1.a, false), vec4<bool>(true, false, true, var_1.a), vec4<bool>(false, global0.x, false, true)), vec4<bool>(var_1.a, true, global0.x, var_1.a)), !vec4<bool>(global0.x, select(var_1.a, var_1.a, global0.x), !var_1.a, var_1.a)), all(global0.zy));
    let var_2 = max(select(vec4<i32>(u_input.a.x, -u_input.b, reverseBits(-25165i), 0i ^ u_input.b), -vec4<i32>(-33880i, -1i, u_input.b, -12875i), false) << (select(firstLeadingBit(vec4<u32>(0u, 0u, 80888u, 0u)), firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)), select(true, true, true) || !var_1.a) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(~max(vec4<i32>(44184i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.b, -24011i, 1i, u_input.a.x)), ~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.b)) | vec4<i32>(1i, u_input.b, -2147483647i, ~(u_input.b & u_input.a.x)));
    let var_3 = vec4<u32>(4294967295u, ~1u, _wgslsmith_mod_u32(~(~0u), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(2211u, 58617u, 16859u, 0u), vec4<u32>(31554u, 49747u, 60992u, 4294967295u)))), ~0u) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u));
    return Struct_2(!var_1.a);
}

fn func_1() -> Struct_3 {
    let var_0 = global0.wxy;
    var var_1 = func_2();
    let var_2 = Struct_2(true);
    var_1 = func_2();
    let var_3 = Struct_3(u_input.b);
    return var_3;
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_4, arg_3: vec2<u32>) -> bool {
    var var_0 = vec4<bool>(arg_2.a.x, select(false, all(select(global0.yz, vec2<bool>(false, global0.x), vec2<bool>(false, false))), true) == true, !global0.x, true);
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(-1357f, -127f)), _wgslsmith_f_op_f32(min(-178f, 1420f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, 656f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-920f, 1026f), vec2<f32>(-1444f, 1398f)))))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(trunc(-820f)), 1384f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -623f))), false))), !var_0.yy));
    var_0 = vec4<bool>(false, var_0.x, arg_2.a.x, !(false || (!var_0.x || (3819i >= u_input.b))));
    global0 = !vec4<bool>(var_0.x, global0.x, _wgslsmith_f_op_f32(-var_1.x) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, -1311f, global0.x))), !(!arg_2.a.x) && false);
    var var_2 = -174f;
    return !arg_2.a.x || arg_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(true, global0.x, global0.x, global0.x), select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(true, global0.x, global0.x, global0.x)))));
    let var_1 = !select(select(var_0.xzy, select(select(global0.yww, vec3<bool>(true, false, global0.x), true), vec3<bool>(var_0.x, true, var_0.x), !var_0.yxy), !(!var_0.yxz)), select(vec3<bool>(all(vec3<bool>(global0.x, false, var_0.x)), false, true || global0.x), global0.zxy, global0.yzy), vec3<bool>(select(var_0.x, global0.x, var_0.x), func_4(_wgslsmith_mod_u32(4294967295u, 4294967295u), func_1(), Struct_4(vec2<bool>(true, true)), abs(vec2<u32>(0u, 75934u))), var_0.x));
    global0 = var_0;
    global0 = vec4<bool>(select(true, func_2().a, global0.x), global0.x, true != !(any(var_0.yy) && true), any(vec3<bool>(!func_4(47635u, Struct_3(u_input.b), Struct_4(vec2<bool>(false, true)), vec2<u32>(12331u, 1u)), any(vec2<bool>(var_0.x, var_1.x)), true | var_0.x)));
    global0 = vec4<bool>(var_1.x, !(var_1.x | global0.x), (2876i == (1i | _wgslsmith_dot_vec2_i32(vec2<i32>(339i, u_input.a.x), vec2<i32>(-13727i, u_input.a.x)))) && !global0.x, true);
    global0 = select(!select(var_0, vec4<bool>(true, global0.x, var_1.x, global0.x && global0.x), true), select(var_0, !vec4<bool>(true, true | var_0.x, func_2().a, all(var_0)), (!global0.x != true) & true), !(!all(!var_0.zxz)));
    global0 = var_0;
    var var_2 = Struct_5(max(~vec4<i32>(-8501i, 81770i, -2147483647i, 30384i) & _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(901i, 1i, 14147i, u_input.b), vec4<i32>(0i, -1i, u_input.a.x, -27904i)), -vec4<i32>(-1i, u_input.a.x, 1i, 46940i), vec4<i32>(30473i, u_input.b, 0i, u_input.a.x) ^ vec4<i32>(-43932i, 0i, -19502i, 32469i)), select(vec4<i32>(1i, ~(-1i), u_input.b, 0i >> (1u % 32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -36563i, 1579i, u_input.b), -vec4<i32>(24645i, u_input.b, u_input.b, u_input.a.x)), !vec4<bool>(false, var_1.x, global0.x, global0.x))), ~(~firstLeadingBit(1u)));
    var var_3 = Struct_3(var_2.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(-_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a.x, -2147483647i, var_3.a, var_2.a.x), vec4<i32>(var_3.a, -31394i, -1i, var_2.a.x)))), ~u_input.a.x);
}

