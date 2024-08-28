struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    let var_0 = firstTrailingBit(max(u_input.a.x & u_input.a.x, ~u_input.a.x)) >= firstTrailingBit(~u_input.a.x);
    let var_1 = vec3<f32>(-791f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2290f, _wgslsmith_f_op_f32(trunc(-832f))))), -1231f);
    return vec4<bool>(any(!select(!vec4<bool>(false, var_0, var_0, var_0), !vec4<bool>(true, var_0, var_0, false), var_0)), var_0, any(vec3<bool>(true, false, any(select(vec2<bool>(var_0, true), vec2<bool>(var_0, var_0), false)))), var_0);
}

fn func_4(arg_0: vec4<bool>) -> bool {
    let var_0 = select(arg_0.x, func_3().x, false);
    var var_1 = abs(u_input.a.x);
    let var_2 = (select(-2147483647i, 8793i, true) ^ _wgslsmith_div_i32(min(abs(2147483647i), i32(-1i) * -15286i), _wgslsmith_clamp_i32(1i, min(1i, -56522i), ~2147483647i))) >> (_wgslsmith_add_u32(u_input.a.x, u_input.a.x) % 32u);
    let var_3 = max(-vec4<i32>(21398i & _wgslsmith_sub_i32(18269i, var_2), select(var_2, var_2, all(vec3<bool>(var_0, false, var_0))), ~(-var_2), var_2 | -2147483647i), ~vec4<i32>(var_2, i32(-1i) * -2147483647i, -24978i, 18209i));
    var_1 = 77132u & u_input.a.x;
    return true;
}

fn func_2() -> bool {
    global0 = array<Struct_1, 21>();
    var var_0 = vec3<bool>(true, true, true);
    var_0 = vec3<bool>(var_0.x, func_4(select(!func_3(), select(!vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(true, true, var_0.x, false), true), select(select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, true, var_0.x, var_0.x)), !vec4<bool>(var_0.x, var_0.x, true, false), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)))), any(vec3<bool>(var_0.x, true, true)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1225f, -248f))) + -1167f))));
    global0 = array<Struct_1, 21>();
    return any(!(!vec4<bool>(var_0.x, !var_0.x, var_0.x, var_0.x)));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: f32, arg_3: vec2<bool>) -> u32 {
    let var_0 = !(!(func_2() | true));
    let var_1 = arg_1;
    let var_2 = Struct_2(global0[_wgslsmith_index_u32(79770u, 21u)]);
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-226f)), _wgslsmith_f_op_f32(f32(-1f) * -1271f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), -644f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 1266f, 439f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1259f, 562f, 182f) + vec3<f32>(-771f, 1121f, -169f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, arg_2, arg_2), vec3<f32>(-839f, 1000f, arg_0.x), arg_1.a)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2844f, arg_2, arg_2)))) + _wgslsmith_div_vec3_f32(vec3<f32>(342f, _wgslsmith_f_op_f32(arg_0.x + 443f), -286f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-479f, 733f, 199f), vec3<f32>(arg_2, 1146f, 598f))))));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(min(firstTrailingBit(vec4<u32>(u_input.a.x, 16783u, 1u, 1u) | vec4<u32>(u_input.a.x, u_input.a.x, 49527u, u_input.a.x)), ~select(vec4<u32>(12182u, 10874u, u_input.a.x, u_input.a.x), vec4<u32>(0u, 4294967295u, u_input.a.x, 25668u), vec4<bool>(false, false, false, true))) & ~vec4<u32>(firstTrailingBit(u_input.a.x), u_input.a.x, u_input.a.x | u_input.a.x, u_input.a.x));
    global0 = array<Struct_1, 21>();
    var var_1 = var_0.wzw;
    global0 = array<Struct_1, 21>();
    var_1 = min(vec3<u32>(countOneBits(46214u), ~0u, ~select(4294967295u, 36123u, true) | countOneBits(_wgslsmith_mod_u32(47620u, var_0.x))), vec3<u32>(78619u, _wgslsmith_add_u32(1u << (u_input.a.x % 32u), u_input.a.x), _wgslsmith_mod_u32(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1612f, -1175f) - vec2<f32>(124f, -1000f)), Struct_1(true), -945f, select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))), 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(267f, 1000f, false))))), _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(14427i, 49168i)), vec2<i32>(18477i, 1i)) >> (var_0.yz % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(~(-10119i), 2147483647i << (var_0.x % 32u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-32174i, -2939i) << (vec2<u32>(var_0.x, 0u) % vec2<u32>(32u)), ~vec2<i32>(41756i, 18946i)))), -292f);
}

