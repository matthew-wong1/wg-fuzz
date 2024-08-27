struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19> = array<u32, 19>(0u, 35351u, 48821u, 13055u, 1u, 16211u, 18257u, 4294967295u, 47204u, 1u, 19682u, 4294967295u, 39841u, 0u, 44066u, 87758u, 1u, 0u, 4294967295u);

var<private> global1: array<Struct_2, 8>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2() -> i32 {
    let var_0 = u_input.a.yxy;
    global0 = array<u32, 19>();
    let var_1 = Struct_5(Struct_3(Struct_1(vec4<u32>(u_input.c, var_0.x, reverseBits(10599u), 62916u >> (1u % 32u)), !select(false, true, true)), Struct_1(u_input.a, any(vec3<bool>(false, false, true))), max((u_input.d.yy << (vec2<u32>(1u, u_input.a.x) % vec2<u32>(32u))) & -u_input.b.yz, vec2<i32>(u_input.b.x, ~35050i)), 2147483647i, Struct_1(~firstLeadingBit(vec4<u32>(0u, u_input.a.x, var_0.x, 79389u)), true)));
    var var_2 = Struct_4(abs(select(vec2<i32>(-1i << (global0[_wgslsmith_index_u32(1u, 19u)] % 32u), 40927i), abs(u_input.d.zx), !(var_0.x < var_1.a.a.a.x))));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -412f);
    return u_input.d.x;
}

fn func_3() -> vec4<u32> {
    var var_0 = true;
    return u_input.a;
}

fn func_1(arg_0: vec3<u32>) -> f32 {
    var var_0 = vec4<i32>(_wgslsmith_dot_vec2_i32(abs(u_input.b.xy), vec2<i32>(~u_input.b.x, -1i)), func_2(), u_input.d.x, ~countOneBits(-(u_input.d.x << (arg_0.x % 32u))));
    let var_1 = Struct_5(Struct_3(Struct_1(countOneBits(u_input.a), true), Struct_1(_wgslsmith_mult_vec4_u32(func_3(), vec4<u32>(arg_0.x, arg_0.x, u_input.a.x, 13250u)), false), u_input.d.zx, -17989i, Struct_1(~vec4<u32>(u_input.a.x, arg_0.x, u_input.c, 4294967295u), true)));
    var var_2 = var_0.x;
    var var_3 = Struct_1(var_1.a.b.a, (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -253f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, -933f)))) | all(select(select(vec2<bool>(false, true), vec2<bool>(true, var_1.a.e.b), false), vec2<bool>(var_1.a.a.b, var_1.a.b.b), var_1.a.b.b && var_1.a.e.b)));
    var_3 = var_1.a.a;
    return -1125f;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    var var_0 = true;
    var var_1 = !select(select(select(vec2<bool>(arg_1.b, false), select(vec2<bool>(arg_1.b, arg_1.b), vec2<bool>(false, arg_1.b), true), true), vec2<bool>(true, any(vec2<bool>(arg_1.b, true))), select(vec2<bool>(false, arg_1.b), !vec2<bool>(arg_1.b, arg_1.b), !vec2<bool>(arg_1.b, arg_1.b))), select(!vec2<bool>(arg_1.b, false), vec2<bool>(true, true), select(!vec2<bool>(arg_1.b, true), vec2<bool>(false, arg_1.b), select(vec2<bool>(false, true), vec2<bool>(arg_1.b, false), vec2<bool>(arg_1.b, false)))), select(false, true, true));
    let var_2 = _wgslsmith_dot_vec4_u32((vec4<u32>(countOneBits(global0[_wgslsmith_index_u32(46339u, 19u)]), 0u, 1u | arg_1.a.x, 4294967295u) & (~vec4<u32>(4294967295u, arg_1.a.x, 4294967295u, 0u) << (_wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(global0[_wgslsmith_index_u32(u_input.c, 19u)], arg_1.a.x, u_input.c, arg_1.a.x)) % vec4<u32>(32u)))) & func_3(), ~select((u_input.a << (arg_1.a % vec4<u32>(32u))) << (vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, arg_1.a.x) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 31113u, 76718u, global0[_wgslsmith_index_u32(4294967295u, 19u)]), u_input.a & vec4<u32>(u_input.c, 137151u, global0[_wgslsmith_index_u32(33376u, 19u)], 118608u)), !vec4<bool>(arg_1.b, true, true, var_1.x)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(~firstLeadingBit(u_input.c), 19u)], 4294967295u), u_input.c) << (~global0[_wgslsmith_index_u32(_wgslsmith_add_u32(countOneBits(_wgslsmith_add_u32(78925u, 77764u)), ~54583u), 19u)] % 32u);
    global0 = array<u32, 19>();
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1644f, -340f) + vec2<f32>(_wgslsmith_f_op_f32(-1113f + -1119f), -760f)) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(717f, 1468f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1942f, -1350f) * vec2<f32>(251f, 1236f))))))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1151f, 695f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(111f, -657f))))))));
    var var_2 = func_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -491f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.x)) * _wgslsmith_f_op_f32(round(-544f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(vec3<u32>(0u, 17528u, 0u))))), _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_clamp_vec2_i32(u_input.b.wx, u_input.d.zz, u_input.b.yw)), Struct_1(~_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(117391u, u_input.a.x, 0u, 0u), vec4<u32>(58337u, u_input.a.x, global0[_wgslsmith_index_u32(u_input.c, 19u)], 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(2794u, 19u)], var_0, u_input.c, var_0), u_input.a)), (var_0 > _wgslsmith_dot_vec3_u32(u_input.a.wxx, vec3<u32>(4749u, 0u, 1u))) && false));
    var var_3 = _wgslsmith_add_vec2_u32(u_input.a.wx, _wgslsmith_mod_vec2_u32(u_input.a.xw, u_input.a.xz << (u_input.a.wy % vec2<u32>(32u))));
    var_3 = firstTrailingBit(vec2<u32>(select(firstTrailingBit(~15218u), _wgslsmith_add_u32(~var_3.x, ~u_input.a.x), true), countOneBits(_wgslsmith_mult_u32(0u, global0[_wgslsmith_index_u32(var_3.x, 19u)] << (12197u % 32u)))));
    var var_4 = 15536u;
    let var_5 = var_1.x;
    var var_6 = func_4(Struct_2(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(464f * _wgslsmith_f_op_f32(var_2.b.x - var_2.b.x))), vec3<f32>(_wgslsmith_div_f32(var_2.b.x, _wgslsmith_f_op_f32(max(var_1.x, var_1.x))), _wgslsmith_f_op_f32(round(var_2.b.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-808f - 1488f)))), var_2.c), Struct_1(vec4<u32>(u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 4294967295u, u_input.c, var_3.x), u_input.a), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a.x, 1u), var_0 << (27003u % 32u)), 19u)], global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(var_0, 108143u, 4294967295u, 41259u)), 19u)]), (true & all(vec3<bool>(true, false, true))) || true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 1000f) - _wgslsmith_f_op_f32(step(var_1.x, var_6.b.x)))))), -_wgslsmith_sub_i32(var_2.c.x, 17312i) >> (countOneBits(~21181u) % 32u), 336f);
}

