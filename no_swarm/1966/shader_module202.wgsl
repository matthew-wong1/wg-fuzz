struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec3<u32>,
    d: i32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(-1000f, vec2<bool>(true, false), vec3<u32>(4294967295u, 108753u, 4294967295u), 19675i, vec2<u32>(1u, 0u)), Struct_1(1325f, vec2<bool>(false, true), vec3<u32>(0u, 0u, 28879u), -34337i, vec2<u32>(4294967295u, 1u)), Struct_1(337f, vec2<bool>(true, false), vec3<u32>(61156u, 0u, 1u), 2147483647i, vec2<u32>(93003u, 48299u)), Struct_1(-1000f, vec2<bool>(true, true), vec3<u32>(44723u, 20512u, 24088u), 1i, vec2<u32>(0u, 1u)), Struct_1(452f, vec2<bool>(true, true), vec3<u32>(10272u, 5939u, 38632u), 1i, vec2<u32>(9880u, 25112u)), Struct_1(-329f, vec2<bool>(true, false), vec3<u32>(42843u, 1u, 4294967295u), i32(-2147483648), vec2<u32>(37828u, 0u)), Struct_1(294f, vec2<bool>(false, false), vec3<u32>(66011u, 0u, 0u), 48224i, vec2<u32>(1u, 4294967295u)), Struct_1(-377f, vec2<bool>(false, false), vec3<u32>(22642u, 1u, 4294967295u), 0i, vec2<u32>(4294967295u, 4294967295u)), Struct_1(601f, vec2<bool>(true, true), vec3<u32>(1u, 108005u, 19091u), 0i, vec2<u32>(33923u, 0u)), Struct_1(162f, vec2<bool>(false, true), vec3<u32>(0u, 18709u, 0u), 2147483647i, vec2<u32>(1u, 18676u)), Struct_1(-235f, vec2<bool>(true, true), vec3<u32>(32865u, 35013u, 4294967295u), 47401i, vec2<u32>(41932u, 22774u)), Struct_1(-1000f, vec2<bool>(true, true), vec3<u32>(36537u, 9132u, 40298u), 0i, vec2<u32>(0u, 73155u)), Struct_1(1601f, vec2<bool>(false, true), vec3<u32>(45883u, 1u, 1u), 0i, vec2<u32>(47791u, 8325u)), Struct_1(1280f, vec2<bool>(true, false), vec3<u32>(4294967295u, 16131u, 0u), -1i, vec2<u32>(0u, 8248u)), Struct_1(-1061f, vec2<bool>(false, true), vec3<u32>(11974u, 1u, 13130u), -6774i, vec2<u32>(5911u, 14344u)), Struct_1(620f, vec2<bool>(true, false), vec3<u32>(9073u, 0u, 24634u), 23225i, vec2<u32>(1u, 4294967295u)));

var<private> global1: i32 = 54817i;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1411f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-700f)))))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-743f, -1054f)) - var_0.x), -118f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-740f, var_0.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-553f, _wgslsmith_f_op_f32(-244f - -2228f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(768f))))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1440f, arg_0.a)))))), _wgslsmith_f_op_f32(f32(-1f) * -1918f))));
    let var_2 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-642f, 395f, _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_vec3_f32(floor(var_1.wxw))));
    global1 = 15504i;
    let var_3 = global0[_wgslsmith_index_u32(max(firstLeadingBit(countOneBits(~arg_0.e.x)), arg_0.c.x), 16u)];
    return arg_0.c.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>) -> bool {
    let var_0 = arg_1.c;
    let var_1 = ~vec3<u32>(~countOneBits(22659u), countOneBits(15832u), ~countOneBits(var_0.x & 14300u));
    global1 = u_input.b;
    let var_2 = vec4<u32>(1u, arg_0.c.x, 0u, func_3(global0[_wgslsmith_index_u32(arg_1.e.x, 16u)]));
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1628f, 388f));
    return !arg_0.b.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: f32) -> f32 {
    var var_0 = select(true, true, func_4(Struct_1(arg_2, select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), all(vec2<bool>(false, false))), _wgslsmith_div_vec3_u32(~vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(1u, 1u, 1u)), u_input.c, ~vec2<u32>(1u, 1u)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 4294967295u, 27142u, 1u), ~vec4<u32>(22164u, 0u, 19981u, 19363u)), func_3(global0[_wgslsmith_index_u32(~3193u, 16u)])), 16u)], _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, u_input.a), vec2<i32>(-27333i, u_input.a)), vec2<i32>(u_input.c, u_input.a)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 7313i), vec2<i32>(-14177i, -28494i)))));
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.x * 467f))), select(vec2<bool>(!any(vec2<bool>(true, false)), all(vec2<bool>(true, true))), vec2<bool>(true, true), true), vec3<u32>(abs(firstTrailingBit(1u)), _wgslsmith_dot_vec3_u32(~select(vec3<u32>(4294967295u, 15866u, 81173u), vec3<u32>(1u, 4294967295u, 31889u), vec3<bool>(true, true, false)), vec3<u32>(countOneBits(4294967295u), ~17369u, _wgslsmith_clamp_u32(1u, 127948u, 1u))), ~35957u), i32(-1i) * -2147483647i, vec2<u32>(0u, ~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 43214u), vec2<u32>(4294967295u, 88758u)), 4294967295u)));
    var var_2 = !select(vec3<bool>(false, var_1.b.x, true), vec3<bool>(var_1.b.x, any(vec3<bool>(true, true, false)), any(select(var_1.b, vec2<bool>(true, true), var_1.b.x))), select(select(vec3<bool>(false, var_1.b.x, true), !vec3<bool>(var_1.b.x, false, var_1.b.x), var_1.b.x || var_1.b.x), !select(vec3<bool>(false, var_1.b.x, false), vec3<bool>(true, false, var_1.b.x), var_1.b.x), select(vec3<bool>(false, true, var_1.b.x), vec3<bool>(var_1.b.x, true, var_1.b.x), !vec3<bool>(var_1.b.x, var_1.b.x, true))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1), 145f, true)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1089f, 1297f)))));
}

