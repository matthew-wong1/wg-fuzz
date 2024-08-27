struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 3> = array<Struct_4, 3>(Struct_4(vec4<u32>(38227u, 4294967295u, 1084u, 61308u)), Struct_4(vec4<u32>(0u, 16433u, 32806u, 4294967295u)), Struct_4(vec4<u32>(1u, 17596u, 57432u, 4294967295u)));

var<private> global1: vec4<f32> = vec4<f32>(442f, 159f, -759f, 1826f);

var<private> global2: array<vec2<i32>, 31> = array<vec2<i32>, 31>(vec2<i32>(-1i, -21347i), vec2<i32>(i32(-2147483648), -11363i), vec2<i32>(0i, -20344i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(i32(-2147483648), -24884i), vec2<i32>(2147483647i, 0i), vec2<i32>(2147483647i, -9327i), vec2<i32>(-19950i, -1i), vec2<i32>(1i, -6601i), vec2<i32>(-1i, 1i), vec2<i32>(-1i, 27576i), vec2<i32>(-1i, -14644i), vec2<i32>(1i, 1i), vec2<i32>(-1i, 0i), vec2<i32>(-1i, -6393i), vec2<i32>(i32(-2147483648), 36925i), vec2<i32>(2147483647i, 0i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(11695i, 1i), vec2<i32>(-8383i, -1i), vec2<i32>(-1i, 2147483647i), vec2<i32>(20726i, -64094i), vec2<i32>(1i, 66553i), vec2<i32>(-10528i, 2147483647i), vec2<i32>(43708i, 34441i), vec2<i32>(0i, -1i), vec2<i32>(1i, -1i), vec2<i32>(16512i, 0i), vec2<i32>(-1i, -65751i), vec2<i32>(2147483647i, 11209i));

var<private> global3: array<Struct_1, 6>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_i32(reverseBits(-21101i), _wgslsmith_sub_i32(-6588i >> (u_input.a % 32u), -arg_0.x), ~(-32501i));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, _wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, u_input.a, 0u << (_wgslsmith_mod_u32(u_input.a, 61614u) % 32u)), firstLeadingBit(1u))), 3u)];
    let var_2 = arg_1;
    var var_3 = -1000f;
    var var_4 = arg_0.x;
    return global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 1u), 6u)];
}

fn func_3(arg_0: Struct_4, arg_1: vec3<bool>) -> f32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_div_f32(741f, _wgslsmith_f_op_f32(global1.x - global1.x)))));
    let var_1 = -_wgslsmith_clamp_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-2147483647i, 0i, 1i, -4038i)), 1i, -1i);
    var var_2 = arg_0.a;
    let var_3 = 518i;
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(608f, _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-var_0.a)))))), _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - 827f) - _wgslsmith_f_op_f32(-329f * 538f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global1.x)), _wgslsmith_f_op_f32(min(-444f, var_0.a))), false))), _wgslsmith_f_op_f32(178f - var_0.a), -619f);
    return _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_4.x)) - global1.x));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x + 1000f), _wgslsmith_f_op_f32(round(arg_2.x))), _wgslsmith_div_f32(-925f, _wgslsmith_f_op_f32(floor(global1.x)))))));
    let var_1 = Struct_2(vec4<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -2459f), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(Struct_4(vec4<u32>(24025u, 0u, 57292u, 4294967295u)), vec3<bool>(arg_0.a, arg_0.a, false))))))));
    var var_2 = global3[_wgslsmith_index_u32(~(~38031u), 6u)];
    var var_3 = Struct_3(_wgslsmith_f_op_f32(select(var_0.x, var_2.b.x, any(vec4<bool>(true, var_2.a, true, func_1(vec4<i32>(32034i, 0i, 2147483647i, -20747i), vec4<bool>(true, var_2.a, arg_0.a, true), vec4<bool>(true, true, arg_0.a, arg_0.a)).a)))));
    let var_4 = firstLeadingBit(reverseBits(arg_1.yx));
    return arg_0;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_5) -> i32 {
    var var_0 = false;
    let var_1 = select(_wgslsmith_mult_i32(_wgslsmith_mult_i32(arg_2.b, abs(arg_2.b) ^ -2147483647i), -1i), -17415i, !(!(!(arg_1.a & true))));
    let var_2 = abs(_wgslsmith_div_u32(arg_2.a.a.x, _wgslsmith_mult_u32(abs(4294967295u) >> (~arg_2.a.a.x % 32u), arg_2.a.a.x)));
    var var_3 = -vec4<i32>(~countOneBits(0i), var_1, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1, 10356i), vec2<i32>(arg_2.b, 9108i)), var_1), -abs(var_1));
    global3 = array<Struct_1, 6>();
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(1u, _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 38344u), ~vec2<u32>(u_input.a, u_input.a)), 38112u));
    let var_1 = global3[_wgslsmith_index_u32(~var_0 & var_0, 6u)];
    let var_2 = var_1.b;
    let var_3 = vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(~28676i, max(abs(6258i), _wgslsmith_div_i32(-30251i, -32625i)), ~36372i), -vec3<i32>(_wgslsmith_mult_i32(-12225i, 0i), min(19141i, -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, -44027i, -74473i), vec4<i32>(-1514i, -74386i, 2147483647i, 2147483647i)))), -2060i, func_4(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, global1.x, -1640f, -775f) + vec4<f32>(global1.x, var_1.b.x, global1.x, 401f)), _wgslsmith_f_op_vec4_f32(sign(var_1.b))), var_1.b), func_2(func_1(countOneBits(vec4<i32>(2147483647i, 2147483647i, 0i, 2147483647i)), vec4<bool>(var_1.a, false, var_1.a, true), !vec4<bool>(var_1.a, var_1.a, false, true)), max(vec3<u32>(87249u, 1u, 31957u), ~vec3<u32>(4294967295u, u_input.a, u_input.a)), vec2<f32>(_wgslsmith_f_op_f32(var_2.x + var_2.x), global1.x)), Struct_5(Struct_4(~vec4<u32>(var_0, 1u, var_0, 0u)), reverseBits(~46116i))));
    let var_4 = _wgslsmith_clamp_vec4_i32(vec4<i32>(var_3.x, -1i, ~(-27482i), min(max(abs(var_3.x), abs(var_3.x)), func_4(vec4<f32>(-476f, var_1.b.x, var_2.x, -1718f), Struct_1(var_1.a, vec4<f32>(-636f, var_1.b.x, -1000f, var_1.b.x)), Struct_5(global0[_wgslsmith_index_u32(u_input.a, 3u)], 1i)) ^ 27927i)), abs(-(~vec4<i32>(-8550i, var_3.x, var_3.x, var_3.x)) ^ -reverseBits(vec4<i32>(1i, var_3.x, var_3.x, 57448i))), vec4<i32>(_wgslsmith_sub_i32(min(var_3.x, 1i), -58056i), _wgslsmith_mult_i32(_wgslsmith_mult_i32(-1i, ~var_3.x), _wgslsmith_div_i32(var_3.x, var_3.x) >> (u_input.a % 32u)), -22507i, -var_3.x));
    global3 = array<Struct_1, 6>();
    global0 = array<Struct_4, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.wy, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, _wgslsmith_add_i32(var_3.x, -1i), 10536i, -23595i << (u_input.a % 32u)), -var_4)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, -276f) + vec2<f32>(var_1.b.x, global1.x)))), _wgslsmith_f_op_vec2_f32(-var_2.xx)));
}

