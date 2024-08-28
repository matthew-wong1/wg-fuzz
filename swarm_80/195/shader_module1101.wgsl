struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
    c: i32,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_sub_vec4_i32(~select(-countOneBits(vec4<i32>(0i, -2147483647i, -47220i, 1i)), ~global0.d.d ^ ~global0.d.d, vec4<bool>(global0.b || true, u_input.a == u_input.a, any(vec2<bool>(false, global0.b)), select(false, global0.b, global0.b))), vec4<i32>(u_input.a, _wgslsmith_add_i32(_wgslsmith_div_i32(-u_input.a, global0.c & u_input.a), i32(-1i) * -global0.d.d.x), abs(-2147483647i), ~(~_wgslsmith_dot_vec3_i32(global0.d.d.xzy, global0.d.d.xxx))));
    let var_1 = abs(21508i);
    var var_2 = vec2<u32>(global0.d.a >> (_wgslsmith_div_u32(0u, ~11472u) % 32u), 4036u);
    let var_3 = vec4<u32>(35028u, firstTrailingBit(countOneBits(reverseBits(0u))), global0.d.a, 35415u);
    var var_4 = Struct_1(global0.d.a >> (min(4294967295u, ~1u) % 32u), ~(var_3 << (~_wgslsmith_div_vec4_u32(vec4<u32>(var_2.x, 12727u, 53290u, 19194u), vec4<u32>(global0.d.a, global0.d.b.x, 38673u, 4294967295u)) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(global0.d.c, global0.d.c)))))), select(~vec4<i32>(-53823i, -6706i, u_input.a, firstTrailingBit(u_input.a)), vec4<i32>(var_1, _wgslsmith_sub_i32(i32(-1i) * -1i, -12171i & global0.c), _wgslsmith_dot_vec2_i32(var_0.wx, _wgslsmith_mod_vec2_i32(var_0.wx, var_0.zx)), -1i), global0.b));
    return countOneBits(var_4.d.x);
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>) -> Struct_2 {
    global0 = Struct_2(global0.d.d.yyw | (vec3<i32>(~1i, func_3(), max(arg_1.x, u_input.a)) | arg_0.d.d.zxz), arg_0.b, _wgslsmith_div_i32(global0.c, _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_1.x, u_input.a) | arg_1.xy, global0.a.yx)), global0.d);
    global0 = Struct_2(~(~global0.a), global0.b, _wgslsmith_div_i32(~_wgslsmith_dot_vec4_i32(~arg_0.d.d, vec4<i32>(-1i, arg_1.x, arg_0.d.d.x, -1i)), i32(-1i) * -66026i), Struct_1(arg_0.d.a, _wgslsmith_sub_vec4_u32(~vec4<u32>(arg_0.d.b.x, 968u, arg_0.d.a, 4294967295u), vec4<u32>(_wgslsmith_mod_u32(arg_0.d.a, arg_0.d.a), global0.d.a << (79245u % 32u), global0.d.a | 4294967295u, global0.d.b.x)), global0.d.c, select(~global0.d.d, -vec4<i32>(global0.a.x, 1i, arg_1.x, 0i), true)));
    global0 = Struct_2(_wgslsmith_clamp_vec3_i32(firstTrailingBit(select(vec3<i32>(2147483647i, global0.c, u_input.a), arg_1, vec3<bool>(true, true, arg_0.b)) ^ global0.d.d.wzw), ~arg_1, -reverseBits(arg_1) | arg_1), false, u_input.a ^ -45644i, arg_0.d);
    let var_0 = Struct_3(Struct_2(vec3<i32>(-2147483647i, -8490i, arg_0.c), any(select(!vec2<bool>(arg_0.b, false), !vec2<bool>(global0.b, arg_0.b), vec2<bool>(true, true))), global0.d.d.x, Struct_1(abs(arg_0.d.a), _wgslsmith_add_vec4_u32(vec4<u32>(global0.d.a, 2795u, global0.d.b.x, 1u), vec4<u32>(global0.d.b.x, global0.d.a, arg_0.d.b.x, global0.d.b.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-411f, -389f, arg_0.d.c.x, -1612f))), arg_0.d.c), ~reverseBits(arg_0.d.d))), arg_0, global0.d.b, arg_0);
    let var_1 = select(true, ((_wgslsmith_clamp_i32(var_0.b.a.x, u_input.a, u_input.a) ^ ~global0.c) > (i32(-1i) * -53163i)) && !arg_0.b, ~0i < global0.a.x);
    return arg_0;
}

