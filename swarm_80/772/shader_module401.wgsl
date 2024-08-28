struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: Struct_1,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 23> = array<vec4<i32>, 23>(vec4<i32>(1i, 15763i, 1673i, 2147483647i), vec4<i32>(42876i, 2147483647i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-22544i, -20181i, -1i, 0i), vec4<i32>(56711i, -32968i, 942i, 29953i), vec4<i32>(37543i, -7984i, 2147483647i, -1i), vec4<i32>(-8540i, -45897i, 25312i, 0i), vec4<i32>(-10429i, 49973i, 5757i, -1i), vec4<i32>(i32(-2147483648), -28344i, -1i, -1i), vec4<i32>(1i, 12996i, 8364i, 2147483647i), vec4<i32>(-1i, 0i, i32(-2147483648), 1i), vec4<i32>(-1i, -27137i, 2147483647i, 1i), vec4<i32>(14010i, 0i, 0i, 0i), vec4<i32>(i32(-2147483648), 2147483647i, -7449i, -32308i), vec4<i32>(-36378i, 8745i, -9391i, i32(-2147483648)), vec4<i32>(-20205i, -3029i, -1i, -43017i), vec4<i32>(-29277i, -17900i, -11279i, -17006i), vec4<i32>(i32(-2147483648), -20996i, 26229i, 17427i), vec4<i32>(-7777i, -1i, 1i, 2147483647i), vec4<i32>(-51220i, 2147483647i, 27906i, -1i), vec4<i32>(i32(-2147483648), 0i, 2147483647i, -75299i), vec4<i32>(1i, 104908i, -13961i, i32(-2147483648)), vec4<i32>(17972i, 5071i, 30885i, 16943i), vec4<i32>(31797i, -37702i, 34862i, 2147483647i));

var<private> global1: vec4<f32> = vec4<f32>(-1364f, 304f, 135f, 1153f);

var<private> global2: array<u32, 12>;

var<private> global3: Struct_3;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> i32 {
    global0 = array<vec4<i32>, 23>();
    let var_0 = Struct_1(firstTrailingBit(~vec2<i32>(-2147483647i, firstLeadingBit(global3.c.b.x))), vec4<i32>(_wgslsmith_clamp_i32(u_input.c.x, _wgslsmith_clamp_i32(arg_0.b.x << (global2[_wgslsmith_index_u32(64236u, 12u)] % 32u), reverseBits(27051i), arg_0.c.x), -firstTrailingBit(global3.c.c.x)), ~u_input.c.x, -48537i, -2147483647i), global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(u_input.b.x, 0u)), 23u)]);
    global2 = array<u32, 12>();
    global0 = array<vec4<i32>, 23>();
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), global1.x);
    return ~(-_wgslsmith_sub_i32(~(arg_0.b.x & 39192i), 1i));
}

fn func_2(arg_0: i32, arg_1: Struct_3) -> vec3<bool> {
    global3 = arg_1;
    global3 = Struct_3(true | global3.b.x, !(!global3.b), Struct_1(u_input.a.xy, vec4<i32>(-reverseBits(arg_1.c.c.x), func_3(Struct_1(global3.c.c.xw, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 12u)], 12u)], 23u)], vec4<i32>(-6634i, -23391i, -1i, global3.c.b.x)), _wgslsmith_clamp_u32(u_input.b.x, 1u, 1u)), 24387i, _wgslsmith_dot_vec2_i32(global3.c.a, vec2<i32>(5089i, 2147483647i) >> (u_input.b.zw % vec2<u32>(32u)))), _wgslsmith_add_vec4_i32(~vec4<i32>(0i, arg_0, -1i, global3.c.c.x), vec4<i32>(arg_0, -u_input.c.x, -53014i, 204i))), true && ((_wgslsmith_clamp_i32(global3.c.b.x, u_input.a.x, 0i) > ~1i) | global3.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-530f + 345f))));
    global2 = array<u32, 12>();
    var var_0 = u_input.b.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.e + -759f)) - -687f));
    return select(select(vec3<bool>(all(!arg_1.b), (u_input.b.x <= 0u) || (global2[_wgslsmith_index_u32(61206u, 12u)] <= global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 12u)], 12u)]), true), !select(select(vec3<bool>(true, arg_1.b.x, arg_1.b.x), vec3<bool>(false, global3.d, true), arg_1.b), !arg_1.b, true), arg_1.b), !arg_1.b, (~1u << (abs(max(u_input.b.x, 4294967295u)) % 32u)) != ~(~(~4294967295u)));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global3.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.e * -147f) + _wgslsmith_f_op_f32(select(-1315f, -697f, arg_0.b.x))), 529f))));
    var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -362f)))), 221f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -276f) * 407f)), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1279f, _wgslsmith_div_f32(-2212f, var_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e) * -193f), var_0.x));
    return global3.c;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_2) -> vec4<f32> {
    let var_0 = global1.x;
    var var_1 = _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(-min(countOneBits(vec4<i32>(-15421i, u_input.c.x, global3.c.b.x, global3.c.a.x)), func_4(Struct_3(true, global3.b, Struct_1(global3.c.a, vec4<i32>(2147483647i, u_input.c.x, arg_2.d.x, -32996i), vec4<i32>(u_input.a.x, -26489i, arg_2.e.c.x, -2147483647i)), false, -1132f)).c), firstLeadingBit(max(arg_2.b.c, vec4<i32>(-32497i, arg_2.d.x, 2147483647i, 45550i))), arg_1), vec4<i32>(1i, select(2147483647i, 1i, all(vec4<bool>(true, global3.b.x, true, global3.a))), 2147483647i, u_input.c.x) & arg_0.c);
    let var_2 = arg_2;
    let var_3 = Struct_2(~(~(-(~(-10394i)))), func_4(Struct_3(true, select(!global3.b, global3.b, select(vec3<bool>(false, true, arg_2.c), global3.b, vec3<bool>(global3.b.x, var_2.c, arg_2.c))), func_4(Struct_3(false, vec3<bool>(false, var_2.c, false), Struct_1(arg_1.wz, vec4<i32>(0i, -1i, 2147483647i, var_2.e.b.x), global3.c.b), false, global3.e)), any(select(vec2<bool>(false, global3.d), vec2<bool>(global3.d, false), global3.b.x)), _wgslsmith_f_op_f32(-1536f * -1291f))), !(global3.e == _wgslsmith_f_op_f32(ceil(649f))), vec2<i32>(_wgslsmith_mult_i32(abs(arg_2.a) << (~111133u % 32u), -arg_1.x), u_input.c.x << (_wgslsmith_add_u32(min(41768u, u_input.b.x), 4294967295u & u_input.b.x) % 32u)), arg_0);
    global3 = Struct_3(var_3.c, !(!global3.b), func_4(Struct_3(true, select(!global3.b, vec3<bool>(global3.a, false, var_3.c), global3.b), func_4(Struct_3(true, global3.b, arg_0, true, global1.x)), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1230f + -1068f) - _wgslsmith_f_op_f32(floor(global3.e))))), false, global1.x);
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global1.x, global1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global3.e, global1.x, -1231f) + vec4<f32>(global3.e, -330f, global1.x, global1.x)))))));
}

