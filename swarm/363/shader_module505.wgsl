struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: bool,
    d: u32,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(831f, Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(true, false, true, false)));

var<private> global1: array<i32, 5> = array<i32, 5>(-19806i, 55692i, 0i, 8532i, 14951i);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: vec3<u32>) -> u32 {
    global1 = array<i32, 5>();
    global1 = array<i32, 5>();
    var var_0 = arg_1.a;
    var_0 = Struct_2(-1047f, var_0.c, Struct_1(!(!select(vec4<bool>(var_0.b.a.x, true, false, arg_0.x), var_0.b.a, vec4<bool>(true, arg_0.x, false, false)))));
    var var_1 = arg_1.a.b;
    return _wgslsmith_sub_u32(arg_2.x, 1u);
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> Struct_4 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(arg_0 - global0.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(global0.a)))), -922f)), global0.a));
    var var_1 = vec2<u32>(func_3(vec2<bool>(arg_1.a.x, arg_1.a.x), Struct_4(Struct_2(_wgslsmith_f_op_f32(-var_0.x), global0.c, Struct_1(vec4<bool>(true, arg_1.a.x, global0.b.a.x, false)))), (abs(vec3<u32>(u_input.c.x, 54004u, u_input.c.x)) ^ ~vec3<u32>(12502u, 13613u, 4294967295u)) >> (select(~vec3<u32>(u_input.a, u_input.c.x, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, 26596u, 71504u), vec3<u32>(42604u, u_input.c.x, u_input.a)), !arg_1.a.wxw) % vec3<u32>(32u))), 0u);
    var var_2 = vec4<u32>(_wgslsmith_div_u32(0u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(select(vec3<u32>(u_input.a, 52684u, u_input.c.x), vec3<u32>(0u, 22163u, var_1.x), false), _wgslsmith_add_vec3_u32(vec3<u32>(58899u, var_1.x, 75668u), vec3<u32>(u_input.c.x, 0u, 1u))), firstLeadingBit(firstLeadingBit(vec3<u32>(0u, 1u, var_1.x))))), func_3(select(arg_1.a.yy, !vec2<bool>(arg_1.a.x, true), select(vec2<bool>(false, false), !vec2<bool>(true, arg_1.a.x), !global0.c.a.x)), Struct_4(Struct_2(-1000f, Struct_1(vec4<bool>(false, global0.c.a.x, global0.c.a.x, arg_1.a.x)), global0.b)), ~(~vec3<u32>(u_input.c.x, u_input.a, u_input.a))), ~countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(12399u, u_input.c.x), u_input.c >> (u_input.c % vec2<u32>(32u)))), var_1.x);
    var var_3 = _wgslsmith_f_op_f32(-global0.a);
    global0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1373f, global0.a)) + _wgslsmith_f_op_f32(-1232f * var_0.x)) + 242f)), arg_1, Struct_1(select(!select(global0.b.a, arg_1.a, arg_1.a), select(vec4<bool>(true, global0.c.a.x, global0.b.a.x, global0.c.a.x), arg_1.a, vec4<bool>(false, global0.b.a.x, global0.c.a.x, arg_1.a.x)), vec4<bool>(all(vec2<bool>(arg_1.a.x, arg_1.a.x)), false, arg_1.a.x, true))));
    return Struct_4(Struct_2(-312f, Struct_1(select(!vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, true), select(vec4<bool>(global0.b.a.x, global0.b.a.x, true, arg_1.a.x), arg_1.a, vec4<bool>(global0.c.a.x, false, false, arg_1.a.x)), true)), arg_1));
}

fn func_1() -> Struct_3 {
    let var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-194f, -760f))))), global0.c);
    return Struct_3(func_2(func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.a))), Struct_1(vec4<bool>(global0.b.a.x, false, false, false))).a.a, Struct_1(vec4<bool>(!global0.b.a.x, !var_0.a.b.a.x, global0.b.a.x && false, var_0.a.b.a.x))).a, -select(~(-vec4<i32>(global1[_wgslsmith_index_u32(14818u, 5u)], u_input.b, global1[_wgslsmith_index_u32(u_input.a, 5u)], u_input.b)), min(max(vec4<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 5u)], u_input.b, 23824i, global1[_wgslsmith_index_u32(u_input.c.x, 5u)]), vec4<i32>(0i, -2147483647i, global1[_wgslsmith_index_u32(u_input.a, 5u)], -1i)), ~vec4<i32>(32536i, u_input.b, 2147483647i, 2147483647i)), global0.c.a), !all(!global0.c.a), u_input.a, ~(~(u_input.b ^ u_input.b) | select(u_input.b, _wgslsmith_add_i32(-1i, 18385i), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = array<i32, 5>();
    let var_1 = func_3(var_0.a.b.a.yy, func_2(_wgslsmith_f_op_f32(step(global0.a, _wgslsmith_f_op_f32(154f + 220f))), Struct_1(global0.c.a)), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.d, 62719u, var_0.d), ~vec3<u32>(491u, u_input.c.x, 0u)), _wgslsmith_div_vec3_u32(max(vec3<u32>(35925u, 0u, 0u), vec3<u32>(u_input.c.x, 1u, 46751u)), countOneBits(vec3<u32>(var_0.d, u_input.a, 0u))))) >> (var_0.d % 32u);
    var var_2 = func_2(_wgslsmith_f_op_f32(-func_2(_wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(-485f - 1471f)), Struct_1(vec4<bool>(var_0.a.c.a.x, var_0.a.c.a.x, var_0.c, true))).a.a), func_1().a.c);
    var var_3 = Struct_2(func_1().a.a, Struct_1(global0.c.a), func_2(_wgslsmith_f_op_f32(-global0.a), Struct_1(vec4<bool>(all(var_2.a.c.a.yy), global0.b.a.x, !var_0.a.b.a.x, any(global0.b.a.yx)))).a.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.zzy, u_input.c >> (((~vec2<u32>(var_1, 35754u) | vec2<u32>(u_input.c.x, 4294967295u)) ^ firstTrailingBit(~vec2<u32>(0u, 11674u))) % vec2<u32>(32u)), var_0.b);
}

