struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec3<u32>(0u, 94102u, 0u), vec2<u32>(0u, 71964u), vec2<u32>(1u, 140873u), 0u, vec3<i32>(0i, 0i, -1i)), Struct_1(vec3<u32>(4294967295u, 51923u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 1u), 4294967295u, vec3<i32>(i32(-2147483648), 2147483647i, 33250i)), Struct_1(vec3<u32>(4294967295u, 1u, 1u), vec2<u32>(15341u, 4294967295u), vec2<u32>(0u, 4294967295u), 0u, vec3<i32>(1i, 2147483647i, 15911i)), Struct_1(vec3<u32>(15799u, 15449u, 39712u), vec2<u32>(4294967295u, 85295u), vec2<u32>(279u, 1u), 1u, vec3<i32>(i32(-2147483648), -17918i, i32(-2147483648))), Struct_1(vec3<u32>(34520u, 62735u, 4294967295u), vec2<u32>(47096u, 1u), vec2<u32>(4294967295u, 1u), 51937u, vec3<i32>(0i, 1i, 2147483647i)), Struct_1(vec3<u32>(45128u, 1u, 21949u), vec2<u32>(39989u, 0u), vec2<u32>(18957u, 13682u), 39497u, vec3<i32>(-1i, -12207i, -1i)), Struct_1(vec3<u32>(46878u, 41515u, 63179u), vec2<u32>(1u, 0u), vec2<u32>(0u, 68358u), 55108u, vec3<i32>(-19086i, i32(-2147483648), -5697i)), Struct_1(vec3<u32>(22913u, 83258u, 117918u), vec2<u32>(64054u, 20263u), vec2<u32>(0u, 0u), 41663u, vec3<i32>(34624i, 11467i, 8334i)), Struct_1(vec3<u32>(0u, 1u, 22468u), vec2<u32>(76860u, 21125u), vec2<u32>(4294967295u, 62576u), 4294967295u, vec3<i32>(-1563i, 1i, 30099i)), Struct_1(vec3<u32>(43401u, 65238u, 1u), vec2<u32>(108731u, 40590u), vec2<u32>(4294967295u, 1u), 45704u, vec3<i32>(23864i, -18441i, -59618i)), Struct_1(vec3<u32>(58790u, 34209u, 1u), vec2<u32>(0u, 0u), vec2<u32>(164126u, 0u), 0u, vec3<i32>(15706i, 41768i, -1i)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 34778u), vec2<u32>(49256u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), 38611u, vec3<i32>(1755i, 1780i, 86222i)), Struct_1(vec3<u32>(63561u, 61560u, 61119u), vec2<u32>(53236u, 3257u), vec2<u32>(0u, 40677u), 0u, vec3<i32>(3916i, 2147483647i, 0i)), Struct_1(vec3<u32>(16644u, 0u, 1u), vec2<u32>(1u, 1u), vec2<u32>(15213u, 94603u), 0u, vec3<i32>(-18894i, 2147483647i, 21337i)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 8104u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(65593u, 1u), 0u, vec3<i32>(-1i, -1i, 1i)), Struct_1(vec3<u32>(90378u, 32796u, 4294967295u), vec2<u32>(4294967295u, 26823u), vec2<u32>(4294967295u, 0u), 0u, vec3<i32>(53982i, 1i, -3069i)), Struct_1(vec3<u32>(25997u, 4294967295u, 17654u), vec2<u32>(4294967295u, 35253u), vec2<u32>(4294967295u, 30458u), 57160u, vec3<i32>(49865i, 1i, 2147483647i)), Struct_1(vec3<u32>(0u, 0u, 74765u), vec2<u32>(14073u, 0u), vec2<u32>(21366u, 44518u), 4294967295u, vec3<i32>(i32(-2147483648), -12893i, -1i)), Struct_1(vec3<u32>(38751u, 1u, 11038u), vec2<u32>(0u, 11579u), vec2<u32>(16939u, 1u), 76804u, vec3<i32>(15264i, 61015i, 1i)), Struct_1(vec3<u32>(1u, 68172u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(9856u, 2978u), 58556u, vec3<i32>(0i, 1i, 18460i)), Struct_1(vec3<u32>(98817u, 46177u, 98839u), vec2<u32>(0u, 0u), vec2<u32>(82329u, 1u), 10501u, vec3<i32>(i32(-2147483648), 2147483647i, -1i)), Struct_1(vec3<u32>(1u, 0u, 2364u), vec2<u32>(4294967295u, 34761u), vec2<u32>(1u, 17735u), 10809u, vec3<i32>(2147483647i, -60231i, 1i)));

var<private> global3: f32 = 1178f;

