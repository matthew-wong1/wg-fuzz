struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13>;

var<private> global1: array<u32, 24> = array<u32, 24>(56312u, 29165u, 49293u, 14082u, 12869u, 14034u, 20841u, 36260u, 52956u, 9080u, 4294967295u, 0u, 0u, 51222u, 22500u, 4294967295u, 78344u, 25538u, 72019u, 0u, 1u, 1u, 4294967295u, 101941u);

var<private> global2: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(Struct_1(4294967295u, vec2<bool>(true, false), vec4<i32>(1i, 0i, 1979i, 76206i))), Struct_2(Struct_1(4294967295u, vec2<bool>(false, true), vec4<i32>(-4838i, 2147483647i, 53346i, 1i))), Struct_2(Struct_1(36373u, vec2<bool>(false, true), vec4<i32>(23780i, -13470i, i32(-2147483648), 25035i))), Struct_2(Struct_1(4294967295u, vec2<bool>(false, true), vec4<i32>(-1i, -1i, 15379i, -1i))), Struct_2(Struct_1(52216u, vec2<bool>(false, false), vec4<i32>(-1i, 0i, -10435i, -21944i))), Struct_2(Struct_1(1u, vec2<bool>(false, true), vec4<i32>(-1i, 1i, 0i, 1i))), Struct_2(Struct_1(84570u, vec2<bool>(false, false), vec4<i32>(i32(-2147483648), -1i, 46436i, 111023i))), Struct_2(Struct_1(1u, vec2<bool>(true, true), vec4<i32>(2147483647i, -19051i, 2147483647i, -19389i))), Struct_2(Struct_1(52075u, vec2<bool>(true, true), vec4<i32>(56187i, 1i, -34270i, 1i))), Struct_2(Struct_1(1u, vec2<bool>(false, true), vec4<i32>(-1i, -26687i, 52328i, 44405i))), Struct_2(Struct_1(27898u, vec2<bool>(false, false), vec4<i32>(1i, -1i, i32(-2147483648), -22554i))), Struct_2(Struct_1(94091u, vec2<bool>(true, true), vec4<i32>(2147483647i, 9985i, 0i, i32(-2147483648)))), Struct_2(Struct_1(4294967295u, vec2<bool>(true, false), vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, 17544i))), Struct_2(Struct_1(0u, vec2<bool>(true, false), vec4<i32>(-27763i, -8057i, -11617i, -30828i))), Struct_2(Struct_1(1u, vec2<bool>(true, true), vec4<i32>(-32920i, -18128i, 52725i, -51059i))), Struct_2(Struct_1(18467u, vec2<bool>(true, false), vec4<i32>(-25937i, 0i, 11507i, -19804i))), Struct_2(Struct_1(49883u, vec2<bool>(false, false), vec4<i32>(-1i, 0i, i32(-2147483648), 0i))), Struct_2(Struct_1(0u, vec2<bool>(true, true), vec4<i32>(1i, 6318i, 2147483647i, -1i))), Struct_2(Struct_1(0u, vec2<bool>(true, true), vec4<i32>(-1i, 1i, 2147483647i, -53774i))), Struct_2(Struct_1(10705u, vec2<bool>(true, true), vec4<i32>(-20697i, 1i, 0i, 0i))), Struct_2(Struct_1(29157u, vec2<bool>(true, false), vec4<i32>(22098i, 7613i, i32(-2147483648), -33056i))), Struct_2(Struct_1(37955u, vec2<bool>(false, false), vec4<i32>(2147483647i, -34835i, -34036i, 1i))), Struct_2(Struct_1(53893u, vec2<bool>(true, true), vec4<i32>(1i, -1i, 30525i, -1i))), Struct_2(Struct_1(41316u, vec2<bool>(false, false), vec4<i32>(1i, 1i, -35135i, -3135i))), Struct_2(Struct_1(42012u, vec2<bool>(false, true), vec4<i32>(24425i, 41549i, 25546i, -4866i))), Struct_2(Struct_1(4294967295u, vec2<bool>(true, false), vec4<i32>(-1i, -35692i, i32(-2147483648), -17875i))), Struct_2(Struct_1(0u, vec2<bool>(false, false), vec4<i32>(36693i, -8643i, 384i, -28175i))), Struct_2(Struct_1(13291u, vec2<bool>(false, false), vec4<i32>(2147483647i, 2147483647i, -1i, -21621i))), Struct_2(Struct_1(66226u, vec2<bool>(false, true), vec4<i32>(35072i, -18927i, 31749i, 29125i))), Struct_2(Struct_1(22862u, vec2<bool>(true, true), vec4<i32>(2147483647i, 25434i, -25303i, 18491i))));

var<private> global3: array<Struct_2, 5>;

