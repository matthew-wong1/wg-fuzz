struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2(arg_0: vec4<i32>) -> i32 {
    global0 = array<Struct_3, 18>();
    var var_0 = Struct_2(Struct_1(0i << (u_input.a % 32u)));
    var var_1 = Struct_2(var_0.a);
    global0 = array<Struct_3, 18>();
    var_0 = Struct_2(Struct_1(-5259i));
    return var_0.a.a;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: f32) -> vec2<i32> {
    global0 = array<Struct_3, 18>();
    let var_0 = _wgslsmith_mod_vec2_u32(~_wgslsmith_mult_vec2_u32(arg_2.xx, _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, 617u), vec2<u32>(0u, u_input.a))), select(firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.a), ~vec2<u32>(0u, arg_2.x), countOneBits(vec2<u32>(u_input.a, u_input.a)))), _wgslsmith_mod_vec2_u32(~arg_2.xx, _wgslsmith_div_vec2_u32(vec2<u32>(1289u, 0u), max(vec2<u32>(27753u, 1u), arg_2.xx))), vec2<bool>(false, any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false))))));
    global0 = array<Struct_3, 18>();
    var var_1 = ~1u;
    let var_2 = 23688i;
    return _wgslsmith_div_vec2_i32(reverseBits(max(vec2<i32>(1i, 1i), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(14935i, 9626i), vec2<i32>(var_2, -68883i)), firstTrailingBit(vec2<i32>(arg_1.a.a, 2125i))))), ~(-(vec2<i32>(u_input.b, arg_0.a.a) | vec2<i32>(24349i, u_input.b)) | vec2<i32>(-22545i, var_2)));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec2<i32>, arg_3: vec4<f32>) -> f32 {
    global0 = array<Struct_3, 18>();
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-arg_1), ~abs(firstTrailingBit(vec3<i32>(arg_2.x, 4613i, u_input.b))));
    let var_1 = Struct_3(arg_1, vec3<i32>(-min(arg_2.x, -arg_2.x), arg_2.x, ~(arg_0 >> (1u % 32u)) >> (13341u % 32u)));
    let var_2 = Struct_2(Struct_1(0i));
    return 971f;
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.b;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(func_4(~func_2(vec4<i32>(u_input.b, var_0, 177i, var_0) | vec4<i32>(var_0, var_0, -6552i, 0i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1085f + 1689f) * -1000f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1796f, -248f, false))))), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(var_0, var_0), func_3(Struct_2(Struct_1(u_input.b)), Struct_2(Struct_1(8631i)), ~vec3<u32>(0u, 20940u, u_input.a), -1000f), -(~vec2<i32>(-2147483647i, var_0))), vec4<f32>(325f, 904f, _wgslsmith_div_f32(-287f, _wgslsmith_f_op_f32(f32(-1f) * -1247f)), -2533f))), max(vec3<i32>(var_0, var_0, var_0), ~_wgslsmith_mod_vec3_i32(vec3<i32>(var_0, var_0, -16636i) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)), vec3<i32>(59869i, 0i, var_0) | vec3<i32>(u_input.b, var_0, 1i))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1.a)), var_1.a, _wgslsmith_f_op_f32(func_4(-21463i, var_1.a, vec2<i32>(-1i, -1i) & var_1.b.xz, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.a, var_1.a, 644f, -263f), vec4<f32>(var_1.a, var_1.a, -1000f, var_1.a))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, var_1.a, var_1.a, var_1.a)))))));
    global0 = array<Struct_3, 18>();
    var_1 = global0[_wgslsmith_index_u32(51859u, 18u)];
    return Struct_1(1i ^ var_1.b.x);
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> i32 {
    global0 = array<Struct_3, 18>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(~_wgslsmith_mult_i32(~(-1i), select(arg_1.a, u_input.b, false)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-900f, 1106f)), _wgslsmith_f_op_f32(step(953f, -1167f))), 1000f)), firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, 1i) >> (vec2<u32>(42115u, 4294967295u) % vec2<u32>(32u)), min(vec2<i32>(arg_1.a, -46179i), vec2<i32>(u_input.b, -2147483647i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1099f, -1000f, -145f, 1920f))))));
    let var_1 = ~(~_wgslsmith_add_vec4_u32(~vec4<u32>(1146u, u_input.a, u_input.a, 4294967295u), vec4<u32>(arg_2, 14914u, 32841u, 49350u))) ^ select(vec4<u32>(~firstLeadingBit(23766u), ~4294967295u, countOneBits(arg_2), ~arg_2), vec4<u32>(arg_2 ^ 36094u, firstTrailingBit(arg_2), _wgslsmith_dot_vec4_u32(vec4<u32>(27633u, arg_2, arg_2, arg_2), vec4<u32>(arg_2, 30053u, 4294967295u, arg_2)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, arg_2, 1u), vec4<u32>(0u, arg_2, arg_2, u_input.a))) ^ _wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(u_input.a, 4294967295u, 39512u, arg_2)), reverseBits(vec4<u32>(arg_2, u_input.a, u_input.a, u_input.a)), countOneBits(vec4<u32>(u_input.a, 54560u, u_input.a, 0u))), select(!vec4<bool>(true, arg_3, arg_3, true), vec4<bool>(u_input.b < arg_1.a, true, false, arg_0 == false), !all(vec3<bool>(false, arg_3, true))));
    let var_2 = Struct_1(2147483647i);
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -998f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-291f))) * 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -581f) - _wgslsmith_f_op_f32(1644f + -984f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(159f, -1391f)), _wgslsmith_f_op_f32(round(329f)), !arg_0))), 716f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-230f, 1876f, 2186f, 1124f) + vec4<f32>(1353f, 1961f, -1308f, -266f))))));
    return ~(-40808i);
}

