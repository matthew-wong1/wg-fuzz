struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: Struct_2,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec3<bool>,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 20>;

var<private> global1: i32;

var<private> global2: Struct_4 = Struct_4(Struct_2(Struct_1(1343f), -4074i, Struct_1(223f)), vec4<i32>(-18176i, -15838i, 42069i, 1i), vec3<bool>(false, false, false), 1310f, 1u);

var<private> global3: array<vec2<u32>, 25> = array<vec2<u32>, 25>(vec2<u32>(0u, 14764u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 74960u), vec2<u32>(1u, 9994u), vec2<u32>(4294967295u, 1u), vec2<u32>(117058u, 30999u), vec2<u32>(1u, 0u), vec2<u32>(1u, 0u), vec2<u32>(58642u, 4294967295u), vec2<u32>(0u, 16011u), vec2<u32>(0u, 0u), vec2<u32>(0u, 35440u), vec2<u32>(37808u, 30004u), vec2<u32>(30471u, 8773u), vec2<u32>(0u, 20908u), vec2<u32>(60155u, 6162u), vec2<u32>(19007u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(76870u, 44002u), vec2<u32>(86256u, 140413u), vec2<u32>(18037u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(15950u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 15790u));

var<private> global4: array<Struct_3, 15>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    global3 = array<vec2<u32>, 25>();
    var var_0 = global2.e & (41362u >> (u_input.b.x % 32u));
    return ~vec4<u32>(~(reverseBits(0u) >> (u_input.b.x % 32u)), ~(~u_input.b.x ^ ~u_input.c), ~(~1u), _wgslsmith_sub_u32(60923u, ~global2.e));
}

fn func_2(arg_0: Struct_3) -> Struct_4 {
    global4 = array<Struct_3, 15>();
    let var_0 = firstTrailingBit(u_input.b.yyx | ~((vec3<u32>(0u, 52667u, 0u) & arg_0.d.xwz) >> (~vec3<u32>(global2.e, 23890u, global2.e) % vec3<u32>(32u))));
    global0 = array<vec3<bool>, 20>();
    var var_1 = Struct_3(vec2<bool>(!(!(!arg_0.a.x)), any(vec3<bool>(true, 8281i <= u_input.a.x, global2.c.x || false))), abs(_wgslsmith_dot_vec3_i32(global2.b.wyz, global2.b.zyx)), arg_0.c, func_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-global2.a.a.a)), u_input.a.x, arg_0.c.c)));
    global3 = array<vec2<u32>, 25>();
    return Struct_4(Struct_2(global2.a.c, arg_0.c.b, var_1.c.c), ~global2.b, !select(!vec3<bool>(var_1.a.x, true, arg_0.a.x), select(!global2.c, vec3<bool>(global2.c.x, false, false), global0[_wgslsmith_index_u32(~1u, 20u)]), vec3<bool>(true, true, !arg_0.a.x)), -216f, ~_wgslsmith_mult_u32(~1u, ~arg_0.d.x));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_3) -> Struct_4 {
    global3 = array<vec2<u32>, 25>();
    var var_0 = -576f;
    let var_1 = !select(!(!global0[_wgslsmith_index_u32(global2.e, 20u)]), arg_2.c, any(!select(global2.c, vec3<bool>(arg_3.a.x, arg_3.a.x, true), vec3<bool>(false, false, true))));
    var var_2 = !select(select(vec4<bool>(any(vec2<bool>(false, global2.c.x)), true, var_1.x, arg_2.a.b > 2147483647i), select(!vec4<bool>(false, false, arg_3.a.x, arg_3.a.x), !vec4<bool>(true, false, true, var_1.x), vec4<bool>(false, false, arg_2.c.x, true)), !select(vec4<bool>(var_1.x, true, false, arg_3.a.x), vec4<bool>(false, false, false, global2.c.x), vec4<bool>(var_1.x, arg_2.c.x, false, false))), !vec4<bool>(global2.c.x, false, var_1.x, true), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_3.c.b, arg_2.b.x, arg_2.a.b, u_input.a.x), vec4<i32>(8996i, arg_3.c.b, global2.b.x, arg_2.a.b)), global2.b) != _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(-1i, arg_2.b.x)), func_2(Struct_3(vec2<bool>(true, var_1.x), 1i, Struct_2(Struct_1(-592f), 2147483647i, arg_2.a.c), arg_3.d)).b.wy));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0, arg_0)) - global2.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1321f, _wgslsmith_f_op_f32(-arg_2.a.c.a))), _wgslsmith_f_op_f32(-arg_1.a)))), _wgslsmith_f_op_f32(exp2(arg_3.c.a.a)), global2.d);
    return Struct_4(func_2(arg_3).a, vec4<i32>(u_input.a.x, (~global2.a.b << (~u_input.c % 32u)) >> (~(global2.e ^ arg_3.d.x) % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.b.x | arg_2.b.x, _wgslsmith_dot_vec3_i32(arg_2.b.xxx, arg_2.b.wwz)), vec2<i32>(39625i, arg_3.b) & (u_input.a | vec2<i32>(arg_2.a.b, 21181i))), arg_2.b.x), !select(!vec3<bool>(false, true, global2.c.x), global0[_wgslsmith_index_u32(~4294967295u, 20u)], var_2.xwz), _wgslsmith_f_op_f32(-var_3.x), 73977u);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3, arg_2: i32, arg_3: vec4<f32>) -> vec3<bool> {
    global4 = array<Struct_3, 15>();
    return func_4(_wgslsmith_f_op_f32(global2.a.a.a - arg_1.c.c.a), arg_1.c.c, func_2(Struct_3(func_2(Struct_3(vec2<bool>(arg_1.a.x, false), 1i, Struct_2(Struct_1(-125f), arg_2, Struct_1(1000f)), vec4<u32>(u_input.c, 7761u, 4294967295u, arg_1.d.x))).c.zy, _wgslsmith_clamp_i32(1i, _wgslsmith_div_i32(-26988i, global2.a.b), arg_2), arg_0.a, min(vec4<u32>(1u, 1u, 4294967295u, 39289u) >> (vec4<u32>(global2.e, arg_0.e, arg_1.d.x, 4294967295u) % vec4<u32>(32u)), ~vec4<u32>(u_input.b.x, arg_1.d.x, arg_0.e, 53765u)))), Struct_3(!vec2<bool>(true, global2.a.c.a == global2.d), ~(~(-1i)), global2.a, ~u_input.b)).c;
}

