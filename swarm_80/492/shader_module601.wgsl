struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<i32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: i32;

var<private> global2: Struct_5;

var<private> global3: array<Struct_2, 18>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: vec3<f32>, arg_3: Struct_5) -> i32 {
    global0 = 1i;
    return ~10367i;
}

fn func_3() -> vec3<bool> {
    global3 = array<Struct_2, 18>();
    let var_0 = Struct_5(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~abs(~vec3<u32>(91841u, u_input.a, 12061u)), firstTrailingBit(select(select(vec3<u32>(24450u, global2.a.c.x, u_input.a), vec3<u32>(1u, 56074u, 0u), vec3<bool>(true, global2.a.b.b.x, global2.a.d.x)), ~vec3<u32>(0u, u_input.a, u_input.a), true))), 18u)]);
    var var_1 = _wgslsmith_f_op_f32(-var_0.a.b.c.x);
    var var_2 = vec3<u32>(countOneBits(~(~1u)), var_0.a.b.a.x, ~_wgslsmith_sub_u32(~global2.a.c.x, ~1u));
    var var_3 = global2.a.b.c.x;
    return vec3<bool>(!global2.a.b.b.x, true, any(var_0.a.b.b));
}

fn func_2() -> Struct_4 {
    var var_0 = -(~0i);
    let var_1 = global2.a.a;
    var var_2 = vec4<i32>(var_1.x, 1i | var_1.x, u_input.b, -u_input.b);
    global2 = Struct_5(global2.a);
    let var_3 = vec2<f32>(1260f, global2.a.b.c.x);
    return Struct_4(Struct_3(vec2<i32>(-1i) * -vec2<i32>(u_input.b, -31877i), vec3<bool>(!global2.a.d.x, all(vec3<bool>(global2.a.b.b.x, global2.a.b.b.x, global2.a.d.x)), true), Struct_1(vec2<u32>(firstLeadingBit(4294967295u), ~37598u), vec2<bool>(true, !global2.a.b.b.x), _wgslsmith_f_op_vec3_f32(select(global2.a.b.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.b.c.x, var_3.x, global2.a.b.c.x) + global2.a.b.c), func_3()))), Struct_1(global2.a.b.a, select(!global2.a.d, global2.a.d, !global2.a.b.b), vec3<f32>(_wgslsmith_f_op_f32(step(1606f, 1606f)), _wgslsmith_f_op_f32(-global2.a.b.c.x), _wgslsmith_f_op_f32(-global2.a.b.c.x))), func_3().x), Struct_3(_wgslsmith_div_vec2_i32(vec2<i32>(~(-2147483647i), -1i), vec2<i32>(u_input.b ^ var_2.x, var_1.x)), select(vec3<bool>(global2.a.d.x, 1126f < var_3.x, !global2.a.b.b.x), !(!vec3<bool>(true, global2.a.b.b.x, false)), !vec3<bool>(global2.a.d.x, global2.a.d.x, global2.a.d.x)), Struct_1(~(~vec2<u32>(u_input.a, 51995u)), global2.a.b.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, global2.a.b.c.x, -1721f)), _wgslsmith_f_op_vec3_f32(exp2(global2.a.b.c)), any(vec3<bool>(false, global2.a.d.x, false))))), global2.a.b, global2.a.b.b.x));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: bool, arg_3: vec4<bool>) -> vec3<bool> {
    global3 = array<Struct_2, 18>();
    let var_0 = (-_wgslsmith_mult_i32(arg_0.a.a.x, u_input.b) | (_wgslsmith_div_i32(_wgslsmith_add_i32(global2.a.a.x, 2147483647i), -u_input.b) << (min(~arg_1.x, arg_0.a.c.a.x) % 32u))) ^ min(-1i << ((select(arg_0.b.c.a.x, 4294967295u, false) << (44815u % 32u)) % 32u), 1i);
    let var_1 = max(abs(~arg_0.a.c.a), vec2<u32>(_wgslsmith_mod_u32(68675u, (global2.a.b.a.x ^ arg_1.x) >> (44554u % 32u)), arg_1.x));
    let var_2 = Struct_4(arg_0.a, arg_0.b);
    global2 = Struct_5(Struct_2(vec3<i32>(~min(31112i, 2147483647i), _wgslsmith_dot_vec4_i32(~vec4<i32>(global2.a.a.x, -16245i, u_input.b, arg_0.a.a.x), firstLeadingBit(vec4<i32>(10121i, 738i, u_input.b, arg_0.a.a.x))), ~var_2.b.a.x), func_2().a.c, abs(func_2().a.c.a), var_2.b.c.b));
    return var_2.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -_wgslsmith_add_i32(u_input.b, _wgslsmith_div_i32(func_1(global2.a.b.c, Struct_5(Struct_2(vec3<i32>(u_input.b, 1i, global2.a.a.x), global2.a.b, vec2<u32>(14872u, u_input.a), global2.a.d)), _wgslsmith_f_op_vec3_f32(abs(global2.a.b.c)), Struct_5(global3[_wgslsmith_index_u32(u_input.a, 18u)])), 1i));
    var var_0 = select(!(!(!vec4<bool>(false, global2.a.d.x, global2.a.b.b.x, false))), vec4<bool>(false || (2379i != (u_input.b ^ u_input.b)), true, all(func_4(func_2(), vec4<u32>(1u, u_input.a, 32365u, u_input.a) >> (vec4<u32>(global2.a.b.a.x, global2.a.b.a.x, 4013u, 1u) % vec4<u32>(32u)), global2.a.d.x, vec4<bool>(true, true, true, true))), !global2.a.b.b.x != func_2().b.c.b.x), select(vec4<bool>(!global2.a.b.b.x, any(func_4(Struct_4(Struct_3(global2.a.a.zx, vec3<bool>(global2.a.b.b.x, global2.a.d.x, false), global2.a.b, global2.a.b, false), Struct_3(global2.a.a.xz, vec3<bool>(false, global2.a.d.x, global2.a.d.x), Struct_1(global2.a.c, global2.a.b.b, global2.a.b.c), global2.a.b, false)), vec4<u32>(62153u, u_input.a, 56638u, u_input.a), global2.a.d.x, vec4<bool>(false, true, false, false))), true, !global2.a.b.b.x), select(vec4<bool>(true, true, true, true), select(vec4<bool>(global2.a.d.x, false, true, global2.a.b.b.x), !vec4<bool>(false, global2.a.b.b.x, false, true), global2.a.d.x), false), !vec4<bool>(true, false, all(vec4<bool>(global2.a.d.x, true, global2.a.d.x, global2.a.d.x)), any(vec3<bool>(global2.a.d.x, global2.a.d.x, true)))));
    let var_1 = u_input.a;
    global0 = 2147483647i;
    var var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(abs(abs(~vec4<u32>(0u, 29523u, 28613u, global2.a.c.x))), vec4<u32>(4294967295u, _wgslsmith_mult_u32(firstLeadingBit(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1, var_1, 1345u), vec4<u32>(var_1, global2.a.b.a.x, u_input.a, 40798u))), ~_wgslsmith_clamp_u32(4294967295u, 39669u, u_input.a), _wgslsmith_mod_u32(~var_1, u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.a.b.c.x))) - _wgslsmith_f_op_f32(f32(-1f) * -459f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)))), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(3657i << (var_1 % 32u), ~u_input.b), 0i), 0i, global2.a.a.x, -(~_wgslsmith_div_i32(u_input.b, u_input.b))), min(_wgslsmith_clamp_i32(0i, 66136i, -1i) ^ 81884i, global2.a.a.x) << (4294967295u % 32u), _wgslsmith_mult_vec2_i32(-_wgslsmith_div_vec2_i32(~vec2<i32>(2147483647i, 9634i), _wgslsmith_sub_vec2_i32(vec2<i32>(global2.a.a.x, 0i), vec2<i32>(u_input.b, 2147483647i))), -vec2<i32>(u_input.b, max(global2.a.a.x, -16014i))));
}

