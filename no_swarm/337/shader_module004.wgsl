struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: vec4<bool>,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14> = array<f32, 14>(1068f, -2271f, -240f, 261f, 1103f, -838f, -182f, -1174f, -610f, 686f, -1142f, -1000f, -1220f, -1608f);

var<private> global1: array<Struct_4, 16>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec3<u32>) -> vec4<i32> {
    return vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.d, abs(-1i), arg_1.d, ~0i), _wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.a, -43900i, -1i, arg_0.x), -vec4<i32>(arg_0.x, u_input.b.x, 10491i, -7116i))), arg_0.x, -8664i << (arg_2.x % 32u), arg_0.x);
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_3(-(~func_1(vec2<i32>(2147483647i, 0i) | vec2<i32>(arg_0.b.x, u_input.b.x), Struct_3(vec3<i32>(-24309i, arg_0.b.x, u_input.b.x), arg_0.a.x, vec4<bool>(arg_0.a.x, arg_0.a.x, false, arg_0.a.x), 37019i), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.c.x, arg_0.c), vec3<u32>(arg_0.c, 4294967295u, arg_0.c))).xyw), true, select(!arg_0.a, arg_0.a, arg_0.a), ~arg_0.b.x & 9816i);
    var_0 = Struct_3(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.b.x | _wgslsmith_mult_i32(u_input.b.x, 2147483647i), ~(-1i) & var_0.a.x, 1i), -_wgslsmith_mult_vec3_i32(vec3<i32>(0i, arg_0.b.x, var_0.a.x), firstTrailingBit(u_input.b))), any(!select(select(vec2<bool>(var_0.c.x, arg_0.a.x), arg_0.a.wy, arg_0.a.x), select(vec2<bool>(arg_0.a.x, arg_0.a.x), vec2<bool>(arg_0.a.x, false), true), vec2<bool>(arg_0.a.x, arg_0.a.x))), var_0.c, var_0.a.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1629f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.c, 14u)]))), global0[_wgslsmith_index_u32(u_input.c.x, 14u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1229f, global0[_wgslsmith_index_u32(1u, 14u)])) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(61431u, 14u)]))))));
    var_0 = Struct_3(vec3<i32>(-(i32(-1i) * -2147483647i), u_input.b.x, var_0.a.x), !(true & (-185f > var_1.x)) | (!(!var_0.c.x) | false), !(!arg_0.a), (-37022i << (u_input.c.x % 32u)) ^ arg_0.b.x);
    let var_2 = vec4<u32>(u_input.c.x, _wgslsmith_mod_u32(48745u, ~(~_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(0u, 1u)))), _wgslsmith_div_u32(4294967295u, 33989u), ~_wgslsmith_add_u32(0u, _wgslsmith_div_u32(~u_input.c.x, 25822u)));
    return _wgslsmith_add_u32(var_2.x >> (~(~28037u) % 32u), var_2.x);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    var var_0 = func_3(arg_1);
    var var_1 = Struct_4(Struct_3(arg_1.b, !(!(!arg_0.a.x)), vec4<bool>(select(arg_0.a.x, global0[_wgslsmith_index_u32(1u, 14u)] < global0[_wgslsmith_index_u32(0u, 14u)], false), arg_0.a.x, false, true), _wgslsmith_clamp_i32(-(u_input.a ^ arg_0.b.x), arg_1.b.x, _wgslsmith_add_i32(u_input.b.x, u_input.a))), 22340u);
    var_0 = ~(arg_0.c << (arg_0.c % 32u));
    var var_2 = Struct_3(vec3<i32>(max(1i, arg_1.b.x) | ~abs(u_input.a), firstTrailingBit(var_1.a.d), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b.x, 35085i, 10545i), vec3<i32>(0i, -2147483647i, u_input.b.x)), func_1(u_input.b.zy, Struct_3(vec3<i32>(arg_0.b.x, 34882i, u_input.a), true, arg_0.a, 2147483647i), vec3<u32>(126258u, 44143u, 32166u)).x)), any(arg_1.a.zzw), vec4<bool>(arg_1.a.x, var_1.a.c.x, all(!(!arg_0.a)), false), var_1.a.a.x);
    var var_3 = !arg_1.a.x && true;
    return Struct_2(~(~_wgslsmith_sub_u32(firstTrailingBit(1u), ~0u)), true, arg_1);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_div_f32(-615f, global0[_wgslsmith_index_u32(79406u, 14u)]);
    var var_1 = vec3<i32>(-1i, 1i, (max(_wgslsmith_add_i32(arg_1, u_input.b.x), ~arg_2.c.b.x) & 34328i) | -43583i);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c.x, 14u)] + global0[_wgslsmith_index_u32(arg_0.c.c, 14u)]), _wgslsmith_f_op_f32(-200f - global0[_wgslsmith_index_u32(arg_2.c.c, 14u)])), -738f, global0[_wgslsmith_index_u32(~arg_0.a ^ 35065u, 14u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.c, 448u), u_input.c), 14u)]))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(323f, -971f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -895f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1109f)))), -478f))));
    var var_3 = arg_2.c.b.x;
    var_1 = vec3<i32>(countOneBits(-56334i), ~(-28369i), func_1(arg_0.c.b.zz, Struct_3(~max(arg_0.c.b, vec3<i32>(arg_0.c.b.x, arg_2.c.b.x, u_input.b.x)), any(arg_2.c.a.www) | arg_2.c.a.x, select(select(vec4<bool>(arg_2.c.a.x, arg_2.c.a.x, arg_0.c.a.x, arg_0.b), vec4<bool>(false, arg_2.b, false, arg_2.b), arg_2.c.a.x), arg_0.c.a, arg_2.b), 4704i), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a, 0u, u_input.c.x), vec3<u32>(u_input.c.x, 48185u, arg_0.a)), u_input.c.x, u_input.c.x) & vec3<u32>(~u_input.c.x, 4294967295u, 1u)).x);
    return arg_2;
}

