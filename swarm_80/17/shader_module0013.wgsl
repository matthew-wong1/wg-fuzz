struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 19> = array<vec2<f32>, 19>(vec2<f32>(-194f, -131f), vec2<f32>(-1121f, -762f), vec2<f32>(-190f, 463f), vec2<f32>(212f, 765f), vec2<f32>(-767f, 553f), vec2<f32>(1167f, 1832f), vec2<f32>(764f, -1534f), vec2<f32>(2105f, 175f), vec2<f32>(870f, -932f), vec2<f32>(109f, -465f), vec2<f32>(-618f, -1000f), vec2<f32>(142f, 630f), vec2<f32>(-687f, -213f), vec2<f32>(-737f, -552f), vec2<f32>(-510f, 786f), vec2<f32>(1416f, 220f), vec2<f32>(923f, 100f), vec2<f32>(134f, 1340f), vec2<f32>(1277f, -195f));

var<private> global1: array<i32, 11>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> f32 {
    global0 = array<vec2<f32>, 19>();
    let var_0 = Struct_2(Struct_1(49055u, u_input.c.ww, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-615f, 1000f))), -1109f), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1581f, 1280f))))));
    var var_1 = ~u_input.a;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1043f, _wgslsmith_f_op_f32(-var_0.a.e.x))), global0[_wgslsmith_index_u32(u_input.b, 19u)])));
    let var_3 = select(!vec3<bool>(true, ~u_input.b >= 0u, false), select(!(!vec3<bool>(var_0.a.d, var_0.a.d, var_0.a.d)), vec3<bool>(var_0.a.d, true, var_0.a.d), select(!vec3<bool>(var_0.a.d, false, var_0.a.d), select(!vec3<bool>(var_0.a.d, var_0.a.d, true), vec3<bool>(var_0.a.d, true, var_0.a.d), !vec3<bool>(false, var_0.a.d, true)), vec3<bool>(var_0.a.d, false, true))), !all(select(!vec4<bool>(var_0.a.d, var_0.a.d, var_0.a.d, var_0.a.d), select(vec4<bool>(var_0.a.d, var_0.a.d, false, false), vec4<bool>(var_0.a.d, var_0.a.d, false, var_0.a.d), false), vec4<bool>(var_0.a.d, var_0.a.d, true, true))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a.e.x)));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec2<f32>) -> Struct_2 {
    var var_0 = arg_0.a;
    let var_1 = Struct_2(Struct_1(reverseBits(arg_1.x), -select(vec2<i32>(arg_0.a.b.x, u_input.a.x), arg_0.a.b, all(vec2<bool>(arg_0.a.d, false))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) - -721f), _wgslsmith_f_op_f32(func_3())), arg_0.a.d, _wgslsmith_f_op_vec2_f32(-arg_2)));
    var var_2 = 1478f;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.a.e.x, arg_0.a.e.x, 749f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-900f, arg_2.x, arg_2.x)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1352f - var_0.e.x) * var_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.c.x)), 146f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_2.x, var_1.a.c.x), -492f, var_0.c.x))));
    let var_4 = arg_0.a.d;
    return Struct_2(var_1.a);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(u_input.b, vec2<i32>(i32(-1i) * -(~arg_2.a.b.x), ~max(-14055i, arg_3.a.b.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1179f, _wgslsmith_f_op_f32(trunc(arg_1.a.e.x))))) * arg_1.a.e), any(!vec3<bool>(arg_3.a.d, !arg_3.a.d, any(vec4<bool>(arg_1.a.d, true, arg_2.a.d, arg_1.a.d)))), _wgslsmith_f_op_vec2_f32(arg_1.a.c - _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(arg_2.a.a, 77673u)), 19u)])));
    let var_1 = func_2(func_2(Struct_2(Struct_1(u_input.b, -vec2<i32>(global1[_wgslsmith_index_u32(arg_3.a.a, 11u)], 17723i), func_2(Struct_2(arg_2.a), vec3<u32>(1u, 33934u, 13257u), vec2<f32>(1000f, 632f)).a.e, arg_3.a.d, vec2<f32>(227f, 2089f))), arg_0, global0[_wgslsmith_index_u32(4294967295u, 19u)]), arg_0, _wgslsmith_f_op_vec2_f32(select(arg_1.a.c, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(56288u, 19u)])), arg_1.a.c)), select(!(var_0.d || arg_3.a.d), var_0.d, !(!arg_3.a.d)))));
    let var_2 = arg_3;
    return func_2(func_2(Struct_2(Struct_1(~arg_3.a.a, select(vec2<i32>(234i, 18229i), arg_3.a.b, vec2<bool>(false, var_2.a.d)), vec2<f32>(arg_1.a.c.x, 1058f), var_2.a.d, vec2<f32>(var_2.a.e.x, -429f))), countOneBits(vec3<u32>(max(4294967295u, 0u), 0u, _wgslsmith_add_u32(var_2.a.a, arg_3.a.a))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(926f, -152f)))), max(arg_0, ~abs(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_2.a.a, var_1.a.a, arg_3.a.a), arg_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.e.x, 620f) * _wgslsmith_div_vec2_f32(vec2<f32>(var_1.a.c.x, var_1.a.e.x), vec2<f32>(-2213f, 554f))) * _wgslsmith_div_vec2_f32(var_1.a.c, _wgslsmith_f_op_vec2_f32(select(var_0.e, global0[_wgslsmith_index_u32(1u, 19u)], vec2<bool>(false, true)))))));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: bool) -> f32 {
    global1 = array<i32, 11>();
    global0 = array<vec2<f32>, 19>();
    var var_0 = vec3<i32>(reverseBits(3361i), 1i, _wgslsmith_dot_vec3_i32(-_wgslsmith_add_vec3_i32(u_input.c.zyy, vec3<i32>(global1[_wgslsmith_index_u32(25302u, 11u)], global1[_wgslsmith_index_u32(u_input.b, 11u)], u_input.c.x)) ^ vec3<i32>(-34493i, _wgslsmith_mult_i32(u_input.c.x, global1[_wgslsmith_index_u32(arg_0.a.a, 11u)]), ~2147483647i), firstLeadingBit(vec3<i32>(~301i, _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(u_input.b, 11u)], global1[_wgslsmith_index_u32(u_input.b, 11u)]), i32(-1i) * -2147483647i))));
    global1 = array<i32, 11>();
    var var_1 = Struct_1(1u & u_input.b, -vec2<i32>(-_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(0u, 11u)], 38726i, -2147483647i), abs(-2147483647i)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a.c))))), false, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_0.a.c.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.c.x, _wgslsmith_div_f32(594f, arg_1.x)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(670f, -102f), vec2<f32>(641f, -178f))) + _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(0u, 19u)]))))));
    return _wgslsmith_f_op_f32(ceil(arg_0.a.c.x));
}