var<private> global4: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> i32 {
    let var_0 = global2[_wgslsmith_index_u32(global1.d, 22u)];
    global0 = array<bool, 21>();
    let var_1 = Struct_1(~abs(~var_0.a) >> (_wgslsmith_clamp_vec3_u32(~vec3<u32>(global4.b.x, 4294967295u, global4.d), _wgslsmith_mod_vec3_u32(var_0.a, countOneBits(global1.a)), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(global1.a, vec3<u32>(global1.c.x, 54292u, 1u)), var_0.a | vec3<u32>(0u, 47241u, 42621u))) % vec3<u32>(32u)), select(vec2<u32>(_wgslsmith_mult_u32(var_0.b.x, 1u), _wgslsmith_sub_u32(global1.d << (u_input.a.x % 32u), countOneBits(var_0.c.x))), reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, global4.c.x), var_0.b) ^ vec2<u32>(1u, 0u)), true || (u_input.c != u_input.b)), vec2<u32>(firstTrailingBit(~1u), ~(~(~var_0.d))), var_0.a.x, global4.e);
    let var_2 = var_1;
    var var_3 = _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(18939i, ~_wgslsmith_sub_i32(global4.e.x, 1i), firstTrailingBit(1i)), ~var_0.e), global1.e);
    return u_input.c;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_add_u32(_wgslsmith_mod_u32(5737u, ~(u_input.a.x << (global4.c.x % 32u))), ~global1.d);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -635f), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(f32(-1f) * -512f)));
    var var_2 = 1u;
    var_1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1115f, _wgslsmith_f_op_f32(-450f * 764f), -1929f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -531f), 239f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1276f)) - 836f))));
    var var_3 = vec4<i32>(1i, -_wgslsmith_mult_i32(-global4.e.x ^ (global1.e.x | 30017i), 13815i), u_input.c | func_3(), -min(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global4.e.x, -1i, 2147483647i), vec4<i32>(global1.e.x, -41730i, -19511i, u_input.b))), reverseBits(max(-28928i, global4.e.x))));
    return Struct_1(_wgslsmith_add_vec3_u32(firstTrailingBit(~(vec3<u32>(11761u, var_0, 0u) & global1.a)), min(global4.a, select(~vec3<u32>(var_0, global4.b.x, 0u), _wgslsmith_mult_vec3_u32(global1.a, global1.a), !global0[_wgslsmith_index_u32(global1.d, 21u)]))), global4.a.zy, countOneBits(vec2<u32>(~1u, 4294967295u)) ^ firstTrailingBit(select(select(global4.a.zy, vec2<u32>(0u, 0u), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 21u)], false)), vec2<u32>(global4.c.x, var_0), !global0[_wgslsmith_index_u32(1u, 21u)])), var_0, select(reverseBits(global1.e), _wgslsmith_sub_vec3_i32(vec3<i32>(-51311i >> (global4.a.x % 32u), -29913i, ~u_input.b), vec3<i32>(_wgslsmith_add_i32(0i, global1.e.x), 0i, 34125i)), false));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec3<f32>) -> u32 {
    let var_0 = func_2();
    global4 = func_2();
    global4 = func_2();
    let var_1 = Struct_1(_wgslsmith_div_vec3_u32(select(var_0.a, reverseBits(vec3<u32>(58205u, u_input.a.x, 1u)) | (var_0.a << (vec3<u32>(0u, 1u, global4.c.x) % vec3<u32>(32u))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, global4.b.x, 6794u), _wgslsmith_mult_vec4_u32(vec4<u32>(17275u, 7172u, global1.a.x, 54894u), vec4<u32>(1u, 0u, u_input.a.x, u_input.a.x))), 21u)]), vec3<u32>(_wgslsmith_mult_u32(var_0.b.x, ~global4.c.x), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(global1.d, global1.d, global1.d)), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 9655u), var_0.a)), _wgslsmith_mult_u32(~18788u, ~global4.b.x))), vec2<u32>(global4.a.x, 51910u), ~vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(37762u, 1u), countOneBits(var_0.b.x)), var_0.b.x), 60573u & max(~max(u_input.a.x, global1.d), global4.b.x), abs(reverseBits(~vec3<i32>(u_input.b, -1i, global4.e.x))));
    var var_2 = vec4<u32>(_wgslsmith_mod_u32(~3584u, ~(~firstLeadingBit(435u))), _wgslsmith_add_u32(firstTrailingBit(35449u), ~4294967295u), reverseBits(_wgslsmith_mult_u32(var_1.a.x, var_0.b.x >> (global4.d % 32u)) | countOneBits(func_2().b.x)), 4294967295u);
    return _wgslsmith_dot_vec2_u32(vec2<u32>(func_2().c.x, _wgslsmith_mod_u32(~17541u, ~0u)) >> (u_input.a % vec2<u32>(32u)), vec2<u32>(~4294967295u >> (~var_1.a.x % 32u), _wgslsmith_mod_u32(global4.c.x, 4294967295u)) & (u_input.a | ~vec2<u32>(global4.a.x, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(countOneBits(_wgslsmith_sub_u32(func_1(438f, u_input.c, vec3<f32>(-547f, -905f, 1483f)) & global1.b.x, _wgslsmith_div_u32(func_2().b.x, global1.a.x))), 38689u), 22u)];
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -380f));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, 1u), 22u)];
    let var_2 = select(~vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -3429i), vec2<i32>(-17430i, global4.e.x)), 2147483647i) ^ _wgslsmith_mult_vec2_i32(func_2().e.zy, -vec2<i32>(global4.e.x, u_input.c)), _wgslsmith_div_vec2_i32(vec2<i32>(1i, global4.e.x), -global4.e.zy ^ -func_2().e.zy), vec2<bool>(any(vec3<bool>(false, true, false)), global0[_wgslsmith_index_u32(min(~func_2().c.x, u_input.a.x), 21u)]));
    let var_3 = 938u;
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(934f)))));
    global2 = array<Struct_1, 22>();
    let var_4 = func_2();
    let var_5 = ~(-firstTrailingBit(min(max(vec4<i32>(u_input.b, 1i, global4.e.x, -2147483647i), vec4<i32>(52010i, 56407i, u_input.b, var_2.x)), vec4<i32>(u_input.b, var_2.x, var_4.e.x, var_4.e.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~32937u)) >> (var_1.c.x % 32u));
}

