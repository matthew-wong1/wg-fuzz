struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: i32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec3<f32>(660f, 1072f, 1363f), vec2<bool>(false, true)), Struct_1(vec3<f32>(256f, -2378f, -322f), vec2<bool>(true, true)), Struct_1(vec3<f32>(750f, -125f, 2030f), vec2<bool>(true, false)), Struct_1(vec3<f32>(657f, -1000f, -874f), vec2<bool>(true, true)), Struct_1(vec3<f32>(383f, 109f, -538f), vec2<bool>(true, false)), Struct_1(vec3<f32>(-907f, 575f, 1989f), vec2<bool>(false, false)), Struct_1(vec3<f32>(-2296f, -135f, -720f), vec2<bool>(true, false)), Struct_1(vec3<f32>(3246f, -514f, 395f), vec2<bool>(true, true)), Struct_1(vec3<f32>(2507f, -1000f, 409f), vec2<bool>(true, false)), Struct_1(vec3<f32>(375f, 1433f, 691f), vec2<bool>(true, false)), Struct_1(vec3<f32>(-157f, 1484f, -423f), vec2<bool>(true, false)), Struct_1(vec3<f32>(645f, 1058f, 1194f), vec2<bool>(true, false)), Struct_1(vec3<f32>(-1000f, 562f, -133f), vec2<bool>(true, true)), Struct_1(vec3<f32>(-2031f, 339f, -1499f), vec2<bool>(false, false)), Struct_1(vec3<f32>(-1036f, -385f, 1000f), vec2<bool>(false, false)), Struct_1(vec3<f32>(619f, -805f, 1806f), vec2<bool>(true, false)), Struct_1(vec3<f32>(-1000f, 406f, -205f), vec2<bool>(true, false)), Struct_1(vec3<f32>(-756f, -243f, 1000f), vec2<bool>(false, false)), Struct_1(vec3<f32>(-1000f, -1794f, 286f), vec2<bool>(false, true)), Struct_1(vec3<f32>(373f, 156f, 409f), vec2<bool>(true, false)));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<f32>) -> f32 {
    let var_0 = any(!arg_0.b);
    var var_1 = 44079i;
    var var_2 = arg_1;
    global0 = array<Struct_1, 20>();
    var var_3 = select(!vec4<bool>(true, var_2.b.b.x, _wgslsmith_sub_u32(u_input.a.x, arg_1.d.x) < ~54956u, false), vec4<bool>(arg_0.b.x, true, any(vec3<bool>(true, all(vec3<bool>(arg_0.b.x, true, true)), arg_1.b.b.x)), var_2.b.b.x), arg_1.b.b.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(593f - arg_0.a.x)) + _wgslsmith_div_f32(-3149f, _wgslsmith_f_op_f32(abs(arg_2.x)))))));
}

fn func_2() -> vec4<f32> {
    var var_0 = ~(~firstLeadingBit(u_input.b));
    var var_1 = ~1971u;
    let var_2 = Struct_2(~_wgslsmith_div_vec3_u32(select(min(vec3<u32>(u_input.b, 34887u, 27305u), vec3<u32>(u_input.a.x, u_input.b, 0u)), ~vec3<u32>(u_input.a.x, 0u, u_input.a.x), vec3<bool>(true, true, true)), vec3<u32>(reverseBits(u_input.a.x), 1u, u_input.a.x)), Struct_1(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(u_input.b, 20u)], Struct_2(vec3<u32>(u_input.b, u_input.b, 47191u), Struct_1(vec3<f32>(-387f, -329f, -1169f), vec2<bool>(true, true)), -38981i, u_input.a), vec3<f32>(-570f, -1164f, 1338f)))), -882f), vec2<bool>(any(vec4<bool>(true, false, false, false)) && false, false)), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(28546i, 1i), max(~1i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(-2634i, -4876i)))), firstTrailingBit(1i) << (~_wgslsmith_div_u32(0u, 4294967295u) % 32u)), ~max(min(_wgslsmith_add_vec2_u32(u_input.a, u_input.a), select(vec2<u32>(77878u, u_input.b), vec2<u32>(u_input.b, 1u), vec2<bool>(false, true))), u_input.a));
    var_1 = 25268u;
    global0 = array<Struct_1, 20>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.b.a.x)) - 759f), var_2.b.a.x, _wgslsmith_f_op_f32(f32(-1f) * -691f)))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>, arg_3: vec3<f32>) -> bool {
    var var_0 = ~11428u;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2()));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-658f, -967f, 1000f))) + vec3<f32>(-655f, 362f, 2044f)) + vec3<f32>(_wgslsmith_f_op_f32(-913f - 1000f), _wgslsmith_f_op_f32(877f + 585f), -2230f)) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-242f, 1555f, -585f), vec3<f32>(1208f, -564f, 1000f)) - _wgslsmith_div_vec3_f32(vec3<f32>(964f, 1302f, 3022f), vec3<f32>(946f, -585f, 373f)))))), select(!(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true))), select(vec2<bool>(true, true), vec2<bool>(func_1(global0[_wgslsmith_index_u32(0u, 20u)], -2147483647i, vec4<i32>(0i, 1i, 0i, 28140i), vec3<f32>(556f, 911f, -402f)), any(vec4<bool>(false, false, true, false))), !func_1(global0[_wgslsmith_index_u32(44687u, 20u)], -2147483647i, vec4<i32>(33686i, 58353i, 9701i, 56881i), vec3<f32>(452f, -1073f, 2377f))), func_1(Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-910f, 1029f, 425f))), vec2<bool>(true, false)), -2147483647i, vec4<i32>(-24451i, 1i, 0i, i32(-1i) * -23475i), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-257f, -1258f, -1083f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(775f, -456f, 442f)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(803f))))), var_0.b);
    let var_2 = Struct_2(reverseBits(~(~(vec3<u32>(u_input.b, 1u, 1u) ^ vec3<u32>(u_input.b, u_input.b, 38737u)))), var_1, _wgslsmith_clamp_i32(abs(1i), ~49565i, ~(-abs(-2147483647i))), reverseBits(u_input.a));
    global0 = array<Struct_1, 20>();
    let var_3 = !var_0.b;
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    let var_4 = var_2.b;
    let var_5 = _wgslsmith_f_op_f32(1575f * _wgslsmith_f_op_f32(-var_0.a.x)) > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(313f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.a.x, 403f)) + _wgslsmith_f_op_f32(f32(-1f) * -1098f))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 29525u, var_2.a.x, u_input.b), vec4<u32>(1u, var_2.d.x, var_2.d.x, var_2.a.x)) | (u_input.b ^ var_2.a.x), _wgslsmith_dot_vec3_u32(var_2.a, vec3<u32>(4294967295u, 11462u, 48162u)))), _wgslsmith_mod_vec2_i32(select(vec2<i32>(-1i, var_2.c), ~select(vec2<i32>(var_2.c, 4026i), vec2<i32>(467i, -33261i), true), select(vec2<bool>(true, true), !var_0.b, vec2<bool>(true, false))), vec2<i32>(-1i) * -abs(vec2<i32>(var_2.c, 50363i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) - -354f))));
}

