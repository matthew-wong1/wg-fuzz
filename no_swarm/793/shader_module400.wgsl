struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_2,
    d: vec3<i32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: i32 = 27400i;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: Struct_4) -> vec4<i32> {
    global1 = arg_1.a.b.x;
    global0 = countOneBits(min(vec4<u32>(1u, global0.x, 30569u, u_input.b) ^ (vec4<u32>(102275u, 1u, 4294967295u, 44943u) | vec4<u32>(u_input.c.x, 1u, 21230u, 4294967295u)), ~vec4<u32>(4294967295u, u_input.b, 4294967295u, 0u)) | _wgslsmith_sub_vec4_u32(min(vec4<u32>(18856u, 1u, global0.x, 1u), vec4<u32>(1u, 1u, 34468u, 29093u)), vec4<u32>(93972u, 4294967295u, firstLeadingBit(98793u), ~0u)));
    global0 = _wgslsmith_sub_vec4_u32(~(~(~vec4<u32>(u_input.b, 5216u, u_input.c.x, u_input.b)) >> (firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, global0.x, 1u, global0.x), vec4<u32>(global0.x, 0u, 0u, global0.x))) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(global0.x, 0u, 4294967295u, global0.x)) ^ select(max(vec4<u32>(37424u, 29537u, u_input.b, 0u), vec4<u32>(1u, 5548u, u_input.b, global0.x)), vec4<u32>(57135u, global0.x, u_input.b, u_input.b) & vec4<u32>(u_input.c.x, global0.x, 1u, 1u), vec4<bool>(true, arg_0, false, false)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(11466u, u_input.b, u_input.b, global0.x), vec4<u32>(global0.x, 34195u, 37180u, global0.x)) >> (vec4<u32>(u_input.b | u_input.c.x, global0.x, ~u_input.b, firstLeadingBit(global0.x)) % vec4<u32>(32u))));
    let var_0 = vec4<u32>(firstTrailingBit(~(~(~20287u))), 90418u, ~(global0.x | u_input.b), 28622u);
    let var_1 = _wgslsmith_f_op_f32(arg_1.e.a.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(130f - arg_1.b.a.b) * _wgslsmith_f_op_f32(-arg_1.b.a.b)))));
    return _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(arg_1.a.b, vec4<i32>(13843i, 7328i, -2147483647i, arg_1.e.a.c.a.x)) | (firstLeadingBit(vec4<i32>(arg_1.b.a.c.b.x, u_input.a, arg_1.e.a.a, 0i)) >> (~(vec4<u32>(global0.x, u_input.b, 47580u, 18258u) << (var_0 % vec4<u32>(32u))) % vec4<u32>(32u))), vec4<i32>(arg_1.e.b.x, max(-(~u_input.a), u_input.a), select(u_input.d >> (firstTrailingBit(30250u) % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.c.a, -8928i), vec2<i32>(arg_1.a.b.x, 0i)), (arg_1.e.b.x & -13809i) < -arg_1.d.x), ~arg_1.c.a), ~(-(_wgslsmith_mult_vec4_i32(arg_1.e.a.c.b, vec4<i32>(-1947i, u_input.a, arg_1.c.a, -2147483647i)) >> (var_0 % vec4<u32>(32u)))));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: vec2<bool>) -> vec2<bool> {
    let var_0 = false;
    let var_1 = all(arg_1.c.c.c);
    var var_2 = !(!all(vec2<bool>(var_0, var_0)));
    var var_3 = Struct_4(Struct_1(arg_1.c.c.b.wx, firstLeadingBit(_wgslsmith_sub_vec4_i32(~vec4<i32>(0i, 0i, u_input.e, arg_1.e.a.c.b.x), arg_1.e.a.c.b)), arg_1.a.c, false), arg_1.e, Struct_2(arg_1.a.a.x, _wgslsmith_div_f32(-849f, _wgslsmith_f_op_f32(round(463f))), arg_1.a), _wgslsmith_add_vec3_i32(-_wgslsmith_clamp_vec3_i32(min(arg_1.b.b, arg_1.b.a.c.b.yzw), countOneBits(arg_1.d), vec3<i32>(u_input.d, 2147483647i, u_input.a)), vec3<i32>(u_input.d, _wgslsmith_div_i32(u_input.a, 0i) & firstLeadingBit(u_input.d), 1i)), Struct_3(Struct_2(u_input.d, _wgslsmith_div_f32(1110f, -1017f), Struct_1(func_3(var_0, arg_1).zw, vec4<i32>(arg_1.d.x, 23572i, 38918i, arg_1.c.c.a.x), select(arg_1.a.c, arg_1.a.c, vec3<bool>(var_1, arg_2.x, true)), true)), select(firstLeadingBit(vec3<i32>(2147483647i, -40120i, u_input.e)), arg_1.c.c.b.wyy, all(vec4<bool>(true, arg_1.a.c.x, var_0, arg_1.b.a.c.c.x))) & _wgslsmith_sub_vec3_i32(func_3(true, arg_1).zzx, -vec3<i32>(-2147483647i, -2147483647i, 47359i))));
    return select(!vec2<bool>(max(711u, arg_0) < (global0.x >> (global0.x % 32u)), false), vec2<bool>(all(vec3<bool>(false, arg_1.e.a.b == -495f, true)), false), arg_1.c.c.d);
}

