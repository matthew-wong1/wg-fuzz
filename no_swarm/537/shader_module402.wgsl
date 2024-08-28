struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: vec2<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 2>;

var<private> global1: array<Struct_3, 16>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1105f)))), ~(-2147483647i));
    let var_1 = var_0;
    let var_2 = true;
    global0 = array<vec4<f32>, 2>();
    let var_3 = ~_wgslsmith_mod_vec3_i32(max(~(~vec3<i32>(17248i, var_0.b, var_1.b)), vec3<i32>(countOneBits(var_1.b), -2147483647i, min(var_0.b, var_0.b))), vec3<i32>(var_1.b, var_0.b, var_1.b));
    return abs(firstTrailingBit(1u));
}

fn func_2(arg_0: Struct_2) -> vec4<i32> {
    let var_0 = vec3<i32>(-2147483647i, countOneBits(arg_0.b), arg_0.b);
    let var_1 = Struct_1(vec4<u32>(6175u, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), func_3(Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 1u, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 4294967295u)), -590f)), ~(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) << (u_input.a.x % 32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(600f)), arg_0.a, true)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_0.a))))), _wgslsmith_f_op_f32(trunc(arg_0.a))));
    global1 = array<Struct_3, 16>();
    let var_2 = ~(~var_1.a.zz) & var_1.a.yx;
    global0 = array<vec4<f32>, 2>();
    return _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(firstTrailingBit(_wgslsmith_mod_vec4_i32(min(vec4<i32>(arg_0.b, 7067i, var_0.x, arg_0.b), vec4<i32>(-58895i, arg_0.b, -3115i, var_0.x)), vec4<i32>(arg_0.b, -14416i, -1i, var_0.x))), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(max(vec4<i32>(var_0.x, -2147483647i, arg_0.b, var_0.x), vec4<i32>(14127i, arg_0.b, var_0.x, -2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(-14376i, arg_0.b, var_0.x, arg_0.b), vec4<i32>(0i, -1i, -1i, -2147483647i))), reverseBits(max(vec4<i32>(arg_0.b, 2147483647i, -2147483647i, -1i), vec4<i32>(1i, 25427i, arg_0.b, 16705i))))), vec4<i32>(59948i, 1i, ~max(_wgslsmith_dot_vec2_i32(vec2<i32>(32958i, var_0.x), vec2<i32>(1i, var_0.x)), ~1i), ~_wgslsmith_mod_i32(~25184i, -1251i)), firstTrailingBit(select(vec4<i32>(var_0.x, var_0.x, 8595i, 41886i) & vec4<i32>(var_0.x, -1i, 1i, var_0.x), -select(vec4<i32>(-2147483647i, 21720i, 671i, 1i), vec4<i32>(0i, 48098i, -5889i, var_0.x), true), -168f <= arg_0.a)));
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> Struct_2 {
    var var_0 = arg_0;
    global0 = array<vec4<f32>, 2>();
    global1 = array<Struct_3, 16>();
    let var_1 = Struct_1(~(vec4<u32>(65671u, 1u, 0u, u_input.a.x) & ~vec4<u32>(u_input.a.x, 402u, u_input.a.x, 4294967295u)) >> (~((vec4<u32>(u_input.a.x, 0u, 805u, u_input.a.x) >> (vec4<u32>(37067u, u_input.a.x, 1u, u_input.a.x) % vec4<u32>(32u))) << (~vec4<u32>(57463u, u_input.a.x, 4294967295u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)), -1228f);
    var var_2 = firstTrailingBit(vec3<u32>(1u, func_3(var_1), u_input.a.x));
    return Struct_2(_wgslsmith_f_op_f32(min(-515f, -1227f)), ~arg_1);
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = func_4(Struct_3(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, 777f, 1945f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1094f, 380f, 736f) - vec3<f32>(-1555f, 1214f, 730f))))), select(!(!vec2<bool>(arg_0, arg_0)), select(vec2<bool>(arg_0, arg_0), !vec2<bool>(arg_0, arg_0), false), true), 175f), _wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(-vec4<i32>(0i, -12694i, -2147483647i, -380i), ~vec4<i32>(7992i, 34380i, -4278i, -47239i)), ~((vec4<i32>(0i, -47866i, -1i, -1i) << (vec4<u32>(1u, u_input.a.x, u_input.a.x, 80804u) % vec4<u32>(32u))) & func_2(Struct_2(370f, -1i)))));
    let var_1 = Struct_3(true, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -577f), _wgslsmith_f_op_f32(-293f + var_0.a), _wgslsmith_f_op_f32(var_0.a + var_0.a)) + vec3<f32>(-1821f, -168f, 408f)), vec3<f32>(var_0.a, var_0.a, var_0.a)), !select(!vec2<bool>(false, arg_0), vec2<bool>(select(arg_0, arg_0, arg_0), arg_0), !arg_0), _wgslsmith_div_f32(-1223f, var_0.a));
    var_0 = Struct_2(-167f, 0i);
    global0 = array<vec4<f32>, 2>();
    global0 = array<vec4<f32>, 2>();
    return func_4(global1[_wgslsmith_index_u32(22534u, 16u)], 1i);
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3, arg_3: i32) -> f32 {
    let var_0 = arg_2;
    let var_1 = func_1(!(1104f <= arg_0)).a;
    return _wgslsmith_f_op_f32(var_1 * arg_2.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 2>();
    global1 = array<Struct_3, 16>();
    global1 = array<Struct_3, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(815f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-635f * -1582f), _wgslsmith_f_op_f32(f32(-1f) * -994f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(521f, -3055f))))), _wgslsmith_f_op_f32(select(-893f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1007f, -389f) - 298f), _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_f32(-1215f - -1000f), func_1(true), global1[_wgslsmith_index_u32(u_input.a.x, 16u)], min(12803i, 14240i)))), true || select(true, any(vec4<bool>(true, true, false, true)), true))), (-_wgslsmith_dot_vec3_i32(vec3<i32>(-36991i, -676i, -16217i), vec3<i32>(12254i, 45155i, 1i)) ^ -15018i) | 2147483647i);
}

