struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: i32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<i32>, 27> = array<vec2<i32>, 27>(vec2<i32>(-3720i, 0i), vec2<i32>(-31393i, 0i), vec2<i32>(2147483647i, 1i), vec2<i32>(-11524i, 1i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(43135i, 1i), vec2<i32>(i32(-2147483648), -30718i), vec2<i32>(7462i, 0i), vec2<i32>(2147483647i, -15843i), vec2<i32>(-1i, -1i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-14417i, 0i), vec2<i32>(0i, -10639i), vec2<i32>(8865i, 3542i), vec2<i32>(-8529i, 265i), vec2<i32>(28328i, 0i), vec2<i32>(2147483647i, 21916i), vec2<i32>(i32(-2147483648), 18381i), vec2<i32>(1i, -20418i), vec2<i32>(-7694i, -40503i), vec2<i32>(0i, -4602i), vec2<i32>(-54853i, 0i), vec2<i32>(i32(-2147483648), 15345i), vec2<i32>(4935i, 8288i), vec2<i32>(0i, 15541i), vec2<i32>(-6653i, 8779i), vec2<i32>(-3325i, i32(-2147483648)));

var<private> global2: array<Struct_3, 30>;

var<private> global3: array<f32, 19>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: Struct_3, arg_3: f32) -> u32 {
    return ~1u;
}

fn func_3(arg_0: u32) -> i32 {
    global3 = array<f32, 19>();
    var var_0 = true;
    global1 = array<vec2<i32>, 27>();
    var var_1 = Struct_4(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true), true), vec2<bool>(select(false, false, false), all(vec3<bool>(true, true, true)))), 398f);
    var var_2 = select(select(select(!select(vec4<bool>(false, false, var_1.a.x, var_1.a.x), vec4<bool>(false, false, var_1.a.x, false), var_1.a.x), !vec4<bool>(var_1.a.x, var_1.a.x, true, var_1.a.x), !vec4<bool>(var_1.a.x, var_1.a.x, false, false)), select(select(select(vec4<bool>(var_1.a.x, var_1.a.x, false, true), vec4<bool>(false, false, var_1.a.x, true), var_1.a.x), vec4<bool>(var_1.a.x, true, var_1.a.x, var_1.a.x), !vec4<bool>(false, var_1.a.x, true, var_1.a.x)), vec4<bool>(true, all(vec3<bool>(false, true, var_1.a.x)), var_1.a.x || var_1.a.x, all(vec3<bool>(true, var_1.a.x, true))), select(select(vec4<bool>(var_1.a.x, var_1.a.x, false, var_1.a.x), vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, true), true), !vec4<bool>(true, var_1.a.x, false, true), vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, false))), !(!(!vec4<bool>(var_1.a.x, var_1.a.x, false, var_1.a.x)))), !vec4<bool>(false, all(vec2<bool>(false, true)), var_1.a.x, select(true, true, !var_1.a.x)), select(select(!select(vec4<bool>(var_1.a.x, true, var_1.a.x, false), vec4<bool>(false, true, true, false), vec4<bool>(var_1.a.x, true, true, true)), !vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x), true), vec4<bool>(any(!vec4<bool>(true, false, var_1.a.x, true)), var_1.a.x, (u_input.e.x ^ -2147483647i) <= -2147483647i, 4294967295u == u_input.d), select(vec4<bool>(var_1.a.x, true, !var_1.a.x, any(vec3<bool>(true, false, var_1.a.x))), !select(vec4<bool>(true, var_1.a.x, var_1.a.x, true), vec4<bool>(true, var_1.a.x, var_1.a.x, var_1.a.x), var_1.a.x), !select(vec4<bool>(true, true, true, var_1.a.x), vec4<bool>(true, true, var_1.a.x, false), var_1.a.x))));
    return global0.a >> (((u_input.b.x << ((arg_0 >> (u_input.d % 32u)) % 32u)) >> (u_input.d % 32u)) % 32u);
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: vec3<i32>) -> u32 {
    var var_0 = !(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false))));
    let var_1 = vec3<bool>(true, ~reverseBits(u_input.c & u_input.a.x) == max(0u, 4294967295u), false);
    let var_2 = global2[_wgslsmith_index_u32(~arg_0, 30u)];
    var var_3 = !select(vec3<bool>(true, any(!vec4<bool>(true, var_1.x, true, true)), var_0.x), !vec3<bool>(true, true, var_1.x), vec3<bool>(func_3(9761u) <= ~global0.a, true, select(var_0.x, var_0.x != var_1.x, var_0.x)));
    return 96068u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 30>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(1153f * _wgslsmith_f_op_f32(-313f + -527f)), global3[_wgslsmith_index_u32(max(_wgslsmith_add_u32(~(~u_input.a.x), min(_wgslsmith_mod_u32(39311u, 4294967295u), ~21250u)), _wgslsmith_mult_u32(3902u, func_2(func_1(u_input.e.x, Struct_2(vec2<bool>(false, true), vec4<u32>(u_input.b.x, 4294967295u, 7471u, 40859u), Struct_1(2147483647i), vec4<f32>(-326f, -736f, -601f, -280f)), global2[_wgslsmith_index_u32(4294967295u, 30u)], 1138f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(502f, global3[_wgslsmith_index_u32(69770u, 19u)], -1020f, -875f)), _wgslsmith_add_vec3_i32(u_input.e.wzz, vec3<i32>(u_input.e.x, -8489i, -2147483647i))))), 19u)], _wgslsmith_div_f32(-1102f, 981f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1321f)), 1f)));
    global2 = array<Struct_3, 30>();
    let var_1 = Struct_2(vec2<bool>(false, !all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), false))), max(select(vec4<u32>(firstTrailingBit(u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.d, 16063u), vec4<u32>(5703u, 42810u, u_input.c, u_input.a.x)), u_input.c << (u_input.a.x % 32u), 4294967295u), ~vec4<u32>(u_input.c, u_input.d, u_input.c, 4294967295u), true), vec4<u32>(abs(u_input.a.x), u_input.d, reverseBits(select(u_input.d, u_input.c, false)), ~26609u)), Struct_1(~global0.a), var_0);
    let var_2 = abs(firstLeadingBit(u_input.e));
    global3 = array<f32, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(global3[_wgslsmith_index_u32(var_1.b.x, 19u)], 1265f, -702f, 1f), min(u_input.b.x ^ min(u_input.b.x, min(1u, 1u)), _wgslsmith_add_u32(_wgslsmith_div_u32(10025u, ~25872u), ~1u ^ func_1(var_2.x, Struct_2(var_1.a, var_1.b, Struct_1(10613i), vec4<f32>(-205f, var_0.x, var_1.d.x, var_0.x)), global2[_wgslsmith_index_u32(26946u, 30u)], 1314f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(751f, global3[_wgslsmith_index_u32(var_1.b.x, 19u)]))));
}

