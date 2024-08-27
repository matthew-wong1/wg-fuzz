struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec3<f32>,
    c: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u);

var<private> global1: u32 = 24854u;

var<private> global2: array<u32, 20> = array<u32, 20>(4294967295u, 1u, 4294967295u, 4311u, 93287u, 1u, 0u, 31290u, 5465u, 1u, 4294967295u, 0u, 28689u, 78464u, 0u, 17249u, 119812u, 22817u, 9607u, 1u);

var<private> global3: array<vec3<bool>, 28>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> vec4<bool> {
    global3 = array<vec3<bool>, 28>();
    global3 = array<vec3<bool>, 28>();
    var var_0 = -183f;
    let var_1 = select(9556u, select(~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 1u, 29534u), ~vec3<u32>(83687u, global0.a, global0.a)), _wgslsmith_div_u32(global2[_wgslsmith_index_u32(~(28552u << (u_input.a % 32u)), 20u)], global2[_wgslsmith_index_u32(u_input.a, 20u)]), true), true);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-437f, _wgslsmith_f_op_f32(abs(-1000f)), true))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1026f)))));
    return select(select(select(vec4<bool>(true, true, all(vec4<bool>(false, false, true, false)), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false))), vec4<bool>(false, true, all(vec4<bool>(true, false, true, true)), any(select(vec3<bool>(false, true, true), global3[_wgslsmith_index_u32(global0.a, 28u)], false))), false), vec4<bool>(false, any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), false), true)), false, ~24117i > _wgslsmith_sub_i32(13569i, u_input.b)), vec4<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), global3[_wgslsmith_index_u32(u_input.a, 28u)])), abs(_wgslsmith_sub_i32(-49378i, u_input.b)) >= 0i, all(vec2<bool>(true, true)), !all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)))));
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec2<f32>) -> u32 {
    global2 = array<u32, 20>();
    global3 = array<vec3<bool>, 28>();
    var var_0 = Struct_3(func_2(), Struct_1(abs(arg_1.b)), !vec4<bool>(true, true, !(u_input.b == 1i), !all(vec4<bool>(false, true, true, true))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.a, _wgslsmith_f_op_f32(-arg_3.x)))))), 4294967295u);
    global3 = array<vec3<bool>, 28>();
    return max(reverseBits(global0.a) >> (37392u % 32u), _wgslsmith_mod_u32(~(~31471u), u_input.a));
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = u_input.b;
    var var_1 = ~min(firstLeadingBit(~(~vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u))), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(25708u, global0.a, global0.a, 1u)), max(vec4<u32>(u_input.a, 74329u, 1u, global0.a), vec4<u32>(global2[_wgslsmith_index_u32(arg_0, 20u)], 4294967295u, u_input.a, global0.a)), ~vec4<u32>(64178u, arg_0, global2[_wgslsmith_index_u32(25119u, 20u)], 0u)), vec4<u32>(abs(0u), global0.a & global2[_wgslsmith_index_u32(4295u, 20u)], arg_0, ~global2[_wgslsmith_index_u32(4294967295u, 20u)]), max(vec4<u32>(global0.a, global0.a, global0.a, 23300u) ^ vec4<u32>(global2[_wgslsmith_index_u32(u_input.a, 20u)], 16887u, 4294967295u, global2[_wgslsmith_index_u32(global0.a, 20u)]), vec4<u32>(25050u, 1u, global2[_wgslsmith_index_u32(37200u, 20u)], u_input.a) & vec4<u32>(20680u, 1u, 0u, 0u))));
    var var_2 = var_0 ^ u_input.b;
    let var_3 = -233f;
    var var_4 = Struct_2(_wgslsmith_f_op_f32(1295f + var_3), 1u);
    return u_input.b;
}

