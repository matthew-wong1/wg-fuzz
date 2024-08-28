struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<f32, 17>;

var<private> global2: Struct_4 = Struct_4(vec2<i32>(2147483647i, -1i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: u32) -> i32 {
    global0 = vec3<i32>(countOneBits(global0.x), 3433i, ~_wgslsmith_div_i32(_wgslsmith_mod_i32(global2.a.x, global2.a.x), 1i)) ^ -min(_wgslsmith_clamp_vec3_i32(-vec3<i32>(global0.x, global0.x, 2147483647i), select(vec3<i32>(-3119i, global2.a.x, -2147483647i), vec3<i32>(-2147483647i, global0.x, 0i), false), ~vec3<i32>(-2147483647i, global0.x, 2147483647i)), -countOneBits(vec3<i32>(global2.a.x, -15069i, 2147483647i)));
    global2 = Struct_4(global0.zz);
    return (i32(-1i) * -global0.x) ^ max(abs(global2.a.x), reverseBits(0i));
}

fn func_3(arg_0: bool) -> vec3<i32> {
    return _wgslsmith_sub_vec3_i32(countOneBits(-abs(vec3<i32>(global2.a.x, global2.a.x, -50077i))), vec3<i32>(global0.x, -(~global0.x), global0.x)) & vec3<i32>(_wgslsmith_mod_i32(-_wgslsmith_mult_i32(global2.a.x, global2.a.x), ~0i), global2.a.x, _wgslsmith_sub_i32(firstLeadingBit(firstTrailingBit(0i)), -(~global2.a.x)));
}

fn func_2() -> Struct_2 {
    global0 = vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(-27676i, 2147483647i, global0.x), -global0.x, -61478i << (u_input.a.x % 32u)), ~func_3(false)), -33283i, global0.x) << (vec3<u32>(4294967295u, 66104u, _wgslsmith_div_u32(abs(u_input.a.x), _wgslsmith_clamp_u32(68578u, u_input.a.x, u_input.a.x)) << (u_input.a.x % 32u)) % vec3<u32>(32u));
    let var_0 = select(!vec4<bool>(!any(vec4<bool>(true, false, true, true)), !all(vec3<bool>(false, true, true)), max(u_input.a.x, 15555u) <= _wgslsmith_sub_u32(u_input.a.x, u_input.a.x), true), !vec4<bool>(false, any(vec4<bool>(true, true, false, false)), (global2.a.x >= -2147483647i) || true, true), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), false))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(u_input.a.x, 17u)])), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 17u)] + global1[_wgslsmith_index_u32(14611u, 17u)]) + _wgslsmith_f_op_f32(-481f - 1000f))))));
    let var_2 = select(vec3<u32>(u_input.a.x, _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.a.x, ~u_input.a.x), 1u), ~abs(~u_input.a.x)), ~vec3<u32>(~5950u, ~u_input.a.x, 48585u) << (_wgslsmith_sub_vec3_u32(~(~u_input.a), firstLeadingBit(u_input.a)) % vec3<u32>(32u)), false);
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], 266f) * vec2<f32>(372f, global1[_wgslsmith_index_u32(var_2.x, 17u)])), _wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, var_1.x), vec2<f32>(450f, 1000f)))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(2047f, var_1.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) - vec2<f32>(380f, var_1.x)))))), ~(-45682i), vec3<u32>(~(~(~u_input.a.x)), _wgslsmith_mod_u32(countOneBits(var_2.x) & 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, var_2.x, 0u), var_2)), ~(~u_input.a.x) << (_wgslsmith_dot_vec2_u32(u_input.a.yy, vec2<u32>(4294967295u, 4294967295u)) % 32u)));
    return Struct_2(var_3.c.x < var_3.c.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1414f, var_3.a.x) + _wgslsmith_f_op_vec2_f32(trunc(var_3.a))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<bool>) -> Struct_4 {
    global2 = Struct_4(global2.a);
    let var_0 = arg_1;
    global1 = array<f32, 17>();
    let var_1 = select(u_input.a, firstTrailingBit(abs(u_input.a)), true) | firstTrailingBit(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(7576u, 1809u, u_input.a.x) >> (vec3<u32>(u_input.a.x, 41396u, u_input.a.x) % vec3<u32>(32u)), abs(u_input.a)), select(~vec3<u32>(4294967295u, u_input.a.x, 0u), vec3<u32>(u_input.a.x, 329u, u_input.a.x) & vec3<u32>(0u, 13049u, 1u), var_0.a)));
    global0 = vec3<i32>(global2.a.x, 16655i << (u_input.a.x % 32u), -firstTrailingBit(-1i));
    return Struct_4(global0.zx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    let var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(global2.a.x, -2306i, _wgslsmith_dot_vec4_i32(select(-vec4<i32>(var_0, -1i, global0.x, -1i), select(vec4<i32>(5300i, 12900i, var_0, 2147483647i), vec4<i32>(var_0, global2.a.x, global0.x, global2.a.x), vec4<bool>(false, true, false, false)), any(vec4<bool>(true, false, false, false))), vec4<i32>(-1069i, 89400i | var_0, _wgslsmith_sub_i32(global2.a.x, -53786i), func_1(1u))), _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(var_0, global0.x)), _wgslsmith_mult_vec2_i32(global2.a, vec2<i32>(0i, -2147483647i))) >> (52543u % 32u)), _wgslsmith_mult_vec4_i32(select(select(vec4<i32>(43970i, global2.a.x, var_0, -35228i), vec4<i32>(0i, global0.x, 1i, 0i), false), -vec4<i32>(global0.x, 17654i, 7889i, -541i), vec4<bool>(true, false, true, false)), ~reverseBits(vec4<i32>(global2.a.x, global0.x, 4660i, global2.a.x))) | vec4<i32>(_wgslsmith_mod_i32(global2.a.x, global0.x), 0i, var_0, _wgslsmith_add_i32(-7856i, _wgslsmith_div_i32(global0.x, 30895i))));
    let var_2 = func_4(func_2(), Struct_3(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), select(true, true, all(vec2<bool>(true, true)))), Struct_2(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], global1[_wgslsmith_index_u32(2502u, 17u)]) - vec2<f32>(943f, 1534f))))), !(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 17u)] < -3106f, any(vec3<bool>(false, false, false)), true, any(vec2<bool>(true, true)))));
    global0 = ~var_1.zzx;
    global1 = array<f32, 17>();
    var var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(71622u, 17u)] - _wgslsmith_div_f32(-568f, -100f)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(min(~vec4<u32>(4294967295u, 0u, u_input.a.x, u_input.a.x), vec4<u32>(0u, 21085u, 67475u, 0u)), vec4<u32>(~u_input.a.x, 1u, ~u_input.a.x, u_input.a.x << (u_input.a.x % 32u))), 17u)]), firstTrailingBit(firstTrailingBit(-5641i)) & 27713i, vec3<u32>(~u_input.a.x, _wgslsmith_div_u32(u_input.a.x, u_input.a.x), 1579u & u_input.a.x));
    let var_4 = _wgslsmith_clamp_vec2_i32(firstLeadingBit(var_1.zy), _wgslsmith_add_vec2_i32(select(firstLeadingBit(global0.xz), -_wgslsmith_sub_vec2_i32(vec2<i32>(-3905i, -61443i), var_1.xy), !any(vec3<bool>(true, true, false))), vec2<i32>(-(~var_1.x), 0i)), var_2.a);
    var var_5 = func_2();
    global1 = array<f32, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(0i, var_3.b), _wgslsmith_add_u32(countOneBits(15015u), ~(~0u)), func_4(func_2(), Struct_3(vec3<bool>(var_5.a, false, all(vec2<bool>(true, var_5.a))), Struct_2(var_5.a, _wgslsmith_f_op_vec2_f32(select(var_3.a, vec2<f32>(-2781f, var_3.a.x), vec2<bool>(true, var_5.a))))), vec4<bool>(true, func_2().a, true, select(true, 0u > var_3.c.x, all(vec3<bool>(var_5.a, var_5.a, false))))).a.x, var_2.a, _wgslsmith_mult_i32(2147483647i, _wgslsmith_clamp_i32(~var_1.x, -5868i, var_4.x)));
}

