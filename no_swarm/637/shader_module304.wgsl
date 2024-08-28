struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_3, 27>;

var<private> global2: vec4<u32> = vec4<u32>(69796u, 0u, 38818u, 0u);

var<private> global3: f32;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    let var_0 = Struct_1(~(~vec2<i32>(~u_input.b, u_input.b)), 324f, _wgslsmith_mod_u32(~global2.x, min(_wgslsmith_mult_u32(u_input.a, 1u) ^ global2.x, ~_wgslsmith_div_u32(0u, 11957u))), any(vec3<bool>(true, true, true)) == select(true, all(vec2<bool>(false, false)), any(select(vec2<bool>(true, false), vec2<bool>(false, true), false))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -229f)))));
    global2 = vec4<u32>(108760u << (~var_0.c % 32u), global2.x, u_input.a, ~1u);
    global1 = array<Struct_3, 27>();
    global0 = false;
    let var_1 = true;
    return _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(290f + -581f)))), !(!all(vec3<bool>(true, false, false)))))));
}

fn func_2() -> i32 {
    let var_0 = any(select(select(vec4<bool>(true, select(false, true, false), true, true), vec4<bool>(select(false, true, true), true, true, any(vec3<bool>(false, false, true))), vec4<bool>(true, true, true, true)), vec4<bool>(true & (global2.x > global2.x), true, any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), false)), true), !all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + vec3<f32>(419f, 943f, -1369f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1481f)) * _wgslsmith_f_op_f32(floor(302f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + -282f), _wgslsmith_f_op_f32(step(-1024f, 996f)))))));
    let var_2 = Struct_1(firstTrailingBit(-min(reverseBits(vec2<i32>(4323i, u_input.b)), countOneBits(vec2<i32>(u_input.b, -25770i)))), var_1.x, ~87843u, var_0, var_1.x);
    let var_3 = reverseBits(u_input.b);
    global2 = ~(max(_wgslsmith_add_vec4_u32(~vec4<u32>(0u, var_2.c, var_2.c, 42780u), ~vec4<u32>(0u, 4294967295u, u_input.a, 44553u)), abs(~vec4<u32>(61638u, var_2.c, 28940u, global2.x))) | select(~vec4<u32>(global2.x, 0u, global2.x, 0u), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.c, 71890u, u_input.a, var_2.c), vec4<u32>(var_2.c, 29308u, global2.x, 4294967295u), vec4<u32>(1u, 0u, u_input.a, var_2.c)), vec4<u32>(global2.x, 0u, u_input.a, u_input.a) & vec4<u32>(u_input.a, var_2.c, 64640u, 13875u), true), true));
    return ~((_wgslsmith_mod_i32(-5882i, _wgslsmith_mult_i32(5322i, 1i)) >> (u_input.a % 32u)) | abs(-(var_2.a.x >> (var_2.c % 32u))));
}

fn func_1(arg_0: u32, arg_1: f32) -> u32 {
    let var_0 = Struct_1(select(vec2<i32>(func_2(), 2147483647i), vec2<i32>(-41814i, i32(-1i) * -2147483647i), any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1)) * 100f)), arg_0, !(select(~4294967295u, firstTrailingBit(global2.x), true) != firstLeadingBit(4294967295u)), arg_1);
    let var_1 = var_0;
    return u_input.a;
}

fn func_4(arg_0: vec4<u32>, arg_1: u32) -> Struct_2 {
    global0 = true;
    var var_0 = global1[_wgslsmith_index_u32(12051u, 27u)];
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(8953u, ~_wgslsmith_mod_u32(u_input.a, global2.x) ^ 4294967295u), arg_0.x, arg_0.x), 27u)];
    var var_2 = Struct_2(!select(!vec2<bool>(true, var_0.a.d), !select(vec2<bool>(var_1.a.d, true), vec2<bool>(false, var_1.a.d), false), !(!vec2<bool>(var_0.a.d, var_0.a.d))), var_1.a.d && !(!(var_1.a.d & false)), var_0.a, -vec3<i32>(1i, _wgslsmith_mult_i32(u_input.b, ~(-47063i)), -(~u_input.b)), var_1.a);
    var_0 = Struct_3(var_0.a);
    return Struct_2(select(vec2<bool>(true, true), var_2.a, true), false, var_0.a, vec3<i32>(-52885i, var_2.d.x, -21928i), var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, func_1(u_input.a, -1375f), _wgslsmith_mod_u32(3725u, 4294967295u)), select(global2.wzy, global2.xzy | global2.zwz, all(vec2<bool>(false, true)))), _wgslsmith_mult_u32(4294967295u, 1u), 4294967295u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(global2.yxx, vec3<u32>(57793u, 3498u, 76279u), global2.xyy), global2.xyz), ~firstTrailingBit(u_input.a))), global2.x);
    global1 = array<Struct_3, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(abs(u_input.a), var_0.c.c), var_0.d, vec2<u32>(0u, func_4(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_0.e.c, 1u, 1u), vec4<u32>(22814u, 1331u, 29316u, 4294967295u)) | vec4<u32>(58086u, u_input.a, 1u, 4294967295u), 32850u).c.c), _wgslsmith_mod_vec4_i32(vec4<i32>(countOneBits(u_input.b), 1i, 0i, -7228i), abs(~vec4<i32>(18384i, u_input.b, -2147483647i, u_input.b))), 0u);
}

