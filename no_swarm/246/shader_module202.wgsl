struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
    d: vec2<f32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_3,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: bool = false;

var<private> global2: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec4<u32>(1u, 0u, 44304u, 4294967295u), 6497u, 265f), Struct_1(vec4<u32>(0u, 22614u, 1878u, 1u), 4294967295u, -1206f), Struct_1(vec4<u32>(53528u, 0u, 4294967295u, 0u), 1u, -1154f), Struct_1(vec4<u32>(1u, 0u, 36745u, 1u), 4294967295u, 546f), Struct_1(vec4<u32>(73181u, 4773u, 1u, 4294967295u), 34170u, -1000f), Struct_1(vec4<u32>(29159u, 4294967295u, 8654u, 42622u), 5568u, 636f), Struct_1(vec4<u32>(1u, 8586u, 82427u, 21266u), 4294967295u, -732f), Struct_1(vec4<u32>(4294967295u, 0u, 44731u, 50547u), 6885u, 2090f), Struct_1(vec4<u32>(4294967295u, 0u, 12196u, 78278u), 4294967295u, -1007f), Struct_1(vec4<u32>(63595u, 4294967295u, 4294967295u, 1u), 26918u, 378f), Struct_1(vec4<u32>(0u, 19242u, 72382u, 37118u), 1u, 300f), Struct_1(vec4<u32>(0u, 1u, 1u, 0u), 19557u, 639f), Struct_1(vec4<u32>(52525u, 2641u, 9670u, 12360u), 29963u, -1532f), Struct_1(vec4<u32>(0u, 4791u, 4294967295u, 20036u), 4294967295u, -1917f), Struct_1(vec4<u32>(63535u, 75958u, 1u, 14768u), 14082u, -1018f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_5, arg_1: bool, arg_2: Struct_5, arg_3: i32) -> vec2<f32> {
    let var_0 = -u_input.a.x;
    let var_1 = ~(~u_input.b.x);
    let var_2 = min(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, max(var_1, _wgslsmith_mult_u32(var_1, 51922u)), reverseBits(u_input.e)), u_input.b));
    global0 = Struct_5(_wgslsmith_f_op_vec4_f32(arg_0.a - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.b.x, global0.b.b.x, 860f, 1420f) + global0.a), _wgslsmith_f_op_vec4_f32(arg_0.a * vec4<f32>(511f, global0.a.x, 242f, global0.b.b.x)))))), global0.b, !arg_2.c);
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1355f, -467f) * _wgslsmith_f_op_f32(-arg_2.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(arg_2.b.b.x)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b.a.a, arg_2.a.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-324f, 831f))))) * vec2<f32>(-1467f, arg_2.a.x)));
}

fn func_2(arg_0: vec3<bool>, arg_1: u32) -> Struct_2 {
    let var_0 = arg_0.yx;
    let var_1 = global0.b.a.a;
    var var_2 = Struct_4(global0.c.x, Struct_1(~(~vec4<u32>(u_input.b.x, 22752u, arg_1, u_input.e) | _wgslsmith_sub_vec4_u32(vec4<u32>(19947u, arg_1, arg_1, arg_1), vec4<u32>(arg_1, arg_1, arg_1, 8202u))), select(countOneBits(1u), 44611u, false), global0.b.a.a), global0.b.a, _wgslsmith_f_op_vec2_f32(global0.b.b.zx - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1078f, -213f), vec2<f32>(-1462f, global0.b.a.a)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1347f, _wgslsmith_f_op_f32(-var_2.b.c)) - _wgslsmith_f_op_vec2_f32(func_3(Struct_5(vec4<f32>(var_2.c.a, global0.b.b.x, var_2.d.x, global0.a.x), Struct_3(Struct_2(1275f), global0.b.b), vec3<bool>(true, var_0.x, var_2.a)), false, Struct_5(vec4<f32>(global0.a.x, global0.a.x, var_2.b.c, 1152f), Struct_3(Struct_2(423f), global0.a.xwy), vec3<bool>(true, var_2.a, global0.c.x)), ~u_input.a.x))))));
    var var_4 = ~vec3<u32>(~4294967295u, _wgslsmith_clamp_u32(arg_1, firstLeadingBit(var_2.b.a.x), _wgslsmith_dot_vec3_u32(u_input.b, ~u_input.b)), ~6175u);
    return var_2.c;
}

