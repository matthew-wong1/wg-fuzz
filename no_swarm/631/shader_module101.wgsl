struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: vec4<bool>,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 32>;

var<private> global1: array<Struct_5, 7>;

var<private> global2: i32;

var<private> global3: vec3<f32> = vec3<f32>(-884f, -801f, 673f);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: vec3<i32>) -> bool {
    return false;
}

fn func_2(arg_0: Struct_5, arg_1: Struct_1, arg_2: Struct_4, arg_3: i32) -> u32 {
    let var_0 = select(-2147483647i, -1i, !any(vec4<bool>(u_input.b.x != 0u, arg_1.d.x, func_3(2067u, vec3<i32>(-1i, -20554i, -24378i)), any(vec3<bool>(arg_1.d.x, arg_1.d.x, false)))));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(arg_2.a.x), ~(~(u_input.c.x >> (arg_0.b.a.x % 32u))), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b.a.x, arg_0.b.a.x), ~vec2<u32>(arg_1.a, 1u)), 0u)), u_input.c.zxw);
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: u32) -> i32 {
    global0 = array<Struct_4, 32>();
    var var_0 = arg_1.d;
    global0 = array<Struct_4, 32>();
    var var_1 = arg_1.d.b;
    let var_2 = select(~u_input.b, ~u_input.a, vec3<bool>(true, ~(~1u) >= (abs(arg_1.d.a) | func_2(global1[_wgslsmith_index_u32(arg_2, 7u)], Struct_1(arg_2, 8958u, 48692i, arg_1.c), global0[_wgslsmith_index_u32(56659u, 32u)], u_input.d.x)), ~u_input.d.x <= select(_wgslsmith_mult_i32(2048i, 34273i), _wgslsmith_mult_i32(arg_1.d.c, var_0.c), false)));
    return _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.c, -2147483647i), u_input.d), vec2<i32>(~(i32(-1i) * -arg_1.d.c), u_input.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 32>();
    global2 = ~26221i;
    let var_0 = Struct_4(u_input.e.wz);
    let var_1 = Struct_1(47781u, ~u_input.e.x, _wgslsmith_clamp_i32(-2147483647i, u_input.d.x, (select(1i, 0i, true) | ~15567i) | abs(func_1(false, Struct_2(u_input.d.x, vec3<f32>(257f, global3.x, global3.x), vec4<bool>(false, false, true, false), Struct_1(var_0.a.x, var_0.a.x, u_input.d.x, vec4<bool>(true, true, true, false)), vec3<bool>(false, false, false)), var_0.a.x))), vec4<bool>(!(min(0u, u_input.c.x) >= u_input.b.x), true, true, all(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)))));
    var var_2 = select(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.a.x, var_0.a.x, 1u), u_input.c.xwx), _wgslsmith_clamp_vec3_u32(~vec3<u32>(17166u, u_input.e.x, 12789u), abs(u_input.e.zwz) >> (select(u_input.c.yyz, u_input.b, false) % vec3<u32>(32u)), vec3<u32>(4294967295u, countOneBits(56765u), 0u)) & firstLeadingBit(vec3<u32>(~1u, max(18234u, 76899u), 0u)), !select(select(vec3<bool>(false, true, var_1.d.x), var_1.d.ywz, global3.x > global3.x), var_1.d.yzy, vec3<bool>(var_1.d.x, false, false)));
    let var_3 = global1[_wgslsmith_index_u32(func_2(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(18639u, ~_wgslsmith_dot_vec2_u32(var_2.xy, u_input.c.xx)), 7u)], var_1, Struct_4(~(vec2<u32>(1192u, 0u) >> (var_0.a % vec2<u32>(32u)))), -1i) & ~0u, 7u)];
    var var_4 = var_1.d.wz;
    let x = u_input.a;
    s_output = StorageBuffer((1u ^ (7559u | (var_0.a.x >> (u_input.a.x % 32u)))) | countOneBits(var_0.a.x), vec4<u32>(var_1.a, 1u, 131100u, var_0.a.x), vec2<f32>(var_3.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.a * var_3.a), _wgslsmith_f_op_f32(var_3.a * global3.x)))));
}

