struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<f32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(false, 1i, vec4<f32>(-995f, 1674f, 150f, 986f), vec4<i32>(-59148i, -18915i, -17096i, -25466i), vec2<i32>(-51828i, i32(-2147483648))), Struct_1(false, 51875i, vec4<f32>(117f, -1000f, -840f, -923f), vec4<i32>(56510i, 588i, 2147483647i, -4851i), vec2<i32>(-34762i, -626i)), Struct_1(false, 63252i, vec4<f32>(287f, -643f, -1069f, 988f), vec4<i32>(5346i, -9648i, 1i, 2147483647i), vec2<i32>(0i, -3353i)), Struct_1(false, 54878i, vec4<f32>(-2035f, -568f, -1093f, -1339f), vec4<i32>(0i, 2147483647i, 0i, 2147483647i), vec2<i32>(-1i, 3466i)), Struct_1(false, -1i, vec4<f32>(352f, -1000f, 560f, 1876f), vec4<i32>(2147483647i, -466i, 55496i, -1i), vec2<i32>(2147483647i, 0i)), Struct_1(true, -15234i, vec4<f32>(-570f, -176f, 201f, -1045f), vec4<i32>(-1003i, -29226i, -29758i, 0i), vec2<i32>(2344i, 15787i)), Struct_1(false, -59748i, vec4<f32>(-1775f, 1767f, 1491f, -2092f), vec4<i32>(50710i, i32(-2147483648), 0i, 2147483647i), vec2<i32>(2147483647i, 0i)), Struct_1(true, 0i, vec4<f32>(153f, -192f, -142f, -230f), vec4<i32>(30459i, i32(-2147483648), 52331i, -1i), vec2<i32>(-41620i, 0i)), Struct_1(true, -54138i, vec4<f32>(1419f, 1533f, 569f, 103f), vec4<i32>(-1839i, -2087i, 1i, 0i), vec2<i32>(17847i, i32(-2147483648))), Struct_1(true, -991i, vec4<f32>(-211f, -1057f, 1000f, 1098f), vec4<i32>(42764i, 24136i, -50136i, 9133i), vec2<i32>(i32(-2147483648), 1i)), Struct_1(false, i32(-2147483648), vec4<f32>(266f, 743f, -408f, 1852f), vec4<i32>(-2782i, -17031i, 12777i, -12145i), vec2<i32>(62789i, 2055i)), Struct_1(true, -17920i, vec4<f32>(-1175f, -2683f, 318f, 917f), vec4<i32>(14292i, 0i, 1i, -27345i), vec2<i32>(30268i, -1i)), Struct_1(false, -1i, vec4<f32>(1000f, 230f, 1000f, 171f), vec4<i32>(1i, 2147483647i, -73984i, -7230i), vec2<i32>(0i, 77031i)), Struct_1(false, -1i, vec4<f32>(242f, -2123f, 141f, -1831f), vec4<i32>(6017i, 1i, 30668i, 1i), vec2<i32>(-5522i, 4885i)), Struct_1(false, -10611i, vec4<f32>(-1000f, 733f, -783f, 634f), vec4<i32>(18118i, -55758i, i32(-2147483648), 1i), vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(true, -1i, vec4<f32>(-223f, -335f, 344f, -272f), vec4<i32>(i32(-2147483648), 3682i, 0i, 25413i), vec2<i32>(-6576i, 1i)), Struct_1(true, -1i, vec4<f32>(925f, -338f, -1216f, -205f), vec4<i32>(i32(-2147483648), 60061i, -8535i, 2147483647i), vec2<i32>(-74400i, 1i)), Struct_1(false, 50197i, vec4<f32>(109f, 2149f, -118f, -580f), vec4<i32>(60955i, 40044i, -1i, 3461i), vec2<i32>(-14445i, -23836i)));

var<private> global1: array<vec2<u32>, 32>;

