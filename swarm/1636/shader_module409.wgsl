struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 30>;

var<private> global2: array<Struct_4, 28>;

var<private> global3: Struct_3 = Struct_3(true);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    global3 = Struct_3((global0.d << (~(0u ^ u_input.e.x) % 32u)) >= abs(firstLeadingBit(4294967295u)));
    global3 = Struct_3(true);
    let var_0 = !(!(!all(vec4<bool>(true, global0.b.x, false, true)))) & global3.a;
    let var_1 = global0.b;
    let var_2 = -853f;
    return global0.d;
}

fn func_2(arg_0: f32) -> Struct_1 {
    global1 = array<Struct_2, 30>();
    var var_0 = min(~vec4<u32>(global0.d, _wgslsmith_mod_u32(_wgslsmith_div_u32(global0.d, u_input.a.x), ~u_input.e.x), ~(~global0.d), ~(~global0.d)), ~max(vec4<u32>(0u, u_input.d, u_input.a.x, 1u), vec4<u32>(4294967295u, global0.d, u_input.a.x, 75061u) << (vec4<u32>(47008u, 4294967295u, 1u, u_input.d) % vec4<u32>(32u))) | vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.c, u_input.e) >> (1u % 32u), func_3(vec3<f32>(981f, global0.a, global0.a)), select(global0.d, min(u_input.a.x, global0.d), any(vec2<bool>(global0.b.x, false))), select(0u >> (0u % 32u), _wgslsmith_mod_u32(u_input.d, global0.d), global0.c | global0.c)));
    var_0 = ~(vec4<u32>(firstTrailingBit(~43608u), 57289u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(66230u, u_input.e.x, global0.d, 13779u), vec4<u32>(global0.d, global0.d, 24428u, 18339u)), vec4<u32>(0u, var_0.x, var_0.x, 0u)), ~func_3(vec3<f32>(-1000f, -892f, global0.a))) ^ ~(~(~vec4<u32>(var_0.x, 967u, 59212u, 0u))));
    let var_1 = select(!vec3<bool>(global3.a, true, global0.b.x), !select(!global0.b, global0.b, vec3<bool>(true, global0.d == 19274u, true)), true);
    let var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + -385f), global0.a, -833f, 183f)));
    return Struct_1(var_2.a.x, vec3<bool>(!global0.b.x, _wgslsmith_dot_vec3_u32(~u_input.a, _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 1u, var_0.x), var_0.ywz)) > (1u << (global0.d % 32u)), global0.b.x), any(!(!vec3<bool>(false, var_1.x, false))), ~1u);
}

fn func_1() -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, global0.a, global0.a, 352f)))))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.a), -1332f)), vec3<bool>(false, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, global0.a) + _wgslsmith_f_op_f32(round(1665f))) >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.a - var_0.x))), true), !(!global3.a), 4294967295u);
    var var_2 = !global0.b;
    var var_3 = var_0.yyx;
    let var_4 = func_2(var_3.x);
    return Struct_5(~_wgslsmith_mult_vec3_i32(-vec3<i32>(2147483647i, u_input.b, u_input.b), vec3<i32>(_wgslsmith_sub_i32(u_input.b, u_input.b), min(-56328i, u_input.b), u_input.b)), vec4<f32>(-2357f, global0.a, 255f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), global0.b.x);
}

fn func_4(arg_0: Struct_5, arg_1: f32, arg_2: u32) -> vec4<bool> {
    let var_0 = arg_0;
    var var_1 = u_input.a.x;
    global2 = array<Struct_4, 28>();
    global2 = array<Struct_4, 28>();
    var_1 = abs(_wgslsmith_dot_vec2_u32(~(_wgslsmith_mult_vec2_u32(u_input.c, u_input.c) | reverseBits(vec2<u32>(1745u, 4294967295u))), u_input.e ^ abs(max(u_input.c, u_input.e))));
    return !select(vec4<bool>(!all(vec2<bool>(false, arg_0.c)), all(vec3<bool>(var_0.c, arg_0.c, false)) || true, !(!arg_0.c), arg_0.c), vec4<bool>(all(func_2(931f).b.xx), any(vec3<bool>(arg_0.c, false, true)), any(vec4<bool>(true, true, false, var_0.c)), false), ~u_input.a.x < ~(~0u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(-1688f, vec3<bool>(global0.b.x, true, any(vec4<bool>(false, global3.a, global3.a, global0.b.x))), false, 1u);
    var var_0 = global3.a;
    let var_1 = 4294967295u;
    global3 = Struct_3(global3.a);
    var var_2 = select(select(select(func_4(func_1(), _wgslsmith_f_op_f32(global0.a * global0.a), 1u >> (u_input.c.x % 32u)), select(func_4(Struct_5(vec3<i32>(0i, -1i, u_input.b), vec4<f32>(541f, global0.a, -197f, 1659f), global0.c), global0.a, u_input.c.x), vec4<bool>(false, true, true, global3.a), vec4<bool>(global3.a, false, global3.a, global0.c)), any(!vec2<bool>(global3.a, true))), vec4<bool>(select(global0.c, all(global0.b.yx), global3.a || global0.c), global3.a, !(global0.b.x | global3.a), global3.a), all(global0.b)), vec4<bool>(true, all(func_2(_wgslsmith_f_op_f32(f32(-1f) * -767f)).b), !all(!vec4<bool>(global3.a, false, global0.c, true)), true), select(false, true, global0.b.x));
    let var_3 = _wgslsmith_f_op_f32(-global0.a);
    var_0 = global0.b.x;
    var var_4 = !select(!vec4<bool>(all(var_2.yxw), false, true, any(vec4<bool>(var_2.x, false, global3.a, false))), !(!select(vec4<bool>(var_2.x, var_2.x, global0.b.x, true), vec4<bool>(global3.a, false, true, var_2.x), true)), vec4<bool>(all(!vec3<bool>(false, var_2.x, global0.b.x)), any(!vec2<bool>(global0.b.x, var_2.x)), false, false));
    let var_5 = global1[_wgslsmith_index_u32(select(1u, ~26759u, global0.c || !all(func_4(Struct_5(vec3<i32>(u_input.b, u_input.b, -79747i), vec4<f32>(617f, var_3, 487f, 135f), var_2.x), -244f, var_1).yxx)), 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(max(vec3<i32>(0i, u_input.b >> (var_5.a.d % 32u), u_input.b), vec3<i32>(u_input.b, u_input.b, 2147483647i) << (firstTrailingBit(u_input.a) % vec3<u32>(32u))) & max(-max(vec3<i32>(-2147483647i, u_input.b, -24034i), vec3<i32>(u_input.b, u_input.b, u_input.b)), -vec3<i32>(u_input.b, u_input.b, 2147483647i)), _wgslsmith_dot_vec4_i32(~vec4<i32>(-6680i, ~u_input.b, u_input.b, 3211i), select(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, 32407i), vec4<i32>(-16307i, u_input.b, 0i, -2147483647i)), vec4<i32>(-56852i, u_input.b >> (u_input.c.x % 32u), ~u_input.b, u_input.b), !global3.a)), vec3<i32>(reverseBits(_wgslsmith_sub_i32(u_input.b, u_input.b)), _wgslsmith_dot_vec3_i32(-max(vec3<i32>(-16907i, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b)), vec3<i32>(abs(-21397i), ~u_input.b, u_input.b)), u_input.b), _wgslsmith_f_op_f32(ceil(var_3)));
}

