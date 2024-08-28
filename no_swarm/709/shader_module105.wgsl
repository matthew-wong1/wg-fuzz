struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: f32,
    d: vec4<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: u32 = 1u;

var<private> global2: array<Struct_1, 1>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> u32 {
    let var_0 = 0u;
    let var_1 = Struct_1(_wgslsmith_sub_vec4_u32(arg_0.a, ~vec4<u32>(~1u, reverseBits(var_0), _wgslsmith_sub_u32(47208u, arg_0.c.x), ~28022u)), vec4<i32>(2147483647i, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.e.zy, select(vec2<i32>(global0.x, arg_1), u_input.a.xy, vec2<bool>(false, false))), ~0i), i32(-1i) * -(~(-21757i)), _wgslsmith_div_i32(_wgslsmith_sub_i32(14750i, arg_0.b.x) ^ ~(-26512i), _wgslsmith_add_i32(-65545i, _wgslsmith_add_i32(19596i, 0i)))), _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.a.x, ~(0u | u_input.b.x), 18305u), ~(~(u_input.b.xxx & vec3<u32>(u_input.c.x, 1u, 32272u)))));
    var var_2 = Struct_1(var_1.a, max(abs(vec4<i32>(_wgslsmith_dot_vec3_i32(arg_0.b.xzy, u_input.a), _wgslsmith_mult_i32(0i, arg_1), global0.x, 0i)), arg_0.b), var_1.c);
    let var_3 = arg_0;
    var var_4 = vec4<i32>(arg_1, var_1.b.x, ~(~38105i), _wgslsmith_sub_i32(var_1.b.x, ~firstLeadingBit(_wgslsmith_add_i32(var_3.b.x, -27678i))));
    return 4294967295u;
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> i32 {
    let var_0 = u_input.b.x;
    let var_1 = Struct_1(vec4<u32>(countOneBits(49179u), _wgslsmith_dot_vec3_u32(vec3<u32>(~29229u, 0u | var_0, 33499u), min(vec3<u32>(arg_0.c.x, arg_0.c.x, var_0) << (arg_0.c % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.c.x, 61577u, u_input.c.x), arg_0.a.zwz))), 0u, ~(~23022u)), arg_0.b, ~(~select(_wgslsmith_div_vec3_u32(vec3<u32>(30791u, var_0, u_input.b.x), vec3<u32>(57130u, var_0, var_0)), _wgslsmith_clamp_vec3_u32(arg_0.c, arg_0.c, vec3<u32>(arg_0.c.x, 31741u, 1u)), false)));
    var var_2 = arg_1;
    var var_3 = u_input.c;
    var var_4 = vec2<bool>(any(select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false)), vec4<bool>(false, all(vec2<bool>(false, false)), true, 78821u != var_3.x))), true);
    return -_wgslsmith_clamp_i32(-56699i, -1i, ~(-_wgslsmith_mult_i32(global0.x, 8600i)));
}

fn func_2() -> vec4<i32> {
    let var_0 = func_4(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(49141u, 14999u, ~4294967295u, u_input.c.x >> (func_3(Struct_1(vec4<u32>(u_input.c.x, u_input.b.x, u_input.b.x, 89719u), vec4<i32>(u_input.a.x, global0.x, 2147483647i, -23408i), u_input.b.zxx), 1i) % 32u))), 1u)], _wgslsmith_sub_i32(u_input.d & -1i, global0.x ^ ~max(32263i, global0.x)));
    global1 = _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(~_wgslsmith_add_vec2_u32(u_input.c.yz, u_input.b.xw), ~(vec2<u32>(u_input.b.x, u_input.b.x) & vec2<u32>(u_input.b.x, u_input.c.x))), ~firstTrailingBit(abs(~vec2<u32>(u_input.c.x, u_input.c.x))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1351f) - -228f)), -1235f, -1000f, _wgslsmith_f_op_f32(967f + -463f));
    global1 = 1u;
    global2 = array<Struct_1, 1>();
    return vec4<i32>(global0.x, global0.x, 34362i, var_0);
}

