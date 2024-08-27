struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: bool,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: vec2<i32>) -> vec2<bool> {
    let var_0 = Struct_3(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.b.x, 1u, 29331u), reverseBits(u_input.a.wzw) >> (~u_input.b.zyz % vec3<u32>(32u))), vec3<u32>(~1u, ~_wgslsmith_mod_u32(15342u, u_input.a.x), min(u_input.b.x, _wgslsmith_add_u32(0u, 9737u)))));
    let var_1 = Struct_4(!select(select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false))), vec4<bool>(true, true, true, true), true), vec4<u32>(min(~70746u, _wgslsmith_mod_u32(~1u, ~48025u)), 50646u, max(reverseBits(~u_input.a.x), (var_0.a ^ 56972u) << (~u_input.a.x % 32u)), abs(max(var_0.a, u_input.a.x) << (1u % 32u))), !all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true)), Struct_1(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true))), u_input.b.yx), -vec3<i32>(arg_0, i32(-1i) * -2147483647i, 1i));
    let var_2 = arg_1.x;
    let var_3 = var_1.d;
    var var_4 = ~_wgslsmith_mod_i32(firstTrailingBit(countOneBits(arg_1.x | 12499i)), _wgslsmith_div_i32((29137i & var_2) << (0u % 32u), 2147483647i));
    return select(select(select(select(var_1.a.xw, vec2<bool>(true, true), var_3.a), select(vec2<bool>(true, true), select(var_1.a.yx, var_1.a.yz, var_1.a.x), vec2<bool>(var_3.a, var_1.c)), var_3.a & (false || var_1.d.a)), vec2<bool>(any(select(var_1.a.wy, var_1.a.zy, vec2<bool>(var_1.a.x, true))), !var_1.a.x && var_3.a), true), vec2<bool>(any(vec4<bool>(true, true, var_1.a.x, var_3.b.x > 5751u)), all(select(var_1.a.yw, select(vec2<bool>(var_1.a.x, var_3.a), vec2<bool>(var_1.d.a, var_1.a.x), false), false))), vec2<bool>(var_1.d.a, !var_1.c));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: bool, arg_3: vec2<u32>) -> bool {
    var var_0 = Struct_2(~select(1i << (~arg_3.x % 32u), 1i, true));
    var_0 = Struct_2(~var_0.a);
    let var_1 = _wgslsmith_div_vec3_u32(u_input.a.wxw, vec3<u32>(u_input.b.x, select(firstLeadingBit(~4294967295u), arg_0.x << (~4294967295u % 32u), true), ~_wgslsmith_add_u32(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 25861u, 0u, 1u), vec4<u32>(arg_3.x, arg_0.x, 0u, 4294967295u)))));
    var_0 = Struct_2(~_wgslsmith_mult_i32(~(-25533i << (var_1.x % 32u)), ~reverseBits(var_0.a)));
    var var_2 = Struct_1(all(func_3(-max(var_0.a, -47636i), firstLeadingBit(-vec2<i32>(-22905i, var_0.a)))), ~_wgslsmith_sub_vec2_u32(~arg_3, select(vec2<u32>(4294967295u, arg_3.x), ~vec2<u32>(arg_3.x, u_input.b.x), arg_1)));
    return var_2.a;
}

