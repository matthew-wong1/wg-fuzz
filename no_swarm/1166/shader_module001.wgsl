struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32 = 20974u;

var<private> global2: Struct_2 = Struct_2(vec3<u32>(1u, 1u, 19215u), 2147483647i, Struct_1(true, vec4<f32>(398f, 1000f, 1000f, -869f), true), vec2<f32>(834f, -475f));

var<private> global3: vec4<i32>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: i32) -> u32 {
    let var_0 = !arg_0.xyz;
    var var_1 = global2.a.yz;
    var_1 = ~global2.a.xx;
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(max(-994f, _wgslsmith_f_op_f32(-global2.d.x))))));
    var var_3 = Struct_2(reverseBits(vec3<u32>(global2.a.x, u_input.a.x, global2.a.x)), global3.x, Struct_1(!(max(1u, global2.a.x) >= ~global2.a.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.b - vec4<f32>(771f, -410f, 1147f, -415f))), global2.c.b), false), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global2.c.b.x)), _wgslsmith_f_op_f32(step(-1122f, 103f)))) + -289f), _wgslsmith_f_op_f32(ceil(global0.b.x))));
    return ~23410u;
}

fn func_1(arg_0: u32) -> i32 {
    var var_0 = Struct_2(u_input.a.zzy, -(~(~2147483647i)), Struct_1(true || any(vec2<bool>(global2.c.c, false)), global2.c.b, select(any(!vec2<bool>(true, global0.c)), select(global0.c & global2.c.c, false, true), all(vec4<bool>(false, true, global2.c.a, global0.a)))), _wgslsmith_f_op_vec2_f32(-global0.b.xw));
    global1 = var_0.a.x;
    let var_1 = ~func_2(!vec4<bool>(global0.a, global0.c, var_0.c.a, true), _wgslsmith_f_op_vec3_f32(select(global0.b.xww, global2.c.b.yyy, true)), max(firstTrailingBit(-1i), global2.b));
    return firstLeadingBit(-24791i & (global3.x >> (_wgslsmith_mod_u32(var_1, ~4294967295u) % 32u)));
}

