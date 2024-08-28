struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec4<i32>, 15> = array<vec4<i32>, 15>(vec4<i32>(-40532i, 2147483647i, -59514i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 9781i, -20458i, -1i), vec4<i32>(1i, -1i, 2147483647i, -1i), vec4<i32>(33980i, -9064i, 0i, -1i), vec4<i32>(i32(-2147483648), -11187i, -8218i, 0i), vec4<i32>(5780i, -1i, -19686i, 2147483647i), vec4<i32>(2147483647i, i32(-2147483648), 45203i, 20710i), vec4<i32>(-66856i, 1i, i32(-2147483648), 7226i), vec4<i32>(26566i, -7448i, -30625i, -18553i), vec4<i32>(-9933i, 2147483647i, 0i, i32(-2147483648)), vec4<i32>(18489i, 31718i, 52062i, 21845i), vec4<i32>(-9858i, i32(-2147483648), -6596i, 42347i), vec4<i32>(13404i, -1i, -14508i, -1i), vec4<i32>(2147483647i, 1i, -20061i, 1i), vec4<i32>(61772i, -28156i, 31152i, 1i));

var<private> global2: vec2<i32> = vec2<i32>(1i, 2147483647i);

var<private> global3: array<bool, 23> = array<bool, 23>(true, true, true, false, true, true, true, true, true, false, true, false, false, true, true, true, true, false, true, true, false, true, false);

var<private> global4: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2) -> i32 {
    var var_0 = -(~vec3<i32>(1i, u_input.a.x << (u_input.d % 32u), abs(u_input.c))) & vec3<i32>(_wgslsmith_clamp_i32(abs(global4.b.x), max(countOneBits(global2.x), 2147483647i), 0i), u_input.c, max(arg_1.b.b.x, ~(~0i)));
    var var_1 = arg_1.c;
    var var_2 = Struct_3(arg_1, Struct_2(abs(~vec3<u32>(1u, arg_1.d, 17690u) | (arg_1.a >> (vec3<u32>(u_input.d, 58775u, u_input.e) % vec3<u32>(32u)))), Struct_1(arg_1.e, vec4<i32>(~arg_1.c.b.x, u_input.b.x, -6481i, -34796i)), arg_1.b, 77143u, _wgslsmith_f_op_vec4_f32(global4.a - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(946f, arg_1.e.x, global4.a.x, -769f))))))), arg_1);
    global2 = (_wgslsmith_clamp_vec2_i32(countOneBits(u_input.b) & u_input.b, var_2.a.c.b.yw, ~vec2<i32>(0i, var_0.x)) >> (firstTrailingBit(var_2.a.a.xy) % vec2<u32>(32u))) & u_input.a.yz;
    var var_3 = arg_1.b;
    return _wgslsmith_mult_i32(25930i, _wgslsmith_div_i32(~min(var_1.b.x, global4.b.x) << (_wgslsmith_mult_u32(max(70691u, 9796u), _wgslsmith_sub_u32(var_2.c.d, u_input.d)) % 32u), -1i));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_3) -> u32 {
    let var_0 = (vec3<i32>(-1i) * -arg_2.a.c.b.wzw) & vec3<i32>(func_3(arg_0.e.zzx, Struct_2(vec3<u32>(4294967295u, 4294967295u, arg_2.b.a.x), arg_2.a.c, Struct_1(arg_2.a.e, vec4<i32>(-9423i, arg_0.c.b.x, u_input.b.x, -2147483647i)), u_input.e | 1u, global4.a)), _wgslsmith_mult_i32(countOneBits(abs(u_input.a.x)), countOneBits(1i) & _wgslsmith_add_i32(global4.b.x, 29236i)), ~(~(-arg_2.a.c.b.x)));
    global4 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -2394f, 999f, arg_2.a.c.a.x)), vec4<i32>(global2.x, ~(-_wgslsmith_mod_i32(global4.b.x, -51746i)), _wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, arg_2.c.b.b.x, global2.x, global4.b.x) >> (select(vec4<u32>(4294967295u, 43623u, 26513u, arg_2.a.a.x), vec4<u32>(arg_0.a.x, 4294967295u, 1u, u_input.d), vec4<bool>(global3[_wgslsmith_index_u32(arg_0.d, 23u)], true, global3[_wgslsmith_index_u32(u_input.d, 23u)], global3[_wgslsmith_index_u32(arg_2.b.d, 23u)])) % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(-27331i, arg_2.b.c.b.x, global2.x, 2147483647i))), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(global4.b.x, u_input.a.x), _wgslsmith_mod_vec2_i32(arg_2.a.b.b.xy, vec2<i32>(-1i, -73101i))), _wgslsmith_dot_vec2_i32(max(vec2<i32>(u_input.c, 0i), global4.b.yy), arg_2.a.c.b.xz))));
    var var_1 = select(!select(select(select(vec4<bool>(global3[_wgslsmith_index_u32(68475u, 23u)], global3[_wgslsmith_index_u32(13573u, 23u)], false, global3[_wgslsmith_index_u32(arg_0.a.x, 23u)]), vec4<bool>(global3[_wgslsmith_index_u32(arg_2.c.a.x, 23u)], global3[_wgslsmith_index_u32(0u, 23u)], true, global3[_wgslsmith_index_u32(31821u, 23u)]), global3[_wgslsmith_index_u32(38151u, 23u)]), select(vec4<bool>(true, global3[_wgslsmith_index_u32(1u, 23u)], false, true), vec4<bool>(false, false, true, false), global3[_wgslsmith_index_u32(arg_0.d, 23u)]), select(vec4<bool>(global3[_wgslsmith_index_u32(arg_2.b.a.x, 23u)], true, global3[_wgslsmith_index_u32(arg_2.c.a.x, 23u)], global3[_wgslsmith_index_u32(arg_2.a.d, 23u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(0u, 23u)], false, true), vec4<bool>(global3[_wgslsmith_index_u32(u_input.d, 23u)], global3[_wgslsmith_index_u32(4294967295u, 23u)], true, global3[_wgslsmith_index_u32(arg_0.a.x, 23u)]))), vec4<bool>(true, true, true, true), (0u | arg_2.b.a.x) != 0u), vec4<bool>(!(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 1u), 23u)] || (global3[_wgslsmith_index_u32(1u, 23u)] | global3[_wgslsmith_index_u32(u_input.e, 23u)])), true, false, true), !select(select(vec4<bool>(true, false, false, global3[_wgslsmith_index_u32(65009u, 23u)]), !vec4<bool>(global3[_wgslsmith_index_u32(66957u, 23u)], true, true, true), !vec4<bool>(true, global3[_wgslsmith_index_u32(0u, 23u)], false, global3[_wgslsmith_index_u32(1u, 23u)])), vec4<bool>(any(vec4<bool>(false, true, global3[_wgslsmith_index_u32(arg_2.b.d, 23u)], global3[_wgslsmith_index_u32(arg_0.a.x, 23u)])), false, global3[_wgslsmith_index_u32(18606u, 23u)] & global3[_wgslsmith_index_u32(arg_0.a.x, 23u)], !global3[_wgslsmith_index_u32(arg_2.a.a.x, 23u)]), global3[_wgslsmith_index_u32(~arg_2.c.d, 23u)]));
    global4 = Struct_1(_wgslsmith_f_op_vec4_f32(-global4.a), _wgslsmith_div_vec4_i32(~(~u_input.a) & arg_0.c.b, _wgslsmith_mod_vec4_i32(u_input.a >> (~vec4<u32>(arg_2.b.d, arg_2.b.d, u_input.e, arg_2.a.a.x) % vec4<u32>(32u)), vec4<i32>(global4.b.x, 1i, arg_0.b.b.x, -global4.b.x))));
    let var_2 = var_0;
    return 4294967295u;
}