fn func_4(arg_0: i32, arg_1: i32) -> Struct_5 {
    global0 = Struct_1(func_1(arg_1, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(319f + -638f)), global2[_wgslsmith_index_u32(~1u, 20u)]), firstTrailingBit(firstTrailingBit(reverseBits(vec2<i32>(arg_1, arg_0)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(249f, 585f), vec2<f32>(1912f, 1000f), true))))))));
    var var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1068f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-357f, -663f)))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-889f, _wgslsmith_f_op_f32(trunc(-914f)), _wgslsmith_div_f32(145f, -363f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(623f, -1816f, -1617f), vec3<f32>(427f, 965f, -722f), false)))), vec3<f32>(_wgslsmith_f_op_f32(-301f + -634f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(168f, 1685f, true)), _wgslsmith_div_f32(598f, -194f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -485f), 403f))))), Struct_3(vec4<bool>(true, true, true, true), Struct_1(global0.a >> (countOneBits(global0.a) % 32u)), vec4<bool>(false, true, all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true))), select(any(vec2<bool>(false, true)), all(vec4<bool>(true, false, true, true)), true))));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1194f, var_0.b.x)))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b)), _wgslsmith_div_vec3_f32(var_0.b, vec3<f32>(_wgslsmith_f_op_f32(abs(-343f)), var_0.a, _wgslsmith_f_op_f32(-var_0.a))))), Struct_3(!(!func_2()), var_0.c.b, vec4<bool>(true, true, true, true)));
    let var_2 = -2147483647i;
    global0 = Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c.b.a, global0.a, 0u, 7735u), vec4<u32>(0u, 1u, global0.a, u_input.a)), var_0.c.b.a >> (global0.a % 32u), _wgslsmith_mult_u32(34729u, var_0.c.b.a)), ~vec3<u32>(43930u, var_1.c.b.a, global2[_wgslsmith_index_u32(var_1.c.b.a, 20u)]) ^ vec3<u32>(0u, 4294967295u, global2[_wgslsmith_index_u32(36728u, 20u)])), ~firstLeadingBit(vec3<u32>(17778u, 31461u, var_0.c.b.a))));
    return Struct_5(select(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(67815u, var_0.c.b.a, 4294967295u), vec3<u32>(var_1.c.b.a, 1u, 4294967295u), vec3<u32>(global2[_wgslsmith_index_u32(u_input.a, 20u)], 52319u, 4294967295u))), vec3<u32>(~23775u, 21843u, min(global2[_wgslsmith_index_u32(var_1.c.b.a, 20u)], global2[_wgslsmith_index_u32(50095u, 20u)])) << (vec3<u32>(_wgslsmith_mult_u32(var_1.c.b.a, var_1.c.b.a), firstLeadingBit(55594u), var_0.c.b.a) % vec3<u32>(32u)), var_0.c.c.wyx), Struct_2(_wgslsmith_f_op_f32(1000f + var_1.b.x), ~4294967295u ^ u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(u_input.b, ~select(-u_input.b << (1u % 32u), func_3(func_1(0i, Struct_2(-373f, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 20u)], 20u)]), vec2<i32>(u_input.b, u_input.b), vec2<f32>(1000f, 426f))), (u_input.b | u_input.b) < 1i));
    var var_1 = vec4<u32>(0u, var_0.b.b | 4294967295u, 0u, 78040u);
    var var_2 = !(_wgslsmith_f_op_f32(-var_0.b.a) <= var_0.b.a);
    var var_3 = firstTrailingBit(var_1.yzx >> (var_1.xwx % vec3<u32>(32u)));
    let var_4 = Struct_3(vec4<bool>(!(true && (130657u > var_0.b.b)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), var_0.b.a < -1000f)), !all(vec4<bool>(true, true, true, true)), false), Struct_1(firstTrailingBit(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(37727u, 20u)], global2[_wgslsmith_index_u32(41379u, 20u)]) & ~8849u)), vec4<bool>(func_2().x, func_2().x, true, !all(select(global3[_wgslsmith_index_u32(49074u, 28u)], vec3<bool>(true, false, false), false))));
    let var_5 = _wgslsmith_f_op_f32(var_0.b.a - 640f);
    let var_6 = ~(~(~vec4<u32>(~50996u, var_3.x, 1u, ~u_input.a)));
    let var_7 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_5))))));
    var var_8 = firstLeadingBit(~(~var_3.x)) != var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, vec4<u32>(19611u, 4294967295u, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~abs(62427u), 44946u), 20u)], _wgslsmith_div_u32(~115616u, 4294967295u << (var_1.x % 32u))));
}