fn func_6(arg_0: f32, arg_1: vec4<i32>, arg_2: i32) -> Struct_2 {
    global0 = array<vec2<f32>, 19>();
    var var_0 = Struct_2(Struct_1(u_input.b, vec2<i32>(~u_input.a.x, countOneBits(-23875i) & arg_2), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(u_input.b, 19u)] + global0[_wgslsmith_index_u32(1u, 19u)])), vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0)))), func_2(Struct_2(func_4(vec3<u32>(1774u, 42250u, 1u), Struct_2(Struct_1(16955u, vec2<i32>(global1[_wgslsmith_index_u32(53885u, 11u)], -1i), global0[_wgslsmith_index_u32(1u, 19u)], false, global0[_wgslsmith_index_u32(u_input.b, 19u)])), Struct_2(Struct_1(96914u, u_input.c.yy, vec2<f32>(1074f, 557f), true, vec2<f32>(arg_0, arg_0))), Struct_2(Struct_1(49954u, u_input.c.zz, vec2<f32>(arg_0, arg_0), true, global0[_wgslsmith_index_u32(u_input.b, 19u)]))).a), vec3<u32>(u_input.b, u_input.b, u_input.b), global0[_wgslsmith_index_u32(~u_input.b, 19u)]).a.d, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-286f)), func_2(Struct_2(Struct_1(0u, vec2<i32>(1i, u_input.a.x), global0[_wgslsmith_index_u32(29543u, 19u)], true, vec2<f32>(583f, arg_0))), vec3<u32>(1u, 32564u, 27988u), global0[_wgslsmith_index_u32(u_input.b, 19u)]).a.e.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + 2381f), func_4(vec3<u32>(17193u, 0u, u_input.b), Struct_2(Struct_1(u_input.b, vec2<i32>(1i, u_input.c.x), vec2<f32>(1055f, arg_0), true, global0[_wgslsmith_index_u32(u_input.b, 19u)])), Struct_2(Struct_1(29922u, u_input.a, vec2<f32>(arg_0, arg_0), true, global0[_wgslsmith_index_u32(78560u, 19u)])), Struct_2(Struct_1(11978u, u_input.a, global0[_wgslsmith_index_u32(u_input.b, 19u)], false, global0[_wgslsmith_index_u32(66926u, 19u)]))).a.e.x))));
    var var_1 = ~global1[_wgslsmith_index_u32(u_input.b, 11u)];
    global1 = array<i32, 11>();
    global0 = array<vec2<f32>, 19>();
    return func_2(func_4(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, var_0.a.a, 4294967295u), vec3<u32>(var_0.a.a, 1317u, 53054u)), func_2(Struct_2(Struct_1(17463u, vec2<i32>(var_0.a.b.x, arg_1.x), global0[_wgslsmith_index_u32(var_0.a.a, 19u)], true, vec2<f32>(var_0.a.e.x, var_0.a.e.x))), max(vec3<u32>(var_0.a.a, u_input.b, var_0.a.a) << (vec3<u32>(var_0.a.a, 18155u, u_input.b) % vec3<u32>(32u)), ~vec3<u32>(75928u, 63423u, u_input.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(262f, 1674f) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(422f, arg_0))))), Struct_2(var_0.a), func_2(Struct_2(Struct_1(var_0.a.a, arg_1.yy, var_0.a.e, var_0.a.d, global0[_wgslsmith_index_u32(4855u, 19u)])), vec3<u32>(_wgslsmith_add_u32(var_0.a.a, 16334u), 1u, u_input.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, 549f), global0[_wgslsmith_index_u32(var_0.a.a, 19u)]) * var_0.a.c))), vec3<u32>(var_0.a.a, 7306u, _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, var_0.a.a), vec2<u32>(u_input.b, u_input.b))) & vec3<u32>(~var_0.a.a, abs(var_0.a.a), 1u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.a.c), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0, -631f))), select(var_0.a.d, var_0.a.d, var_0.a.d)))) * var_0.a.c));
}