fn func_6(arg_0: i32, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec2<bool>) -> Struct_2 {
    global0 = array<Struct_3, 18>();
    var var_0 = arg_3.x;
    var var_1 = _wgslsmith_f_op_f32(-1000f + -1232f);
    var_0 = all(select(vec3<bool>(select(u_input.a, u_input.a, true) != 47056u, (2147483647i < arg_2.x) && true, true), select(!(!vec3<bool>(arg_3.x, false, false)), select(!vec3<bool>(arg_3.x, arg_3.x, arg_3.x), !vec3<bool>(arg_3.x, false, arg_3.x), false), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, arg_3.x), vec3<bool>(arg_3.x, arg_3.x, arg_3.x), all(vec4<bool>(true, arg_3.x, arg_3.x, arg_3.x)))));
    var var_2 = arg_3.x;
    return Struct_2(func_1());
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 18>();
    let var_0 = abs(0u);
    let var_1 = func_6(0i, Struct_2(Struct_1(-1i)), vec2<i32>(func_5(false, func_1(), ~firstTrailingBit(0u), _wgslsmith_f_op_f32(ceil(-1549f)) <= _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1i), vec2<bool>(true, _wgslsmith_mod_u32(var_0, select(0u, var_0, true)) <= u_input.a));
    var var_2 = func_6(u_input.b, var_1, firstLeadingBit(~vec2<i32>(_wgslsmith_sub_i32(-5645i, -309i), var_1.a.a)), vec2<bool>(false, false)).a;
    global0 = array<Struct_3, 18>();
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(2401f - _wgslsmith_f_op_f32(1174f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1806f))))), 1067f);
    let var_4 = var_0;
    let var_5 = Struct_2(Struct_1(func_6(min(func_5(true, Struct_1(u_input.b), var_4, false), func_3(var_1, var_1, vec3<u32>(u_input.a, 0u, 1u), 2560f).x), Struct_2(var_1.a), _wgslsmith_add_vec2_i32(vec2<i32>(-14831i, u_input.b) ^ vec2<i32>(-15210i, var_2.a), select(vec2<i32>(0i, var_1.a.a), vec2<i32>(-2147483647i, 25327i), vec2<bool>(true, false))), vec2<bool>(true, false)).a.a));
    global0 = array<Struct_3, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i);
}

