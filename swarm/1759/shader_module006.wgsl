struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: u32,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(vec2<i32>(66721i, -30150i), vec4<i32>(17652i, 28626i, -32844i, 2147483647i), -1076f, 22377u), Struct_2(vec2<i32>(1i, 30751i), vec4<i32>(i32(-2147483648), 0i, 2147483647i, 59370i), -264f, 4294967295u), Struct_2(vec2<i32>(3667i, 14228i), vec4<i32>(-23911i, 2147483647i, i32(-2147483648), 51563i), -672f, 0u), Struct_2(vec2<i32>(-92756i, 0i), vec4<i32>(-1i, 16659i, 1i, 17205i), -1436f, 0u), Struct_2(vec2<i32>(46497i, 35599i), vec4<i32>(-41817i, 2147483647i, -1984i, -50092i), 568f, 8866u), Struct_2(vec2<i32>(-1i, 30558i), vec4<i32>(-37092i, -1i, -34489i, -1i), -992f, 18272u), Struct_2(vec2<i32>(-17005i, 41348i), vec4<i32>(2147483647i, 2147483647i, 2147483647i, 2147483647i), -1832f, 4294967295u), Struct_2(vec2<i32>(i32(-2147483648), 27965i), vec4<i32>(2147483647i, 0i, -1i, 2147483647i), -857f, 15640u), Struct_2(vec2<i32>(i32(-2147483648), 28620i), vec4<i32>(1i, i32(-2147483648), 0i, 1i), -1715f, 70058u), Struct_2(vec2<i32>(-74059i, 31821i), vec4<i32>(1i, 66413i, 0i, 2325i), 1000f, 1u), Struct_2(vec2<i32>(5024i, i32(-2147483648)), vec4<i32>(-90468i, i32(-2147483648), 0i, -7163i), -105f, 0u), Struct_2(vec2<i32>(-93368i, 9855i), vec4<i32>(2147483647i, -15430i, i32(-2147483648), -4525i), 1343f, 1u), Struct_2(vec2<i32>(-1i, -1i), vec4<i32>(6861i, 1i, i32(-2147483648), 2147483647i), -1342f, 0u), Struct_2(vec2<i32>(0i, 19163i), vec4<i32>(i32(-2147483648), -24298i, 1i, -25949i), -1067f, 36989u), Struct_2(vec2<i32>(2147483647i, 0i), vec4<i32>(58940i, 0i, i32(-2147483648), i32(-2147483648)), -995f, 36695u), Struct_2(vec2<i32>(0i, 1i), vec4<i32>(0i, -23380i, 21078i, -28761i), -607f, 46612u), Struct_2(vec2<i32>(2147483647i, i32(-2147483648)), vec4<i32>(-1700i, -17371i, 1i, 0i), 1144f, 43738u), Struct_2(vec2<i32>(-33504i, 11918i), vec4<i32>(-24899i, 2147483647i, 2147483647i, 1i), -514f, 1u), Struct_2(vec2<i32>(50361i, -2720i), vec4<i32>(-67375i, 15798i, -4486i, i32(-2147483648)), 302f, 103533u), Struct_2(vec2<i32>(-1i, 2147483647i), vec4<i32>(0i, 2147483647i, -1i, -4795i), -3171f, 4294967295u), Struct_2(vec2<i32>(-1i, i32(-2147483648)), vec4<i32>(0i, 76895i, i32(-2147483648), -1i), 730f, 6909u), Struct_2(vec2<i32>(31317i, -21758i), vec4<i32>(i32(-2147483648), 13364i, 49630i, 9526i), 664f, 42u), Struct_2(vec2<i32>(2147483647i, 28517i), vec4<i32>(0i, -543i, -34145i, 1i), -1528f, 0u), Struct_2(vec2<i32>(1364i, 5553i), vec4<i32>(-18936i, 26788i, -27906i, 42158i), -498f, 59512u), Struct_2(vec2<i32>(2147483647i, 1i), vec4<i32>(-7513i, -30606i, i32(-2147483648), i32(-2147483648)), 359f, 0u), Struct_2(vec2<i32>(-5436i, 0i), vec4<i32>(17513i, 32127i, -36294i, -7402i), -1130f, 4215u), Struct_2(vec2<i32>(i32(-2147483648), 1i), vec4<i32>(0i, -1i, 2147483647i, 1i), -630f, 4294967295u), Struct_2(vec2<i32>(-51542i, -52676i), vec4<i32>(2147483647i, -25426i, -10805i, -16290i), -190f, 19151u));

var<private> global2: u32 = 0u;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: i32) -> u32 {
    let var_0 = 357f;
    global1 = array<Struct_2, 28>();
    var var_1 = Struct_4(Struct_1(1u, !vec3<bool>(all(arg_0.b.yz), arg_0.b.x & true, arg_0.b.x), ~(_wgslsmith_clamp_u32(1u, arg_0.a, arg_0.a) ^ arg_0.a), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(247f)), 2168f), arg_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.d.x)))), -select(-38261i, 0i, arg_0.b.x) | _wgslsmith_dot_vec2_i32(-u_input.a, ~vec2<i32>(arg_0.e, -1i))));
    let var_2 = 100366u;
    var var_3 = vec2<f32>(-688f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1192f) * _wgslsmith_f_op_f32(931f - 144f)))) * -376f));
    return _wgslsmith_div_u32(~_wgslsmith_clamp_u32(~1u, 0u, var_2 | var_1.a.a) & 0u, 14391u);
}