fn func_1(arg_0: bool, arg_1: Struct_3) -> Struct_5 {
    global2 = array<Struct_1, 15>();
    global2 = array<Struct_1, 15>();
    var var_0 = select(~_wgslsmith_mod_i32(~select(u_input.a.x, -3345i, arg_0), 0i), -58390i, !arg_0);
    var var_1 = func_2(global0.c, u_input.c);
    let var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(842f, global0.a.x)) * _wgslsmith_f_op_f32(-901f * 1640f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.a + -181f))), -2141f, _wgslsmith_f_op_f32(abs(-134f)))), Struct_3(Struct_2(243f), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a.wzz), arg_1.b)))), global0.c);
    return var_2;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: Struct_5, arg_3: bool) -> Struct_1 {
    global1 = all(vec3<bool>(false, false, arg_3));
    global2 = array<Struct_1, 15>();
    let var_0 = arg_1.b.a.x & ~max(~u_input.e, u_input.e);
    var var_1 = func_1(select(_wgslsmith_mult_i32(u_input.a.x, ~u_input.a.x) <= u_input.a.x, true, any(global0.c.yx)), Struct_3(Struct_2(_wgslsmith_f_op_f32(-func_1(false, arg_2.b).a.x)), vec3<f32>(arg_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-588f, global0.a.x))), _wgslsmith_f_op_vec2_f32(func_3(Struct_5(vec4<f32>(-1320f, -370f, global0.b.a.a, arg_1.d.x), Struct_3(Struct_2(-344f), vec3<f32>(global0.b.a.a, arg_1.d.x, 360f)), arg_2.c), global0.c.x, func_1(global0.c.x, arg_2.b), -12175i)).x)));
    let var_2 = Struct_1(vec4<u32>(0u, 32148u, u_input.e << (u_input.c % 32u), max(24675u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 73005u, var_0), arg_1.b.a))), 16935u, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(global0.a.x, _wgslsmith_f_op_f32(arg_2.b.a.a - global0.a.x))))))));
    return Struct_1(vec4<u32>(_wgslsmith_mult_u32(~(~var_2.b), u_input.e), ~abs(_wgslsmith_mult_u32(u_input.e, u_input.b.x)), ~_wgslsmith_sub_u32(firstLeadingBit(arg_1.b.b), select(44336u, var_0, arg_1.a)), firstTrailingBit(~4294967295u)), _wgslsmith_add_u32(select(4294967295u, abs(2771u), true), _wgslsmith_mod_u32(var_0, _wgslsmith_mod_u32(var_2.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b.a.x, var_2.b, arg_1.b.b, 23986u), vec4<u32>(27553u, 41554u, 57368u, 9774u))))), arg_1.d.x);
}