var<private> global2: array<i32, 32> = array<i32, 32>(0i, 44988i, 2147483647i, 33709i, -20582i, i32(-2147483648), 1i, 0i, 9483i, -1i, -12536i, 2147483647i, 2147483647i, 43424i, 26481i, 65482i, 0i, 8543i, 0i, -1i, 2147483647i, -46279i, -9351i, 1i, 1i, 51749i, 13015i, 28067i, -1i, -49783i, -21445i, 0i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<bool>) -> bool {
    var var_0 = max(vec3<i32>(global2[_wgslsmith_index_u32(~u_input.a, 32u)], 1i, 1i), vec3<i32>(~abs(~global2[_wgslsmith_index_u32(u_input.a, 32u)]), 1i, ~_wgslsmith_div_i32(global2[_wgslsmith_index_u32(29242u, 32u)] >> (0u % 32u), ~57369i)));
    var var_1 = Struct_1(all(!(!vec3<bool>(false, arg_0.x, arg_0.x))), _wgslsmith_add_i32(firstLeadingBit(29443i), _wgslsmith_div_i32(~_wgslsmith_add_i32(48261i, var_0.x), global2[_wgslsmith_index_u32(u_input.a, 32u)])), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f)))))), ~vec4<i32>(26135i, var_0.x, abs(var_0.x), _wgslsmith_mult_i32(select(var_0.x, -2147483647i, arg_0.x), abs(var_0.x))), -_wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(1i, var_0.x) | vec2<i32>(-1i, -23201i)), vec2<i32>(-1i) * -var_0.xz));
    global1 = array<vec2<u32>, 32>();
    var var_2 = !(!select(arg_0, arg_0, var_1.a));
    var_1 = global0[_wgslsmith_index_u32(~(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.b & u_input.a, u_input.a, ~1u), ~(~u_input.c)) << (1u % 32u)), 18u)];
    return true;
}

fn func_2() -> u32 {
    var var_0 = Struct_1(all(!vec4<bool>(true, func_3(vec2<bool>(true, true)), true, true)), -(_wgslsmith_dot_vec3_i32(-vec3<i32>(-8331i, -51241i, global2[_wgslsmith_index_u32(1u, 32u)]), _wgslsmith_sub_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(62956u, 32u)], 45288i, -16730i), vec3<i32>(-1i, global2[_wgslsmith_index_u32(484u, 32u)], global2[_wgslsmith_index_u32(56248u, 32u)]))) >> (~_wgslsmith_dot_vec4_u32(u_input.c, u_input.c) % 32u)), vec4<f32>(1f, 1f, 1f, 1f), vec4<i32>(_wgslsmith_clamp_i32(i32(-1i) * -28268i, ~countOneBits(-2147483647i), -global2[_wgslsmith_index_u32(u_input.c.x, 32u)] >> (u_input.b % 32u)), -29045i, firstLeadingBit(global2[_wgslsmith_index_u32(abs(13379u), 32u)]), ~(global2[_wgslsmith_index_u32(u_input.c.x, 32u)] & global2[_wgslsmith_index_u32(4294967295u, 32u)]) >> ((0u << (u_input.a % 32u)) % 32u)), vec2<i32>(min(42331i ^ global2[_wgslsmith_index_u32(u_input.a, 32u)], -1i), -global2[_wgslsmith_index_u32(532u, 32u)] & 1i) ^ ~_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, global2[_wgslsmith_index_u32(4294967295u, 32u)]), firstTrailingBit(vec2<i32>(4603i, global2[_wgslsmith_index_u32(u_input.a, 32u)]))));
    let var_1 = ~_wgslsmith_div_vec3_i32(vec3<i32>(-4805i, -(~var_0.e.x), -1i), ~select(var_0.d.wwz | vec3<i32>(var_0.b, var_0.b, 1218i), ~var_0.d.wyx, true));
    var var_2 = Struct_1(~u_input.d != firstTrailingBit(~(~u_input.b)), max(-15829i, 21921i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(var_0.c))) - vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.c.x)), _wgslsmith_f_op_f32(var_0.c.x - var_0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1413f), var_0.c.x))), ~(~(~var_0.d << (~u_input.c % vec4<u32>(32u)))), vec2<i32>(var_1.x, 2147483647i));
    let var_3 = countOneBits(~(vec4<u32>(1u ^ u_input.c.x, max(u_input.a, 16056u), min(u_input.a, u_input.b), ~43036u) << (vec4<u32>(countOneBits(45361u), reverseBits(u_input.a), 1470u, ~4294967295u) % vec4<u32>(32u))));
    var_2 = Struct_1(false, -var_1.x, var_0.c, vec4<i32>(_wgslsmith_clamp_i32(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(var_3.x, 32u)], global2[_wgslsmith_index_u32(u_input.b, 32u)]), vec2<i32>(var_2.d.x, 34971i))), _wgslsmith_sub_i32(_wgslsmith_mod_i32(0i, var_2.b), _wgslsmith_div_i32(1i, 2147483647i)), select(var_0.d.x, 2147483647i, true) << (1u % 32u)), -(~var_0.e.x), -2147483647i, reverseBits(reverseBits(global2[_wgslsmith_index_u32(var_3.x, 32u)]))), -(~(~vec2<i32>(-99869i, global2[_wgslsmith_index_u32(1u, 32u)]))));
    return firstTrailingBit(u_input.d);
}