fn func_5(arg_0: Struct_1) -> bool {
    var var_0 = vec3<u32>(arg_0.e.x, arg_0.c.x, arg_0.c.x);
    var var_1 = Struct_1(_wgslsmith_div_f32(1665f, arg_0.a), !select(vec2<bool>(true, all(vec3<bool>(true, arg_0.b.x, true))), select(select(vec2<bool>(arg_0.b.x, arg_0.b.x), arg_0.b, arg_0.b), !vec2<bool>(false, arg_0.b.x), true), select(vec2<bool>(arg_0.b.x, false), vec2<bool>(true, false), vec2<bool>(true, true))), firstTrailingBit(~arg_0.c), 0i, arg_0.e);
    var var_2 = arg_0;
    global0 = array<Struct_1, 16>();
    var_0 = _wgslsmith_clamp_vec3_u32(~var_2.c, min(~((var_1.c | vec3<u32>(4294967295u, 51207u, var_0.x)) & _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, 13886u, var_0.x), vec3<u32>(var_0.x, 29544u, 0u))), vec3<u32>(var_2.e.x, ~(~var_0.x), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(var_2.c, vec3<u32>(0u, 45406u, var_0.x)), _wgslsmith_mult_vec3_u32(var_1.c, var_1.c)))), ~firstLeadingBit(firstTrailingBit(vec3<u32>(4294967295u, 50182u, 22903u))));
    return !var_2.b.x;
}

fn func_1() -> Struct_1 {
    global1 = 1i;
    global0 = array<Struct_1, 16>();
    var var_0 = select(select(vec2<bool>(true, true), vec2<bool>(true, true), func_5(Struct_1(_wgslsmith_f_op_f32(func_2(vec3<f32>(877f, 147f, 807f), -542f, 1000f)), vec2<bool>(true, true), vec3<u32>(1u, 1u, 1u), max(2147483647i, u_input.b), vec2<u32>(17086u, 17994u)))), !(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), true)), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), true), -u_input.a > -1i));
    let var_1 = vec2<u32>(~(~(~56918u) >> (min(_wgslsmith_mod_u32(22956u, 1u), ~0u) % 32u)), _wgslsmith_add_u32(func_3(global0[_wgslsmith_index_u32(countOneBits(firstLeadingBit(32975u)), 16u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(~19784u, ~1u, reverseBits(44240u), ~0u), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(63612u, 33869u, 50453u, 4294967295u), vec4<u32>(4294967295u, 102028u, 29880u, 37305u)), vec4<u32>(1u, 1u, 1u, 1u)))));
    global1 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, i32(-1i) * -35962i, countOneBits(u_input.c)), vec3<i32>(-(~(-14797i)), u_input.a, u_input.b)), u_input.b);
    return Struct_1(2442f, select(!(!(!vec2<bool>(false, var_0.x))), !select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, false), vec2<bool>(false, var_0.x)), !vec2<bool>(false, var_0.x)), vec2<bool>(var_0.x, any(!vec3<bool>(true, var_0.x, false)))), ~select(~max(vec3<u32>(56691u, 23775u, 15430u), vec3<u32>(var_1.x, 4294967295u, 92191u)), ~vec3<u32>(var_1.x, var_1.x, 0u), true), u_input.b, vec2<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 0u), ~var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = ~1u == var_0.c.x;
    var var_2 = vec2<bool>(any(func_1().b), all(!vec2<bool>(var_0.b.x, false)));
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(abs(1320f))));
    var_3 = _wgslsmith_f_op_f32(floor(1f));
    var var_4 = vec4<bool>(false, any(select(select(!vec3<bool>(var_0.b.x, var_0.b.x, false), !vec3<bool>(var_0.b.x, var_0.b.x, true), any(vec3<bool>(true, var_0.b.x, true))), select(select(vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(var_2.x, var_2.x, var_0.b.x), vec3<bool>(var_0.b.x, var_0.b.x, false)), vec3<bool>(false, true, var_2.x), false), vec3<bool>(true, true, true))), !any(vec3<bool>(var_0.a >= -356f, !var_0.b.x, var_0.b.x)), var_2.x);
    var_1 = any(func_1().b);
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(-2147483647i, max(1i, ~var_0.d)), firstTrailingBit(-(~(-40192i))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a))), var_0.c.x, vec3<f32>(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1000f, var_0.a)))))));
}

