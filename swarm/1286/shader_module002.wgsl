struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 17>;

var<private> global1: array<i32, 14> = array<i32, 14>(1686i, 20015i, 42528i, 2147483647i, 1i, -1i, -40590i, -9498i, 0i, 2147483647i, -399i, 0i, -1i, 7192i);

var<private> global2: Struct_3 = Struct_3(1000f, Struct_1(true), Struct_1(true), Struct_2(vec3<u32>(11111u, 44530u, 5535u), Struct_1(true)), vec2<i32>(-1i, 0i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec2<f32> {
    global0 = array<vec4<bool>, 17>();
    var var_0 = global2.d.a.x;
    global2 = Struct_3(-1876f, Struct_1(global2.b.a), global2.c, global2.d, global2.e);
    var var_1 = -691f;
    var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2203f, _wgslsmith_f_op_f32(abs(global2.a)))), global2.a)));
    return vec2<f32>(374f, global2.a);
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3()));
    return global2.d.a.x | _wgslsmith_clamp_u32(_wgslsmith_mod_u32(~max(33559u, u_input.a.x), _wgslsmith_clamp_u32(~6814u, u_input.b, min(u_input.a.x, global2.d.a.x))), _wgslsmith_clamp_u32(~6553u, global2.d.a.x, select(1u, ~60753u, true)), u_input.a.x);
}

fn func_1() -> Struct_2 {
    let var_0 = 17857i << (~func_2() % 32u);
    var var_1 = all(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(~global2.d.a.x, ~_wgslsmith_mod_u32(global2.d.a.x, 47767u)), 17u)]);
    let var_2 = Struct_3(global2.a, global2.c, global2.c, global2.d, global2.e);
    var var_3 = !select(!select(vec3<bool>(global2.c.a, global2.d.b.a, true), vec3<bool>(global2.c.a, false, true), select(vec3<bool>(global2.d.b.a, true, var_2.d.b.a), vec3<bool>(false, global2.c.a, true), vec3<bool>(global2.c.a, false, false))), select(!select(vec3<bool>(var_2.d.b.a, global2.b.a, var_2.b.a), vec3<bool>(false, global2.d.b.a, global2.b.a), vec3<bool>(global2.b.a, var_2.b.a, true)), vec3<bool>(false, global2.d.a.x < var_2.d.a.x, var_2.d.b.a), max(0i, -1i) > global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, global2.d.a.x), 14u)]), select(!vec3<bool>(false, false, var_2.c.a), !select(vec3<bool>(true, var_2.c.a, true), vec3<bool>(true, false, global2.c.a), vec3<bool>(var_2.c.a, global2.b.a, global2.d.b.a)), true));
    var var_4 = -20383i;
    return Struct_2(_wgslsmith_clamp_vec3_u32(vec3<u32>(func_2(), 1u, 46738u), var_2.d.a | countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(global2.d.a.x, var_2.d.a.x, 1u), var_2.d.a)), vec3<u32>(u_input.b, global2.d.a.x, ~11399u)), Struct_1(global2.d.b.a));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> u32 {
    let var_0 = vec2<f32>(-1006f, _wgslsmith_f_op_f32(exp2(global2.a)));
    let var_1 = global2.e | vec2<i32>(max(global2.e.x, countOneBits(_wgslsmith_add_i32(-1i, global1[_wgslsmith_index_u32(u_input.a.x, 14u)]))), _wgslsmith_div_i32(arg_0.e.x, ~(16490i ^ arg_0.e.x)));
    global0 = array<vec4<bool>, 17>();
    var var_2 = 1u ^ _wgslsmith_sub_u32(~(global2.d.a.x << (0u % 32u)) & reverseBits(0u >> (u_input.b % 32u)), 4294967295u);
    global0 = array<vec4<bool>, 17>();
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 17>();
    let var_0 = !vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1166f)) * _wgslsmith_f_op_f32(-446f + global2.a)) >= 1641f, false);
    var var_1 = global2.a;
    var var_2 = vec4<u32>(24671u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(abs(~global2.d.a.yx), u_input.a), 0u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, countOneBits(global2.d.a.x), 0u), select(~vec3<u32>(0u, 10103u, 23626u), vec3<u32>(4294967295u, global2.d.a.x, u_input.b), !vec3<bool>(global2.d.b.a, false, global2.c.a))), u_input.b);
    var_1 = _wgslsmith_f_op_f32(-global2.a);
    global0 = array<vec4<bool>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a, _wgslsmith_div_f32(global2.a, 274f), _wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(max(733f, -900f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, global2.a, 163f, global2.a)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.a, -1468f, global2.a, 1431f), vec4<f32>(global2.a, 1000f, global2.a, -1304f), vec4<bool>(false, var_0.x, true, global2.c.a))))))), countOneBits(-40533i), vec3<u32>(func_4(Struct_3(_wgslsmith_f_op_f32(max(1083f, global2.a)), global2.c, Struct_1(false), func_1(), firstTrailingBit(global2.e)), Struct_1(true)), 1u, ~(reverseBits(var_2.x) << ((u_input.a.x | 4294967295u) % 32u))), (-vec4<i32>(26642i, 54654i, global1[_wgslsmith_index_u32(u_input.a.x, 14u)], global1[_wgslsmith_index_u32(1u, 14u)]) << (_wgslsmith_div_vec4_u32(~vec4<u32>(98806u, var_2.x, 55925u, 19701u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 4294967295u, global2.d.a.x, u_input.a.x), vec4<u32>(var_2.x, u_input.b, var_2.x, 4294967295u))) % vec4<u32>(32u))) & ~select(~vec4<i32>(global1[_wgslsmith_index_u32(1u, 14u)], global2.e.x, global1[_wgslsmith_index_u32(28599u, 14u)], -1i), -vec4<i32>(global2.e.x, 16880i, 0i, -1i), true), reverseBits(abs(-abs(vec3<i32>(global2.e.x, global2.e.x, 1i)))));
}

