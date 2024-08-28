struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: u32,
    d: Struct_1,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_4) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a), arg_0.a, -2057f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-788f)))));
    global0 = any(!vec3<bool>(arg_0.d.a.x, arg_0.b.c.x < -40581i, select(arg_0.b.d.a.x, arg_0.b.d.a.x, false))) & !(arg_0.d.a.x | any(!arg_0.d.a.wyx));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-821f * arg_0.a))))))));
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> i32 {
    global0 = true;
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(486f, 1033f, 529f), vec3<f32>(-536f, -1179f, -1000f)))))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(149f - 1421f) - -415f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -987f)), _wgslsmith_f_op_f32(func_3(Struct_4(-525f, Struct_2(vec2<i32>(arg_1, arg_1), arg_0.b, arg_0.c, arg_0.d), u_input.c, Struct_1(vec4<bool>(false, arg_0.d.a.x, true, true)), vec3<i32>(-2811i, 59683i, arg_0.a.x))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1032f, var_0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -818f, 2469f)) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-383f, -1115f, -136f) + vec3<f32>(137f, var_0.x, var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -228f, var_0.x) - vec3<f32>(908f, 1625f, var_0.x))))))));
    global0 = true;
    let var_1 = arg_0.c.xwx;
    return -34689i;
}

fn func_4(arg_0: vec4<i32>) -> f32 {
    var var_0 = Struct_1(vec4<bool>(any(vec3<bool>(true, true, true)), any(vec2<bool>(true, true)), _wgslsmith_div_i32(~(-24321i), ~(-59031i)) >= arg_0.x, any(select(vec3<bool>(false, false, false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true))))));
    let var_1 = ~(0u << (_wgslsmith_add_u32(u_input.c, 1u) % 32u));
    let var_2 = arg_0 << (vec4<u32>(select(1u, ~0u, all(var_0.a)), 25165u >> ((var_1 >> (~97257u % 32u)) % 32u), 15987u, u_input.b) % vec4<u32>(32u));
    let var_3 = vec4<i32>(arg_0.x, arg_0.x, arg_0.x, var_2.x & var_2.x);
    let var_4 = arg_0.xxx;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1048f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -154f) + -779f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(578f)) * _wgslsmith_f_op_f32(938f + 396f)))) * -1085f);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: vec3<bool>) -> vec2<u32> {
    global0 = arg_2.x;
    let var_0 = _wgslsmith_f_op_f32(func_4(~vec4<i32>(arg_0.x, arg_0.x, 1i, func_2(Struct_2(arg_0, 35033u, vec4<i32>(arg_0.x, 55355i, -1i, -2147483647i), Struct_1(vec4<bool>(arg_2.x, arg_2.x, false, false))), min(arg_0.x, arg_0.x)))));
    global0 = ~_wgslsmith_dot_vec3_u32(select(u_input.a, u_input.a, vec3<bool>(false, arg_2.x, arg_2.x)), vec3<u32>(30980u, 4294967295u, _wgslsmith_mod_u32(0u, 6403u))) <= max(u_input.c, ~(~_wgslsmith_mod_u32(u_input.b, u_input.a.x)));
    var var_1 = max(func_2(Struct_2(countOneBits(firstTrailingBit(arg_0)), u_input.a.x, ~vec4<i32>(arg_0.x, 0i, arg_0.x, 0i), Struct_1(!vec4<bool>(true, false, arg_2.x, true))), -countOneBits(arg_0.x)), -1i);
    global0 = true;
    return vec2<u32>(~_wgslsmith_clamp_u32(~(u_input.a.x | 4294967295u), 66991u, ~14702u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.a.x, u_input.b, min(21049u, 1u)), vec4<u32>(~(~76208u), u_input.a.x ^ 24326u, u_input.b ^ reverseBits(u_input.c), ~4079u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(firstTrailingBit(min(vec3<i32>(_wgslsmith_div_i32(1i, -2147483647i), i32(-1i) * -2304i, 25212i), vec3<i32>(13313i, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -68270i, 1i), vec3<i32>(0i, -31121i, -2147483647i))))));
    let var_1 = Struct_3(-1239f);
    var var_2 = ~_wgslsmith_dot_vec3_u32(reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 515u, u_input.c), u_input.a)), ~(~u_input.a)) != select(u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), u_input.a.xx), ~u_input.c), firstLeadingBit(func_1(vec2<i32>(var_0.x, 0i), vec2<f32>(var_1.a, var_1.a), vec3<bool>(false, false, true)))), !all(select(vec2<bool>(false, true), vec2<bool>(false, true), true)));
    let var_3 = Struct_2(var_0.xx, 1u, (vec4<i32>(_wgslsmith_mod_i32(2147483647i, var_0.x), var_0.x, _wgslsmith_add_i32(36340i, var_0.x), _wgslsmith_mult_i32(var_0.x, 0i)) << (vec4<u32>(u_input.c, abs(u_input.c), func_1(vec2<i32>(var_0.x, 29688i), vec2<f32>(-1000f, var_1.a), vec3<bool>(false, true, false)).x, u_input.b) % vec4<u32>(32u))) ^ (_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, 29171i, var_0.x, var_0.x) >> (vec4<u32>(28371u, 10874u, u_input.b, u_input.b) % vec4<u32>(32u)), vec4<i32>(var_0.x, 42822i, 21767i, var_0.x) ^ vec4<i32>(-46327i, var_0.x, var_0.x, var_0.x)) ^ vec4<i32>(-33576i, var_0.x, -var_0.x, var_0.x)), Struct_1(vec4<bool>(true, true, true, true)));
    let var_4 = var_3.c.zy;
    let var_5 = vec4<u32>(~_wgslsmith_mod_u32(11794u, u_input.b), min(~firstTrailingBit(_wgslsmith_add_u32(0u, 7681u)), 4294967295u), _wgslsmith_clamp_u32(~4294967295u, 1u, 6043u), 6419u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zx, ~var_3.a.x);
}

