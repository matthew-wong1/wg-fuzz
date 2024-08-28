struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
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

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_1(!select(vec3<bool>(true, any(vec2<bool>(false, false)), true), vec3<bool>(true, true, true), select(true, true, true)), arg_0.ywy);
    let var_1 = Struct_1(!vec3<bool>(true, any(vec4<bool>(false, var_0.a.x, false, false)), true), ~select(~var_0.b, vec3<u32>(~55347u, arg_0.x, arg_0.x), !select(var_0.a, vec3<bool>(var_0.a.x, false, var_0.a.x), var_0.a.x)));
    var var_2 = var_1;
    var_0 = var_1;
    var_2 = Struct_1(vec3<bool>(false, true, false), var_1.b);
    return var_1;
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec2<i32>, arg_3: vec3<f32>) -> vec3<bool> {
    var var_0 = ~max(arg_1, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(17615u, arg_0.b.x, arg_1, 0u), vec4<u32>(arg_0.b.x, 8148u, 4294967295u, 100525u)), vec4<u32>(arg_1, arg_0.b.x, 3407u, 60989u))) != (50661u >> (arg_0.b.x % 32u));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(abs(636f)))))));
    let var_2 = func_2(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(44782u, 1u, arg_0.b.x, 0u), _wgslsmith_mod_vec4_u32(max(vec4<u32>(1u, 7128u, 64102u, arg_1), vec4<u32>(arg_0.b.x, arg_0.b.x, 82664u, arg_1)), vec4<u32>(arg_0.b.x, 63359u, 51637u, arg_1))), vec4<u32>(abs(~33298u), arg_0.b.x, 110894u, 0u), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_1, 1u, arg_1, 1280u), vec4<u32>(20251u, 1u, 53558u, arg_1)))));
    var var_3 = Struct_1(var_2.a, arg_0.b);
    return vec3<bool>(true, any(func_2(max(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, arg_1, 1u, arg_0.b.x), vec4<u32>(arg_1, 4470u, 4294967295u, var_3.b.x)), abs(vec4<u32>(arg_1, var_2.b.x, 54476u, 36970u)))).a), var_2.a.x);
}

fn func_1() -> u32 {
    let var_0 = vec4<f32>(659f, _wgslsmith_f_op_f32(-1f), -2158f, _wgslsmith_f_op_f32(224f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1815f) - _wgslsmith_f_op_f32(-287f + 564f)) - 1f)));
    let var_1 = Struct_1(!func_3(func_2(vec4<u32>(1u, 1u, 1u, 1u)), 17165u, abs(-u_input.a.yy), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 2081f, 350f) + var_0.wxz))), vec3<u32>(4294967295u, ~1u, 1u));
    var var_2 = false;
    let var_3 = u_input.a;
    var_2 = true;
    return ~1u;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: u32, arg_3: bool) -> u32 {
    var var_0 = arg_0.a.xy;
    var var_1 = Struct_1(vec3<bool>(arg_0.a.x & !(!arg_0.a.x), arg_3, arg_3), arg_0.b);
    let var_2 = arg_0;
    var_1 = var_2;
    let var_3 = func_2(firstTrailingBit(vec4<u32>(var_2.b.x, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 24372u, 5634u, 85574u), vec4<u32>(1u, 24430u, 4294967295u, var_1.b.x)), 73175u << (arg_0.b.x % 32u)), 58990u, var_1.b.x | firstLeadingBit(var_2.b.x))));
    return _wgslsmith_mult_u32(var_2.b.x, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(0u, var_1.b.x, 32373u, var_1.b.x), ~vec4<u32>(1u, 4294967295u, 1u, 40402u)), (vec4<u32>(arg_2, 14791u, 76107u, 0u) ^ vec4<u32>(var_1.b.x, 25588u, 16483u, var_1.b.x)) >> ((vec4<u32>(65672u, 54236u, var_2.b.x, var_3.b.x) & vec4<u32>(4294967295u, 0u, var_3.b.x, 10539u)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(21346u, var_1.b.x, 4294967295u, var_3.b.x), vec4<u32>(var_3.b.x, var_1.b.x, var_3.b.x, var_1.b.x) & vec4<u32>(var_1.b.x, 76678u, arg_2, 1u))), ~(~select(vec4<u32>(var_2.b.x, var_1.b.x, 1u, 4294967295u), vec4<u32>(41376u, 1u, 177u, arg_2), vec4<bool>(var_1.a.x, true, var_0.x, var_2.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    let var_1 = vec2<u32>(func_4(Struct_1(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true))), min(vec3<u32>(var_0, var_0, var_0), abs(vec3<u32>(64982u, var_0, var_0)))), vec3<f32>(-494f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1490f))), -1331f), var_0 >> (func_1() % 32u), !(func_2(vec4<u32>(30010u, var_0, 27721u, 37060u)).b.x >= ~4294967295u)), 46384u);
    let var_2 = Struct_1(!func_3(func_2(~vec4<u32>(29285u, var_1.x, 44185u, 0u)), var_0, ~firstTrailingBit(u_input.a.ww), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1332f, 111f, -1047f))), _wgslsmith_div_vec3_f32(vec3<f32>(-750f, -1000f, 1102f), vec3<f32>(1051f, 1642f, -433f)), vec3<bool>(true, true, true)))), countOneBits(vec3<u32>(1u, var_0, 1u)));
    let var_3 = 32785u;
    let var_4 = !func_2(reverseBits(vec4<u32>(var_3 ^ 0u, firstLeadingBit(var_1.x), var_3, var_0 & var_3))).a;
    let var_5 = all(!vec4<bool>(any(vec4<bool>(var_2.a.x, false, var_2.a.x, true)) && true, func_2(vec4<u32>(0u, var_0, 0u, 0u)).a.x, false, var_2.a.x & all(vec4<bool>(var_2.a.x, false, var_2.a.x, var_4.x))));
    let var_6 = vec3<bool>(func_3(var_2, func_2(countOneBits(vec4<u32>(var_3, 0u, 80880u, var_1.x))).b.x, (vec2<i32>(28192i, u_input.a.x) ^ u_input.a.yw) & vec2<i32>(2147483647i, 52761i), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1191f, 1329f, 438f)))).x || true, any(vec2<bool>(true && var_5, var_5)) | false, false);
    let var_7 = vec3<i32>(u_input.a.x, u_input.a.x, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.yz, 1i, 41670u);
}

