struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1u, 47022u, 4294967295u);

var<private> global1: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec3<i32>(0i, 1i, i32(-2147483648)), vec2<i32>(-23122i, 33088i), vec3<u32>(43066u, 60017u, 380u), 0u, -693f), Struct_1(vec3<i32>(-1i, 56222i, 2147483647i), vec2<i32>(-1208i, 28733i), vec3<u32>(30973u, 0u, 1u), 1u, 1000f), Struct_1(vec3<i32>(0i, 2147483647i, 1i), vec2<i32>(53920i, 2147483647i), vec3<u32>(11149u, 44211u, 1u), 0u, -1455f), Struct_1(vec3<i32>(54497i, 1310i, 2147483647i), vec2<i32>(12901i, -914i), vec3<u32>(6716u, 1u, 24646u), 4294967295u, 359f), Struct_1(vec3<i32>(1i, -27785i, 0i), vec2<i32>(-19700i, 2147483647i), vec3<u32>(19713u, 0u, 45881u), 1u, -972f));

var<private> global2: array<vec2<bool>, 18> = array<vec2<bool>, 18>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global3: vec3<f32> = vec3<f32>(-364f, 2350f, -1787f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> u32 {
    return 60606u;
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = ~_wgslsmith_mult_vec4_u32(~_wgslsmith_add_vec4_u32(~vec4<u32>(global0.x, arg_0.c.x, 0u, 38571u), max(vec4<u32>(0u, 57008u, global0.x, 0u), vec4<u32>(0u, 0u, 73530u, 117460u))), min(vec4<u32>(arg_0.d, 0u, arg_0.d, arg_0.d) & vec4<u32>(14683u, 4294967295u, arg_0.c.x, 12443u), vec4<u32>(26600u, global0.x, global0.x, u_input.a) << (vec4<u32>(34483u, 70886u, 1u, 6348u) % vec4<u32>(32u))) & ~_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, 1u, u_input.a, 122243u), vec4<u32>(u_input.a, u_input.a, arg_0.d, 0u)));
    var var_1 = !(!select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), false)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), false), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true)))));
    var var_2 = Struct_1(vec3<i32>(min(_wgslsmith_mult_i32(u_input.c.x, u_input.c.x), -2147483647i) ^ -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.x, -1i), u_input.c.zy), -2022i, _wgslsmith_div_i32(-arg_0.b.x, max(36220i, -31719i >> (var_0.x % 32u)))), firstLeadingBit(_wgslsmith_mod_vec2_i32(arg_0.b, -vec2<i32>(u_input.e, 17203i)) >> ((_wgslsmith_add_vec2_u32(global0.yz, var_0.zy) >> (~global0.yx % vec2<u32>(32u))) % vec2<u32>(32u))), select(~var_0.yzy & arg_0.c, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 1u, ~var_0.x), countOneBits(var_0.xxz | var_0.zzw)), true), _wgslsmith_mult_u32(53306u, reverseBits(~global0.x | u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1311f + _wgslsmith_f_op_f32(abs(global3.x))) + _wgslsmith_f_op_f32(step(1000f, -132f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-248f - _wgslsmith_f_op_f32(floor(838f))))));
    global3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.e - -880f)), -348f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(exp2(var_2.e)), _wgslsmith_div_f32(arg_0.e, global3.x), 150f)))));
    var_1 = vec4<bool>(all(vec4<bool>(any(!vec3<bool>(var_1.x, var_1.x, var_1.x)), !var_1.x, !(!var_1.x), any(!vec4<bool>(true, var_1.x, var_1.x, false)))), true, true, true);
    return var_0.x;
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    global2 = array<vec2<bool>, 18>();
    let var_0 = u_input.c.x;
    let var_1 = arg_0.x;
    let var_2 = Struct_1(u_input.d.ywz, vec2<i32>(var_0, _wgslsmith_add_i32(min(25354i, -44692i), ~(~u_input.c.x))), ~vec3<u32>(func_2(), 34507u, global0.x), func_3(global1[_wgslsmith_index_u32(u_input.a, 5u)]), 1000f);
    var var_3 = Struct_1(vec3<i32>(_wgslsmith_div_i32((var_0 & -72380i) | var_0, -var_2.b.x), var_2.a.x, u_input.e), max(select(-vec2<i32>(-17118i, var_2.a.x), var_2.a.zx, true) ^ u_input.d.xw, var_2.b), vec3<u32>(countOneBits(~var_2.d), func_2(), ~(~39486u)) | ((vec3<u32>(u_input.a, global0.x, 0u) >> ((vec3<u32>(4294967295u, u_input.a, u_input.a) >> (vec3<u32>(u_input.a, global0.x, 0u) % vec3<u32>(32u))) % vec3<u32>(32u))) << (var_2.c % vec3<u32>(32u))), 1u, 1000f);
    return global1[_wgslsmith_index_u32(firstLeadingBit(0u), 5u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global3.zz);
    var var_1 = vec3<bool>(-1i == ~_wgslsmith_mult_i32(u_input.c.x & 0i, _wgslsmith_mod_i32(u_input.c.x, 52553i)), false, abs(48065u) == _wgslsmith_add_u32(23793u, _wgslsmith_mod_u32(0u << (u_input.a % 32u), var_0.c.x)));
    let var_2 = Struct_1(_wgslsmith_sub_vec3_i32(u_input.c.yyw, select(var_0.a, ~var_0.a, !var_1.x) | -vec3<i32>(-12i, u_input.b, u_input.d.x)), abs(vec2<i32>(u_input.c.x, _wgslsmith_sub_i32(~(-2169i), _wgslsmith_mod_i32(-17136i, u_input.e)))), var_0.c, 39757u, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(275f))))))));
    var var_3 = ~(~(~vec4<i32>(~u_input.b, _wgslsmith_clamp_i32(var_2.a.x, u_input.b, 1i), countOneBits(u_input.c.x), func_1(global3.zy).a.x)));
    let var_4 = !vec4<bool>(!var_1.x && var_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d, 9384u), global0.zz) == 1u, var_1.x, 4294967295u != u_input.a);
    var_0 = global1[_wgslsmith_index_u32(~(~87742u), 5u)];
    var var_5 = func_1(vec2<f32>(_wgslsmith_f_op_f32(sign(var_2.e)), var_2.e));
    var var_6 = reverseBits(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(abs(~var_5.a), firstTrailingBit(var_3.wzz) & _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 34840i, var_3.x), vec3<i32>(u_input.d.x, 0i, -2147483647i), var_5.a)), var_3.zxy));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(vec2<f32>(-1043f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3.x, var_5.e))))).c.yy, global3.xy, _wgslsmith_div_i32(-8484i, _wgslsmith_div_i32(~1i, var_3.x >> (13643u % 32u))), 434f);
}

