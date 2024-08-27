struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<bool, 30> = array<bool, 30>(true, false, false, false, false, false, true, true, true, true, true, false, true, true, true, true, false, true, false, false, true, true, false, false, true, false, false, false, true, false);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool) -> vec4<u32> {
    var var_0 = vec2<u32>(firstTrailingBit(50073u >> (~u_input.c % 32u)) & 1u, _wgslsmith_clamp_u32(u_input.c, _wgslsmith_div_u32(7982u, 1u), 48259u));
    let var_1 = Struct_1(~(~vec4<u32>(45278u, var_0.x, 0u, 0u)) >> (vec4<u32>(4294967295u, 1u, u_input.c, ~(~0u)) % vec4<u32>(32u)), arg_0, countOneBits(vec3<i32>(-1845i, u_input.b.x, _wgslsmith_mod_i32(abs(u_input.b.x), u_input.b.x))), vec4<u32>(var_0.x, var_0.x, 7606u, ~(~(u_input.c >> (var_0.x % 32u)))));
    var var_2 = var_1.d.x;
    global0 = var_1.c & _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.x, min(var_1.c.x, global0.x), -1i), var_1.c, ~var_1.c);
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-330f, -666f, -552f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-730f, -806f, 1064f))))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1412f, -311f, 321f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-917f, -1031f, 947f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-239f, -691f, -841f), vec3<f32>(-1001f, -2161f, 1266f), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 30u)], false, var_1.b))))), vec3<f32>(_wgslsmith_f_op_f32(round(-302f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1257f, 1133f)) - _wgslsmith_f_op_f32(383f + -962f)), _wgslsmith_div_f32(-603f, _wgslsmith_f_op_f32(select(2021f, 2071f, global1[_wgslsmith_index_u32(10771u, 30u)]))))));
    return _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(var_1.d, vec4<u32>(44541u, ~(~u_input.a), u_input.c, ~var_0.x)), vec4<u32>(12236u, 9483u, ~firstLeadingBit(var_1.a.x), ~1u));
}

fn func_2(arg_0: vec3<i32>, arg_1: bool, arg_2: f32) -> bool {
    global0 = arg_0;
    global1 = array<bool, 30>();
    var var_0 = Struct_1(vec4<u32>(u_input.c, 4476u, firstTrailingBit(firstTrailingBit(1u)), u_input.a) | (firstLeadingBit(~vec4<u32>(u_input.a, u_input.c, 92344u, u_input.a)) ^ min(vec4<u32>(1u, u_input.a, 1935u, 12097u), func_3(global1[_wgslsmith_index_u32(u_input.c, 30u)]))), !((1u | ~u_input.a) < _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(11284u, u_input.a, u_input.a), vec3<u32>(0u, 0u, u_input.c)), ~vec3<u32>(u_input.a, u_input.a, u_input.a))), vec3<i32>(2147483647i, 1i, 2147483647i), firstTrailingBit(vec4<u32>(1u, 21095u, 11305u << (select(u_input.c, 11499u, arg_1) % 32u), ~31753u)));
    var_0 = Struct_1(var_0.d | ~var_0.d, arg_1, arg_0, firstTrailingBit(func_3(arg_1)));
    let var_1 = Struct_1(var_0.d, true, abs(arg_0), ~(~(~abs(var_0.a))));
    return true;
}

