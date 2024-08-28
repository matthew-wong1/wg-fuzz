struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32;

var<private> global2: array<vec2<i32>, 28>;

var<private> global3: vec3<i32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    global1 = global0.d.x;
    let var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(global0.d.x, _wgslsmith_div_u32(~global0.d.x << (~10747u % 32u), ~_wgslsmith_sub_u32(4294967295u, arg_0.a.d.x)), 96334u), ~_wgslsmith_mult_vec3_u32(abs(vec3<u32>(global0.d.x, global0.d.x, arg_0.a.d.x)) >> (~vec3<u32>(arg_0.a.d.x, global0.d.x, 32999u) % vec3<u32>(32u)), vec3<u32>(~global0.d.x, ~global0.d.x, 0u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(global0.c.x * -419f), 163f)))));
    global1 = global0.d.x;
    let var_2 = ~global0.d.x;
    return Struct_1(-vec4<i32>(-26605i, u_input.a ^ u_input.a, _wgslsmith_mult_i32(min(global3.x, global0.a.x), _wgslsmith_dot_vec4_i32(arg_0.a.a, global0.a)), global0.a.x), reverseBits(arg_0.a.b) ^ ~global0.b, arg_0.a.c, ~(~(vec2<u32>(var_0.x, var_0.x) >> (countOneBits(global0.d) % vec2<u32>(32u)))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: i32) -> bool {
    global1 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(~(38957u | global0.d.x), ~arg_1.a.d.x, _wgslsmith_add_u32(~global0.d.x, 1u), ~arg_1.a.d.x), _wgslsmith_add_vec4_u32(vec4<u32>(arg_1.a.d.x, arg_1.a.d.x, 1u, global0.d.x), vec4<u32>(124223u, 25673u, arg_1.a.d.x, global0.d.x) >> (vec4<u32>(3816u, arg_1.a.d.x, arg_1.a.d.x, 35662u) % vec4<u32>(32u))) & vec4<u32>(_wgslsmith_div_u32(arg_1.a.d.x, global0.d.x), ~global0.d.x, 47396u, _wgslsmith_add_u32(1u, 6658u)));
    let var_0 = Struct_2(func_2(Struct_2(Struct_1(vec4<i32>(-5718i, 1i, -1i, 240i), global0.a.zzz, _wgslsmith_f_op_vec2_f32(floor(arg_1.a.c)), global0.d))));
    global3 = (vec3<i32>(max(arg_1.a.a.x, abs(u_input.a)), reverseBits(_wgslsmith_dot_vec2_i32(global0.b.zy, vec2<i32>(var_0.a.a.x, -50269i))), select(~var_0.a.b.x, 0i, true)) & var_0.a.a.yyz) & global0.b;
    var var_1 = select(!vec3<bool>(select(false, true, true), true, true && all(vec4<bool>(true, false, false, true))), select(vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(false, true, true, false)) == any(vec2<bool>(true, true)), ~4294967295u == min(6944u, arg_1.a.d.x), _wgslsmith_dot_vec3_i32(global0.a.wzz, vec3<i32>(4335i, 1i, global0.a.x)) == max(-87755i, arg_1.a.a.x)), vec3<bool>(all(vec2<bool>(true, true)), true, any(vec4<bool>(false, false, false, false)))), vec3<bool>(!(_wgslsmith_f_op_f32(select(966f, arg_1.a.c.x, false)) != _wgslsmith_f_op_f32(arg_1.a.c.x - arg_1.a.c.x)), any(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))), false));
    global3 = _wgslsmith_mod_vec3_i32(-(vec3<i32>(-1i, 14467i, 1i) & _wgslsmith_div_vec3_i32(vec3<i32>(24739i, u_input.a, -2147483647i), vec3<i32>(-1i, u_input.a, global0.b.x))), global0.b) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(-(~u_input.a), 14738i, global3.x), -abs(abs(arg_1.a.b)));
    return countOneBits(-(~func_2(var_0).b.x)) == reverseBits(global3.x);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec4<f32>) -> vec3<i32> {
    global0 = func_2(Struct_2(func_2(Struct_2(func_2(Struct_2(Struct_1(vec4<i32>(2147483647i, 0i, global0.b.x, 1i), global0.a.xyw, vec2<f32>(-654f, arg_2.x), vec2<u32>(1u, 37769u))))))));
    global2 = array<vec2<i32>, 28>();
    let var_0 = Struct_2(func_2(Struct_2(Struct_1(~vec4<i32>(-38595i, 24358i, -1i, -39981i), ~global0.b, func_2(Struct_2(Struct_1(vec4<i32>(1i, global3.x, 1i, 0i), global0.a.yww, arg_2.xw, arg_1.zz))).c, func_2(Struct_2(Struct_1(vec4<i32>(0i, 0i, 34319i, 1i), global0.a.yzy, vec2<f32>(arg_2.x, arg_2.x), arg_1.yz))).d))));
    let var_1 = global0.c.x;
    let var_2 = Struct_3(var_0.a.a.x, arg_1 | _wgslsmith_mult_vec4_u32(arg_1 ^ vec4<u32>(27290u, 54476u, arg_1.x, global0.d.x), ~vec4<u32>(var_0.a.d.x, global0.d.x, global0.d.x, 8274u)));
    return _wgslsmith_mult_vec3_i32(~(~vec3<i32>(u_input.a, -var_2.a, var_0.a.a.x >> (4294967295u % 32u))), reverseBits(global0.b));
}

