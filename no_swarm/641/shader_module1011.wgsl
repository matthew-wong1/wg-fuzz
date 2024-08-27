struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 29>;

var<private> global1: i32;

var<private> global2: vec2<f32> = vec2<f32>(2063f, -753f);

var<private> global3: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec2<u32>(1u, 4294967295u), vec2<bool>(false, true)), Struct_1(vec2<u32>(66872u, 12779u), vec2<bool>(false, true)), Struct_1(vec2<u32>(4294967295u, 53590u), vec2<bool>(true, false)), Struct_1(vec2<u32>(1u, 74937u), vec2<bool>(false, false)), Struct_1(vec2<u32>(0u, 46671u), vec2<bool>(false, true)), Struct_1(vec2<u32>(1u, 3727u), vec2<bool>(false, false)), Struct_1(vec2<u32>(109727u, 0u), vec2<bool>(false, false)), Struct_1(vec2<u32>(1u, 15869u), vec2<bool>(true, true)), Struct_1(vec2<u32>(4294967295u, 8140u), vec2<bool>(true, true)), Struct_1(vec2<u32>(1u, 18106u), vec2<bool>(true, false)), Struct_1(vec2<u32>(1u, 1u), vec2<bool>(false, true)), Struct_1(vec2<u32>(1u, 6206u), vec2<bool>(true, true)), Struct_1(vec2<u32>(4294967295u, 0u), vec2<bool>(false, false)), Struct_1(vec2<u32>(20145u, 1u), vec2<bool>(true, true)), Struct_1(vec2<u32>(16256u, 16247u), vec2<bool>(false, false)), Struct_1(vec2<u32>(4478u, 6080u), vec2<bool>(true, true)), Struct_1(vec2<u32>(77166u, 1u), vec2<bool>(true, false)), Struct_1(vec2<u32>(1845u, 37104u), vec2<bool>(true, false)), Struct_1(vec2<u32>(28283u, 0u), vec2<bool>(true, true)), Struct_1(vec2<u32>(78796u, 4889u), vec2<bool>(false, false)), Struct_1(vec2<u32>(0u, 31239u), vec2<bool>(true, false)), Struct_1(vec2<u32>(54232u, 28023u), vec2<bool>(true, true)), Struct_1(vec2<u32>(0u, 32879u), vec2<bool>(true, false)), Struct_1(vec2<u32>(42636u, 33331u), vec2<bool>(false, true)));

var<private> global4: array<Struct_4, 13> = array<Struct_4, 13>(Struct_4(vec4<i32>(-68307i, -11626i, 1i, 10225i), vec3<u32>(36810u, 14252u, 1u)), Struct_4(vec4<i32>(-8775i, -35161i, -89576i, 0i), vec3<u32>(24234u, 28525u, 70287u)), Struct_4(vec4<i32>(3832i, 4321i, -1i, -61639i), vec3<u32>(14604u, 72156u, 1u)), Struct_4(vec4<i32>(i32(-2147483648), 2147483647i, -3453i, -1i), vec3<u32>(1u, 30520u, 0u)), Struct_4(vec4<i32>(-27074i, -7207i, -18641i, -54462i), vec3<u32>(1u, 11599u, 4294967295u)), Struct_4(vec4<i32>(35807i, 7080i, -25813i, 1i), vec3<u32>(1u, 1u, 4294967295u)), Struct_4(vec4<i32>(-34259i, 17412i, 14319i, 5622i), vec3<u32>(0u, 50902u, 4294967295u)), Struct_4(vec4<i32>(-28964i, 1i, -6545i, 104485i), vec3<u32>(4294967295u, 0u, 1u)), Struct_4(vec4<i32>(22092i, -1i, 6890i, -75793i), vec3<u32>(0u, 84168u, 1u)), Struct_4(vec4<i32>(-12121i, -13628i, 14180i, 64276i), vec3<u32>(1u, 1u, 0u)), Struct_4(vec4<i32>(i32(-2147483648), 27816i, 7207i, 24105i), vec3<u32>(58652u, 115040u, 4294967295u)), Struct_4(vec4<i32>(5523i, 2147483647i, 1i, -62453i), vec3<u32>(0u, 27212u, 41540u)), Struct_4(vec4<i32>(46346i, -2875i, -1i, 11671i), vec3<u32>(76588u, 0u, 46088u)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1(arg_0: f32) -> vec4<u32> {
    return vec4<u32>(_wgslsmith_mod_u32(u_input.d.x, ~(~min(7965u, u_input.d.x))), 1u, u_input.d.x, u_input.b);
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec3<i32>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1330f, global2.x, 1001f, global2.x))))))));
    global0 = array<Struct_4, 29>();
    let var_1 = select(vec4<bool>(false, !all(vec2<bool>(false, true)), true, true), !(!vec4<bool>(select(false, false, true), true, any(vec2<bool>(true, false)), true)), true);
    let var_2 = Struct_2(Struct_1(_wgslsmith_mod_vec2_u32(u_input.d, vec2<u32>(u_input.d.x, u_input.d.x)), !select(vec2<bool>(false, true), select(vec2<bool>(var_1.x, var_1.x), var_1.wy, var_1.yy), !vec2<bool>(var_1.x, var_1.x))));
    return vec2<u32>(4294967295u, 4294967295u);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: Struct_3) -> bool {
    global3 = array<Struct_1, 24>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -775f));
    let var_1 = _wgslsmith_mult_vec2_u32(arg_0.b.xx, arg_3.a);
    global0 = array<Struct_4, 29>();
    var var_2 = vec2<i32>(2147483647i, _wgslsmith_clamp_i32(-(2147483647i ^ arg_3.b.x), arg_1.a.x, firstTrailingBit(arg_0.a.x)));
    return false;
}

