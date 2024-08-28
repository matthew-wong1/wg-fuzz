struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7>;

var<private> global1: array<i32, 14> = array<i32, 14>(-44065i, 0i, 37347i, 0i, -1i, -30558i, 2147483647i, 2147483647i, -19078i, i32(-2147483648), -23i, 22980i, -15828i, 7545i);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    global1 = array<i32, 14>();
    global1 = array<i32, 14>();
    global0 = array<f32, 7>();
    let var_0 = Struct_2(~min(~(vec4<u32>(u_input.c.x, u_input.c.x, u_input.a.x, 105093u) ^ vec4<u32>(52420u, 0u, 0u, 4294967295u)), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.c.x, 87413u), vec4<u32>(u_input.c.x, u_input.c.x, 23792u, u_input.a.x)), ~vec4<u32>(u_input.c.x, 20622u, u_input.a.x, u_input.d))), Struct_1(_wgslsmith_add_vec2_u32(u_input.c, u_input.a ^ abs(vec2<u32>(u_input.c.x, 4294967295u))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), all(vec2<bool>(false, true))), vec4<bool>(true, any(vec3<bool>(false, true, true)), true, false), all(vec3<bool>(true, true, true))), abs(4922i), -vec3<i32>(global1[_wgslsmith_index_u32(1u, 14u)], reverseBits(1i), 0i)), -24174i);
    let var_1 = Struct_3(var_0.a.ywx, var_0.b.d);
    return global1[_wgslsmith_index_u32(0u, 14u)];
}

fn func_2() -> u32 {
    var var_0 = Struct_2(~vec4<u32>(_wgslsmith_div_u32(abs(u_input.c.x), u_input.a.x), ~u_input.d, u_input.c.x, ~u_input.d), Struct_1(_wgslsmith_sub_vec2_u32(u_input.c, abs(min(u_input.a, vec2<u32>(4294967295u, u_input.c.x)))), vec4<bool>(any(vec4<bool>(true, false, true, true)), select(all(vec2<bool>(true, false)), true, any(vec3<bool>(true, true, true))), max(2147483647i, u_input.b.x) < -1i, any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)))), func_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 7u)], -126f, global0[_wgslsmith_index_u32(1u, 7u)])), vec3<f32>(-1270f, 429f, -1511f)))), ~(~vec3<i32>(1i, -1i, 2147483647i)) | max(-vec3<i32>(-1i, -58214i, global1[_wgslsmith_index_u32(u_input.d, 14u)]), vec3<i32>(u_input.b.x, u_input.b.x, global1[_wgslsmith_index_u32(0u, 14u)]))), ~1i);
    let var_1 = Struct_3(vec3<u32>(1u, _wgslsmith_mult_u32(var_0.b.a.x, 21527u | select(1u, u_input.d, var_0.b.b.x)), _wgslsmith_dot_vec2_u32(var_0.a.zx, vec2<u32>(u_input.d, _wgslsmith_div_u32(u_input.c.x, u_input.c.x)))), vec3<i32>(_wgslsmith_mod_i32(u_input.b.x & firstLeadingBit(var_0.c), -1i), -2147483647i, _wgslsmith_sub_i32(var_0.b.d.x, _wgslsmith_mod_i32(-2147483647i, 40427i)) >> (abs(~var_0.a.x) % 32u)));
    global0 = array<f32, 7>();
    var var_2 = ~var_1.a.x << (59329u % 32u);
    let var_3 = var_1.b.zx;
    return reverseBits(abs(abs(reverseBits(0u))) & ~reverseBits(_wgslsmith_mod_u32(var_0.b.a.x, var_0.a.x)));
}

fn func_1(arg_0: Struct_3, arg_1: f32) -> Struct_3 {
    let var_0 = arg_0;
    let var_1 = max(vec4<u32>(32558u, func_2(), var_0.a.x << (_wgslsmith_mod_u32(func_2(), 1u) % 32u), _wgslsmith_add_u32(u_input.d, 0u)), max(~abs(vec4<u32>(arg_0.a.x, 4294967295u, var_0.a.x, 0u)), firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(31564u, arg_0.a.x, 95555u, var_0.a.x), vec4<u32>(u_input.d, 1u, u_input.d, u_input.d)))) ^ firstTrailingBit(~abs(vec4<u32>(var_0.a.x, arg_0.a.x, 40632u, 44817u))));
    var var_2 = Struct_1(_wgslsmith_mod_vec2_u32(~(~(~var_0.a.zy)), ~u_input.a), vec4<bool>(false, true, false, true), abs(global1[_wgslsmith_index_u32(arg_0.a.x, 14u)]), -vec3<i32>(i32(-1i) * -4624i, ~abs(11052i), u_input.b.x));
    var var_3 = vec2<bool>(false, true);
    let var_4 = Struct_3(arg_0.a, arg_0.b);
    return Struct_3(vec3<u32>(var_4.a.x & _wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, var_4.a.x)), var_4.a.xy ^ var_4.a.zz), ~var_0.a.x, ~0u), var_4.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -785f);
    let var_1 = func_1(Struct_3(~vec3<u32>(abs(u_input.d), select(u_input.a.x, u_input.d, true), reverseBits(4294967295u)), firstLeadingBit(reverseBits(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x) & vec3<i32>(-5254i, 1i, global1[_wgslsmith_index_u32(10480u, 14u)])))), var_0);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 7u)], _wgslsmith_f_op_f32(f32(-1f) * -612f), 1403f)))) - vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))), -462f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -338f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1071f), global0[_wgslsmith_index_u32(reverseBits(4294967295u), 7u)])))));
    global0 = array<f32, 7>();
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-630f)) * _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(343f))), 119f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(~vec2<u32>(var_1.a.x, 0u) << (_wgslsmith_mult_vec2_u32(u_input.a, _wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(var_1.a.x, 14279u))) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(u_input.a, select(var_1.a.xz, _wgslsmith_sub_vec2_u32(vec2<u32>(0u, var_1.a.x), vec2<u32>(var_1.a.x, 31172u)), true))), ~(~vec3<u32>(4294967295u, 0u, 4294967295u) >> (reverseBits(~var_1.a) % vec3<u32>(32u))), vec4<f32>(var_0, _wgslsmith_f_op_f32(sign(-200f)), 182f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0)))), _wgslsmith_mult_i32(~1i, 1i));
}