fn func_5(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: Struct_2) -> Struct_3 {
    let var_0 = arg_2;
    var var_1 = Struct_4(Struct_3(-(select(vec3<i32>(-1i, 31556i, arg_2.c.b.x), arg_0.a, true) & -vec3<i32>(u_input.b.x, -22779i, -1i)), all(vec3<bool>(arg_0.c.x, arg_0.c.x, var_0.c.a.x)) | all(func_4(Struct_2(u_input.c.x, arg_2.b, Struct_1(vec4<bool>(false, var_0.b, false, arg_0.c.x), arg_0.a, 4294967295u)), 1i, Struct_2(var_0.c.c, true, Struct_1(vec4<bool>(false, var_0.b, false, var_0.b), vec3<i32>(arg_1.x, 15770i, arg_1.x), var_0.c.c))).c.a.xxy), vec4<bool>(all(arg_0.c.xyx), arg_0.c.x, !(var_0.c.a.x && false), true), arg_0.d), 80925u);
    let var_2 = var_1.a;
    let var_3 = arg_0.b;
    let var_4 = arg_0;
    return var_4;
}

fn func_6(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: vec3<i32>) -> bool {
    let var_0 = vec2<u32>(u_input.c.x, max(u_input.c.x, 36714u));
    global0 = array<f32, 14>();
    let var_1 = arg_2.c.x;
    var var_2 = func_4(func_4(Struct_2(u_input.c.x, !any(vec3<bool>(var_1, true, false)), func_2(func_2(Struct_1(arg_2.c, arg_3, 14495u), Struct_1(vec4<bool>(true, arg_0.x, false, arg_0.x), vec3<i32>(arg_3.x, -2147483647i, 1i), u_input.c.x)).c, Struct_1(vec4<bool>(false, arg_2.c.x, var_1, var_1), arg_2.a, 33698u)).c), -(~u_input.b.x), func_4(func_2(Struct_1(arg_2.c, vec3<i32>(6984i, 27797i, -21493i), u_input.c.x), Struct_1(arg_2.c, u_input.b, 0u)), -1i, Struct_2(1u, true, Struct_1(vec4<bool>(arg_2.b, var_1, false, false), vec3<i32>(arg_2.d, 2147483647i, 47080i), 11680u)))), func_2(Struct_1(!select(vec4<bool>(arg_0.x, false, arg_2.c.x, arg_0.x), vec4<bool>(true, true, false, false), vec4<bool>(arg_2.c.x, var_1, false, false)), arg_1.wzy, ~var_0.x ^ ~u_input.c.x), func_4(Struct_2(_wgslsmith_sub_u32(0u, u_input.c.x), var_1, func_2(Struct_1(vec4<bool>(var_1, true, var_1, false), vec3<i32>(2147483647i, u_input.b.x, u_input.a), var_0.x), Struct_1(vec4<bool>(arg_2.c.x, false, true, false), arg_2.a, var_0.x)).c), firstLeadingBit(~arg_1.x), Struct_2(~u_input.c.x, var_1, func_2(Struct_1(arg_2.c, vec3<i32>(-27037i, 6178i, -2147483647i), 1u), Struct_1(vec4<bool>(false, false, var_1, arg_2.b), arg_2.a, u_input.c.x)).c)).c).c.b.x, func_2(Struct_1(arg_2.c, vec3<i32>(-9790i, reverseBits(arg_1.x), _wgslsmith_div_i32(8090i, 2147483647i)), func_2(func_2(Struct_1(arg_2.c, vec3<i32>(u_input.b.x, 38673i, 17546i), 4294967295u), Struct_1(vec4<bool>(true, var_1, false, arg_2.c.x), arg_3, u_input.c.x)).c, func_4(Struct_2(97029u, false, Struct_1(arg_2.c, arg_2.a, u_input.c.x)), arg_3.x, Struct_2(u_input.c.x, arg_0.x, Struct_1(arg_2.c, arg_3, 0u))).c).a), func_2(func_4(Struct_2(1u, true, Struct_1(arg_2.c, arg_2.a, var_0.x)), arg_1.x, Struct_2(0u, true, Struct_1(arg_2.c, arg_2.a, var_0.x))).c, Struct_1(!vec4<bool>(arg_2.b, false, var_1, true), ~arg_3, func_4(Struct_2(var_0.x, true, Struct_1(vec4<bool>(true, false, false, false), arg_2.a, 0u)), 2147483647i, Struct_2(u_input.c.x, var_1, Struct_1(arg_2.c, arg_3, u_input.c.x))).a)).c)).c;
    var var_3 = Struct_2(1495u & (1u | var_2.c), arg_2.b, func_4(func_4(Struct_2(~4294967295u, false, func_4(Struct_2(1u, arg_2.c.x, Struct_1(var_2.a, vec3<i32>(-2147483647i, 2147483647i, var_2.b.x), var_0.x)), -5128i, Struct_2(4294967295u, false, Struct_1(arg_2.c, vec3<i32>(-1i, var_2.b.x, u_input.b.x), u_input.c.x))).c), _wgslsmith_clamp_i32(arg_2.d >> (var_0.x % 32u), _wgslsmith_add_i32(var_2.b.x, 1i), -70779i), func_2(Struct_1(arg_2.c, vec3<i32>(-2147483647i, -21047i, -5784i), u_input.c.x), func_2(Struct_1(vec4<bool>(true, arg_2.b, true, false), arg_1.zwx, 4294967295u), Struct_1(arg_2.c, vec3<i32>(arg_3.x, arg_1.x, -18359i), u_input.c.x)).c)), arg_3.x, Struct_2(~24378u, true && (arg_0.x | arg_2.c.x), func_2(Struct_1(arg_2.c, vec3<i32>(arg_2.d, arg_2.a.x, var_2.b.x), 28681u), Struct_1(vec4<bool>(false, arg_0.x, arg_2.b, false), vec3<i32>(0i, 21477i, 11068i), var_0.x)).c)).c);
    return true;
}

