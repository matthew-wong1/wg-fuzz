struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22> = array<f32, 22>(340f, 167f, -1847f, -1053f, 1552f, -1817f, -127f, 788f, -746f, 258f, 1428f, -1642f, 772f, -1599f, 1668f, 136f, 233f, -1315f, 484f, 746f, -1044f, -779f);

var<private> global1: array<f32, 14> = array<f32, 14>(1000f, 1744f, -1337f, -523f, 151f, 732f, -1254f, 1129f, -1000f, -1000f, -1147f, 213f, -1000f, 1000f);

var<private> global2: array<vec2<i32>, 24>;

var<private> global3: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(2147483647i, vec4<i32>(15217i, i32(-2147483648), 0i, 20071i), -2004f), Struct_1(-1i, vec4<i32>(-1i, -47645i, -19683i, i32(-2147483648)), 2094f), Struct_1(76899i, vec4<i32>(-1i, 9347i, 1i, 1i), -522f), Struct_1(i32(-2147483648), vec4<i32>(17362i, -10705i, -30448i, -1i), -662f), Struct_1(i32(-2147483648), vec4<i32>(-13289i, 1i, -26452i, 21017i), 1693f), Struct_1(2147483647i, vec4<i32>(0i, -1i, 2147483647i, -40432i), -1222f), Struct_1(0i, vec4<i32>(2147483647i, -1i, 18714i, 2147483647i), -649f), Struct_1(-60288i, vec4<i32>(12638i, 1i, 43432i, -24857i), 134f), Struct_1(i32(-2147483648), vec4<i32>(0i, 3882i, 27347i, i32(-2147483648)), 112f), Struct_1(2147483647i, vec4<i32>(55805i, 30735i, -8193i, 35311i), 688f), Struct_1(i32(-2147483648), vec4<i32>(i32(-2147483648), 5890i, 68484i, 29904i), 234f), Struct_1(15209i, vec4<i32>(0i, 37039i, 34365i, -9339i), -979f), Struct_1(-1i, vec4<i32>(-1i, 28425i, i32(-2147483648), 5692i), 770f), Struct_1(i32(-2147483648), vec4<i32>(-1i, 38697i, -75003i, 0i), -1083f), Struct_1(2147483647i, vec4<i32>(-1i, -32106i, -40341i, -1i), -153f), Struct_1(-454i, vec4<i32>(0i, 9600i, 0i, 0i), -1274f), Struct_1(2147483647i, vec4<i32>(49695i, 7178i, -13833i, 34460i), -394f), Struct_1(-552i, vec4<i32>(-29891i, -40943i, -3328i, -13222i), 402f), Struct_1(1i, vec4<i32>(2147483647i, -26930i, -38605i, 1i), 2147f), Struct_1(1i, vec4<i32>(2147483647i, i32(-2147483648), 0i, 19962i), 1058f), Struct_1(-13058i, vec4<i32>(-27784i, 0i, 1i, -1i), -1868f), Struct_1(16088i, vec4<i32>(-5766i, i32(-2147483648), 28986i, -1i), -1550f), Struct_1(17571i, vec4<i32>(13324i, i32(-2147483648), i32(-2147483648), -34399i), -903f), Struct_1(1i, vec4<i32>(-10920i, -1i, 14286i, 12471i), 263f), Struct_1(-7252i, vec4<i32>(0i, 2147483647i, 1i, 40872i), -1074f), Struct_1(i32(-2147483648), vec4<i32>(2147483647i, 0i, 24120i, i32(-2147483648)), -866f), Struct_1(i32(-2147483648), vec4<i32>(-42282i, 10790i, 2147483647i, 1i), 1542f), Struct_1(0i, vec4<i32>(1i, -1i, 2147483647i, 19353i), 1000f), Struct_1(2147483647i, vec4<i32>(-31508i, 33503i, -17702i, 1i), -1000f), Struct_1(38623i, vec4<i32>(-34835i, 25105i, 2147483647i, 67185i), -464f), Struct_1(55860i, vec4<i32>(1i, 15617i, -1i, 35950i), 1298f), Struct_1(15145i, vec4<i32>(0i, 90881i, 10666i, -8985i), -803f));

var<private> global4: u32;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    global1 = array<f32, 14>();
    var var_0 = select(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, ~1u, abs(u_input.c.x)), vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.c.zz, ~u_input.c.xy), u_input.d, u_input.a)), u_input.c, true);
    var var_1 = -(~max(-2147483647i, -1i));
    let var_2 = vec4<bool>(all(vec2<bool>(true, true)) == any(vec3<bool>(true, true, true)), false, !any(select(vec2<bool>(true, true), vec2<bool>(true, true), global1[_wgslsmith_index_u32(var_0.x, 14u)] <= global0[_wgslsmith_index_u32(1u, 22u)])), u_input.c.x < countOneBits(4294967295u));
    global2 = array<vec2<i32>, 24>();
    return !(!vec2<bool>(var_2.x, false));
}

