struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 26> = array<vec4<u32>, 26>(vec4<u32>(1u, 49976u, 4294967295u, 0u), vec4<u32>(0u, 1u, 1u, 4294967295u), vec4<u32>(42481u, 0u, 44774u, 8235u), vec4<u32>(0u, 37671u, 72189u, 47248u), vec4<u32>(47692u, 4294967295u, 47868u, 16664u), vec4<u32>(1u, 4294967295u, 28974u, 73889u), vec4<u32>(1u, 7405u, 9085u, 45953u), vec4<u32>(4294967295u, 30862u, 4294967295u, 82764u), vec4<u32>(4294967295u, 0u, 1u, 31906u), vec4<u32>(12732u, 4294967295u, 1u, 1u), vec4<u32>(4294967295u, 37458u, 50830u, 134730u), vec4<u32>(28849u, 0u, 4294967295u, 47748u), vec4<u32>(18154u, 1u, 15706u, 60654u), vec4<u32>(1u, 23709u, 1u, 0u), vec4<u32>(0u, 0u, 94836u, 1u), vec4<u32>(4294967295u, 19300u, 44497u, 0u), vec4<u32>(0u, 0u, 4294967295u, 4294967295u), vec4<u32>(0u, 107436u, 13314u, 58209u), vec4<u32>(78075u, 92475u, 167019u, 1u), vec4<u32>(83011u, 63378u, 0u, 87200u), vec4<u32>(0u, 1u, 0u, 32238u), vec4<u32>(1u, 4294967295u, 51837u, 0u), vec4<u32>(1u, 4294967295u, 4294967295u, 40808u), vec4<u32>(0u, 0u, 0u, 1225u), vec4<u32>(22145u, 0u, 4294967295u, 0u), vec4<u32>(1u, 72497u, 47571u, 9008u));

var<private> global1: u32;

var<private> global2: array<f32, 18> = array<f32, 18>(-1462f, 847f, -1057f, -1277f, 763f, 170f, -539f, 409f, -1394f, -1000f, 308f, 1608f, -653f, -1465f, 1691f, -550f, -1479f, -2043f);

var<private> global3: vec4<u32>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<u32>) -> vec4<u32> {
    global2 = array<f32, 18>();
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(arg_0.x, global3.x), 18u)]) * _wgslsmith_f_op_f32(-748f - global2[_wgslsmith_index_u32(~78201u, 18u)]))));
    global1 = 4294967295u;
    global2 = array<f32, 18>();
    let var_1 = Struct_4(vec3<i32>(_wgslsmith_mod_i32(-17926i, u_input.a) << (0u % 32u), 1i, -2147483647i), ~(_wgslsmith_sub_i32(i32(-1i) * -1i, u_input.a) & u_input.a));
    return vec4<u32>(arg_0.x, 92226u, firstTrailingBit(global3.x), _wgslsmith_add_u32(~global3.x, ~(select(4415u, 1u, true) >> (global3.x % 32u))));
}

fn func_2(arg_0: vec4<u32>) -> i32 {
    let var_0 = Struct_3(Struct_1(~(~global3.x)));
    global2 = array<f32, 18>();
    var var_1 = vec4<i32>(i32(-1i) * -2147483647i, 1i, ~select(u_input.a, -min(u_input.a, u_input.a), false), i32(-1i) * -2147483647i);
    var var_2 = Struct_4(var_1.wwx, var_1.x);
    global3 = func_3(global0[_wgslsmith_index_u32(~(~1u), 26u)]);
    return var_1.x;
}

fn func_1(arg_0: i32, arg_1: bool) -> i32 {
    global2 = array<f32, 18>();
    let var_0 = -(~firstTrailingBit(vec2<i32>(u_input.a, 9200i) | vec2<i32>(-1i, 75976i))) >> (global3.wy % vec2<u32>(32u));
    global0 = array<vec4<u32>, 26>();
    let var_1 = false;
    var var_2 = vec2<bool>(false, true);
    return ~(-max(var_0.x, _wgslsmith_mod_i32(-42481i, -374i)) | func_2(abs(~vec4<u32>(global3.x, global3.x, 79829u, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -vec3<i32>(func_1(1i, all(vec3<bool>(true, true, true))), -_wgslsmith_div_i32(u_input.a, 39415i) & u_input.a, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-57479i, u_input.a) << (vec2<u32>(0u, global3.x) % vec2<u32>(32u)), vec2<i32>(u_input.a, u_input.a)));
    let var_1 = _wgslsmith_dot_vec3_u32(min(~vec3<u32>(37116u, 1u, _wgslsmith_mult_u32(global3.x, global3.x)), ~func_3(~global0[_wgslsmith_index_u32(global3.x, 26u)]).xyw), func_3(_wgslsmith_add_vec4_u32(~vec4<u32>(42052u, 20237u, global3.x, 6303u) << (~global0[_wgslsmith_index_u32(1u, 26u)] % vec4<u32>(32u)), func_3(vec4<u32>(global3.x, 4294967295u, global3.x, 32371u)))).xyx);
    var var_2 = Struct_4(vec3<i32>(_wgslsmith_dot_vec2_i32(~var_0.zx, var_0.yz ^ ~var_0.zy), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a, 1i, 0i, var_0.x)), abs(vec4<i32>(1i, u_input.a, 2147483647i, u_input.a))), countOneBits(-vec4<i32>(-42112i, -1i, var_0.x, u_input.a))), 21414i), -var_0.x);
    var_0 = ~var_2.a;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~43848u, 18u)])) * _wgslsmith_f_op_f32(f32(-1f) * -119f)), global2[_wgslsmith_index_u32(reverseBits(var_1), 18u)]);
    let var_4 = Struct_1(func_3(vec4<u32>(~_wgslsmith_mult_u32(global3.x, 0u), 1304u, global3.x, var_1 | countOneBits(global3.x))).x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, var_4.a, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_3.x - -1072f), _wgslsmith_f_op_f32(115f * 180f), true)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-151f)), global2[_wgslsmith_index_u32(var_4.a & var_1, 18u)]))), var_3.x, _wgslsmith_f_op_f32(-var_3.x), var_3.x), ~global3.wyx, 29108i);
}

