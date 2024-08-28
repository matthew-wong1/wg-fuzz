struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(true);

var<private> global1: vec2<i32> = vec2<i32>(1i, -28265i);

var<private> global2: bool = true;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<f32>) -> bool {
    var var_0 = Struct_2(global0.a);
    let var_1 = 1125f;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(397f, _wgslsmith_f_op_f32(round(arg_1.x))) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(trunc(-1095f)), _wgslsmith_f_op_f32(trunc(1000f)))))));
    var_0 = Struct_2(global0.a);
    var var_3 = Struct_2(!var_0.a);
    return global0.a;
}

fn func_4(arg_0: vec3<bool>) -> i32 {
    global1 = max(vec2<i32>(_wgslsmith_div_i32(1i >> ((u_input.a ^ 4294967295u) % 32u), firstTrailingBit(firstTrailingBit(global1.x))), global1.x), countOneBits(-vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, 51644i), vec2<i32>(16717i, global1.x)), ~global1.x)));
    var var_0 = ~(~reverseBits(vec4<u32>(4294967295u, u_input.a, u_input.a, 16755u)) ^ _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(12858u, 0u, u_input.a, 1u)), abs(reverseBits(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))));
    var var_1 = Struct_1(reverseBits(u_input.a) & _wgslsmith_sub_u32(select(u_input.a, _wgslsmith_clamp_u32(15210u, var_0.x, 0u), arg_0.x), ~_wgslsmith_add_u32(var_0.x, u_input.a)), vec4<i32>(~(-32029i), -19833i, -22621i, abs(0i)), ~11698i);
    let var_2 = !(-37061i != min(1i, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(var_1.b, var_1.b), ~var_1.c)));
    var var_3 = _wgslsmith_f_op_f32(floor(-476f));
    return -select(var_1.c, firstLeadingBit(global1.x) | _wgslsmith_dot_vec4_i32(-var_1.b, -vec4<i32>(-1293i, global1.x, -2147483647i, -49599i)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 66843u), reverseBits(var_0.yz)) < 53042u);
}

fn func_2(arg_0: u32) -> u32 {
    global2 = !global0.a;
    var var_0 = func_4(!select(vec3<bool>(true, func_3(vec2<u32>(u_input.a, 33675u), vec2<f32>(-1000f, 316f)), true || global0.a), select(select(vec3<bool>(true, false, global0.a), vec3<bool>(global0.a, true, global0.a), vec3<bool>(global0.a, global0.a, global0.a)), !vec3<bool>(global0.a, true, false), 13000i == global1.x), false));
    let var_1 = vec2<i32>(2147483647i, -27200i);
    global1 = vec2<i32>(_wgslsmith_sub_i32(abs(0i), firstLeadingBit(~select(var_1.x, global1.x, global0.a))), global1.x);
    global0 = Struct_2(!any(select(vec2<bool>(true, true), vec2<bool>(true, true), !global0.a)));
    return ~0u;
}

fn func_1() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(386f, -236f, 616f, -1982f) * vec4<f32>(1587f, -857f, 1354f, -335f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-409f, 605f, -1000f, -609f)), true)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(185f, -829f, -1189f, -698f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2788f, -1358f, -510f, 445f)))))));
    let var_1 = vec4<u32>(u_input.a, _wgslsmith_mod_u32(u_input.a, ~_wgslsmith_clamp_u32(1u, u_input.a, 3342u)), func_2(_wgslsmith_clamp_u32(35619u, u_input.a, u_input.a)), 0u) << (~(~(~(~vec4<u32>(u_input.a, 4294967295u, 1u, 55466u)))) % vec4<u32>(32u));
    var var_2 = abs(select(var_1.xw, ~(vec2<u32>(var_1.x, var_1.x) ^ var_1.ww), !select(!vec2<bool>(global0.a, global0.a), !vec2<bool>(global0.a, false), vec2<bool>(false, true))));
    let var_3 = vec4<u32>(_wgslsmith_clamp_u32(var_1.x, 54985u, 4063u) | _wgslsmith_dot_vec4_u32(var_1, vec4<u32>(1u, _wgslsmith_dot_vec3_u32(var_1.wxx, vec3<u32>(1u, 31703u, u_input.a)), 8728u, reverseBits(var_1.x))), _wgslsmith_dot_vec3_u32(var_1.wyw, firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(var_2.x, var_1.x, 6325u) << (vec3<u32>(1u, var_1.x, var_1.x) % vec3<u32>(32u)), select(var_1.yww, var_1.zwy, vec3<bool>(false, false, true))))), _wgslsmith_dot_vec2_u32(var_1.yx, var_1.yz), reverseBits(58666u) >> (_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(var_1.wyz), _wgslsmith_mult_vec3_u32(vec3<u32>(var_2.x, 0u, var_2.x), vec3<u32>(0u, var_1.x, var_1.x))), u_input.a) % 32u));
    let var_4 = Struct_2(all(vec4<bool>(all(select(vec4<bool>(false, true, false, global0.a), vec4<bool>(false, global0.a, global0.a, true), vec4<bool>(false, true, false, true))), func_3(~var_1.ww, vec2<f32>(497f, 247f)), true, any(select(vec4<bool>(true, false, true, global0.a), vec4<bool>(false, global0.a, global0.a, false), global0.a)))));
    return select(!(!select(select(vec2<bool>(true, global0.a), vec2<bool>(true, false), true), vec2<bool>(true, true), !global0.a)), vec2<bool>(global0.a, global0.a), vec2<bool>(func_3(var_1.xw, vec2<f32>(_wgslsmith_f_op_f32(-1208f * var_0.x), _wgslsmith_div_f32(var_0.x, -1647f))), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -322f);
    let var_1 = -countOneBits(vec2<i32>(-global1.x, _wgslsmith_mod_i32(13578i, global1.x))) >> (select(firstTrailingBit(~(~vec2<u32>(29883u, u_input.a))), vec2<u32>(abs(_wgslsmith_mult_u32(35367u, u_input.a)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(1u, u_input.a))), func_1()) % vec2<u32>(32u));
    let var_2 = vec4<u32>(reverseBits(61251u), u_input.a, 1u, 1u);
    var var_3 = 1176f;
    let var_4 = vec2<u32>(var_2.x ^ 4294967295u, ~(reverseBits(u_input.a) | ~84259u));
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-163f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - 1377f))) * _wgslsmith_f_op_f32(-var_0)) + var_0);
    var var_5 = Struct_2(!func_1().x);
    let var_6 = ~(~var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0, u_input.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * var_0), _wgslsmith_f_op_f32(-var_0)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 913f) * vec2<f32>(var_0, var_0))))));
}

