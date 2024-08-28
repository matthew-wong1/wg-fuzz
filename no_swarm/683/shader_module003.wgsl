struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec3<bool>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32 = -52522i;

var<private> global2: Struct_2;

var<private> global3: array<Struct_2, 26>;

var<private> global4: i32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: f32, arg_1: vec3<bool>) -> i32 {
    global4 = _wgslsmith_div_i32(~min(u_input.a, u_input.a ^ _wgslsmith_div_i32(-31908i, global0.d)), i32(-1i) * -4063i);
    var var_0 = ~1u;
    var_0 = ~global2.b.b.x;
    global1 = u_input.a;
    var_0 = global0.b.x;
    return u_input.a;
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> Struct_3 {
    var var_0 = true;
    var var_1 = _wgslsmith_sub_vec4_u32(u_input.c, ~vec4<u32>(min(global0.b.x, arg_1.b.x) << (~arg_1.b.x % 32u), ~_wgslsmith_mod_u32(8546u, arg_2), global0.b.x, ~abs(u_input.b)));
    global2 = global3[_wgslsmith_index_u32(abs(global2.b.b.x) >> (56327u % 32u), 26u)];
    global3 = array<Struct_2, 26>();
    var_0 = any(global0.c.xz);
    return Struct_3(abs(abs(~countOneBits(54891u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global2.a.yz))), -24226i);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_3) -> f32 {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(reverseBits(1u << (_wgslsmith_add_u32(1u, u_input.b << (37655u % 32u)) % 32u)), 48027u, 4294967295u), 26u)];
    global4 = 2147483647i;
    var var_1 = arg_3;
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.a.x), -638f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.b.x), -1000f)), _wgslsmith_div_f32(726f, -1042f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -968f))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.a * global2.a) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, 1439f, 1063f, -1048f) + vec4<f32>(-653f, arg_2.b.x, 813f, arg_2.b.x)))))), var_0.b, global2.b, _wgslsmith_div_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, 0u, global0.b.x, 3015u), var_0.d, countOneBits(vec4<u32>(arg_0.a, 11740u, arg_3.a, 1u)))), u_input.c));
    var var_3 = Struct_3(arg_2.a, arg_0.b, arg_3.c);
    return -1696f;
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-546f, 1635f)), global2.a.x), global2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(380f, -389f)) * 644f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - global2.a.x) * arg_0))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(-global2.a.x)), 524f)))), _wgslsmith_div_f32(-600f, -807f));
    let var_1 = _wgslsmith_f_op_f32(func_4(func_3(global0.d, global2.b, 4294967295u, max(func_2(_wgslsmith_div_f32(865f, var_0.x), !vec3<bool>(true, false, global2.c.c.x)), abs(-2147483647i) << (global0.b.x % 32u))), global2.c, func_3(~global0.d, global2.c, countOneBits(u_input.c.x) >> (min(global2.d.x, u_input.c.x) % 32u), -2147483647i), func_3(-u_input.a, global2.b, firstLeadingBit(20384u), abs(~(-global2.b.d)))));
    var var_2 = Struct_1(!(!global0.a), global0.b, !vec3<bool>(global0.a.x & any(global2.c.a), false & global0.c.x, true), global2.b.d, global0.e);
    let var_3 = Struct_1(select(select(select(global2.b.a, !global2.c.a, global0.c.x), select(select(global0.a, vec4<bool>(global0.a.x, true, false, false), true), vec4<bool>(true, true, false, var_2.c.x), all(vec2<bool>(global2.b.c.x, false))), !(!global2.b.a.x)), vec4<bool>(true, var_2.c.x, any(select(global0.a, vec4<bool>(global0.a.x, true, true, true), false)), !any(vec2<bool>(global2.b.a.x, true))), vec4<bool>(global0.c.x | global0.c.x, !any(vec3<bool>(var_2.a.x, var_2.c.x, global2.b.c.x)), !select(false, var_2.c.x, global2.b.c.x), all(vec4<bool>(global2.b.a.x, global2.c.c.x, var_2.a.x, false)) & any(global2.b.a))), firstLeadingBit(vec3<u32>(_wgslsmith_mult_u32(~4955u, 0u), ~_wgslsmith_div_u32(global0.b.x, global2.b.b.x), var_2.b.x)), !select(vec3<bool>(any(var_2.c.zy), !var_2.c.x, true), vec3<bool>(all(vec2<bool>(true, false)), true, !global2.b.a.x), select(true, any(global0.a), true)), min(global0.e, var_2.e), 2147483647i);
    var var_4 = !select(select(!var_3.a, var_3.a, !select(vec4<bool>(false, false, global2.c.c.x, global0.a.x), var_2.a, var_2.a)), !vec4<bool>(global2.b.c.x, any(global0.a.xzz), select(false, true, true), false), _wgslsmith_f_op_f32(step(var_1, arg_0)) <= _wgslsmith_f_op_f32(-func_3(-2147483647i, global2.c, global2.b.b.x, -14441i).b.x));
    return global3[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, u_input.b), 26u)];
}