fn func_2(arg_0: bool) -> vec3<i32> {
    let var_0 = func_4(~reverseBits(global0.x), Struct_4(Struct_1(vec2<i32>(106413i, abs(42097i)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(-74629i, 6120i, -3387i, 28208i), func_3(arg_0, Struct_4(Struct_1(vec2<i32>(u_input.a, u_input.d), vec4<i32>(u_input.e, 0i, u_input.d, 2147483647i), vec3<bool>(true, arg_0, true), false), Struct_3(Struct_2(2147483647i, -460f, Struct_1(vec2<i32>(55970i, 1i), vec4<i32>(-708i, u_input.e, 12383i, 3298i), vec3<bool>(false, false, true), true)), vec3<i32>(u_input.a, 1i, -9696i)), Struct_2(u_input.d, 308f, Struct_1(vec2<i32>(1i, -23755i), vec4<i32>(0i, u_input.e, -2035i, 58356i), vec3<bool>(arg_0, true, arg_0), arg_0)), vec3<i32>(u_input.e, 28739i, 2147483647i), Struct_3(Struct_2(0i, 288f, Struct_1(vec2<i32>(u_input.a, u_input.a), vec4<i32>(2147483647i, 2147483647i, u_input.e, u_input.d), vec3<bool>(arg_0, false, true), arg_0)), vec3<i32>(u_input.e, -3111i, u_input.d)))), ~vec4<i32>(u_input.e, u_input.e, -1i, -1i)), vec3<bool>(all(vec4<bool>(arg_0, arg_0, arg_0, false)), true, true), all(select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_0), arg_0))), Struct_3(Struct_2(20548i, _wgslsmith_f_op_f32(step(-2304f, -1000f)), Struct_1(vec2<i32>(u_input.a, -16737i), vec4<i32>(1i, u_input.a, 2147483647i, -1i), vec3<bool>(arg_0, true, true), false)), ~vec3<i32>(u_input.a, -1i, u_input.a) ^ ~vec3<i32>(1267i, -1840i, u_input.e)), Struct_2(min(_wgslsmith_div_i32(-55393i, u_input.e), reverseBits(u_input.d)), 1f, Struct_1(vec2<i32>(2147483647i, u_input.d) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)), ~vec4<i32>(50275i, 39250i, -1i, 0i), select(vec3<bool>(false, true, false), vec3<bool>(true, false, arg_0), vec3<bool>(arg_0, arg_0, arg_0)), any(vec3<bool>(arg_0, false, true)))), vec3<i32>(56664i, _wgslsmith_mod_i32(-u_input.d, u_input.e), (u_input.e << (1u % 32u)) << (31240u % 32u)), Struct_3(Struct_2(0i, -680f, Struct_1(vec2<i32>(u_input.a, -1i), vec4<i32>(u_input.a, -2147483647i, 28902i, u_input.e), vec3<bool>(arg_0, arg_0, arg_0), false)), func_3(!arg_0, Struct_4(Struct_1(vec2<i32>(-56096i, u_input.a), vec4<i32>(2147483647i, -2147483647i, u_input.a, -1i), vec3<bool>(arg_0, false, false), arg_0), Struct_3(Struct_2(u_input.d, -1075f, Struct_1(vec2<i32>(u_input.d, -2227i), vec4<i32>(u_input.a, 0i, -5021i, 1i), vec3<bool>(arg_0, true, arg_0), true)), vec3<i32>(u_input.d, 1i, 6906i)), Struct_2(2147483647i, 325f, Struct_1(vec2<i32>(u_input.e, u_input.d), vec4<i32>(2147483647i, u_input.d, 29474i, u_input.e), vec3<bool>(true, false, true), arg_0)), vec3<i32>(u_input.a, -27388i, u_input.d), Struct_3(Struct_2(u_input.d, 442f, Struct_1(vec2<i32>(u_input.a, u_input.a), vec4<i32>(2147483647i, u_input.d, u_input.d, 0i), vec3<bool>(true, arg_0, false), arg_0)), vec3<i32>(u_input.e, 2147483647i, u_input.e)))).zxw)), select(vec2<bool>(arg_0, true), !select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(arg_0, false)), vec2<bool>(arg_0, false), false), !select(select(vec2<bool>(arg_0, false), vec2<bool>(false, arg_0), false), vec2<bool>(false, arg_0), arg_0)));
    global0 = ~vec4<u32>(~6005u, global0.x, countOneBits(0u) << ((48725u >> (u_input.b % 32u)) % 32u), ~select(global0.x, 3522u, true) | u_input.b);
    var var_1 = Struct_2(-_wgslsmith_dot_vec4_i32(select(func_3(true, Struct_4(Struct_1(vec2<i32>(-23746i, 2147483647i), vec4<i32>(u_input.a, u_input.e, u_input.a, 0i), vec3<bool>(true, false, arg_0), false), Struct_3(Struct_2(0i, -1719f, Struct_1(vec2<i32>(1i, u_input.e), vec4<i32>(u_input.a, -4682i, u_input.d, u_input.d), vec3<bool>(arg_0, true, arg_0), arg_0)), vec3<i32>(35240i, u_input.e, 2147483647i)), Struct_2(u_input.e, -742f, Struct_1(vec2<i32>(-1i, -24151i), vec4<i32>(-2147483647i, u_input.a, -1i, 23821i), vec3<bool>(arg_0, var_0.x, false), arg_0)), vec3<i32>(-3420i, u_input.a, 37035i), Struct_3(Struct_2(u_input.e, -170f, Struct_1(vec2<i32>(0i, u_input.e), vec4<i32>(u_input.a, 1i, 0i, -54118i), vec3<bool>(true, false, arg_0), var_0.x)), vec3<i32>(-56388i, -37808i, -4278i)))), _wgslsmith_div_vec4_i32(vec4<i32>(33463i, -50466i, u_input.e, -27373i), vec4<i32>(u_input.d, u_input.d, u_input.a, u_input.d)), !arg_0), _wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.e, 1i, -1i, -1022i), vec4<i32>(u_input.e, u_input.d, u_input.e, u_input.d), var_0.x), abs(vec4<i32>(0i, -10653i, -72264i, u_input.a)))), -356f, Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(-u_input.e, firstTrailingBit(1i)), select(vec2<i32>(u_input.a, 1i) << (vec2<u32>(global0.x, u_input.b) % vec2<u32>(32u)), vec2<i32>(u_input.d, u_input.d), var_0)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.a, 6527i), vec3<i32>(u_input.d, u_input.d, -12065i)), -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 8741i, -2147483647i, 0i), vec4<i32>(-34706i, 2147483647i, -1i, u_input.a)), -u_input.d) >> (reverseBits(~vec4<u32>(u_input.c.x, 10656u, global0.x, 4294967295u)) % vec4<u32>(32u)), select(!(!vec3<bool>(arg_0, var_0.x, true)), vec3<bool>(var_0.x, true, true), var_0.x), true));
    global1 = 2147483647i;
    global0 = _wgslsmith_mult_vec4_u32(select(vec4<u32>(_wgslsmith_dot_vec4_u32(max(vec4<u32>(64685u, 1u, 88151u, 0u), vec4<u32>(41106u, 27350u, u_input.b, 5168u)), ~vec4<u32>(67259u, u_input.b, 16266u, global0.x)), ~global0.x, ~_wgslsmith_clamp_u32(12296u, 18480u, 23052u), _wgslsmith_add_u32(global0.x, firstTrailingBit(1u))), vec4<u32>(_wgslsmith_mod_u32(global0.x, 10168u), abs(~global0.x), u_input.b, ~global0.x), vec4<bool>(false, arg_0 && (u_input.c.x == 1u), false, var_0.x)), (max(~vec4<u32>(u_input.b, u_input.c.x, u_input.c.x, u_input.b), vec4<u32>(40033u, 0u, u_input.c.x, u_input.c.x)) >> (~(~vec4<u32>(21194u, global0.x, 24463u, 0u)) % vec4<u32>(32u))) << (select(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, 0u, u_input.b, u_input.b), ~vec4<u32>(1u, u_input.b, 11136u, 1u)), vec4<u32>(u_input.b >> (0u % 32u), global0.x, global0.x, global0.x), !(!vec4<bool>(true, var_0.x, var_1.c.c.x, true))) % vec4<u32>(32u)));
    return vec3<i32>(-u_input.e, func_3(!(all(vec3<bool>(var_1.c.c.x, false, var_0.x)) && true), Struct_4(var_1.c, Struct_3(Struct_2(var_1.c.a.x, 980f, var_1.c), vec3<i32>(7320i, var_1.a, -2147483647i)), Struct_2(u_input.d, -496f, var_1.c), vec3<i32>(abs(u_input.d), 34270i, 10214i), Struct_3(Struct_2(u_input.d, 1346f, var_1.c), vec3<i32>(-34582i, 34880i, var_1.a)))).x, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(~var_1.c.a, select(var_1.c.b.yw, var_1.c.a, vec2<bool>(var_1.c.d, var_1.c.d))), var_1.c.a), var_1.c.a));
}

