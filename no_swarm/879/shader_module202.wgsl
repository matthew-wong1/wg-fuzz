struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: bool,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2> = array<i32, 2>(-24902i, 2147483647i);

var<private> global1: bool = true;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = ~(-2147483647i);
    global0 = array<i32, 2>();
    let var_1 = all(vec3<bool>(true, (4294967295u << (_wgslsmith_dot_vec4_u32(vec4<u32>(27469u, u_input.a, u_input.d, u_input.c.x), vec4<u32>(u_input.d, 1u, u_input.d, u_input.c.x)) % 32u)) < u_input.a, true));
    let var_2 = ~vec4<u32>(countOneBits(_wgslsmith_mult_u32(~u_input.c.x, 5699u)), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.d) & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.a, u_input.a), vec3<u32>(u_input.a, 42900u, u_input.a)), _wgslsmith_clamp_u32(u_input.a, 56700u, u_input.c.x) & u_input.d), ~0u, _wgslsmith_sub_u32(u_input.d, u_input.a) | countOneBits(~42751u));
    global1 = var_1;
    return u_input.c.x;
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: vec3<f32>, arg_3: f32) -> Struct_1 {
    var var_0 = countOneBits(~max(countOneBits(vec4<u32>(u_input.d, arg_1.x, 80476u, 1u)), vec4<u32>(4294967295u, 4294967295u, arg_1.x, u_input.d))) >> (_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(u_input.a, arg_1.x, u_input.d, u_input.d)), ~(~vec4<u32>(u_input.c.x, 23031u, 0u, 14496u))), vec4<u32>(40926u, func_3(-2995f), 56089u << (abs(1u) % 32u), countOneBits(u_input.d)), reverseBits(~(~vec4<u32>(29673u, 4294967295u, 0u, 1u)))) % vec4<u32>(32u));
    let var_1 = arg_0;
    let var_2 = !vec3<bool>(!select(arg_2.x <= arg_2.x, !arg_0, true), arg_0, _wgslsmith_add_u32(0u, _wgslsmith_dot_vec3_u32(var_0.yxx, vec3<u32>(3676u, 63710u, 0u))) > 15553u);
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_3 + arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_3)) + _wgslsmith_f_op_f32(f32(-1f) * -271f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-524f, _wgslsmith_f_op_f32(-462f + 1295f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2.x * arg_2.x)))), _wgslsmith_f_op_f32(1217f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_3))))));
    let var_4 = Struct_3(reverseBits(1u), select(abs(-2147483647i), _wgslsmith_dot_vec2_i32(select(u_input.b | u_input.b, ~vec2<i32>(23603i, 24509i), !vec2<bool>(arg_0, arg_0)), _wgslsmith_sub_vec2_i32(firstTrailingBit(u_input.b), _wgslsmith_mult_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(3609u, 2u)], -55832i), vec2<i32>(1i, -65285i)))), !(_wgslsmith_mod_i32(-8726i, u_input.b.x) < global0[_wgslsmith_index_u32(~arg_1.x, 2u)])), countOneBits(~1i) < ~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(arg_1.x, 4294967295u), _wgslsmith_mult_u32(17049u, var_0.x)), 2u)], ~_wgslsmith_mult_vec2_u32(~vec2<u32>(1u, 4294967295u) >> ((var_0.xx | vec2<u32>(1u, var_0.x)) % vec2<u32>(32u)), ~min(arg_1.zx, vec2<u32>(16371u, 4294967295u))), vec2<bool>(select(true, all(vec2<bool>(true, var_1)), select(any(var_2.zz), var_1, false)), !var_1));
    return Struct_1(_wgslsmith_add_i32(_wgslsmith_sub_i32(i32(-1i) * -231i, _wgslsmith_mult_i32(-2147483647i, global0[_wgslsmith_index_u32(arg_1.x, 2u)]) << (var_0.x % 32u)), -1i), var_2.zx);
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = func_2(true || ((_wgslsmith_dot_vec2_i32(vec2<i32>(34099i, global0[_wgslsmith_index_u32(arg_0, 2u)]), vec2<i32>(-3034i, -7486i)) >= u_input.e) & true), vec3<u32>(0u, 103230u, arg_0), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(step(-1467f, -973f)), -210f, _wgslsmith_f_op_f32(444f + 677f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-672f, 797f, 654f) - vec3<f32>(-405f, -1000f, -207f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1340f, -1544f) + -1658f) - _wgslsmith_f_op_f32(f32(-1f) * -654f)))));
    global1 = false;
    let var_1 = select(vec3<i32>(var_0.a, -2147483647i, countOneBits(u_input.b.x)), ~(vec3<i32>(-1i) * -firstTrailingBit(vec3<i32>(16397i, u_input.e, 23973i))), func_2(true, abs(vec3<u32>(62371u, 5865u, 0u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(758f, -1942f, -820f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1914f)) - -1238f)).b.x & !(!(28821u >= arg_0)));
    let var_2 = Struct_3(~firstLeadingBit(u_input.a), func_2(false, firstLeadingBit(vec3<u32>(~arg_0, u_input.c.x, 33560u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1154f, 1005f, 485f)))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-170f, 327f, -243f))))), 1000f).a, all(select(vec4<bool>(all(vec3<bool>(true, false, var_0.b.x)), all(vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x)), true, true), !select(vec4<bool>(true, var_0.b.x, var_0.b.x, false), vec4<bool>(true, var_0.b.x, false, false), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, false)), !(!vec4<bool>(var_0.b.x, true, false, false)))), reverseBits(vec2<u32>(_wgslsmith_clamp_u32(u_input.c.x, firstTrailingBit(u_input.d), 1u), u_input.d)), vec2<bool>(false, all(select(vec3<bool>(false, false, var_0.b.x), select(vec3<bool>(false, false, var_0.b.x), vec3<bool>(false, var_0.b.x, var_0.b.x), vec3<bool>(true, var_0.b.x, false)), select(vec3<bool>(false, false, var_0.b.x), vec3<bool>(var_0.b.x, var_0.b.x, true), false)))));
    let var_3 = vec2<i32>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_2.d.x, ~_wgslsmith_add_u32(4294967295u, ~u_input.c.x)), 2u)], 0i);
    return select(true, var_0.b.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a & 4294967295u;
    var var_1 = true;
    global0 = array<i32, 2>();
    global0 = array<i32, 2>();
    global1 = !func_1(_wgslsmith_sub_u32(~83617u, ~(36841u | u_input.c.x)));
    global0 = array<i32, 2>();
    var var_2 = Struct_2(firstLeadingBit(~u_input.b.x));
    let var_3 = Struct_2(_wgslsmith_mod_i32(-_wgslsmith_div_i32(var_2.a & 0i, -u_input.b.x), (~(-43577i) >> (1u % 32u)) << (firstLeadingBit(94072u << (var_0 % 32u)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, ~_wgslsmith_mod_u32(~var_0 & ~var_0, ~var_0 & (u_input.a & 1132u)), -1i, u_input.e, func_2(any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false)), countOneBits(vec3<u32>(u_input.c.x, 43575u, var_0)) & select(min(vec3<u32>(var_0, 5371u, u_input.d), vec3<u32>(18350u, var_0, 4294967295u)), vec3<u32>(1u, var_0, u_input.d), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1401f, 1055f, -1708f), vec3<f32>(719f, 350f, -465f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(629f, -994f))) * _wgslsmith_div_f32(382f, _wgslsmith_f_op_f32(-321f + 1000f)))).a);
}

