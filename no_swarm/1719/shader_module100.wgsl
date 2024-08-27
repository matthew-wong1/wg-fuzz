struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_3;

var<private> global2: vec4<i32>;

var<private> global3: Struct_2 = Struct_2(true, vec3<i32>(0i, 1i, -1i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec3<u32> {
    var var_0 = any(!(!(!vec3<bool>(global1.c.a.x, true, global3.a))));
    let var_1 = ~(-firstLeadingBit(global3.b.x));
    return vec3<u32>(global1.b.x, ~1u, u_input.c);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec3<bool>, arg_3: i32) -> f32 {
    global0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-993f, 756f), 897f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-194f)) + _wgslsmith_f_op_f32(547f * global0.x)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.c.b.x)))), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + -620f))))));
    global1 = Struct_3(global2.x, global1.b, Struct_1(select(select(!global1.c.a, vec4<bool>(global3.a, false, false, false), !global1.c.a), vec4<bool>(global3.a, false, false, select(arg_2.x, global3.a, arg_0.a)), global3.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global1.c.b, global0.zx)) - _wgslsmith_f_op_vec2_f32(-global0.wx)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1.c.b.x, -669f), vec2<f32>(521f, global1.c.b.x))))));
    global2 = ~(~(~(vec4<i32>(2147483647i, 1i, global1.a, global2.x) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.x, 0u, u_input.c, arg_1.x), vec4<u32>(4017u, global1.b.x, 38011u, global1.b.x)) % vec4<u32>(32u)))));
    var var_0 = Struct_3(-27374i, vec3<u32>(_wgslsmith_dot_vec2_u32(select(~vec2<u32>(u_input.a.x, 6096u), arg_1.zz, true | global1.c.a.x), ~(~vec2<u32>(4294967295u, 56630u))), 21397u, _wgslsmith_dot_vec2_u32(global1.b.zx, ~global1.b.yz) & (max(6764u, 4294967295u) | min(4294967295u, arg_1.x))), global1.c);
    let var_1 = global1.c.b.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-974f)), _wgslsmith_f_op_f32(f32(-1f) * -186f))) + 200f) - _wgslsmith_f_op_f32(364f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-139f, 867f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1146f * var_0.c.b.x)))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_3 {
    var var_0 = arg_0.b;
    global0 = vec4<f32>(-170f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_2(arg_1.a.x, arg_2), ~func_3(), select(global1.c.a.xwx, arg_1.a.xzz, select(global1.c.a.xxz, vec3<bool>(false, arg_0.c.a.x, false), true)), -(~2147483647i))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1434f, -274f, false)), _wgslsmith_f_op_f32(func_4(Struct_2(arg_0.c.a.x, vec3<i32>(21180i, 20907i, -2147483647i)), global1.b, global1.c.a.zxy, global2.x)))) * _wgslsmith_div_f32(-123f, -1073f))), _wgslsmith_f_op_f32(-arg_1.b.x), arg_1.b.x);
    global2 = vec4<i32>(arg_0.a, abs(1i), i32(-1i) * -(_wgslsmith_sub_i32(-14597i, global2.x) >> (1u % 32u)), -(_wgslsmith_add_i32(arg_0.a, 2147483647i) ^ -1i));
    var_0 = vec3<u32>(0u, ~0u, 1u);
    let var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_add_i32(arg_0.a, -(~1i)), 24650i), arg_2.zx);
    return Struct_3(_wgslsmith_mod_i32(0i, 1i), ~arg_0.b, arg_1);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<f32>) -> vec4<bool> {
    global3 = Struct_2((_wgslsmith_mod_i32(0i, reverseBits(global1.a)) << (92655u % 32u)) > -1i, reverseBits(reverseBits(~(vec3<i32>(-1i, global1.a, 76085i) & global3.b))));
    global2 = vec4<i32>(~_wgslsmith_sub_i32(-14506i, i32(-1i) * -1i) >> (u_input.b % 32u), global2.x, -2147483647i >> (countOneBits(u_input.a.x) % 32u), ~global1.a);
    var var_0 = Struct_1(vec4<bool>(global3.a, min(global3.b.x, reverseBits(global2.x)) >= ~1i, global1.c.a.x, !global1.c.a.x), arg_1.xx);
    let var_1 = 1u;
    var var_2 = func_2(Struct_3(_wgslsmith_clamp_i32(0i, global2.x >> (u_input.a.x % 32u), 1i) >> (26506u % 32u), _wgslsmith_sub_vec3_u32(global1.b, vec3<u32>(~global1.b.x, ~4294967295u, 28994u)), Struct_1(select(var_0.a, !vec4<bool>(true, false, global1.c.a.x, global1.c.a.x), select(false, false, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, 1000f) * vec2<f32>(1371f, global0.x)) + var_0.b))), Struct_1(!var_0.a, _wgslsmith_f_op_vec2_f32(var_0.b + vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(-global1.c.b.x)))), vec3<i32>(abs(_wgslsmith_clamp_i32(1i, -2147483647i, 2147483647i)), global2.x, global3.b.x));
    return func_2(Struct_3(~_wgslsmith_mult_i32(max(var_2.a, -1i), 1i), vec3<u32>(var_1, var_1 ^ countOneBits(global1.b.x), _wgslsmith_div_u32(var_1, var_2.b.x)), global1.c), func_2(func_2(Struct_3(_wgslsmith_dot_vec3_i32(global3.b, global2.xxw), vec3<u32>(90503u, 1u, 0u), Struct_1(var_0.a, global1.c.b)), Struct_1(select(var_2.c.a, vec4<bool>(global3.a, var_2.c.a.x, false, false), false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.b.x, -528f))), _wgslsmith_mult_vec3_i32(-global2.xyw, vec3<i32>(15459i, global2.x, global2.x))), Struct_1(var_0.a, arg_1.xz), abs(_wgslsmith_add_vec3_i32(abs(vec3<i32>(global2.x, -11639i, global1.a)), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 1i, var_2.a), global3.b)))).c, vec3<i32>(1i, -_wgslsmith_dot_vec3_i32(global3.b, vec3<i32>(var_2.a, global1.a, 129i)), -1i)).c.a;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_2(any(vec2<bool>(any(func_1(global1.c.a.wx, vec4<f32>(global1.c.b.x, -1507f, 308f, -1000f))), global3.a)), _wgslsmith_clamp_vec3_i32(abs(_wgslsmith_mult_vec3_i32(countOneBits(global3.b), global2.wxw)), _wgslsmith_sub_vec3_i32(~select(global3.b, vec3<i32>(0i, global1.a, global1.a), vec3<bool>(true, global1.c.a.x, global3.a)), global3.b), reverseBits(vec3<i32>(global2.x, abs(global3.b.x), global3.b.x))));
    global2 = -_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(-67249i, global1.a, -44593i, 2147483647i), reverseBits(vec4<i32>(16538i, global1.a, 28740i, -2056i))), vec4<i32>(_wgslsmith_dot_vec2_i32(global3.b.yx, global3.b.yz), i32(-1i) * -12417i, global2.x, _wgslsmith_dot_vec2_i32(global3.b.yx, global2.zx))), _wgslsmith_div_vec4_i32(~(~vec4<i32>(global1.a, global3.b.x, global3.b.x, 13103i)), -firstTrailingBit(vec4<i32>(global2.x, global1.a, global2.x, global3.b.x))));
    var var_0 = true & all(global1.c.a.xxx);
    global0 = vec4<f32>(_wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(494f)), global1.c.b.x))))), global0.x, global1.c.b.x);
    let var_1 = vec4<u32>(_wgslsmith_dot_vec3_u32(reverseBits(global1.b), reverseBits(~abs(vec3<u32>(4294967295u, 4715u, global1.b.x)))), ~u_input.c, global1.b.x, global1.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~_wgslsmith_add_vec4_u32(vec4<u32>(3161u, 61057u, global1.b.x, u_input.b), vec4<u32>(0u, 0u, var_1.x, global1.b.x)))), 0u);
}

