struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: bool,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: u32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 12> = array<f32, 12>(-1708f, -943f, -592f, 1110f, 1000f, -1365f, 1072f, -1000f, -2534f, -1177f, 880f, 2345f);

var<private> global2: array<vec2<i32>, 15>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> bool {
    let var_0 = Struct_2(!(!vec3<bool>(arg_1.c, !arg_0, any(vec4<bool>(arg_1.c, global0.c, arg_0, arg_1.c)))), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(arg_1.e, 12u)], -326f))), vec2<f32>(_wgslsmith_div_f32(-1316f, 192f), 715f), select(vec2<bool>(arg_0, arg_1.c), !vec2<bool>(arg_0, false), select(vec2<bool>(false, true), vec2<bool>(true, arg_1.c), global0.c)))), 1i, arg_1.c, arg_1.d, countOneBits(1u)), ~abs(~0u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(arg_1.e, 12u)], _wgslsmith_f_op_f32(select(global0.a.x, 128f, true)), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(u_input.b.x, 12u)])), _wgslsmith_f_op_f32(trunc(arg_1.d.x))))));
    return global0.c;
}

fn func_2(arg_0: f32, arg_1: vec2<i32>, arg_2: u32, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = vec4<i32>(abs(arg_1.x), ~_wgslsmith_dot_vec3_i32(-vec3<i32>(44017i, -1i, 1i), vec3<i32>(1i, arg_1.x, global0.b)), arg_1.x, _wgslsmith_mult_i32(-2147483647i, _wgslsmith_sub_i32(countOneBits(14744i), ~global0.b))) << ((u_input.b | _wgslsmith_div_vec4_u32(vec4<u32>(~62030u, u_input.a.x | global0.e, 1u, 4294967295u), ~(~vec4<u32>(1887u, 4809u, 86607u, 36634u)))) % vec4<u32>(32u));
    var var_1 = func_3(global0.b <= ~_wgslsmith_div_i32(16972i, var_0.x), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(228f, arg_0) + vec2<f32>(-614f, global1[_wgslsmith_index_u32(global0.e, 12u)])), -54479i, _wgslsmith_f_op_f32(sign(-1000f)) == global0.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0, -813f, 2405f)))), arg_2 >> (~1u % 32u))) || all(vec3<bool>(false, true, true || all(vec3<bool>(false, global0.c, global0.c))));
    global0 = Struct_1(arg_3.xz, _wgslsmith_clamp_i32(-2147483647i, arg_1.x, ~_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(var_0, vec4<i32>(arg_1.x, -32171i, var_0.x, -1i), vec4<i32>(global0.b, 1029i, global0.b, var_0.x)), vec4<i32>(-1i, -1i, global0.b, global0.b))), all(select(select(vec3<bool>(true, true, true), vec3<bool>(global0.c, global0.c, global0.c), global0.c), !select(vec3<bool>(global0.c, false, global0.c), vec3<bool>(true, global0.c, global0.c), global0.c), !(!vec3<bool>(true, global0.c, global0.c)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0.d, global0.d))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(195f, global0.d.x, -857f) + vec3<f32>(arg_3.x, 1000f, arg_0)) * vec3<f32>(arg_0, 400f, global1[_wgslsmith_index_u32(global0.e, 12u)])) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(global0.d + vec3<f32>(-186f, arg_3.x, 361f)), vec3<f32>(global0.d.x, 343f, arg_3.x)))), !select(vec3<bool>(global0.c, true, true), select(vec3<bool>(global0.c, true, global0.c), vec3<bool>(global0.c, global0.c, global0.c), vec3<bool>(global0.c, global0.c, global0.c)), true))), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 1u), u_input.b.zw ^ vec2<u32>(45697u, global0.e)), vec2<u32>(u_input.a.x, max(4294967295u, 30799u))), global0.e));
    let var_2 = vec3<bool>(!global0.c, any(vec2<bool>(!func_3(global0.c, Struct_1(global0.a, -22978i, global0.c, vec3<f32>(global1[_wgslsmith_index_u32(global0.e, 12u)], global1[_wgslsmith_index_u32(global0.e, 12u)], -1200f), arg_2)), any(select(vec2<bool>(global0.c, false), vec2<bool>(global0.c, false), vec2<bool>(true, false))))), !global0.c);
    global2 = array<vec2<i32>, 15>();
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.d.x), global1[_wgslsmith_index_u32(max(u_input.b.x, arg_2), 12u)]) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.d.xz) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(283f, 458f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.d.yx)))), -23502i, any(!select(var_2, var_2, !vec3<bool>(var_2.x, global0.c, false))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_3), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_3.x + 698f), _wgslsmith_f_op_f32(308f + global1[_wgslsmith_index_u32(49492u, 12u)]), _wgslsmith_f_op_f32(-arg_3.x)) * vec3<f32>(_wgslsmith_f_op_f32(arg_3.x + global1[_wgslsmith_index_u32(u_input.b.x, 12u)]), _wgslsmith_f_op_f32(arg_3.x + 898f), _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(global0.e, 12u)], arg_3.x)))))), arg_2);
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(vec3<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.x + arg_0.d.x), global1[_wgslsmith_index_u32(arg_0.e, 12u)]) >= global0.a.x, arg_0.c, arg_0.c), Struct_1(arg_0.a, firstLeadingBit(global0.b), false, arg_0.d, ~arg_0.e), u_input.a.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(663f, arg_0.d.x, 331f, arg_0.a.x) * vec4<f32>(global1[_wgslsmith_index_u32(1u, 12u)], 2022f, 192f, -172f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(58162u, 12u)], arg_0.a.x, global1[_wgslsmith_index_u32(u_input.b.x, 12u)], 1134f) - vec4<f32>(-494f, arg_0.d.x, -537f, -854f)) * vec4<f32>(global1[_wgslsmith_index_u32(global0.e, 12u)], 947f, arg_0.d.x, global0.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0.e, 12u)] + 1803f), -436f, _wgslsmith_f_op_f32(1737f - -1367f)))));
    global1 = array<f32, 12>();
    var_0 = Struct_2(!vec3<bool>(true, any(vec3<bool>(true, true, false)), any(vec4<bool>(arg_0.c, true, var_0.b.c, arg_0.c))), func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x + global0.a.x)))), global2[_wgslsmith_index_u32(global0.e, 15u)] | _wgslsmith_mult_vec2_i32(global2[_wgslsmith_index_u32(max(26835u, global0.e), 15u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b.ywy, u_input.b.ywy), 15u)]), ~(4294967295u << (0u % 32u)), arg_0.d), countOneBits(arg_0.e), var_0.d);
    global1 = array<f32, 12>();
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-612f, 420f)) + _wgslsmith_f_op_vec2_f32(-global0.d.zz)), vec2<f32>(global1[_wgslsmith_index_u32(var_0.c, 12u)], _wgslsmith_f_op_f32(493f - _wgslsmith_f_op_f32(var_0.d.x + global0.d.x)))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 12u)]))), global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(0u, global0.e), 12u)], all(vec3<bool>(global0.c, var_0.a.x, true)))), -203f));
    return Struct_2(select(vec3<bool>(false, true, true), select(!(!vec3<bool>(global0.c, var_0.a.x, var_0.a.x)), vec3<bool>(global0.e > global0.e, !var_0.a.x, true), var_0.a), false), var_0.b, _wgslsmith_mod_u32(4294967295u, ~10989u), _wgslsmith_f_op_vec4_f32(var_0.d * var_0.d));
}

