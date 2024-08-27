struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec4<u32>,
    d: bool,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(17933u, 49541u, 51817u);

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(1u, vec3<bool>(true, false, true), vec4<u32>(22582u, 22903u, 13176u, 71734u), false, vec2<u32>(27715u, 0u)), Struct_1(1u, vec3<bool>(false, false, true), vec4<u32>(103231u, 4294967295u, 148124u, 1u), false, vec2<u32>(4294967295u, 0u)), Struct_1(67100u, vec3<bool>(false, false, false), vec4<u32>(2622u, 4294967295u, 0u, 19021u), true, vec2<u32>(0u, 13652u)), Struct_1(4294967295u, vec3<bool>(true, false, true), vec4<u32>(4294967295u, 1u, 1u, 17104u), false, vec2<u32>(1u, 63587u)), Struct_1(1u, vec3<bool>(false, false, true), vec4<u32>(47389u, 1u, 1u, 30480u), true, vec2<u32>(20971u, 27539u)), Struct_1(45809u, vec3<bool>(true, true, false), vec4<u32>(23620u, 1u, 1u, 1543u), false, vec2<u32>(55858u, 24590u)), Struct_1(42791u, vec3<bool>(false, false, true), vec4<u32>(0u, 59579u, 76431u, 0u), false, vec2<u32>(48231u, 8416u)), Struct_1(1u, vec3<bool>(true, false, true), vec4<u32>(40069u, 20960u, 84792u, 1u), true, vec2<u32>(0u, 1u)), Struct_1(4294967295u, vec3<bool>(false, true, false), vec4<u32>(0u, 1u, 4294967295u, 2871u), true, vec2<u32>(1u, 1u)));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32) -> u32 {
    var var_0 = Struct_1(52185u, arg_0, vec4<u32>(arg_1, _wgslsmith_div_u32(~88628u | reverseBits(u_input.d), abs(0u)), countOneBits(_wgslsmith_sub_u32(4294967295u, 10018u) << (~arg_1 % 32u)), abs(_wgslsmith_clamp_u32(1u, global0.x, countOneBits(47706u)))), arg_0.x, vec2<u32>(global0.x, u_input.b | firstLeadingBit(26950u)) | vec2<u32>(~_wgslsmith_mult_u32(10288u, 0u), 8919u));
    global1 = array<Struct_1, 9>();
    global1 = array<Struct_1, 9>();
    let var_1 = !(!var_0.d);
    return arg_1;
}

fn func_2(arg_0: vec2<f32>, arg_1: bool) -> f32 {
    let var_0 = Struct_1(4294967295u, !vec3<bool>(true == (arg_1 | arg_1), arg_1, arg_1), vec4<u32>(1u, _wgslsmith_mod_u32(func_3(vec3<bool>(arg_1, arg_1, arg_1), global0.x) << (1u % 32u), u_input.b), u_input.b, 0u), arg_1, vec2<u32>(1u, ~abs(0u)));
    let var_1 = _wgslsmith_mod_u32(u_input.d, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(var_0.c.yzz, abs(var_0.c.ywy)), 1u));
    global0 = ~vec3<u32>(1744u, ~40551u, 0u) << (_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1, 4294967295u, var_1), vec3<u32>(12375u, u_input.d, var_1), var_0.c.xyw | var_0.c.xyw) << (vec3<u32>(38559u, 26466u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 9607u, 1u), var_0.c.xzz)) % vec3<u32>(32u)), vec3<u32>(firstTrailingBit(0u), u_input.b, 1u)) % vec3<u32>(32u));
    var var_2 = Struct_1(firstTrailingBit(44340u), vec3<bool>(arg_1, var_0.d, var_0.b.x), _wgslsmith_div_vec4_u32(var_0.c, ~var_0.c), any(select(vec3<bool>(any(vec2<bool>(var_0.b.x, var_0.b.x)), arg_1, var_0.d), var_0.b, select(!vec3<bool>(false, false, arg_1), var_0.b, true))), vec2<u32>(0u, ~(~u_input.b | global0.x)));
    let var_3 = global1[_wgslsmith_index_u32(4294967295u, 9u)];
    return _wgslsmith_div_f32(arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1261f * arg_0.x), -1361f));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = true;
    global0 = vec3<u32>(26332u, _wgslsmith_sub_u32(global0.x, ~(~(~arg_0.a))), ~arg_0.a);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-389f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -134f) + _wgslsmith_div_f32(1397f, -1515f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<f32>(439f, 1756f), arg_0.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1764f) - _wgslsmith_f_op_f32(max(-1306f, 291f)))))));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec4<f32>) -> StorageBuffer {
    let var_0 = arg_2;
    global0 = arg_0.c.ywz & (vec3<u32>(arg_0.a, global0.x, arg_1) << (select(~_wgslsmith_div_vec3_u32(arg_0.c.wyy, vec3<u32>(63544u, global0.x, 6115u)), arg_0.c.yyy, arg_0.b) % vec3<u32>(32u)));
    global0 = max(arg_0.c.wyy, ~(~reverseBits(~arg_0.c.yyy)));
    var var_1 = global1[_wgslsmith_index_u32(abs(~firstLeadingBit(0u)), 9u)];
    var var_2 = global1[_wgslsmith_index_u32(arg_0.e.x, 9u)];
    return StorageBuffer((_wgslsmith_mod_vec4_i32(-u_input.e, vec4<i32>(4006i, 10832i, u_input.a.x, -2147483647i)) & _wgslsmith_mult_vec4_i32(reverseBits(u_input.e), vec4<i32>(u_input.e.x, -1i, 15149i, -45332i))) & -vec4<i32>(~u_input.a.x, _wgslsmith_clamp_i32(u_input.c, u_input.e.x, u_input.a.x), u_input.e.x, u_input.c), ~var_1.c & vec4<u32>(~firstLeadingBit(4294967295u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 4294967295u, var_1.c.x, global0.x), vec4<u32>(var_1.e.x, var_2.a, 0u, 0u)), _wgslsmith_mod_u32(26671u ^ global0.x, _wgslsmith_add_u32(global0.x, u_input.d)), abs(49878u >> (1u % 32u))), u_input.e.yzz, vec4<i32>(~2147483647i, _wgslsmith_mod_i32(2147483647i, 1i), abs(-firstLeadingBit(0i)), ~(~8009i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(min(0u, abs(~43087u)), global0.x), 9u)], _wgslsmith_mult_u32(65316u, _wgslsmith_sub_u32(global0.x, global0.x) & _wgslsmith_dot_vec2_u32(global0.zx, _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 12500u), global0.xx, vec2<u32>(51767u, 76934u)))), _wgslsmith_f_op_vec4_f32(func_1(global1[_wgslsmith_index_u32(62924u, 9u)], abs(_wgslsmith_mult_i32(u_input.e.x ^ 5436i, ~u_input.c)), global1[_wgslsmith_index_u32(1u, 9u)])));
}

