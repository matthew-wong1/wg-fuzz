struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(Struct_1(vec4<i32>(0i, -18859i, 2147483647i, -28804i), 49084u, true, -29217i), vec2<i32>(0i, 0i)), Struct_2(Struct_1(vec4<i32>(-20497i, -1i, 2147483647i, 1i), 19618u, false, i32(-2147483648)), vec2<i32>(23724i, 2147483647i)), Struct_2(Struct_1(vec4<i32>(5379i, -33379i, 1i, 0i), 15583u, true, i32(-2147483648)), vec2<i32>(68734i, -25135i)), Struct_2(Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 37612i, -1i), 4294967295u, true, 0i), vec2<i32>(-16791i, 1i)), Struct_2(Struct_1(vec4<i32>(1i, 0i, 27712i, -15710i), 38685u, true, 13558i), vec2<i32>(-5373i, 0i)), Struct_2(Struct_1(vec4<i32>(-1i, 4155i, 25215i, -1i), 1u, true, -21743i), vec2<i32>(20202i, 27859i)), Struct_2(Struct_1(vec4<i32>(-42257i, 1i, 27899i, -1i), 1u, false, 3158i), vec2<i32>(39577i, 2147483647i)), Struct_2(Struct_1(vec4<i32>(0i, 10613i, 54110i, 34930i), 22344u, false, -42033i), vec2<i32>(13623i, 1i)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -2479i, 16186i, -48034i), 29655u, false, i32(-2147483648)), vec2<i32>(0i, -19970i)), Struct_2(Struct_1(vec4<i32>(-25754i, 26119i, 32751i, -30764i), 66566u, true, 1i), vec2<i32>(0i, -53601i)), Struct_2(Struct_1(vec4<i32>(-48341i, -1161i, 17819i, -5351i), 63257u, true, 0i), vec2<i32>(-1i, -1i)), Struct_2(Struct_1(vec4<i32>(2147483647i, 0i, i32(-2147483648), 0i), 22506u, true, -36149i), vec2<i32>(2147483647i, 2147483647i)), Struct_2(Struct_1(vec4<i32>(-17999i, 15277i, 1032i, -1i), 30976u, false, 17435i), vec2<i32>(-15989i, 16305i)), Struct_2(Struct_1(vec4<i32>(2147483647i, -2321i, -1i, -28028i), 26029u, false, i32(-2147483648)), vec2<i32>(2147483647i, -37000i)), Struct_2(Struct_1(vec4<i32>(15320i, 12321i, 16558i, 2147483647i), 4294967295u, false, i32(-2147483648)), vec2<i32>(-1i, 83814i)), Struct_2(Struct_1(vec4<i32>(55357i, -10081i, 2147483647i, 23832i), 4294967295u, false, 68763i), vec2<i32>(-1i, 2147483647i)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 0i, 31961i, 0i), 2717u, true, i32(-2147483648)), vec2<i32>(1i, 0i)), Struct_2(Struct_1(vec4<i32>(-26351i, 1i, -13686i, 0i), 1u, false, -22196i), vec2<i32>(2147483647i, -1i)), Struct_2(Struct_1(vec4<i32>(1i, 1i, 1i, -1i), 4294967295u, false, 3126i), vec2<i32>(27009i, i32(-2147483648))), Struct_2(Struct_1(vec4<i32>(-31868i, -1i, 1i, 26271i), 7833u, false, 2607i), vec2<i32>(67269i, -24340i)));

var<private> global1: Struct_3;