fn func_5(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_3;
    var var_1 = abs(_wgslsmith_mult_i32(~(i32(-1i) * -arg_2.b.b), ~_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_3.b, arg_3.b, arg_2.b.b, var_0.b), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.b, -1i, 0i, 2147483647i), vec4<i32>(global0.b, -1i, arg_2.b.b, 0i)))));
    var var_2 = vec4<bool>(_wgslsmith_f_op_f32(step(1086f, -1437f)) >= -1270f, global0.c, all(vec3<bool>(all(vec4<bool>(true, global0.c, true, var_0.c)) != true, !arg_0.x, true)), all(select(arg_2.a.xz, arg_0.zz, func_4(arg_2.b).a.zy)));
    let var_3 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_2.d.x, arg_3.a.x), vec2<f32>(-1000f, arg_3.d.x)))))), global0.d.yx), firstLeadingBit(arg_3.b), 0i >= _wgslsmith_mod_i32(_wgslsmith_mult_i32(i32(-1i) * -2147483647i, func_4(Struct_1(vec2<f32>(global0.d.x, global1[_wgslsmith_index_u32(4294967295u, 12u)]), var_0.b, false, arg_2.d.xxw, arg_3.e)).b.b), arg_3.b | _wgslsmith_dot_vec2_i32(vec2<i32>(32666i, -1i), vec2<i32>(var_0.b, -94057i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1487f, arg_2.b.a.x, -743f))), vec3<f32>(634f, 1227f, 293f), global0.e >= 25303u)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1202f, arg_3.a.x, -680f), vec3<f32>(-585f, arg_3.a.x, var_0.a.x), vec3<bool>(arg_3.c, global0.c, true))) * arg_3.d))), _wgslsmith_sub_u32(var_0.e, ~var_0.e));
    let var_4 = arg_3;
    return func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_2.d.x)))))), vec2<i32>(-37594i, 32964i), ~u_input.b.x, _wgslsmith_div_vec3_f32(func_4(func_2(_wgslsmith_f_op_f32(-arg_2.b.d.x), global2[_wgslsmith_index_u32(var_3.e, 15u)] >> (u_input.a.xz % vec2<u32>(32u)), _wgslsmith_mod_u32(0u, var_0.e), _wgslsmith_f_op_vec3_f32(-var_3.d))).d.yxw, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b.d.x, arg_3.d.x, 1300f) - var_4.d))))));
}

