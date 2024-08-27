struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(31596u, 4652u), vec4<u32>(15171u, 1u, 4294967295u, 31162u), vec3<f32>(-735f, 1919f, 2216f));

var<private> global1: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec2<bool>, arg_3: vec2<i32>) -> vec3<i32> {
    let var_0 = arg_0;
    let var_1 = var_0.c.x;
    return select(vec3<i32>(_wgslsmith_add_i32(reverseBits(_wgslsmith_mult_i32(arg_3.x, arg_3.x)), countOneBits(1i) << (global0.b.x % 32u)), (i32(-1i) * -2147483647i) >> (firstTrailingBit(_wgslsmith_mod_u32(7885u, global0.b.x)) % 32u), countOneBits(-54252i)), vec3<i32>(-16719i, -58368i, -countOneBits(-18870i)), vec3<bool>(false, !any(select(arg_2, arg_2, arg_2)), all(select(select(vec3<bool>(arg_2.x, arg_2.x, false), vec3<bool>(false, arg_2.x, arg_2.x), true), vec3<bool>(true, arg_2.x, arg_2.x), select(vec3<bool>(arg_2.x, arg_2.x, true), vec3<bool>(true, true, false), arg_2.x)))));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = false;
    var var_1 = arg_1;
    let var_2 = _wgslsmith_div_vec3_i32(reverseBits(-func_3(arg_2, 1u, vec2<bool>(true, false), vec2<i32>(arg_1, 2147483647i)) ^ firstLeadingBit(-vec3<i32>(-2147483647i, 5952i, -49406i))), vec3<i32>(-26578i, _wgslsmith_div_i32(arg_1, -34318i), 2147483647i));
    global0 = Struct_1(select(~(~(~arg_2.a)), u_input.a, true), ~vec4<u32>(_wgslsmith_sub_u32(global0.b.x | 0u, 34737u), _wgslsmith_sub_u32(arg_2.b.x, ~16428u), global1.b.x, _wgslsmith_mod_u32(~global1.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.b.x, global1.a.x, 0u), vec3<u32>(60124u, 29985u, u_input.a.x)))), global0.c);
    let var_3 = 303f;
    return _wgslsmith_mult_vec4_u32(global1.b, _wgslsmith_clamp_vec4_u32(vec4<u32>(~_wgslsmith_div_u32(arg_2.a.x, 4294967295u), 4294967295u, _wgslsmith_mod_u32(32149u >> (arg_2.b.x % 32u), _wgslsmith_dot_vec4_u32(global0.b, arg_2.b)), ~4294967295u), global0.b, _wgslsmith_sub_vec4_u32(arg_2.b | vec4<u32>(4294967295u, u_input.a.x, 0u, 4294967295u), arg_2.b) | global1.b));
}