var<private> global2: array<Struct_1, 20>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec3<i32> {
    global0 = array<Struct_2, 20>();
    var var_0 = select(vec2<i32>(_wgslsmith_div_i32(~(-1i), _wgslsmith_dot_vec2_i32(u_input.b.xx, u_input.b.zy)), u_input.b.x), u_input.b.yy, vec2<bool>(true, true)) ^ ~vec2<i32>(min(u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.d), vec2<i32>(-65133i, -12927i))), 1i);
    global1 = Struct_3(5876u);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f))));
    var_0 = u_input.b.xy;
    return _wgslsmith_div_vec3_i32(firstTrailingBit(select(u_input.b, _wgslsmith_clamp_vec3_i32(u_input.b, vec3<i32>(2147483647i, u_input.b.x, 2147483647i), vec3<i32>(var_0.x, u_input.b.x, -2147483647i)), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)))), (u_input.b ^ (vec3<i32>(u_input.b.x, var_0.x, var_0.x) << ((vec3<u32>(86406u, u_input.a, global1.a) & vec3<u32>(u_input.a, 1u, global1.a)) % vec3<u32>(32u)))) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_add_i32(0i, 29104i), u_input.d, 1i), -u_input.b >> (abs(vec3<u32>(2821u, u_input.a, 4294967295u)) % vec3<u32>(32u))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: vec3<i32>) -> vec3<bool> {
    global2 = array<Struct_1, 20>();
    let var_0 = vec3<i32>(-(~(arg_2.x ^ arg_1.x) | -firstLeadingBit(arg_1.x)), -2147483647i, (i32(-1i) * -countOneBits(arg_1.x)) ^ _wgslsmith_clamp_i32(1i, -2147483647i, 1i));
    let var_1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(max(_wgslsmith_div_i32(arg_1.x, 36888i), -2147483647i), arg_1.x, ~arg_1.x), abs(vec3<i32>(55846i, arg_2.x, _wgslsmith_dot_vec2_i32(countOneBits(arg_2.zx), max(vec2<i32>(-2147483647i, u_input.d), vec2<i32>(arg_1.x, -2147483647i))))), _wgslsmith_mult_vec3_i32(u_input.b, select(var_0, firstLeadingBit(_wgslsmith_add_vec3_i32(var_0, vec3<i32>(-15525i, u_input.d, -61501i))), -1i < arg_1.x)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var_2 = -211f;
    return vec3<bool>(true, (all(vec4<bool>(false, false, false, false)) != true) & any(vec3<bool>(true, true, false)), any(vec2<bool>(true, select(select(false, true, true), all(vec4<bool>(false, true, false, true)), true))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    let var_0 = vec4<bool>((arg_2.c || true) & all(!select(vec3<bool>(arg_2.c, arg_2.c, true), vec3<bool>(false, arg_2.c, arg_2.c), vec3<bool>(arg_2.c, true, arg_2.c))), arg_2.c, any(func_4(~countOneBits(arg_0.yx), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, arg_3, arg_2.a.x, 59408i), vec4<i32>(-44579i, arg_1.x, arg_1.x, -1i)) << (reverseBits(vec4<u32>(1u, 1u, global1.a, arg_0.x)) % vec4<u32>(32u)), vec3<i32>(-2147483647i, -1i, arg_1.x) ^ func_3())), arg_2.c);
    var var_1 = Struct_3(_wgslsmith_mult_u32(arg_0.x, firstLeadingBit(77919u)));
    var var_2 = _wgslsmith_f_op_f32(ceil(531f));
    var var_3 = Struct_1(arg_2.a & ((-vec4<i32>(-2147483647i, -16554i, arg_3, 1i) | vec4<i32>(arg_1.x, arg_1.x, 0i, arg_1.x)) ^ arg_2.a), u_input.c, !select(1074f != _wgslsmith_f_op_f32(step(-789f, 1000f)), arg_2.c, !arg_2.c), u_input.d);
    var var_4 = Struct_2(global2[_wgslsmith_index_u32(min(_wgslsmith_dot_vec2_u32(arg_0.xz, vec2<u32>(select(global1.a, 0u, var_0.x), _wgslsmith_mod_u32(u_input.a, u_input.a))), countOneBits(~(~0u))), 20u)], vec2<i32>(14589i, _wgslsmith_add_i32(29968i, select(-arg_2.a.x, _wgslsmith_dot_vec2_i32(u_input.b.yx, arg_1.zy), true))));
    return arg_2;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>) -> vec2<i32> {
    var var_0 = Struct_3(u_input.a);
    let var_1 = Struct_2(func_2((~vec4<u32>(var_0.a, global1.a, 1u, var_0.a) ^ ~vec4<u32>(var_0.a, u_input.c, 1u, global1.a)) ^ firstLeadingBit(~vec4<u32>(12495u, arg_0.b, 1u, var_0.a)), arg_0.a.zxz, global2[_wgslsmith_index_u32(arg_0.b >> (_wgslsmith_clamp_u32(~global1.a, global1.a | 0u, 4294967295u) % 32u), 20u)], u_input.d), _wgslsmith_div_vec2_i32(vec2<i32>(~(u_input.b.x << (arg_0.b % 32u)), 0i), vec2<i32>(func_3().x, arg_0.a.x & u_input.b.x)));
    global1 = Struct_3(global1.a);
    global2 = array<Struct_1, 20>();
    let var_2 = ~vec4<i32>(arg_0.a.x, -63070i, var_1.a.a.x, max(arg_0.a.x, _wgslsmith_mod_i32(abs(var_1.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b.x, u_input.d, var_1.b.x), vec3<i32>(u_input.d, var_1.b.x, 52444i)))));
    return ~vec2<i32>(var_2.x, var_2.x);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: i32) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-455f * -1013f)));
    let var_1 = Struct_2(Struct_1(max(arg_1.a.a << (vec4<u32>(global1.a, global1.a, 1u, 25903u) % vec4<u32>(32u)), ~arg_1.a.a) & _wgslsmith_mult_vec4_i32(arg_1.a.a, ~arg_1.a.a), ~33178u, false & any(select(vec3<bool>(arg_1.a.c, false, arg_1.a.c), vec3<bool>(arg_1.a.c, arg_1.a.c, arg_1.a.c), vec3<bool>(arg_1.a.c, arg_1.a.c, arg_1.a.c))), arg_2), _wgslsmith_mult_vec2_i32(-func_5(func_2(vec4<u32>(arg_1.a.b, arg_0.x, 86371u, arg_1.a.b), u_input.b, Struct_1(vec4<i32>(u_input.d, 30421i, u_input.b.x, arg_1.b.x), u_input.a, arg_1.a.c, arg_1.b.x), arg_1.b.x), select(vec3<bool>(true, false, false), vec3<bool>(arg_1.a.c, arg_1.a.c, arg_1.a.c), vec3<bool>(arg_1.a.c, arg_1.a.c, false))), arg_1.b));
    var var_2 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2211f))), 434f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-648f)))));
    let var_3 = Struct_2(var_1.a, (abs(u_input.b.xz | var_1.b) >> (max(select(vec2<u32>(arg_1.a.b, u_input.c), arg_0.yx, vec2<bool>(arg_1.a.c, arg_1.a.c)), arg_0.yy) % vec2<u32>(32u))) << (vec2<u32>(11929u, ~(~arg_1.a.b)) % vec2<u32>(32u)));
    return ~vec4<i32>(1i, var_1.a.a.x, ~_wgslsmith_dot_vec4_i32(~var_3.a.a, -var_1.a.a), var_1.b.x);
}