fn func_1(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_4) -> Struct_2 {
    let var_0 = -arg_2.d;
    let var_1 = Struct_4(arg_2.a, arg_2.b, arg_2.e.a, reverseBits(func_2(all(arg_2.b.a.c.c))), arg_2.b);
    var var_2 = arg_2.b.a;
    global0 = ~(~countOneBits(select(firstTrailingBit(vec4<u32>(136296u, global0.x, u_input.c.x, 0u)), ~vec4<u32>(4294967295u, 5531u, 1u, u_input.c.x), select(vec4<bool>(var_2.c.d, arg_1, true, var_1.c.c.d), vec4<bool>(true, false, false, var_2.c.c.x), vec4<bool>(arg_2.b.a.c.c.x, arg_2.a.c.x, false, true)))));
    let var_3 = _wgslsmith_f_op_f32(min(-1689f, _wgslsmith_f_op_f32(-arg_2.e.a.b)));
    return var_1.e.a;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: u32) -> Struct_3 {
    let var_0 = Struct_3(func_1(func_1(vec3<bool>(true, arg_2.x, arg_0.c.c.x | false), all(!arg_1.a.c), arg_1).c.c, false, arg_1), _wgslsmith_div_vec3_i32(vec3<i32>(~arg_0.a, 20066i, ~(-9928i)), arg_0.c.b.xwx & arg_0.c.b.zzy));
    global0 = _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(arg_3, u_input.b, 4294967295u, 27382u)), vec4<u32>(43482u, 4294967295u, (global0.x & 27135u) | ~u_input.c.x, 0u)), max(vec4<u32>(abs(global0.x), 0u, max(u_input.b, 39563u), arg_3), ~(~vec4<u32>(15443u, 35575u, arg_3, u_input.b))) >> (~(~(vec4<u32>(35959u, 4294967295u, 0u, global0.x) ^ vec4<u32>(global0.x, global0.x, 22119u, 0u))) % vec4<u32>(32u)));
    global1 = var_0.a.c.a.x;
    return arg_1.b;
}

