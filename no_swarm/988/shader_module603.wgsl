struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: f32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9>;

var<private> global1: bool = true;

var<private> global2: vec4<u32> = vec4<u32>(16417u, 0u, 10324u, 59553u);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>) -> u32 {
    let var_0 = Struct_3(Struct_1(select(arg_0.c.a, select(select(arg_0.c.a, vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(arg_0.c.a.x, true), arg_0.c.a.x == true), true), _wgslsmith_f_op_f32(round(1546f)), arg_0.c.c, _wgslsmith_mult_i32(select(_wgslsmith_dot_vec3_i32(arg_1.wxz, vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], 2147483647i, 1i)), u_input.b, -743f != arg_0.c.c), _wgslsmith_clamp_i32(1i, -8403i, ~(-2147483647i))), !(-arg_0.d.x == max(-21896i, 1i))), _wgslsmith_div_u32(~(~(~0u)), 7539u), Struct_2(firstLeadingBit(-1i), arg_0.d, Struct_1(select(vec2<bool>(true, true), select(vec2<bool>(true, arg_0.c.e), vec2<bool>(true, true), arg_0.c.e), vec2<bool>(true, arg_0.c.a.x)), 383f, arg_0.c.c, arg_0.c.d, !(arg_0.c.c > 973f)), u_input.c.zx), Struct_1(arg_0.c.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -866f) - arg_0.c.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1458f)), ~_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 9u)], -2147483647i, -arg_1.x), !arg_0.c.a.x), arg_0.c);
    let var_1 = -_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(~(~arg_1), -(vec4<i32>(0i, 1i, -30774i, 15430i) ^ arg_1)), vec4<i32>(arg_1.x, arg_0.b.x, ~(-37741i), _wgslsmith_add_i32(firstLeadingBit(1i), countOneBits(-2147483647i))));
    var var_2 = select(!select(select(!var_0.d.a, !vec2<bool>(arg_0.c.e, arg_0.c.a.x), true), !arg_0.c.a, all(vec4<bool>(false, false, true, false))), var_0.e.a, !select(select(arg_0.c.a, select(vec2<bool>(var_0.a.a.x, false), vec2<bool>(arg_0.c.a.x, arg_0.c.a.x), arg_0.c.a.x), select(arg_0.c.a, vec2<bool>(arg_0.c.a.x, true), vec2<bool>(false, false))), select(select(arg_0.c.a, arg_0.c.a, arg_0.c.e), vec2<bool>(false, var_0.e.e), true), true));
    let var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(-195f, _wgslsmith_f_op_f32(-1990f + arg_0.c.c)), -984f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.c)))))));
    global0 = array<i32, 9>();
    return var_0.b;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(58309u, u_input.d.x), ~31663u), _wgslsmith_sub_u32(func_3(Struct_2(u_input.e.x, vec2<i32>(-65881i, -16010i), Struct_1(vec2<bool>(false, false), -319f, -677f, global0[_wgslsmith_index_u32(28496u, 9u)], true), vec2<i32>(-17189i, -2147483647i)), vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(1u, 9u)], -1i, global0[_wgslsmith_index_u32(0u, 9u)])), u_input.a) << (abs(~u_input.a) % 32u)), vec2<u32>(4294967295u, abs(77527u)));
    let var_1 = _wgslsmith_sub_i32(-1i, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.e.zzz, u_input.e.xxw), ~vec3<i32>(-1i, global0[_wgslsmith_index_u32(u_input.a, 9u)], -3372i)), u_input.e.yyx ^ vec3<i32>(global0[_wgslsmith_index_u32(101202u, 9u)], global0[_wgslsmith_index_u32(14834u, 9u)], global0[_wgslsmith_index_u32(u_input.d.x, 9u)])), _wgslsmith_sub_i32(~global0[_wgslsmith_index_u32(u_input.d.x >> (1u % 32u), 9u)], 93405i)));
    global1 = false;
    let var_2 = _wgslsmith_mult_u32(global2.x, ~_wgslsmith_mod_u32(9422u, u_input.d.x)) & max(u_input.a, countOneBits(abs(~u_input.a)));
    global0 = array<i32, 9>();
    return Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(-708f, 313f))))) * -840f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-539f + 514f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1060f, 559f)) * _wgslsmith_f_op_f32(128f * 451f)))), reverseBits(0i) & u_input.e.x, all(select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(false, false), vec2<bool>(false, true)), false)));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: bool, arg_3: vec3<f32>) -> f32 {
    global2 = ~countOneBits(firstLeadingBit(~vec4<u32>(40525u, global2.x, 33103u, global2.x) >> (vec4<u32>(u_input.a, global2.x, 48092u, 68695u) % vec4<u32>(32u))));
    var var_0 = func_2();
    var var_1 = Struct_2(_wgslsmith_mult_i32(i32(-1i) * -69167i, arg_0.d.x), ~abs(vec2<i32>(arg_0.b.x, ~var_0.d)), Struct_1(!var_0.a, 1134f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1f)))), -2147483647i, true), arg_0.b);
    var var_2 = Struct_2(0i, ~(~reverseBits(vec2<i32>(-2147483647i, 0i))), var_1.c, min(reverseBits(vec2<i32>(-10144i, u_input.b)), -arg_0.b));
    var var_3 = var_0.e;
    return _wgslsmith_f_op_f32(f32(-1f) * -280f);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = (vec4<u32>(9670u, u_input.a, ~0u, abs(7058u)) & vec4<u32>(global2.x, abs(_wgslsmith_sub_u32(global2.x, u_input.a)), global2.x, _wgslsmith_dot_vec3_u32(~global2.yzx, select(vec3<u32>(0u, u_input.a, global2.x), u_input.d, false)))) << (_wgslsmith_add_vec4_u32(~vec4<u32>(8431u, global2.x, 4684u, 4294967295u), vec4<u32>(~global2.x, 3995u, global2.x, 8862u)) % vec4<u32>(32u));
    let var_0 = -(~(-(vec2<i32>(0i, global0[_wgslsmith_index_u32(1u, 9u)]) | vec2<i32>(u_input.b, -1i))));
    var var_1 = 22159i;
    let var_2 = select(firstTrailingBit(vec3<i32>(_wgslsmith_mult_i32(-1i, 2147483647i), firstLeadingBit(u_input.e.x), u_input.b) ^ -vec3<i32>(var_0.x, u_input.e.x, var_0.x)), ~_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1675i, 10133i, 31062i), min(u_input.e.xwx, vec3<i32>(-50700i, global0[_wgslsmith_index_u32(global2.x, 9u)], -22669i))), vec3<i32>(-34464i, ~(-34679i), 2147483647i >> (u_input.a % 32u))), all(vec3<bool>((var_0.x & var_0.x) != firstTrailingBit(-16919i), any(vec2<bool>(true, true)), false)));
    let var_3 = vec4<i32>(-31666i, max(i32(-1i) * -8513i, var_0.x), max(-20375i, global0[_wgslsmith_index_u32(1u, 9u)]), -var_0.x);
    var var_4 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1216f, 1221f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-153f, 153f), vec2<f32>(1288f, 651f)))))), vec2<f32>(_wgslsmith_f_op_f32(1128f + _wgslsmith_f_op_f32(ceil(1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2072f * _wgslsmith_f_op_f32(func_1(Struct_2(var_0.x, vec2<i32>(-1i, -22073i), Struct_1(vec2<bool>(false, false), 480f, -1689f, 24150i, true), vec2<i32>(var_3.x, var_0.x)), vec3<i32>(3913i, var_2.x, -7084i), false, vec3<f32>(481f, -352f, -1646f)))) + -784f))));
    var var_5 = Struct_1(vec2<bool>(!(!all(vec2<bool>(false, false))), false), var_4.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(func_2().b, 618f) - -610f), firstLeadingBit(1i), true & !any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))));
    global2 = _wgslsmith_mult_vec4_u32(abs(_wgslsmith_add_vec4_u32(~vec4<u32>(1u, u_input.a, global2.x, u_input.d.x), vec4<u32>(global2.x, 30317u, global2.x, 0u))), abs(~vec4<u32>(global2.x, u_input.a, 1u, 42309u))) ^ vec4<u32>(~(global2.x << (56697u % 32u)), 18155u, u_input.a, abs(min(4294967295u, global2.x) >> (reverseBits(16598u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-777f, _wgslsmith_div_f32(var_4.x, -1041f), true))))), reverseBits(-28324i), (max(vec3<u32>(global2.x, 49011u, 48203u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, u_input.a), vec3<u32>(0u, 4294967295u, 28149u))) >> (vec3<u32>(4294967295u, global2.x, _wgslsmith_sub_u32(u_input.a, global2.x)) % vec3<u32>(32u))) << (~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 36963u, 1u) ^ u_input.d, vec3<u32>(u_input.a, 0u, global2.x)) % vec3<u32>(32u)), reverseBits(reverseBits(_wgslsmith_sub_u32(65282u, ~u_input.d.x))));
}