fn func_1() -> bool {
    let var_0 = max(global0.b, _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(60871u, 0u, 1u, global0.a.x)), vec4<u32>(67857u, u_input.a.x, 106127u, global0.b.x)), firstLeadingBit(~global0.b)) & func_2(global1.c.x, -238i, Struct_1(abs(vec2<u32>(u_input.a.x, 1806u)), ~vec4<u32>(1u, 4294967295u, 24033u, global1.b.x), global0.c)));
    global1 = Struct_1(u_input.a, countOneBits(vec4<u32>(global0.b.x << (var_0.x % 32u), ~4294967295u, 239u, u_input.a.x) & ~global1.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(global1.c))));
    global0 = Struct_1(global1.b.yy, firstLeadingBit(_wgslsmith_clamp_vec4_u32(global0.b, countOneBits(~vec4<u32>(1u, global0.b.x, global0.a.x, u_input.a.x)), ~(~vec4<u32>(28652u, global1.a.x, var_0.x, global1.b.x)))), global0.c);
    global1 = Struct_1((~func_2(681f, -27270i, Struct_1(global1.b.xw, vec4<u32>(var_0.x, global1.b.x, 97985u, global0.b.x), vec3<f32>(1371f, 584f, global0.c.x))).xy << (var_0.xw % vec2<u32>(32u))) | vec2<u32>(1u, 3354u & _wgslsmith_dot_vec2_u32(global1.b.zw, vec2<u32>(global1.b.x, 50261u))), ~(_wgslsmith_sub_vec4_u32(~vec4<u32>(10728u, global1.b.x, 2285u, global1.b.x), vec4<u32>(0u, u_input.a.x, u_input.a.x, 0u)) | _wgslsmith_mult_vec4_u32(reverseBits(var_0), countOneBits(global1.b))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1113f) * _wgslsmith_f_op_f32(1000f - global1.c.x))), global0.c.x, _wgslsmith_f_op_f32(floor(-544f))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.c.x)));
    return any(!vec3<bool>(any(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true)) != any(vec3<bool>(true, false, false)), true));
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    global0 = Struct_1(select(~abs(reverseBits(u_input.a)), min(global1.b.xw, _wgslsmith_div_vec2_u32(arg_2.a ^ u_input.a, max(vec2<u32>(global0.a.x, global1.a.x), global0.a))), arg_2.c.x == global0.c.x), min(~select(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 17892u), vec4<u32>(arg_2.b.x, global1.a.x, 1u, 11209u), select(vec4<bool>(false, true, arg_1.x, false), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x))), ~vec4<u32>(global0.b.x, 1u, 29676u, ~28197u)), global1.c);
    global1 = arg_2;
    let var_0 = global0.c.x;
    global1 = arg_2;
    global1 = arg_2;
    return Struct_1(vec2<u32>(~(~arg_2.a.x | 15032u), 10407u), global1.b, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(global1.c - arg_2.c))) - _wgslsmith_div_vec3_f32(global0.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 1207f, -1093f) - global1.c))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(i32(-1i) * -2147483647i);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_div_f32(214f, -1145f), -1120f);
    global0 = Struct_1(_wgslsmith_sub_vec2_u32(~vec2<u32>(_wgslsmith_div_u32(39731u, u_input.a.x), u_input.a.x), ~global1.b.ww), vec4<u32>(global1.a.x, 1u, 77162u, 32989u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), -107f, _wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.c) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 647f, -1159f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.c) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-405f, global1.c.x, 1103f)) * _wgslsmith_f_op_vec3_f32(-global0.c)))));
    global1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x * -1706f))), select(vec2<bool>(_wgslsmith_f_op_f32(var_1.x + 2388f) < _wgslsmith_f_op_f32(sign(514f)), select(true, true, true)), vec2<bool>(all(vec3<bool>(true, false, true)) & func_1(), !all(vec2<bool>(false, true))), vec2<bool>(false, true)), Struct_1(~_wgslsmith_sub_vec2_u32(global1.b.xy, vec2<u32>(global0.a.x, 9842u)) ^ global0.b.zz, firstLeadingBit(abs(global0.b)) & vec4<u32>(u_input.a.x, 77492u, ~59524u, _wgslsmith_mod_u32(u_input.a.x, 1u)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(global1.c, vec3<f32>(var_1.x, -1045f, 1000f))) + global0.c)))), _wgslsmith_f_op_f32(-global0.c.x));
    let var_2 = u_input.a.x;
    global1 = func_4(global0.c.x, vec2<bool>(true, any(vec3<bool>(false, true, any(vec2<bool>(false, false))))), Struct_1(global0.b.zx, vec4<u32>(reverseBits(0u), _wgslsmith_add_u32(global0.b.x, global0.b.x), firstTrailingBit(global0.b.x), firstLeadingBit(var_2)) ^ max(global0.b, _wgslsmith_mult_vec4_u32(vec4<u32>(3297u, global1.a.x, 4294967295u, global1.b.x), global0.b)), global1.c), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - global0.c.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(global0.b.x, ~global1.a.x), ~_wgslsmith_mod_vec2_i32(vec2<i32>(-48941i, -49790i), reverseBits(firstLeadingBit(vec2<i32>(-24699i, 10432i)))), func_4(var_1.x, select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(false, false, true, true)), func_1()), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), Struct_1(~(~global0.b.zz), min(global1.b, max(vec4<u32>(global1.b.x, global0.a.x, global1.b.x, global1.b.x), global0.b)), vec3<f32>(_wgslsmith_f_op_f32(var_1.x * global1.c.x), var_1.x, _wgslsmith_f_op_f32(-global1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x * -443f))).c.x, func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(985f)))), _wgslsmith_f_op_f32(f32(-1f) * -866f)), !vec2<bool>(all(vec4<bool>(false, false, true, true)), -1i != var_0), Struct_1(countOneBits(u_input.a), func_4(-234f, vec2<bool>(false, false), func_4(-332f, vec2<bool>(false, false), Struct_1(global1.b.zw, global0.b, global0.c), global1.c.x), _wgslsmith_f_op_f32(min(global1.c.x, 766f))).b, global1.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), var_1.x)).b.wxw, _wgslsmith_dot_vec3_i32(abs(firstTrailingBit(-vec3<i32>(var_0, var_0, var_0))), min(abs(-vec3<i32>(var_0, var_0, var_0)), -countOneBits(vec3<i32>(7458i, 31008i, 42750i)))));
}

