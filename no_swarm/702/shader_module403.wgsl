struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<f32, 26> = array<f32, 26>(-1117f, 517f, 1000f, -2586f, 748f, -1387f, -1006f, -510f, 153f, -314f, -788f, -1573f, -198f, -910f, 1000f, 826f, 137f, 951f, -837f, -347f, 2027f, -1049f, -322f, -192f, 579f, -1361f);

var<private> global2: Struct_4 = Struct_4(vec3<i32>(-5227i, 0i, -39981i));

var<private> global3: Struct_2 = Struct_2(33602u, -23300i, vec2<f32>(-285f, -175f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2() -> bool {
    let var_0 = vec2<u32>(firstTrailingBit(1u), 0u);
    global3 = Struct_2(_wgslsmith_sub_u32(~u_input.a, 6382u & _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.x, u_input.a, 0u), vec4<u32>(u_input.a, 4294967295u, var_0.x, 12820u))), global2.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.c - global3.c)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-141f, 587f)) + _wgslsmith_f_op_vec2_f32(global3.c * vec2<f32>(global1[_wgslsmith_index_u32(67884u, 26u)], -1652f))), global3.c)));
    return true;
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: u32, arg_3: vec2<f32>) -> bool {
    global2 = Struct_4(max(~reverseBits(firstLeadingBit(u_input.b.xzz)), abs(-vec3<i32>(17974i, arg_0.a.x, 24322i))));
    global2 = arg_0;
    var var_0 = Struct_3(vec4<bool>(1u <= _wgslsmith_sub_u32(arg_1, 4294967295u << (arg_2 % 32u)), any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), false, false), vec3<i32>(global2.a.x, arg_0.a.x, (arg_0.a.x | 2147483647i) >> (_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.a, 52335u, 6160u)), vec3<u32>(arg_2, arg_2, 1u)) % 32u)), u_input.b, false, Struct_1(global3.a != _wgslsmith_clamp_u32(global3.a, _wgslsmith_clamp_u32(arg_1, 0u, 42176u), arg_1), ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2, 5211u, u_input.a), vec3<u32>(0u, arg_2, arg_2), vec3<u32>(u_input.a, 0u, global3.a)))));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(304f))));
    let var_2 = var_0.e.b;
    return all(!(!(!(!vec4<bool>(var_0.e.a, false, var_0.a.x, var_0.e.a)))));
}