fn func_6(arg_0: vec3<bool>, arg_1: bool, arg_2: vec3<f32>, arg_3: vec4<i32>) -> Struct_3 {
    var var_0 = func_2(vec4<u32>(countOneBits(_wgslsmith_mult_u32(u_input.c & 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.a, global1.a, global1.a), vec3<u32>(u_input.c, global1.a, 20186u)))), 1465u << (1u % 32u), global1.a, _wgslsmith_dot_vec3_u32(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, global1.a, u_input.c), vec3<u32>(41490u, 49505u, 56250u))), vec3<u32>(~0u, max(u_input.a, 4294967295u), u_input.a))), firstLeadingBit(-(~(-vec3<i32>(-23681i, 2147483647i, 7829i)))), global2[_wgslsmith_index_u32(global1.a, 20u)], arg_3.x);
    var var_1 = ~_wgslsmith_sub_i32(-1i, arg_3.x >> (~func_2(vec4<u32>(var_0.b, 4294967295u, u_input.a, 4294967295u), vec3<i32>(u_input.b.x, -6502i, u_input.d), Struct_1(vec4<i32>(var_0.a.x, var_0.d, 24648i, -38466i), 0u, var_0.c, 2147483647i), var_0.d).b % 32u));
    var_0 = global2[_wgslsmith_index_u32(firstTrailingBit(~(~(~(~var_0.b)))), 20u)];
    let var_2 = arg_0.xy;
    var var_3 = Struct_1(var_0.a, ~global1.a, false, arg_3.x);
    return Struct_3(_wgslsmith_mod_u32(37980u, select(func_2(vec4<u32>(0u, var_3.b, 1u, 28552u), vec3<i32>(6871i, -140i, u_input.d), global2[_wgslsmith_index_u32(u_input.a, 20u)], -6926i).b ^ var_3.b, 68894u, !func_4(vec2<u32>(global1.a, var_0.b), var_0.a, vec3<i32>(0i, u_input.d, 8700i)).x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d;
    let var_1 = vec3<bool>(false, true, false);
    global1 = func_6(var_1, var_1.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1953f, -561f, -1098f))), -(func_1(vec4<u32>(global1.a, 4294967295u, 11672u, 21658u) | vec4<u32>(27191u, 32032u, u_input.c, 1u), Struct_2(Struct_1(vec4<i32>(-2147483647i, u_input.d, u_input.b.x, u_input.b.x), 4294967295u, true, u_input.d), vec2<i32>(-19423i, -12118i)), u_input.b.x) << (select(abs(vec4<u32>(1u, u_input.c, 11068u, u_input.c)), vec4<u32>(17882u, u_input.c, 1u, 74353u), var_1.x) % vec4<u32>(32u))));
    global2 = array<Struct_1, 20>();
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2572f), _wgslsmith_f_op_f32(-833f + -2798f)))), -290f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-1169f)), _wgslsmith_f_op_f32(min(360f, 632f)))))) - vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1113f)), _wgslsmith_f_op_f32(step(-384f, -183f)))), -674f, 1f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_2.x, 1f)))), _wgslsmith_f_op_f32(max(1232f, var_2.x)), -18548i, var_2.yyy);
}

