struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-9535i, 52642i, i32(-2147483648));

var<private> global1: array<vec2<u32>, 3>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2() -> vec4<i32> {
    global1 = array<vec2<u32>, 3>();
    global1 = array<vec2<u32>, 3>();
    let var_0 = global0.x;
    let var_1 = global1[_wgslsmith_index_u32(8942u, 3u)];
    return vec4<i32>(2147483647i, ~global0.x, 0i, global0.x);
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    global0 = _wgslsmith_mult_vec3_i32(~_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(arg_0.yyy << (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), arg_0.xyx << (u_input.a % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(select(arg_0.wxz, arg_0.yyw, vec3<bool>(arg_2.b.x, arg_2.b.x, arg_2.b.x)), vec3<i32>(arg_0.x, -2147483647i, arg_0.x))), arg_0.xwz);
    global1 = array<vec2<u32>, 3>();
    let var_0 = Struct_1(abs(vec4<i32>(-_wgslsmith_mod_i32(2147483647i, -7436i), -4876i, 60283i, firstTrailingBit(select(0i, -1i, arg_2.b.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1135f, 1000f))))))));
    global1 = array<vec2<u32>, 3>();
    let var_1 = Struct_3(var_0, var_0, vec3<u32>(40843u, ~(0u & _wgslsmith_clamp_u32(arg_1, 4441u, u_input.a.x)), arg_1), var_0);
    return Struct_1(firstLeadingBit(_wgslsmith_mult_vec4_i32(select(_wgslsmith_div_vec4_i32(vec4<i32>(var_1.a.a.x, var_1.a.a.x, 2147483647i, global0.x), vec4<i32>(var_0.a.x, 1i, var_0.a.x, 12277i)), arg_0 << (vec4<u32>(26001u, arg_1, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), vec4<bool>(arg_2.b.x, arg_2.b.x, arg_2.b.x, arg_2.b.x)), max(-arg_0, var_0.a))), var_0.b);
}

fn func_1() -> Struct_1 {
    var var_0 = func_3(~(~vec4<i32>(global0.x, 18006i, global0.x, 54447i) & (func_2() | select(vec4<i32>(global0.x, -1i, -8365i, global0.x), vec4<i32>(7093i, global0.x, global0.x, global0.x), vec4<bool>(false, false, false, true)))), _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) >> (u_input.a.x % 32u), ~(~u_input.a.x)) >> (~_wgslsmith_div_u32(u_input.a.x, u_input.a.x) % 32u), Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(-543f, _wgslsmith_div_f32(-186f, 102f)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(1177f, 272f) + vec2<f32>(778f, -1000f))))), select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), any(vec3<bool>(true, true, true)))));
    let var_1 = true;
    var_0 = func_3(-select(-var_0.a, vec4<i32>(global0.x, var_0.a.x, var_0.a.x, 1i) & _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, var_0.a.x, var_0.a.x, 0i), vec4<i32>(1i, 45287i, global0.x, 67320i)), true), _wgslsmith_mult_u32(~u_input.a.x, abs(abs(~u_input.a.x))), Struct_2(var_0.b, select(vec2<bool>(true, true), !(!vec2<bool>(var_1, true)), all(select(vec4<bool>(true, var_1, var_1, true), vec4<bool>(var_1, false, var_1, false), vec4<bool>(false, true, false, var_1))))));
    var var_2 = var_0.a.x;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-1f), -468f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(min(var_0.b.x, -274f))))));
    return func_3(~vec4<i32>(countOneBits(global0.x), 1i, firstLeadingBit(_wgslsmith_div_i32(var_0.a.x, -1i)), -1i), 91126u, Struct_2(_wgslsmith_f_op_vec2_f32(var_0.b + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, var_0.b.x))), vec2<bool>(reverseBits(var_0.a.x) >= func_3(vec4<i32>(-23300i, var_0.a.x, global0.x, var_0.a.x), 36878u, Struct_2(vec2<f32>(1366f, 1212f), vec2<bool>(var_1, true))).a.x, false)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~vec3<i32>(~(-(i32(-1i) * -53286i)), reverseBits(40343i), global0.x);
    let var_0 = func_1();
    var var_1 = ~_wgslsmith_clamp_i32(i32(-1i) * -(2147483647i >> (u_input.a.x % 32u)), abs(_wgslsmith_sub_i32(_wgslsmith_mod_i32(var_0.a.x, 0i), global0.x)), 0i);
    let var_2 = Struct_3(func_1(), Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_div_f32(var_0.b.x, var_0.b.x), func_3(var_0.a, u_input.a.x, Struct_2(var_0.b, vec2<bool>(true, true))).b.x)))), vec3<u32>(4294967295u, reverseBits(4294967295u), min(u_input.a.x, 2307u) << (~(~4618u) % 32u)), Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(-func_3(select(vec4<i32>(4927i, -6527i, -46956i, var_0.a.x), var_0.a, vec4<bool>(true, true, false, false)), _wgslsmith_sub_u32(u_input.a.x, 4294967295u), Struct_2(vec2<f32>(var_0.b.x, 455f), vec2<bool>(true, true))).b)));
    var var_3 = vec4<i32>(var_0.a.x, var_0.a.x, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(global0.x, var_2.a.a.x), -global0.x, abs((var_2.a.a.x ^ -12803i) >> (u_input.a.x % 32u))), var_0.a.x);
    var var_4 = !vec3<bool>(true, true, false & (1723f == func_3(var_2.d.a, 18719u, Struct_2(var_0.b, vec2<bool>(true, true))).b.x));
    var var_5 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.b.x, var_2.b.b.x)) + var_2.d.b.x), var_2.a.b.x), select(select(vec2<bool>(true, true), var_4.xx, var_4.zx), select(var_4.yy, !var_4.yz, select(var_4.xy, vec2<bool>(var_4.x, false), 1000f > var_2.b.b.x)), var_4.x && var_4.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1323f * _wgslsmith_f_op_f32(f32(-1f) * -822f)) - _wgslsmith_f_op_f32(-var_5.a.x)) + var_2.a.b.x), 13482u, global0.x, ~(var_3.wwy & _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(var_3.xyz, vec3<i32>(global0.x, 1i, var_0.a.x)), vec3<i32>(2147483647i, global0.x, -1i))));
}