fn func_1() -> i32 {
    var var_0 = !select(vec3<bool>(false, true && func_2(), func_3(Struct_4(vec3<i32>(2147483647i, -1i, global2.a.x)), global3.a, ~23476u, _wgslsmith_f_op_vec2_f32(select(global3.c, global3.c, vec2<bool>(false, false))))), !(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-661f * global3.c.x) * global3.c.x) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global3.a, 26u)])));
    var var_1 = Struct_4(global2.a);
    global2 = Struct_4(_wgslsmith_mult_vec3_i32(~(-vec3<i32>(global2.a.x, var_1.a.x, -1i)), var_1.a));
    var var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.c.x, global1[_wgslsmith_index_u32(global3.a, 26u)]) * global3.c.x)), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(global3.a, 26u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -430f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(195f - global3.c.x), 1f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.c.x, -1000f, global3.c.x), vec3<f32>(-537f, global1[_wgslsmith_index_u32(u_input.a, 26u)], global3.c.x), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, var_0.x, false), false))), vec3<f32>(_wgslsmith_f_op_f32(global3.c.x * -793f), _wgslsmith_f_op_f32(1000f - global3.c.x), 1396f))));
    global3 = Struct_2(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(4294967295u, u_input.a, global3.a)), ~vec3<u32>(4294967295u, 61019u, 36505u)) >> (40919u % 32u), ~(4294967295u >> (1u % 32u))), 55705i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global3.c, _wgslsmith_f_op_vec2_f32(global3.c - vec2<f32>(var_2.x, var_2.x))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-607f, global3.c.x) + vec2<f32>(var_2.x, global1[_wgslsmith_index_u32(7177u, 26u)])))))));
    return -(i32(-1i) * -2147483647i);
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_4, arg_3: vec2<f32>) -> Struct_5 {
    var var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(-global3.b, _wgslsmith_add_i32(2147483647i, u_input.b.x), -22034i, firstTrailingBit(1i)), ~select(countOneBits(u_input.b), u_input.b, !(!vec4<bool>(false, arg_1, arg_1, arg_1))));
    var var_1 = Struct_2(1u, arg_2.a.x, arg_3);
    let var_2 = 2147483647i;
    var var_3 = Struct_3(select(!select(!vec4<bool>(arg_1, true, true, false), vec4<bool>(arg_1, false, arg_1, true), !vec4<bool>(false, arg_1, false, false)), !(!(!vec4<bool>(true, arg_1, arg_1, arg_1))), vec4<bool>(false, func_2(), arg_1, any(select(vec4<bool>(false, true, arg_1, true), vec4<bool>(arg_1, arg_1, true, arg_1), true)))), -countOneBits(select(vec3<i32>(var_1.b, var_0.x, 73900i), ~var_0.yyy, arg_1)), -u_input.b, var_1.b > 6275i, Struct_1(false, vec3<u32>(u_input.a, ~var_1.a, 4294967295u)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(u_input.a >> (4294967295u % 32u), 26u)])))) < 1615f;
    return Struct_5(func_2());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(~max(abs(~u_input.b.yx), vec2<i32>(_wgslsmith_mod_i32(0i, 429i), func_1())), false, Struct_4(~vec3<i32>(_wgslsmith_sub_i32(-42344i, 17058i), u_input.b.x, u_input.b.x & global3.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-944f)), global3.c.x), -219f) - global3.c));
    var var_1 = false;
    var_1 = any(select(!select(vec4<bool>(true, var_0.a, var_0.a, var_0.a), vec4<bool>(true, var_0.a, var_0.a, var_0.a), var_0.a), vec4<bool>(var_0.a, func_3(Struct_4(global2.a), 4294967295u, u_input.a, vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 26u)], global1[_wgslsmith_index_u32(3597u, 26u)])), var_0.a || var_0.a, !var_0.a), vec4<bool>(true, true, !var_0.a, var_0.a | var_0.a))) & false;
    let var_2 = Struct_5(any(select(!select(vec3<bool>(true, false, false), vec3<bool>(var_0.a, true, var_0.a), vec3<bool>(var_0.a, false, var_0.a)), !(!vec3<bool>(var_0.a, true, true)), !select(vec3<bool>(var_0.a, false, false), vec3<bool>(false, var_0.a, true), true))));
    let var_3 = -1000f >= global1[_wgslsmith_index_u32(countOneBits(~(u_input.a & global3.a)), 26u)];
    var var_4 = Struct_2(countOneBits(max(global3.a, ~global3.a)), abs(_wgslsmith_sub_i32(u_input.b.x, _wgslsmith_dot_vec3_i32(~global2.a, max(u_input.b.xyy, global2.a)))), global3.c);
    let var_5 = !select(select(vec4<bool>(!var_0.a, var_0.a, all(vec2<bool>(var_0.a, var_3)), var_3 & true), !select(vec4<bool>(var_2.a, var_0.a, false, var_0.a), vec4<bool>(var_2.a, var_3, var_0.a, true), vec4<bool>(false, var_2.a, var_0.a, var_3)), var_2.a), select(!(!vec4<bool>(var_3, var_0.a, var_2.a, false)), !vec4<bool>(false, true, var_3, var_3), !(!vec4<bool>(var_0.a, var_2.a, false, var_2.a))), select(vec4<bool>(any(vec3<bool>(true, var_0.a, var_0.a)), var_2.a, true, true), vec4<bool>(var_3, var_0.a, true, var_3), vec4<bool>(false, true, var_3, false)));
    global3 = Struct_2(u_input.a, _wgslsmith_div_i32(1i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(u_input.b << (vec4<u32>(4294967295u, global3.a, 7068u, u_input.a) % vec4<u32>(32u)), abs(u_input.b)), u_input.b)), var_4.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_4.a, 1524u << (var_4.a % 32u), 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global3.a), vec2<u32>(1u, 17162u))), vec4<u32>(global3.a, ~7966u, 1621u, reverseBits(u_input.a)))), _wgslsmith_sub_vec3_u32(~(max(vec3<u32>(0u, 1u, 0u), vec3<u32>(var_4.a, 4294967295u, 0u)) >> (vec3<u32>(u_input.a, global3.a, 4294967295u) % vec3<u32>(32u))), ~countOneBits(reverseBits(vec3<u32>(global3.a, u_input.a, var_4.a)))), u_input.a, global3.c.x);
}