fn func_3(arg_0: u32, arg_1: f32) -> i32 {
    let var_0 = Struct_1(global0.a, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.c.b.x, arg_1) + _wgslsmith_f_op_f32(f32(-1f) * -510f)), _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-global2.c.b.x))), 1000f, 526f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -722f), -524f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1))))), any(!(!select(vec3<bool>(global2.c.a, true, global0.c), vec3<bool>(false, global0.a, true), vec3<bool>(true, global2.c.a, false)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(global0.b.x * arg_1), -1921f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global2.c.b.wyx, vec3<f32>(global0.b.x, 1282f, 1635f)))))) * global0.b.zyx);
    var var_2 = Struct_2(~min(vec3<u32>(abs(u_input.a.x), reverseBits(arg_0), 22956u), vec3<u32>(~u_input.a.x, u_input.a.x, max(4294967295u, 40774u))), 37631i, global2.c, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(round(global0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x))), global0.b.yw, select(vec2<bool>(all(vec2<bool>(false, global2.c.c)), arg_0 >= 54059u), !select(vec2<bool>(var_0.a, false), vec2<bool>(global2.c.c, global0.a), vec2<bool>(false, global2.c.a)), false))));
    var var_3 = ~vec4<u32>(select(~global2.a.x << ((60432u | var_2.a.x) % 32u), ~u_input.a.x, true), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.a.x, 46847u, arg_0, 4294967295u), u_input.a), u_input.a), abs(u_input.a.x | var_2.a.x), 34000u);
    global1 = abs(max(var_3.x, arg_0));
    return ~global3.x;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    global1 = _wgslsmith_mult_u32(arg_3 ^ (_wgslsmith_add_u32(global2.a.x >> (37397u % 32u), _wgslsmith_dot_vec3_u32(arg_2.a, arg_2.a)) & min(arg_2.a.x, 67095u)), arg_2.a.x);
    var var_0 = !arg_1.c;
    var var_1 = func_3(_wgslsmith_div_u32(arg_2.a.x, 0u), 185f);
    global3 = -(~_wgslsmith_div_vec4_i32(vec4<i32>(global2.b, 1i, 2147483647i, global2.b) ^ vec4<i32>(1i, -37566i, global3.x, arg_0.x), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.b, arg_0.x, 1i, 1i), vec4<i32>(arg_2.b, arg_2.b, 2147483647i, 9573i)))) << (firstLeadingBit(select(reverseBits(u_input.a), u_input.a & ~vec4<u32>(arg_2.a.x, 0u, arg_2.a.x, arg_3), arg_1.c)) % vec4<u32>(32u));
    global3 = firstTrailingBit(vec4<i32>(26206i, select(-max(0i, -13396i), reverseBits(_wgslsmith_div_i32(arg_0.x, arg_2.b)), select(true, arg_1.c, true)), -arg_2.b, global3.x));
    return Struct_1(!global0.c, vec4<f32>(_wgslsmith_f_op_f32(global0.b.x * global0.b.x), 215f, 815f, -1000f), all(select(select(!vec4<bool>(global0.c, true, false, global0.c), !vec4<bool>(false, global2.c.c, false, true), arg_0.x > arg_0.x), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, arg_1.c, true), vec4<bool>(true, arg_2.c.c, true, false), true), !vec4<bool>(arg_2.c.a, arg_1.a, arg_2.c.a, arg_1.a)), !vec4<bool>(false, arg_1.c, false, global0.a))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(reverseBits(_wgslsmith_mod_vec3_u32(global2.a, u_input.a.xyw)), min(~u_input.a.xyz, _wgslsmith_mod_vec3_u32(u_input.a.zwz, vec3<u32>(u_input.a.x, 15512u, global2.a.x)))), u_input.a.xwz), abs(i32(-1i) * -15797i), func_4(select(firstTrailingBit(global3.ywy), countOneBits(vec3<i32>(global3.x, global3.x, -32850i)), _wgslsmith_clamp_u32(global2.a.x, 17976u, u_input.a.x) >= countOneBits(1u)), func_4(select(global3.xwz, vec3<i32>(global2.b, global2.b, -29812i), false) >> (u_input.a.zzy % vec3<u32>(32u)), Struct_1(func_4(vec3<i32>(-19035i, 1i, global3.x), global2.c, Struct_2(vec3<u32>(u_input.a.x, 25121u, 30538u), global3.x, Struct_1(global2.c.a, vec4<f32>(arg_0.b.x, 916f, 645f, -896f), global0.a), global2.d), global2.a.x).c, _wgslsmith_f_op_vec4_f32(arg_1.b - global2.c.b), true), Struct_2(_wgslsmith_mult_vec3_u32(u_input.a.zyw, global2.a), global2.b, func_4(vec3<i32>(-4860i, global2.b, 2147483647i), arg_1, Struct_2(u_input.a.xww, global2.b, Struct_1(arg_0.a, global2.c.b, false), global0.b.wx), u_input.a.x), vec2<f32>(global0.b.x, arg_0.b.x)), 0u), Struct_2(~(~global2.a), firstLeadingBit(2147483647i), func_4(select(global3.wzx, vec3<i32>(2147483647i, -19505i, -58224i), false), arg_0, Struct_2(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), global3.x, global2.c, vec2<f32>(107f, global2.c.b.x)), ~43652u), arg_0.b.wz), ~(~4294967295u)), _wgslsmith_f_op_vec2_f32(global2.d - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1.b.x, global2.c.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-698f, 1759f)))) + _wgslsmith_f_op_vec2_f32(-arg_1.b.wy))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-1432f * _wgslsmith_f_op_f32(f32(-1f) * -1364f)), arg_1.b.x, _wgslsmith_div_f32(global2.c.b.x, _wgslsmith_f_op_f32(-578f + _wgslsmith_f_op_f32(-global2.c.b.x))), _wgslsmith_f_op_f32(round(arg_1.b.x)));
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_0.d.x))));
    var_0 = Struct_2(var_0.a, min(func_3(var_0.a.x, 1000f) | global3.x, ~global3.x) & var_0.b, global2.c, vec2<f32>(_wgslsmith_f_op_f32(var_0.c.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x))), 833f));
    var var_3 = 0i;
    return Struct_1(_wgslsmith_dot_vec3_u32(~abs(u_input.a.xwy), vec3<u32>(19448u, max(u_input.a.x, 1u), func_2(vec4<bool>(false, global2.c.a, true, true), vec3<f32>(arg_1.b.x, arg_0.b.x, var_1.x), 13531i))) <= _wgslsmith_mult_u32(select(15173u, ~u_input.a.x, arg_1.c), min(u_input.a.x, 34023u) ^ ~var_0.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(global0.b.x, global2.d.x, -668f, var_0.c.b.x), global0.b), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.c.b.x, arg_1.b.x, -1529f, 476f), arg_1.b)))) * func_4(global3.yyy, Struct_1(false, vec4<f32>(arg_0.b.x, global2.d.x, arg_1.b.x, var_1.x), global2.c.a), Struct_2(vec3<u32>(var_0.a.x, 4294967295u, global2.a.x), var_0.b, var_0.c, global0.b.yx), 0u).b)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(vec3<i32>(func_1(~1u), func_3(4294967295u, _wgslsmith_f_op_f32(sign(global0.b.x))), ~countOneBits(2147483647i)), Struct_1(global2.c.a, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(global2.c.b - global2.c.b), vec4<f32>(394f, -415f, global0.b.x, global0.b.x))), global2.c.c), Struct_2(vec3<u32>(_wgslsmith_mod_u32(81032u, 1u), _wgslsmith_sub_u32(4294967295u, global2.a.x), 59114u), -global3.x, global2.c, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global0.b.yz + vec2<f32>(global0.b.x, global0.b.x)), vec2<f32>(1418f, global0.b.x)))), global2.a.x), Struct_1(all(select(vec2<bool>(global0.a, global0.a), select(vec2<bool>(global2.c.a, false), vec2<bool>(global2.c.a, global2.c.a), vec2<bool>(true, false)), vec2<bool>(true, true))), global2.c.b, global0.a));
    let var_1 = vec4<bool>(true, true, !(!global2.c.c), func_5(global2.c, global2.c).a && func_5(global2.c, func_5(Struct_1(global0.c, var_0.b, var_0.c), Struct_1(global0.c, vec4<f32>(1709f, -1000f, 267f, var_0.b.x), var_0.c))).a);
    let var_2 = global0.b.yw;
    global2 = Struct_2(vec3<u32>(~global2.a.x & (u_input.a.x & 55990u), global2.a.x, 1u << (_wgslsmith_mod_u32(u_input.a.x, 26444u) % 32u)), func_1(func_2(vec4<bool>(2315i <= global2.b, all(var_1), true, true), _wgslsmith_f_op_vec3_f32(func_5(Struct_1(global0.c, global2.c.b, var_0.c), global2.c).b.xxx + vec3<f32>(global0.b.x, -1804f, -815f)), -5252i)), global2.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(588f, 2291f), vec2<f32>(-721f, 151f), false)), vec2<f32>(-467f, var_0.b.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, var_2.x))) + global2.c.b.yx));
    global2 = Struct_2(global2.a, -firstTrailingBit(global2.b), func_4(_wgslsmith_add_vec3_i32(~global3.wxy >> (vec3<u32>(u_input.a.x, 1u, 0u) % vec3<u32>(32u)), global3.wzz), func_4(~vec3<i32>(global2.b, global3.x, -30415i), Struct_1(global0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, 996f, var_2.x, var_2.x) + vec4<f32>(global2.d.x, 223f, 647f, -545f)), false & global0.a), Struct_2(_wgslsmith_mod_vec3_u32(global2.a, vec3<u32>(17898u, 1u, 4294967295u)), -2147483647i, global2.c, global2.c.b.yy), u_input.a.x), Struct_2(global2.a, 31017i, func_5(global2.c, func_5(global2.c, global2.c)), _wgslsmith_f_op_vec2_f32(-global2.d)), ~(~global2.a.x & (1u & global2.a.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-2239f, -444f), global0.b.xw))) + _wgslsmith_div_vec2_f32(global0.b.xw, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global2.d.x, global2.c.b.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b.x, var_2.x), vec2<f32>(-877f, 1360f))) - _wgslsmith_f_op_vec2_f32(round(var_0.b.zy))), !var_1.zz)));
    global1 = 535u;
    let var_3 = global2.a.xy;
    var_0 = func_5(func_4(firstTrailingBit(vec3<i32>(_wgslsmith_div_i32(global3.x, -1i), global3.x, global2.b << (global2.a.x % 32u))), func_4(~global3.ywy, Struct_1(false, vec4<f32>(global0.b.x, -1662f, 2520f, global0.b.x), true), Struct_2(reverseBits(vec3<u32>(u_input.a.x, u_input.a.x, var_3.x)), -1i, Struct_1(var_0.c, vec4<f32>(274f, -314f, var_0.b.x, 1012f), var_0.a), _wgslsmith_f_op_vec2_f32(var_0.b.xx + vec2<f32>(global0.b.x, -950f))), ~(1u << (global2.a.x % 32u))), Struct_2(~vec3<u32>(0u, 0u, global2.a.x), global2.b, func_4(-global3.zwz, global2.c, Struct_2(vec3<u32>(4294967295u, global2.a.x, 4294967295u), global2.b, global2.c, global0.b.yx), ~global2.a.x), global0.b.zy), _wgslsmith_sub_u32(36308u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a.x, var_3.x)), vec2<u32>(49412u, var_3.x)))), global2.c);
    let var_4 = Struct_2(~abs(~vec3<u32>(global2.a.x, var_3.x, 20544u)), _wgslsmith_clamp_i32(14102i, -1i, ~_wgslsmith_add_i32(i32(-1i) * -42638i, -global3.x)), Struct_1(global0.c, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(select(-360f, 1501f, var_1.x)), global0.b.x, _wgslsmith_f_op_f32(round(-1057f)), _wgslsmith_f_op_f32(abs(-504f))), vec4<f32>(_wgslsmith_f_op_f32(max(global0.b.x, -995f)), _wgslsmith_f_op_f32(max(var_2.x, 316f)), -586f, _wgslsmith_f_op_f32(round(425f))))), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, 548f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-1691f, -1000f), var_0.b.wz), vec2<f32>(var_2.x, 582f), false)))) - global2.c.b.wy));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), ~0u), u_input.a.x));
}

