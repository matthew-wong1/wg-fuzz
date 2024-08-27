struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 29>;

var<private> global1: vec2<f32>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec4<u32> {
    var var_0 = u_input.a.x;
    return vec4<u32>(24087u, ~(~(~1u)), firstTrailingBit(~(~(4294967295u >> (1u % 32u)))), firstLeadingBit(63755u));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: u32) -> vec2<f32> {
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(f32(-1f) * -347f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(arg_2.yz, arg_2.xx)), _wgslsmith_f_op_vec2_f32(abs(arg_2.zx))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -1567f)))) + arg_2.wz)));
    let var_0 = Struct_1(4294967295u >> (_wgslsmith_div_u32(_wgslsmith_sub_u32(35104u, _wgslsmith_div_u32(41039u, arg_0)), ~1u) % 32u), !vec3<bool>(arg_1.b.x, false, all(!arg_1.b)), reverseBits(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~0u, _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(0u, 29u)], vec4<u32>(arg_0, arg_1.d.x, arg_1.a, arg_1.e.x))), _wgslsmith_mod_u32(firstTrailingBit(4294967295u), 7656u)), 29u)]), abs(select(_wgslsmith_mult_vec4_u32(arg_1.d, arg_1.c) | ~vec4<u32>(1u, arg_1.d.x, arg_3, 29952u), arg_1.c, true)), vec4<u32>(func_3().x, ~61796u, arg_0, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(arg_1.a, abs(1u)), abs(36982u), firstTrailingBit(arg_3))));
    var var_1 = arg_1;
    var var_2 = var_0;
    var_2 = Struct_1(_wgslsmith_clamp_u32(~select(arg_1.a, arg_0, var_0.b.x) ^ ~var_0.a, ~(~11131u), ~(~(19345u & var_0.e.x))), select(vec3<bool>(any(var_1.b), var_1.b.x, any(vec3<bool>(var_1.b.x, true, var_0.b.x))), var_2.b, true), var_2.e, vec4<u32>(4294967295u, arg_0, var_1.d.x, 1u), ~min(firstLeadingBit(~vec4<u32>(0u, 70244u, 0u, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(12351u, 4294967295u, arg_1.e.x, arg_0), vec4<u32>(1u, arg_3, arg_1.e.x, 0u)) << (~vec4<u32>(arg_0, 46123u, arg_1.e.x, 4294967295u) % vec4<u32>(32u))));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.x))), _wgslsmith_div_f32(-181f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(arg_2.x - 964f)), _wgslsmith_f_op_f32(f32(-1f) * -797f))));
}

