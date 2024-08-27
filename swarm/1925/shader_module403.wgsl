struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec3<i32>,
    b: i32,
    c: bool,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26>;

var<private> global1: vec4<u32>;

var<private> global2: array<vec4<i32>, 24> = array<vec4<i32>, 24>(vec4<i32>(1i, 1i, 2147483647i, i32(-2147483648)), vec4<i32>(-40664i, i32(-2147483648), -29641i, -22459i), vec4<i32>(13063i, 19798i, 0i, 0i), vec4<i32>(17000i, -50252i, -8538i, 81406i), vec4<i32>(-6614i, -1i, 33537i, -16192i), vec4<i32>(14268i, 88589i, i32(-2147483648), 0i), vec4<i32>(i32(-2147483648), 2147483647i, 0i, -1i), vec4<i32>(2147483647i, -8349i, -16298i, -13546i), vec4<i32>(-59580i, 1i, 2147483647i, i32(-2147483648)), vec4<i32>(1i, 38468i, -20635i, 0i), vec4<i32>(-56254i, 24918i, -14551i, 1i), vec4<i32>(-1i, -32900i, -20036i, i32(-2147483648)), vec4<i32>(-24551i, -13858i, i32(-2147483648), -21001i), vec4<i32>(1i, 1340i, 0i, 1i), vec4<i32>(i32(-2147483648), -25256i, 2147483647i, -1i), vec4<i32>(-1i, 0i, 7834i, 1i), vec4<i32>(0i, 0i, -13968i, 2147483647i), vec4<i32>(1i, 14212i, 0i, 30215i), vec4<i32>(i32(-2147483648), -32880i, 0i, -1i), vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, -46042i), vec4<i32>(-1i, -1342i, 0i, i32(-2147483648)), vec4<i32>(39412i, 2003i, -1i, 2147483647i), vec4<i32>(1i, -1i, 59365i, -9999i), vec4<i32>(2147483647i, -1i, 1i, -16862i));

var<private> global3: i32 = -1i;

var<private> global4: vec4<bool>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>) -> i32 {
    global4 = vec4<bool>(!(!(!(global4.x & true))), true, false, true);
    let var_0 = arg_1.wxy;
    global1 = vec4<u32>(68563u, ~global1.x, global1.x, 33600u);
    global0 = array<bool, 26>();
    global4 = vec4<bool>(_wgslsmith_dot_vec2_u32(~global1.zz >> (firstLeadingBit(global1.yy) % vec2<u32>(32u)), global1.wx) < u_input.b, global4.x, false, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32((_wgslsmith_sub_u32(54589u, u_input.b) ^ u_input.b) ^ u_input.b, _wgslsmith_dot_vec2_u32(~firstTrailingBit(vec2<u32>(u_input.b, global1.x)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, u_input.b, global1.x, u_input.b), vec4<u32>(global1.x, global1.x, 56425u, global1.x)), abs(7261u)))), 26u)]);
    return ~420i;
}

fn func_2() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-297f, 429f, -303f, 1611f) * vec4<f32>(1156f, 665f, -1338f, 1000f))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2126f, 2948f, 251f, -703f)))))));
    global0 = array<bool, 26>();
    var var_1 = Struct_5(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 1i), ~firstTrailingBit(vec3<i32>(2147483647i, -12439i, u_input.a.x))), vec3<i32>(-2147483647i, firstLeadingBit(67148i), u_input.a.x | countOneBits(2147483647i))), u_input.a.x, u_input.a.x == u_input.a.x, Struct_4(global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(~4294967295u, 1u)), 26u)]));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1759f + _wgslsmith_f_op_f32(sign(-616f))), -251f, var_0.x, var_0.x) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(var_0.x + var_0.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x * -845f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1626f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-956f, _wgslsmith_f_op_f32(select(var_0.x, 852f, var_1.c)), _wgslsmith_f_op_f32(trunc(616f)), -1436f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, 870f) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(412f, -909f, var_0.x, var_0.x)))), !(!vec4<bool>(false, false, global0[_wgslsmith_index_u32(101948u, 26u)], global4.x)))))));
    let var_2 = var_0.yy;
    return vec3<bool>(!(func_3(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -1044f, 700f, -751f), vec4<f32>(var_2.x, var_0.x, var_0.x, 719f), vec4<bool>(true, true, global4.x, true)))) > firstLeadingBit(1i)), false, all(select(select(vec4<bool>(false, var_1.d.a, global4.x, false), !vec4<bool>(global4.x, var_1.d.a, global0[_wgslsmith_index_u32(1u, 26u)], false), vec4<bool>(global4.x, global4.x, false, global0[_wgslsmith_index_u32(global1.x, 26u)])), !select(vec4<bool>(global4.x, var_1.d.a, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, global4.x, global0[_wgslsmith_index_u32(global1.x, 26u)], false)), vec4<bool>(false, !var_1.c, all(vec4<bool>(true, true, false, false)), true))));
}

