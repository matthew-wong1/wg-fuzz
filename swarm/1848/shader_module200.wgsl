struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: bool,
    d: f32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1 = Struct_1(1491f, vec4<u32>(63671u, 65060u, 678u, 1u), -1i, true);

var<private> global2: array<vec2<f32>, 11>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    global1 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.a))), global1.b, 0i, global1.d);
    let var_0 = ~vec2<i32>(global1.c, global0.e.x);
    var var_1 = vec4<bool>(true, global1.d, any(!(!(!vec2<bool>(global0.c, global1.d)))), global0.c);
    let var_2 = Struct_3(Struct_2(_wgslsmith_add_i32(global1.c, _wgslsmith_dot_vec3_i32(-vec3<i32>(-8108i, var_0.x, -39460i), max(global0.e.zww, global0.e.xyy))), reverseBits(reverseBits(_wgslsmith_mult_vec2_i32(global0.e.ww, vec2<i32>(1725i, global0.b.x)))), all(var_1.yw), global0.d, -vec4<i32>(global0.e.x, global0.e.x, firstLeadingBit(global1.c), ~0i)), Struct_1(-408f, vec4<u32>(select(u_input.a, 0u, true), ~1u, _wgslsmith_dot_vec3_u32(abs(global1.b.zww), vec3<u32>(u_input.a, 18444u, 0u) & vec3<u32>(32442u, 52573u, global1.b.x)), 6057u), global1.c, true));
    let var_3 = _wgslsmith_f_op_f32(min(1085f, _wgslsmith_f_op_f32(-global0.d)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) * -831f);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: vec2<u32>) -> Struct_2 {
    let var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(func_3());
    global0 = Struct_2(min(firstTrailingBit(_wgslsmith_sub_i32(global0.a, global0.a)) << (_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(53007u, 1u), vec2<u32>(arg_2.x, global1.b.x)), _wgslsmith_dot_vec2_u32(global1.b.yz, var_0)) % 32u), -global1.c), global0.e.wy, true, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(sign(-303f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d - 457f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x))))), _wgslsmith_add_vec4_i32(firstLeadingBit(min(global0.e & vec4<i32>(global0.a, global1.c, global1.c, global1.c), -vec4<i32>(1i, global1.c, global1.c, 11680i))), ~global0.e));
    let var_2 = Struct_2(countOneBits(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-57153i, 45254i, global1.c, global1.c), ~global0.e, !vec4<bool>(global0.c, false, global0.c, true)), firstTrailingBit(firstTrailingBit(global0.e)))), countOneBits(-global0.b), global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), global0.e);
    global0 = Struct_2(_wgslsmith_mult_i32(min(abs(-2147483647i), _wgslsmith_mod_i32(global0.b.x, ~19491i)), -66600i), reverseBits(global0.b), any(vec4<bool>(arg_2.x >= 4294967295u, any(vec2<bool>(global0.c, true)), var_2.d >= 1428f, !var_2.c)) & select(any(select(vec2<bool>(true, global1.d), vec2<bool>(var_2.c, true), global0.c)), false, true), global0.d, vec4<i32>(63623i, -(~23686i), -global0.e.x, global1.c));
    return Struct_2(-_wgslsmith_div_i32(_wgslsmith_clamp_i32(-3485i, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.x, global0.e.x, global0.e.x), vec3<i32>(44964i, -5425i, 58107i)), -var_2.b.x), _wgslsmith_mod_i32(1i, ~(-38718i))), var_2.e.yw, true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-678f, 918f))))))), -vec4<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(59203i, -2147483647i)), -vec2<i32>(global0.e.x, -1i)), ~(~2147483647i), 36232i, -19829i));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: vec2<bool>, arg_3: f32) -> vec2<bool> {
    var var_0 = 0u;
    global0 = func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1182f)), global0.d, arg_0.b.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(min(global1.a, -698f)), _wgslsmith_f_op_f32(-global0.d), global1.a, _wgslsmith_f_op_f32(-1040f * 1140f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-838f, _wgslsmith_f_op_f32(select(global1.a, arg_0.a.d, false)), global1.a, _wgslsmith_div_f32(global1.a, arg_0.a.d)))), min(max(~global1.b.yw, ~arg_0.b.b.xy), ~(~global1.b.yw)));
    var var_1 = vec3<u32>(max(~(~_wgslsmith_mod_u32(22086u, arg_0.b.b.x)), ~(~reverseBits(global1.b.x))), ~countOneBits(25865u), ~(5741u ^ firstLeadingBit(arg_0.b.b.x)));
    let var_2 = ~_wgslsmith_clamp_u32(21326u, ~min(global1.b.x, global1.b.x), u_input.a >> ((19750u ^ u_input.a) % 32u)) == (64486u ^ arg_0.b.b.x);
    var var_3 = -1366f;
    return arg_2;
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_3) -> u32 {
    global1 = Struct_1(global1.a, ~min(~global1.b, vec4<u32>(1u, abs(u_input.a), _wgslsmith_clamp_u32(1u, u_input.a, global1.b.x), global1.b.x)), -48998i, any(vec3<bool>(false, global0.c | global0.c, false)) && false);
    let var_0 = vec4<i32>(0i, ~arg_1, 1i, _wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(global1.c, arg_1), -315i ^ max(arg_2.b.c, -9814i)), -31355i));
    let var_1 = !vec3<bool>(global1.d || global0.c, !global0.c, arg_0.x);
    global2 = array<vec2<f32>, 11>();
    var var_2 = _wgslsmith_add_vec4_i32(vec4<i32>(-20737i, ~arg_1, global0.e.x, 18972i), arg_2.a.e & _wgslsmith_div_vec4_i32(var_0, firstLeadingBit(abs(global0.e))));
    return _wgslsmith_clamp_u32(global1.b.x, 0u ^ global1.b.x, 71179u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.b.x;
    var var_1 = global1.d;
    var var_2 = vec3<bool>(true, select(global0.c, any(!(!vec4<bool>(true, global1.d, global1.d, global1.d))), ~1u < _wgslsmith_div_u32(38293u, _wgslsmith_clamp_u32(global1.b.x, 23209u, global1.b.x))), false);
    global1 = Struct_1(_wgslsmith_f_op_f32(-global1.a), vec4<u32>(60378u, 24926u, ~func_4(func_1(Struct_3(Struct_2(global0.e.x, global0.b, false, global1.a, vec4<i32>(global0.b.x, global1.c, -1893i, global0.e.x)), Struct_1(1600f, vec4<u32>(35120u, 106780u, 0u, u_input.a), -2147483647i, var_2.x)), global0.e, var_2.yx, 109f), _wgslsmith_sub_i32(13117i, -3848i), Struct_3(Struct_2(2147483647i, vec2<i32>(global0.a, global0.a), global1.d, global1.a, global0.e), Struct_1(global0.d, global1.b, -2147483647i, true))), _wgslsmith_add_u32(0u, 5037u)), _wgslsmith_add_i32(~(-_wgslsmith_clamp_i32(41231i, 17813i, global1.c)), -15570i), !all(vec4<bool>(var_2.x, any(var_2.yx), var_2.x, global1.d)));
    global0 = func_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global1.a)), _wgslsmith_f_op_f32(f32(-1f) * -284f))), _wgslsmith_f_op_f32(-global0.d), global1.a), vec3<f32>(_wgslsmith_f_op_f32(-global0.d), 323f, global1.a))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.d, _wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(f32(-1f) * -517f), global0.d))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.d, global0.d, global0.d, -2273f), vec4<f32>(global0.d, 1000f, global1.a, 1000f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, global1.a, 570f, global1.a))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1945f, global0.d, 1526f, global0.d))))), global1.b.xx);
    global1 = Struct_1(_wgslsmith_f_op_f32(ceil(global1.a)), global1.b, -10686i, abs(_wgslsmith_sub_u32(u_input.a, abs(1u))) == ~25136u);
    var var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(global2[_wgslsmith_index_u32(4294967295u, 11u)]))))));
    var var_4 = ~(-9935i);
    var var_5 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d, var_3.x, global0.d)) - vec3<f32>(global1.a, global0.d, -2274f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d, -646f, var_3.x, -1159f) + vec4<f32>(983f, global0.d, 1000f, -691f)) + vec4<f32>(522f, var_3.x, global0.d, global1.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1075f, 1196f, -665f, global0.d) * vec4<f32>(-883f, -860f, global1.a, global0.d)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, global1.a, var_3.x, global1.a))), all(!vec2<bool>(true, var_2.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(499f, -1000f, global1.a, 626f))), !select(vec4<bool>(global0.c, global1.d, false, global1.d), select(vec4<bool>(global1.d, true, global1.d, false), vec4<bool>(global0.c, global1.d, true, var_2.x), vec4<bool>(true, var_2.x, false, global0.c)), select(vec4<bool>(var_2.x, false, global1.d, global1.d), vec4<bool>(true, var_2.x, var_2.x, true), vec4<bool>(var_2.x, false, var_2.x, true))))), vec2<u32>(0u, _wgslsmith_mult_u32(~u_input.a, firstTrailingBit(global1.b.x ^ 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(global0.d + -437f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.d - _wgslsmith_f_op_f32(var_5.d - var_5.d)))), _wgslsmith_f_op_f32(var_5.d - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a - -667f))))), vec3<u32>(func_4(select(vec2<bool>(true, true), !var_2.zy, func_2(vec3<f32>(-468f, var_5.d, var_3.x), vec4<f32>(global0.d, 1692f, var_3.x, -1399f), global1.b.ww).c), firstTrailingBit(_wgslsmith_dot_vec4_i32(var_5.e, var_5.e)), Struct_3(func_2(vec3<f32>(global0.d, var_3.x, var_3.x), vec4<f32>(557f, global0.d, var_5.d, -1844f), vec2<u32>(44509u, 0u)), Struct_1(global0.d, global1.b, global0.a, global1.d))), ~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(0u, 0u)), _wgslsmith_mult_vec2_u32(vec2<u32>(global1.b.x, 1u), vec2<u32>(global1.b.x, 43088u))), _wgslsmith_dot_vec2_u32(vec2<u32>(global1.b.x, u_input.a) & vec2<u32>(global1.b.x, 0u), _wgslsmith_sub_vec2_u32(global1.b.xw, global1.b.zz)) & _wgslsmith_mult_u32(0u, ~global1.b.x)));
}