fn func_2(arg_0: i32) -> vec4<f32> {
    let var_0 = vec2<f32>(-1257f, global1.x);
    global1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_4(6919u, Struct_1(firstTrailingBit(~1u), vec3<bool>(true, true, any(vec2<bool>(true, false))), global0[_wgslsmith_index_u32(1u >> (_wgslsmith_div_u32(22270u, 6362u) % 32u), 29u)], max(func_3(), _wgslsmith_clamp_vec4_u32(vec4<u32>(19291u, 1u, 1u, 27242u), global0[_wgslsmith_index_u32(33612u, 29u)], vec4<u32>(0u, 4294967295u, 0u, 36712u))), vec4<u32>(firstTrailingBit(4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(59424u, 1u, 4294967295u), vec3<u32>(50658u, 15719u, 4294967295u)), 1u, select(29446u, 1u, true))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 510f, -2678f, 713f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(281f, -1073f, global1.x, 611f))))), _wgslsmith_div_u32(~(~1u), ~103717u))), var_0));
    let var_1 = vec2<i32>(abs(_wgslsmith_div_i32(-arg_0 | _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, arg_0), vec3<i32>(-20112i, 79174i, u_input.a.x)), 18484i)), _wgslsmith_mod_i32(-66883i, u_input.a.x << (0u % 32u)));
    global0 = array<vec4<u32>, 29>();
    let var_2 = Struct_1(~1u, !select(vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(true, false, true)), true, true), vec3<bool>(true, select(false, false, false), true)), vec4<u32>(~countOneBits(4054u), func_3().x, 46133u, firstTrailingBit(~0u)), ~(~_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 47u, 0u, 50842u), global0[_wgslsmith_index_u32(23565u, 29u)]), vec4<u32>(1u, 16205u, 68012u, 48847u))), ~(~firstTrailingBit(vec4<u32>(49333u, 11065u, 1u, 57066u))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_f_op_f32(sign(-185f)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(2737f, global1.x)), _wgslsmith_f_op_f32(round(1123f)), _wgslsmith_f_op_f32(-376f * -669f), _wgslsmith_f_op_f32(trunc(1606f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-292f, 754f, global1.x, global1.x) + vec4<f32>(var_0.x, var_0.x, 1920f, global1.x))))));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1) -> u32 {
    let var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_2(var_0.x)), vec4<f32>(_wgslsmith_f_op_f32(abs(global1.x)), global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -144f) + _wgslsmith_f_op_f32(-global1.x)) * global1.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global1.x)), _wgslsmith_f_op_vec2_f32(func_4(10051u, arg_1, vec4<f32>(158f, 210f, global1.x, global1.x), 0u)).x) - -390f)), !(!(!select(vec4<bool>(true, true, true, arg_1.b.x), vec4<bool>(arg_1.b.x, true, true, arg_1.b.x), true)))));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1580f, 1560f) - _wgslsmith_div_vec2_f32(vec2<f32>(-125f, 381f), var_1.wx)))));
    global0 = array<vec4<u32>, 29>();
    var var_2 = Struct_1(~1u, arg_1.b, arg_1.d, vec4<u32>(_wgslsmith_add_u32(abs(_wgslsmith_sub_u32(3847u, arg_1.d.x)), arg_0.x), arg_0.x, ~select(0u, ~1u, true), select(_wgslsmith_div_u32(34902u, 118768u), _wgslsmith_sub_u32(32555u, reverseBits(0u)), !(false || arg_1.b.x))), global0[_wgslsmith_index_u32(func_3().x | arg_1.e.x, 29u)]);
    return countOneBits(select(54357u, _wgslsmith_dot_vec4_u32(~var_2.c, vec4<u32>(var_2.d.x, var_2.d.x, arg_1.e.x, ~arg_0.x)), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~54326u, vec3<bool>(false, true, true), vec4<u32>(countOneBits(~1u), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 17948u, 36695u), vec3<u32>(4294967295u, 0u, 15460u)), 1u), 1u, 0u >> (1u % 32u)), ~global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 0u, 15156u, 30058u), global0[_wgslsmith_index_u32(~0u, 29u)]), 29u)], vec4<u32>(countOneBits(~(~28807u)), func_1(max(~vec2<u32>(0u, 6019u), ~vec2<u32>(4294967295u, 4294967295u)), Struct_1(~73169u, vec3<bool>(false, true, false), vec4<u32>(0u, 0u, 0u, 4294967295u), abs(global0[_wgslsmith_index_u32(56541u, 29u)]), vec4<u32>(1u, 12681u, 4294967295u, 1u))), 1u, 70765u));
    let var_1 = u_input.a.zww;
    let var_2 = Struct_1(_wgslsmith_clamp_u32(~firstTrailingBit(min(14073u, var_0.d.x)), ~(~11482u), _wgslsmith_sub_u32(11959u, var_0.a)), vec3<bool>(var_0.b.x, !(~var_0.a > var_0.a), true), var_0.c, countOneBits(reverseBits(~vec4<u32>(var_0.c.x, 46961u, 108715u, var_0.a))), select(vec4<u32>(func_3().x, 4294967295u, 77095u, 1u), abs(_wgslsmith_clamp_vec4_u32(~global0[_wgslsmith_index_u32(23051u, 29u)], ~vec4<u32>(83148u, 0u, 49600u, var_0.a), ~vec4<u32>(var_0.d.x, var_0.a, var_0.d.x, 37960u))), !any(select(var_0.b, vec3<bool>(false, var_0.b.x, var_0.b.x), var_0.b.x))));
    var var_3 = u_input.a.zy;
    var var_4 = var_2;
    var var_5 = 15100i;
    var var_6 = true;
    let var_7 = _wgslsmith_mult_i32(u_input.a.x, reverseBits(firstLeadingBit(var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(var_4.e.x, var_0.a, var_2.c.x)) ^ _wgslsmith_add_vec3_u32(var_0.d.zyz, var_0.e.yzz), ~var_2.c.yzz));
}

