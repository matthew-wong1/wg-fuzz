struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> f32 {
    let var_0 = select(!select(vec3<bool>(false, true, -555f < arg_0.a), vec3<bool>(0u != u_input.d.x, true, true), true), !vec3<bool>(1u < arg_1.x, any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), false), !vec3<bool>(_wgslsmith_add_u32(arg_1.x, arg_1.x) < ~u_input.d.x, any(vec3<bool>(false, true, false)), _wgslsmith_div_f32(arg_0.b, arg_0.b) <= _wgslsmith_f_op_f32(-arg_0.b)));
    var var_1 = arg_0;
    let var_2 = Struct_1(_wgslsmith_div_f32(var_1.b, var_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1067f, arg_0.b)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-880f)) * var_1.b))));
    var var_3 = !var_0.xy;
    var var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2.b), var_1.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(ceil(-562f)), arg_0.a)))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_4.x))))))), _wgslsmith_f_op_f32(max(460f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.a)) + _wgslsmith_f_op_f32(arg_0.a + 206f)))))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_mod_u32(~u_input.e, 23226u);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(337f - -1578f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -456f)) + _wgslsmith_f_op_f32(ceil(-1348f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(-1201f, 513f), vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.d.x))) * -1822f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-2244f, -656f)) - -292f)))));
}

fn func_1() -> vec2<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-235f * 1991f)) + -987f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -574f)))));
    let var_1 = countOneBits(_wgslsmith_clamp_vec4_u32(~vec4<u32>(_wgslsmith_sub_u32(u_input.b.x, 33343u), reverseBits(u_input.b.x), ~4294967295u, 80506u), _wgslsmith_mod_vec4_u32(~min(u_input.d, vec4<u32>(u_input.e, 4294967295u, 7717u, 0u)), ~u_input.d), u_input.d));
    var var_2 = ~vec3<i32>(-1i, ~_wgslsmith_mod_i32(~u_input.c.x, u_input.a << (var_1.x % 32u)), u_input.c.x);
    let var_3 = func_2();
    global0 = ~_wgslsmith_add_u32(u_input.e, u_input.b.x >> (abs(14275u) % 32u)) <= 4294967295u;
    return _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c.x, _wgslsmith_div_i32(i32(-1i) * -11857i, _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(0i, 22150i)), min(vec2<i32>(12534i, 2147483647i), u_input.c.xy)))), -u_input.c.yx);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec2<u32>, arg_3: vec4<f32>) -> u32 {
    var var_0 = arg_0.b;
    let var_1 = select(~select(~u_input.d, vec4<u32>(~4294967295u, arg_2.x, u_input.b.x, ~4294967295u), vec4<bool>(true, true, true, true)), _wgslsmith_mult_vec4_u32(select(vec4<u32>(14765u, 32829u, 56313u, 0u), u_input.d, true) << (~countOneBits(vec4<u32>(0u, arg_2.x, arg_2.x, arg_2.x)) % vec4<u32>(32u)), u_input.d), vec4<bool>(false, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true))), all(vec3<bool>(true, all(vec4<bool>(true, false, true, false)), false)), any(vec4<bool>(true, true, true, true))));
    var_0 = _wgslsmith_f_op_f32(select(arg_3.x, _wgslsmith_f_op_f32(step(arg_0.a, _wgslsmith_div_f32(1430f, arg_3.x))), _wgslsmith_sub_u32(_wgslsmith_mult_u32(firstTrailingBit(u_input.e), 4294967295u), ~var_1.x) == (~(~1u) << (_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_2.x, 0u), var_1.wzy), ~u_input.b.x) % 32u))));
    let var_2 = true && (-98252i != u_input.c.x);
    global0 = !(!var_2);
    return _wgslsmith_div_u32(~(~abs(var_1.x)), _wgslsmith_dot_vec2_u32(u_input.b, u_input.d.yw));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !all(vec3<bool>(false, false, false));
    let var_0 = -1704f;
    global0 = false;
    global0 = true;
    var var_1 = min(_wgslsmith_add_vec3_u32(~(~vec3<u32>(u_input.d.x, 34410u, 0u)), reverseBits(~_wgslsmith_sub_vec3_u32(vec3<u32>(48562u, u_input.e, 22041u), u_input.d.zxw))), vec3<u32>(u_input.e, ~func_4(Struct_1(-445f, var_0), func_1(), vec2<u32>(u_input.b.x, 0u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -160f, var_0, var_0))), abs((u_input.d.x >> (u_input.e % 32u)) >> (1u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, _wgslsmith_div_f32(var_0, 691f), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(floor(586f)))))), -vec4<i32>(-32297i, u_input.a, u_input.c.x, u_input.a), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1828f, 1232f, var_0)), vec4<f32>(var_0, -483f, var_0, var_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-372f, var_0, var_0, var_0))), vec4<f32>(_wgslsmith_f_op_f32(var_0 * 957f), -193f, -688f, -1000f), vec4<bool>(true, true, true, true))));
}

