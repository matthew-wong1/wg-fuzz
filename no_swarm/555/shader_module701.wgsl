struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19> = array<bool, 19>(true, false, false, false, true, true, false, true, false, false, false, false, false, true, false, true, false, false, true);

var<private> global1: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(Struct_2(Struct_1(vec2<u32>(1312u, 0u)), 1u, Struct_1(vec2<u32>(64057u, 24272u))), true, Struct_1(vec2<u32>(4294967295u, 1u)), vec4<i32>(1i, 2147483647i, 0i, 0i)), Struct_3(Struct_2(Struct_1(vec2<u32>(0u, 4655u)), 0u, Struct_1(vec2<u32>(4294967295u, 4294967295u))), true, Struct_1(vec2<u32>(1u, 1u)), vec4<i32>(-1i, -67780i, -24765i, -25701i)), Struct_3(Struct_2(Struct_1(vec2<u32>(24109u, 47487u)), 40517u, Struct_1(vec2<u32>(36283u, 1u))), true, Struct_1(vec2<u32>(45975u, 23705u)), vec4<i32>(1i, 1i, 2147483647i, i32(-2147483648))), Struct_3(Struct_2(Struct_1(vec2<u32>(9593u, 1u)), 4294967295u, Struct_1(vec2<u32>(4294967295u, 1u))), true, Struct_1(vec2<u32>(15966u, 49688u)), vec4<i32>(36753i, -1i, 2147483647i, i32(-2147483648))), Struct_3(Struct_2(Struct_1(vec2<u32>(93001u, 1u)), 57976u, Struct_1(vec2<u32>(100034u, 0u))), false, Struct_1(vec2<u32>(1u, 0u)), vec4<i32>(-1i, -1i, -4481i, 2317i)), Struct_3(Struct_2(Struct_1(vec2<u32>(39034u, 18791u)), 0u, Struct_1(vec2<u32>(0u, 4294967295u))), true, Struct_1(vec2<u32>(4294967295u, 50522u)), vec4<i32>(0i, 2147483647i, 2147483647i, 11652i)), Struct_3(Struct_2(Struct_1(vec2<u32>(33745u, 1u)), 24934u, Struct_1(vec2<u32>(20765u, 4684u))), false, Struct_1(vec2<u32>(11434u, 18272u)), vec4<i32>(49052i, -565i, -1i, i32(-2147483648))), Struct_3(Struct_2(Struct_1(vec2<u32>(1u, 65281u)), 0u, Struct_1(vec2<u32>(64360u, 4294967295u))), false, Struct_1(vec2<u32>(4294967295u, 0u)), vec4<i32>(0i, -1i, 2147483647i, 22084i)), Struct_3(Struct_2(Struct_1(vec2<u32>(20309u, 4294967295u)), 4294967295u, Struct_1(vec2<u32>(58836u, 37497u))), false, Struct_1(vec2<u32>(2655u, 1u)), vec4<i32>(-6464i, -23482i, 2147483647i, -24281i)), Struct_3(Struct_2(Struct_1(vec2<u32>(12900u, 60566u)), 21337u, Struct_1(vec2<u32>(8028u, 78995u))), false, Struct_1(vec2<u32>(64398u, 1u)), vec4<i32>(26340i, 13171i, -49816i, 36366i)), Struct_3(Struct_2(Struct_1(vec2<u32>(9568u, 0u)), 4294967295u, Struct_1(vec2<u32>(49642u, 92402u))), false, Struct_1(vec2<u32>(3083u, 0u)), vec4<i32>(-23239i, i32(-2147483648), 38970i, i32(-2147483648))), Struct_3(Struct_2(Struct_1(vec2<u32>(4294967295u, 40231u)), 33786u, Struct_1(vec2<u32>(1u, 1u))), false, Struct_1(vec2<u32>(1u, 1u)), vec4<i32>(-1i, -1i, 2147483647i, 1i)), Struct_3(Struct_2(Struct_1(vec2<u32>(5373u, 0u)), 85301u, Struct_1(vec2<u32>(4294967295u, 50410u))), true, Struct_1(vec2<u32>(2200u, 1u)), vec4<i32>(-44821i, 29817i, -1i, 2147483647i)), Struct_3(Struct_2(Struct_1(vec2<u32>(64726u, 0u)), 1u, Struct_1(vec2<u32>(0u, 1u))), false, Struct_1(vec2<u32>(0u, 0u)), vec4<i32>(i32(-2147483648), 1i, 0i, -1i)), Struct_3(Struct_2(Struct_1(vec2<u32>(61998u, 1u)), 0u, Struct_1(vec2<u32>(0u, 0u))), true, Struct_1(vec2<u32>(173u, 59673u)), vec4<i32>(-1i, -7233i, -2825i, 1i)), Struct_3(Struct_2(Struct_1(vec2<u32>(13153u, 40604u)), 0u, Struct_1(vec2<u32>(4294967295u, 4294967295u))), true, Struct_1(vec2<u32>(27199u, 1u)), vec4<i32>(1i, -9432i, -11854i, 2147483647i)));