fn func_1() -> u32 {
    global0 = vec3<i32>(u_input.b.x, -45084i, global0.x);
    var var_0 = Struct_1(select(~(~(~vec4<u32>(77271u, u_input.c, 12234u, 1u))), ~_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(67236u, 1579u, u_input.c, u_input.a)), vec4<u32>(u_input.a, u_input.c, u_input.a, u_input.a) | vec4<u32>(u_input.a, 4294967295u, u_input.c, u_input.a)), !(!vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(u_input.c, 30u)], global1[_wgslsmith_index_u32(u_input.c, 30u)], global1[_wgslsmith_index_u32(0u, 30u)]))), !func_2(firstLeadingBit(-vec3<i32>(global0.x, -24824i, u_input.b.x)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -394f))), vec3<i32>(u_input.b.x << (34811u % 32u), _wgslsmith_mult_i32(u_input.b.x | 24880i, abs(global0.x)), global0.x) | firstTrailingBit(~select(vec3<i32>(21745i, 0i, 2147483647i), vec3<i32>(global0.x, 1i, global0.x), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 30u)], global1[_wgslsmith_index_u32(1u, 30u)]))), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.c, 69539u, 22750u, u_input.a), vec4<u32>(0u, 0u, 23013u, u_input.a), false), vec4<u32>(u_input.c, u_input.a, 0u, u_input.a)), ~vec4<u32>(13487u, u_input.a, 4294967295u, u_input.c)), abs(firstLeadingBit(~vec4<u32>(u_input.a, 80789u, u_input.a, 6602u)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(462f, -430f, -459f), vec3<f32>(2071f, 1260f, 1000f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(427f, -1328f, -248f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1908f, -909f)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1566f, -1000f, -141f)))) + vec3<f32>(1f, 1f, 1f)))));
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(~6662i, _wgslsmith_add_i32(global0.x, global0.x), var_0.c.x, _wgslsmith_sub_i32(31351i, -8713i)), vec4<i32>(-(~select(u_input.b.x, -33766i, global1[_wgslsmith_index_u32(var_0.d.x, 30u)])), -753i, -18183i, global0.x));
    var var_3 = 2147483647i;
    return ~var_0.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = (vec3<i32>(countOneBits(u_input.b.x) ^ _wgslsmith_mult_i32(global0.x, -32716i), 40632i, select(u_input.b.x, countOneBits(global0.x), any(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 30u)], false, false, global1[_wgslsmith_index_u32(u_input.c, 30u)])))) | vec3<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(2147483647i, global0.x, u_input.b.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(global0.x, 1i, 36615i), vec3<i32>(0i, u_input.b.x, global0.x))), 1i, _wgslsmith_mult_i32(-75676i & global0.x, _wgslsmith_div_i32(global0.x, u_input.b.x)))) ^ (-min(-vec3<i32>(-42311i, u_input.b.x, 52522i), _wgslsmith_div_vec3_i32(vec3<i32>(global0.x, global0.x, 28992i), vec3<i32>(u_input.b.x, -12282i, global0.x))) >> (vec3<u32>(select(func_1(), _wgslsmith_sub_u32(u_input.c, 4294967295u), global1[_wgslsmith_index_u32(29626u, 30u)] && global1[_wgslsmith_index_u32(u_input.c, 30u)]), abs(u_input.c), ~u_input.c) % vec3<u32>(32u)));
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -532f), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(199f, -1316f)) - _wgslsmith_f_op_f32(451f * 376f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(452f - 434f), 1471f))), _wgslsmith_f_op_f32(f32(-1f) * -498f)), 392f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(579f, _wgslsmith_f_op_f32(1487f + 1918f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1410f)))));
    global0 = _wgslsmith_sub_vec3_i32(vec3<i32>(global0.x, _wgslsmith_clamp_i32(~u_input.b.x, ~20094i, u_input.b.x | max(-44805i, global0.x)), -u_input.b.x >> (~0u % 32u)), -firstTrailingBit(abs(vec3<i32>(global0.x, global0.x, -2147483647i))));
    let var_1 = Struct_1(vec4<u32>(_wgslsmith_add_u32(min(1u, max(u_input.c, u_input.a)), u_input.c), _wgslsmith_sub_u32(u_input.c, u_input.c), _wgslsmith_mult_u32(u_input.c, u_input.a), 0u), !(!global1[_wgslsmith_index_u32(u_input.a, 30u)]), abs(~(~vec3<i32>(-26471i, 0i, u_input.b.x)) | firstLeadingBit(vec3<i32>(-29613i, 10362i, global0.x))), vec4<u32>(abs(func_1()), u_input.c, _wgslsmith_clamp_u32(_wgslsmith_div_u32(16273u, u_input.c), ~u_input.c, u_input.a) >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(38396u, u_input.c), ~vec2<u32>(u_input.a, u_input.c)) % 32u), 93173u));
    global1 = array<bool, 30>();
    let var_2 = Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(17672u, 41365u, 1u), var_1.a.x), 1u, ~(16944u << (var_1.d.x % 32u)), _wgslsmith_mult_u32(func_1(), _wgslsmith_clamp_u32(4294967295u, var_1.a.x, u_input.c))), var_1.d), (var_0.x <= var_0.x) || !func_2(max(var_1.c, var_1.c), var_1.d.x != u_input.c, 1f), ~firstTrailingBit(var_1.c), ~reverseBits(~max(vec4<u32>(var_1.a.x, u_input.a, u_input.c, u_input.a), var_1.d)));
    global0 = abs(var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, var_2.a, vec2<f32>(-696f, var_0.x));
}

