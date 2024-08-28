struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec2<bool>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec3<i32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec3<i32>, 15> = array<vec3<i32>, 15>(vec3<i32>(5104i, 1i, 10328i), vec3<i32>(15044i, -20105i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -21521i, 1i), vec3<i32>(10115i, -39651i, -1i), vec3<i32>(-28425i, 5237i, 1i), vec3<i32>(2147483647i, 1i, i32(-2147483648)), vec3<i32>(1i, 42242i, 2147483647i), vec3<i32>(-34469i, 12012i, -19960i), vec3<i32>(0i, 9136i, -17485i), vec3<i32>(-38180i, 71915i, 25297i), vec3<i32>(-21103i, 1i, -31512i), vec3<i32>(38909i, 1i, -20316i), vec3<i32>(8271i, 1i, 28218i), vec3<i32>(i32(-2147483648), -1i, -4291i), vec3<i32>(-50336i, 1i, 119823i));

var<private> global2: array<u32, 28> = array<u32, 28>(1u, 15750u, 53405u, 0u, 4294967295u, 62933u, 4294967295u, 4294967295u, 0u, 4294967295u, 0u, 0u, 4294967295u, 43520u, 0u, 55473u, 4294967295u, 36795u, 15405u, 72362u, 4294967295u, 1u, 1u, 11294u, 12900u, 43829u, 0u, 13113u);

var<private> global3: i32 = -37980i;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec4<u32>) -> vec4<f32> {
    var var_0 = Struct_3(select(max(~firstLeadingBit(vec4<i32>(1i, 41004i, 2147483647i, u_input.c.x)), ~(~vec4<i32>(u_input.d, u_input.c.x, u_input.d, -16793i))), vec4<i32>(u_input.c.x, reverseBits(-u_input.d), 0i, ~u_input.d), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, false, false, true)), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true))), select(true, false, !select(false, false, true)) & all(vec2<bool>(true, all(vec2<bool>(true, true)))), 438f, Struct_2(vec4<bool>(true, false, false, all(vec4<bool>(false, true, false, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -1117f, -145f) + vec4<f32>(global0.x, global0.x, global0.x, 923f)) * _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, 1000f, global0.x, global0.x), vec4<f32>(global0.x, 644f, -352f, global0.x)))), vec2<bool>(select(true, u_input.d >= 10803i, true), _wgslsmith_f_op_f32(1172f * global0.x) == _wgslsmith_f_op_f32(f32(-1f) * -2466f)), Struct_1(vec4<bool>(true, true, all(vec2<bool>(false, true)), any(vec2<bool>(false, true)))), _wgslsmith_add_u32(arg_0, arg_2.x)));
    global3 = 27561i;
    var var_1 = arg_2.x;
    let var_2 = var_0.d.d.a.xzx;
    global0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.d.b.x, _wgslsmith_f_op_f32(f32(-1f) * -998f), -509f), vec3<f32>(_wgslsmith_div_f32(-924f, var_0.c), -1439f, _wgslsmith_f_op_f32(max(var_0.c, var_0.d.b.x))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_0.d.b.yxy)) * _wgslsmith_f_op_vec3_f32(var_0.d.b.yzz * var_0.d.b.xyy)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(599f, -1745f, global0.x))))))), !(!select(var_0.d.d.a.xzw, var_0.d.a.yzz, false))))));
    return _wgslsmith_div_vec4_f32(var_0.d.b, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, var_0.c, -686f, var_0.d.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-787f, global0.x, -1088f, 1475f)))) + _wgslsmith_f_op_vec4_f32(var_0.d.b + _wgslsmith_div_vec4_f32(vec4<f32>(var_0.c, global0.x, 767f, 1000f), vec4<f32>(global0.x, -1155f, 475f, 840f)))), var_0.d.b)));
}

fn func_2() -> bool {
    var var_0 = all(vec2<bool>(true, global0.x == 261f));
    var var_1 = u_input.c.x;
    let var_2 = vec3<u32>(~global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, global2[_wgslsmith_index_u32(u_input.b.x, 28u)] | global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(58141u, 28u)], 28u)]), 28u)], u_input.a), 28u)], ~firstLeadingBit(20557u), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~u_input.b.x, 28u)], 28u)]);
    var var_3 = Struct_5(Struct_3(-vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, max(-46627i, u_input.c.x)), all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)), 953f, Struct_2(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(true, false, false))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_3(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 28u)], 28u)], 28u)], vec4<u32>(var_2.x, 56627u, 4294967295u, var_2.x))))), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), Struct_1(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), false)), ~0u)));
    var var_4 = 0u;
    return all(var_3.a.d.d.a.xz);
}

fn func_1() -> i32 {
    var var_0 = vec3<bool>(func_2(), true, -u_input.c.x >= u_input.d);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.x + 1833f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))) + global0.yz));
    global2 = array<u32, 28>();
    global3 = u_input.c.x;
    var var_2 = Struct_3(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, u_input.d, 1i, u_input.d >> (1u % 32u)), vec4<i32>(_wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(1u, 15u)], vec3<i32>(-1i, u_input.c.x, -1i)), -u_input.d, ~u_input.c.x, 1i), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)), ~vec4<i32>(-46450i, u_input.d, -2147483647i, u_input.c.x), vec4<i32>(0i, u_input.d, u_input.d, u_input.d))), any(vec2<bool>(false, func_2() & !var_0.x)), global0.x, Struct_2(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.x + var_1.x), -1387f, _wgslsmith_f_op_f32(-547f + var_1.x), -403f) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, var_1.x, global0.x) * vec4<f32>(global0.x, 439f, -743f, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 2345f, -1528f, 901f))))), select(var_0.xz, var_0.yx, !(!var_0.x)), Struct_1(select(select(vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), true), !vec4<bool>(false, false, false, var_0.x), select(vec4<bool>(true, false, var_0.x, false), vec4<bool>(var_0.x, false, true, true), true))), _wgslsmith_mod_u32(4294967295u, abs(1u))));
    return _wgslsmith_sub_i32(-_wgslsmith_div_i32(1i, ~min(var_2.a.x, 33173i)), u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(func_1(), -min(u_input.d, u_input.c.x)), global0.x, _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.c << (vec2<u32>(global2[_wgslsmith_index_u32(u_input.a, 28u)], 1u) % vec2<u32>(32u)), u_input.c | u_input.c), -1i, min(54837i, 11279i), select(_wgslsmith_div_i32(2147483647i, -35417i), 1i, any(vec4<bool>(true, true, false, true)))), ~_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.d, u_input.c.x, 1i, -45978i), firstLeadingBit(vec4<i32>(1i, -17916i, 2147483647i, u_input.d)))));
}

