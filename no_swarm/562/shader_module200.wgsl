struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: f32 = 1024f;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec2<u32>) -> f32 {
    var var_0 = 1062f;
    var var_1 = !(!select(arg_1.a.xxx, vec3<bool>(true | arg_1.a.x, arg_1.b, arg_1.b), !arg_1.a.xzx));
    global0 = arg_2.x;
    let var_2 = all(select(select(vec3<bool>(var_1.x && true, arg_2.x != 45877u, true), arg_1.a.xzw, !arg_1.a.zzz), arg_1.a.wxy, select(vec3<bool>(all(vec2<bool>(var_1.x, var_1.x)), any(arg_1.a), false), select(!vec3<bool>(false, var_1.x, var_1.x), arg_1.a.zxz, var_1.x), arg_1.b)));
    var var_3 = Struct_1(select(select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(var_1.x, false, arg_1.a.x, false), vec4<bool>(arg_1.a.x, false, false, true)), select(arg_1.a, arg_1.a, var_1.x), vec4<bool>(false, arg_1.b, true, var_2)), select(arg_1.a, !arg_1.a, any(vec2<bool>(true, false))), var_1.x), vec4<bool>(arg_1.b, false, var_2, var_2), true), true, arg_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-318f)) - arg_1.c) - arg_1.c)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.d + var_3.d) * _wgslsmith_f_op_f32(abs(var_3.c))), _wgslsmith_f_op_f32(round(-1036f))))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.c))))))));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: u32, arg_3: vec2<u32>) -> f32 {
    global0 = _wgslsmith_add_u32(1282u, ~4294967295u);
    var var_0 = arg_0.a;
    global1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~(vec3<i32>(47144i, arg_1, arg_1) ^ vec3<i32>(arg_1, 19916i, arg_1)), arg_0, _wgslsmith_sub_vec2_u32(arg_3, vec2<u32>(arg_3.x, 17590u) << (vec2<u32>(122611u, 97153u) % vec2<u32>(32u)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<i32>(u_input.a, u_input.a, 422i), arg_0, arg_3)) + _wgslsmith_f_op_f32(f32(-1f) * -1020f)) + arg_0.d))));
    let var_1 = Struct_1(!arg_0.a, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.d, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.d)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-775f)) + _wgslsmith_f_op_f32(-arg_0.c))))));
    var var_2 = arg_0;
    return _wgslsmith_f_op_f32(-var_2.d);
}

fn func_2(arg_0: i32, arg_1: bool) -> vec2<u32> {
    var var_0 = _wgslsmith_dot_vec4_i32(-(~(vec4<i32>(-33343i, u_input.a, 34860i, -41727i) | vec4<i32>(arg_0, u_input.a, -24218i, arg_0))), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(37330i, u_input.a), arg_0), -arg_0, -719i, _wgslsmith_dot_vec2_i32(min(vec2<i32>(0i, 43153i), vec2<i32>(-3296i, u_input.a)), vec2<i32>(u_input.a, u_input.a) >> (vec2<u32>(4294967295u, 14442u) % vec2<u32>(32u))))) | (~(~(-1i)) | firstTrailingBit(arg_0));
    var_0 = -11399i;
    let var_1 = _wgslsmith_f_op_f32(min(362f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(Struct_1(select(vec4<bool>(arg_1, true, false, false), vec4<bool>(false, arg_1, arg_1, arg_1), false), arg_1, _wgslsmith_f_op_f32(trunc(-543f)), _wgslsmith_f_op_f32(func_3(vec3<i32>(u_input.a, 1i, 0i), Struct_1(vec4<bool>(false, false, true, arg_1), true, -908f, -1428f), vec2<u32>(64669u, 1u)))), -(i32(-1i) * -34415i), _wgslsmith_mod_u32(_wgslsmith_div_u32(1u, 50189u), ~33802u), vec2<u32>(1u, 1u))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-526f, 1000f)), 731f))))));
    var var_2 = abs(-_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0, 9218i), vec2<i32>(0i, u_input.a)), reverseBits(vec2<i32>(arg_0, arg_0))));
    global1 = -345f;
    return _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u) << (firstTrailingBit(vec2<u32>(1u, 0u)) % vec2<u32>(32u)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(0u, 4294967295u))), vec2<u32>(abs(~4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(31671u, 22088u), vec2<u32>(0u, 4294967295u))) >> (reverseBits(_wgslsmith_mult_vec2_u32(select(vec2<u32>(0u, 1u), vec2<u32>(88024u, 73141u), vec2<bool>(false, true)), ~vec2<u32>(4294967295u, 5891u))) % vec2<u32>(32u)));
}

fn func_1() -> StorageBuffer {
    let var_0 = 82054u;
    let var_1 = ~(~_wgslsmith_div_vec2_u32(func_2(17980i, true), _wgslsmith_sub_vec2_u32(vec2<u32>(41129u, var_0) | vec2<u32>(4294967295u, var_0), func_2(u_input.a, true))));
    global1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-860f + _wgslsmith_f_op_f32(abs(-180f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-829f, 420f) + _wgslsmith_f_op_f32(step(1268f, 1572f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-476f - 1963f))))))));
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -695f)) + -1195f), 1102f));
    global0 = ~var_0;
    return StorageBuffer(vec3<i32>(-56002i, u_input.a, u_input.a) >> (~_wgslsmith_div_vec3_u32(~vec3<u32>(var_1.x, 62354u, var_0), select(vec3<u32>(4294967295u, 16408u, 50257u), vec3<u32>(var_0, 4294967295u, 36038u), vec3<bool>(true, false, false))) % vec3<u32>(32u)), ~max(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -1i, u_input.a, 46581i), -vec4<i32>(2147483647i, u_input.a, -9367i, -45080i)), u_input.a), ~vec3<u32>(var_0, ~var_1.x, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, var_1.x), 28057u, _wgslsmith_dot_vec2_u32(vec2<u32>(79511u, 28303u), vec2<u32>(var_0, var_0)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1467f, _wgslsmith_f_op_f32(func_4(Struct_1(vec4<bool>(true, false, false, true), false, -148f, 461f), 3377i, var_1.x, var_1))) + _wgslsmith_f_op_f32(f32(-1f) * -156f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(4294967295u >> (max(1u, firstLeadingBit(57716u)) % 32u));
    let x = u_input.a;
    s_output = func_1();
}