fn func_1() -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(~(~(_wgslsmith_mod_u32(1u, u_input.d) & func_2())) & countOneBits(~15980u), 18u)];
    global2 = array<i32, 32>();
    let var_1 = vec2<bool>(!var_0.a, func_3(vec2<bool>(true, var_0.e.x >= -21243i)));
    var var_2 = -(~var_0.d.x) << (2286u % 32u);
    let var_3 = Struct_1(var_0.a, ~2147483647i, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-504f, var_0.c.x, var_0.c.x, var_0.c.x), var_0.c), vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x), var_1.x || var_0.a)) - _wgslsmith_f_op_vec4_f32(-var_0.c)), _wgslsmith_f_op_vec4_f32(-var_0.c))), firstLeadingBit(select(var_0.d, ~select(var_0.d, vec4<i32>(0i, var_0.e.x, global2[_wgslsmith_index_u32(1u, 32u)], var_0.d.x), var_1.x), !var_1.x | true)), _wgslsmith_mod_vec2_i32(vec2<i32>(var_0.e.x & -13604i, global2[_wgslsmith_index_u32(max(abs(u_input.c.x), ~35853u), 32u)]), _wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(var_0.b, var_0.e.x)), abs(var_0.d.ww)) | _wgslsmith_mod_vec2_i32(min(vec2<i32>(-1i, -1i), vec2<i32>(var_0.b, global2[_wgslsmith_index_u32(1u, 32u)])), var_0.d.wy << (vec2<u32>(72747u, u_input.c.x) % vec2<u32>(32u)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.c.x + -272f)))) + _wgslsmith_f_op_f32(select(-1000f, -2402f, false))) * -398f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mult_u32(~_wgslsmith_mult_u32(u_input.a ^ u_input.b, _wgslsmith_div_u32(4294967295u, 4294967295u)), _wgslsmith_mod_u32(~u_input.b, u_input.a));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())));
    var var_2 = global0[_wgslsmith_index_u32(var_0, 18u)];
    var_1 = 1f;
    let var_3 = var_2.a;
    var_2 = Struct_1(var_2.a, _wgslsmith_clamp_i32(-abs(var_2.b), _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(1u >> (1u % 32u), 32u)], _wgslsmith_mod_i32(14282i, global2[_wgslsmith_index_u32(0u, 32u)])), ~(-global2[_wgslsmith_index_u32(u_input.c.x, 32u)])), vec4<f32>(var_2.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_2.c.x)), _wgslsmith_f_op_f32(func_1()))), var_2.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.x) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1552f + var_2.c.x))))), vec4<i32>(select(0i, ~23267i, any(vec2<bool>(false, true))) & 0i, 27872i, var_2.b, reverseBits(var_2.b) ^ (i32(-1i) * -31072i)), var_2.e);
    let x = u_input.a;
    s_output = StorageBuffer(~1u, _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(min(-1i, -16895i), max(var_2.d.x, 0i))) & var_2.e, 1u, reverseBits(~u_input.c), vec2<u32>(u_input.b, _wgslsmith_mod_u32(_wgslsmith_sub_u32(0u, u_input.d), 1u >> (max(19605u, var_0) % 32u))));
}