fn func_2(arg_0: vec3<i32>, arg_1: u32) -> Struct_3 {
    var var_0 = global1[_wgslsmith_index_u32(45663u, 28u)];
    let var_1 = _wgslsmith_f_op_f32(-1f);
    var_0 = global1[_wgslsmith_index_u32(0u, 28u)];
    let var_2 = Struct_1(_wgslsmith_div_u32(var_0.d, abs(func_3(Struct_1(var_0.d, vec3<bool>(true, true, true), 1u, vec3<f32>(-251f, 1295f, 1033f), arg_0.x), var_0.b << (vec4<u32>(13459u, 6149u, 13728u, 0u) % vec4<u32>(32u)), u_input.a.x))), vec3<bool>(true, true, true), abs(_wgslsmith_mod_u32(~74686u, firstLeadingBit(var_0.d))) >> (reverseBits(4294967295u) % 32u), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_0.c, -435f) + vec3<f32>(var_1, var_0.c, var_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 1883f, -140f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1, 1000f, -314f))))))), _wgslsmith_div_i32(_wgslsmith_clamp_i32(-u_input.a.x, -2147483647i, var_0.b.x), var_0.a.x));
    global2 = _wgslsmith_div_u32(~arg_1, var_0.d);
    return Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(vec2<u32>(50171u, var_0.d) & _wgslsmith_sub_vec2_u32(vec2<u32>(69448u, arg_1), vec2<u32>(57199u, 0u))), ~firstTrailingBit(~vec2<u32>(var_0.d, var_2.a))), 28u)]);
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: vec2<f32>, arg_3: vec2<u32>) -> Struct_3 {
    return func_2(vec3<i32>(1i, 1i, -(-2147483647i & u_input.a.x) ^ _wgslsmith_clamp_i32(firstLeadingBit(1i), 2147483647i, arg_0.x)), ~(~(~139130u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(firstTrailingBit(reverseBits(select(vec3<i32>(-2147483647i, u_input.a.x, -1i), vec3<i32>(u_input.a.x, 36701i, -1i), true)) | _wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), ~vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x))), 1u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-593f, 601f) + vec2<f32>(172f, 850f)))))), select(vec2<u32>(~4294967295u, 1u), ~vec2<u32>(_wgslsmith_sub_u32(37615u, 1u), ~0u), vec2<bool>(u_input.a.x >= firstLeadingBit(u_input.a.x), 1i < _wgslsmith_mod_i32(u_input.a.x, u_input.a.x))));
    var var_1 = Struct_4(Struct_1(var_0.a.d, select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), false), 18663u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.c, -555f, var_0.a.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-320f, var_0.a.c, var_0.a.c)), vec3<bool>(false, false, true))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-371f, -773f, 1205f), vec3<f32>(-630f, -720f, var_0.a.c))))), ~(~48302i)));
    global2 = ~var_1.a.a;
    var var_2 = Struct_1(1u, var_1.a.b, 1u, var_1.a.d, var_1.a.e);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1678f + _wgslsmith_f_op_f32(-var_1.a.d.x)) - var_1.a.d.x);
    global0 = _wgslsmith_f_op_f32(-260f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(853f * var_2.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.c)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.c))));
    let var_4 = Struct_4(Struct_1(var_1.a.c, var_1.a.b, ~var_2.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.d.x, 750f, 112f) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.a.d.x, var_2.d.x, 1038f), var_1.a.d)))), firstTrailingBit(-(-1i << (0u % 32u)))));
    let var_5 = vec4<bool>(var_4.a.b.x && !(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(var_2.a, 4294967295u)) != var_4.a.c), any(select(!vec3<bool>(false, false, var_4.a.b.x), var_4.a.b, !(var_2.b.x || true))), !var_1.a.b.x, true & var_4.a.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(~vec2<u32>(func_1(vec3<i32>(-47693i, u_input.a.x, -26355i), var_0.a.d, var_2.d.xx, vec2<u32>(11178u, var_2.c)).a.d, func_3(var_4.a, var_0.a.b, 20802i)), ~firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.c, var_0.a.d), vec2<u32>(var_2.a, var_4.a.a), vec2<u32>(var_2.c, 0u))), vec2<bool>(any(vec3<bool>(false, var_1.a.b.x, true)), !(var_2.e < 5037i))), (var_0.a.a | abs(min(vec2<i32>(var_0.a.a.x, var_2.e), vec2<i32>(-1i, -27746i)))) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(var_4.a.a, _wgslsmith_sub_u32(var_2.c, var_4.a.c)), vec2<u32>(1u << (0u % 32u), var_2.c)) % vec2<u32>(32u)), vec4<f32>(func_2(vec3<i32>(-var_4.a.e, ~var_0.a.a.x, _wgslsmith_dot_vec3_i32(var_0.a.b.yxy, var_0.a.b.yxw)), _wgslsmith_mod_u32(~4294967295u, var_1.a.c ^ var_1.a.c)).a.c, _wgslsmith_f_op_f32(459f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -287f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.a.d.x), var_0.a.c), var_2.d.x), var_0.a.d, _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, var_4.a.e | firstTrailingBit(var_4.a.e), -(~2147483647i)), ~var_0.a.b.wzw << (select(~vec3<u32>(10039u, var_4.a.a, 1u), vec3<u32>(var_1.a.c, 23865u, var_1.a.a), vec3<bool>(var_4.a.b.x, true, var_5.x)) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_sub_i32(-29480i, _wgslsmith_clamp_i32(15186i, var_0.a.a.x, var_2.e)), abs(var_1.a.e << (38629u % 32u)), _wgslsmith_mult_i32(-1i, 31401i))));
}

