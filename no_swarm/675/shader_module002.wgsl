struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: f32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: i32) -> Struct_1 {
    var var_0 = arg_2;
    return Struct_1(_wgslsmith_sub_vec2_i32(~_wgslsmith_div_vec2_i32(arg_0.b.ww, arg_0.a), vec2<i32>(-1i, arg_0.a.x)), _wgslsmith_mult_vec4_i32(-min(arg_0.b, arg_0.b), ~arg_0.b) >> (min(_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(arg_0.d.x, arg_0.d.x, 0u, 0u)), vec4<u32>(arg_0.d.x, arg_0.d.x, 83689u, 42242u) & vec4<u32>(u_input.b.x, 39272u, 56277u, 0u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_0.d.x, 1u, 26299u, 45011u), select(vec4<u32>(arg_0.d.x, u_input.c, arg_0.d.x, 49u), vec4<u32>(1u, 0u, 4294967295u, 72527u), vec4<bool>(false, false, true, true)))) % vec4<u32>(32u)), 1457f, ~arg_0.d);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -207f);
    global0 = _wgslsmith_f_op_f32(-1047f - arg_0.c);
    var var_1 = arg_1;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -690f));
    let var_2 = arg_1;
    return firstTrailingBit(vec2<u32>(~max(1u, arg_0.d.x), arg_0.d.x) & vec2<u32>(u_input.a.x, countOneBits(_wgslsmith_sub_u32(0u, u_input.d))));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = _wgslsmith_div_f32(arg_1.c, _wgslsmith_f_op_f32(step(arg_1.c, arg_1.c)));
    let var_1 = Struct_1(_wgslsmith_div_vec2_i32(~(-arg_0.yx & arg_0.xy), -select(vec2<i32>(arg_1.b.x, arg_1.a.x), select(vec2<i32>(-1i, arg_0.x), vec2<i32>(-2147483647i, -41503i), vec2<bool>(arg_2, arg_2)), true)), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(arg_1.b, abs(select(arg_1.b, vec4<i32>(15737i, 30433i, 951i, arg_1.b.x), vec4<bool>(arg_2, arg_2, arg_2, false)))), reverseBits(firstTrailingBit(arg_1.b) | arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.c)) - 1000f)), min(~(~vec2<u32>(arg_1.d.x, u_input.b.x)), ~func_3(func_2(Struct_1(arg_0.xz, vec4<i32>(arg_0.x, arg_0.x, 2147483647i, arg_1.a.x), -630f, arg_1.d), vec3<f32>(1076f, 223f, arg_1.c), 7458i), arg_1)));
    var var_2 = _wgslsmith_f_op_f32(-arg_1.c);
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.c)) * var_1.c);
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.c, 245f, 785f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.c, 1405f, -651f), vec3<f32>(-672f, -891f, var_1.c))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c, -543f, -3089f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(295f, arg_1.c, -919f), vec3<f32>(var_1.c, var_1.c, var_1.c), vec3<bool>(false, false, arg_2))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.c, var_1.c, arg_1.c)))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.c, arg_1.c, var_1.c))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.c, 1000f, -561f), vec3<f32>(-185f, var_1.c, arg_1.c), arg_2))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.c, arg_1.c, arg_1.c))))))));
    return 4783u;
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_1 {
    return func_2(func_2(func_2(arg_3, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.c, 1174f, arg_3.c) - vec3<f32>(arg_3.c, arg_3.c, arg_3.c))), firstTrailingBit(arg_1.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1819f, 2522f, -1556f), vec3<f32>(-984f, arg_3.c, 1000f))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_3.c, -777f, 130f), vec3<f32>(arg_3.c, arg_3.c, -280f)))), vec3<f32>(_wgslsmith_div_f32(arg_3.c, arg_3.c), _wgslsmith_f_op_f32(-arg_3.c), _wgslsmith_f_op_f32(-751f * -1000f))), -1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1415f, -253f, 531f), vec3<f32>(1186f, arg_3.c, 1869f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.c, arg_3.c, arg_3.c)))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-493f, -158f, 677f), vec3<f32>(380f, arg_3.c, arg_3.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_3.c, arg_3.c, 1437f), vec3<f32>(arg_3.c, arg_3.c, 896f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_3.c, 1249f) - vec3<f32>(-938f, arg_3.c, -1852f)))))), ~1i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -462f;
    var var_0 = any(vec4<bool>(true, true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-248f + 790f))) <= 343f, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), any(vec4<bool>(true, true, true, false))))));
    var var_1 = func_4(u_input.c, vec4<i32>(2147483647i, -1i, 0i, _wgslsmith_dot_vec3_i32(-vec3<i32>(1i, 1i, 1i), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(-1i, -1i, -36072i)), ~vec3<i32>(1i, 11417i, 0i)))), firstLeadingBit(vec4<u32>(abs(~86104u), 60413u, ~func_1(vec4<i32>(-2147483647i, -7216i, -9681i, 21199i), Struct_1(vec2<i32>(2147483647i, 1102i), vec4<i32>(52733i, 1i, -2147483647i, 1i), -1351f, vec2<u32>(0u, 23812u)), true), ~86014u)), Struct_1(~(~(-vec2<i32>(-45783i, -13268i))), vec4<i32>(-1i) * -vec4<i32>(-2147483647i, -26284i, 2147483647i, 86139i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1059f)) + _wgslsmith_f_op_f32(893f - -1000f)) * _wgslsmith_f_op_f32(max(539f, _wgslsmith_f_op_f32(ceil(400f))))), vec2<u32>(~func_1(vec4<i32>(-39603i, -1i, 38489i, -2147483647i), Struct_1(vec2<i32>(-1i, 2147483647i), vec4<i32>(50723i, -712i, -2147483647i, 2147483647i), 1000f, vec2<u32>(u_input.d, u_input.a.x)), true), 0u)));
    let var_2 = ~_wgslsmith_clamp_vec2_u32(vec2<u32>(56839u, 4294967295u), var_1.d, func_4(0u, ~vec4<i32>(0i, var_1.b.x, var_1.b.x, var_1.a.x), vec4<u32>(u_input.a.x, _wgslsmith_sub_u32(u_input.c, u_input.c), 91473u, 28599u), Struct_1(var_1.a, var_1.b, _wgslsmith_f_op_f32(var_1.c + var_1.c), ~vec2<u32>(u_input.a.x, u_input.b.x))).d);
    var var_3 = Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.x, var_1.a.x), abs(vec2<i32>(50643i, var_1.a.x))), var_1.b.x), (abs(var_1.a) << (var_1.d % vec2<u32>(32u))) >> (abs(~vec2<u32>(var_1.d.x, 4294967295u)) % vec2<u32>(32u))), vec4<i32>(_wgslsmith_div_i32(var_1.a.x, 50257i), 1194i, var_1.a.x, max(var_1.a.x, 47849i) << (_wgslsmith_mod_u32(~4294967295u, 4294967295u) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_1.c, var_1.c), _wgslsmith_f_op_f32(f32(-1f) * -1037f))), _wgslsmith_f_op_f32(f32(-1f) * -762f))), var_1.d);
    var_0 = any(vec3<bool>(any(vec4<bool>(true, true, true, true)) && (max(1i, var_3.b.x) == (var_3.b.x ^ var_3.b.x)), true, all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(countOneBits(max(_wgslsmith_mult_i32(-2147483647i, var_3.a.x), _wgslsmith_mod_i32(31044i, -1i))), var_3.a.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.c, -139f, 249f), vec3<f32>(var_3.c, var_1.c, var_3.c)) + vec3<f32>(var_1.c, -992f, var_3.c))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-161f, var_1.c, var_1.c) * vec3<f32>(var_1.c, -1027f, 191f)), vec3<f32>(var_3.c, var_1.c, -1248f))))), false)), max(var_1.a.x, 23116i), var_3.d);
}