fn func_5(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    var var_0 = true;
    let var_1 = firstLeadingBit(~22683u);
    var_0 = any(!(!vec3<bool>(true, true, arg_1.b.a.x)));
    var var_2 = firstLeadingBit(_wgslsmith_mult_u32(firstTrailingBit(global0.b.x), global0.b.x));
    let var_3 = firstTrailingBit(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(-(vec3<i32>(1i, -11763i, -2147483647i) | vec3<i32>(global2.b.d, global0.e, global2.b.e)), -min(vec3<i32>(global2.b.d, -5413i, arg_1.b.d), vec3<i32>(-12864i, 1i, arg_1.b.e))), countOneBits(-_wgslsmith_sub_vec3_i32(vec3<i32>(global0.d, -2147483647i, global0.d), vec3<i32>(arg_1.c.d, -1i, arg_1.c.e)))));
    return global2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(global2.c.a.x & global0.a.x, func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.x - _wgslsmith_f_op_f32(select(global2.a.x, 420f, global2.c.c.x))) + _wgslsmith_f_op_f32(trunc(global2.a.x)))));
    let var_1 = global2.b;
    var var_2 = ~(~global0.b.x);
    let var_3 = func_3(~(-25382i), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(func_1(global2.a.x).a.x, _wgslsmith_div_f32(global2.a.x, global2.a.x))))).b, 22995u, -28971i);
    let var_4 = Struct_3(~0u | (1u << ((1u & ~global2.c.b.x) % 32u)), var_3.b, var_0.e);
    let x = u_input.a;
    s_output = StorageBuffer(min(firstLeadingBit(~max(vec3<i32>(var_0.d, 1i, var_3.c), vec3<i32>(global2.b.e, -25248i, -2147483647i))), _wgslsmith_mod_vec3_i32(~(-vec3<i32>(var_1.e, 15473i, -1i)), max(vec3<i32>(u_input.d, var_3.c, global2.c.e), select(vec3<i32>(43296i, u_input.d, var_4.c), vec3<i32>(1i, 11433i, -41048i), vec3<bool>(false, false, false))))), var_4.b.x, _wgslsmith_mod_u32(func_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.a.x, -533f) - -1727f)).d.x, ~var_1.b.x), 1f, vec3<u32>(firstLeadingBit(func_3(var_1.d, Struct_1(vec4<bool>(global0.a.x, global0.c.x, global2.b.a.x, var_0.c.x), vec3<u32>(0u, 1u, var_1.b.x), global0.c, var_4.c, 0i), var_1.b.x, global2.c.d).a), 0u, global0.b.x) | reverseBits(~_wgslsmith_sub_vec3_u32(var_0.b, u_input.c.yww)));
}