var<private> global2: array<vec3<bool>, 28>;

var<private> global3: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec2<u32>(25766u, 42531u)), Struct_1(vec2<u32>(0u, 73090u)), Struct_1(vec2<u32>(1u, 0u)), Struct_1(vec2<u32>(4294967295u, 1u)), Struct_1(vec2<u32>(763u, 0u)), Struct_1(vec2<u32>(4294967295u, 4637u)), Struct_1(vec2<u32>(28663u, 5974u)), Struct_1(vec2<u32>(80227u, 32746u)), Struct_1(vec2<u32>(7403u, 1u)), Struct_1(vec2<u32>(4294967295u, 1u)), Struct_1(vec2<u32>(19816u, 5563u)), Struct_1(vec2<u32>(4294967295u, 19319u)), Struct_1(vec2<u32>(1u, 1u)), Struct_1(vec2<u32>(0u, 57497u)), Struct_1(vec2<u32>(5514u, 93203u)), Struct_1(vec2<u32>(1u, 76131u)), Struct_1(vec2<u32>(0u, 4294967295u)), Struct_1(vec2<u32>(4294967295u, 4482u)), Struct_1(vec2<u32>(4294967295u, 1u)), Struct_1(vec2<u32>(9908u, 4294967295u)), Struct_1(vec2<u32>(1u, 13760u)), Struct_1(vec2<u32>(1u, 0u)), Struct_1(vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec2<u32>(0u, 4294967295u)), Struct_1(vec2<u32>(56189u, 1u)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_add_u32(u_input.a, u_input.a);
    var var_1 = Struct_2(global3[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 25u)], 62951u, global3[_wgslsmith_index_u32(countOneBits(reverseBits(reverseBits(54327u << (u_input.a % 32u)))), 25u)]);
    let var_2 = Struct_5(vec4<u32>(104372u, 94101u, 0u, ~57295u), global3[_wgslsmith_index_u32(u_input.a ^ var_1.a.a.x, 25u)]);
    let var_3 = var_2.a.zwz;
    global1 = array<Struct_3, 16>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-423f - -433f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1133f + -1378f))))), true)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -691f)))))));
}

fn func_2() -> i32 {
    global1 = array<Struct_3, 16>();
    var var_0 = _wgslsmith_f_op_f32(func_3());
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 1129f))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(400f * 514f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1000f)))), true))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(395f, -1182f)) * _wgslsmith_f_op_f32(select(-632f, 632f, global0[_wgslsmith_index_u32(u_input.a, 19u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -467f) + _wgslsmith_f_op_f32(f32(-1f) * -1315f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(300f * 468f))), _wgslsmith_f_op_f32(-1f)));
    let var_2 = var_1.zzz;
    let var_3 = vec2<bool>(true | (true != global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, 33473u), 19u)]), any(vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, u_input.a), ~vec2<u32>(4486u, u_input.a)), 19u)], select(all(global2[_wgslsmith_index_u32(84670u, 28u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 8412u, u_input.a)), 19u)], true))));
    return -_wgslsmith_add_i32(-max(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, 3665i, 2147483647i), vec4<i32>(1i, -7757i, -2147483647i, 34192i)), min(-2147483647i, 1i)), -10200i);
}