fn func_1() -> Struct_3 {
    global0 = array<vec4<i32>, 23>();
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global1.x * -1444f), _wgslsmith_f_op_f32(round(global1.x)), _wgslsmith_f_op_f32(global3.e + 1383f), -711f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, -770f, 1456f)) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(418f, 578f, -635f, 1080f)))))), _wgslsmith_f_op_vec4_f32(func_5(func_4(Struct_3(true, func_2(-5235i, Struct_3(true, vec3<bool>(global3.a, global3.b.x, false), global3.c, global3.d, global1.x)), global3.c, false, global3.e)), vec4<i32>(u_input.c.x, global3.c.c.x, global3.c.b.x, u_input.c.x), Struct_2(u_input.a.x, Struct_1(vec2<i32>(global3.c.c.x, -1i), vec4<i32>(-2147483647i, u_input.a.x, u_input.c.x, 2147483647i) >> (vec4<u32>(global2[_wgslsmith_index_u32(16588u, 12u)], u_input.b.x, global2[_wgslsmith_index_u32(1u, 12u)], 0u) % vec4<u32>(32u)), global3.c.b), true, countOneBits(global3.c.a), func_4(Struct_3(global3.b.x, global3.b, Struct_1(vec2<i32>(global3.c.c.x, -2147483647i), global3.c.c, global3.c.c), true, 2409f)))))));
    let var_1 = Struct_3(_wgslsmith_dot_vec2_u32(reverseBits(u_input.b.ww), max(_wgslsmith_mult_vec2_u32(u_input.b.yx, vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(14556u, 12u)], 12u)], 0u)), _wgslsmith_clamp_vec2_u32(u_input.b.yx, u_input.b.yw, u_input.b.wz))) >= firstTrailingBit(_wgslsmith_dot_vec4_u32(~u_input.b, ~u_input.b)), select(select(global3.b, select(select(vec3<bool>(false, false, false), global3.b, false), global3.b, !vec3<bool>(global3.b.x, global3.a, false)), !vec3<bool>(global3.b.x, global3.d, true)), vec3<bool>(!(!global3.d), true, !all(vec4<bool>(false, global3.a, global3.d, global3.a))), true), func_4(Struct_3(global3.a, vec3<bool>(any(global3.b), any(global3.b), false), Struct_1(~u_input.c, min(global0[_wgslsmith_index_u32(4294967295u, 23u)], vec4<i32>(33373i, global3.c.a.x, global3.c.a.x, 39874i)), vec4<i32>(global3.c.c.x, u_input.c.x, global3.c.c.x, 2723i) >> (u_input.b % vec4<u32>(32u))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1182f)))), func_2(2147483647i, Struct_3(true, func_2(global3.c.c.x, Struct_3(global3.a, vec3<bool>(global3.b.x, global3.b.x, global3.a), Struct_1(u_input.c, vec4<i32>(global3.c.a.x, -64957i, -70960i, u_input.a.x), vec4<i32>(-1i, global3.c.c.x, -1i, u_input.c.x)), global3.b.x, 610f)), func_4(Struct_3(false, vec3<bool>(global3.d, true, global3.a), global3.c, false, global1.x)), global3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(555f + global1.x)))).x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-120f, _wgslsmith_f_op_f32(min(global1.x, _wgslsmith_f_op_f32(-global1.x))), (global3.b.x & global3.b.x) && !global3.b.x)))));
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_0)) * _wgslsmith_f_op_vec4_f32(round(var_0)));
    global1 = _wgslsmith_f_op_vec4_f32(var_0 - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_0.x, -584f), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-1189f * -403f), -104f)))));
    return var_1;
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2) -> vec3<bool> {
    global2 = array<u32, 12>();
    global1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -595f), _wgslsmith_f_op_f32(1000f * arg_1.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.e)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_div_f32(arg_1.e, global1.x)))), arg_0.e);
    global0 = array<vec4<i32>, 23>();
    var var_0 = countOneBits(global0[_wgslsmith_index_u32(24760u, 23u)]);
    let var_1 = func_1();
    return select(arg_1.b, func_1().b, false);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 12>();
    let var_0 = 189f;
    var var_1 = Struct_3(select(all(vec3<bool>(!global3.b.x, global3.a, global3.d)), _wgslsmith_div_u32(global2[_wgslsmith_index_u32(22259u, 12u)], _wgslsmith_dot_vec3_u32(u_input.b.xww, u_input.b.wzx)) == 4294967295u, false), func_6(func_1(), Struct_3(true, global3.b, Struct_1(-vec2<i32>(global3.c.a.x, global3.c.a.x), -global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 23u)]), global3.a, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(120f, 881f), var_0, !global3.a))), Struct_2(-2147483647i, Struct_1(~vec2<i32>(global3.c.c.x, global3.c.a.x), global3.c.c, abs(vec4<i32>(u_input.a.x, global3.c.b.x, global3.c.a.x, u_input.a.x))), global3.a, vec2<i32>(1i, 36914i), func_4(func_1()))), Struct_1(-(~_wgslsmith_sub_vec2_i32(global3.c.b.yy, vec2<i32>(global3.c.a.x, 13303i))), global3.c.b, -(~(vec4<i32>(u_input.c.x, u_input.a.x, 2569i, 11438i) << (vec4<u32>(0u, global2[_wgslsmith_index_u32(u_input.b.x, 12u)], 1u, 85872u) % vec4<u32>(32u))))), !(any(global3.b.zx) == (true & !global3.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.x - global1.x), _wgslsmith_f_op_f32(ceil(var_0)), all(vec2<bool>(false, true)))), global1.x))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global1.yw)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.e, -1101f))), vec2<f32>(func_1().e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-208f)))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-826f, -764f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.zx))) * global1.yw) * vec2<f32>(1584f, -1203f));
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(round(var_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -371f) - -1655f), 1207f, 398f);
    var var_5 = Struct_2(func_3(var_1.c, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, _wgslsmith_dot_vec4_u32(u_input.b, u_input.b)) & ~26394u, 12u)]), func_1().c, func_2(max(-40079i, 2147483647i >> (u_input.b.x % 32u)), func_1()).x, func_1().c.c.yz, func_1().c);
    var var_6 = Struct_2(_wgslsmith_dot_vec4_i32(-vec4<i32>(-38658i, var_1.c.b.x, 2147483647i, u_input.c.x), _wgslsmith_mod_vec4_i32(global0[_wgslsmith_index_u32(~1u, 23u)], func_1().c.c)) | (~(-u_input.c.x) << (~0u % 32u)), func_1().c, var_1.d, func_4(func_1()).c.yx, Struct_1((vec2<i32>(global3.c.c.x, u_input.c.x) | global3.c.b.yx) >> (_wgslsmith_mod_vec2_u32(u_input.b.zy, vec2<u32>(u_input.b.x, u_input.b.x)) % vec2<u32>(32u)), vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c.a.x, global3.c.a.x), var_1.c.c.zw), 1i, -52730i), _wgslsmith_dot_vec2_i32(-var_1.c.c.xz, ~vec2<i32>(var_1.c.b.x, -30912i)), var_1.c.b.x, _wgslsmith_sub_i32(i32(-1i) * -47337i, -24997i)), ~var_1.c.c));
    var var_7 = Struct_3(!any(select(vec4<bool>(false, global3.a, false, var_5.c), vec4<bool>(true, var_5.c, var_6.c, false), func_2(var_6.a, Struct_3(false, vec3<bool>(var_6.c, false, var_6.c), Struct_1(var_6.b.b.zy, global3.c.c, vec4<i32>(var_1.c.a.x, var_6.d.x, -1i, var_5.b.a.x)), var_6.c, var_1.e)).x)), var_1.b, global3.c, any(global3.b), var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(i32(-1i) * -1i), ~(~(~(~vec4<u32>(87679u, 30416u, global2[_wgslsmith_index_u32(12078u, 12u)], global2[_wgslsmith_index_u32(u_input.b.x, 12u)])))), u_input.a.zx);
}

