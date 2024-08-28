struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30> = array<i32, 30>(0i, i32(-2147483648), 1i, 15806i, 8673i, -18621i, -1i, 2147483647i, i32(-2147483648), i32(-2147483648), 0i, 2407i, 34793i, -19741i, 0i, 0i, 5123i, 1i, 29124i, -55252i, 2147483647i, -61000i, 3951i, -23503i, -26998i, 2147483647i, 27451i, -1i, 0i, 0i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> bool {
    var var_0 = min(_wgslsmith_add_u32(~(~abs(u_input.a)), 31625u), u_input.c.x);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-420f * _wgslsmith_f_op_f32(floor(-652f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1010f, -1000f)) * -310f)))) - _wgslsmith_f_op_f32(927f - -224f));
    var_0 = u_input.a;
    let var_2 = 1i;
    let var_3 = u_input.a;
    return -10525i <= _wgslsmith_sub_i32(~_wgslsmith_div_i32(var_2, ~global0[_wgslsmith_index_u32(29928u, 30u)]), _wgslsmith_div_i32(-2147i, -_wgslsmith_add_i32(var_2, 1i)));
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_3(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(~_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(50592u, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)], -2147483647i), abs(u_input.b.x), u_input.b.x), ~u_input.b.x | 18656i), Struct_2(Struct_1(func_3(), true), u_input.b.zyx, Struct_1(true, func_3())), Struct_2(Struct_1(any(vec3<bool>(false, true, true)), true), -(vec3<i32>(u_input.b.x, u_input.b.x, -6717i) ^ vec3<i32>(29572i, 11325i, 23417i)), Struct_1(all(vec2<bool>(false, false)) & true, false)));
    global0 = array<i32, 30>();
    global0 = array<i32, 30>();
    let var_1 = u_input.b.x;
    global0 = array<i32, 30>();
    return select(vec4<bool>(u_input.a != u_input.c.x, true, false, var_0.b.c.a), vec4<bool>(var_0.b.c.b, true, any(vec3<bool>(true, false, var_0.b.c.b)), false), !(true || any(vec3<bool>(var_0.c.c.b, var_0.b.c.a, false))) || false);
}

fn func_1(arg_0: f32, arg_1: vec2<f32>) -> Struct_2 {
    global0 = array<i32, 30>();
    let var_0 = Struct_1(any(vec4<bool>(any(func_2()), select(any(vec2<bool>(false, false)), any(vec4<bool>(true, false, false, true)), any(vec2<bool>(false, true))), true, true)), true);
    var var_1 = Struct_3(~1i, Struct_2(Struct_1(func_3(), false), vec3<i32>(abs(global0[_wgslsmith_index_u32(~4294967295u, 30u)]), u_input.b.x, -_wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(1u, 30u)], -951i), u_input.b.xz)), Struct_1(var_0.a, true)), Struct_2(var_0, u_input.b.zzz, var_0));
    var_1 = Struct_3(~(var_1.a & u_input.b.x), Struct_2(Struct_1(any(vec2<bool>(false, true)) || false, var_0.b), ~abs(_wgslsmith_sub_vec3_i32(u_input.b.zzz, var_1.c.b)), Struct_1(!var_0.a, var_1.c.a.a)), var_1.c);
    let var_2 = Struct_2(Struct_1(!any(vec4<bool>(var_1.c.c.a, var_0.b, var_1.b.c.b, var_0.a)), var_0.a), _wgslsmith_sub_vec3_i32(~_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(var_1.c.b, u_input.b.zzz), var_1.b.b), select(~u_input.b.xzw, u_input.b.zyy, var_0.a)), var_0);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-1191f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(805f, _wgslsmith_f_op_f32(-121f - -995f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1445f, -1156f), vec2<f32>(1620f, -740f)))))));
    var var_1 = !(!var_0.a.a);
    var_0 = Struct_2(func_1(_wgslsmith_f_op_f32(f32(-1f) * -934f), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2925f, -296f)), vec2<f32>(-377f, _wgslsmith_f_op_f32(f32(-1f) * -528f))))).a, ~min(vec3<i32>(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(1u, 30u)], var_0.b.x), global0[_wgslsmith_index_u32(1u, 30u)] << (4325u % 32u), -1i), u_input.b.zwx), func_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(319f)) * _wgslsmith_f_op_f32(f32(-1f) * -490f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1140f, 1000f) + vec2<f32>(583f, 2141f))))).c);
    global0 = array<i32, 30>();
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-665f, 2195f, -466f, -581f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1556f, 799f, -150f, 1708f))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-226f, -1000f))), 1f, 1159f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1410f + -1433f))), vec4<bool>(true, all(vec2<bool>(true, true)), func_2().x, false))) * vec4<f32>(1f, 1f, 1f, 1f));
    var var_4 = Struct_1(true, all(vec4<bool>(var_0.c.a, !var_0.a.b, true, true)) || true);
    let var_5 = abs(max(1u, 4294967295u << ((68900u << (u_input.a % 32u)) % 32u))) >= 0u;
    var_0 = Struct_2(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_3.x)))), var_3.yx).c, (abs(-vec3<i32>(u_input.b.x, 0i, var_0.b.x)) >> (((u_input.c.wxz >> (u_input.c.xzy % vec3<u32>(32u))) << ((u_input.c.yxx << (vec3<u32>(9283u, u_input.a, u_input.c.x) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u))) << (vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(35006u, 0u, 4294967295u), u_input.c.zyx | vec3<u32>(0u, u_input.a, 24637u)), ~_wgslsmith_div_u32(27605u, u_input.a), _wgslsmith_div_u32(~u_input.a, 1u)) % vec3<u32>(32u)), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -166f)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1473f), -854f)).a);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(-19354i), ~(~_wgslsmith_mod_u32(u_input.a, 67524u) & _wgslsmith_dot_vec3_u32(u_input.c.wyx, vec3<u32>(u_input.a, 1u, 70100u))), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(35591i, u_input.b.x, global0[_wgslsmith_index_u32(0u, 30u)]) << (max(u_input.c.zyw, vec3<u32>(60836u, u_input.a, 0u)) % vec3<u32>(32u)), min(vec3<i32>(1i, u_input.b.x, -2147483647i) >> (vec3<u32>(2610u, u_input.c.x, u_input.a) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, -2147483647i, -11498i), u_input.b.wxw))), _wgslsmith_clamp_vec3_i32(-vec3<i32>(global0[_wgslsmith_index_u32(40794u, 30u)], u_input.b.x, var_0.b.x), firstTrailingBit(u_input.b.xyz), _wgslsmith_mod_vec3_i32(firstTrailingBit(var_0.b), -u_input.b.xwz)), ~u_input.b.wwy), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, -1000f, var_3.x, -254f)))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(1000f - var_3.x), _wgslsmith_f_op_f32(min(-920f, -394f)), _wgslsmith_f_op_f32(var_3.x * var_3.x), _wgslsmith_f_op_f32(exp2(var_3.x)))))), _wgslsmith_mod_i32(-var_0.b.x, _wgslsmith_add_i32(-42837i, var_0.b.x ^ 1i) & _wgslsmith_sub_i32(i32(-1i) * -8741i, -global0[_wgslsmith_index_u32(0u, 30u)])));
}