fn func_5(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: f32, arg_3: Struct_1) -> Struct_5 {
    global0 = Struct_5(vec4<f32>(-1310f, _wgslsmith_f_op_f32(round(arg_2)), arg_2, arg_3.c), Struct_3(global0.b.a, _wgslsmith_f_op_vec3_f32(arg_0.xzx + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1529f, arg_2, arg_0.x))))), !vec3<bool>(false, any(func_1(global0.c.x, Struct_3(Struct_2(arg_2), vec3<f32>(arg_0.x, -779f, 1000f))).c), any(select(vec4<bool>(global0.c.x, true, true, global0.c.x), vec4<bool>(global0.c.x, false, false, true), true))));
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.wy * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.a.x, _wgslsmith_div_f32(arg_3.c, 1580f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.yw - vec2<f32>(-314f, arg_2)), arg_0.yz)))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(208f + 1231f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x - global0.a.x), -356f)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0)));
    var var_2 = func_1(_wgslsmith_dot_vec2_i32(min(arg_1, vec2<i32>(-1i, 24890i)), _wgslsmith_div_vec2_i32(vec2<i32>(659i, -2147483647i), vec2<i32>(u_input.d.x, arg_1.x))) < (i32(-1i) * -1i), global0.b);
    var var_3 = ~countOneBits(~firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(785u, 20887u, 4294967295u), u_input.b)));
    return Struct_5(arg_0, Struct_3(var_2.b.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.c, 119f, -384f))) + vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), -990f, _wgslsmith_f_op_f32(f32(-1f) * -2072f)))), !vec3<bool>(true && !global0.c.x, true, (true & global0.c.x) & (global0.c.x & false)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2101f, _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x + global0.a.x) * global0.b.a.a), -321f), global0.a)), abs(reverseBits((u_input.d ^ u_input.a) | vec2<i32>(-1i, u_input.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(861f - global0.b.b.x))), func_4(global0.c, Struct_4(u_input.a.x < u_input.d.x, Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.e), 51482u, _wgslsmith_f_op_f32(-global0.a.x)), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -910f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1060f, 698f)))), func_1(global0.c.x, Struct_3(Struct_2(1675f), vec3<f32>(633f, 515f, global0.a.x))), !(false & global0.c.x) && (u_input.c >= abs(u_input.e))));
    var var_0 = Struct_5(global0.a, global0.b, vec3<bool>(global0.c.x, global0.c.x, all(select(vec2<bool>(true, true), select(global0.c.xz, vec2<bool>(true, false), vec2<bool>(false, false)), !global0.c.xz))));
    let var_1 = func_1(select(!var_0.c.x, all(func_1(!var_0.c.x, func_5(var_0.a, u_input.a, -2233f, Struct_1(vec4<u32>(4294967295u, u_input.e, 140663u, 0u), 28400u, -371f)).b).c.zy), false), func_5(vec4<f32>(func_1(true, global0.b).b.b.x, var_0.a.x, var_0.a.x, _wgslsmith_f_op_f32(-func_4(global0.c, Struct_4(global0.c.x, Struct_1(vec4<u32>(u_input.e, u_input.b.x, 10157u, u_input.e), 11042u, -1473f), Struct_2(var_0.a.x), vec2<f32>(global0.b.a.a, global0.b.b.x)), Struct_5(vec4<f32>(806f, -1000f, var_0.a.x, -900f), var_0.b, vec3<bool>(var_0.c.x, false, false)), var_0.c.x).c)), -_wgslsmith_mult_vec2_i32(u_input.a, u_input.a) << (~vec2<u32>(u_input.b.x, 30633u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(sign(global0.b.a.a)), global2[_wgslsmith_index_u32(func_4(func_1(true, var_0.b).c, Struct_4(75467u != u_input.b.x, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, u_input.b.x), 15u)], Struct_2(-265f), _wgslsmith_f_op_vec2_f32(round(global0.a.yx))), func_1(false, func_5(vec4<f32>(-1676f, global0.b.a.a, -2242f, var_0.a.x), vec2<i32>(u_input.a.x, 0i), 567f, Struct_1(vec4<u32>(u_input.e, 29513u, 0u, 4294967295u), u_input.c, 930f)).b), any(vec3<bool>(false, false, true))).b, 15u)]).b).b.a;
    var_0 = func_1(var_0.c.x, global0.b);
    let var_2 = global0.b;
    var var_3 = _wgslsmith_f_op_vec2_f32(func_3(Struct_5(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(299f, 527f, 597f, 665f) + var_0.a) * var_0.a))), global0.b, global0.c), all(func_5(global0.a, u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-634f, -1796f, false))), func_4(vec3<bool>(global0.c.x, false, global0.c.x), Struct_4(var_0.c.x, global2[_wgslsmith_index_u32(1u, 15u)], Struct_2(var_0.a.x), var_0.a.xz), func_1(false, Struct_3(var_0.b.a, vec3<f32>(1090f, -1068f, 547f))), func_1(var_0.c.x, Struct_3(var_1, var_2.b)).c.x)).c.zx), Struct_5(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(824f, 1865f, var_2.b.x, var_2.a.a)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.a, -1214f, -512f, var_1.a)), _wgslsmith_f_op_vec4_f32(-var_0.a))))), func_1(var_0.c.x, Struct_3(var_1, _wgslsmith_f_op_vec3_f32(vec3<f32>(-932f, -1313f, 802f) * var_0.b.b))).b, global0.c), u_input.d.x)).x;
    var_0 = func_5(_wgslsmith_f_op_vec4_f32(abs(var_0.a)), reverseBits(_wgslsmith_clamp_vec2_i32(min(vec2<i32>(u_input.a.x, -2147483647i), vec2<i32>(0i, u_input.a.x)), vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(0i, -1i) ^ u_input.d)) & min(u_input.a, firstLeadingBit(u_input.d)), -1560f, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstLeadingBit(abs(~u_input.c)), _wgslsmith_dot_vec4_u32(select(firstLeadingBit(vec4<u32>(u_input.b.x, 0u, 47146u, u_input.b.x)), vec4<u32>(u_input.b.x, u_input.c, 1670u, u_input.c), !vec4<bool>(global0.c.x, true, global0.c.x, var_0.c.x)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 17220u, u_input.b.x, u_input.c), vec4<u32>(u_input.c, 4294967295u, u_input.e, 1u)) >> (vec4<u32>(54874u, u_input.b.x, u_input.c, u_input.e) % vec4<u32>(32u)))), 15u)]);
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a ^ u_input.a, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-func_5(_wgslsmith_div_vec4_f32(vec4<f32>(650f, var_2.a.a, global0.a.x, var_0.a.x), global0.a), vec2<i32>(-31320i, -2147483647i), var_2.a.a, Struct_1(vec4<u32>(47800u, u_input.b.x, u_input.b.x, 1u), 1922u, 466f)).a))), -42961i);
}