fn func_1(arg_0: vec4<bool>) -> Struct_4 {
    var var_0 = Struct_4(vec4<bool>(false | arg_0.x, arg_0.x && any(!arg_0.yxy), !(func_2(u_input.a.wyz, arg_0.xy, arg_0.x, u_input.a.yy) & true), false), (u_input.b >> (vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.a.x & u_input.a.x) % vec4<u32>(32u))) ^ (u_input.a ^ u_input.b), abs(_wgslsmith_sub_i32(i32(-1i) * -11814i, ~(-6378i))) <= firstTrailingBit(24208i), Struct_1(false, vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(41798u, 1u), 33455u), select(1u, u_input.b.x, true) >> (~1u % 32u))), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 3280i, select(_wgslsmith_dot_vec2_i32(vec2<i32>(46477i, 12300i), vec2<i32>(55299i, -3404i)), ~(-2343i), true)), min(~vec3<i32>(-1i, 2147483647i, 1i), firstLeadingBit(select(vec3<i32>(-12406i, -904i, -1i), vec3<i32>(2147483647i, 1i, -15163i), arg_0.yxx))), min(vec3<i32>(1i, 1i, 1i), countOneBits(-vec3<i32>(-1i, -1i, -47322i)))));
    let var_1 = select(select(!select(select(arg_0, var_0.a, true), select(vec4<bool>(true, var_0.d.a, arg_0.x, arg_0.x), var_0.a, vec4<bool>(arg_0.x, var_0.c, true, arg_0.x)), !var_0.a), var_0.a, var_0.a), var_0.a, true);
    let var_2 = ~(~_wgslsmith_dot_vec3_u32(countOneBits(var_0.b.zwx), vec3<u32>(1u, _wgslsmith_clamp_u32(var_0.b.x, 2964u, 26829u), ~1u)));
    let var_3 = select(-28408i, var_0.e.x, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(667f))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-728f)) - -2097f)));
    var_0 = Struct_4(select(vec4<bool>(var_1.x, false, true, var_1.x), arg_0, var_1), select(var_0.b, min(abs(vec4<u32>(28256u, u_input.a.x, var_0.b.x, var_0.b.x)), countOneBits(u_input.b)), vec4<bool>(var_1.x, func_3(-1i, var_0.e.yx).x, true, any(var_1.wxx))) & select(_wgslsmith_div_vec4_u32(vec4<u32>(72157u, 30661u, 4294967295u, u_input.b.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(9366u, 0u, 71901u, 20998u), vec4<u32>(u_input.a.x, u_input.b.x, var_0.d.b.x, 24763u), vec4<u32>(u_input.b.x, var_0.b.x, var_2, 1u))), vec4<u32>(var_2, ~0u, u_input.a.x, var_0.b.x), vec4<bool>(any(var_0.a.wz), !var_1.x, true, false)), ~(~(~u_input.b.x)) != ~0u, var_0.d, var_0.e);
    return Struct_4(arg_0, _wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(var_2, 0u), 1u, var_0.d.b.x), ~(var_2 ^ var_2), _wgslsmith_sub_u32(~4294967295u, _wgslsmith_mult_u32(1u, var_2)), ~1u)), true, Struct_1(var_2 < min(8309u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2, 7246u, var_0.d.b.x), var_0.b.xww)), u_input.a.xy), var_0.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_sub_vec3_u32((vec3<u32>(63227u, u_input.b.x, 95162u) | u_input.a.wxx) << (~u_input.a.wzy % vec3<u32>(32u)), vec3<u32>(~35028u, ~u_input.b.x, ~u_input.b.x)) << (_wgslsmith_clamp_vec3_u32(max(u_input.b.yyw, u_input.a.xxx), u_input.a.xwy & ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, u_input.a.x), u_input.b.xxw), vec3<u32>(u_input.b.x, u_input.a.x, u_input.a.x)) % vec3<u32>(32u));
    var var_1 = func_1(vec4<bool>(true, true, true, !(any(vec2<bool>(false, true)) && true)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(1u, 1u, 50917u), firstTrailingBit(-_wgslsmith_dot_vec2_i32(~var_1.e.xz, vec2<i32>(var_1.e.x, var_1.e.x))), countOneBits(_wgslsmith_add_vec4_i32(-abs(vec4<i32>(var_1.e.x, 34356i, var_1.e.x, var_1.e.x)), -firstTrailingBit(vec4<i32>(0i, var_1.e.x, var_1.e.x, var_1.e.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -457f), 931f)), _wgslsmith_div_vec4_i32(select(abs(select(vec4<i32>(var_1.e.x, 2147483647i, var_1.e.x, -20751i), vec4<i32>(10982i, var_1.e.x, var_1.e.x, var_1.e.x), var_1.c)), _wgslsmith_sub_vec4_i32(-vec4<i32>(-2147483647i, var_1.e.x, 1304i, -2147483647i), vec4<i32>(var_1.e.x, var_1.e.x, var_1.e.x, 19869i) & vec4<i32>(2147483647i, 12162i, var_1.e.x, var_1.e.x)), !var_1.a), _wgslsmith_add_vec4_i32(vec4<i32>(var_1.e.x, var_1.e.x, var_1.e.x, 41570i), _wgslsmith_div_vec4_i32(vec4<i32>(var_1.e.x, -33721i, 23343i, var_1.e.x), abs(vec4<i32>(21337i, var_1.e.x, -14750i, var_1.e.x))))));
}

