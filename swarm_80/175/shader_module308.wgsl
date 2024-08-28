struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5>;

var<private> global1: u32;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: f32, arg_3: vec4<bool>) -> vec3<u32> {
    return vec3<u32>(~9136u, arg_1.a.x, ~u_input.a.x);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: i32) -> vec4<i32> {
    let var_0 = -998f;
    global0 = array<Struct_2, 5>();
    var var_1 = vec4<f32>(arg_0.x, arg_1.b.x, 1000f, -1400f);
    global1 = ~(~_wgslsmith_dot_vec3_u32(~u_input.a & func_3(vec4<u32>(1u, 13161u, u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(39096u, 5u)], arg_1.b.x, vec4<bool>(false, true, false, true)), ~(~vec3<u32>(arg_1.a.x, arg_1.a.x, 4294967295u))));
    return vec4<i32>(~firstTrailingBit(arg_2), -_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, arg_2, arg_2) ^ vec3<i32>(0i, -11901i, 22225i), _wgslsmith_div_vec3_i32(vec3<i32>(0i, 64207i, -1i), vec3<i32>(arg_2, arg_2, -15333i)), abs(vec3<i32>(-1i, 1i, u_input.b.x))), _wgslsmith_mult_vec3_i32(min(vec3<i32>(-32316i, arg_2, -8257i), vec3<i32>(u_input.b.x, 17349i, u_input.b.x)), ~vec3<i32>(arg_2, u_input.b.x, u_input.b.x))), ~arg_2, firstLeadingBit(-firstTrailingBit(_wgslsmith_div_i32(arg_2, 51283i))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool) -> vec2<bool> {
    let var_0 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.b) * _wgslsmith_f_op_vec3_f32(arg_1.b * vec3<f32>(_wgslsmith_f_op_f32(349f * arg_0.a), _wgslsmith_f_op_f32(-536f * arg_0.a), _wgslsmith_f_op_f32(max(667f, arg_1.b.x))))), Struct_2(~u_input.a.zy, arg_1.b), 18349i);
    global1 = ~8371u;
    let var_1 = abs(firstLeadingBit(21530i));
    var var_2 = arg_0.c.x << (arg_0.c.x % 32u);
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1012f, _wgslsmith_f_op_f32(round(arg_0.a)))), _wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(397f - _wgslsmith_f_op_f32(-840f * 1262f)))), _wgslsmith_f_op_f32(arg_1.b.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1439f, arg_1.b.x)) + _wgslsmith_f_op_f32(782f * -1783f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(407f)), _wgslsmith_f_op_f32(-arg_0.a))))));
    return select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, select(false, true, arg_2)), !vec2<bool>(arg_2, true), vec2<bool>(true || arg_2, !arg_2)), vec2<bool>(!arg_2, any(vec3<bool>(false, arg_2, false)))), select(vec2<bool>(false, false), vec2<bool>(24888i < u_input.b.x, !arg_0.b && true), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(4294967295u, vec2<i32>(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 2147483647i), vec2<i32>(u_input.b.x, 1i)) << (min(1u, 0u) % 32u)), ~1i), -318f, select(select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, all(vec3<bool>(true, false, false)))), select(vec2<bool>(true, true), vec2<bool>(true, true), func_1(Struct_1(-998f, true, vec4<u32>(17177u, u_input.a.x, u_input.a.x, 1u), u_input.b.x), Struct_2(vec2<u32>(93155u, u_input.a.x), vec3<f32>(-1000f, 304f, 1153f)), true)), !func_1(Struct_1(1179f, true, vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), u_input.b.x), Struct_2(u_input.a.zz, vec3<f32>(1732f, -144f, -673f)), true)));
    var var_1 = -_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-6733i, u_input.b.x, u_input.b.x), vec3<i32>(var_0.b.x, var_0.b.x, u_input.b.x)) >> (~(~vec3<u32>(1u, 19071u, 0u)) % vec3<u32>(32u)), ~(-_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, -1i, 0i), vec3<i32>(-13034i, u_input.b.x, -5361i), vec3<i32>(17254i, u_input.b.x, u_input.b.x))));
    let var_2 = ~(firstLeadingBit(min(func_2(vec3<f32>(795f, var_0.c, var_0.c), Struct_2(vec2<u32>(1u, 7733u), vec3<f32>(1055f, var_0.c, var_0.c)), var_1.x).ww, vec2<i32>(var_0.b.x, 11168i))) | ~vec2<i32>(-var_0.b.x, var_0.b.x));
    var var_3 = true;
    var_3 = !(!(!(true == (745f >= var_0.c))));
    var var_4 = true;
    global0 = array<Struct_2, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, select(~firstTrailingBit(vec3<i32>(var_1.x, u_input.b.x, -20269i)) << (~(~vec3<u32>(92263u, u_input.a.x, var_0.a)) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(35144i, 0i, var_1.x), _wgslsmith_add_vec3_i32(vec3<i32>(var_1.x, 22742i, 67935i), vec3<i32>(var_1.x, 0i, -29921i))), -vec3<i32>(0i, -2147483647i, var_1.x)), (1u | firstTrailingBit(var_0.a)) < _wgslsmith_mod_u32(u_input.a.x, 4294967295u)), _wgslsmith_f_op_f32(-var_0.c), -(_wgslsmith_add_vec3_i32(vec3<i32>(var_1.x, u_input.b.x, 2147483647i), vec3<i32>(-12456i, -1i, u_input.b.x)) >> (vec3<u32>(var_0.a, 78540u, 9220u) % vec3<u32>(32u))) ^ -(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, var_2.x), vec3<i32>(0i, 1i, 2147483647i)) | ~vec3<i32>(var_0.b.x, 2147483647i, -2147483647i)), ~((var_0.b.x | min(var_0.b.x, u_input.b.x)) >> (20875u % 32u)));
}