fn func_2(arg_0: u32) -> u32 {
    global1 = array<f32, 14>();
    var var_0 = ~(-reverseBits(countOneBits(u_input.b)));
    let var_1 = true;
    var var_2 = select(!(!select(select(vec2<bool>(var_1, true), vec2<bool>(true, true), var_1), !vec2<bool>(var_1, var_1), var_1)), !(!func_3(Struct_1(21441i, vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), global0[_wgslsmith_index_u32(arg_0, 22u)]))), 4294967295u != select(~min(1u, 50936u), 2732u, var_1));
    global4 = ~abs(~(~29570u));
    return 13507u;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> vec2<u32> {
    global1 = array<f32, 14>();
    global3 = array<Struct_1, 32>();
    let var_0 = arg_3.b.zz ^ countOneBits(arg_3.b.zx);
    let var_1 = vec2<u32>(u_input.a, ~u_input.d);
    var var_2 = arg_0;
    return vec2<u32>(func_2(~_wgslsmith_add_u32(~var_1.x, ~u_input.a)), 0u);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = Struct_1(_wgslsmith_dot_vec2_i32(-(~global2[_wgslsmith_index_u32(0u, 24u)] | vec2<i32>(-1i, 30616i)), reverseBits(arg_1.b.xx)), vec4<i32>(u_input.b, -1i, _wgslsmith_clamp_i32(i32(-1i) * -28225i, _wgslsmith_div_i32(u_input.b ^ -35469i, 0i), abs(-2147483647i)), u_input.b), global0[_wgslsmith_index_u32(reverseBits(0u), 22u)]);
    let var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(abs(vec4<u32>(u_input.c.x, u_input.c.x, 8262u, 1u))), vec4<u32>(1u, arg_0.x, 0u, 17065u) << (_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, u_input.d, 6395u), vec4<u32>(u_input.d, 0u, 0u, arg_0.x)) % vec4<u32>(32u))), ~(~(~u_input.d)), _wgslsmith_sub_u32(arg_0.x, 1u), ~9424u), firstTrailingBit(firstTrailingBit(vec4<u32>(arg_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(59202u, u_input.d, 49278u)), ~arg_0.x, select(arg_0.x, u_input.c.x, true)))));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, 39191u), 1u), var_1.x), 22u)], _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(min(countOneBits(arg_0.x), _wgslsmith_clamp_u32(9852u, arg_0.x, var_1.x)), 22u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.x >> (4294967295u % 32u), 22u)]))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(913f, 2200f, _wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(49827u, u_input.c.x)) > 1205u)) - global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.c.x, ~18286u), 14u)]), var_0.b.x >= (firstTrailingBit(_wgslsmith_clamp_i32(arg_1.b.x, -11838i, u_input.b)) >> (73610u % 32u))));
    var var_3 = (select(arg_1.b.xww, ~(-var_0.b.wzx), vec3<bool>(any(vec4<bool>(true, false, false, true)), true, u_input.c.x <= 1u)) ^ var_0.b.yxy) >> (~(~var_1.wxz) % vec3<u32>(32u));
    global4 = 11654u;
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1286f, var_2, global1[_wgslsmith_index_u32(1u, 14u)], var_0.c))) - vec4<f32>(-308f, global0[_wgslsmith_index_u32(u_input.a, 22u)], 941f, global0[_wgslsmith_index_u32(1u, 22u)])))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(51999u, 22u)], var_0.c, -1000f, var_0.c))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.c, global1[_wgslsmith_index_u32(arg_0.x, 14u)], global0[_wgslsmith_index_u32(arg_0.x, 22u)], -1000f)))), u_input.b == (-var_3.x ^ ~1i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(16157u, 32u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(func_1(global3[_wgslsmith_index_u32(0u, 32u)], 10288i, -2084i, Struct_1(u_input.b, var_0.b, -1042f)) >> (vec2<u32>(0u, 0u) % vec2<u32>(32u)), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.d, 134377u), 32u)])))));
    var var_2 = ~_wgslsmith_mult_u32(u_input.a, 66007u) << (_wgslsmith_sub_u32(4294967295u, u_input.a) % 32u);
    let var_3 = Struct_1(_wgslsmith_mult_i32(~_wgslsmith_mult_i32(-u_input.b, var_0.b.x), -_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -41028i, u_input.b, u_input.b) ^ var_0.b, countOneBits(var_0.b))), select(~vec4<i32>(u_input.b >> (0u % 32u), 1i, var_0.a, min(u_input.b, u_input.b)), ~var_0.b ^ -_wgslsmith_clamp_vec4_i32(var_0.b, vec4<i32>(var_0.b.x, 1i, 0i, 45373i), var_0.b), true), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-358f + _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(u_input.d, 22u)])))))));
    var_2 = 54193u;
    global3 = array<Struct_1, 32>();
    global3 = array<Struct_1, 32>();
    var var_4 = vec4<u32>(36760u, firstLeadingBit(109624u), _wgslsmith_dot_vec4_u32(max(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 0u, u_input.c.x, 0u) << (vec4<u32>(71948u, u_input.d, u_input.c.x, u_input.a) % vec4<u32>(32u)), vec4<u32>(u_input.d, 1u, u_input.d, 20544u)), ~(~vec4<u32>(4294967295u, u_input.a, 0u, u_input.d))), _wgslsmith_sub_vec4_u32(vec4<u32>(func_1(Struct_1(u_input.b, var_3.b, var_3.c), 17123i, -23954i, var_3).x, u_input.d, 89665u ^ u_input.d, 114116u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 43381u, u_input.d, u_input.a), vec4<u32>(71906u, u_input.a, u_input.a, 1u)) | _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.d, 4294967295u, 4294967295u), vec4<u32>(46609u, u_input.d, u_input.d, 0u)))), 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, _wgslsmith_div_vec2_u32(~(abs(u_input.c.xy) | vec2<u32>(var_4.x, u_input.d)), abs(var_4.yy)), 4294967295u);
}

