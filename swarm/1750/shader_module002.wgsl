struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<u32>,
    d: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: Struct_4 = Struct_4(1u, vec4<i32>(0i, 64869i, -13655i, -58211i), vec4<u32>(35649u, 22765u, 4294967295u, 4294967295u), vec4<i32>(11189i, -27340i, 2147483647i, 1i), vec3<u32>(63714u, 0u, 9506u));

var<private> global2: array<i32, 4>;

var<private> global3: Struct_5 = Struct_5(Struct_4(4294967295u, vec4<i32>(26848i, -17376i, 1i, -7035i), vec4<u32>(1u, 27985u, 48049u, 4294967295u), vec4<i32>(2147483647i, i32(-2147483648), -16496i, -33226i), vec3<u32>(70077u, 8592u, 1u)), vec3<f32>(-1461f, -1000f, 503f), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_4(29126u, vec4<i32>(9926i, 51101i, 6053i, -22099i), vec4<u32>(16350u, 1u, 52805u, 4294967295u), vec4<i32>(-28600i, -27735i, i32(-2147483648), 0i), vec3<u32>(69u, 1u, 1u)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_4, arg_3: i32) -> u32 {
    let var_0 = Struct_2(~(-_wgslsmith_dot_vec2_i32(vec2<i32>(938i, u_input.d), vec2<i32>(arg_1, arg_2.b.x))), Struct_1(select(!(!global3.c.a), vec2<bool>(global3.c.a.x, global3.d.a.x), all(select(vec4<bool>(true, global3.d.a.x, global3.c.a.x, global3.c.a.x), vec4<bool>(global3.d.a.x, global3.d.a.x, true, false), vec4<bool>(global3.c.a.x, global3.c.a.x, false, global3.c.a.x))))), ~(~(~(vec4<u32>(1u, 25870u, arg_2.a, arg_2.e.x) | vec4<u32>(arg_2.c.x, 0u, 1u, 53994u)))), -max(-min(2147483647i, 0i), -arg_3));
    let var_1 = Struct_5(Struct_4(8520u, vec4<i32>(0i, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_3, -32441i, 1i), vec3<i32>(arg_3, -2147483647i, arg_3)), ~global3.e.d.xww), -(~arg_3), var_0.d), global1.c, -(~max(vec4<i32>(-1i, global3.a.d.x, global3.a.d.x, 42146i), vec4<i32>(27314i, arg_2.b.x, 2147483647i, 0i))), vec3<u32>(_wgslsmith_mod_u32(~global1.a, 1u), 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, global3.e.a, 0u, u_input.c) | vec4<u32>(u_input.c, 26166u, arg_2.c.x, global3.a.a), abs(vec4<u32>(global1.a, arg_2.a, 57788u, arg_2.c.x))))), _wgslsmith_f_op_vec3_f32(-global3.b), Struct_1(!(!select(var_0.b.a, global3.d.a, vec2<bool>(var_0.b.a.x, global3.d.a.x)))), var_0.b, Struct_4(reverseBits(4294967295u), vec4<i32>(~reverseBits(global2[_wgslsmith_index_u32(38895u, 4u)]), 2147483647i, global1.d.x << (4294967295u % 32u), -2147483647i), vec4<u32>(1u, 57046u, ~1u, ~var_0.c.x) | vec4<u32>(1u, arg_2.c.x, ~global1.a, 18717u), vec4<i32>(arg_1, arg_2.b.x, -14327i, ~arg_1) | vec4<i32>(0i, _wgslsmith_dot_vec2_i32(global3.a.d.ww, vec2<i32>(11944i, arg_2.b.x)), global2[_wgslsmith_index_u32(global1.a, 4u)], -u_input.d), max(firstLeadingBit(arg_2.e), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(92846u, global1.c.x, 4294967295u), global1.e, global3.e.c.wwx))));
    let var_2 = _wgslsmith_mod_vec4_i32(max(vec4<i32>(arg_2.b.x & _wgslsmith_add_i32(1i, -2147483647i), var_1.a.b.x, 1i, _wgslsmith_mod_i32(22573i, abs(arg_2.b.x))), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1, -11962i, 19567i, -2147483647i) | vec4<i32>(var_0.d, global3.a.b.x, u_input.d, global3.e.b.x), countOneBits(~vec4<i32>(u_input.d, var_1.a.b.x, var_1.a.d.x, -42195i)))), abs(_wgslsmith_div_vec4_i32(firstTrailingBit(-var_1.a.b), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(1u, 4u)], arg_3, -1i), vec4<i32>(0i, global3.e.b.x, 1i, global1.b.x))))));
    var var_3 = 26225u;
    let var_4 = var_0;
    return _wgslsmith_mod_u32(var_0.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(33478u, 13154u, var_4.c.x), ~firstTrailingBit(vec3<u32>(73344u, u_input.c, global3.a.a))));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = ~(~abs(~(~vec3<u32>(62065u, global3.e.c.x, arg_1))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(global3.b.yy)), _wgslsmith_f_op_vec2_f32(-global3.b.yx), global2[_wgslsmith_index_u32(60028u, 4u)] < 1i)))));
    let var_2 = global3.a;
    global1 = Struct_4(~func_3(vec4<f32>(1944f, var_1.x, -1377f, 260f), -1i, global3.e, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(54180u, 9594u), 4u)]) << (firstLeadingBit(arg_1) % 32u), -vec4<i32>(1i, global1.d.x, _wgslsmith_mod_i32(~2147483647i, _wgslsmith_dot_vec3_i32(var_2.b.zxx, vec3<i32>(45795i, global2[_wgslsmith_index_u32(20782u, 4u)], 15388i))), min(-13368i, -8406i)), vec4<u32>(arg_1, 65338u, ~global1.e.x, firstTrailingBit(var_2.a)) >> (var_2.c % vec4<u32>(32u)), ~vec4<i32>(global2[_wgslsmith_index_u32(15007u, 4u)], _wgslsmith_dot_vec2_i32(global1.d.xy, vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 4u)], u_input.d)), _wgslsmith_add_i32(-1i, 10111i), _wgslsmith_dot_vec4_i32(var_2.d, var_2.b)) << (~global3.e.c % vec4<u32>(32u)), ~(~vec3<u32>(1u, _wgslsmith_div_u32(global3.e.e.x, 65808u), ~41986u)));
    let var_3 = any(!select(global3.c.a, !arg_2.a, select(arg_2.a, arg_2.a, false))) & false;
    return Struct_1(select(select(global3.d.a, select(!vec2<bool>(var_3, true), select(vec2<bool>(arg_2.a.x, true), arg_2.a, false), true), true), !vec2<bool>(global3.c.a.x, 2487i == var_2.d.x), !select(vec2<bool>(false, var_3), !vec2<bool>(var_3, true), !vec2<bool>(global3.d.a.x, true))));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: i32) -> Struct_1 {
    global3 = Struct_5(global3.e, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-110f, -816f, arg_0.x), global3.b)), _wgslsmith_f_op_vec3_f32(arg_0 - _wgslsmith_f_op_vec3_f32(arg_0 + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.x, global3.b.x, -1000f))))), func_2(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(74986u, 0u, 4294967295u), abs(u_input.c)), ~(vec2<u32>(48246u, global3.a.a) ^ global1.c.ww)), 43224u, global3.c), func_2(global3.a.c.wx, ~u_input.b, global3.d), global3.a);
    var var_0 = true;
    var var_1 = Struct_3(max(~17773i, 2147483647i) > u_input.d, Struct_2(-18992i, Struct_1(global3.c.a), global1.c, _wgslsmith_add_i32(global1.b.x, -22217i)));
    let var_2 = Struct_4(~0u, vec4<i32>(0i, -1i, var_1.b.a, ~(~_wgslsmith_dot_vec2_i32(global3.e.d.yw, vec2<i32>(-1i, var_1.b.a)))), ~(~(_wgslsmith_mult_vec4_u32(global3.a.c, vec4<u32>(u_input.a, 29285u, 0u, u_input.c)) | vec4<u32>(19906u, 95219u, global1.c.x, 36249u))), ~firstLeadingBit(_wgslsmith_clamp_vec4_i32(max(global3.a.d, global1.b), vec4<i32>(-1i, -1i, global3.a.d.x, -2147483647i), vec4<i32>(arg_2, -5982i, arg_2, 1i))), _wgslsmith_mod_vec3_u32(~vec3<u32>(var_1.b.c.x << (1u % 32u), ~u_input.a, ~global1.a), vec3<u32>(~u_input.a, u_input.b, ~var_1.b.c.x & _wgslsmith_div_u32(global3.a.c.x, 19412u))));
    let var_3 = Struct_5(Struct_4(_wgslsmith_dot_vec2_u32(~max(global3.a.e.yx, global3.e.c.wx), ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(20491u, global1.c.x))), var_2.b, abs(var_1.b.c), ~(~vec4<i32>(-2147483647i, -1i, 2147483647i, -11319i)), vec3<u32>(~max(4037u, 0u), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(24228u, 36978u, 4294967295u), var_2.c.yww), vec3<u32>(global1.e.x, global3.a.e.x, var_1.b.c.x)), countOneBits(~5611u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-585f, 201f, _wgslsmith_f_op_f32(f32(-1f) * -1399f)))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(224f, arg_0.x, -458f), arg_0))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(arg_0, arg_0, vec3<bool>(true, arg_1, var_1.a))), _wgslsmith_f_op_vec3_f32(-arg_0), select(vec3<bool>(false, true, global3.d.a.x), vec3<bool>(false, var_1.a, true), false)))))), Struct_1(func_2((vec2<u32>(u_input.c, 0u) | vec2<u32>(4294967295u, 38963u)) & vec2<u32>(1u, 1u), countOneBits(_wgslsmith_clamp_u32(global1.c.x, 8128u, var_1.b.c.x)), Struct_1(select(vec2<bool>(global3.c.a.x, true), var_1.b.b.a, vec2<bool>(var_1.a, arg_1)))).a), func_2(global1.e.zz, 49470u, Struct_1(var_1.b.b.a)), global3.a);
    return global0[_wgslsmith_index_u32(0u, 23u)];
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: Struct_5, arg_3: f32) -> vec3<u32> {
    let var_0 = global3.a.b.x;
    var var_1 = _wgslsmith_mult_u32(func_3(vec4<f32>(-1000f, _wgslsmith_f_op_f32(min(566f, arg_2.b.x)), arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -138f)), global1.d.x, arg_2.e, firstTrailingBit(u_input.d)), min(min(global3.e.c.x, global1.c.x) >> (45690u % 32u), ~_wgslsmith_mult_u32(24526u, global3.e.c.x))) >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, global3.e.c.x | 47587u), ~_wgslsmith_mod_vec2_u32(global3.e.e.xy, _wgslsmith_div_vec2_u32(global3.a.e.yz, global1.e.yz))) % 32u);
    var var_2 = arg_2;
    global0 = array<Struct_1, 23>();
    let var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1383f, arg_2.b.x)), _wgslsmith_f_op_f32(609f - arg_3), true)), global3.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(var_2.b.zy, vec2<f32>(var_2.b.x, -246f)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(357f, var_2.b.x), vec2<f32>(arg_0.x, global3.b.x), vec2<bool>(global3.d.a.x, true))))))) - vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1535f * arg_3), var_2.b.x), 960f))));
    return vec3<u32>(global3.e.e.x, _wgslsmith_sub_u32(abs(abs(arg_2.a.c.x)) << (var_2.e.c.x % 32u), 1u), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-805f, -1949f));
    var var_1 = all(vec3<bool>(false, global3.d.a.x, true));
    let var_2 = ~(~(~0u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(select(~(~global3.a.b), min(~global1.d, global3.a.b), _wgslsmith_f_op_f32(-global3.b.x) > _wgslsmith_f_op_f32(-1000f * 2442f)), -global3.a.b, global3.e.b), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(firstTrailingBit(~global1.e), ~vec3<u32>(var_2, 1u, global1.c.x), vec3<u32>(11410u, firstLeadingBit(1u), ~global1.e.x)), func_4(global3.b, abs(global3.e.b.xxx), Struct_5(Struct_4(global1.e.x, vec4<i32>(48552i, global1.b.x, -29630i, 1i), vec4<u32>(global1.a, global3.a.c.x, global1.a, global1.a), vec4<i32>(u_input.d, -1i, global2[_wgslsmith_index_u32(0u, 4u)], u_input.d), global3.a.c.wxz), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.b.x, -1000f, global3.b.x), global3.b, vec3<bool>(global3.c.a.x, true, global3.c.a.x))), func_1(global3.b, true, 2147483647i), func_1(global3.b, global3.c.a.x, -1875i), global3.a), 2191f)), max(var_2 ^ global1.c.x, 4294967295u), 2147483647i, u_input.d);
}

