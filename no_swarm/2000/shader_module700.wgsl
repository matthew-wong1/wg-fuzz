struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec3<f32>,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec4<f32>,
    d: Struct_2,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3>;

var<private> global1: i32;

var<private> global2: array<Struct_5, 30> = array<Struct_5, 30>(Struct_5(4294967295u), Struct_5(61531u), Struct_5(1u), Struct_5(0u), Struct_5(95951u), Struct_5(69446u), Struct_5(40856u), Struct_5(14198u), Struct_5(153u), Struct_5(8301u), Struct_5(4294967295u), Struct_5(15265u), Struct_5(0u), Struct_5(42251u), Struct_5(44511u), Struct_5(0u), Struct_5(76603u), Struct_5(42064u), Struct_5(53819u), Struct_5(4294967295u), Struct_5(4294967295u), Struct_5(31404u), Struct_5(4294967295u), Struct_5(1u), Struct_5(0u), Struct_5(21587u), Struct_5(94551u), Struct_5(2493u), Struct_5(0u), Struct_5(4294967295u));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32, arg_3: vec4<f32>) -> f32 {
    global1 = -33673i;
    global2 = array<Struct_5, 30>();
    global1 = arg_0.b.a.x;
    var var_0 = false;
    global1 = ~_wgslsmith_add_i32(~_wgslsmith_add_i32(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(24367i, arg_1.b.a.x), arg_0.b.a)), arg_1.c.a.x & -3316i);
    return _wgslsmith_div_f32(arg_1.d, arg_1.d);
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: vec3<u32>) -> vec2<i32> {
    var var_0 = ~(~(-(~_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.x, 1i, arg_1.x, arg_1.x), vec4<i32>(-1i, -2147483647i, -59280i, arg_1.x)))));
    let var_1 = !(!select(all(vec2<bool>(true, false)) | any(vec4<bool>(true, false, true, true)), true, true));
    global0 = array<Struct_2, 3>();
    let var_2 = select(vec3<bool>(_wgslsmith_add_u32(~96415u, 3055u) != u_input.a.x, any(vec2<bool>(true, var_1)), !all(!vec2<bool>(false, var_1))), vec3<bool>(u_input.a.x <= _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), arg_2), arg_2 & vec3<u32>(arg_2.x, 4294967295u, 4294967295u)), true, true), true);
    var var_3 = !select(!select(!vec4<bool>(var_1, var_1, true, var_2.x), vec4<bool>(true, true, var_1, var_1), vec4<bool>(var_1, true, false, true)), !(!vec4<bool>(var_1, var_2.x, true, true)), select(!vec4<bool>(false, var_2.x, true, false), select(vec4<bool>(var_1, false, var_2.x, var_2.x), select(vec4<bool>(var_1, false, false, var_2.x), vec4<bool>(var_2.x, false, var_2.x, true), true), !vec4<bool>(false, var_1, false, var_2.x)), _wgslsmith_f_op_f32(round(arg_0)) == -1782f));
    return _wgslsmith_div_vec2_i32(var_0.yy, arg_1 >> (u_input.a.zx % vec2<u32>(32u)));
}

