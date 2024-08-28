struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec2<bool>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: f32,
    d: Struct_3,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 16>;

var<private> global1: array<vec3<i32>, 23>;

var<private> global2: array<Struct_5, 25> = array<Struct_5, 25>(Struct_5(vec2<bool>(true, false), Struct_2(vec3<i32>(-20683i, 2147483647i, -10193i), Struct_1(vec3<f32>(1805f, -344f, 480f), vec2<u32>(11413u, 4294967295u), vec2<bool>(true, false), 1i, 77011u))), Struct_5(vec2<bool>(false, true), Struct_2(vec3<i32>(-1i, 1i, -1i), Struct_1(vec3<f32>(-118f, -654f, 1406f), vec2<u32>(25200u, 0u), vec2<bool>(true, true), -9343i, 35138u))), Struct_5(vec2<bool>(true, false), Struct_2(vec3<i32>(-1i, i32(-2147483648), -1i), Struct_1(vec3<f32>(-745f, -1070f, 584f), vec2<u32>(0u, 37606u), vec2<bool>(false, true), 2147483647i, 32518u))), Struct_5(vec2<bool>(false, false), Struct_2(vec3<i32>(1i, -1i, 13247i), Struct_1(vec3<f32>(1000f, -163f, 393f), vec2<u32>(1u, 1u), vec2<bool>(true, false), -17059i, 31605u))), Struct_5(vec2<bool>(false, true), Struct_2(vec3<i32>(-22301i, 0i, -3662i), Struct_1(vec3<f32>(548f, 582f, -1048f), vec2<u32>(64276u, 10269u), vec2<bool>(true, true), 0i, 9216u))), Struct_5(vec2<bool>(false, false), Struct_2(vec3<i32>(1198i, i32(-2147483648), -7510i), Struct_1(vec3<f32>(436f, 2091f, 500f), vec2<u32>(25030u, 4294967295u), vec2<bool>(true, false), 7472i, 0u))), Struct_5(vec2<bool>(true, true), Struct_2(vec3<i32>(2147483647i, -29151i, 24966i), Struct_1(vec3<f32>(-694f, -1323f, 925f), vec2<u32>(5649u, 4294967295u), vec2<bool>(true, false), 1i, 1u))), Struct_5(vec2<bool>(false, true), Struct_2(vec3<i32>(-1i, i32(-2147483648), 40399i), Struct_1(vec3<f32>(-984f, -566f, -1000f), vec2<u32>(0u, 97294u), vec2<bool>(false, true), 1i, 12586u))), Struct_5(vec2<bool>(false, false), Struct_2(vec3<i32>(0i, -2038i, 51957i), Struct_1(vec3<f32>(321f, -1000f, 794f), vec2<u32>(4294967295u, 18516u), vec2<bool>(true, true), 44224i, 21944u))), Struct_5(vec2<bool>(false, false), Struct_2(vec3<i32>(0i, 2147483647i, 1i), Struct_1(vec3<f32>(1401f, 813f, 1184f), vec2<u32>(20525u, 1u), vec2<bool>(true, false), 32080i, 0u))), Struct_5(vec2<bool>(true, false), Struct_2(vec3<i32>(-1i, -19596i, -29894i), Struct_1(vec3<f32>(-172f, -551f, -2116f), vec2<u32>(4294967295u, 37256u), vec2<bool>(false, true), i32(-2147483648), 22693u))), Struct_5(vec2<bool>(true, true), Struct_2(vec3<i32>(-26947i, 55i, -36652i), Struct_1(vec3<f32>(-2397f, -959f, -386f), vec2<u32>(72920u, 1u), vec2<bool>(false, true), 1i, 6977u))), Struct_5(vec2<bool>(true, true), Struct_2(vec3<i32>(2147483647i, 43292i, 2147483647i), Struct_1(vec3<f32>(-619f, 2311f, 1000f), vec2<u32>(8368u, 26246u), vec2<bool>(false, false), -28036i, 63325u))), Struct_5(vec2<bool>(true, true), Struct_2(vec3<i32>(-35273i, -1i, 8672i), Struct_1(vec3<f32>(221f, -1092f, -1000f), vec2<u32>(48274u, 28531u), vec2<bool>(true, false), -57596i, 38176u))), Struct_5(vec2<bool>(false, false), Struct_2(vec3<i32>(29745i, 2147483647i, -1i), Struct_1(vec3<f32>(1972f, 366f, 782f), vec2<u32>(4294967295u, 6166u), vec2<bool>(false, true), -1i, 0u))), Struct_5(vec2<bool>(false, true), Struct_2(vec3<i32>(-1885i, 0i, -20025i), Struct_1(vec3<f32>(961f, -2491f, 936f), vec2<u32>(4294967295u, 22916u), vec2<bool>(false, false), i32(-2147483648), 39983u))), Struct_5(vec2<bool>(false, false), Struct_2(vec3<i32>(-48369i, 32770i, i32(-2147483648)), Struct_1(vec3<f32>(1201f, 173f, -1667f), vec2<u32>(45206u, 99488u), vec2<bool>(false, true), -49596i, 3564u))), Struct_5(vec2<bool>(false, false), Struct_2(vec3<i32>(-1i, 1i, 1i), Struct_1(vec3<f32>(1433f, 767f, -181f), vec2<u32>(20579u, 10160u), vec2<bool>(false, true), 19674i, 1u))), Struct_5(vec2<bool>(false, false), Struct_2(vec3<i32>(-23966i, -1i, 13269i), Struct_1(vec3<f32>(447f, 583f, 164f), vec2<u32>(0u, 1u), vec2<bool>(false, false), 1i, 0u))), Struct_5(vec2<bool>(true, true), Struct_2(vec3<i32>(27720i, 2147483647i, 1i), Struct_1(vec3<f32>(-292f, -843f, -1266f), vec2<u32>(45112u, 86251u), vec2<bool>(false, false), -1i, 4294967295u))), Struct_5(vec2<bool>(false, true), Struct_2(vec3<i32>(6615i, -68492i, i32(-2147483648)), Struct_1(vec3<f32>(232f, 445f, -333f), vec2<u32>(4294967295u, 4294967295u), vec2<bool>(true, false), 1i, 29658u))), Struct_5(vec2<bool>(true, false), Struct_2(vec3<i32>(-13346i, -20273i, 35654i), Struct_1(vec3<f32>(-105f, 717f, 2114f), vec2<u32>(8110u, 46741u), vec2<bool>(false, false), 0i, 17580u))), Struct_5(vec2<bool>(false, true), Struct_2(vec3<i32>(43211i, 1i, -1i), Struct_1(vec3<f32>(-1007f, 410f, -1230f), vec2<u32>(13476u, 0u), vec2<bool>(false, true), 1i, 0u))), Struct_5(vec2<bool>(false, false), Struct_2(vec3<i32>(46090i, -1i, -40919i), Struct_1(vec3<f32>(1055f, 694f, -454f), vec2<u32>(1u, 4294967295u), vec2<bool>(false, true), 1i, 21587u))), Struct_5(vec2<bool>(true, false), Struct_2(vec3<i32>(2147483647i, 15061i, -30767i), Struct_1(vec3<f32>(198f, 386f, -1125f), vec2<u32>(0u, 1u), vec2<bool>(true, false), 1i, 17691u))));