fn func_7(arg_0: bool, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_4 {
    var var_0 = arg_2;
    let var_1 = vec4<i32>(~1i, arg_1.b.x, _wgslsmith_mult_i32(_wgslsmith_add_i32(min(u_input.a, 2147483647i), ~1i), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.b.yz, vec2<i32>(-35211i, -1i)), ~u_input.b.yz)), countOneBits(func_5(Struct_3(vec3<i32>(u_input.a, -15549i, -34151i), arg_1.a.x, vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_0), u_input.a), u_input.b.xz, Struct_2(51404u, false, arg_1)).d) >> (106097u % 32u)) | vec4<i32>(arg_1.b.x, arg_1.b.x, arg_1.b.x, -2147483647i);
    global0 = array<f32, 14>();
    var_0 = vec2<u32>(36888u, ~_wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(arg_2.x, 15540u)), arg_1.c), var_0.x));
    global0 = array<f32, 14>();
    return global1[_wgslsmith_index_u32(0u, 16u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 16>();
    global0 = array<f32, 14>();
    global0 = array<f32, 14>();
    global0 = array<f32, 14>();
    var var_0 = ~u_input.c;
    var var_1 = select(firstTrailingBit(~(~(-vec4<i32>(u_input.b.x, u_input.b.x, u_input.a, u_input.b.x)))), _wgslsmith_mod_vec4_i32(~vec4<i32>(~u_input.a, -54041i, ~u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, _wgslsmith_mult_i32(2147483647i, u_input.b.x), u_input.b.x, -2147483647i) ^ ~(-vec4<i32>(1i, -38132i, 1i, u_input.b.x))), !select(false, true | any(vec2<bool>(false, true)), (global0[_wgslsmith_index_u32(var_0.x, 14u)] == 511f) & true));
    let var_2 = func_7(func_6(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), func_1(var_1.ww, Struct_3(select(var_1.yxx, vec3<i32>(0i, var_1.x, 1i), vec3<bool>(true, true, true)), true, vec4<bool>(true, true, true, true), 2147483647i), vec3<u32>(abs(0u), 1u << (1u % 32u), 110768u)), func_5(Struct_3(var_1.yzx, true, select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), true), i32(-1i) * -43969i), _wgslsmith_div_vec2_i32(vec2<i32>(var_1.x, var_1.x), vec2<i32>(var_1.x, u_input.b.x)), func_4(func_2(Struct_1(vec4<bool>(true, false, false, true), u_input.b, var_0.x), Struct_1(vec4<bool>(true, false, true, false), vec3<i32>(u_input.a, u_input.b.x, 1i), var_0.x)), u_input.a, func_2(Struct_1(vec4<bool>(false, true, true, false), vec3<i32>(-1i, -18642i, u_input.a), var_0.x), Struct_1(vec4<bool>(true, false, false, true), vec3<i32>(var_1.x, var_1.x, -1i), 37486u)))), ~(_wgslsmith_add_vec3_i32(var_1.zzz, var_1.wxw) & _wgslsmith_add_vec3_i32(vec3<i32>(var_1.x, -27848i, u_input.b.x), u_input.b))), func_2(Struct_1(func_2(Struct_1(vec4<bool>(false, false, true, false), vec3<i32>(2147483647i, 70580i, var_1.x), 4294967295u), Struct_1(vec4<bool>(false, false, true, false), var_1.xyw, var_0.x)).c.a, _wgslsmith_div_vec3_i32(u_input.b, vec3<i32>(1i, var_1.x, 0i)), _wgslsmith_mod_u32(var_0.x, u_input.c.x) >> (func_4(Struct_2(4294967295u, false, Struct_1(vec4<bool>(true, false, true, false), var_1.zxx, var_0.x)), 6808i, Struct_2(u_input.c.x, false, Struct_1(vec4<bool>(true, false, false, true), var_1.yxx, var_0.x))).a % 32u)), func_4(func_2(func_2(Struct_1(vec4<bool>(true, true, true, true), vec3<i32>(u_input.b.x, 0i, 2147483647i), u_input.c.x), Struct_1(vec4<bool>(true, true, false, true), u_input.b, u_input.c.x)).c, func_2(Struct_1(vec4<bool>(false, true, false, true), vec3<i32>(2105i, var_1.x, var_1.x), u_input.c.x), Struct_1(vec4<bool>(false, true, true, true), var_1.xyx, 0u)).c), _wgslsmith_mult_i32(_wgslsmith_div_i32(var_1.x, 1i), 1i), Struct_2(~10763u, true, Struct_1(vec4<bool>(false, true, false, true), vec3<i32>(-24372i, u_input.a, u_input.b.x), u_input.c.x))).c).c, vec2<u32>(_wgslsmith_div_u32(u_input.c.x, ~abs(59299u)), ~94513u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(u_input.c.x | 49733u, 14u)])), -276f, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(var_0.x, 14u)]))), 192f));
}

