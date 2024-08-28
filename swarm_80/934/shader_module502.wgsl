struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: i32,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
    c: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: Struct_4,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 28> = array<vec2<u32>, 28>(vec2<u32>(1u, 5055u), vec2<u32>(1067u, 1u), vec2<u32>(0u, 15772u), vec2<u32>(4294967295u, 53062u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 74300u), vec2<u32>(88619u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(75260u, 66624u), vec2<u32>(1u, 1u), vec2<u32>(77142u, 4332u), vec2<u32>(0u, 54573u), vec2<u32>(4415u, 1u), vec2<u32>(0u, 82780u), vec2<u32>(0u, 24194u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 92122u), vec2<u32>(22782u, 1u), vec2<u32>(66102u, 35969u), vec2<u32>(21133u, 39971u), vec2<u32>(49468u, 1u), vec2<u32>(31728u, 2326u), vec2<u32>(80446u, 105312u), vec2<u32>(43105u, 29175u), vec2<u32>(4294967295u, 1u), vec2<u32>(66108u, 4294967295u), vec2<u32>(0u, 64669u), vec2<u32>(4294967295u, 4294967295u));

var<private> global1: bool;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-743f - 410f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2416f, -313f)))), vec2<i32>(-u_input.a, -max(-1i, u_input.a) >> (~_wgslsmith_div_u32(4294967295u, 1u) % 32u)));
    let var_1 = var_0.c.x;
    var var_2 = Struct_1(all(vec4<bool>(all(vec3<bool>(true, true, false)), false, any(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, false, true)))), 1999f, vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - _wgslsmith_div_f32(var_0.b.x, var_0.b.x)) <= _wgslsmith_f_op_f32(-var_0.b.x), u_input.a > (~var_0.c.x & ~(-17033i)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(false, true, true))))), !vec4<bool>(false, true, true && (u_input.b <= 2147483647i), true));
    let var_3 = min(reverseBits(min(max(min(vec3<i32>(var_0.c.x, 0i, u_input.a), vec3<i32>(-1i, var_0.c.x, -2147483647i)), vec3<i32>(u_input.a, 18972i, var_0.c.x)), vec3<i32>(~8192i, var_0.c.x, 0i))), vec3<i32>(53248i, u_input.a, -2147483647i));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.b - -829f))) == var_0.a, -1491f, !select(vec3<bool>(!var_2.d.x, false, !var_2.c.x), select(vec3<bool>(false, true, var_2.c.x), var_2.c, vec3<bool>(var_2.a, var_2.a, true)), !select(var_2.c, var_2.c, var_2.d.ywx)), vec4<bool>(false, false, any(!vec3<bool>(var_2.c.x, false, var_2.d.x)), true));
    return ~_wgslsmith_sub_u32(4294967295u, ~_wgslsmith_add_u32(~26821u, ~4294967295u));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: u32, arg_3: Struct_3) -> u32 {
    let var_0 = arg_3;
    let var_1 = ~vec4<u32>(37504u, 0u, func_3() ^ arg_1.x, 1185u);
    var var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, 1364f)))), _wgslsmith_div_vec2_f32(arg_3.b.zx, var_0.b.xx)));
    var var_4 = -vec4<i32>(-var_0.c, 1i, _wgslsmith_mod_i32(-arg_0.c, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c, -19014i, 2147483647i, u_input.a), vec4<i32>(8543i, var_0.c, -1i, var_0.c))), -var_0.c >> (0u % 32u)) & ~(vec4<i32>(arg_0.c ^ var_2.c, _wgslsmith_clamp_i32(u_input.a, var_2.c, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.c, 2147483647i, 1i, 19544i), vec4<i32>(-63390i, 45517i, 2147483647i, var_0.c)), u_input.b) ^ ~(~vec4<i32>(2147483647i, -42861i, arg_0.c, arg_3.c)));
    return _wgslsmith_clamp_u32(~abs(_wgslsmith_mult_u32(abs(2659u), _wgslsmith_add_u32(5416u, var_1.x))), ~min(_wgslsmith_mult_u32(84466u, ~4294967295u), arg_2), arg_1.x);
}

fn func_1(arg_0: f32, arg_1: vec2<i32>) -> i32 {
    var var_0 = (3912u >> (abs(76296u & func_2(Struct_3(false, vec3<f32>(-806f, arg_0, arg_0), u_input.b), global0[_wgslsmith_index_u32(54391u, 28u)], 4582u, Struct_3(true, vec3<f32>(-660f, 1129f, -724f), u_input.b))) % 32u)) >= func_3();
    var_0 = all(!(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true), true)));
    global0 = array<vec2<u32>, 28>();
    global1 = select(!any(vec3<bool>(false, true, true)), true, !(-arg_1.x != ~(-27431i)));
    let var_1 = vec3<u32>(~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(84237u, 4294967295u, 4294967295u), 1u) | min(44734u, 66239u), 0u, ~firstLeadingBit(~18486u));
    return _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(-firstTrailingBit(vec4<i32>(-16275i, 1i, -1i, -1i)) | vec4<i32>(abs(-53813i), ~arg_1.x, 1i, -u_input.b), max(abs(~vec4<i32>(arg_1.x, -2147483647i, arg_1.x, arg_1.x)), vec4<i32>(~(-2147483647i), ~(-91i), i32(-1i) * -30710i, _wgslsmith_div_i32(arg_1.x, 1i)))), arg_1.x, arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1000f;
    var var_1 = vec3<i32>(1i, reverseBits(_wgslsmith_add_i32(~u_input.b >> ((43625u << (0u % 32u)) % 32u), -30892i)), -80202i);
    var var_2 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0 * var_0)))) <= _wgslsmith_f_op_f32(var_0 - var_0), var_1.x > (~var_1.x ^ ~func_1(-629f, var_1.yy)), true | all(vec2<bool>(true, true)), select(any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true))) & any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false))), true, false));
    var_2 = select(!select(vec4<bool>(true, u_input.b == 33304i, all(vec2<bool>(false, false)), any(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x))), !(!vec4<bool>(var_2.x, true, var_2.x, false)), vec4<bool>(-64932i < var_1.x, var_2.x, select(false, true, var_2.x), !var_2.x)), select(vec4<bool>(true, !var_2.x == false, !any(var_2.zxw), all(!vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x))), !(!(!vec4<bool>(var_2.x, var_2.x, var_2.x, true))), select(!select(vec4<bool>(var_2.x, var_2.x, false, true), vec4<bool>(false, true, var_2.x, false), vec4<bool>(false, false, true, false)), select(!vec4<bool>(var_2.x, var_2.x, false, false), select(vec4<bool>(true, false, var_2.x, true), vec4<bool>(true, var_2.x, false, true), vec4<bool>(false, true, false, false)), var_2.x), true)), all(select(select(vec3<bool>(var_2.x, true, true), vec3<bool>(true, var_2.x, var_2.x), select(vec3<bool>(false, false, false), var_2.wzw, var_2.x)), var_2.xwy, var_2.x)));
    let var_3 = reverseBits(~2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, _wgslsmith_f_op_f32(-var_0))), _wgslsmith_div_vec2_i32(countOneBits(_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, var_3), vec2<i32>(2147483647i, -1i)), countOneBits(vec2<i32>(1232i, var_3)), _wgslsmith_div_vec2_i32(var_1.zy, vec2<i32>(var_3, var_3)))), vec2<i32>(0i, ~0i << (0u % 32u))), var_0);
}