var<private> global3: u32;

var<private> global4: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: vec3<f32>) -> vec4<f32> {
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global4.a.x, 665f)) - _wgslsmith_f_op_f32(-arg_1.d.a.x)), 1150f, _wgslsmith_f_op_f32(f32(-1f) * -675f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.a.x) - _wgslsmith_f_op_f32(ceil(arg_2.x))))), _wgslsmith_mult_vec3_i32(reverseBits(select(arg_1.b << (vec3<u32>(1u, u_input.d.x, 29621u) % vec3<u32>(32u)), max(vec3<i32>(arg_1.b.x, u_input.b.x, arg_1.b.x), u_input.b.zxw), !vec3<bool>(global4.c.x, global4.c.x, global4.c.x))), ~(~u_input.b.www) & u_input.b.yxw), -469f, arg_1.d);
    var_0 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(global4.a.x * _wgslsmith_f_op_f32(global4.a.x - _wgslsmith_f_op_f32(min(1457f, 1000f)))), arg_2.x, -135f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(518f, 1295f) - -639f) * -531f)), ~countOneBits(_wgslsmith_sub_vec3_i32(select(global1[_wgslsmith_index_u32(0u, 23u)], var_0.b, false), -u_input.b.wwx)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1883f)) * var_0.a.x))), var_0.d);
    var var_1 = 36719u;
    var var_2 = _wgslsmith_mult_vec3_i32(select(-vec3<i32>(-arg_1.b.x, reverseBits(-1i), 17540i), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~0u), abs(firstLeadingBit(u_input.d.x))), 23u)], vec3<bool>(global4.c.x, 50793u > _wgslsmith_clamp_u32(global4.b.x, 4294967295u, 0u), !(!global4.c.x))), _wgslsmith_mod_vec3_i32(u_input.b.zyy, reverseBits(vec3<i32>(1i, abs(11080i), _wgslsmith_clamp_i32(var_0.b.x, arg_1.b.x, u_input.b.x)))));
    var_1 = ~(~_wgslsmith_clamp_u32(~u_input.d.x, _wgslsmith_clamp_u32(u_input.d.x, 29057u, 13389u), ~4294967295u) << (~countOneBits(global4.b.x) % 32u));
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -713f, 392f, 1000f))))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_2.x)), -778f, _wgslsmith_f_op_f32(max(2316f, _wgslsmith_f_op_f32(f32(-1f) * -752f))), _wgslsmith_f_op_f32(-arg_1.c)))), select(select(!select(vec4<bool>(false, global4.c.x, true, global4.c.x), vec4<bool>(global4.c.x, global4.c.x, false, global4.c.x), global4.c.x), select(!vec4<bool>(global4.c.x, false, true, global4.c.x), select(vec4<bool>(global4.c.x, global4.c.x, false, true), vec4<bool>(global4.c.x, false, true, global4.c.x), vec4<bool>(true, global4.c.x, false, false)), select(vec4<bool>(global4.c.x, global4.c.x, global4.c.x, global4.c.x), vec4<bool>(global4.c.x, true, false, false), vec4<bool>(global4.c.x, true, true, true))), !(!vec4<bool>(global4.c.x, global4.c.x, false, global4.c.x))), select(select(!vec4<bool>(global4.c.x, false, true, global4.c.x), vec4<bool>(true, global4.c.x, false, global4.c.x), vec4<bool>(global4.c.x, true, false, true)), vec4<bool>(global4.c.x || true, true, true != global4.c.x, true), true), vec4<bool>(global4.c.x, true, true, true))));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: f32, arg_3: Struct_5) -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global0[_wgslsmith_index_u32(global4.b.x & ~4294967295u, 16u)], _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(629f, arg_1.b.a.x, arg_1.b.a.x, arg_0)), vec4<f32>(1274f, 925f, 510f, arg_3.b.b.a.x), true))) + _wgslsmith_f_op_vec4_f32(func_3(global0[_wgslsmith_index_u32(5301u, 16u)], Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-777f, arg_3.b.b.a.x, -1351f, arg_2)), global1[_wgslsmith_index_u32(1u, 23u)], arg_1.b.a.x, Struct_3(vec4<f32>(arg_3.b.b.a.x, 508f, 159f, -1000f), global4.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global4.a.x, arg_1.b.a.x, 1000f))))))), arg_1.b.b.x);
    let var_1 = arg_3.b.b.e >> (_wgslsmith_add_u32(~abs(_wgslsmith_clamp_u32(global4.b.x, 4294967295u, u_input.c.x)), firstTrailingBit(countOneBits(4294967295u))) % 32u);
    var var_2 = ~(~arg_1.b.b);
    var var_3 = ~_wgslsmith_mult_u32(~(~var_0.b), 1u);
    let var_4 = _wgslsmith_f_op_f32(-882f - arg_3.b.b.a.x);
    return Struct_2(arg_1.a, arg_1.b);
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_5 {
    global0 = array<vec4<f32>, 16>();
    global1 = array<vec3<i32>, 23>();
    let var_0 = false;
    let var_1 = Struct_5(!(!vec2<bool>(!arg_2.b.c.x, global4.d == u_input.b.x)), func_2(275f, arg_2, -1034f, Struct_5(vec2<bool>(var_0, false), arg_2)));
    global1 = array<vec3<i32>, 23>();
    return Struct_5(vec2<bool>(arg_2.b.c.x, arg_2.b.c.x), Struct_2(vec3<i32>(arg_0, (u_input.b.x | -69296i) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_2.b.e, 1u), vec3<u32>(4294967295u, var_1.b.b.e, u_input.c.x)) % 32u), select(global4.d, ~0i, any(vec4<bool>(global4.c.x, false, arg_2.b.c.x, arg_2.b.c.x)))), Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2.b.a.x, arg_2.b.a.x, arg_1.x), _wgslsmith_f_op_vec3_f32(select(global4.a, vec3<f32>(-1961f, arg_1.x, arg_1.x), var_1.a.x)))), vec2<u32>(1u, _wgslsmith_add_u32(arg_2.b.e, 83251u)), global4.c, firstLeadingBit(firstLeadingBit(var_1.b.b.d)), 1u)));
}

