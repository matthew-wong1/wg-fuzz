struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec3<u32>,
    d: Struct_3,
}

struct Struct_5 {
    a: vec3<bool>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec3<u32> = vec3<u32>(48708u, 43861u, 67202u);

var<private> global2: Struct_1 = Struct_1(-1173f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_2) -> vec3<i32> {
    global1 = ~vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(15518u, 12379u, 1u), vec3<u32>(global0.a, u_input.a, 67307u)) ^ 5304u, ~global1.x, 4294967295u);
    var var_0 = -(~firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(1456i, -48694i), _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 20972i), vec2<i32>(17510i, -1266i)))));
    let var_1 = true;
    var_0 = -(~vec2<i32>(12203i, var_0.x << (~global0.a % 32u)));
    var var_2 = ~vec2<i32>(var_0.x >> (1702u % 32u), _wgslsmith_add_i32(var_0.x, 1i << (u_input.a % 32u)));
    return reverseBits(-_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, var_2.x, var_2.x), ~vec3<i32>(2147483647i, var_0.x, var_2.x)));
}

fn func_2() -> Struct_4 {
    var var_0 = vec3<i32>(-1i, ~(-_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(-45983i, 7268i, -2147483647i) >> (vec3<u32>(global0.a, global1.x, global1.x) % vec3<u32>(32u)))), ~abs((i32(-1i) * -59321i) >> ((u_input.a << (global1.x % 32u)) % 32u)));
    global0 = Struct_3(~global1.x, global0.b);
    let var_1 = u_input.a;
    var_0 = select(vec3<i32>(var_0.x, _wgslsmith_mod_i32(-var_0.x, -1i), var_0.x), func_3(Struct_2(global0.b.a)), vec3<bool>(_wgslsmith_div_u32(~var_1, ~u_input.a) >= global0.a, all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true))) || select(select(true, true, true), true, true), !(var_0.x >= -1i)));
    var var_2 = Struct_3(_wgslsmith_mult_u32(_wgslsmith_mult_u32(~_wgslsmith_sub_u32(global1.x, 0u), 65937u), 0u), Struct_2(global0.b.a));
    return Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a + 635f)))), max(select(reverseBits(vec3<u32>(1u, global1.x, u_input.a)), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 18371u, var_1), vec3<u32>(global0.a, var_1, 5035u)), ~vec3<u32>(4294967295u, 32323u, global0.a)), vec3<bool>(true, true, true)), ~(~vec3<u32>(u_input.a, 1u, 75701u))), _wgslsmith_mult_vec3_u32(vec3<u32>(abs(firstLeadingBit(var_1)), ~var_2.a, ~_wgslsmith_clamp_u32(4294967295u, 10377u, var_2.a)), ~vec3<u32>(~1u, ~var_1, firstTrailingBit(0u))), Struct_3(select(_wgslsmith_dot_vec2_u32(max(vec2<u32>(7403u, 30235u), vec2<u32>(1u, var_1)), global1.xy), 37888u, select(true, true, all(vec2<bool>(false, false)))), Struct_2(Struct_1(global2.a))));
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_3) -> Struct_4 {
    global0 = Struct_3(4294967295u, global0.b);
    var var_0 = global2.a;
    let var_1 = func_2();
    var_0 = _wgslsmith_f_op_f32(step(arg_2.a, arg_3.b.a.a));
    var var_2 = global0.b.a.a;
    return var_1;
}

fn func_4(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: u32, arg_3: vec2<u32>) -> Struct_3 {
    let var_0 = global0.b;
    global2 = func_2().d.b.a;
    global0 = arg_0.d;
    return Struct_3(reverseBits(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(30861u, _wgslsmith_mod_u32(arg_3.x, 12355u), _wgslsmith_mod_u32(1u, arg_3.x)), ~_wgslsmith_add_u32(4294967295u, global0.a))), func_1(select(arg_0.b, arg_0.c, any(vec2<bool>(true, true))), any(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false))), func_1(countOneBits(_wgslsmith_clamp_vec3_u32(arg_0.c, arg_0.c, vec3<u32>(4294967295u, arg_3.x, arg_0.b.x))), false, func_2().a.a, func_1(firstLeadingBit(vec3<u32>(u_input.a, arg_3.x, 1u)), true, func_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u), false, var_0.a, arg_0.d).d.b.a, func_1(vec3<u32>(arg_2, 1u, 1u), true, Struct_1(global0.b.a.a), arg_0.d).d).d).a.a, Struct_3(func_2().d.a, Struct_2(func_1(vec3<u32>(4294967295u, arg_3.x, 5869u), true, Struct_1(107f), Struct_3(arg_3.x, global0.b)).d.b.a))).d.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(vec3<bool>(any(vec2<bool>(true, false)), true, false), 1i, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a + _wgslsmith_f_op_f32(sign(-525f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.a + global0.b.a.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-330f, 226f, true)))))));
    let var_1 = abs(abs(~(~vec4<u32>(global0.a, 0u, global0.a, global0.a)))) >> (~(~(~max(vec4<u32>(u_input.a, 1u, global0.a, u_input.a), vec4<u32>(0u, global1.x, 0u, 0u)))) % vec4<u32>(32u));
    let var_2 = 0u;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0.b.a.a, 650f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.b.a.a, -1000f), vec2<f32>(372f, global2.a))), vec2<f32>(var_0.c, 242f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(822f, _wgslsmith_div_f32(1756f, global2.a)) * vec2<f32>(742f, global2.a))));
    var var_4 = func_4(func_1(~var_1.zyw ^ reverseBits(_wgslsmith_mod_vec3_u32(var_1.zwx, vec3<u32>(var_2, 6678u, var_1.x))), var_0.a.x, global0.b.a, Struct_3(_wgslsmith_add_u32(39768u, 1u), global0.b)), vec4<f32>(_wgslsmith_f_op_f32(floor(-310f)), 1f, -2026f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(global0.b.a.a, global2.a, var_0.a.x)))))), firstLeadingBit(4294967295u), (select(var_1.wy & var_1.zy, _wgslsmith_mod_vec2_u32(vec2<u32>(global1.x, global0.a), vec2<u32>(var_2, 1u)), var_1.x == global0.a) << (~_wgslsmith_sub_vec2_u32(vec2<u32>(var_2, 45722u), global1.zy) % vec2<u32>(32u))) >> (~var_1.xz % vec2<u32>(32u)));
    global1 = ~vec3<u32>(~global1.x, _wgslsmith_mult_u32(global0.a, ~1u), 11398u);
    var_4 = func_1((var_1.xxy ^ vec3<u32>(~4294967295u, _wgslsmith_mult_u32(4294967295u, var_4.a), 0u ^ u_input.a)) | ~(~(~vec3<u32>(global0.a, var_2, 1u))), (_wgslsmith_f_op_f32(-var_3.x) >= -1054f) || true, var_4.b.a, Struct_3(max(~(~global1.x), ~42777u), func_2().a)).d;
    var var_5 = ~_wgslsmith_dot_vec3_u32(var_1.xwy, ~firstTrailingBit(var_1.yyx) & abs(var_1.xwx >> (var_1.wxw % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1076f + 1491f)), var_0.c) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, 712f, 1021f) + vec3<f32>(474f, var_4.b.a.a, var_3.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.a.a, var_3.x, var_3.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(2114f, 1010f, -1603f))) - vec3<f32>(-1000f, var_0.c, global0.b.a.a)))), -2147483647i);
}