fn func_7(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec2<bool>) -> Struct_2 {
    var var_0 = arg_1.a;
    global0 = array<vec2<f32>, 19>();
    var var_1 = arg_1;
    global1 = array<i32, 11>();
    var var_2 = !select(!vec3<bool>(select(false, true, arg_2.x), !var_0.d, -1i == arg_1.a.b.x), vec3<bool>(arg_1.a.d, true, true), vec3<bool>(arg_2.x, any(arg_2), arg_0.x == 0u));
    return Struct_2(Struct_1(39362u, abs(firstLeadingBit(var_0.b)) ^ (func_6(-822f, u_input.c, u_input.a.x).a.b | (vec2<i32>(-1i, -32434i) ^ var_0.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.e.x, 775f) + arg_1.a.c))), true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(var_0.a, 19u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_1.a.c))))));
}

fn func_1() -> vec3<u32> {
    global0 = array<vec2<f32>, 19>();
    global0 = array<vec2<f32>, 19>();
    var var_0 = func_7(~_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 3081u, 4294967295u, u_input.b), vec4<u32>(0u, u_input.b, u_input.b, 0u)), ~vec4<u32>(u_input.b, 123064u, 37631u, u_input.b) | min(vec4<u32>(u_input.b, 0u, 49115u, 111807u), vec4<u32>(u_input.b, 41200u, u_input.b, 4294967295u))), func_6(_wgslsmith_f_op_f32(func_5(func_4(vec3<u32>(66493u, 13836u, 20474u), Struct_2(Struct_1(u_input.b, vec2<i32>(u_input.c.x, u_input.c.x), global0[_wgslsmith_index_u32(0u, 19u)], false, vec2<f32>(593f, 1972f))), Struct_2(Struct_1(55629u, vec2<i32>(-40962i, 1i), vec2<f32>(1381f, 955f), true, vec2<f32>(-1242f, 1205f))), func_2(Struct_2(Struct_1(u_input.b, u_input.a, global0[_wgslsmith_index_u32(u_input.b, 19u)], false, vec2<f32>(1000f, 1399f))), vec3<u32>(u_input.b, u_input.b, 31876u), global0[_wgslsmith_index_u32(0u, 19u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1406f, 1112f, -762f, 949f) - vec4<f32>(-1564f, 857f, 147f, 1246f)), true)), _wgslsmith_div_vec4_i32(~(~u_input.c), firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-14931i, -1i, global1[_wgslsmith_index_u32(0u, 11u)], 2147483647i), vec4<i32>(global1[_wgslsmith_index_u32(1u, 11u)], 1i, -2147483647i, -20906i)))), 1i), select(select(vec2<bool>(all(vec3<bool>(true, false, true)), true), vec2<bool>(true, any(vec2<bool>(false, true))), vec2<bool>(true, true)), vec2<bool>(false, func_6(_wgslsmith_f_op_f32(select(-395f, -2443f, false)), u_input.c, 0i).a.d), _wgslsmith_f_op_f32(trunc(-1000f)) >= _wgslsmith_f_op_f32(min(-385f, _wgslsmith_f_op_f32(trunc(-826f))))));
    var var_1 = var_0.a;
    return _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(u_input.b, var_0.a.a, u_input.b)) ^ vec3<u32>(~select(77721u, var_0.a.a, var_1.d), _wgslsmith_mod_u32(u_input.b & var_0.a.a, var_1.a | 1u), 22610u), max(_wgslsmith_div_vec3_u32(reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(31322u, 43529u, 4294967295u), vec3<u32>(4294967295u, u_input.b, 90025u), vec3<u32>(var_1.a, 10006u, 4294967295u))), ~vec3<u32>(var_0.a.a, 1u, u_input.b) ^ abs(vec3<u32>(1u, var_1.a, var_1.a))), ~_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(1u, 0u, var_1.a)), ~vec3<u32>(1u, 31750u, var_0.a.a))), ~_wgslsmith_add_vec3_u32(~vec3<u32>(var_0.a.a, 0u, u_input.b), max(firstTrailingBit(vec3<u32>(var_0.a.a, 7769u, 11205u)), vec3<u32>(var_0.a.a, var_1.a, 4294967295u))));
}

