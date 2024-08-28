struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: bool;

var<private> global2: array<Struct_2, 4>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec4<f32>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(arg_2.zzy));
    let var_1 = Struct_2(!arg_1 && !(!(-600f == global0.x)), _wgslsmith_div_vec4_i32(-(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, u_input.c, -8844i, u_input.c), vec4<i32>(-3266i, u_input.c, 2147483647i, u_input.c))), vec4<i32>(abs(_wgslsmith_clamp_i32(2147483647i, -2147483647i, u_input.c)), ~(~0i), reverseBits(u_input.c), u_input.c)));
    global1 = true;
    let var_2 = 0i;
    let var_3 = var_1.b;
    return vec4<f32>(_wgslsmith_f_op_f32(min(-1543f, _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x + arg_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1395f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(316f, global0.x)), _wgslsmith_f_op_f32(sign(-534f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-491f, arg_2.x)) * -123f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-838f - -762f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -639f), _wgslsmith_f_op_f32(sign(1727f))))));
}

fn func_2(arg_0: vec4<bool>) -> Struct_4 {
    let var_0 = vec2<i32>(40479i, ~u_input.c);
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(true, arg_0.x, _wgslsmith_div_vec4_f32(vec4<f32>(396f, 603f, global0.x, global0.x), vec4<f32>(614f, global0.x, global0.x, 1103f)))))), vec4<f32>(524f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, 326f, arg_0.x & false)) - _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(floor(392f)), _wgslsmith_f_op_f32(-global0.x)), true));
    var var_2 = Struct_3((firstTrailingBit(_wgslsmith_div_i32(u_input.c, 0i)) >> (_wgslsmith_add_u32(u_input.a.x, _wgslsmith_sub_u32(u_input.b, u_input.a.x)) % 32u)) ^ reverseBits(-1i), global2[_wgslsmith_index_u32(u_input.a.x ^ (51781u << (~_wgslsmith_add_u32(u_input.b, 38416u) % 32u)), 4u)]);
    global2 = array<Struct_2, 4>();
    var var_3 = Struct_4(global2[_wgslsmith_index_u32(0u, 4u)], arg_0.x);
    return Struct_4(Struct_2(any(arg_0), vec4<i32>(15720i, _wgslsmith_mod_i32(13767i, _wgslsmith_sub_i32(var_3.a.b.x, -2147483647i)), -(~0i), -_wgslsmith_mult_i32(-44573i, var_3.a.b.x))), any(!arg_0));
}

fn func_4(arg_0: Struct_4) -> bool {
    var var_0 = vec2<bool>(true, all(vec2<bool>(true, true)));
    let var_1 = ~(~select(_wgslsmith_div_vec2_u32(u_input.a, reverseBits(u_input.a)), vec2<u32>(u_input.a.x, 15323u), !select(vec2<bool>(false, var_0.x), vec2<bool>(true, true), vec2<bool>(true, false))));
    let var_2 = Struct_4(func_2(vec4<bool>(false, false, !any(vec2<bool>(true, arg_0.a.a)), any(select(vec2<bool>(var_0.x, true), vec2<bool>(arg_0.a.a, true), var_0.x)))).a, true);
    let var_3 = vec4<bool>(select(arg_0.b, var_0.x, select(var_0.x, all(vec2<bool>(var_0.x, var_2.a.a)), true)) || func_2(vec4<bool>(var_0.x, var_2.b, !var_2.b, func_2(vec4<bool>(true, arg_0.b, true, false)).b)).b, any(select(select(vec2<bool>(true, arg_0.b), vec2<bool>(false, true), vec2<bool>(var_2.b, false)), select(vec2<bool>(false, arg_0.b), vec2<bool>(var_0.x, var_2.b), var_2.a.a), var_2.a.a)) && true, true, -2147483647i >= ((-var_2.a.b.x | _wgslsmith_dot_vec2_i32(var_2.a.b.wx, arg_0.a.b.zy)) >> (~1u % 32u)));
    var var_4 = ~var_2.a.b.x;
    return all(var_3.wwx);
}

fn func_1(arg_0: vec3<f32>) -> Struct_4 {
    var var_0 = vec2<bool>(true, true);
    var var_1 = vec2<bool>(func_4(func_2(!(!vec4<bool>(false, var_0.x, true, true)))), var_0.x);
    let var_2 = vec3<bool>(var_0.x, var_0.x, true);
    let var_3 = countOneBits(~select(vec4<u32>(~418u, ~u_input.a.x, u_input.a.x, 1u), vec4<u32>(u_input.b | u_input.a.x, _wgslsmith_add_u32(u_input.a.x, 40062u), abs(4294967295u), abs(1u)), !select(vec4<bool>(var_1.x, var_0.x, false, var_2.x), vec4<bool>(var_1.x, var_0.x, true, var_1.x), vec4<bool>(false, var_0.x, var_2.x, true))));
    var var_4 = select(var_2.yz, vec2<bool>(false, !select(17293i > u_input.c, var_1.x, true)), var_1.x);
    return func_2(!vec4<bool>(select(false || var_1.x, false, var_0.x), func_4(Struct_4(Struct_2(var_0.x, vec4<i32>(u_input.c, 18224i, 13405i, u_input.c)), true)) | all(var_2), !var_0.x, true));
}

fn func_5(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: Struct_2) -> vec3<bool> {
    let var_0 = Struct_2(func_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.x))), -1307f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))).b, ~(-arg_0.a.b));
    var var_1 = all(arg_1);
    return !select(select(select(select(vec3<bool>(true, var_0.a, arg_0.b), vec3<bool>(arg_1.x, var_0.a, true), false), select(vec3<bool>(false, var_0.a, false), vec3<bool>(true, arg_2.a, true), arg_1.x), true), !(!vec3<bool>(false, arg_0.a.a, var_0.a)), true), vec3<bool>(true, global0.x >= _wgslsmith_f_op_f32(global0.x + global0.x), !(!arg_0.b)), vec3<bool>(false != !arg_2.a, false, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!func_5(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) + vec3<f32>(global0.x, global0.x, -1000f))), vec2<bool>(true, true), Struct_2(false, vec4<i32>(u_input.c, 2147483647i, u_input.c, -13565i))));
    let var_1 = any(select(!select(!var_0.yz, select(var_0.xy, var_0.xz, var_0.x), var_0.x), func_5(Struct_4(global2[_wgslsmith_index_u32(~50129u, 4u)], true), var_0.zy, Struct_2(false, ~vec4<i32>(17951i, u_input.c, 2147483647i, -23762i))).xy, var_0.x));
    var var_2 = ~(~_wgslsmith_mod_vec4_i32(reverseBits(-vec4<i32>(u_input.c, u_input.c, u_input.c, -54605i)), ~func_1(vec3<f32>(-758f, global0.x, global0.x)).a.b));
    let var_3 = var_0.xx;
    let var_4 = select(~(~(~_wgslsmith_mult_vec4_i32(vec4<i32>(31778i, 27667i, 2147483647i, 46191i), vec4<i32>(4726i, var_2.x, var_2.x, 5984i)))), -vec4<i32>(~(-1i) ^ ~u_input.c, func_1(vec3<f32>(2093f, -636f, global0.x)).a.b.x, abs(var_2.x), _wgslsmith_add_i32(~var_2.x, -2147483647i)), !(global0.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.x)) * global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(((u_input.a.x ^ ~4294967295u) >> (66674u % 32u)) | 1u, 4294967295u & u_input.a.x, ~(-_wgslsmith_mult_i32(u_input.c, ~2147483647i)));
}