fn func_1(arg_0: f32) -> vec2<i32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -410f), _wgslsmith_f_op_f32(-arg_0), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], global0[_wgslsmith_index_u32(16299u, 3u)], u_input.a.x, vec4<f32>(arg_0, arg_0, 510f, -126f))))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0 + 233f)))));
    let var_1 = Struct_4(Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_div_u32(1u, 56897u), 4294967295u | u_input.a.x), max(vec3<u32>(1699u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 68648u, u_input.a.x)) << (min(u_input.a.wwz, u_input.a.zzx) % vec3<u32>(32u))), 3u)], countOneBits(firstLeadingBit(71457u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, 798f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1770f, 1392f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x - arg_0))) - -1933f)), Struct_3(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], _wgslsmith_mod_u32(_wgslsmith_div_u32(~u_input.a.x, max(3782u, 0u)), ~abs(u_input.a.x)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(min(-614f, 963f)), _wgslsmith_f_op_f32(431f + 1861f), arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0, var_0.x)) * -918f))), var_0, Struct_2(vec2<u32>(1u, 64373u), Struct_1(func_3(_wgslsmith_f_op_f32(step(1260f, var_0.x)), ~vec2<i32>(36581i, 1i), vec3<u32>(31007u, u_input.a.x, 1u) ^ u_input.a.yzx), _wgslsmith_sub_vec4_u32(u_input.a, u_input.a)), Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(-15677i, -1i), vec2<i32>(1i, 0i), func_3(-1000f, vec2<i32>(2147483647i, -50320i), vec3<u32>(0u, u_input.a.x, u_input.a.x))), vec4<u32>(76388u, ~31668u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x), vec4<u32>(0u, 1u, u_input.a.x, u_input.a.x)), u_input.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(var_0.x + var_0.x)))));
    var var_2 = _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(~u_input.a, ~vec4<u32>(var_1.d.b.b.x, 4294967295u, var_1.d.a.x, 64328u)), u_input.a), var_1.d.b.b);
    let var_3 = var_1.a;
    let var_4 = vec4<i32>(~(~1i), _wgslsmith_add_i32(2147483647i, (i32(-1i) * -2147483647i) >> (_wgslsmith_add_u32(u_input.a.x, u_input.a.x) % 32u)) & var_1.a.a.b.a.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(11539i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b.a.b.a.x, 1i, var_1.d.b.a.x), vec3<i32>(2147483647i, var_3.a.b.a.x, 9550i)), _wgslsmith_dot_vec2_i32(var_3.a.b.a, vec2<i32>(1i, var_3.a.b.a.x)), -1i), (_wgslsmith_div_vec4_i32(vec4<i32>(var_1.d.c.a.x, var_3.a.b.a.x, 0i, var_1.d.c.a.x), vec4<i32>(var_3.a.c.a.x, var_3.a.c.a.x, 67550i, var_3.a.c.a.x)) ^ (vec4<i32>(0i, var_1.a.a.c.a.x, 24645i, var_1.a.a.c.a.x) & vec4<i32>(var_1.d.b.a.x, var_3.a.c.a.x, var_3.a.c.a.x, var_3.a.b.a.x))) | vec4<i32>(var_3.a.c.a.x, 0i, ~46244i, -var_3.a.b.a.x)), 35139i);
    return func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.d - var_1.d.d)), var_0.x)) - var_0.x), select(var_3.a.b.a, abs(countOneBits(~vec2<i32>(var_1.a.a.b.a.x, 1i))), vec2<bool>(true, true)), reverseBits(~var_1.d.b.b.zyw));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_5, 30>();
    global2 = array<Struct_5, 30>();
    global2 = array<Struct_5, 30>();
    let var_0 = u_input.a.x;
    let var_1 = Struct_2(~_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 73724u), u_input.a.yx), u_input.a.zx) ^ firstTrailingBit(u_input.a.yy), Struct_1(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1461f) * 496f)), firstLeadingBit(vec4<u32>(~22657u, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), ~4294967295u, u_input.a.x))), Struct_1(~(vec2<i32>(5977i, -40268i) << (abs(vec2<u32>(4294967295u, u_input.a.x)) % vec2<u32>(32u))), firstLeadingBit(vec4<u32>(var_0 ^ 1u, 489u, u_input.a.x & 1u, 1u ^ u_input.a.x))), -314f);
    var var_2 = !select(select(vec4<bool>(true, true, all(vec4<bool>(true, true, true, true)), select(false, false, false)), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), true), select(all(vec4<bool>(false, false, false, false)), true, true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec4<bool>(true, false, true, true))), vec4<bool>(true, true, true, true), false), true);
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1.d * 1f));
}