fn func_1(arg_0: i32, arg_1: Struct_3) -> vec3<bool> {
    let var_0 = arg_1.b;
    global4 = select(select(select(!select(vec4<bool>(true, false, true, true), vec4<bool>(global4.x, false, global0[_wgslsmith_index_u32(25463u, 26u)], global0[_wgslsmith_index_u32(96154u, 26u)]), false), select(select(vec4<bool>(global0[_wgslsmith_index_u32(14922u, 26u)], var_0.a.x, true, false), vec4<bool>(true, global0[_wgslsmith_index_u32(global1.x, 26u)], true, false), var_0.a.x), vec4<bool>(var_0.a.x, global0[_wgslsmith_index_u32(u_input.b, 26u)], global0[_wgslsmith_index_u32(u_input.b, 26u)], false), false), !(global0[_wgslsmith_index_u32(4294967295u, 26u)] & true)), select(!(!vec4<bool>(global4.x, false, global0[_wgslsmith_index_u32(23655u, 26u)], true)), select(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 26u)], global4.x, true, true), vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(64086u, 26u)]), vec4<bool>(arg_1.b.a.x, arg_1.b.a.x, global0[_wgslsmith_index_u32(32460u, 26u)], arg_1.b.a.x), vec4<bool>(false, false, global4.x, var_0.a.x))), true), var_0.a.x), vec4<bool>(false, (global4.x | (u_input.a.x >= u_input.a.x)) && false, global4.x, true), arg_1.b.a.x);
    var var_1 = func_2();
    let var_2 = u_input.a.x;
    return !vec3<bool>(false, func_2().x, all(select(vec4<bool>(global4.x, arg_1.b.a.x, true, arg_1.b.a.x), !vec4<bool>(true, true, var_0.a.x, false), any(arg_1.b.a))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_3 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-652f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -494f)), _wgslsmith_f_op_f32(ceil(1020f)));
    global2 = array<vec4<i32>, 24>();
    let var_1 = firstLeadingBit(u_input.a.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(var_0));
    let var_3 = Struct_5(countOneBits(vec3<i32>(firstTrailingBit(reverseBits(2147483647i)), max(-1i, arg_2.d.x), var_1 & ~arg_2.e.x)), abs(-_wgslsmith_div_i32(~u_input.a.x, -34007i)), (_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(var_2.x)), -1961f)) == _wgslsmith_div_f32(460f, _wgslsmith_f_op_f32(-var_2.x))) || (~(~1u) != global1.x), Struct_4(false));
    return Struct_3(var_0.x, Struct_2(global4.wxy));
}