fn func_6(arg_0: Struct_1) -> vec4<i32> {
    global2 = array<vec2<i32>, 15>();
    let var_0 = 1u;
    var var_1 = arg_0;
    var_1 = func_2(1184f, abs(global2[_wgslsmith_index_u32(~func_4(Struct_1(vec2<f32>(1714f, -402f), 1276i, var_1.c, var_1.d, 4294967295u)).c, 15u)]), 72111u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -458f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d.x + var_1.a.x) + _wgslsmith_f_op_f32(var_1.a.x - -383f)), _wgslsmith_f_op_f32(ceil(var_1.d.x)))));
    var var_2 = false;
    return countOneBits(~vec4<i32>(-_wgslsmith_mult_i32(-29075i, global0.b), func_4(Struct_1(vec2<f32>(var_1.a.x, 421f), arg_0.b, true, arg_0.d, u_input.b.x)).b.b, 0i, ~0i));
}

fn func_7(arg_0: vec4<i32>) -> vec3<i32> {
    let var_0 = -28040i;
    return countOneBits(select(-(~(vec3<i32>(global0.b, -2147483647i, var_0) | arg_0.wzy)), reverseBits(vec3<i32>(global0.b, i32(-1i) * -21190i, 0i)), !(!(!vec3<bool>(global0.c, global0.c, false)))));
}

fn func_1(arg_0: vec2<u32>) -> bool {
    var var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(select(~(-global0.b), global0.b, global0.e > max(u_input.b.x, 5310u)), _wgslsmith_div_i32(_wgslsmith_div_i32(~global0.b, -global0.b), ~(~global0.b)), global0.b), _wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(global0.b >> (33410u % 32u), 0i, global0.b)), vec3<i32>(global0.b, _wgslsmith_clamp_i32(select(14737i, global0.b, false), firstLeadingBit(1i), 0i & global0.b), firstLeadingBit(firstTrailingBit(global0.b)))));
    var_0 = func_7(func_6(func_5(select(select(vec3<bool>(global0.c, global0.c, true), vec3<bool>(global0.c, global0.c, global0.c), vec3<bool>(global0.c, global0.c, global0.c)), select(vec3<bool>(false, global0.c, true), vec3<bool>(false, global0.c, global0.c), vec3<bool>(true, global0.c, global0.c)), global0.c), _wgslsmith_f_op_f32(f32(-1f) * -435f), func_4(func_2(global0.d.x, var_0.zx, 4294967295u, vec3<f32>(535f, -675f, -1000f))), func_2(-956f, vec2<i32>(global0.b, 31574i) ^ vec2<i32>(var_0.x, -35936i), 0u, global0.d))));
    var var_1 = func_4(Struct_1(global0.a, ~_wgslsmith_sub_i32(0i, firstLeadingBit(21711i)), false, _wgslsmith_f_op_vec3_f32(global0.d - vec3<f32>(-1000f, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(40994u, global0.e), 12u)], 1391f)), _wgslsmith_add_u32(~arg_0.x, _wgslsmith_add_u32(1u, global0.e))));
    let var_2 = ~vec3<i32>(var_1.b.b, ~(i32(-1i) * -2147483647i), var_1.b.b);
    let var_3 = func_4(func_4(Struct_1(global0.a, ~var_2.x, var_1.b.c, vec3<f32>(var_1.d.x, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0.x, 12u)]), _wgslsmith_f_op_f32(select(448f, -226f, var_1.a.x))), u_input.b.x)).b);
    return var_3.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(_wgslsmith_dot_vec2_i32(-global2[_wgslsmith_index_u32(~1u, 15u)], global2[_wgslsmith_index_u32(16350u, 15u)]) & -firstLeadingBit(_wgslsmith_clamp_i32(global0.b, 1i, -13817i)));
    global0 = Struct_1(global0.d.xy, reverseBits(global0.b), any(vec3<bool>(false, !(!global0.c), func_1(vec2<u32>(u_input.b.x, global0.e)) || global0.c)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.d - global0.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.d))))), u_input.a.x);
    global0 = func_4(Struct_1(global0.d.zy, abs(-1i), false, global0.d, _wgslsmith_add_u32(global0.e, _wgslsmith_add_u32(~u_input.b.x, ~global0.e)))).b;
    let x = u_input.a;
    s_output = StorageBuffer(func_6(Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(global0.e, 12u)], 1891f), vec2<f32>(920f, global1[_wgslsmith_index_u32(global0.e, 12u)])))), _wgslsmith_mod_i32(2147483647i << (u_input.a.x % 32u), 2147483647i), any(!vec3<bool>(global0.c, global0.c, global0.c)), _wgslsmith_f_op_vec3_f32(global0.d * global0.d), countOneBits(0u))).yz);
}

