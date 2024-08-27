struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(true, 0u, vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false)), Struct_1(true, 92971u, vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false)), Struct_1(false, 60393u, vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)), Struct_1(false, 1u, vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true)), Struct_1(true, 16207u, vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)), Struct_1(false, 11311u, vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false)), Struct_1(true, 1u, vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false)), Struct_1(true, 1u, vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false)), Struct_1(true, 1u, vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false)));

var<private> global1: array<Struct_1, 5>;

var<private> global2: vec2<i32> = vec2<i32>(2147483647i, 1i);

var<private> global3: array<Struct_1, 32>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_1(!(arg_0.c.x | all(vec3<bool>(arg_2.c.x, arg_0.c.x, arg_0.d.x))), ~min(arg_2.b, ~(~78154u)), vec4<bool>(true, !(0i <= u_input.c), false, arg_2.d.x), arg_2.c);
    let var_1 = global1[_wgslsmith_index_u32(~countOneBits(~(~u_input.a.x)), 5u)];
    global0 = array<Struct_1, 9>();
    global1 = array<Struct_1, 5>();
    var var_2 = Struct_1(all(arg_2.c.zzx), countOneBits(1u), select(vec4<bool>(arg_2.a, true, arg_2.a, abs(1u) <= min(arg_2.b, u_input.a.x)), !arg_0.d, !select(select(vec4<bool>(var_1.d.x, var_0.d.x, arg_0.a, true), vec4<bool>(var_1.d.x, true, arg_0.a, true), arg_0.c), select(vec4<bool>(false, true, false, false), vec4<bool>(var_1.a, false, false, true), var_1.d), true)), arg_2.d);
    return u_input.a.x;
}

fn func_4(arg_0: vec4<i32>, arg_1: u32) -> i32 {
    let var_0 = u_input.e.x;
    global2 = ~u_input.e.xz;
    var var_1 = global1[_wgslsmith_index_u32(select(0u, 57411u, true), 5u)];
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(773f + 1000f)) - _wgslsmith_f_op_f32(-766f + _wgslsmith_f_op_f32(f32(-1f) * -963f))))));
    var var_3 = var_1.a;
    return firstTrailingBit(arg_0.x);
}

fn func_2() -> vec2<i32> {
    global2 = vec2<i32>(_wgslsmith_sub_i32(global2.x, func_4(abs(abs(vec4<i32>(-3034i, global2.x, -22579i, -2147483647i))), func_3(global1[_wgslsmith_index_u32(~56506u, 5u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(2467f, -1529f, 1786f)), Struct_1(true, 0u, vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true))))), u_input.c);
    let var_0 = global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(u_input.a.x), select(u_input.d, u_input.d, false) & u_input.a.x, u_input.d, 55204u ^ ~u_input.d), countOneBits(firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(30483u, 2114u, 0u, 0u), vec4<u32>(u_input.d, 3080u, u_input.a.x, 1u), vec4<u32>(0u, u_input.a.x, 0u, 134833u))))), 32u)];
    global3 = array<Struct_1, 32>();
    let var_1 = Struct_1(true, _wgslsmith_mult_u32(var_0.b, firstLeadingBit(63816u) & func_3(Struct_1(true, 26105u, vec4<bool>(var_0.c.x, true, true, var_0.c.x), var_0.d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(534f, -158f, 1384f)), global3[_wgslsmith_index_u32(18845u, 32u)])), var_0.c, var_0.c);
    let var_2 = var_0.d.x;
    return select(~firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.e.x, u_input.e.x), vec2<i32>(u_input.c, global2.x))) >> (u_input.a % vec2<u32>(32u)), ~(vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(u_input.e.xy, vec2<i32>(1i, 0i))), !var_1.c.ww);
}

