struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

var<private> global1: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = Struct_4(Struct_3(all(!(!vec4<bool>(global1.a, global1.a, true, global1.a))), vec4<u32>(~_wgslsmith_div_u32(arg_0.a, u_input.a), arg_0.a, min(u_input.a, reverseBits(u_input.a)), ~(~0u)), vec3<f32>(_wgslsmith_div_f32(-1031f, -482f), -528f, -1294f)), global1.b | vec3<i32>(1i << (arg_0.a % 32u), select(-1i, -1i, true || global1.a), _wgslsmith_dot_vec2_i32(~vec2<i32>(global1.d.x, global1.d.x), global1.d)), Struct_3(true, vec4<u32>(arg_0.a, u_input.a << (~arg_0.a % 32u), reverseBits(_wgslsmith_mult_u32(u_input.a, 33524u)), ~52678u), vec3<f32>(_wgslsmith_f_op_f32(372f + 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -153f)), -515f)));
    var_0 = Struct_4(Struct_3(any(vec4<bool>(false, true, true, true)), var_0.a.b, _wgslsmith_f_op_vec3_f32(floor(var_0.c.c))), select(~abs(~vec3<i32>(-21511i, global1.d.x, var_0.b.x)), ~_wgslsmith_mult_vec3_i32(-var_0.b, select(var_0.b, vec3<i32>(-1i, -1i, 0i), vec3<bool>(false, var_0.c.a, false))), select(vec3<bool>(all(vec4<bool>(false, var_0.c.a, true, false)), global1.a, any(vec2<bool>(global1.a, global1.a))), select(vec3<bool>(global1.a, var_0.a.a, global1.a), !vec3<bool>(var_0.a.a, var_0.a.a, var_0.c.a), select(false, global1.a, var_0.c.a)), true)), var_0.a);
    let var_1 = !(global1.c.x > _wgslsmith_f_op_f32(trunc(global1.c.x)));
    var var_2 = Struct_1(!(!global1.a), vec3<i32>(_wgslsmith_mod_i32(firstTrailingBit(57395i), 1i), -791i, reverseBits(-15415i)) >> (~(_wgslsmith_add_vec3_u32(var_0.a.b.yww, var_0.c.b.wzy) >> (~var_0.c.b.zwx % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-var_0.a.c), _wgslsmith_add_vec2_i32(vec2<i32>(-(var_0.b.x | global1.d.x), -35987i), vec2<i32>(-1i) * -(vec2<i32>(2147483647i, -1i) >> (var_0.a.b.xz % vec2<u32>(32u)))));
    let var_3 = 1u;
    return -_wgslsmith_add_i32(-8156i, min(var_0.b.x, -1i));
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = func_3(Struct_2(_wgslsmith_add_u32(u_input.a, abs(u_input.a))));
    global0 = array<Struct_1, 20>();
    var var_1 = ~u_input.a;
    var var_2 = global1.b.x < ~global1.b.x;
    var var_3 = Struct_4(Struct_3(any(arg_1), ~(~vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a) ^ max(vec4<u32>(0u, u_input.a, 0u, 9373u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), arg_2.c), -_wgslsmith_sub_vec3_i32(arg_2.b, global1.b), Struct_3(global1.a | ((1i >= global1.b.x) || true), ~(~abs(vec4<u32>(u_input.a, 786u, u_input.a, u_input.a))), _wgslsmith_f_op_vec3_f32(-arg_2.c)));
    return global1.c;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<u32>) -> vec3<bool> {
    let var_0 = -1i;
    var var_1 = !vec4<bool>(global1.a, false, global1.a, var_0 == -countOneBits(global1.d.x));
    let var_2 = vec4<i32>(arg_0.x, -_wgslsmith_add_i32(reverseBits(-2147483647i), global1.b.x), arg_0.x, -2147483647i);
    global1 = Struct_1(true, ~_wgslsmith_add_vec3_i32(firstTrailingBit(-vec3<i32>(arg_0.x, 6351i, var_2.x)), vec3<i32>(var_0, arg_0.x, global1.b.x)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global1.c)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(287f, select(vec3<bool>(false, global1.a, global1.a), var_1.www, false), Struct_1(global1.a, vec3<i32>(global1.b.x, arg_0.x, arg_0.x), vec3<f32>(global1.c.x, 293f, -778f), vec2<i32>(0i, 3920i)))), global1.c))), abs(global1.d));
    var var_3 = arg_0;
    return !(!var_1.yzw);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_4) -> Struct_4 {
    global0 = array<Struct_1, 20>();
    var var_0 = global1.d;
    let var_1 = select(!select(select(!vec4<bool>(global1.a, global1.a, arg_1.a.a, global1.a), !vec4<bool>(false, true, arg_1.c.a, true), select(vec4<bool>(global1.a, false, true, global1.a), vec4<bool>(true, false, global1.a, global1.a), true)), select(!vec4<bool>(true, global1.a, global1.a, global1.a), !vec4<bool>(arg_1.c.a, global1.a, false, false), !vec4<bool>(global1.a, global1.a, arg_1.a.a, false)), select(vec4<bool>(true, true, true, true), !vec4<bool>(global1.a, global1.a, arg_1.a.a, false), global1.a)), !(!select(vec4<bool>(arg_1.c.a, arg_1.c.a, false, global1.a), select(vec4<bool>(true, true, global1.a, false), vec4<bool>(true, false, true, false), vec4<bool>(arg_1.c.a, false, arg_1.a.a, false)), vec4<bool>(arg_1.c.a, true, true, true))), _wgslsmith_div_u32(arg_0.x ^ _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.b.x, arg_0.x, arg_1.c.b.x, arg_0.x), arg_1.c.b), _wgslsmith_add_u32(39205u, 1u) >> ((0u ^ arg_1.c.b.x) % 32u)) <= 4294967295u);
    global0 = array<Struct_1, 20>();
    var var_2 = var_1.wy;
    return Struct_4(Struct_3(!any(select(vec4<bool>(false, false, false, arg_1.a.a), vec4<bool>(global1.a, global1.a, false, var_1.x), var_1.x)), _wgslsmith_sub_vec4_u32(arg_1.c.b ^ select(arg_1.c.b, vec4<u32>(arg_0.x, 4294967295u, u_input.a, 8109u), true), ~arg_1.c.b), global1.c), -abs(-(arg_1.b & arg_1.b)), Struct_3(false, arg_1.c.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-240f, -366f, global1.c.x), global1.c, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    var var_0 = func_4(select(~(vec3<u32>(u_input.a, 42540u, 0u) >> (vec3<u32>(1u, u_input.a, u_input.a) % vec3<u32>(32u))), vec3<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(1u, u_input.a, u_input.a)), ~u_input.a), select(select(vec3<bool>(false, false, global1.a), vec3<bool>(false, global1.a, true), true), func_1(vec4<i32>(global1.d.x, 0i, 2147483647i, 47768i), vec3<u32>(u_input.a, u_input.a, u_input.a)), true)) << (min(~vec3<u32>(u_input.a, u_input.a, 4558u), vec3<u32>(countOneBits(4294967295u), reverseBits(67715u), 0u)) % vec3<u32>(32u)), Struct_4(Struct_3(-110101i < global1.b.x, vec4<u32>(10311u << (u_input.a % 32u), abs(u_input.a), u_input.a, ~4294967295u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1089f, global1.c.x, 159f)) * vec3<f32>(global1.c.x, global1.c.x, global1.c.x))), select(global1.b, _wgslsmith_mult_vec3_i32(global1.b, global1.b), select(vec3<bool>(false, true, false), !vec3<bool>(global1.a, false, false), all(vec4<bool>(false, global1.a, global1.a, global1.a)))), Struct_3(global1.a, firstTrailingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u) << (vec4<u32>(22073u, 1u, 4294967295u, 18968u) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(-global1.c))));
    let var_1 = _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 7050i), _wgslsmith_div_vec2_i32(-global1.d << (_wgslsmith_div_vec2_u32(var_0.a.b.yy, var_0.c.b.xz) % vec2<u32>(32u)), ~(global1.b.xz << (var_0.c.b.xy % vec2<u32>(32u))))), select(vec2<i32>(max(global1.b.x, var_0.b.x), -var_0.b.x << (firstLeadingBit(57329u) % 32u)), vec2<i32>(-1i) * -(var_0.b.zz >> (vec2<u32>(7425u, var_0.a.b.x) % vec2<u32>(32u))), var_0.b.x <= (_wgslsmith_dot_vec2_i32(var_0.b.zy, vec2<i32>(10581i, -1i)) & -var_0.b.x)));
    let var_2 = 97312u;
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, ~(~0u)), 20u)];
    var var_4 = global1.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-373f, var_0.a.c.x, var_3.c.x, global1.c.x))))))), _wgslsmith_f_op_f32(abs(190f)));
}

