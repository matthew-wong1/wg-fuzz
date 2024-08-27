struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec4<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<bool>,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec4<bool>,
    d: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<bool> = vec4<bool>(false, false, true, false);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>) -> bool {
    return true;
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec2<i32>, arg_3: u32) -> f32 {
    global1 = vec4<bool>(!(arg_0.b.c.x > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(772f, arg_0.b.c.x)), _wgslsmith_f_op_f32(min(880f, -312f))))), !all(vec3<bool>(!global1.x, any(vec2<bool>(arg_0.b.d.x, global0.c.x)), arg_0.c.x)), global0.d, global0.c.x);
    global0 = Struct_2(690f, global0.b, vec4<bool>(true, global0.c.x, (_wgslsmith_clamp_u32(4294967295u, arg_0.b.e.x, arg_0.b.e.x) & 120771u) != min(~arg_3, 640u), (arg_3 << (1u % 32u)) < 4294967295u), all(!(!(!arg_0.b.d.zwy))));
    let var_0 = select(_wgslsmith_clamp_vec4_u32(vec4<u32>(~arg_0.b.e.x, reverseBits(1915u), abs(arg_0.b.e.x), _wgslsmith_dot_vec3_u32(arg_0.b.e, vec3<u32>(46u, arg_3, arg_0.b.e.x))), abs(~vec4<u32>(arg_0.b.e.x, arg_3, 1u, 13075u)), vec4<u32>(min(arg_0.b.e.x, arg_0.b.e.x), _wgslsmith_sub_u32(4294967295u, global0.b.e.x), select(arg_3, 0u, arg_1.x), max(arg_3, 1u))), vec4<u32>(arg_0.b.e.x, ~(arg_3 & 93066u), 1u | global0.b.e.x, ~(arg_0.b.e.x | 45943u)), global0.b.d) << ((_wgslsmith_sub_vec4_u32(select(vec4<u32>(25203u, 67612u, 55879u, 16683u), vec4<u32>(0u, arg_3, arg_0.b.e.x, arg_0.b.e.x) & vec4<u32>(global0.b.e.x, 90446u, global0.b.e.x, 0u), vec4<bool>(false, true, global1.x, false)), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 52299u, 1u), vec4<u32>(global0.b.e.x, 15820u, 1u, arg_0.b.e.x)), select(vec4<u32>(1u, 1u, arg_3, 0u), vec4<u32>(arg_3, 69248u, 43055u, 1u), global1.x), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 18038u, 30746u, 76812u), vec4<u32>(arg_3, global0.b.e.x, 0u, global0.b.e.x)))) | vec4<u32>(countOneBits(firstTrailingBit(arg_3)), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(78523u, arg_3)), global0.b.e.yy ^ vec2<u32>(global0.b.e.x, arg_0.b.e.x)), global0.b.e.x, _wgslsmith_mod_u32(4294967295u, 1u) << (~4294967295u % 32u))) % vec4<u32>(32u));
    var var_1 = arg_2.x;
    global1 = !select(select(!global0.c, arg_0.c, arg_0.c), select(vec4<bool>(true, true, global1.x, true || global0.d), select(select(vec4<bool>(global1.x, global1.x, false, arg_1.x), arg_0.c, vec4<bool>(global0.b.d.x, true, false, false)), vec4<bool>(global0.d, false, arg_1.x, false), all(vec2<bool>(false, true))), global0.b.d), (_wgslsmith_dot_vec3_u32(var_0.xyw, var_0.wxx) ^ (90652u >> (arg_0.b.e.x % 32u))) == arg_3);
    return _wgslsmith_f_op_f32(-global0.b.c.x);
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: u32, arg_3: vec2<u32>) -> Struct_1 {
    global1 = vec4<bool>(false, arg_0, true, false);
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-107f, 165f, global0.b.c.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1326f, 120f)))))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -598f))), _wgslsmith_f_op_f32(func_3(Struct_2(-175f, Struct_1(true, global0.b.b, vec2<f32>(209f, -1000f), vec4<bool>(false, global1.x, global0.d, true), vec3<u32>(arg_3.x, 5936u, 4294967295u)), global0.c, false), select(vec2<bool>(true, arg_0), !vec2<bool>(global0.b.a, true), select(global1.wy, vec2<bool>(arg_0, true), vec2<bool>(false, global1.x))), u_input.a, arg_2)), -626f), select(select(global0.b.d.zwz, select(!global1.xzy, vec3<bool>(true, true, global1.x), false & global1.x), global1.wxx), !(!(!global0.b.d.xzw)), global1.x)));
    var var_1 = var_0.x;
    var var_2 = all(!global1.zzz);
    let var_3 = global1.wzz;
    return global0.b;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_4) -> Struct_2 {
    global0 = Struct_2(_wgslsmith_f_op_f32(-global0.b.c.x), Struct_1(func_1(_wgslsmith_mult_u32(~33474u, 0u), countOneBits(_wgslsmith_div_vec2_u32(global0.b.e.yz, vec2<u32>(arg_1.c.e.x, 54698u)))), ~vec4<i32>(-arg_1.c.b.x, -37270i, ~global0.b.b.x, reverseBits(0i)), global0.b.c, global0.c, countOneBits(reverseBits(countOneBits(vec3<u32>(arg_1.c.e.x, 4294967295u, 49273u))))), vec4<bool>(false, !global1.x, true, true), true);
    let var_0 = vec4<u32>(9601u, ~firstTrailingBit(~reverseBits(arg_1.a.e.x)), ~abs(4294967295u) | _wgslsmith_add_u32(~_wgslsmith_clamp_u32(39263u, 1u, 1u), _wgslsmith_add_u32(50224u, global0.b.e.x)), global0.b.e.x);
    global0 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.c.c.x, -527f)) - global0.a))), Struct_1((true | arg_1.b) || false, vec4<i32>(func_2(global0.c.x, ~vec3<u32>(arg_0.x, var_0.x, 31274u), abs(global0.b.e.x), arg_0.xz).b.x, _wgslsmith_dot_vec2_i32(func_2(true, vec3<u32>(global0.b.e.x, arg_1.a.e.x, 4294967295u), arg_1.a.e.x, global0.b.e.yx).b.xw, _wgslsmith_mult_vec2_i32(vec2<i32>(22135i, 2147483647i), arg_1.a.b.wy)), abs(arg_1.a.b.x), reverseBits(_wgslsmith_mult_i32(u_input.a.x, 97060i))), arg_1.c.c, !arg_1.a.d, ~var_0.wzz >> (vec3<u32>(~arg_0.x, arg_0.x, global0.b.e.x) % vec3<u32>(32u))), global0.b.d, false);
    var var_1 = _wgslsmith_f_op_vec2_f32(step(global0.b.c, global0.b.c));
    var var_2 = _wgslsmith_f_op_f32(-var_1.x);
    return Struct_2(global0.b.c.x, global0.b, func_2(select(select(!global0.d, any(vec4<bool>(false, true, false, true)), func_1(1u, vec2<u32>(arg_0.x, var_0.x))), global0.c.x, false), vec3<u32>(reverseBits(arg_1.a.e.x | arg_0.x), select(0u, 37248u & global0.b.e.x, arg_1.a.d.x), ~max(arg_1.c.e.x, 51502u)), arg_1.c.e.x & countOneBits(~arg_0.x), arg_1.a.e.yz).d, !any(vec2<bool>(all(vec2<bool>(global1.x, global1.x)), global1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.b.c.x * _wgslsmith_f_op_f32(-901f - global0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1203f) + _wgslsmith_f_op_f32(ceil(2172f))), global0.a) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1297f, global0.a, -720f), vec3<f32>(global0.b.c.x, 1687f, 1124f), vec3<bool>(false, global0.d, global1.x))))))));
    var var_1 = func_4(global0.b.e, Struct_4(global0.b, true, func_2(func_1(4294967295u, global0.b.e.zy), ~countOneBits(vec3<u32>(1156u, 13786u, 1u)), ~global0.b.e.x, ~_wgslsmith_div_vec2_u32(vec2<u32>(global0.b.e.x, global0.b.e.x), global0.b.e.zy))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.x * var_0.x), var_0.x, var_0.x, 943f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-124f, 466f, var_1.b.c.x, var_1.a), vec4<f32>(var_0.x, var_0.x, global0.a, var_1.b.c.x)), vec4<f32>(1488f, 996f, 190f, var_1.a)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, global0.a, var_1.b.c.x, -1898f), vec4<f32>(-330f, -427f, var_0.x, -641f), var_1.c.x))))), abs(reverseBits(var_1.b.b.x)), _wgslsmith_add_vec2_u32(~(~vec2<u32>(1u, var_1.b.e.x)), var_1.b.e.zz));
}