var<private> global4: array<vec2<bool>, 16>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec3<f32>) -> vec3<bool> {
    return !(!vec3<bool>(false, false, all(vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(u_input.d, 13u)], global0[_wgslsmith_index_u32(6796u, 13u)]))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = arg_1.a;
    global4 = array<vec2<bool>, 16>();
    var var_1 = arg_0.x;
    global0 = array<bool, 13>();
    global0 = array<bool, 13>();
    return select(func_1(_wgslsmith_f_op_vec3_f32(-arg_0)).zz, global4[_wgslsmith_index_u32(68921u, 16u)], true);
}

fn func_2() -> u32 {
    let var_0 = !(!select(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u << (~4294967295u % 32u), 24u)], 16u)], !func_3(vec3<f32>(353f, -1000f, 292f), global2[_wgslsmith_index_u32(u_input.b.x, 30u)]), !global4[_wgslsmith_index_u32(u_input.d, 16u)]));
    let var_1 = vec4<bool>(any(!func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 745f, 638f) - vec3<f32>(1130f, -572f, 1088f)))), _wgslsmith_mod_i32(_wgslsmith_mult_i32(~1i, u_input.c.x << (global1[_wgslsmith_index_u32(u_input.d, 24u)] % 32u)), u_input.c.x) > 1i, true, !any(!var_0));
    var var_2 = true;
    global0 = array<bool, 13>();
    var_2 = ((0i < u_input.a.x) || global0[_wgslsmith_index_u32(62178u, 13u)]) | global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, abs(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(72616u, 24u)], 4294967295u))) ^ u_input.d, 13u)];
    return _wgslsmith_mult_u32(~46212u, u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 13u)], !any(vec4<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 24u)], 13u)], true, false, false)), !any(vec2<bool>(false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(117905u, 24u)], 13u)]))), func_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(340f, -289f, 383f) + vec3<f32>(1234f, 1000f, -571f)), vec3<f32>(2521f, 1799f, 699f), select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 13u)], true, global0[_wgslsmith_index_u32(40179u, 13u)]), vec3<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16540u, 24u)], 13u)], true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(52507u, 24u)], 13u)]), false)))), !global0[_wgslsmith_index_u32(func_2(), 13u)]), func_1(vec3<f32>(-1465f, _wgslsmith_f_op_f32(max(-877f, -193f)), _wgslsmith_f_op_f32(-1437f - -629f))), global0[_wgslsmith_index_u32(reverseBits(countOneBits(~55476u) ^ u_input.d), 13u)]);
    let var_1 = 825f;
    global0 = array<bool, 13>();
    var var_2 = firstTrailingBit(~vec3<i32>(-8433i, u_input.e.x, 2147483647i));
    var_2 = u_input.e & min((firstTrailingBit(vec3<i32>(21949i, 29928i, 30815i)) & _wgslsmith_add_vec3_i32(u_input.e, u_input.e)) << (vec3<u32>(abs(global1[_wgslsmith_index_u32(u_input.b.x, 24u)]), global1[_wgslsmith_index_u32(4294967295u, 24u)], 1u) % vec3<u32>(32u)), vec3<i32>(var_2.x, 28658i, i32(-1i) * -22919i) >> (countOneBits(abs(vec3<u32>(0u, u_input.b.x, 3807u))) % vec3<u32>(32u)));
    let var_3 = max(countOneBits(~vec4<u32>(global1[_wgslsmith_index_u32(~u_input.d, 24u)], 18579u >> (global1[_wgslsmith_index_u32(5571u, 24u)] % 32u), 1383u, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 12330u, u_input.b.x), 24u)])), ~((firstLeadingBit(vec4<u32>(u_input.d, 15480u, global1[_wgslsmith_index_u32(u_input.b.x, 24u)], u_input.d)) >> (vec4<u32>(94774u, 41679u, 0u, global1[_wgslsmith_index_u32(u_input.b.x, 24u)]) % vec4<u32>(32u))) | vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 20998u), u_input.b), ~4294967295u, min(39126u, 2781u), max(1u, u_input.b.x))));
    var var_4 = ~vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(2147483647i, ~var_2.x), firstLeadingBit(~(-9787i))), var_2.x, ~(var_2.x & 2147483647i), u_input.a.x);
    global3 = array<Struct_2, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-521f - var_1))), var_1, -1214f, -721f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 324f, var_1, -251f) * vec4<f32>(var_1, -1409f, -1039f, 583f)), vec4<f32>(-108f, -1000f, -806f, -1000f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, 777f, 142f, var_1), vec4<f32>(var_1, -1000f, var_1, -1487f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1018f, 705f, 1000f, 648f)))))), ~var_2.x);
}