fn func_1() -> Struct_4 {
    var var_0 = func_2();
    var var_1 = Struct_2(Struct_1(max(~vec2<u32>(1u, 1u), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 98136u, 4294967295u)), u_input.a << (u_input.a % 32u)))), u_input.a, Struct_1(vec2<u32>(max(u_input.a, 1u), firstLeadingBit(~u_input.a))));
    var_0 = -20198i;
    var var_2 = ~vec4<u32>(_wgslsmith_dot_vec3_u32(~max(vec3<u32>(u_input.a, 31117u, 4294967295u), vec3<u32>(20666u, u_input.a, u_input.a)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 64422u, var_1.c.a.x), ~vec3<u32>(var_1.b, var_1.a.a.x, var_1.a.a.x))), firstTrailingBit(_wgslsmith_mult_u32(1u, var_1.a.a.x)), var_1.a.a.x, 0u);
    let var_3 = _wgslsmith_dot_vec4_i32(firstTrailingBit(_wgslsmith_mult_vec4_i32(abs(~vec4<i32>(32148i, 0i, 5555i, -33918i)), abs(firstLeadingBit(vec4<i32>(4215i, -1i, -33131i, -56389i))))), vec4<i32>(~firstLeadingBit(firstTrailingBit(-27967i)), _wgslsmith_dot_vec3_i32(vec3<i32>(5636i, firstLeadingBit(-34123i), 1i), -_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -43968i, 1i), vec3<i32>(-2147483647i, 17831i, -35598i))), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(countOneBits(532i), -1i << (var_1.c.a.x % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(39053i, 1848i, 0i), vec3<i32>(0i, -1346i, 10863i))), 1i), 0i));
    return Struct_4(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(36810u, var_2.x, ~var_2.x), var_2.yxx), _wgslsmith_div_vec3_u32(var_2.xzy, ~(var_2.yxz >> (vec3<u32>(var_2.x, 60602u, 35011u) % vec3<u32>(32u))))));
}

fn func_4(arg_0: f32, arg_1: Struct_4) -> Struct_1 {
    let var_0 = (max(_wgslsmith_sub_u32(4294967295u, arg_1.a.x), arg_1.a.x) & arg_1.a.x) > _wgslsmith_add_u32(~(~66821u), arg_1.a.x);
    var var_1 = _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(max(1i, 2147483647i), 12213i, i32(-1i) * -31725i), vec3<i32>(-1i) * -vec3<i32>(-2147483647i, 713i, -2147483647i)), reverseBits(~vec3<i32>(-51201i, -13086i, 48346i)) | vec3<i32>(select(9221i, -9883i, var_0), 1i, ~(-1i))), vec3<i32>(countOneBits(abs(1i)), select(i32(-1i) * -1i, 2147483647i, !global0[_wgslsmith_index_u32(~u_input.a, 19u)]), 0i));
    global0 = array<bool, 19>();
    global3 = array<Struct_1, 25>();
    var var_2 = arg_1.a;
    return global3[_wgslsmith_index_u32(9884u, 25u)];
}

