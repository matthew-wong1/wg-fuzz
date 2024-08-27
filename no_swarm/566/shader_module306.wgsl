struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec2<u32>;

var<private> global2: vec4<u32> = vec4<u32>(0u, 1u, 30568u, 34927u);

var<private> global3: vec3<i32> = vec3<i32>(-20596i, 0i, 19784i);

var<private> global4: array<vec3<u32>, 19> = array<vec3<u32>, 19>(vec3<u32>(46957u, 0u, 1u), vec3<u32>(21306u, 41286u, 0u), vec3<u32>(36810u, 0u, 54842u), vec3<u32>(56650u, 0u, 1u), vec3<u32>(4294967295u, 1u, 23904u), vec3<u32>(0u, 0u, 1u), vec3<u32>(29790u, 4294967295u, 4123u), vec3<u32>(11119u, 5166u, 130720u), vec3<u32>(795u, 1u, 6577u), vec3<u32>(4294967295u, 0u, 32854u), vec3<u32>(20738u, 1u, 2277u), vec3<u32>(39576u, 57679u, 0u), vec3<u32>(6419u, 4294967295u, 0u), vec3<u32>(1u, 1u, 1u), vec3<u32>(15697u, 18395u, 53001u), vec3<u32>(0u, 17505u, 115896u), vec3<u32>(6562u, 1u, 1u), vec3<u32>(49150u, 19090u, 20515u), vec3<u32>(17446u, 38821u, 50092u));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    global0 = !select(select(arg_0.xy, vec2<bool>(!global0.x, true), vec2<bool>(any(vec2<bool>(true, global0.x)), false != arg_0.x)), select(!arg_0.yw, arg_0.zx, vec2<bool>(any(vec4<bool>(arg_0.x, true, false, global0.x)), true)), vec2<bool>(select(arg_0.x, false, true), true));
    var var_0 = firstLeadingBit(-1i);
    global1 = abs(global2.zx);
    global0 = !vec2<bool>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global1.x, 1u, global1.x), vec3<u32>(global1.x, 4294967295u, u_input.b)), vec3<u32>(global1.x, 0u, 4908u) ^ vec3<u32>(0u, 20486u, global1.x)) == u_input.b, true & (u_input.a.x < -2147483647i));
    let var_1 = -1000f;
    return 853f;
}

fn func_2() -> vec2<f32> {
    global4 = array<vec3<u32>, 19>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(func_3(select(select(vec4<bool>(true, true, true, true), !vec4<bool>(global0.x, global0.x, global0.x, global0.x), all(vec4<bool>(false, global0.x, global0.x, false))), vec4<bool>(global0.x, all(vec4<bool>(global0.x, global0.x, true, true)), !global0.x, global0.x), false))), global1.x, _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, u_input.a.x, 1i), vec3<i32>(-35989i, global3.x, 14365i)), abs(vec3<i32>(1i, -73595i, global3.x))), ~reverseBits(-12457i), i32(-1i) * -global3.x), ~select(firstLeadingBit(vec3<i32>(1i, u_input.a.x, 17002i)), firstTrailingBit(vec3<i32>(u_input.a.x, u_input.a.x, global3.x)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, global0.x, global0.x)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.a)) * _wgslsmith_f_op_f32(f32(-1f) * -716f)))));
    var var_2 = Struct_1(var_0.a, ~1u, var_0.c);
    global1 = reverseBits(vec2<u32>(_wgslsmith_add_u32(1u, global2.x), ~4294967295u));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1487f, 351f), vec2<f32>(-906f, -604f))) - _wgslsmith_div_vec2_f32(vec2<f32>(-250f, 1192f), vec2<f32>(-831f, 1641f))) * vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(var_0.a - -406f)))));
}

fn func_1(arg_0: bool, arg_1: vec3<f32>) -> Struct_1 {
    global3 = abs(firstTrailingBit(vec3<i32>(0i, u_input.a.x, global3.x) | vec3<i32>(89495i, u_input.a.x, -34098i))) | abs(vec3<i32>(_wgslsmith_sub_i32(-2147483647i, 0i), _wgslsmith_div_i32(global3.x >> (global2.x % 32u), -u_input.a.x), u_input.a.x));
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_2()))))));
    var var_1 = select(vec3<bool>(arg_0, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2()).x) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * _wgslsmith_f_op_vec2_f32(func_2()).x)), !vec3<bool>(all(select(vec4<bool>(false, false, true, arg_0), vec4<bool>(false, false, true, true), false)), true, any(vec4<bool>(arg_0, false, false, true))), all(vec4<bool>(true, !global0.x, all(!vec4<bool>(true, arg_0, false, false)), all(select(vec3<bool>(true, true, global0.x), vec3<bool>(true, global0.x, true), true)))));
    global0 = var_1.xz;
    global2 = u_input.c;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2668f))), _wgslsmith_f_op_f32(f32(-1f) * -669f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_2()).x - var_0.x)), _wgslsmith_div_u32(1u, u_input.c.x), _wgslsmith_mult_vec3_i32(min(-vec3<i32>(u_input.a.x, 81525i, 1i), _wgslsmith_clamp_vec3_i32(min(vec3<i32>(global3.x, 1i, global3.x), vec3<i32>(u_input.a.x, 10117i, u_input.a.x)), select(vec3<i32>(-2147483647i, 0i, global3.x), vec3<i32>(global3.x, 1i, global3.x), vec3<bool>(true, false, var_1.x)), vec3<i32>(global3.x, u_input.a.x, u_input.a.x))), ~min(vec3<i32>(global3.x, u_input.a.x, 2147483647i) ^ vec3<i32>(0i, 9432i, u_input.a.x), vec3<i32>(83308i, u_input.a.x, u_input.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-899f, 301f, -449f)))))) + vec3<f32>(542f, -940f, -173f)));
    var var_1 = func_1(false, _wgslsmith_f_op_vec3_f32(vec3<f32>(-265f, 948f, 1238f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, 888f, var_0.a)))))));
    var_0 = func_1(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1494f, var_1.a, 1357f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, -313f, -713f))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, var_0.a, var_0.a)))))));
    var var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(var_0.a)), -1636f), vec2<f32>(_wgslsmith_f_op_f32(func_3(vec4<bool>(false, true, true, global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -303f), 625f)))));
    global4 = array<vec3<u32>, 19>();
    var var_3 = _wgslsmith_mult_i32(22034i, var_1.c.x);
    var var_4 = _wgslsmith_f_op_f32(trunc(285f));
    var var_5 = Struct_1(_wgslsmith_f_op_vec2_f32(func_2()).x, 4294967295u, ~(~countOneBits(~vec3<i32>(1i, global3.x, 2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, ~_wgslsmith_add_vec2_u32(global2.xy, ~_wgslsmith_add_vec2_u32(global2.ww, u_input.c.zy)), ~(abs(global2.x) & ~global2.x));
}

