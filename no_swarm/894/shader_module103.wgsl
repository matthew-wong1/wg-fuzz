struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 16465u;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: f32, arg_3: Struct_1) -> u32 {
    let var_0 = Struct_1(arg_3.a);
    global0 = 55683u;
    let var_1 = var_0;
    var var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(reverseBits(~(~44154u)), 62604u, ~arg_0 ^ _wgslsmith_dot_vec3_u32(arg_1, arg_1), ~62988u), ~vec4<u32>(10769u, _wgslsmith_dot_vec2_u32(arg_1.yz, vec2<u32>(28029u, arg_1.x)), arg_0, 65190u));
    let var_3 = vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.a.x, var_1.a.x), ~u_input.a.x, ~19296i), 21097i);
    return _wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_0, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 27517u, arg_0), select(vec3<u32>(1u, arg_1.x, arg_1.x), var_2.zzz, true))), firstTrailingBit(~arg_0 ^ _wgslsmith_clamp_u32(4294967295u, 0u, var_2.x))) | arg_1.x;
}

fn func_2() -> Struct_1 {
    var var_0 = vec2<u32>(firstTrailingBit(~1u), min(~1u, _wgslsmith_add_u32(firstLeadingBit(31832u), func_3(59992u, vec3<u32>(0u, 93216u, 57007u), 890f, Struct_1(u_input.a.zx)))) ^ 1u);
    var var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(firstTrailingBit(u_input.a.x), u_input.a.x), (vec2<i32>(~u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)) & reverseBits(vec2<i32>(u_input.a.x, -28169i))) & (u_input.a.yx << (vec2<u32>(firstTrailingBit(var_0.x), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(var_0.x, 4294967295u))) % vec2<u32>(32u))));
    return Struct_1(_wgslsmith_add_vec2_i32(u_input.a.xz, _wgslsmith_mult_vec2_i32(u_input.a.xy, u_input.a.xx)));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(countOneBits((vec2<i32>(-48042i, u_input.a.x) | -u_input.a.zy) | vec2<i32>(~(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, 30533i), vec4<i32>(u_input.a.x, -14526i, -65237i, -15279i)))));
    var_0 = func_2();
    var_0 = Struct_1(vec2<i32>(-1i) * -var_0.a);
    var var_1 = any(!(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), false))));
    var var_2 = Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(~(~u_input.a.x), 0i), var_0.a));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<i32>(-19767i, u_input.a.x));
    let var_1 = func_1();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1274f + 1385f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-632f, -953f))))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-473f - _wgslsmith_f_op_f32(-105f + -1000f))))));
    var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1148f + -973f))))))));
    var var_3 = vec4<f32>(-435f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1807f - 1f) - 910f), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-817f - -1076f), -441f)))));
    var var_4 = Struct_1(_wgslsmith_mod_vec2_i32(min(_wgslsmith_clamp_vec2_i32(u_input.a.xx, vec2<i32>(u_input.a.x, 49739i), var_1.a), vec2<i32>(-20221i, select(u_input.a.x, 0i, true))), ~func_1().a << (vec2<u32>(firstTrailingBit(71632u), ~0u) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-994f, -124f))) * var_3.x)), ~reverseBits(vec2<u32>(_wgslsmith_add_u32(47842u, 1u), _wgslsmith_div_u32(17648u, 1u))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(var_3.x, var_3.x)), 738f, _wgslsmith_div_f32(-365f, var_3.x)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(sign(var_3.x)), _wgslsmith_div_f32(403f, 1100f), _wgslsmith_f_op_f32(floor(-528f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-593f * 690f)), ~firstLeadingBit(0u));
}

