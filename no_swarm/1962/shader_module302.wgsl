struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: vec4<f32>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec2<i32>(2147483647i, -4286i), vec3<i32>(2147483647i, 1i, 1424i)), Struct_2(2147483647i, Struct_1(vec2<i32>(2147483647i, 2147483647i), vec3<i32>(1i, 2333i, -1i))));

var<private> global1: i32;

var<private> global2: i32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> i32 {
    var var_0 = vec4<bool>(select(select(true, true & (u_input.c.x < u_input.c.x), true), true || ((0u >> (u_input.c.x % 32u)) >= 26907u), any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))) | true), true, !(!any(select(vec2<bool>(false, false), vec2<bool>(true, false), true))), false && select(firstLeadingBit(u_input.c.x) < 36595u, all(vec2<bool>(true, true)), all(vec4<bool>(false, true, true, true))));
    global0 = Struct_3(global0.b.b, global0.b);
    global0 = Struct_3(global0.b.b, global0.b);
    let var_1 = Struct_1(u_input.d.zy, ~(~(abs(global0.a.b) << (vec3<u32>(u_input.c.x, 1u, u_input.c.x) % vec3<u32>(32u)))));
    global0 = Struct_3(var_1, global0.b);
    return ~(~(var_1.b.x | var_1.b.x));
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_3) -> vec2<i32> {
    var var_0 = Struct_2(global0.a.a.x << (11063u % 32u), Struct_1(abs(vec2<i32>(max(0i, global0.a.b.x), select(-8020i, global0.a.a.x, arg_1.x))), arg_2.a.b));
    global0 = Struct_3(Struct_1(u_input.a, _wgslsmith_add_vec3_i32(~vec3<i32>(arg_2.b.b.a.x, -1i, arg_2.b.b.b.x), firstLeadingBit(-arg_2.b.b.b))), arg_2.b);
    global1 = 0i;
    global1 = var_0.a;
    global1 = func_3();
    return vec2<i32>(u_input.b, _wgslsmith_clamp_i32(-min(-arg_2.b.b.b.x, ~arg_2.a.a.x), arg_2.a.b.x, i32(-1i) * -1i));
}

fn func_1(arg_0: f32, arg_1: Struct_3) -> bool {
    global1 = max(_wgslsmith_sub_i32(-reverseBits(u_input.b), 2147483647i), ~u_input.a.x) ^ countOneBits(_wgslsmith_add_i32(~(-1i), u_input.b));
    let var_0 = true;
    var var_1 = Struct_2(_wgslsmith_mod_i32(~1i, arg_1.a.b.x ^ _wgslsmith_dot_vec3_i32(global0.b.b.b, abs(arg_1.b.b.b))), Struct_1(~func_2(false, vec4<bool>(var_0, true, var_0, false), arg_1), firstLeadingBit(global0.a.b)));
    var var_2 = var_0;
    let var_3 = arg_1.a;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -select(-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -19067i, global0.b.b.b.x, 32271i), vec4<i32>(1i, -10826i, global0.b.b.a.x, 1670i)) >> (firstTrailingBit(~vec4<u32>(1u, 55893u, 35788u, 1u)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(2394i, -27858i, -41581i, global0.a.b.x), select(vec4<i32>(2147483647i, 1i, -2147483647i, global0.b.b.b.x), vec4<i32>(-23198i, u_input.d.x, u_input.a.x, u_input.b), false)) & countOneBits(~vec4<i32>(-49549i, -54050i, global0.b.b.a.x, global0.b.a)), vec4<bool>(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1324f), Struct_3(Struct_1(u_input.d.zx, u_input.d), Struct_2(u_input.b, Struct_1(global0.b.b.b.xx, vec3<i32>(68890i, 4027i, -4764i))))), true, true, all(vec2<bool>(true, true))));
    var var_1 = ~(-_wgslsmith_dot_vec4_i32(var_0, ~vec4<i32>(0i, -1i, 12634i, 39176i)) | u_input.b);
    global2 = var_0.x;
    let var_2 = select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), !vec4<bool>(any(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, true, true)), u_input.b == _wgslsmith_dot_vec4_i32(var_0, vec4<i32>(global0.a.a.x, -2147483647i, global0.a.a.x, 37908i)), any(vec4<bool>(false, true, false, false)) & func_1(2067f, Struct_3(global0.a, Struct_2(-1i, global0.a)))), vec4<bool>(true, true, true, true));
    var var_3 = Struct_1(firstLeadingBit(vec2<i32>(-2147483647i, global0.b.a)), global0.b.b.b);
    global0 = Struct_3(Struct_1(global0.a.b.xz, reverseBits(vec3<i32>(~u_input.a.x, abs(43436i), 1i))), global0.b);
    let var_4 = global0.b.b;
    var var_5 = Struct_5(Struct_3(global0.a, global0.b), Struct_3(Struct_1(_wgslsmith_mod_vec2_i32(global0.b.b.a, vec2<i32>(var_4.b.x, var_3.a.x)), max(min(var_4.b, var_3.b), var_4.b)), Struct_2(select(var_4.b.x >> (u_input.c.x % 32u), var_0.x, select(false, var_2.x, var_2.x)), Struct_1(vec2<i32>(-1i, -1i), -vec3<i32>(var_3.b.x, 2147483647i, -1i)))), vec4<f32>(-936f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-876f, -1306f)) * _wgslsmith_f_op_f32(2405f - 1225f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(940f)) + _wgslsmith_f_op_f32(abs(172f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-559f, 140f)) - -912f), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1367f + -1008f))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.b.b);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(53049u), _wgslsmith_div_vec4_i32(select(select(countOneBits(var_0), vec4<i32>(-724i, var_4.b.x, var_4.a.x, -1i) ^ vec4<i32>(u_input.d.x, var_5.a.a.b.x, -24297i, global0.b.a), false), reverseBits(vec4<i32>(19805i, var_0.x, u_input.b, 21667i)), true), ~firstTrailingBit(var_0)), 983f);
}

