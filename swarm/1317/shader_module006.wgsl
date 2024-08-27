struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: bool,
    d: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 4>;

var<private> global1: vec3<u32> = vec3<u32>(0u, 56612u, 0u);

var<private> global2: Struct_2 = Struct_2(-1202f, vec4<bool>(true, false, true, false), true, false);

var<private> global3: vec4<u32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>) -> vec2<u32> {
    global3 = ~(vec4<u32>(u_input.e.x, ~_wgslsmith_add_u32(global1.x, global1.x), firstLeadingBit(global3.x), global1.x) >> (countOneBits(vec4<u32>(u_input.e.x, global3.x, ~u_input.d.x, 1u & global3.x)) % vec4<u32>(32u)));
    var var_0 = _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(max(vec4<u32>(global1.x, global3.x, ~global1.x, u_input.a), vec4<u32>(_wgslsmith_sub_u32(4294967295u, global1.x), u_input.d.x, global3.x, abs(global1.x))), _wgslsmith_mult_vec4_u32(vec4<u32>(~1u, global1.x << (54510u % 32u), firstLeadingBit(4294967295u), _wgslsmith_mult_u32(17133u, global3.x)), ~vec4<u32>(global3.x, global1.x, global3.x, u_input.d.x) >> (vec4<u32>(32222u, global3.x, 1u, global1.x) % vec4<u32>(32u)))), vec4<u32>(~(~(~global3.x)), global1.x, _wgslsmith_add_u32(~global3.x, _wgslsmith_sub_u32(32234u, global1.x)) >> (u_input.d.x % 32u), 9236u));
    global0 = array<vec2<i32>, 4>();
    let var_1 = -1018f;
    global0 = array<vec2<i32>, 4>();
    return vec2<u32>(firstTrailingBit(0u), ~reverseBits(~1u));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_3, arg_3: i32) -> vec4<bool> {
    let var_0 = u_input.c.xx;
    var var_1 = vec3<f32>(arg_2.b.x, -396f, -299f);
    var_1 = vec3<f32>(-1023f, 432f, var_1.x);
    var_1 = arg_2.b;
    return vec4<bool>(all(!global2.b), global2.c, any(select(select(select(vec3<bool>(true, arg_1.d, arg_0), global2.b.xyw, true), vec3<bool>(global2.d, arg_0, arg_1.d), all(vec3<bool>(global2.c, false, false))), global2.b.zxz, vec3<bool>(any(global2.b), !global2.c, !arg_2.d.x))), true);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: u32) -> f32 {
    let var_0 = _wgslsmith_div_vec3_u32(global3.wyy, vec3<u32>(~(1u & arg_2), ~global3.x, u_input.d.x));
    let var_1 = !vec3<bool>(!(arg_1.x != 6072u) & !all(vec3<bool>(global2.b.x, false, true)), global2.c, global2.c || global2.d);
    let var_2 = Struct_2(-1009f, select(func_4(true, Struct_1(func_3(Struct_2(1214f, global2.b, true, false), global2.b.yyw), abs(u_input.c.x), 27394u, true, global1.x), Struct_3(Struct_1(vec2<u32>(global3.x, var_0.x), 1i, 1628u, false, 84349u), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.x, 911f, -1728f))), 40005i > u_input.b.x, select(vec3<bool>(var_1.x, false, global2.d), var_1, var_1)), -2147483647i), vec4<bool>(!all(vec2<bool>(true, false)), true, global2.c, any(vec3<bool>(false, false, true)) || true), func_4(global2.b.x, Struct_1(global1.xy >> (vec2<u32>(arg_1.x, arg_2) % vec2<u32>(32u)), reverseBits(u_input.c.x), min(arg_1.x, 4294967295u), global2.d, var_0.x), Struct_3(Struct_1(u_input.d, 9422i, 4294967295u, true, global1.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, arg_0.x)), true, select(vec3<bool>(global2.b.x, var_1.x, var_1.x), vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(false, true, true))), u_input.c.x)), var_1.x, var_1.x);
    global0 = array<vec2<i32>, 4>();
    var var_3 = var_2;
    return var_3.a;
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: i32) -> vec4<u32> {
    let var_0 = select(arg_0, arg_0, !(!(_wgslsmith_f_op_f32(ceil(330f)) >= global2.a)));
    var var_1 = _wgslsmith_div_i32(arg_1.x, arg_2);
    let var_2 = reverseBits(vec4<i32>(abs(arg_2), _wgslsmith_add_i32(~12426i << (_wgslsmith_dot_vec2_u32(global3.yw, u_input.e.zx) % 32u), arg_1.x), 2147483647i, _wgslsmith_div_i32(_wgslsmith_add_i32(arg_1.x << (1u % 32u), arg_1.x), arg_2)));
    let var_3 = _wgslsmith_div_f32(-1082f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a))), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2.a, global2.a), vec2<f32>(global2.a, global2.a))))), _wgslsmith_div_vec2_u32(vec2<u32>(1u, global3.x) | global3.wz, vec2<u32>(1u, global1.x)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, 0u, global1.x), global3.wyx))))));
    return vec4<u32>(u_input.d.x, ~_wgslsmith_clamp_u32(reverseBits(~4294967295u), ~(68255u ^ global3.x), global3.x), ~4294967295u, global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global3.yyw;
    global3 = firstLeadingBit(vec4<u32>(~50699u, u_input.a >> (1u % 32u), ~4294967295u, ~(~22920u))) >> (func_1(!(global2.d & true), u_input.c, 2147483647i) % vec4<u32>(32u));
    global2 = Struct_2(global2.a, select(vec4<bool>(false, select(global2.b.x, global2.c, global3.x == 576u), u_input.e.x > global3.x, !(global1.x != 25456u)), global2.b, global2.b), _wgslsmith_f_op_f32(-896f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.a)))) == -1000f, global2.c);
    var var_0 = _wgslsmith_dot_vec2_u32(~global3.ww, min(select(global3.ww, vec2<u32>(u_input.a, global3.x), global2.b.x) << (firstLeadingBit(u_input.e.yx) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_sub_u32(u_input.d.x, 0u), u_input.d.x)) & vec2<u32>(1u, firstLeadingBit(firstLeadingBit(1u))));
    global1 = vec3<u32>(~_wgslsmith_div_u32(~30988u, 78492u) & global1.x, min(_wgslsmith_div_u32(func_1(true & global2.b.x, u_input.c >> (vec4<u32>(global3.x, global1.x, 6817u, 4294967295u) % vec4<u32>(32u)), 1i).x, _wgslsmith_mod_u32(global3.x, global1.x) | u_input.a), global3.x), 4294967295u << (firstTrailingBit(_wgslsmith_dot_vec3_u32(func_1(global2.d, vec4<i32>(u_input.c.x, 46814i, u_input.c.x, u_input.b.x), -1i).zzx, vec3<u32>(0u, global3.x, 1u))) % 32u));
    var var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(~firstLeadingBit(~u_input.c.x), 1i), _wgslsmith_div_vec2_i32(vec2<i32>(-u_input.c.x & ~u_input.c.x, 8479i), vec2<i32>(reverseBits(u_input.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(34762i, u_input.c.x, u_input.c.x), ~u_input.c.wyy))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) + _wgslsmith_f_op_f32(2081f + global2.a)) * global2.a))), global2.b, !(reverseBits(u_input.a) >= u_input.a), true);
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(44296i, _wgslsmith_mult_i32(min(1i, var_1.x), countOneBits(u_input.c.x))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(1129f + var_2.a))))));
}

