struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
    c: u32,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(460f, 0u));

var<private> global2: array<vec4<i32>, 6> = array<vec4<i32>, 6>(vec4<i32>(0i, 54023i, 40099i, i32(-2147483648)), vec4<i32>(49894i, 2147483647i, 1i, 0i), vec4<i32>(-1i, 4123i, -5206i, 0i), vec4<i32>(23740i, -19507i, -16632i, 53974i), vec4<i32>(1i, 0i, -1i, -23788i), vec4<i32>(-9407i, -8483i, -25784i, 0i));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-677f, -963f, 729f, 420f)))) + vec4<f32>(_wgslsmith_f_op_f32(-240f - 1000f), _wgslsmith_f_op_f32(-692f - 693f), -1580f, -594f))));
    var var_1 = false;
    let var_2 = Struct_3(Struct_1(vec2<bool>(any(vec3<bool>(false, true, false)) || true, false), ~reverseBits(_wgslsmith_div_i32(72806i, 39832i))), Struct_1(vec2<bool>(!select(true, false, false), true), u_input.c));
    global0 = (vec2<u32>(u_input.b, 45633u) | ~(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(1u, u_input.b)))) ^ _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(~max(vec2<u32>(u_input.b, 42898u), vec2<u32>(0u, global0.x)), min(reverseBits(vec2<u32>(4294967295u, 0u)), ~vec2<u32>(u_input.b, u_input.b))), ~vec2<u32>(_wgslsmith_div_u32(u_input.b, u_input.b), abs(global0.x)));
    var_1 = var_2.a.a.x;
    return _wgslsmith_sub_vec2_u32(~vec2<u32>(1u, 1u), _wgslsmith_div_vec2_u32(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 18274u), vec2<u32>(u_input.b, 3499u))), vec2<u32>(_wgslsmith_add_u32(global0.x, global0.x), ~0u)) >> (reverseBits(vec2<u32>(64098u, reverseBits(global0.x))) % vec2<u32>(32u)));
}

fn func_2() -> u32 {
    global0 = func_3();
    global1 = array<Struct_2, 1>();
    global1 = array<Struct_2, 1>();
    let var_0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -479f), _wgslsmith_f_op_f32(f32(-1f) * -709f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1647f, -712f))))), _wgslsmith_f_op_f32(-1f)), ~func_3().x);
    global1 = array<Struct_2, 1>();
    return countOneBits(~1u);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_4, arg_2: bool) -> vec3<bool> {
    var var_0 = arg_0;
    let var_1 = var_0.b;
    global0 = _wgslsmith_add_vec2_u32(~(select(firstLeadingBit(vec2<u32>(0u, 18510u)), ~vec2<u32>(3722u, u_input.b), arg_1.a.a) ^ firstTrailingBit(select(vec2<u32>(u_input.b, global0.x), vec2<u32>(global0.x, 6535u), vec2<bool>(false, arg_0.a.a.x)))), max(vec2<u32>(u_input.b, _wgslsmith_clamp_u32(func_2(), _wgslsmith_mult_u32(5290u, u_input.b), u_input.b)), vec2<u32>(countOneBits(~u_input.b), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(global0.x, u_input.b)), vec2<u32>(u_input.b, u_input.b)))));
    let var_2 = Struct_3(arg_0.a, var_0.a);
    var var_3 = _wgslsmith_div_i32(min(abs(firstTrailingBit(-1i)), u_input.a.x), -select(_wgslsmith_mod_i32(7520i, 1i), arg_1.a.b, !all(vec3<bool>(var_2.b.a.x, var_2.a.a.x, var_2.a.a.x))));
    return select(vec3<bool>(var_0.a.a.x, true, !(_wgslsmith_add_u32(0u, u_input.b) >= 13702u)), vec3<bool>(false, var_0.a.a.x, true), !arg_0.a.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(false, -_wgslsmith_div_i32(u_input.c, -2147483647i) > u_input.a.x, false, !all(select(func_1(Struct_4(Struct_1(vec2<bool>(true, true), u_input.a.x), u_input.c, 1012f), Struct_4(Struct_1(vec2<bool>(true, false), u_input.c), u_input.a.x, 219f), true), vec3<bool>(false, false, true), true)));
    let var_1 = vec2<f32>(-313f, -426f);
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x ^ 1u, func_2(), u_input.b << (global0.x % 32u)), ~select(vec3<u32>(4294967295u, 0u, global0.x), vec3<u32>(1u, 1u, global0.x), true)), 4294967295u >> (~(u_input.b ^ 985u) % 32u)), 1u, 22053u), 1u)];
    global1 = array<Struct_2, 1>();
    global2 = array<vec4<i32>, 6>();
    let var_3 = any(!func_1(Struct_4(Struct_1(vec2<bool>(var_0.x, true), 1i), u_input.c << (55872u % 32u), _wgslsmith_f_op_f32(select(var_1.x, var_1.x, var_0.x))), Struct_4(Struct_1(vec2<bool>(false, var_0.x), -1i), _wgslsmith_mod_i32(u_input.c, 1i), -1394f), var_0.x).xx);
    let var_4 = var_2.b > var_2.b;
    var var_5 = Struct_5(Struct_3(Struct_1(func_1(Struct_4(Struct_1(var_0.xz, 8705i), 15889i, 442f), Struct_4(Struct_1(vec2<bool>(var_4, true), u_input.c), u_input.c, -177f), func_1(Struct_4(Struct_1(vec2<bool>(false, true), -1i), u_input.a.x, 256f), Struct_4(Struct_1(var_0.yw, -1i), u_input.c, var_1.x), var_3).x).zz, ~u_input.a.x << (19121u % 32u)), Struct_1(!var_0.yy, u_input.c)), true, func_2(), vec2<u32>(37129u, ~(~global0.x)), Struct_1(vec2<bool>(any(var_0.yy), var_3), max(_wgslsmith_add_i32(u_input.c, u_input.a.x), 1i)));
    global2 = array<vec4<i32>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a.b.b, var_1, ~(~global0.x) << (1u % 32u), -781f);
}