fn func_1() -> Struct_2 {
    var var_0 = global0.d.b.yz;
    var var_1 = func_2(Struct_2(abs((global0.d.d.wzw << (global0.d.b.zxz % vec3<u32>(32u))) >> (_wgslsmith_div_vec3_u32(global0.d.b.xyz, global0.d.b.zxy) % vec3<u32>(32u))), global0.b, 2147483647i, Struct_1(max(21932u, countOneBits(0u)), ~firstLeadingBit(vec4<u32>(var_0.x, 4294967295u, 1u, 30271u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.d.c * vec4<f32>(1242f, global0.d.c.x, global0.d.c.x, global0.d.c.x))), _wgslsmith_div_vec4_i32(-vec4<i32>(0i, -2147483647i, 17872i, global0.c), ~global0.d.d))), global0.a);
    var var_2 = true;
    return Struct_2(var_1.d.d.zyw, !(global0.d.c.x < -1731f), ~(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global0.d.d.x, 36093i, 6430i), var_1.a), -var_1.d.d.zyz) >> (_wgslsmith_sub_u32(var_1.d.a, _wgslsmith_sub_u32(var_0.x, var_1.d.b.x)) % 32u)), var_1.d);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec2<u32>, arg_3: Struct_2) -> bool {
    let var_0 = ~((~(-1051i) | (arg_0.a.d.d.x >> (arg_0.d.d.a % 32u))) | _wgslsmith_div_i32(~reverseBits(u_input.a), u_input.a));
    global0 = func_1();
    let var_1 = arg_3.a >> ((_wgslsmith_div_vec3_u32(arg_0.d.d.b.yyw ^ vec3<u32>(34243u, 5855u, arg_0.d.d.b.x), global0.d.b.zxz) ^ _wgslsmith_mult_vec3_u32(~arg_3.d.b.zyx << (vec3<u32>(global0.d.b.x, arg_2.x, arg_3.d.a) % vec3<u32>(32u)), arg_3.d.b.zwx & arg_3.d.b.xzx)) % vec3<u32>(32u));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.d.c.x))) + -236f)));
    let var_3 = Struct_4(arg_0, !(!select(select(vec4<bool>(arg_0.b.b, false, false, false), vec4<bool>(arg_3.b, false, false, false), vec4<bool>(true, arg_3.b, true, global0.b)), vec4<bool>(arg_0.b.b, arg_3.b, arg_0.b.b, arg_0.a.b), func_1().b)), -28676i, arg_0);
    return !(!((arg_0.a.d.c.x < _wgslsmith_f_op_f32(f32(-1f) * -1101f)) | true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_3(Struct_2(countOneBits(global0.d.d.yxy), any(!vec4<bool>(false, global0.b, true, global0.b)), reverseBits(firstTrailingBit(-2147483647i)), global0.d), Struct_2(firstTrailingBit(global0.a) | (global0.a & vec3<i32>(-48832i, 0i, -49783i)), false, u_input.a, global0.d), ~(~global0.d.b & _wgslsmith_sub_vec4_u32(vec4<u32>(global0.d.b.x, global0.d.b.x, global0.d.b.x, global0.d.b.x), vec4<u32>(global0.d.a, 6013u, 3038u, global0.d.b.x))), func_1()), _wgslsmith_mult_vec2_i32(vec2<i32>(global0.a.x, 5293i), global0.d.d.wy), vec2<u32>(46045u, _wgslsmith_mult_u32(~(~29065u), global0.d.a)), Struct_2(vec3<i32>(_wgslsmith_mult_i32(1i, -69044i), ~abs(u_input.a), _wgslsmith_mod_i32(u_input.a, u_input.a) ^ _wgslsmith_sub_i32(global0.a.x, global0.c)), global0.b, 1i, global0.d));
    let var_1 = Struct_3(Struct_2(global0.a, false, -3074i, Struct_1(4294967295u, vec4<u32>(_wgslsmith_div_u32(1u, 11525u), ~42012u, ~1u, reverseBits(15047u)), vec4<f32>(_wgslsmith_f_op_f32(sign(global0.d.c.x)), 544f, _wgslsmith_f_op_f32(sign(global0.d.c.x)), _wgslsmith_f_op_f32(-global0.d.c.x)), global0.d.d)), Struct_2(global0.a, any(vec2<bool>(var_0, false)) & any(!vec4<bool>(var_0, true, var_0, global0.b)), u_input.a, func_2(func_2(Struct_2(global0.d.d.xwx, true, global0.a.x, Struct_1(49872u, global0.d.b, vec4<f32>(584f, 729f, global0.d.c.x, -1341f), global0.d.d)), -vec3<i32>(-34152i, 1i, u_input.a)), countOneBits(firstLeadingBit(vec3<i32>(4800i, -2147483647i, 1i)))).d), vec4<u32>(~(~(~4294967295u)), _wgslsmith_div_u32(6253u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 33998u), firstLeadingBit(global0.d.b.xz))), global0.d.a, global0.d.a), Struct_2(global0.a, true, _wgslsmith_mod_i32(_wgslsmith_mult_i32(global0.c, abs(1i)), _wgslsmith_dot_vec3_i32(~global0.d.d.wwx, func_2(Struct_2(global0.d.d.wyy, var_0, global0.d.d.x, Struct_1(0u, global0.d.b, global0.d.c, global0.d.d)), vec3<i32>(-2147483647i, global0.a.x, 37884i)).d.d.ywz)), global0.d));
    global0 = var_1.d;
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(-1276f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.d.c.x), _wgslsmith_f_op_f32(trunc(global0.d.c.x)))))), _wgslsmith_f_op_f32(var_1.a.d.c.x * var_1.d.d.c.x)));
    var var_3 = abs(2082u);
    let var_4 = select(!select(select(!vec4<bool>(true, true, global0.b, true), !vec4<bool>(false, true, global0.b, global0.b), select(vec4<bool>(false, var_0, false, var_0), vec4<bool>(var_1.b.b, false, false, true), vec4<bool>(false, true, global0.b, true))), vec4<bool>(!global0.b, var_0, func_2(Struct_2(global0.d.d.zww, var_1.a.b, -3472i, Struct_1(var_1.c.x, vec4<u32>(37609u, 27285u, global0.d.a, global0.d.a), vec4<f32>(1871f, 1000f, global0.d.c.x, global0.d.c.x), global0.d.d)), vec3<i32>(u_input.a, -6401i, -19091i)).b, var_0), true), vec4<bool>(global0.b, true, true == !global0.b, any(vec2<bool>(false, !var_1.a.b))), true);
    let var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.d.d.c.yx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, -654f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2 * vec2<f32>(-322f, var_1.a.d.c.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.b.d.c.x, func_1().d.c.x), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global0.d.c.yw))))), select(firstLeadingBit(_wgslsmith_mod_i32(-13303i, u_input.a)), func_3(), !(876f <= global0.d.c.x) && true), _wgslsmith_div_f32(-939f, var_2.x), 41980u & global0.d.a);
}

