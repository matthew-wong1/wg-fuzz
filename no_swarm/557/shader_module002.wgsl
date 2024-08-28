struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 16656u;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<f32>(1801f, -1000f), 1i, -152f), Struct_1(vec2<f32>(1000f, 546f), i32(-2147483648), -127f), Struct_1(vec2<f32>(-223f, -1622f), -21880i, 795f));

var<private> global2: Struct_1 = Struct_1(vec2<f32>(1746f, 710f), i32(-2147483648), -2022f);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec2<u32>) -> i32 {
    let var_0 = ~u_input.d & ~(~select(vec3<u32>(u_input.c, u_input.b.x, arg_2.x), u_input.d, true) | (min(vec3<u32>(52164u, 4294967295u, arg_2.x), u_input.d) ^ _wgslsmith_mult_vec3_u32(u_input.d, u_input.d)));
    var var_1 = all(!vec2<bool>(false, !any(vec3<bool>(false, false, false))));
    let var_2 = _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(0u, 5580u, _wgslsmith_mod_u32(arg_2.x, u_input.d.x), _wgslsmith_dot_vec2_u32(arg_2, var_0.yz) | reverseBits(27998u))), firstLeadingBit(countOneBits(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.c, arg_2.x), vec4<u32>(arg_2.x, var_0.x, 68401u, arg_2.x)))));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global2.c, arg_1.c)), arg_1.c);
    let var_4 = arg_0;
    return _wgslsmith_add_i32(1i, -u_input.e.x);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(global1.c.a + global2.a), _wgslsmith_mult_i32(2147483647i, _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a, global2.b), func_3(0i, global1.c, vec2<u32>(33874u, 249u)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(222f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(trunc(global1.c.a.x))))), global1.a, global1.a);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.a.a.x))), _wgslsmith_add_u32(u_input.c, 28210u));
    var var_2 = vec4<f32>(1000f, var_0.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2632f)))));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-463f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b.c, global2.a.x) * global1.c.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1989f)))), any(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true))))), 1225f, _wgslsmith_f_op_f32(step(-1304f, _wgslsmith_f_op_f32(-1155f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, global1.c.a.x) + _wgslsmith_f_op_f32(global2.c - global1.a.a.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - -144f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * 610f) - 1791f))));
    var var_4 = vec3<u32>(firstTrailingBit(u_input.b.x), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 72081u, 76164u, var_1.b), vec4<u32>(13437u, var_1.b, 32471u, u_input.c))), _wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(u_input.b.x, var_1.b, u_input.d.x, u_input.c)), vec4<u32>(var_1.b, _wgslsmith_mod_u32(21081u, 25145u), abs(0u), ~u_input.b.x))) >> ((~u_input.d ^ ~firstTrailingBit(u_input.d)) % vec3<u32>(32u));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(global1.c.a, vec2<f32>(-999f, var_3.x))), var_3.yz, true)), var_3.xy)), global2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(var_2.x, 919f)))))), var_0.c, Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(249f, var_1.a))), 2147483647i, 1119f));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> Struct_2 {
    var var_0 = func_2();
    var var_1 = -1452f;
    let var_2 = Struct_2(func_2().b, func_2().a, func_2().b);
    var var_3 = Struct_2(func_2().a, func_2().b, arg_1.a);
    let var_4 = arg_2;
    return func_2();
}

fn func_1(arg_0: vec2<bool>, arg_1: u32) -> i32 {
    let var_0 = abs(~(-(reverseBits(vec2<i32>(u_input.a, -2147483647i)) >> (_wgslsmith_div_vec2_u32(u_input.b, u_input.d.yy) % vec2<u32>(32u)))));
    let var_1 = vec3<bool>(true, true, _wgslsmith_div_i32(global2.b, global2.b & 2147483647i) < var_0.x);
    var var_2 = func_4(_wgslsmith_add_u32(arg_1, _wgslsmith_dot_vec2_u32(~firstLeadingBit(u_input.d.xz), vec2<u32>(4294967295u, ~67050u))), func_2(), true, func_2());
    var var_3 = !(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.d.yx, u_input.b) << (u_input.d.x % 32u), 17259u) >= u_input.b.x);
    var_3 = select(true, arg_0.x, var_2.b.b < max(_wgslsmith_add_i32(~global2.b, firstTrailingBit(-2147483647i)), abs(var_0.x)));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-global2.a), func_1(select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), all(vec2<bool>(true, true)) || true), _wgslsmith_div_u32(u_input.c, ~51455u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(953f, -150f)))), -1381f));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1535f, -899f) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global2.a * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1398f, 210f))), vec2<f32>(_wgslsmith_f_op_f32(sign(global2.a.x)), global2.a.x)))), -1i, _wgslsmith_f_op_f32(f32(-1f) * -837f));
    let var_1 = u_input.e;
    global0 = ~u_input.d.x;
    global0 = ~0u;
    let var_2 = Struct_3(1097f, _wgslsmith_div_u32(65252u, abs(24484u) << (_wgslsmith_clamp_u32(30847u, u_input.b.x ^ u_input.c, firstLeadingBit(63369u)) % 32u)));
    var var_3 = select(vec2<bool>(true, any(vec4<bool>(any(vec2<bool>(true, true)), true, select(true, true, true), true))), vec2<bool>(true, true), select(vec2<bool>(true, true), select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, true)), all(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false))));
    var var_4 = Struct_3(-1616f, var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(~_wgslsmith_mod_u32(u_input.b.x, var_4.b)), _wgslsmith_clamp_u32(29643u, _wgslsmith_mod_u32(_wgslsmith_add_u32(45045u, var_2.b), max(var_2.b, 0u)), _wgslsmith_add_u32(var_2.b, 4385u) & var_2.b), var_2.b));
}