fn func_2(arg_0: u32, arg_1: Struct_4, arg_2: f32) -> StorageBuffer {
    let var_0 = !vec4<bool>(true, all(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), func_4(Struct_4(vec4<i32>(2147483647i, u_input.c.x, u_input.c.x, arg_1.a.x), arg_1.b & vec3<u32>(35034u, 10557u, arg_0)), Struct_4(firstLeadingBit(arg_1.a), vec3<u32>(arg_1.b.x, arg_0, arg_1.b.x) & arg_1.b), vec3<bool>(true, true, true), Struct_3(func_3(u_input.c.x, arg_0, u_input.a.xww), vec2<i32>(arg_1.a.x, arg_1.a.x), ~u_input.c.x)), any(vec2<bool>(true, true)));
    return StorageBuffer(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32((vec3<i32>(-4513i, u_input.a.x, arg_1.a.x) | arg_1.a.zyz) << (arg_1.b % vec3<u32>(32u)), ~(-vec3<i32>(57468i, 1i, arg_1.a.x)), abs(_wgslsmith_sub_vec3_i32(arg_1.a.wwy, vec3<i32>(arg_1.a.x, 1i, u_input.c.x)))), -(~arg_1.a.wxy << (countOneBits(arg_1.b) % vec3<u32>(32u))), vec3<i32>(~1i, 31147i, -22702i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(u_input.b, ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.d.x, u_input.d.x), 20426u));
    let var_1 = vec4<bool>(false, true, true, true);
    var var_2 = ~(~abs(~func_1(-731f)));
    let var_3 = _wgslsmith_clamp_vec3_u32(vec3<u32>(min(var_2.x ^ 94451u, u_input.d.x), var_2.x, 4294967295u), vec3<u32>(~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 14074u), vec2<u32>(35089u, 4294967295u)), u_input.d & vec2<u32>(35811u, var_0.x)), _wgslsmith_mod_u32(var_2.x, var_2.x), 45385u), abs(var_2.xww));
    var var_4 = -abs(firstTrailingBit(vec2<i32>(u_input.c.x, u_input.a.x)) & _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x) | vec2<i32>(u_input.a.x, -1i), countOneBits(u_input.a.zw)));
    let var_5 = -vec2<i32>(~var_4.x, -u_input.a.x ^ -(i32(-1i) * -48399i));
    let var_6 = ~(~u_input.d);
    let var_7 = global3[_wgslsmith_index_u32(0u, 24u)];
    let x = u_input.a;
    s_output = func_2(abs(reverseBits(~21572u)), Struct_4(abs(u_input.a), max(var_2.zxx, abs(abs(vec3<u32>(var_7.a.x, 0u, var_2.x))))), global2.x);
}