fn func_1() -> vec3<f32> {
    var var_0 = _wgslsmith_add_u32(global0.d.x, global0.d.x);
    var_0 = reverseBits(global0.d.x);
    var var_1 = vec2<bool>(-4826i <= u_input.a, !(!(global0.b.x < u_input.a)));
    let var_2 = Struct_2(func_2(Struct_2(Struct_1(vec4<i32>(-57256i, 2817i, 1i, global3.x), firstLeadingBit(vec3<i32>(global3.x, 1i, 18176i)), vec2<f32>(global0.c.x, 522f), ~vec2<u32>(global0.d.x, 4294967295u)))));
    let var_3 = _wgslsmith_mod_vec3_i32(firstLeadingBit(-select(vec3<i32>(1i, var_2.a.b.x, 5696i), var_2.a.a.wxx << (vec3<u32>(global0.d.x, global0.d.x, 4927u) % vec3<u32>(32u)), !vec3<bool>(var_1.x, var_1.x, var_1.x))), func_4(!vec2<bool>(var_1.x, all(vec4<bool>(true, var_1.x, var_1.x, var_1.x))), ~vec4<u32>(~47876u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 18032u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 0u, 3319u)), firstLeadingBit(3233u), var_2.a.d.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1865f, var_2.a.c.x, global0.c.x, var_2.a.c.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-263f, var_2.a.c.x, 377f, 852f) - vec4<f32>(var_2.a.c.x, global0.c.x, -661f, var_2.a.c.x))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.c.x, -1230f, var_2.a.c.x)))), func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1331f, global0.c.x, var_2.a.c.x, 229f)), Struct_2(Struct_1(vec4<i32>(70553i, global0.a.x, 1i, -35056i), var_2.a.b, global0.c, global0.d)), -1i & var_2.a.b.x)))));
    return vec3<f32>(_wgslsmith_div_f32(1080f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -502f)))), var_2.a.c.x, 1f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = firstLeadingBit(firstLeadingBit(44910u));
    global1 = ~4294967295u;
    global2 = array<vec2<i32>, 28>();
    global1 = reverseBits(~global0.d.x);
    var var_0 = Struct_2(Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(23599i >> (global0.d.x % 32u), u_input.a << (global0.d.x % 32u), ~global3.x, _wgslsmith_sub_i32(global0.b.x, 0i)), _wgslsmith_mod_vec4_i32(global0.a, firstTrailingBit(global0.a))), global0.a.zxz, _wgslsmith_f_op_vec2_f32(min(global0.c, _wgslsmith_f_op_vec2_f32(global0.c * global0.c))), global0.d));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.c.x, 808f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -177f), -949f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1290f + global0.c.x))))) - _wgslsmith_f_op_vec3_f32(func_1()));
    var_0 = Struct_2(Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(-global3.x, var_0.a.b.x, _wgslsmith_div_i32(-23184i, var_0.a.b.x), 29062i), ~abs(vec4<i32>(-1i, global3.x, -2147483647i, 9012i))), global0.b << (~(vec3<u32>(4294967295u, global0.d.x, global0.d.x) << (vec3<u32>(var_0.a.d.x, 4294967295u, var_0.a.d.x) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), -1000f) + func_2(Struct_2(var_0.a)).c), var_0.a.d >> (vec2<u32>(0u, ~var_0.a.d.x) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(global0.c.x)))), 761f, _wgslsmith_div_f32(var_0.a.c.x, _wgslsmith_div_f32(445f, _wgslsmith_f_op_f32(-var_0.a.c.x)))), _wgslsmith_mod_i32(global3.x, global0.b.x), (vec4<i32>(global3.x & global3.x, reverseBits(u_input.a), ~u_input.a, u_input.a | -17081i) | ((vec4<i32>(global0.a.x, var_0.a.a.x, 17460i, global0.a.x) >> (vec4<u32>(global0.d.x, var_0.a.d.x, 0u, global0.d.x) % vec4<u32>(32u))) & global0.a)) >> (~select(min(vec4<u32>(10932u, global0.d.x, global0.d.x, var_0.a.d.x), vec4<u32>(0u, 27096u, var_0.a.d.x, var_0.a.d.x)), ~vec4<u32>(0u, var_0.a.d.x, 1u, global0.d.x), vec4<bool>(false, true, true, false)) % vec4<u32>(32u)), 1983u);
}