fn func_4(arg_0: Struct_5, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: Struct_2) -> Struct_3 {
    var var_0 = 1338f;
    global0 = array<vec4<f32>, 16>();
    var var_1 = ~38838u;
    global1 = array<vec3<i32>, 23>();
    var var_2 = true;
    return Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-1584f)), _wgslsmith_f_op_f32(select(arg_2.a.x, -1046f, global4.c.x)), _wgslsmith_f_op_f32(exp2(arg_1.x)), arg_1.x)), ~u_input.a.x & (((26083u & arg_0.b.b.b.x) << (max(arg_0.b.b.e, 27705u) % 32u)) >> (global4.b.x % 32u)));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(arg_2.b.x, 23u)], func_1(arg_2.d, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.a.wz - _wgslsmith_f_op_vec2_f32(floor(arg_0.a.ww))), arg_0.a.xw), func_2(-738f, func_1(~arg_2.d, global4.a.xz, Struct_2(vec3<i32>(u_input.b.x, 14991i, 0i), arg_2)).b, _wgslsmith_f_op_f32(func_2(arg_2.a.x, Struct_2(global1[_wgslsmith_index_u32(u_input.c.x, 23u)], Struct_1(arg_0.a.wxz, u_input.d.xz, global4.c, u_input.b.x, 12692u)), global4.a.x, global2[_wgslsmith_index_u32(u_input.c.x, 25u)]).b.a.x * -1303f), Struct_5(vec2<bool>(arg_2.c.x, arg_2.c.x), Struct_2(u_input.b.wzx, Struct_1(arg_0.a.yzw, u_input.d.zx, vec2<bool>(arg_1.x, false), u_input.b.x, arg_2.b.x))))).b.b);
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -261f), _wgslsmith_f_op_f32(abs(arg_2.a.x))))))));
    var var_2 = func_2(-1245f, Struct_2(vec3<i32>(0i, -func_2(1000f, Struct_2(vec3<i32>(var_0.a.x, global4.d, 17158i), Struct_1(vec3<f32>(var_1.x, arg_0.a.x, -1367f), arg_2.b, arg_2.c, 35795i, 1u)), 1000f, Struct_5(vec2<bool>(global4.c.x, true), Struct_2(vec3<i32>(global4.d, 2147483647i, 63838i), Struct_1(vec3<f32>(global4.a.x, 1626f, 1803f), vec2<u32>(1u, 76983u), var_0.b.c, 17244i, 4294967295u)))).a.x, _wgslsmith_dot_vec2_i32(func_1(2147483647i, var_0.b.a.zz, Struct_2(global1[_wgslsmith_index_u32(u_input.d.x, 23u)], Struct_1(vec3<f32>(-1651f, arg_2.a.x, 867f), vec2<u32>(arg_0.b, u_input.a.x), arg_1, var_0.a.x, 36197u))).b.a.xx, vec2<i32>(global4.d, -1i))), func_2(810f, Struct_2(global1[_wgslsmith_index_u32(~global4.b.x, 23u)], Struct_1(vec3<f32>(var_0.b.a.x, arg_2.a.x, 927f), arg_2.b, var_0.b.c, 94091i, var_0.b.b.x)), _wgslsmith_f_op_f32(arg_0.a.x * var_1.x), global2[_wgslsmith_index_u32(22338u, 25u)]).b), 516f, Struct_5(!func_2(_wgslsmith_f_op_f32(-var_1.x), Struct_2(vec3<i32>(30371i, arg_2.d, arg_2.d), Struct_1(vec3<f32>(-708f, arg_0.a.x, 642f), vec2<u32>(4294967295u, 23025u), vec2<bool>(true, global4.c.x), u_input.b.x, arg_2.b.x)), -427f, func_1(-1i, var_0.b.a.zx, Struct_2(vec3<i32>(var_0.b.d, var_0.b.d, arg_2.d), Struct_1(vec3<f32>(var_0.b.a.x, arg_0.a.x, 886f), arg_2.b, vec2<bool>(arg_1.x, arg_1.x), arg_2.d, 4294967295u)))).b.c, func_2(-2182f, Struct_2(~vec3<i32>(global4.d, -2147483647i, var_0.b.d), var_0.b), _wgslsmith_f_op_f32(-var_0.b.a.x), global2[_wgslsmith_index_u32(countOneBits(var_0.b.b.x ^ 0u), 25u)])));
    var var_3 = Struct_2(_wgslsmith_sub_vec3_i32(var_0.a, var_2.a), var_2.b);
    return vec3<bool>(var_3.b.c.x, !(!any(vec3<bool>(true, true, true))), all(!select(select(vec3<bool>(false, false, arg_1.x), vec3<bool>(false, var_3.b.c.x, false), vec3<bool>(arg_1.x, false, global4.c.x)), !vec3<bool>(false, var_0.b.c.x, false), var_2.b.e > var_2.b.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec3<bool>(false, true, !global4.c.x), func_5(func_4(func_1(global4.d, global4.a.xx, Struct_2(vec3<i32>(u_input.b.x, -2147483647i, -30707i), Struct_1(global4.a, vec2<u32>(global4.e, 50415u), vec2<bool>(global4.c.x, false), -1i, 27720u))), vec3<f32>(-1111f, -121f, global4.a.x), Struct_3(global0[_wgslsmith_index_u32(global4.e, 16u)], 43682u), func_1(u_input.b.x, vec2<f32>(global4.a.x, -984f), Struct_2(global1[_wgslsmith_index_u32(22435u, 23u)], Struct_1(vec3<f32>(-1914f, 1569f, global4.a.x), u_input.c.wx, vec2<bool>(global4.c.x, global4.c.x), u_input.b.x, 28775u))).b), vec2<bool>(all(global4.c), 2147483647i == global4.d), func_1(func_1(30314i, vec2<f32>(global4.a.x, global4.a.x), Struct_2(global1[_wgslsmith_index_u32(u_input.c.x, 23u)], Struct_1(vec3<f32>(1611f, 178f, global4.a.x), vec2<u32>(5028u, 20069u), vec2<bool>(false, global4.c.x), global4.d, global4.e))).b.a.x, _wgslsmith_f_op_vec2_f32(global4.a.xz * global4.a.yz), func_2(3384f, Struct_2(u_input.b.zxz, Struct_1(vec3<f32>(global4.a.x, 187f, global4.a.x), u_input.c.ww, vec2<bool>(false, false), 0i, 1u)), 632f, global2[_wgslsmith_index_u32(u_input.d.x, 25u)])).b.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.a.x + 1000f) * -915f) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.a.x) - _wgslsmith_f_op_f32(step(1507f, global4.a.x)))), vec3<bool>(global4.c.x, all(vec4<bool>(!global4.c.x, global4.c.x, false, true)), global4.a.x == global4.a.x), true);
    var var_1 = Struct_4(vec4<f32>(_wgslsmith_div_f32(-101f, _wgslsmith_f_op_f32(sign(-630f))), global4.a.x, -1527f, _wgslsmith_f_op_f32(max(-467f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.a.x + -151f) + global4.a.x)))), vec3<i32>(-9534i | abs(global4.d), 5595i, -1i), _wgslsmith_f_op_f32(f32(-1f) * -709f), Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-1563f - global4.a.x), _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(77419u, 16u)] * vec4<f32>(1843f, global4.a.x, -1173f, global4.a.x)), Struct_4(vec4<f32>(-655f, 2270f, 1199f, global4.a.x), vec3<i32>(2147483647i, 1i, u_input.b.x), global4.a.x, Struct_3(global0[_wgslsmith_index_u32(u_input.d.x, 16u)], global4.b.x)), _wgslsmith_f_op_vec3_f32(-global4.a))).x, 1397f, _wgslsmith_f_op_f32(sign(func_1(u_input.b.x, global4.a.xz, Struct_2(global1[_wgslsmith_index_u32(40365u, 23u)], Struct_1(global4.a, global4.b, vec2<bool>(false, var_0.x), 31633i, u_input.d.x))).b.b.a.x))), global4.b.x));
    var var_2 = Struct_1(var_1.a.zzy, u_input.d.yz, global4.c, abs(-1i), _wgslsmith_mult_u32(var_1.d.b, var_1.d.b));
    var var_3 = ~(_wgslsmith_mult_vec2_i32(vec2<i32>(-13838i, var_2.d), _wgslsmith_mod_vec2_i32(max(vec2<i32>(var_2.d, -2147483647i), u_input.b.xy), countOneBits(u_input.b.yz))) | u_input.b.wx);
    let var_4 = Struct_5(vec2<bool>(func_5(Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, 722f, 408f, -287f) * global0[_wgslsmith_index_u32(global4.e, 16u)]), 87807u), func_5(func_4(global2[_wgslsmith_index_u32(32413u, 25u)], vec3<f32>(global4.a.x, 1313f, -131f), var_1.d, Struct_2(vec3<i32>(1i, var_1.b.x, global4.d), Struct_1(var_2.a, vec2<u32>(var_2.b.x, var_1.d.b), vec2<bool>(true, var_0.x), var_3.x, 6371u))), vec2<bool>(var_2.c.x, true), func_2(global4.a.x, Struct_2(vec3<i32>(27699i, 20340i, var_3.x), Struct_1(vec3<f32>(468f, 534f, var_1.c), vec2<u32>(0u, var_2.e), var_0.xz, var_2.d, global4.b.x)), -1482f, Struct_5(var_0.zx, Struct_2(vec3<i32>(2147483647i, global4.d, -7938i), Struct_1(var_1.d.a.zwx, u_input.a, var_2.c, 39854i, 32849u)))).b).zy, Struct_1(vec3<f32>(var_1.a.x, -1000f, var_2.a.x), vec2<u32>(u_input.d.x, u_input.d.x), vec2<bool>(true, var_2.c.x), 46435i, var_2.e | var_2.b.x)).x, var_2.c.x), Struct_2(vec3<i32>(u_input.b.x, _wgslsmith_mult_i32(_wgslsmith_mod_i32(2924i, -2550i), i32(-1i) * -37962i), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_2.d, u_input.b.x), 2147483647i, -46530i)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.a.x, -1078f, -1085f))), ~firstLeadingBit(u_input.d.zz), vec2<bool>(select(false, var_0.x, var_2.c.x), var_0.x), ~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, global4.d, 7844i, var_2.d), vec4<i32>(var_2.d, var_3.x, -1i, var_3.x)), var_1.d.b)));
    global4 = var_4.b.b;
    var var_5 = vec4<f32>(-317f, 1217f, 653f, -354f);
    let var_6 = func_2(global4.a.x, func_1(~min(var_3.x, -73328i) ^ 1i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.a.xz) - _wgslsmith_div_vec2_f32(vec2<f32>(var_1.c, var_2.a.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_4.b.b.a.x, -1123f), vec2<f32>(-397f, 472f), false)))), Struct_2(~reverseBits(global1[_wgslsmith_index_u32(var_1.d.b, 23u)]), Struct_1(global4.a, ~vec2<u32>(19928u, global4.e), var_2.c, var_1.b.x, 6952u))).b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global4.a.x, 550f, var_4.b.b.a.x, var_5.x))), Struct_4(vec4<f32>(global4.a.x, 2213f, 1000f, var_2.a.x), vec3<i32>(8625i, 4010i, var_3.x) >> (u_input.d % vec3<u32>(32u)), _wgslsmith_f_op_f32(203f * var_1.c), Struct_3(var_1.a, global4.b.x)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-554f, -507f, -1936f))))).x)), Struct_5(!func_1(var_4.b.a.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-366f, 246f)), var_4.b).a, Struct_2(~vec3<i32>(global4.d, var_1.b.x, -19098i), var_4.b.b)));
    global4 = func_2(-1825f, Struct_2(select(select(var_6.a, _wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.b.x, 2147483647i, -1i), vec3<i32>(13904i, var_3.x, global4.d), vec3<i32>(var_1.b.x, 4876i, var_3.x)), vec3<bool>(var_4.a.x, true, false)), vec3<i32>(-16638i, -1i, i32(-1i) * -44559i), !select(vec3<bool>(false, var_6.b.c.x, true), vec3<bool>(var_6.b.c.x, false, false), global4.c.x)), var_4.b.b), _wgslsmith_f_op_f32(-348f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_4.b.b.a.x)))), Struct_5(global4.c, func_1(firstLeadingBit(-34047i), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_6.b.a.x, 911f), global4.a.zx)), func_2(_wgslsmith_f_op_f32(f32(-1f) * -703f), Struct_2(vec3<i32>(-2147483647i, -1i, 1i), var_4.b.b), var_5.x, func_1(u_input.b.x, vec2<f32>(293f, 1346f), Struct_2(vec3<i32>(var_1.b.x, 0i, u_input.b.x), var_6.b)))).b)).b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-518f - _wgslsmith_f_op_f32(min(var_2.a.x, var_5.x))), var_5.x) - vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -531f))), _wgslsmith_f_op_f32(sign(var_2.a.x)))), _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(max(vec2<u32>(var_2.b.x, global4.e), func_2(-1016f, var_4.b, var_2.a.x, Struct_5(vec2<bool>(global4.c.x, var_0.x), Struct_2(global1[_wgslsmith_index_u32(22934u, 23u)], var_6.b))).b.b), u_input.a), vec2<u32>(var_2.b.x >> (func_1(u_input.b.x, var_1.d.a.xz, Struct_2(var_6.a, Struct_1(global4.a, vec2<u32>(0u, 4294967295u), vec2<bool>(true, var_4.b.b.c.x), var_2.d, u_input.d.x))).b.b.b.x % 32u), 55693u), ~var_6.b.b), 1i);
}