fn func_6(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_3) -> u32 {
    let var_0 = -select(max(func_5(arg_3.a, Struct_4(arg_2, Struct_3(Struct_2(2147483647i, 386f, arg_2), vec3<i32>(arg_3.a.c.a.x, 0i, arg_2.b.x)), arg_3.a, arg_2.b.ywz, arg_3), arg_3.a.c.c, u_input.c.x).a.c.b, vec4<i32>(2147483647i, u_input.e, countOneBits(1i), arg_3.b.x)), _wgslsmith_mod_vec4_i32(~(arg_3.a.c.b & arg_2.b), ~arg_3.a.c.b), _wgslsmith_sub_i32(arg_2.b.x ^ u_input.a, i32(-1i) * -9089i) < func_1(!arg_3.a.c.c, true, Struct_4(arg_2, Struct_3(arg_3.a, vec3<i32>(arg_3.a.a, -28074i, 32263i)), arg_3.a, vec3<i32>(5506i, -1i, arg_2.a.x), arg_3)).c.a.x);
    let var_1 = arg_1;
    global0 = _wgslsmith_sub_vec4_u32(vec4<u32>(33529u, ~(~global0.x) | 50610u, 25592u, reverseBits(u_input.c.x >> (firstTrailingBit(global0.x) % 32u))), vec4<u32>(33238u, ~4294967295u, 22213u, u_input.b));
    var var_2 = abs(0i);
    let var_3 = func_1(!(!arg_2.c), any(vec2<bool>(true, true)), Struct_4(arg_2, func_5(arg_3.a, Struct_4(arg_3.a.c, arg_3, arg_3.a, -var_0.xwy, func_5(Struct_2(arg_3.b.x, arg_0.x, arg_3.a.c), Struct_4(Struct_1(vec2<i32>(arg_2.b.x, var_0.x), vec4<i32>(arg_3.b.x, u_input.d, var_0.x, u_input.e), arg_3.a.c.c, arg_2.c.x), Struct_3(Struct_2(arg_2.a.x, 494f, arg_3.a.c), vec3<i32>(u_input.d, arg_3.a.a, -1i)), Struct_2(u_input.a, 346f, arg_3.a.c), vec3<i32>(14977i, 0i, 41165i), Struct_3(Struct_2(u_input.a, arg_0.x, arg_3.a.c), arg_2.b.yxx)), vec3<bool>(true, arg_2.d, false), 1u)), vec3<bool>(u_input.d > arg_3.a.a, true, arg_1), firstTrailingBit(u_input.b >> (97626u % 32u))), func_5(arg_3.a, Struct_4(arg_3.a.c, func_5(arg_3.a, Struct_4(arg_3.a.c, arg_3, Struct_2(2147483647i, arg_0.x, arg_2), vec3<i32>(arg_3.a.c.b.x, -1i, arg_3.b.x), arg_3), arg_2.c, u_input.c.x), arg_3.a, _wgslsmith_mult_vec3_i32(arg_2.b.xxz, vec3<i32>(15818i, u_input.d, 2147483647i)), Struct_3(Struct_2(-25559i, -1169f, arg_2), arg_3.a.c.b.xzz)), arg_3.a.c.c, ~(global0.x >> (u_input.b % 32u))).a, arg_2.b.wyw, arg_3)).c;
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ((all(vec2<bool>(true, true)) && (~4294967295u > (global0.x << (global0.x % 32u)))) && (1i <= countOneBits(u_input.d))) && ((any(vec4<bool>(true, true, true, true)) & true) | (-3479i >= reverseBits(u_input.d | u_input.d)));
    let var_1 = firstTrailingBit(~func_6(vec3<f32>(1f, 1f, 1f), false, Struct_1(vec2<i32>(u_input.d, 11407i), -vec4<i32>(u_input.d, u_input.a, u_input.e, u_input.a), vec3<bool>(true, true, true), select(true, true, false)), func_5(func_1(vec3<bool>(true, true, true), false, Struct_4(Struct_1(vec2<i32>(u_input.d, -44256i), vec4<i32>(0i, u_input.a, -4399i, -1i), vec3<bool>(true, false, true), true), Struct_3(Struct_2(50072i, 161f, Struct_1(vec2<i32>(u_input.a, 17660i), vec4<i32>(u_input.d, u_input.e, u_input.e, -62751i), vec3<bool>(false, false, false), false)), vec3<i32>(u_input.a, u_input.e, u_input.e)), Struct_2(-1i, 1837f, Struct_1(vec2<i32>(13231i, u_input.e), vec4<i32>(u_input.e, u_input.a, -1i, 52568i), vec3<bool>(false, false, false), true)), vec3<i32>(-27894i, -44283i, 326i), Struct_3(Struct_2(u_input.a, 556f, Struct_1(vec2<i32>(2147483647i, -27796i), vec4<i32>(u_input.e, 0i, 16890i, -6973i), vec3<bool>(true, true, false), false)), vec3<i32>(u_input.a, u_input.e, u_input.e)))), Struct_4(Struct_1(vec2<i32>(1i, -2375i), vec4<i32>(u_input.d, u_input.e, -2147483647i, u_input.e), vec3<bool>(true, false, false), true), Struct_3(Struct_2(1i, 1417f, Struct_1(vec2<i32>(101500i, u_input.e), vec4<i32>(2147483647i, -13920i, 0i, u_input.a), vec3<bool>(false, true, false), false)), vec3<i32>(-20885i, u_input.d, u_input.e)), Struct_2(u_input.a, 1010f, Struct_1(vec2<i32>(-1i, u_input.a), vec4<i32>(0i, u_input.d, u_input.a, -2147483647i), vec3<bool>(false, false, true), false)), vec3<i32>(u_input.a, u_input.a, -2147483647i), Struct_3(Struct_2(u_input.a, -1000f, Struct_1(vec2<i32>(-7636i, u_input.e), vec4<i32>(u_input.e, 0i, -23256i, u_input.d), vec3<bool>(false, true, false), true)), vec3<i32>(1i, u_input.a, 7357i))), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), ~4294967295u)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -200f))) + 1262f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_1(func_1(vec3<bool>(false, true, false), false, Struct_4(Struct_1(vec2<i32>(u_input.e, -15585i), vec4<i32>(u_input.d, -1667i, u_input.a, u_input.a), vec3<bool>(false, true, false), true), Struct_3(Struct_2(18355i, 1338f, Struct_1(vec2<i32>(22183i, 31943i), vec4<i32>(u_input.d, -6318i, u_input.a, u_input.e), vec3<bool>(true, false, false), true)), vec3<i32>(u_input.e, -3396i, u_input.e)), Struct_2(u_input.d, 150f, Struct_1(vec2<i32>(-11397i, u_input.e), vec4<i32>(u_input.a, 7870i, u_input.d, u_input.d), vec3<bool>(false, false, true), true)), vec3<i32>(16644i, u_input.e, 54216i), Struct_3(Struct_2(13081i, -1578f, Struct_1(vec2<i32>(2147483647i, u_input.e), vec4<i32>(3077i, u_input.a, u_input.a, 18035i), vec3<bool>(false, false, false), true)), vec3<i32>(-1i, 0i, 14685i)))).c.c, true, Struct_4(Struct_1(vec2<i32>(-29445i, -10505i), vec4<i32>(-2147483647i, 37728i, -1i, u_input.e), vec3<bool>(false, false, false), true), Struct_3(Struct_2(u_input.a, -414f, Struct_1(vec2<i32>(-1i, -1i), vec4<i32>(1588i, 1i, u_input.d, u_input.d), vec3<bool>(true, false, false), true)), vec3<i32>(-1i, 0i, u_input.e)), Struct_2(u_input.d, 407f, Struct_1(vec2<i32>(u_input.a, u_input.e), vec4<i32>(u_input.e, u_input.a, 0i, u_input.d), vec3<bool>(false, false, true), false)), vec3<i32>(0i, u_input.a, 0i), Struct_3(Struct_2(-39686i, 870f, Struct_1(vec2<i32>(-19362i, -21650i), vec4<i32>(u_input.a, u_input.a, 5460i, u_input.a), vec3<bool>(false, false, true), false)), vec3<i32>(u_input.d, -1i, 6241i)))).b), _wgslsmith_div_f32(-1049f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(max(203f, 2417f)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1509f + _wgslsmith_f_op_f32(-1000f + -604f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(216f))))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1392f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-897f, -1032f)) * 1500f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(796f + 1629f), _wgslsmith_f_op_f32(ceil(1312f))))));
    global0 = ~abs(vec4<u32>(1u, 0u, _wgslsmith_mult_u32(~0u, 0u), min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, global0.x, u_input.c.x, global0.x), vec4<u32>(1u, 4294967295u, 14346u, 25294u)), select(69504u, var_1, true))));
    var var_3 = var_2.x;
    var var_4 = Struct_1(reverseBits(~abs(vec2<i32>(-2147483647i, u_input.a))), ~(-vec4<i32>(u_input.a, ~u_input.a, countOneBits(u_input.e), u_input.e << (global0.x % 32u))), func_5(func_5(func_5(func_5(Struct_2(u_input.a, var_2.x, Struct_1(vec2<i32>(2147483647i, u_input.a), vec4<i32>(u_input.e, u_input.e, u_input.e, u_input.d), vec3<bool>(false, true, true), true)), Struct_4(Struct_1(vec2<i32>(u_input.d, u_input.a), vec4<i32>(u_input.a, u_input.e, u_input.a, u_input.a), vec3<bool>(false, false, false), false), Struct_3(Struct_2(u_input.e, 745f, Struct_1(vec2<i32>(56818i, 17759i), vec4<i32>(u_input.a, u_input.e, -22405i, 2147483647i), vec3<bool>(true, false, false), false)), vec3<i32>(u_input.e, 2147483647i, u_input.d)), Struct_2(u_input.a, var_2.x, Struct_1(vec2<i32>(2147483647i, u_input.a), vec4<i32>(u_input.a, -1i, u_input.e, 1i), vec3<bool>(true, false, true), true)), vec3<i32>(u_input.a, 26397i, u_input.a), Struct_3(Struct_2(u_input.d, var_2.x, Struct_1(vec2<i32>(u_input.a, -2147483647i), vec4<i32>(u_input.e, u_input.a, 47809i, 12470i), vec3<bool>(true, true, false), false)), vec3<i32>(u_input.d, u_input.d, -28690i))), vec3<bool>(false, true, false), 0u).a, Struct_4(Struct_1(vec2<i32>(u_input.a, u_input.e), vec4<i32>(-4241i, 1i, u_input.d, -38547i), vec3<bool>(true, true, true), true), Struct_3(Struct_2(-85466i, var_2.x, Struct_1(vec2<i32>(-2147483647i, u_input.e), vec4<i32>(-1i, u_input.a, -2147483647i, u_input.e), vec3<bool>(true, false, false), true)), vec3<i32>(u_input.a, 39138i, 11359i)), Struct_2(u_input.e, 1431f, Struct_1(vec2<i32>(-28500i, 14270i), vec4<i32>(u_input.d, 9404i, 33790i, u_input.a), vec3<bool>(false, false, true), true)), vec3<i32>(u_input.e, -11964i, u_input.a), Struct_3(Struct_2(-49333i, var_2.x, Struct_1(vec2<i32>(28919i, u_input.d), vec4<i32>(u_input.a, u_input.d, -2147483647i, 2213i), vec3<bool>(false, true, true), false)), vec3<i32>(2147483647i, 47248i, -53503i))), vec3<bool>(false, true, true), _wgslsmith_clamp_u32(4294967295u, global0.x, u_input.b)).a, Struct_4(func_5(Struct_2(u_input.d, var_2.x, Struct_1(vec2<i32>(-2147483647i, -18652i), vec4<i32>(u_input.e, 0i, 2147483647i, 35705i), vec3<bool>(false, false, true), false)), Struct_4(Struct_1(vec2<i32>(2147483647i, -30667i), vec4<i32>(u_input.d, -1i, 40738i, u_input.a), vec3<bool>(true, true, false), false), Struct_3(Struct_2(u_input.d, 218f, Struct_1(vec2<i32>(-1327i, u_input.e), vec4<i32>(u_input.d, u_input.d, -28843i, u_input.a), vec3<bool>(false, true, true), false)), vec3<i32>(u_input.a, 1i, u_input.e)), Struct_2(u_input.a, var_2.x, Struct_1(vec2<i32>(u_input.d, u_input.a), vec4<i32>(0i, 17463i, 23635i, -6575i), vec3<bool>(false, true, false), false)), vec3<i32>(2147483647i, u_input.a, u_input.d), Struct_3(Struct_2(21083i, var_2.x, Struct_1(vec2<i32>(u_input.a, u_input.a), vec4<i32>(1829i, u_input.a, -131i, u_input.a), vec3<bool>(false, true, true), true)), vec3<i32>(u_input.e, 13458i, u_input.d))), vec3<bool>(false, false, true), u_input.b).a.c, Struct_3(Struct_2(u_input.e, -1159f, Struct_1(vec2<i32>(u_input.d, u_input.d), vec4<i32>(u_input.a, u_input.e, u_input.d, -52377i), vec3<bool>(true, true, true), false)), vec3<i32>(u_input.d, 0i, 60643i)), func_5(Struct_2(-16253i, var_2.x, Struct_1(vec2<i32>(u_input.d, -2147483647i), vec4<i32>(-21616i, u_input.e, 2147483647i, u_input.e), vec3<bool>(true, false, false), true)), Struct_4(Struct_1(vec2<i32>(u_input.e, u_input.a), vec4<i32>(-22808i, 20556i, u_input.d, 80542i), vec3<bool>(true, false, true), true), Struct_3(Struct_2(u_input.e, var_2.x, Struct_1(vec2<i32>(31643i, -2147483647i), vec4<i32>(u_input.a, u_input.a, u_input.a, 14143i), vec3<bool>(false, true, true), true)), vec3<i32>(-4027i, 0i, u_input.a)), Struct_2(u_input.e, var_2.x, Struct_1(vec2<i32>(u_input.e, u_input.a), vec4<i32>(7588i, u_input.e, u_input.e, u_input.d), vec3<bool>(true, true, false), false)), vec3<i32>(51323i, -1i, 1i), Struct_3(Struct_2(u_input.a, var_2.x, Struct_1(vec2<i32>(43834i, -2147483647i), vec4<i32>(u_input.d, -2147483647i, u_input.d, -1i), vec3<bool>(false, true, true), true)), vec3<i32>(u_input.a, u_input.a, -73126i))), vec3<bool>(true, true, false), 54670u).a, vec3<i32>(21135i, u_input.e, u_input.e), Struct_3(Struct_2(-1859i, var_2.x, Struct_1(vec2<i32>(-2147483647i, 69229i), vec4<i32>(u_input.a, u_input.e, 18322i, u_input.d), vec3<bool>(false, false, false), false)), vec3<i32>(-14937i, u_input.e, -21735i))), !func_1(vec3<bool>(true, true, true), true, Struct_4(Struct_1(vec2<i32>(9183i, 2147483647i), vec4<i32>(0i, u_input.a, u_input.d, -17600i), vec3<bool>(false, false, false), false), Struct_3(Struct_2(-19052i, var_2.x, Struct_1(vec2<i32>(u_input.d, 18528i), vec4<i32>(1i, u_input.a, u_input.e, u_input.a), vec3<bool>(true, true, false), false)), vec3<i32>(u_input.d, u_input.d, 1i)), Struct_2(u_input.d, -1195f, Struct_1(vec2<i32>(u_input.a, u_input.e), vec4<i32>(u_input.d, u_input.e, u_input.d, u_input.d), vec3<bool>(false, false, true), true)), vec3<i32>(u_input.a, u_input.e, u_input.d), Struct_3(Struct_2(u_input.d, -1074f, Struct_1(vec2<i32>(u_input.e, u_input.e), vec4<i32>(-1i, -2147483647i, u_input.e, 1i), vec3<bool>(true, false, true), true)), vec3<i32>(u_input.e, 1i, -4661i)))).c.c, countOneBits(~449u)).a, Struct_4(func_1(vec3<bool>(false, true, false), any(vec3<bool>(true, false, false)), Struct_4(Struct_1(vec2<i32>(u_input.d, u_input.a), vec4<i32>(-41852i, u_input.a, 1i, 2147483647i), vec3<bool>(true, true, true), true), Struct_3(Struct_2(17665i, 1000f, Struct_1(vec2<i32>(1i, u_input.a), vec4<i32>(u_input.d, u_input.e, u_input.a, 30985i), vec3<bool>(false, false, false), false)), vec3<i32>(-25426i, u_input.a, u_input.a)), Struct_2(-65160i, var_2.x, Struct_1(vec2<i32>(-21322i, 0i), vec4<i32>(36809i, 2147483647i, 0i, 1i), vec3<bool>(false, true, true), true)), vec3<i32>(2147483647i, u_input.a, u_input.d), Struct_3(Struct_2(2147483647i, var_2.x, Struct_1(vec2<i32>(-11229i, u_input.a), vec4<i32>(u_input.a, -2147483647i, u_input.d, 0i), vec3<bool>(false, true, false), true)), vec3<i32>(u_input.a, u_input.a, 2147483647i)))).c, Struct_3(func_5(Struct_2(u_input.a, var_2.x, Struct_1(vec2<i32>(-59820i, -11977i), vec4<i32>(u_input.d, u_input.a, 0i, -1i), vec3<bool>(true, true, false), false)), Struct_4(Struct_1(vec2<i32>(u_input.a, 2147483647i), vec4<i32>(u_input.e, u_input.a, u_input.d, u_input.d), vec3<bool>(true, true, false), true), Struct_3(Struct_2(-1i, var_2.x, Struct_1(vec2<i32>(u_input.e, -12437i), vec4<i32>(-95049i, u_input.e, u_input.e, u_input.e), vec3<bool>(false, true, true), true)), vec3<i32>(1i, u_input.e, 0i)), Struct_2(u_input.a, -453f, Struct_1(vec2<i32>(-5361i, u_input.a), vec4<i32>(u_input.d, u_input.e, u_input.d, u_input.e), vec3<bool>(false, false, false), false)), vec3<i32>(-1i, -6608i, -28095i), Struct_3(Struct_2(2147483647i, var_2.x, Struct_1(vec2<i32>(-1i, u_input.e), vec4<i32>(-27484i, u_input.d, -38317i, u_input.a), vec3<bool>(true, false, false), false)), vec3<i32>(2876i, 9860i, -2147483647i))), vec3<bool>(false, false, false), global0.x).a, -vec3<i32>(-2147483647i, u_input.e, 54981i)), func_5(Struct_2(-59566i, -458f, Struct_1(vec2<i32>(u_input.e, -15161i), vec4<i32>(25610i, u_input.d, u_input.d, u_input.d), vec3<bool>(true, false, false), false)), Struct_4(Struct_1(vec2<i32>(u_input.d, u_input.e), vec4<i32>(1i, u_input.d, u_input.a, -1i), vec3<bool>(true, true, false), false), Struct_3(Struct_2(u_input.e, var_2.x, Struct_1(vec2<i32>(u_input.d, u_input.e), vec4<i32>(-22413i, u_input.a, u_input.d, -2789i), vec3<bool>(false, false, true), false)), vec3<i32>(u_input.e, u_input.a, 1i)), Struct_2(-899i, -268f, Struct_1(vec2<i32>(u_input.e, u_input.a), vec4<i32>(u_input.d, -54846i, -1i, 2147483647i), vec3<bool>(true, false, false), true)), vec3<i32>(u_input.d, u_input.e, -1i), Struct_3(Struct_2(2147483647i, var_2.x, Struct_1(vec2<i32>(1442i, u_input.d), vec4<i32>(u_input.d, u_input.d, 2147483647i, -22169i), vec3<bool>(false, true, false), true)), vec3<i32>(19779i, -61717i, u_input.e))), vec3<bool>(false, true, false), 0u).a, ~(-vec3<i32>(-2147483647i, u_input.a, 1i)), func_5(Struct_2(-23786i, 150f, Struct_1(vec2<i32>(-1i, u_input.a), vec4<i32>(11746i, -19427i, u_input.d, -1i), vec3<bool>(false, false, false), false)), Struct_4(Struct_1(vec2<i32>(-1073i, u_input.d), vec4<i32>(u_input.a, 2147483647i, u_input.d, -51092i), vec3<bool>(true, false, true), true), Struct_3(Struct_2(u_input.a, var_2.x, Struct_1(vec2<i32>(-16290i, u_input.e), vec4<i32>(56863i, u_input.a, u_input.d, u_input.a), vec3<bool>(false, true, false), true)), vec3<i32>(28967i, u_input.a, -58175i)), Struct_2(u_input.a, var_2.x, Struct_1(vec2<i32>(u_input.e, u_input.d), vec4<i32>(-2147483647i, -6998i, 1i, -51483i), vec3<bool>(false, false, false), true)), vec3<i32>(44846i, -76571i, u_input.d), Struct_3(Struct_2(-4163i, 217f, Struct_1(vec2<i32>(-2147483647i, -26341i), vec4<i32>(u_input.d, -1i, -71292i, 4599i), vec3<bool>(false, false, false), false)), vec3<i32>(u_input.a, -10271i, u_input.a))), vec3<bool>(true, true, true), _wgslsmith_mult_u32(global0.x, u_input.c.x))), !(!func_1(vec3<bool>(false, false, false), true, Struct_4(Struct_1(vec2<i32>(2147483647i, u_input.e), vec4<i32>(1i, u_input.a, u_input.d, 1919i), vec3<bool>(true, true, true), false), Struct_3(Struct_2(40744i, 1304f, Struct_1(vec2<i32>(-1i, -45100i), vec4<i32>(48475i, -2147483647i, u_input.d, u_input.a), vec3<bool>(true, false, false), true)), vec3<i32>(4735i, 1i, u_input.a)), Struct_2(u_input.e, -1702f, Struct_1(vec2<i32>(u_input.d, 0i), vec4<i32>(13088i, u_input.e, u_input.a, -2147483647i), vec3<bool>(false, true, true), true)), vec3<i32>(u_input.d, -19020i, 48378i), Struct_3(Struct_2(u_input.a, var_2.x, Struct_1(vec2<i32>(u_input.a, 2147483647i), vec4<i32>(u_input.a, u_input.e, 2147483647i, u_input.a), vec3<bool>(false, false, true), false)), vec3<i32>(39799i, -1i, -1i)))).c.c), max(select(~u_input.c.x, _wgslsmith_add_u32(6877u, 91954u), func_4(9921u, Struct_4(Struct_1(vec2<i32>(-1i, 0i), vec4<i32>(1i, -1i, u_input.e, u_input.d), vec3<bool>(false, false, true), true), Struct_3(Struct_2(-2147483647i, var_2.x, Struct_1(vec2<i32>(41337i, u_input.a), vec4<i32>(-1i, 58200i, u_input.e, u_input.a), vec3<bool>(false, true, true), false)), vec3<i32>(16888i, -2147483647i, u_input.e)), Struct_2(u_input.d, 460f, Struct_1(vec2<i32>(u_input.e, u_input.d), vec4<i32>(u_input.d, -2147483647i, 0i, u_input.a), vec3<bool>(true, false, true), false)), vec3<i32>(u_input.e, u_input.e, u_input.e), Struct_3(Struct_2(u_input.e, -428f, Struct_1(vec2<i32>(3729i, -1i), vec4<i32>(2147483647i, u_input.a, u_input.d, 2147483647i), vec3<bool>(false, false, true), true)), vec3<i32>(798i, -1i, u_input.e))), vec2<bool>(false, false)).x), 11202u)).a.c.c, func_5(func_5(Struct_2(u_input.a, -1603f, func_1(vec3<bool>(true, true, false), false, Struct_4(Struct_1(vec2<i32>(2147483647i, u_input.e), vec4<i32>(u_input.a, 1i, u_input.a, u_input.e), vec3<bool>(false, true, false), false), Struct_3(Struct_2(0i, -1000f, Struct_1(vec2<i32>(u_input.d, u_input.e), vec4<i32>(u_input.e, u_input.e, -11625i, u_input.a), vec3<bool>(false, false, false), true)), vec3<i32>(u_input.d, u_input.d, u_input.d)), Struct_2(0i, var_2.x, Struct_1(vec2<i32>(2147483647i, 12531i), vec4<i32>(1i, 10345i, u_input.a, u_input.e), vec3<bool>(true, true, false), false)), vec3<i32>(u_input.e, 26438i, u_input.e), Struct_3(Struct_2(2147483647i, var_2.x, Struct_1(vec2<i32>(u_input.e, u_input.a), vec4<i32>(u_input.e, u_input.a, u_input.d, u_input.e), vec3<bool>(false, false, false), false)), vec3<i32>(2147483647i, u_input.a, u_input.e)))).c), Struct_4(func_5(Struct_2(8685i, var_2.x, Struct_1(vec2<i32>(1i, -49869i), vec4<i32>(-9494i, -49521i, u_input.e, 79032i), vec3<bool>(false, false, false), false)), Struct_4(Struct_1(vec2<i32>(-12745i, u_input.d), vec4<i32>(-42632i, 2147483647i, u_input.d, 1i), vec3<bool>(true, false, true), false), Struct_3(Struct_2(-56428i, -1760f, Struct_1(vec2<i32>(-33237i, 2147483647i), vec4<i32>(u_input.a, -35767i, 2147483647i, u_input.a), vec3<bool>(false, false, false), true)), vec3<i32>(38509i, u_input.a, u_input.d)), Struct_2(-2147483647i, var_2.x, Struct_1(vec2<i32>(u_input.e, 6247i), vec4<i32>(-40607i, 8896i, 0i, 0i), vec3<bool>(false, true, false), true)), vec3<i32>(u_input.a, 19331i, -2147483647i), Struct_3(Struct_2(u_input.e, var_2.x, Struct_1(vec2<i32>(u_input.d, u_input.a), vec4<i32>(1i, 1i, 1i, u_input.e), vec3<bool>(true, true, true), true)), vec3<i32>(u_input.e, 1209i, u_input.a))), vec3<bool>(true, false, false), u_input.b).a.c, func_5(Struct_2(-19046i, -1911f, Struct_1(vec2<i32>(1i, u_input.e), vec4<i32>(-1i, u_input.e, u_input.d, u_input.d), vec3<bool>(true, true, false), true)), Struct_4(Struct_1(vec2<i32>(0i, u_input.d), vec4<i32>(-2147483647i, -13419i, 0i, u_input.a), vec3<bool>(false, true, true), false), Struct_3(Struct_2(u_input.e, -560f, Struct_1(vec2<i32>(2147483647i, 29120i), vec4<i32>(1i, 4661i, u_input.d, 1i), vec3<bool>(true, true, true), false)), vec3<i32>(2147483647i, u_input.d, u_input.d)), Struct_2(-1i, 169f, Struct_1(vec2<i32>(u_input.a, 2147483647i), vec4<i32>(u_input.a, -14008i, u_input.e, 37221i), vec3<bool>(false, true, true), true)), vec3<i32>(u_input.a, -22714i, u_input.a), Struct_3(Struct_2(1i, 324f, Struct_1(vec2<i32>(u_input.a, -8457i), vec4<i32>(-2147483647i, u_input.a, u_input.e, 1i), vec3<bool>(false, false, true), true)), vec3<i32>(7827i, 13763i, 23176i))), vec3<bool>(false, true, false), 115329u), func_5(Struct_2(42061i, var_2.x, Struct_1(vec2<i32>(-2147483647i, -1i), vec4<i32>(u_input.d, 2147483647i, 3491i, u_input.d), vec3<bool>(false, true, false), true)), Struct_4(Struct_1(vec2<i32>(-2147483647i, -2147483647i), vec4<i32>(u_input.d, 4238i, 1i, u_input.d), vec3<bool>(true, true, false), true), Struct_3(Struct_2(u_input.d, var_2.x, Struct_1(vec2<i32>(u_input.e, u_input.e), vec4<i32>(16639i, u_input.e, u_input.d, u_input.e), vec3<bool>(true, false, true), false)), vec3<i32>(u_input.d, 2147483647i, -37601i)), Struct_2(u_input.d, var_2.x, Struct_1(vec2<i32>(u_input.a, u_input.d), vec4<i32>(u_input.e, u_input.d, u_input.e, 37897i), vec3<bool>(true, true, false), true)), vec3<i32>(0i, -38638i, u_input.d), Struct_3(Struct_2(1i, var_2.x, Struct_1(vec2<i32>(u_input.d, -1i), vec4<i32>(u_input.d, u_input.d, -1i, u_input.e), vec3<bool>(true, false, false), true)), vec3<i32>(u_input.d, u_input.a, 25850i))), vec3<bool>(false, false, false), global0.x).a, vec3<i32>(u_input.a, u_input.d, 13682i) ^ vec3<i32>(-1i, -1i, 0i), Struct_3(Struct_2(32691i, var_2.x, Struct_1(vec2<i32>(u_input.e, 23423i), vec4<i32>(u_input.a, u_input.d, 2147483647i, u_input.a), vec3<bool>(false, true, false), false)), vec3<i32>(-31869i, -60420i, -17947i))), select(vec3<bool>(false, false, false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), false), countOneBits(func_6(var_2.zwz, false, Struct_1(vec2<i32>(-35345i, u_input.a), vec4<i32>(u_input.d, u_input.e, 49537i, 2147483647i), vec3<bool>(false, true, false), true), Struct_3(Struct_2(u_input.d, 768f, Struct_1(vec2<i32>(-2147483647i, u_input.a), vec4<i32>(-2147483647i, u_input.a, u_input.d, -13375i), vec3<bool>(true, true, false), false)), vec3<i32>(-1i, u_input.a, u_input.d))))).a, Struct_4(func_1(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), false, Struct_4(Struct_1(vec2<i32>(u_input.e, 23475i), vec4<i32>(u_input.a, -17051i, 2147483647i, 1i), vec3<bool>(false, true, true), false), Struct_3(Struct_2(u_input.d, -1252f, Struct_1(vec2<i32>(u_input.a, u_input.e), vec4<i32>(u_input.d, u_input.a, u_input.d, -1i), vec3<bool>(false, true, false), false)), vec3<i32>(0i, -2147483647i, -49069i)), Struct_2(u_input.a, var_2.x, Struct_1(vec2<i32>(u_input.d, u_input.a), vec4<i32>(u_input.a, u_input.e, -2147483647i, u_input.e), vec3<bool>(false, true, false), true)), vec3<i32>(59286i, u_input.e, u_input.e), Struct_3(Struct_2(-2147483647i, 995f, Struct_1(vec2<i32>(u_input.e, 18829i), vec4<i32>(-8818i, 18022i, u_input.a, u_input.a), vec3<bool>(true, true, false), false)), vec3<i32>(u_input.a, 0i, 2147483647i)))).c, Struct_3(Struct_2(u_input.e, var_2.x, Struct_1(vec2<i32>(u_input.e, 1i), vec4<i32>(-2147483647i, -1i, u_input.d, 2147483647i), vec3<bool>(false, true, true), false)), vec3<i32>(u_input.e, 2147483647i, u_input.d)), func_5(Struct_2(u_input.d, var_2.x, Struct_1(vec2<i32>(u_input.a, u_input.e), vec4<i32>(14761i, u_input.e, 0i, 1i), vec3<bool>(false, false, true), false)), Struct_4(Struct_1(vec2<i32>(u_input.d, -40394i), vec4<i32>(u_input.e, u_input.a, 2147483647i, 22327i), vec3<bool>(false, false, false), false), Struct_3(Struct_2(u_input.a, 424f, Struct_1(vec2<i32>(u_input.e, u_input.a), vec4<i32>(40246i, -2147483647i, 2147483647i, u_input.d), vec3<bool>(false, true, true), true)), vec3<i32>(-42760i, u_input.e, u_input.d)), Struct_2(u_input.a, var_2.x, Struct_1(vec2<i32>(u_input.d, 1i), vec4<i32>(-66549i, 2147483647i, u_input.d, -85087i), vec3<bool>(false, true, false), false)), vec3<i32>(u_input.e, u_input.a, u_input.a), Struct_3(Struct_2(u_input.a, 1031f, Struct_1(vec2<i32>(1i, u_input.d), vec4<i32>(u_input.e, u_input.d, u_input.d, u_input.d), vec3<bool>(true, true, false), false)), vec3<i32>(u_input.e, -12611i, -73554i))), vec3<bool>(true, true, true), 0u).a, min(~vec3<i32>(u_input.d, 48649i, u_input.e), -vec3<i32>(0i, -4912i, u_input.d)), Struct_3(func_5(Struct_2(u_input.e, -749f, Struct_1(vec2<i32>(0i, -1i), vec4<i32>(-63738i, 55840i, u_input.e, -11928i), vec3<bool>(true, false, false), true)), Struct_4(Struct_1(vec2<i32>(1i, 4371i), vec4<i32>(u_input.a, -2147483647i, 2147483647i, -81560i), vec3<bool>(false, false, true), true), Struct_3(Struct_2(u_input.d, var_2.x, Struct_1(vec2<i32>(-22110i, 13050i), vec4<i32>(u_input.a, 1i, -19308i, u_input.d), vec3<bool>(false, false, false), false)), vec3<i32>(-9775i, -39798i, 11013i)), Struct_2(u_input.a, -1315f, Struct_1(vec2<i32>(u_input.e, u_input.e), vec4<i32>(-55379i, u_input.d, u_input.e, u_input.e), vec3<bool>(true, true, true), true)), vec3<i32>(u_input.a, 1i, -1i), Struct_3(Struct_2(u_input.d, -1501f, Struct_1(vec2<i32>(34245i, 3646i), vec4<i32>(u_input.e, 1i, -2147483647i, -1i), vec3<bool>(false, true, false), true)), vec3<i32>(u_input.d, 2147483647i, -7405i))), vec3<bool>(true, true, false), u_input.b).a, _wgslsmith_div_vec3_i32(vec3<i32>(u_input.e, 2147483647i, u_input.e), vec3<i32>(u_input.a, -24514i, 36474i)))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), global0.x).a.c.c.x);
    var_4 = Struct_1(var_4.b.yz, vec4<i32>(1i, _wgslsmith_dot_vec2_i32((var_4.b.yw & var_4.b.zz) >> ((vec2<u32>(u_input.c.x, 74088u) | u_input.c.xz) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_clamp_i32(u_input.a, 26457i, var_4.b.x), _wgslsmith_mult_i32(-2147483647i, u_input.a))), 0i | u_input.e, i32(-1i) * -2149i), !vec3<bool>(var_4.d, var_4.d, any(vec2<bool>(var_4.c.x, var_4.d)) & (var_4.d & var_4.d)), true && (abs(_wgslsmith_add_u32(u_input.c.x, var_1)) != _wgslsmith_mult_u32(_wgslsmith_div_u32(global0.x, u_input.b), var_1)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(u_input.d, u_input.a), -70697i, ~(~u_input.c), _wgslsmith_f_op_vec4_f32(-var_2));
}