fn func_1(arg_0: bool, arg_1: u32) -> Struct_1 {
    global3 = array<bool, 23>();
    var var_0 = global4.a.wyy;
    global1 = array<vec4<i32>, 15>();
    var var_1 = _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(~(~3266u), ~func_2(Struct_2(vec3<u32>(4294967295u, 16766u, 0u), Struct_1(vec4<f32>(-150f, 1066f, var_0.x, -526f), vec4<i32>(2147483647i, global2.x, global2.x, -1i)), Struct_1(global4.a, vec4<i32>(u_input.a.x, 1i, -2147483647i, -52828i)), arg_1, vec4<f32>(-1569f, global4.a.x, global4.a.x, -494f)), u_input.a, Struct_3(Struct_2(vec3<u32>(26211u, 13798u, u_input.e), Struct_1(vec4<f32>(global4.a.x, global4.a.x, global4.a.x, 798f), vec4<i32>(global2.x, -22343i, -2147483647i, 1i)), Struct_1(vec4<f32>(-1017f, -575f, 1236f, var_0.x), global1[_wgslsmith_index_u32(arg_1, 15u)]), arg_1, vec4<f32>(248f, var_0.x, -1061f, -292f)), Struct_2(vec3<u32>(arg_1, 1u, arg_1), Struct_1(vec4<f32>(-1343f, var_0.x, global4.a.x, 166f), vec4<i32>(0i, -1i, global4.b.x, global4.b.x)), Struct_1(global4.a, vec4<i32>(2147483647i, global4.b.x, u_input.c, -1i)), arg_1, vec4<f32>(global4.a.x, 177f, global4.a.x, 716f)), Struct_2(vec3<u32>(u_input.d, arg_1, 73581u), Struct_1(global4.a, global1[_wgslsmith_index_u32(arg_1, 15u)]), Struct_1(global4.a, global1[_wgslsmith_index_u32(u_input.d, 15u)]), u_input.e, global4.a))), min(arg_1 & arg_1, arg_1)), ~vec3<u32>(~arg_1, 11518u, arg_1 | u_input.d)), abs(min(~(vec3<u32>(25057u, arg_1, 0u) ^ vec3<u32>(arg_1, u_input.e, 51310u)), ~(~vec3<u32>(arg_1, 4529u, 4294967295u)))));
    let var_2 = global4.b.yzx;
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(global4.a.x, 1000f), -241f) + var_0.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(101f - _wgslsmith_f_op_f32(select(769f, global4.a.x, global3[_wgslsmith_index_u32(var_1.x, 23u)]))), var_0.x), _wgslsmith_f_op_f32(var_0.x - 1f)), vec4<i32>(~firstLeadingBit(57361i), ~(-global4.b.x), _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(43367i, u_input.b.x, var_2.x, -32569i), vec4<i32>(var_2.x, global4.b.x, u_input.b.x, 0i))), max(global2.x ^ global4.b.x, _wgslsmith_div_i32(global2.x, 0i))) ^ reverseBits(~_wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(global4.b.x, 43953i, u_input.b.x, 2147483647i))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_2 {
    global3 = array<bool, 23>();
    let var_0 = ~(~min(_wgslsmith_div_vec3_u32(abs(vec3<u32>(4294967295u, u_input.e, u_input.d)), vec3<u32>(u_input.e, u_input.d, 137983u) & vec3<u32>(u_input.e, 40874u, u_input.e)), ~vec3<u32>(u_input.d, 42551u, u_input.e) ^ ~vec3<u32>(u_input.e, 1u, u_input.e)));
    var var_1 = Struct_3(Struct_2(~vec3<u32>(12068u, u_input.d << (2147u % 32u), u_input.e), func_1(arg_2.x, u_input.e), arg_1, select(_wgslsmith_sub_u32(64431u, u_input.e), var_0.x, global3[_wgslsmith_index_u32(u_input.e, 23u)]) & 48418u, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -976f), 535f, arg_1.a.x, _wgslsmith_f_op_f32(min(1334f, arg_1.a.x)))))), Struct_2(~var_0 & _wgslsmith_sub_vec3_u32(var_0, var_0), Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global4.a.x, 464f, arg_0.x, 803f))), firstLeadingBit(-arg_1.b)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(global4.a, vec4<f32>(global4.a.x, global4.a.x, -481f, 629f)))), func_1(arg_2.x, ~0u).b), reverseBits(func_2(Struct_2(vec3<u32>(u_input.d, 1u, 35414u), arg_1, arg_1, 4294967295u, vec4<f32>(arg_1.a.x, 1029f, arg_1.a.x, arg_0.x)), vec4<i32>(1i, global2.x, u_input.c, u_input.c) ^ global4.b, Struct_3(Struct_2(var_0, arg_1, Struct_1(vec4<f32>(875f, 1132f, -812f, -689f), global4.b), 14130u, arg_1.a), Struct_2(var_0, arg_1, arg_1, var_0.x, vec4<f32>(-140f, 637f, arg_0.x, -766f)), Struct_2(var_0, arg_1, arg_1, 0u, vec4<f32>(arg_1.a.x, -431f, 658f, arg_1.a.x))))), _wgslsmith_f_op_vec4_f32(-arg_1.a)), Struct_2(_wgslsmith_sub_vec3_u32(var_0, ~var_0), arg_1, arg_1, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 54091u, 1u), var_0) & 1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 795f, 750f, -906f))))));
    var var_2 = func_1(true, _wgslsmith_sub_u32(var_0.x, u_input.d));
    var var_3 = vec4<bool>(true || (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)) == _wgslsmith_f_op_f32(select(2047f, _wgslsmith_f_op_f32(arg_0.x * arg_1.a.x), global3[_wgslsmith_index_u32(u_input.d, 23u)] & global3[_wgslsmith_index_u32(u_input.e, 23u)]))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)))) <= var_1.c.c.a.x, !all(!(!arg_2.wyz)), false);
    return Struct_2(var_0, func_1(true, _wgslsmith_clamp_u32(min(30244u, var_0.x) ^ 1u, _wgslsmith_mod_u32(476u, reverseBits(var_1.c.d)), _wgslsmith_mult_u32(62840u, var_1.b.d))), var_1.c.b, u_input.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 1705f, global4.a.x, -468f) - vec4<f32>(global4.a.x, -1314f, var_1.b.c.a.x, arg_0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.a.yzy;
    global1 = array<vec4<i32>, 15>();
    let var_1 = func_4(global4.a.wwy, func_1(global3[_wgslsmith_index_u32(firstLeadingBit(u_input.d), 23u)], u_input.d), vec4<bool>(!global3[_wgslsmith_index_u32(~0u, 23u)], true, !(_wgslsmith_f_op_f32(309f * -683f) == _wgslsmith_f_op_f32(select(159f, 933f, false))), all(vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.d, 23u)], global3[_wgslsmith_index_u32(abs(u_input.e), 23u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, vec4<u32>(firstTrailingBit(~var_1.a.x), ~(~14570u << (abs(var_1.a.x) % 32u)), ~(u_input.d | u_input.d), ~(~(~u_input.d))), 1224f);
}

