struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<f32>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, true);

var<private> global1: bool = false;

var<private> global2: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(Struct_1(false, false, vec2<f32>(-120f, -1528f), false, vec3<u32>(61853u, 89844u, 0u))), Struct_2(Struct_1(false, true, vec2<f32>(848f, -746f), false, vec3<u32>(4294967295u, 15186u, 1u))), Struct_2(Struct_1(true, false, vec2<f32>(-1153f, 928f), true, vec3<u32>(46507u, 0u, 0u))), Struct_2(Struct_1(false, false, vec2<f32>(-279f, -493f), true, vec3<u32>(1u, 4294967295u, 34489u))), Struct_2(Struct_1(true, false, vec2<f32>(1106f, -1069f), true, vec3<u32>(57173u, 1u, 19864u))), Struct_2(Struct_1(false, false, vec2<f32>(1692f, 1000f), true, vec3<u32>(121100u, 32088u, 1u))), Struct_2(Struct_1(true, false, vec2<f32>(-636f, 126f), false, vec3<u32>(4294967295u, 45786u, 36835u))), Struct_2(Struct_1(true, true, vec2<f32>(-553f, 132f), true, vec3<u32>(0u, 0u, 1u))), Struct_2(Struct_1(true, false, vec2<f32>(1130f, 294f), true, vec3<u32>(4294967295u, 4294967295u, 35852u))), Struct_2(Struct_1(true, false, vec2<f32>(1608f, 1000f), true, vec3<u32>(4053u, 50488u, 0u))), Struct_2(Struct_1(false, false, vec2<f32>(-691f, -1000f), true, vec3<u32>(12414u, 24190u, 97233u))), Struct_2(Struct_1(false, false, vec2<f32>(-1358f, -1089f), false, vec3<u32>(4294967295u, 105716u, 0u))), Struct_2(Struct_1(true, false, vec2<f32>(708f, 841f), false, vec3<u32>(14397u, 1u, 4294967295u))), Struct_2(Struct_1(false, true, vec2<f32>(-774f, -1000f), true, vec3<u32>(0u, 1u, 1u))));

var<private> global3: vec4<u32> = vec4<u32>(9498u, 995u, 3642u, 1996u);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec3<u32> {
    global1 = !(~(~min(u_input.d, global3.x)) != 4294967295u);
    global3 = ~abs(select(vec4<u32>(~0u, global3.x, global3.x >> (3911u % 32u), global3.x), _wgslsmith_add_vec4_u32(abs(vec4<u32>(u_input.b, u_input.b, 0u, u_input.d)), ~vec4<u32>(global3.x, 29412u, 50851u, global3.x)), global0.x && true));
    var var_0 = u_input.a;
    var var_1 = Struct_2(Struct_1(any(!(!vec4<bool>(global0.x, true, false, true))), true, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(556f, -657f)), _wgslsmith_f_op_f32(741f - -363f)) + vec2<f32>(-1846f, 1088f)), any(global0.yx), vec3<u32>(28607u, ~(~global3.x), 0u)));
    var_0 = 1i;
    return _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(global3.wzw, global3.xyy) & ~u_input.b, var_1.a.e.x, global3.x), global3.zxw), firstTrailingBit(vec3<u32>(4294967295u, 0u >> (0u % 32u), 4070u) << (_wgslsmith_mod_vec3_u32(global3.ywz, max(var_1.a.e, global3.wwx)) % vec3<u32>(32u))), abs(~max(var_1.a.e, vec3<u32>(var_1.a.e.x, var_1.a.e.x, 4294967295u))) << (var_1.a.e % vec3<u32>(32u)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_4) -> u32 {
    var var_0 = arg_2.e.x & ~(~(firstLeadingBit(global3.x) << (firstTrailingBit(0u) % 32u)));
    var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(firstLeadingBit(firstLeadingBit(vec3<u32>(u_input.b, u_input.b, u_input.d))), ~_wgslsmith_sub_vec3_u32(~vec3<u32>(arg_2.e.x, arg_2.e.x, arg_2.e.x), ~arg_2.e)), firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(abs(u_input.b), 1u, abs(12332u)), vec3<u32>(1u, 4294967295u, u_input.d << (global3.x % 32u)), vec3<u32>(u_input.d >> (global3.x % 32u), global3.x, firstLeadingBit(global3.x)))));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(global3.x), _wgslsmith_dot_vec2_u32(~(~firstTrailingBit(global3.ww)), firstLeadingBit(arg_2.e.zy))), 14u)];
    let var_2 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c.x + 348f)))), 1u >= ~countOneBits(_wgslsmith_clamp_u32(7145u, 91747u, 4613u)), vec3<bool>(true, var_1.a.a, all(!select(vec2<bool>(true, global0.x), vec2<bool>(arg_0.x, arg_0.x), arg_0.yy))), Struct_1(true, true, _wgslsmith_f_op_vec2_f32(-arg_2.c), true, _wgslsmith_mod_vec3_u32(func_3(), countOneBits(vec3<u32>(1u, 0u, global3.x))) ^ reverseBits(max(vec3<u32>(arg_2.e.x, 64340u, 45625u), vec3<u32>(u_input.d, 26553u, 4703u)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1485f, _wgslsmith_f_op_f32(f32(-1f) * -1217f), -1325f), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.d.c.x, 2240f, var_2.d.c.x), vec3<f32>(-368f, -2232f, -159f))))))))));
    return arg_2.e.x;
}