fn func_1() -> vec3<i32> {
    global1 = u_input.c.x;
    global0 = ~vec4<i32>(-1i, u_input.e.x, firstTrailingBit(-1i), -(~(-11453i))) ^ func_2();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-416f * 1065f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-574f, 375f))) * _wgslsmith_f_op_f32(abs(-1266f)))));
    global0 = -select(-select(vec4<i32>(u_input.d, u_input.e.x, u_input.d, 2147483647i), max(vec4<i32>(-44126i, 15420i, global0.x, global0.x), vec4<i32>(u_input.d, u_input.d, global0.x, global0.x)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true)), vec4<i32>(firstTrailingBit(firstTrailingBit(13775i)), ~u_input.d, -27157i, ~(global0.x | u_input.e.x)), vec4<bool>(u_input.e.x >= -29455i, true, true, -global0.x <= firstLeadingBit(-3477i)));
    let var_1 = vec2<bool>(!all(vec3<bool>(true, true, true)), any(select(vec4<bool>(true, true, -639f >= var_0.x, true), vec4<bool>(var_0.x >= var_0.x, u_input.b.x > u_input.c.x, true, true), vec4<bool>(true, true, true, true))));
    return vec3<i32>(-54717i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.e.x, 2147483647i) & firstTrailingBit(u_input.a.xy), _wgslsmith_div_vec2_i32(~global0.wx, _wgslsmith_sub_vec2_i32(vec2<i32>(global0.x, global0.x), u_input.e.zz))), -func_2().x), global0.x);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1) -> i32 {
    global0 = arg_1.b;
    let var_0 = vec3<bool>(all(vec4<bool>(true, true, !any(vec3<bool>(true, false, false)), true)), ~u_input.b.x <= 0u, all(!vec4<bool>(true, 17175u > arg_1.a.x, true, any(vec4<bool>(true, true, true, false)))));
    let var_1 = select(false, true, var_0.x);
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.x;
    var var_1 = Struct_1(vec4<u32>(u_input.c.x ^ ~u_input.b.x, ~abs(~1u), firstTrailingBit(~select(u_input.b.x, 3922u, true)), u_input.b.x), -(~abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -7434i, 39169i, 26109i), vec4<i32>(u_input.d, global0.x, 1i, u_input.e.x), vec4<i32>(u_input.d, u_input.a.x, 26543i, 0i)))), vec3<u32>(u_input.c.x, u_input.b.x, 50910u));
    var var_2 = _wgslsmith_add_i32(func_5(_wgslsmith_sub_vec3_i32(vec3<i32>(-38196i, -6826i, global0.x), func_1()), Struct_1(vec4<u32>(u_input.b.x, 12940u, u_input.b.x, 1u), var_1.b | var_1.b, vec3<u32>(15268u, 1u, 0u))), -func_2().x) | -31653i;
    var var_3 = _wgslsmith_mult_vec4_i32(select(select(vec4<i32>(var_1.b.x, global0.x, 0i, u_input.e.x), var_1.b, all(vec3<bool>(true, true, true))), countOneBits(vec4<i32>(var_1.b.x, -1i, 2147483647i, u_input.d)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec4<bool>(true, false, false, false)))), var_1.b) & ~(_wgslsmith_sub_vec4_i32(vec4<i32>(-4169i, -49666i, global0.x, u_input.d), var_1.b) & firstTrailingBit(~vec4<i32>(global0.x, 1i, var_1.b.x, 13884i)));
    var var_4 = Struct_1(var_1.a, firstTrailingBit(vec4<i32>(_wgslsmith_div_i32(-17080i, var_3.x), var_3.x, select(24160i, ~(-2147483647i), true), 25350i)), ~(~vec3<u32>(firstTrailingBit(77497u), 9669u << (var_1.a.x % 32u), var_1.c.x ^ 0u)));
    var var_5 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1198f + _wgslsmith_f_op_f32(sign(-1963f))))), -612f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -572f) - 1205f), 1151f);
    let var_6 = _wgslsmith_f_op_vec2_f32(-var_5.wy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(min(150f, var_6.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1817f), 698f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_5.yzw - _wgslsmith_f_op_vec3_f32(select(var_5.zzw, var_5.zzz, vec3<bool>(true, true, false))))))), -(var_4.b | ~vec4<i32>(u_input.d, -52692i, 0i, var_4.b.x)) << (vec4<u32>(abs(~1u), abs(var_1.a.x) >> (var_1.c.x % 32u), 20013u, u_input.b.x) % vec4<u32>(32u)), 755f, vec4<i32>(var_4.b.x, firstTrailingBit(global0.x), _wgslsmith_add_i32(var_1.b.x | -1i, func_1().x), 23262i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(var_6.x, -165f), _wgslsmith_f_op_f32(1023f - 178f), -485f, -1575f))) + vec4<f32>(_wgslsmith_f_op_f32(-var_6.x), 1631f, _wgslsmith_f_op_f32(f32(-1f) * -1276f), 1000f)));
}

