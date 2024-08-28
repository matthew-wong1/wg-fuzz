struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15> = array<i32, 15>(1i, 60029i, 34788i, 38639i, -1i, 10366i, 3182i, -14815i, 12469i, 45700i, 6252i, 19071i, -48120i, 25557i, -39446i);

var<private> global1: vec3<u32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: vec3<bool>) -> vec2<bool> {
    let var_0 = Struct_5(13430i, Struct_1(true));
    global0 = array<i32, 15>();
    global0 = array<i32, 15>();
    var var_1 = var_0.b;
    var var_2 = Struct_4(!arg_2.x, var_0.b, Struct_3(Struct_1(var_0.b.a)));
    return !(!vec2<bool>(arg_0.x, !var_0.b.a));
}

fn func_2(arg_0: u32) -> Struct_5 {
    global0 = array<i32, 15>();
    var var_0 = Struct_1(true);
    let var_1 = Struct_2(-478f);
    let var_2 = vec2<u32>(~(~1u), ~((_wgslsmith_div_u32(arg_0, u_input.b) << (4294967295u % 32u)) & ~(~u_input.a.x)));
    var_0 = Struct_1(all(func_3(vec4<bool>(true, var_0.a, false, var_0.a), u_input.c.yx & vec2<i32>(-1i, u_input.c.x), select(vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(var_0.a, true, false), var_0.a))) || !var_0.a);
    return Struct_5(~(-4215i), Struct_1(!var_0.a));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec2<u32>) -> Struct_1 {
    global1 = firstLeadingBit(u_input.a.zyy);
    global0 = array<i32, 15>();
    var var_0 = u_input.a;
    var var_1 = ~_wgslsmith_mult_u32(~arg_2.x, ~arg_0);
    let var_2 = func_2(abs(4294967295u & ~abs(u_input.b)));
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -abs(vec4<i32>(-1957i, 27482i, -42353i, u_input.c.x) & (vec4<i32>(-19650i, global0[_wgslsmith_index_u32(u_input.a.x, 15u)], global0[_wgslsmith_index_u32(u_input.b, 15u)], 31866i) << (u_input.a % vec4<u32>(32u)))) & (vec4<i32>(firstTrailingBit(u_input.c.x) << (u_input.b % 32u), u_input.c.x, -3953i, 2522i) >> (u_input.a % vec4<u32>(32u)));
    var var_1 = Struct_3(func_1((_wgslsmith_mult_u32(0u, u_input.a.x) ^ 14216u) >> (~global1.x % 32u), Struct_1(false), ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), ~global1.xx), ~countOneBits(_wgslsmith_sub_vec2_u32(u_input.a.zw, global1.zy))));
    let var_2 = Struct_1(var_1.a.a);
    var_1 = Struct_3(Struct_1(false));
    global1 = vec3<u32>(countOneBits(39844u), 33720u, _wgslsmith_mult_u32(18236u, min(u_input.b, 17797u)));
    var var_3 = Struct_1(any(!(!vec4<bool>(false, false, true, var_1.a.a))));
    var_3 = Struct_1(true);
    let var_4 = ~(72462u << (1u % 32u));
    let var_5 = max(-(u_input.c.zx | firstTrailingBit(vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(var_4, 15u)]))), vec2<i32>(reverseBits(var_0.x), ~global0[_wgslsmith_index_u32(85928u, 15u)])) << (vec2<u32>(_wgslsmith_dot_vec4_u32(~u_input.a, ~vec4<u32>(global1.x, 1u, 0u, u_input.a.x)), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(abs(var_4), 1u), countOneBits(_wgslsmith_mult_u32(var_4, 837u)), ~u_input.b)) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -1i, abs(-16639i), firstTrailingBit(6623i), -var_0.x), var_0), abs(global0[_wgslsmith_index_u32(global1.x & var_4, 15u)]), _wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(4294967295u, 15u)], -1i, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(var_4, 15u)], u_input.c.x, global0[_wgslsmith_index_u32(70169u, 15u)], u_input.c.x), var_0)), -9564i), -5261i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(196f, -323f)))), -924f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1968f)), _wgslsmith_f_op_f32(min(1000f, 327f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f - -1000f))))), u_input.a);
}

