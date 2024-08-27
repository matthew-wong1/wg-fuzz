struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec2<bool>,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21>;

var<private> global1: vec3<i32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    global0 = array<Struct_2, 21>();
    let var_0 = vec4<i32>(_wgslsmith_sub_i32(reverseBits(~2147483647i), ((1059i & u_input.a.x) | max(0i, 18365i)) ^ u_input.a.x), ~u_input.a.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(select(-u_input.a.wzz, _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -2147483647i, -38255i), u_input.a.wyz), vec3<bool>(true, true, true)), _wgslsmith_clamp_vec3_i32(vec3<i32>(5792i, -2147483647i, -4693i), reverseBits(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x)), u_input.a.wzx >> (vec3<u32>(35507u, arg_0.x, arg_0.x) % vec3<u32>(32u)))), vec3<i32>(global1.x, _wgslsmith_sub_i32(global1.x, _wgslsmith_div_i32(-1i, 22795i)), 3311i)), u_input.a.x);
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(933f)), 1662f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2104f))), 1f)));
    var var_2 = vec2<f32>(var_1, _wgslsmith_f_op_f32(-var_1));
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.x, 979f), vec2<f32>(_wgslsmith_f_op_f32(var_1 + -565f), _wgslsmith_f_op_f32(var_2.x + 224f))), vec2<f32>(_wgslsmith_f_op_f32(min(var_2.x, _wgslsmith_f_op_f32(-627f - var_1))), -157f)));
    return 1f;
}

fn func_2() -> vec2<bool> {
    let var_0 = firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(-(~1i), _wgslsmith_mult_i32(max(global1.x, u_input.a.x), -2147483647i)), u_input.a.xx));
    global1 = u_input.a.xxx;
    global0 = array<Struct_2, 21>();
    global0 = array<Struct_2, 21>();
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<u32>(0u, 13262u, 11215u, 4294967295u))) - -316f))));
    return !select(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), true)), vec2<bool>(true, true), select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), true)));
}

fn func_1(arg_0: bool) -> Struct_3 {
    global0 = array<Struct_2, 21>();
    let var_0 = true || any(func_2());
    var var_1 = !all(select(vec4<bool>(!var_0, var_0, false | arg_0, arg_0), select(vec4<bool>(var_0, true, var_0, false), select(vec4<bool>(true, var_0, var_0, arg_0), vec4<bool>(arg_0, false, var_0, var_0), true), any(vec3<bool>(true, arg_0, true))), !(!vec4<bool>(var_0, arg_0, false, var_0))));
    let var_2 = Struct_2(_wgslsmith_sub_u32(countOneBits(countOneBits(abs(75934u))), ~1u >> (_wgslsmith_sub_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 21377u, 1u), vec3<u32>(0u, 1u, 0u))) % 32u)), 444f, vec2<bool>(all(select(vec2<bool>(arg_0, false), !vec2<bool>(true, var_0), !vec2<bool>(arg_0, var_0))), arg_0), global1.x);
    var_1 = true;
    return Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(785f, var_2.b, -1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(533f, -1928f, -1069f) * vec3<f32>(530f, var_2.b, var_2.b))))), all(select(!vec4<bool>(false, true, var_0, arg_0), select(vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(var_2.c.x, arg_0, var_2.c.x, true), vec4<bool>(arg_0, true, false, true)), vec4<bool>(false, var_2.c.x, false, true))), var_2.c.x), Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(592f, 2085f, var_2.b))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b, -384f, var_2.b) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b, 314f, var_2.b))))), var_0, arg_0), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1634f + -1118f) * _wgslsmith_f_op_f32(select(var_2.b, _wgslsmith_f_op_f32(var_2.b - -343f), true))), 344f), all(!select(!vec3<bool>(var_2.c.x, var_2.c.x, var_0), vec3<bool>(arg_0, var_2.c.x, var_2.c.x), !vec3<bool>(true, arg_0, true))));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_4) -> bool {
    global1 = firstTrailingBit(u_input.a.wyz);
    var var_0 = max(i32(-1i) * -17063i, -9451i);
    var var_1 = abs(u_input.a.x);
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(782f - arg_0.c.x))));
    var_1 = ~max(countOneBits(global1.x), _wgslsmith_dot_vec2_i32(global1.xy, firstLeadingBit(global1.zx)));
    return arg_0.d & any(select(vec3<bool>(arg_0.d, false, func_2().x), !select(vec3<bool>(arg_0.a.c, false, false), vec3<bool>(arg_0.a.b, arg_0.b.b, arg_0.a.b), vec3<bool>(false, false, false)), !vec3<bool>(false, arg_0.b.b, arg_0.a.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 21>();
    global1 = u_input.a.wwy;
    global0 = array<Struct_2, 21>();
    var var_0 = vec4<u32>(~(~(~(~4294967295u))), firstLeadingBit(36602u), ~4294967295u, ~_wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_clamp_u32(0u, 31694u, 4294967295u)), 0u));
    global0 = array<Struct_2, 21>();
    var var_1 = select(!func_4(func_1(all(vec4<bool>(false, false, false, true))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-773f, -1462f, false)), _wgslsmith_f_op_f32(f32(-1f) * -1876f))), Struct_4(vec2<f32>(-725f, 1230f), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, -1000f, -374f, 1348f), vec4<f32>(-466f, 986f, -1000f, -813f)))), !any(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), 1u != _wgslsmith_sub_u32(_wgslsmith_sub_u32(var_0.x, var_0.x), _wgslsmith_div_u32(var_0.x, min(4783u, 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec2<i32>(-1i, -1i), vec2<i32>(global1.x, u_input.a.x)), ~min(-vec4<i32>(0i, 0i, 2147483647i, 0i), ~abs(u_input.a)), ~select(countOneBits(vec2<u32>(var_0.x, 38465u)), var_0.wx, true) ^ ~_wgslsmith_mult_vec2_u32(~vec2<u32>(7729u, var_0.x), ~vec2<u32>(1u, 0u)));
}