fn func_5(arg_0: Struct_1, arg_1: Struct_5) -> Struct_5 {
    let var_0 = arg_0.a;
    let var_1 = (~(~(~vec4<u32>(5545u, arg_0.a.x, arg_0.a.x, 0u))) ^ ~arg_1.a) & arg_1.a;
    return Struct_5(~vec4<u32>(_wgslsmith_mod_u32(105068u, var_0.x), var_1.x, arg_0.a.x, ~_wgslsmith_mod_u32(4294967295u, 1u)), global3[_wgslsmith_index_u32(0u, 25u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -727f)))), func_1()), Struct_5(~vec4<u32>(~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), u_input.a, ~u_input.a), Struct_1(~(vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(20915u, u_input.a) % vec2<u32>(32u))))));
    let var_1 = select(select(vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(9358u, countOneBits(u_input.a)), 19u)], true, !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(46554u, u_input.a, 35103u), var_0.a.zwz), 19u)]), global2[_wgslsmith_index_u32((0u & ~var_0.b.a.x) ^ reverseBits(4294967295u), 28u)], vec3<bool>(!global0[_wgslsmith_index_u32(0u, 19u)], true, global0[_wgslsmith_index_u32(25016u, 19u)])), !(!select(global2[_wgslsmith_index_u32(u_input.a, 28u)], !global2[_wgslsmith_index_u32(var_0.b.a.x, 28u)], false)), global0[_wgslsmith_index_u32(u_input.a, 19u)]);
    let var_2 = Struct_3(Struct_2(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1051f)) * _wgslsmith_f_op_f32(min(-1000f, 2425f))), func_1()), ~var_0.a.x, func_4(-358f, func_1())), !(all(global2[_wgslsmith_index_u32(8786u, 28u)]) || any(select(vec2<bool>(true, var_1.x), var_1.xy, global0[_wgslsmith_index_u32(1u, 19u)]))), func_5(func_4(-2407f, func_1()), Struct_5(var_0.a, func_5(global3[_wgslsmith_index_u32(var_0.b.a.x, 25u)], func_5(global3[_wgslsmith_index_u32(51257u, 25u)], Struct_5(vec4<u32>(var_0.b.a.x, u_input.a, var_0.a.x, u_input.a), global3[_wgslsmith_index_u32(4294967295u, 25u)]))).b)).b, ~(vec4<i32>(-1i << (0u % 32u), i32(-1i) * -1i, countOneBits(0i), 2147483647i) << (vec4<u32>(0u, 1u, _wgslsmith_mod_u32(u_input.a, var_0.a.x), countOneBits(u_input.a)) % vec4<u32>(32u))));
    var var_3 = global2[_wgslsmith_index_u32(1u & (_wgslsmith_mod_u32(select(var_2.c.a.x | var_0.b.a.x, _wgslsmith_add_u32(var_0.a.x, 24121u), global0[_wgslsmith_index_u32(3633u, 19u)]), var_0.a.x) & min(_wgslsmith_div_u32(u_input.a, var_0.a.x) >> (_wgslsmith_clamp_u32(64848u, u_input.a, var_2.a.b) % 32u), 31946u ^ _wgslsmith_dot_vec3_u32(var_0.a.wzx, vec3<u32>(var_2.a.c.a.x, var_0.a.x, 1u)))), 28u)];
    var_0 = Struct_5(vec4<u32>(~(~1u), u_input.a, 72858u, u_input.a), Struct_1(vec2<u32>(func_4(-867f, Struct_4(vec3<u32>(4294967295u, var_0.b.a.x, var_0.b.a.x))).a.x, ~_wgslsmith_div_u32(29320u, 47384u))));
    var_0 = Struct_5(~var_0.a, Struct_1(~(~(vec2<u32>(4533u, 19816u) | var_0.b.a))));
    var var_4 = _wgslsmith_add_vec3_i32(firstLeadingBit(var_2.d.xwx), abs(abs(vec3<i32>(-26336i, var_2.d.x, 0i)) >> (vec3<u32>(0u, var_0.b.a.x, var_2.a.a.a.x) % vec3<u32>(32u))) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(var_2.d.x, -2147483647i, var_2.d.x) & vec3<i32>(21235i, -22041i, var_2.d.x), var_2.d.yzx));
    global3 = array<Struct_1, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(max(vec4<i32>(-var_2.d.x, 11502i, _wgslsmith_sub_i32(1300i, 1i), 1i), var_2.d), vec4<i32>(-var_4.x, firstLeadingBit(44678i), _wgslsmith_add_i32(-54080i, -45683i), var_4.x << (var_2.c.a.x % 32u)) >> (~firstLeadingBit(vec4<u32>(32688u, var_2.a.a.a.x, var_2.a.c.a.x, u_input.a)) % vec4<u32>(32u))), 1216f, vec4<u32>(u_input.a, firstLeadingBit(u_input.a), ~max(countOneBits(39383u), 37957u), u_input.a), ~var_2.c.a.x);
}

