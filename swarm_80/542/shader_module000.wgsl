struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<bool>,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_2 = Struct_2(vec4<bool>(false, true, true, true), Struct_1(1000f, 32711i, vec4<bool>(false, true, true, true), 0u, vec3<i32>(0i, -1i, -17473i)), vec4<u32>(0u, 7444u, 4294967295u, 4294967295u));

var<private> global2: i32 = 2403i;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: u32, arg_3: Struct_4) -> vec2<f32> {
    let var_0 = 687f;
    global1 = Struct_2(!(!(!(!vec4<bool>(arg_3.a.x, global1.a.x, global1.a.x, true)))), global1.b, (vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(31935u, 105769u), vec2<u32>(4294967295u, 28254u)), _wgslsmith_dot_vec4_u32(global1.c, global1.c), ~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(36587u, arg_2), global1.c.zx)) | ~vec4<u32>(arg_2, 25248u, 0u, arg_2)) << (abs(max(global1.c << (vec4<u32>(u_input.b.x, 0u, 24868u, 1u) % vec4<u32>(32u)), global1.c)) % vec4<u32>(32u)));
    var var_1 = ~global0.x;
    global2 = -reverseBits(_wgslsmith_div_i32(~global0.x, _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(-13265i, -1i))));
    var var_2 = vec2<f32>(-848f, -561f);
    return vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.x, -1000f), 1000f), _wgslsmith_f_op_f32(floor(115f)));
}

fn func_2(arg_0: vec3<i32>, arg_1: f32) -> Struct_2 {
    global1 = Struct_2(vec4<bool>(true, false, true, false), global1.b, ~global1.c);
    let var_0 = Struct_4(!vec3<bool>(!global1.b.c.x, !all(global1.a.yw), any(vec4<bool>(global1.a.x, global1.a.x, global1.b.c.x, global1.b.c.x))), _wgslsmith_f_op_vec2_f32(func_3(vec3<u32>(_wgslsmith_div_u32(global1.c.x, 5999u), u_input.b.x, 54010u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1, arg_1, 534f, -154f)))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1042f, arg_1, arg_1))))), _wgslsmith_add_u32(64123u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global1.b.d, u_input.d), u_input.b.xz), ~u_input.b.yy)), Struct_4(vec3<bool>(global1.b.c.x, !global1.a.x, global1.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.a, arg_1) * vec2<f32>(-1605f, arg_1))), global1.c.zyz))), ~u_input.b);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.b.a)) + _wgslsmith_f_op_f32(max(-1452f, -329f))), 1i, global1.b.c, 57274u, ~_wgslsmith_sub_vec3_i32(-max(global1.b.e, global1.b.e), _wgslsmith_mod_vec3_i32(reverseBits(arg_0), -vec3<i32>(u_input.c.x, -1i, 7238i))));
    let var_2 = vec4<u32>(~1u, global1.b.d, firstTrailingBit(max(global1.b.d, 1u >> ((var_1.d ^ global1.c.x) % 32u))), 38893u);
    global0 = vec2<i32>(-(u_input.c.x ^ global1.b.e.x), 2147483647i);
    return Struct_2(vec4<bool>(true, all(global1.a.wzx), true, true), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b.x)))), arg_0.x, vec4<bool>(!(!var_1.c.x), all(vec2<bool>(true, false)), any(var_1.c.yzz) | all(var_1.c), global1.a.x || true), _wgslsmith_dot_vec3_u32(reverseBits(~vec3<u32>(var_1.d, global1.b.d, var_1.d)), _wgslsmith_sub_vec3_u32(var_0.c, vec3<u32>(var_1.d, 4294967295u, 0u))), select(abs(abs(arg_0)), firstLeadingBit(var_1.e), vec3<bool>(var_1.c.x, -1172f <= var_0.b.x, all(vec4<bool>(var_0.a.x, false, var_1.c.x, var_1.c.x))))), var_2);
}

fn func_1() -> i32 {
    global2 = ~1i;
    let var_0 = global1.b;
    let var_1 = 454f;
    global1 = func_2(global1.b.e, _wgslsmith_f_op_f32(-global1.b.a));
    var var_2 = ~(~(u_input.b << (u_input.b % vec3<u32>(32u))));
    return _wgslsmith_clamp_i32(reverseBits(u_input.c.x << (~var_2.x % 32u)), abs(28161i), ~global1.b.b) ^ _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(firstTrailingBit(-vec4<i32>(2147483647i, var_0.b, -2147483647i, 72216i)), select(vec4<i32>(-19615i, -3605i, 2147483647i, global1.b.b), vec4<i32>(67317i, -43065i, -1i, global1.b.b), true)), abs(select(abs(vec4<i32>(-51297i, -24130i, 15229i, -2147483647i)), max(vec4<i32>(-2147483647i, u_input.c.x, 2147483647i, var_0.b), vec4<i32>(-18143i, var_0.e.x, global1.b.e.x, -2232i)), var_0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec3_u32(~global1.c.ywy, vec3<u32>(17232u, 1u, 1u), global1.c.xyx);
    var var_1 = Struct_4(!vec3<bool>(false, global1.b.c.x, true), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.b.a, _wgslsmith_f_op_f32(global1.b.a - 388f)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.a, -226f)))), !vec2<bool>(global1.b.c.x, true))), var_0);
    var var_2 = reverseBits(vec4<i32>(~(-(~global0.x)), ~func_1() | -_wgslsmith_sub_i32(u_input.c.x, -55651i), 1i, _wgslsmith_div_i32(global0.x, _wgslsmith_sub_i32(global1.b.e.x, 37190i))));
    let var_3 = Struct_4(vec3<bool>(false, var_1.a.x, !any(vec2<bool>(true, true))), vec2<f32>(-911f, -453f), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(var_0.x, var_1.c.x, 1u)), u_input.b), vec3<u32>(_wgslsmith_div_u32(var_1.c.x, 6517u), func_2(vec3<i32>(u_input.c.x, 4191i, 2147483647i), 322f).b.d, _wgslsmith_add_u32(0u, 1u))) & _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_add_u32(var_0.x, u_input.a), global1.c.x & 0u, ~4294967295u), abs(u_input.b | vec3<u32>(global1.c.x, u_input.d, 65972u))));
    let var_4 = _wgslsmith_mult_vec2_u32(~select(~_wgslsmith_mult_vec2_u32(u_input.b.yz, vec2<u32>(global1.c.x, 29305u)), ~abs(u_input.b.yz), true), abs(~u_input.b.yx));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_mod_u32(~4294967295u, var_3.c.x), ~(select(var_3.c.x, u_input.a, true) << (global1.b.d % 32u)), _wgslsmith_add_u32(var_3.c.x, _wgslsmith_mod_u32(var_0.x, 1u)), var_1.c.x), _wgslsmith_f_op_f32(var_3.b.x - 1278f), -_wgslsmith_mod_vec2_i32(firstLeadingBit(var_2.wy), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(global1.b.e.zz, u_input.c), var_2.wz)));
}