fn func_5(arg_0: Struct_3, arg_1: i32) -> Struct_4 {
    let var_0 = func_4(!(!(!global4.zzz)), vec4<bool>(-167f <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a, 199f) + _wgslsmith_f_op_f32(step(arg_0.a, arg_0.a))), u_input.a.x >= firstLeadingBit(select(-2147483647i, u_input.a.x, true)), ~u_input.a.x > ~(u_input.a.x | arg_1), false), Struct_1(func_1(~firstLeadingBit(51373i), Struct_3(_wgslsmith_div_f32(709f, arg_0.a), Struct_2(vec3<bool>(arg_0.b.a.x, arg_0.b.a.x, false)))).x, global2[_wgslsmith_index_u32(70486u, 24u)], reverseBits(vec4<i32>(firstLeadingBit(arg_1), countOneBits(u_input.a.x), u_input.a.x, -56625i)), _wgslsmith_div_vec4_i32(~(-global2[_wgslsmith_index_u32(44575u, 24u)]), ~abs(global2[_wgslsmith_index_u32(1u, 24u)])), ~(~vec4<i32>(arg_1, -1i, arg_1, arg_1))));
    global0 = array<bool, 26>();
    let var_1 = Struct_4(var_0.b.a.x);
    var var_2 = Struct_1(global4.x, global2[_wgslsmith_index_u32(~abs(u_input.b), 24u)], ~(vec4<i32>(-77059i, u_input.a.x, arg_1, -39382i) & _wgslsmith_mult_vec4_i32(global2[_wgslsmith_index_u32(global1.x, 24u)], global2[_wgslsmith_index_u32(global1.x, 24u)])) >> (_wgslsmith_add_vec4_u32(vec4<u32>(72571u, min(u_input.b, global1.x), _wgslsmith_dot_vec2_u32(global1.ww, vec2<u32>(0u, 4294967295u)), reverseBits(u_input.b)), ~(~vec4<u32>(11695u, 1u, 20139u, u_input.b))) % vec4<u32>(32u)), global2[_wgslsmith_index_u32(abs(u_input.b) | global1.x, 24u)], select(countOneBits(_wgslsmith_clamp_vec4_i32(global2[_wgslsmith_index_u32(max(global1.x, u_input.b), 24u)], vec4<i32>(-20432i, -2147483647i, -2147483647i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, -28273i, 8792i))), _wgslsmith_clamp_vec4_i32(global2[_wgslsmith_index_u32((u_input.b << (global1.x % 32u)) >> (~u_input.b % 32u), 24u)], ~(-global2[_wgslsmith_index_u32(21198u, 24u)]), vec4<i32>(-2147483647i, reverseBits(arg_1), ~11549i, _wgslsmith_div_i32(2147483647i, arg_1))), any(vec2<bool>(func_4(arg_0.b.a, vec4<bool>(true, var_0.b.a.x, true, false), Struct_1(global4.x, vec4<i32>(30953i, 1i, 0i, arg_1), global2[_wgslsmith_index_u32(u_input.b, 24u)], vec4<i32>(-29231i, arg_1, arg_1, -15766i), vec4<i32>(u_input.a.x, u_input.a.x, -25460i, -2147483647i))).b.a.x, var_1.a))));
    var_2 = Struct_1(select(!any(vec4<bool>(var_0.b.a.x, true, true, false)) && true, any(!(!vec2<bool>(var_1.a, global4.x))), true), vec4<i32>(abs(0i) >> ((abs(global1.x) >> ((u_input.b << (4294967295u % 32u)) % 32u)) % 32u), reverseBits(min(_wgslsmith_clamp_i32(arg_1, -1i, -2147483647i), i32(-1i) * -2147483647i)), arg_1, 2147483647i), min(~var_2.c, var_2.b), -max(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 1i, u_input.a.x, -1i), vec4<i32>(-7780i, u_input.a.x, -2147483647i, 11170i)), vec4<i32>(arg_1, arg_1, -2147483647i, var_2.c.x)), (var_2.e >> (vec4<u32>(34534u, 7484u, global1.x, global1.x) % vec4<u32>(32u))) ^ vec4<i32>(75097i, arg_1, 1i, u_input.a.x)), vec4<i32>(2147483647i, ~3711i, arg_1, 2147483647i));
    return Struct_4(arg_0.a > var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(select(global4.wxx, !func_1(u_input.a.x, Struct_3(168f, Struct_2(global4.xyx))), select(global4.xyz, global4.yzw, true)), select(vec4<bool>(false, all(vec4<bool>(false, true, global4.x, false)), !global0[_wgslsmith_index_u32(global1.x, 26u)], func_1(0i, Struct_3(356f, Struct_2(vec3<bool>(global0[_wgslsmith_index_u32(3714u, 26u)], false, global0[_wgslsmith_index_u32(0u, 26u)])))).x), select(vec4<bool>(true, true, true, true), select(vec4<bool>(global4.x, false, true, global0[_wgslsmith_index_u32(global1.x, 26u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 26u)], false, global0[_wgslsmith_index_u32(0u, 26u)]), vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(global1.x, 26u)])), select(vec4<bool>(global4.x, true, false, global4.x), vec4<bool>(global0[_wgslsmith_index_u32(global1.x, 26u)], false, false, global0[_wgslsmith_index_u32(23103u, 26u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 26u)], global4.x, false))), global0[_wgslsmith_index_u32(25061u, 26u)]), Struct_1(global0[_wgslsmith_index_u32(1u, 26u)], ~vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-u_input.a.x, ~u_input.a.x, 50461i, abs(u_input.a.x)), reverseBits(countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), vec4<i32>(21319i, 0i, -1i, -18968i) & -global2[_wgslsmith_index_u32(3726u, 24u)])), ~17409i);
    global3 = 31308i;
    global4 = select(vec4<bool>(!func_5(func_4(global4.wzz, vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 26u)], true, global4.x), Struct_1(global0[_wgslsmith_index_u32(u_input.b, 26u)], global2[_wgslsmith_index_u32(global1.x, 24u)], vec4<i32>(2147483647i, u_input.a.x, -18957i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, -55202i))), 0i).a, ~16643u > _wgslsmith_mult_u32(79515u, firstTrailingBit(global1.x)), false == func_1(-10622i >> (u_input.b % 32u), Struct_3(-1183f, Struct_2(global4.wwz))).x, !global4.x), select(vec4<bool>(func_4(func_1(-956i, Struct_3(964f, Struct_2(global4.wxz))), vec4<bool>(false, false, true, true), Struct_1(var_0.a, global2[_wgslsmith_index_u32(1u, 24u)], global2[_wgslsmith_index_u32(97257u, 24u)], vec4<i32>(u_input.a.x, 56247i, u_input.a.x, -4950i), vec4<i32>(4518i, 6613i, -1i, u_input.a.x))).b.a.x, func_2().x & false, !(!global4.x), abs(u_input.a.x) <= (2147483647i << (u_input.b % 32u))), vec4<bool>(true, true, global4.x, false), !select(select(vec4<bool>(false, true, global4.x, global0[_wgslsmith_index_u32(u_input.b, 26u)]), vec4<bool>(false, false, false, false), global4.x), !vec4<bool>(global0[_wgslsmith_index_u32(14740u, 26u)], global0[_wgslsmith_index_u32(u_input.b, 26u)], false, global4.x), false)), select(select(select(select(vec4<bool>(global4.x, false, global4.x, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.b, 26u)], var_0.a)), select(vec4<bool>(true, global4.x, var_0.a, global0[_wgslsmith_index_u32(39573u, 26u)]), vec4<bool>(var_0.a, global0[_wgslsmith_index_u32(1u, 26u)], false, var_0.a), vec4<bool>(true, var_0.a, global0[_wgslsmith_index_u32(1u, 26u)], true)), global0[_wgslsmith_index_u32(u_input.b, 26u)]), !vec4<bool>(global4.x, true, var_0.a, true), !vec4<bool>(false, var_0.a, global0[_wgslsmith_index_u32(1u, 26u)], true)), select(!(!vec4<bool>(true, var_0.a, true, false)), select(select(vec4<bool>(var_0.a, global0[_wgslsmith_index_u32(21270u, 26u)], global4.x, global4.x), vec4<bool>(false, var_0.a, global0[_wgslsmith_index_u32(4294967295u, 26u)], false), vec4<bool>(false, true, false, true)), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 26u)], global4.x, global0[_wgslsmith_index_u32(global1.x, 26u)], global4.x), select(vec4<bool>(false, true, false, global4.x), vec4<bool>(false, true, var_0.a, false), vec4<bool>(false, true, true, true))), ~26293u != _wgslsmith_sub_u32(67484u, global1.x)), select(select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 26u)], false, false, global4.x), select(vec4<bool>(var_0.a, global0[_wgslsmith_index_u32(u_input.b, 26u)], true, true), vec4<bool>(global4.x, global4.x, true, true), global4.x), any(global4.ww)), select(vec4<bool>(var_0.a, global4.x, true, true), vec4<bool>(global4.x, true, true, false), any(vec4<bool>(var_0.a, false, true, false))), select(select(vec4<bool>(var_0.a, var_0.a, var_0.a, true), vec4<bool>(global4.x, global0[_wgslsmith_index_u32(global1.x, 26u)], true, var_0.a), vec4<bool>(var_0.a, false, false, global4.x)), select(vec4<bool>(false, false, true, global4.x), vec4<bool>(global0[_wgslsmith_index_u32(30133u, 26u)], false, false, false), vec4<bool>(true, true, false, global4.x)), true))));
    global1 = ~(~_wgslsmith_mod_vec4_u32(~abs(vec4<u32>(13391u, 1u, 13421u, global1.x)), select(abs(vec4<u32>(global1.x, u_input.b, u_input.b, global1.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u), vec4<u32>(0u, 4294967295u, 1u, u_input.b)), select(vec4<bool>(global4.x, true, global4.x, global0[_wgslsmith_index_u32(global1.x, 26u)]), vec4<bool>(false, true, global0[_wgslsmith_index_u32(11196u, 26u)], global4.x), vec4<bool>(global4.x, global0[_wgslsmith_index_u32(96861u, 26u)], global4.x, false)))));
    var var_1 = all(!select(vec4<bool>(var_0.a, global4.x, true, true || global0[_wgslsmith_index_u32(global1.x, 26u)]), vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(51229u, 26u)] & var_0.a), !any(vec2<bool>(var_0.a, true))));
    let var_2 = max(vec4<u32>(select(1u, ~(0u | global1.x), global0[_wgslsmith_index_u32(1u, 26u)]), 44414u, 1u, ~min(global1.x, global1.x) >> (global1.x % 32u)), ~abs(reverseBits(vec4<u32>(4294967295u, 37298u, global1.x, u_input.b) >> (vec4<u32>(u_input.b, u_input.b, u_input.b, global1.x) % vec4<u32>(32u)))));
    global3 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~var_2));
}