fn func_1() -> vec3<u32> {
    global1 = false;
    var var_0 = _wgslsmith_add_vec2_i32(select(u_input.c, select(u_input.c, u_input.c, false), vec2<bool>(global0.x, any(select(vec3<bool>(false, true, global0.x), vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, true, global0.x))))), ~vec2<i32>(22839i, 0i));
    global0 = !vec3<bool>(u_input.c.x < _wgslsmith_div_i32(var_0.x, 0i), -1861i >= u_input.a, all(select(!vec3<bool>(true, false, global0.x), select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, false, false), vec3<bool>(false, global0.x, global0.x)), all(vec4<bool>(global0.x, global0.x, global0.x, global0.x)))));
    global3 = (vec4<u32>(~_wgslsmith_div_u32(u_input.b, 0u), ~_wgslsmith_clamp_u32(13584u, u_input.b, u_input.d), 0u, ~func_2(vec3<bool>(global0.x, true, global0.x), vec2<i32>(-1i, -1i), Struct_1(global0.x, global0.x, vec2<f32>(-661f, -1345f), false, global3.yxx), Struct_4(vec3<bool>(false, true, global0.x), true))) >> (~firstLeadingBit(vec4<u32>(u_input.b, global3.x, 4294967295u, 27118u) | vec4<u32>(55380u, global3.x, 8036u, u_input.b)) % vec4<u32>(32u))) & vec4<u32>(~_wgslsmith_sub_u32(global3.x, func_2(vec3<bool>(false, false, global0.x), vec2<i32>(u_input.c.x, -2904i), Struct_1(true, true, vec2<f32>(1662f, 1000f), global0.x, global3.zyy), Struct_4(vec3<bool>(global0.x, true, false), global0.x))), u_input.d, global3.x, 4294967295u);
    let var_1 = -1i;
    return global3.xyz;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: i32) -> vec2<f32> {
    var var_0 = global2[_wgslsmith_index_u32(arg_0.e.x, 14u)];
    let var_1 = Struct_2(Struct_1(false, true, arg_0.c, arg_0.b, ~firstLeadingBit(abs(arg_0.e))));
    global3 = _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(7468u, arg_0.e.x, 17001u, 1u) | vec4<u32>(4294967295u, var_0.a.e.x, 1553u, 1u), countOneBits(vec4<u32>(4294967295u, 1u, var_1.a.e.x, 41045u)), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.a.e.x, global3.x, global3.x, global3.x), vec4<u32>(1u, global3.x, 60096u, arg_0.e.x)))), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 52566u, 1u, global3.x) >> ((vec4<u32>(global3.x, var_1.a.e.x, var_1.a.e.x, var_1.a.e.x) << (vec4<u32>(var_0.a.e.x, 15960u, 0u, var_0.a.e.x) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_add_u32(0u, global3.x), firstTrailingBit(arg_0.e.x), u_input.b, _wgslsmith_sub_u32(var_0.a.e.x, 26176u)))), vec4<u32>(4294967295u, 4294967295u, func_1().x, arg_0.e.x >> (1u % 32u)) >> (~vec4<u32>(global3.x, _wgslsmith_sub_u32(1u, u_input.b), countOneBits(u_input.d), ~var_1.a.e.x) % vec4<u32>(32u)));
    var_0 = global2[_wgslsmith_index_u32(~1u, 14u)];
    let var_2 = _wgslsmith_f_op_f32(arg_0.c.x + -835f);
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-409f, arg_0.c.x)) - _wgslsmith_div_f32(-312f, 188f)), var_0.a.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!any(select(!vec3<bool>(global0.x, global0.x, global0.x), !vec3<bool>(global0.x, global0.x, global0.x), global0.x)), !global0.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(Struct_1(global0.x, true & global0.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(641f, -605f)), all(global0.xz), func_1()), vec2<bool>(true, true), reverseBits(u_input.a))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(abs(491f)), _wgslsmith_div_f32(363f, 397f))))), any(vec3<bool>(false, false, true)), vec3<u32>(u_input.b, global3.x, func_1().x >> ((global3.x & _wgslsmith_clamp_u32(global3.x, 9814u, global3.x)) % 32u)));
    global0 = !vec3<bool>(any(select(vec4<bool>(var_0.a, var_0.a, var_0.b, global0.x), vec4<bool>(var_0.b, true, false, var_0.b), select(vec4<bool>(var_0.a, false, var_0.a, var_0.b), vec4<bool>(var_0.d, global0.x, global0.x, true), var_0.a))), global0.x != true, select(false, true, true | global0.x));
    let var_1 = vec4<u32>(8762u, 1u, (global3.x | firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global3.x), vec2<u32>(15577u, 0u)))) << (reverseBits(~0u) % 32u), 4294967295u);
    let var_2 = func_1();
    var var_3 = global0.zx;
    let var_4 = _wgslsmith_div_vec2_i32(firstTrailingBit(u_input.c), u_input.c);
    global2 = array<Struct_2, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(1i));
}