fn func_1() -> vec3<bool> {
    var var_0 = ~_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(global2.b.ww, reverseBits(global2.b.xz) << (u_input.b.yw % vec2<u32>(32u))), vec2<i32>(min(-1189i, u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -1i, -17397i, u_input.a.x), vec4<i32>(u_input.a.x, -2147483647i, global2.a.b, 24179i))) >> (~vec2<u32>(u_input.b.x, 44505u) % vec2<u32>(32u)));
    global1 = u_input.a.x << (_wgslsmith_div_u32(~_wgslsmith_mult_u32(global2.e, firstTrailingBit(global2.e)), u_input.c) % 32u);
    var var_1 = vec3<f32>(1030f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.d * 1000f), global2.d))), global2.a.a.a);
    return select(global2.c, !func_5(func_4(_wgslsmith_f_op_f32(abs(global2.a.c.a)), Struct_1(-349f), func_2(Struct_3(global2.c.yz, -1i, Struct_2(global2.a.c, global2.a.b, Struct_1(var_1.x)), u_input.b)), Struct_3(vec2<bool>(global2.c.x, true), global2.a.b, Struct_2(Struct_1(-682f), 0i, global2.a.a), vec4<u32>(u_input.c, 4294967295u, 4294967295u, global2.e))), global4[_wgslsmith_index_u32(global2.e, 15u)], _wgslsmith_mult_i32(func_2(global4[_wgslsmith_index_u32(global2.e, 15u)]).a.b, global2.a.b | global2.a.b), vec4<f32>(_wgslsmith_f_op_f32(-global2.a.a.a), _wgslsmith_f_op_f32(var_1.x - 1000f), -538f, _wgslsmith_f_op_f32(-var_1.x))), any(!(!vec3<bool>(global2.c.x, global2.c.x, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = select(global2.c.xy, global2.c.zz, any(select(func_1(), vec3<bool>(!var_0, global2.c.x, var_0), vec3<bool>(true, global2.c.x, any(vec4<bool>(false, var_0, true, false))))));
    global4 = array<Struct_3, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(global2.e, _wgslsmith_mult_u32(1u, _wgslsmith_div_u32(4294967295u, func_3(Struct_2(Struct_1(global2.d), -2147483647i, Struct_1(global2.a.a.a))).x)) | abs(~0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(65643u, global2.e), ~global2.e), 1u, ~36326u >> (_wgslsmith_dot_vec3_u32(u_input.b.xzx, u_input.b.wxz) % 32u), ~(~global2.e)), ~u_input.b, _wgslsmith_div_vec4_u32(vec4<u32>(~global2.e, u_input.b.x, func_3(Struct_2(global2.a.c, -75639i, global2.a.c)).x, func_2(Struct_3(vec2<bool>(var_1.x, false), 4608i, global2.a, u_input.b)).e), ~(vec4<u32>(global2.e, 0u, 1u, u_input.c) >> (vec4<u32>(3140u, u_input.c, global2.e, 1u) % vec4<u32>(32u))))), ~u_input.b, ~u_input.b);
}

