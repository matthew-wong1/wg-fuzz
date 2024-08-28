struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: u32,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
    d: u32,
}

struct Struct_4 {
    a: f32,
    b: vec4<bool>,
    c: Struct_3,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29> = array<i32, 29>(17096i, -32663i, 2147483647i, 8685i, -39504i, i32(-2147483648), 36204i, 0i, 8540i, 1i, -1i, 3612i, 33746i, i32(-2147483648), 1i, -2465i, -5655i, 0i, 23965i, 0i, 36404i, 3294i, 24994i, 21675i, 2147483647i, 2147483647i, -37435i, 0i, 18807i);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: bool) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-340f))))))));
    let var_1 = (arg_2 != arg_2) && arg_1.x;
    global0 = array<i32, 29>();
    let var_2 = !vec4<bool>(false, select(select(true, false, true), arg_0.x != 0u, (43100u >> (u_input.b % 32u)) == ~1u), any(vec2<bool>(!arg_1.x, arg_2)), false);
    global0 = array<i32, 29>();
    return false;
}

fn func_2() -> u32 {
    global0 = array<i32, 29>();
    var var_0 = Struct_2(Struct_1(select(vec4<bool>(func_3(vec4<u32>(1u, u_input.d.x, u_input.b, u_input.b), vec2<bool>(false, false), false), all(vec2<bool>(false, true)), true, true), select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), false), vec4<bool>(false, false, false, false)), ~u_input.d.x < 1u), _wgslsmith_add_vec3_i32(~(~vec3<i32>(-1i, u_input.a.x, u_input.c)), min(vec3<i32>(-25537i, 1i, 20794i), _wgslsmith_mult_vec3_i32(vec3<i32>(38240i, -34049i, u_input.a.x), vec3<i32>(u_input.c, 21326i, -9864i))))), ~((_wgslsmith_clamp_vec2_u32(u_input.d, u_input.d, vec2<u32>(u_input.d.x, 0u)) >> (~u_input.d % vec2<u32>(32u))) >> (vec2<u32>(u_input.d.x, ~u_input.d.x) % vec2<u32>(32u))), ~9464u, Struct_1(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), _wgslsmith_add_vec3_i32(-vec3<i32>(39955i, global0[_wgslsmith_index_u32(u_input.b, 29u)], global0[_wgslsmith_index_u32(22247u, 29u)]) | vec3<i32>(global0[_wgslsmith_index_u32(0u, 29u)], u_input.a.x, global0[_wgslsmith_index_u32(71381u, 29u)]), ~(vec3<i32>(64076i, -35767i, global0[_wgslsmith_index_u32(u_input.d.x, 29u)]) >> (vec3<u32>(0u, 4294967295u, u_input.b) % vec3<u32>(32u))))), false);
    var var_1 = all(var_0.a.a.wyy);
    let var_2 = Struct_5(_wgslsmith_sub_vec4_i32(abs(-_wgslsmith_div_vec4_i32(vec4<i32>(33654i, -2147483647i, -15149i, 2147483647i), vec4<i32>(global0[_wgslsmith_index_u32(21149u, 29u)], var_0.a.b.x, 1i, u_input.a.x))), abs(vec4<i32>(15555i, var_0.a.b.x, 52544i, 4139i)) & abs(vec4<i32>(1i, -8417i, 9364i, 71230i) | vec4<i32>(u_input.c, var_0.a.b.x, global0[_wgslsmith_index_u32(1u, 29u)], 0i))), var_0.d.a.wy);
    let var_3 = Struct_2(var_0.a, u_input.d, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 0u, var_0.c, u_input.b), ~(~vec4<u32>(var_0.b.x, var_0.b.x, var_0.b.x, u_input.d.x))) ^ u_input.d.x, Struct_1(var_0.d.a, var_0.d.b), !func_3(~vec4<u32>(1u, var_0.c, 4294967295u, 0u), vec2<bool>(false, 40522i <= u_input.a.x), func_3(vec4<u32>(u_input.d.x, 4294967295u, 0u, 43422u) & vec4<u32>(1u, 39369u, 24178u, 1u), vec2<bool>(var_2.b.x, var_2.b.x), true)));
    return _wgslsmith_sub_u32(23562u, 3049u);
}

fn func_1(arg_0: vec4<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -270f), _wgslsmith_f_op_f32(-1000f * -371f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1000f)), -994f)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1235f), _wgslsmith_f_op_f32(f32(-1f) * -1032f)))), _wgslsmith_f_op_f32(f32(-1f) * -1670f), 184f)));
    var_0 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), -657f);
    var var_1 = vec4<u32>(_wgslsmith_mod_u32(~(~0u), func_2()), max(abs(_wgslsmith_add_u32(u_input.b, 1u)), 4294967295u), 1u, u_input.b) >> (vec4<u32>(1u, 0u, 1u, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(28271u, u_input.d.x, u_input.b, u_input.b)), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), vec4<u32>(u_input.b, 0u, 0u, u_input.d.x)), firstLeadingBit(vec4<u32>(118527u, u_input.d.x, u_input.d.x, 1u))))) % vec4<u32>(32u));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-100f)))) * _wgslsmith_f_op_f32(-var_0.x)), select(arg_0, !(!(!vec4<bool>(arg_0.x, true, true, true))), arg_0), Struct_3(select(~global0[_wgslsmith_index_u32(~u_input.b, 29u)], u_input.c, (u_input.a.x >= 1i) & false), Struct_1(!select(arg_0, vec4<bool>(true, false, true, arg_0.x), true), vec3<i32>(u_input.c, ~11533i, -u_input.c)), ~(vec2<u32>(8321u, var_1.x) >> (~var_1.xy % vec2<u32>(32u))), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(16359u, 6259u, 2881u, 1u), firstTrailingBit(vec4<u32>(var_1.x, 4294967295u, 70255u, var_1.x)))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_2.a))) >= _wgslsmith_f_op_f32(-var_0.x);
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 29>();
    let var_0 = !(!any(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), true)));
    let var_1 = func_1(vec4<bool>(var_0, all(!vec4<bool>(var_0, var_0, var_0, false)) | true, !(!var_0), !any(vec3<bool>(false, false, var_0))));
    var var_2 = var_1.b;
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(vec4<u32>(max(select(15827u, 0u, var_1.b.a.x), ~62341u), 4784u, _wgslsmith_mult_u32(var_1.c.x | var_1.c.x, var_1.c.x), ~abs(44472u)), vec4<u32>(16725u, _wgslsmith_div_u32(11256u, min(20582u, 1u)), 1u, _wgslsmith_add_u32(1u, 34521u) >> (firstLeadingBit(47008u) % 32u))), var_1.c.x);
}