fn func_5(arg_0: bool, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = select(select(vec2<bool>(arg_0 && true, arg_0), !(!(!vec2<bool>(false, arg_0))), true), vec2<bool>(all(select(!vec4<bool>(true, arg_0, false, true), !vec4<bool>(arg_0, false, true, arg_0), !arg_0)), any(select(select(vec4<bool>(arg_0, true, true, false), vec4<bool>(false, arg_0, arg_0, false), vec4<bool>(false, true, arg_0, arg_0)), !vec4<bool>(true, arg_0, true, arg_0), false))), !(!select(arg_0 & false, arg_0, true)));
    global1 = array<Struct_1, 5>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(1u), u_input.d) | _wgslsmith_mod_u32(1u, ~51286u), 9u)];
    global0 = array<Struct_1, 9>();
    let var_2 = all(vec4<bool>(var_1.a, any(var_1.c.wy), false, !(!(var_1.c.x & false))));
    return Struct_1(true, 18074u, !var_1.c, vec4<bool>(var_0.x, var_2, arg_0, any(select(select(vec2<bool>(false, arg_0), vec2<bool>(var_0.x, false), arg_0), var_1.c.zz, var_1.d.xx))));
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: vec4<bool>) -> u32 {
    let var_0 = func_5(arg_1.c.x, -((u_input.e.zx >> (~vec2<u32>(1u, 3886u) % vec2<u32>(32u))) & (_wgslsmith_mult_vec2_i32(u_input.e.xx, vec2<i32>(-1i, global2.x)) & select(vec2<i32>(u_input.e.x, 28076i), vec2<i32>(u_input.e.x, 0i), vec2<bool>(false, arg_1.a)))));
    let var_1 = Struct_1(arg_1.c.x, var_0.b, !vec4<bool>(var_0.a, var_0.a, var_0.c.x, !arg_2.x), func_5(true, vec2<i32>(-func_2().x, global2.x)).d);
    global2 = ~u_input.e.yx;
    global1 = array<Struct_1, 5>();
    global0 = array<Struct_1, 9>();
    return 1u;
}

fn func_1(arg_0: vec2<u32>) -> u32 {
    return func_6(~_wgslsmith_add_i32(abs(global2.x), 0i), func_5(all(vec2<bool>(true, any(vec3<bool>(false, true, true)))), ~func_2()), !vec4<bool>(true, abs(13555u) <= _wgslsmith_dot_vec4_u32(vec4<u32>(103405u, 1u, u_input.d, 0u), vec4<u32>(arg_0.x, 116010u, u_input.d, arg_0.x)), any(func_5(true, u_input.e.xz).c), true && any(vec4<bool>(false, true, false, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1193f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1374f))))))));
    var var_1 = Struct_1(true, _wgslsmith_mult_u32(abs(_wgslsmith_mult_u32(u_input.d, 72205u)) | func_1(u_input.a | vec2<u32>(u_input.a.x, 4294967295u)), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.d) & vec2<u32>(4294967295u, 1u), abs(u_input.a)))), !(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true)), select(vec4<bool>(true, (41172i > u_input.b) & (31792u >= u_input.a.x), func_5(true, vec2<i32>(u_input.b, u_input.c)).a, true), !vec4<bool>(all(vec4<bool>(true, true, false, true)), true, true, true), func_5(true, vec2<i32>(_wgslsmith_mod_i32(-44547i, 2147483647i), global2.x)).c.x));
    var var_2 = -28382i;
    global2 = ~(~_wgslsmith_add_vec2_i32(select(vec2<i32>(-48514i, -1i), u_input.e.xx, vec2<bool>(true, var_1.a)), u_input.e.xz) ^ u_input.e.yx);
    var_2 = _wgslsmith_mult_i32(u_input.c, -2147483647i);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, var_0));
    var var_4 = (_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.e.x, global2.x, global2.x, -1i), -vec4<i32>(-1i, 2147483647i, global2.x, 1i)) >> (reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(65951u, 1u, 11103u, var_1.b), select(vec4<u32>(var_1.b, var_1.b, 4294967295u, 30989u), vec4<u32>(4294967295u, var_1.b, 52963u, u_input.a.x), false))) % vec4<u32>(32u))) ^ ((firstLeadingBit(~vec4<i32>(36716i, 8270i, -27131i, -4005i)) | -_wgslsmith_clamp_vec4_i32(vec4<i32>(-9389i, -1521i, 0i, global2.x), vec4<i32>(u_input.c, u_input.b, global2.x, global2.x), vec4<i32>(u_input.c, 0i, -670i, 1i))) >> (~vec4<u32>(~u_input.a.x, ~var_1.b, ~52052u, min(7732u, 19320u)) % vec4<u32>(32u)));
    let var_5 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -584f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + 243f) - _wgslsmith_f_op_f32(-var_3)), -1330f, -1455f) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1999f, 412f, var_0, -1856f), vec4<f32>(-247f, -1000f, var_3, 629f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, var_0, var_3, 858f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1661f, var_0, var_3, -364f)))))))));
    var var_6 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_add_i32(_wgslsmith_div_i32(1i, global2.x) | firstTrailingBit(-1i), ~(i32(-1i) * -4716i)), -1i), u_input.d, var_4.xyx);
}