fn func_8(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: Struct_1) -> vec3<i32> {
    var var_0 = vec3<i32>(func_2(Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(arg_2.a, 1u, arg_2.a)), vec2<i32>(1i, -2147483647i), global0[_wgslsmith_index_u32(~u_input.b, 19u)], false, vec2<f32>(arg_2.e.x, 303f))), max(firstLeadingBit(~vec3<u32>(147448u, 4294967295u, 43904u)), abs(vec3<u32>(0u, 11304u, 0u) | vec3<u32>(0u, 52033u, arg_0.x))), func_7(abs(vec4<u32>(arg_0.x, 77228u, 8990u, arg_2.a)), func_4(~arg_0, Struct_2(Struct_1(4294967295u, arg_2.b, arg_2.c, arg_2.d, global0[_wgslsmith_index_u32(arg_1.x, 19u)])), func_7(vec4<u32>(551u, u_input.b, arg_2.a, 0u), Struct_2(arg_2), vec2<bool>(arg_2.d, true)), Struct_2(Struct_1(arg_0.x, vec2<i32>(u_input.a.x, arg_2.b.x), global0[_wgslsmith_index_u32(arg_1.x, 19u)], true, arg_2.e))), !vec2<bool>(arg_2.d, false)).a.c).a.b.x, arg_2.b.x, u_input.a.x);
    var var_1 = -26275i;
    let var_2 = arg_2.d;
    return ~vec3<i32>(1i, func_6(_wgslsmith_f_op_f32(-arg_2.c.x), -(~u_input.c), _wgslsmith_clamp_i32(~var_0.x, u_input.a.x, -5038i | arg_2.b.x)).a.b.x, i32(-1i) * -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 19>();
    global1 = array<i32, 11>();
    global1 = array<i32, 11>();
    let var_0 = _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(-u_input.c.wzz, abs(vec3<i32>(31093i, 2147483647i, -26076i))), func_8((vec3<u32>(u_input.b, 16778u, u_input.b) ^ vec3<u32>(94717u, u_input.b, 40168u)) << (func_1() % vec3<u32>(32u)), firstLeadingBit(countOneBits(vec4<u32>(1u, u_input.b, u_input.b, u_input.b))), func_6(_wgslsmith_f_op_f32(floor(450f)), reverseBits(vec4<i32>(0i, global1[_wgslsmith_index_u32(u_input.b, 11u)], u_input.c.x, global1[_wgslsmith_index_u32(66552u, 11u)])), -u_input.a.x).a)), countOneBits(vec3<i32>(~global1[_wgslsmith_index_u32(~u_input.b, 11u)], u_input.c.x, -20257i)));
    let var_1 = i32(-1i) * -19430i;
    global1 = array<i32, 11>();
    let var_2 = func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(901f, -327f))), _wgslsmith_f_op_f32(-1000f - 1000f))) - _wgslsmith_f_op_f32(func_5(func_4(func_1(), Struct_2(Struct_1(76409u, var_0.zz, vec2<f32>(-962f, -926f), true, vec2<f32>(-592f, 1288f))), func_7(vec4<u32>(u_input.b, u_input.b, 63287u, 27275u), Struct_2(Struct_1(u_input.b, u_input.a, vec2<f32>(-385f, 1608f), true, vec2<f32>(-594f, -1258f))), vec2<bool>(true, false)), Struct_2(Struct_1(4294967295u, vec2<i32>(31201i, var_1), vec2<f32>(-1728f, -1593f), true, global0[_wgslsmith_index_u32(67051u, 19u)]))), vec4<f32>(-1956f, -496f, _wgslsmith_f_op_f32(465f * -579f), 2457f), _wgslsmith_mult_i32(-2147483647i, global1[_wgslsmith_index_u32(u_input.b, 11u)]) < (-23085i >> (u_input.b % 32u))))), vec4<i32>(var_1, func_2(Struct_2(func_7(vec4<u32>(38888u, u_input.b, 0u, u_input.b), Struct_2(Struct_1(u_input.b, vec2<i32>(u_input.c.x, 0i), vec2<f32>(1276f, -193f), true, vec2<f32>(-658f, 249f))), vec2<bool>(false, false)).a), ~select(vec3<u32>(u_input.b, 42428u, 1u), vec3<u32>(u_input.b, u_input.b, 4294967295u), true), global0[_wgslsmith_index_u32(func_6(1264f, ~u_input.c, 14396i).a.a, 19u)]).a.b.x, 1i, firstLeadingBit(func_7(vec4<u32>(u_input.b, u_input.b, u_input.b, 0u) >> (vec4<u32>(u_input.b, u_input.b, 5886u, u_input.b) % vec4<u32>(32u)), func_2(Struct_2(Struct_1(u_input.b, vec2<i32>(u_input.c.x, u_input.c.x), global0[_wgslsmith_index_u32(0u, 19u)], true, global0[_wgslsmith_index_u32(39996u, 19u)])), vec3<u32>(17585u, u_input.b, u_input.b), global0[_wgslsmith_index_u32(u_input.b, 19u)]), vec2<bool>(true, false)).a.b.x)), var_1).a;
    let var_3 = vec2<i32>(-18945i, 52381i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(vec2<u32>(abs(1u), var_2.a) << ((vec2<u32>(106642u, u_input.b) & vec2<u32>(4294967295u, u_input.b)) % vec2<u32>(32u)), vec2<u32>(~(~1u), ~1u)), u_input.b, _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4454u, u_input.b), vec2<u32>(u_input.b, var_2.a) & vec2<u32>(u_input.b, var_2.a)) << (_wgslsmith_add_vec2_u32(vec2<u32>(var_2.a, 33686u), vec2<u32>(var_2.a, 8232u)) % vec2<u32>(32u)), abs(countOneBits(vec2<u32>(var_2.a, 72485u))) << (~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, var_2.a), vec2<u32>(1u, 61545u)) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.c.x, _wgslsmith_f_op_f32(793f + -1000f), func_2(Struct_2(Struct_1(66971u, var_3, global0[_wgslsmith_index_u32(87806u, 19u)], false, vec2<f32>(var_2.c.x, var_2.c.x))), vec3<u32>(u_input.b, u_input.b, 1u), var_2.c).a.c.x)))));
}

