struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(0i, vec3<bool>(false, true, true)), Struct_1(46288i, vec3<bool>(true, true, true)), Struct_1(0i, vec3<bool>(false, false, false)), Struct_1(30129i, vec3<bool>(false, false, false)), Struct_1(2147483647i, vec3<bool>(true, true, false)), Struct_1(-32267i, vec3<bool>(true, true, false)), Struct_1(1i, vec3<bool>(true, false, false)), Struct_1(-37892i, vec3<bool>(false, false, false)), Struct_1(1i, vec3<bool>(false, true, true)), Struct_1(-1i, vec3<bool>(false, true, false)), Struct_1(0i, vec3<bool>(false, false, false)), Struct_1(0i, vec3<bool>(true, true, true)), Struct_1(-39073i, vec3<bool>(false, false, true)), Struct_1(0i, vec3<bool>(true, false, false)), Struct_1(-1i, vec3<bool>(true, false, true)), Struct_1(2147483647i, vec3<bool>(true, false, true)), Struct_1(22950i, vec3<bool>(false, false, true)), Struct_1(-13412i, vec3<bool>(true, false, false)), Struct_1(-31040i, vec3<bool>(true, false, false)), Struct_1(2147483647i, vec3<bool>(true, false, true)), Struct_1(2147483647i, vec3<bool>(false, false, false)), Struct_1(-1i, vec3<bool>(true, true, false)), Struct_1(i32(-2147483648), vec3<bool>(true, true, true)), Struct_1(2147483647i, vec3<bool>(false, true, true)), Struct_1(-1i, vec3<bool>(true, true, true)), Struct_1(47610i, vec3<bool>(true, false, true)), Struct_1(-19514i, vec3<bool>(false, false, false)), Struct_1(-1i, vec3<bool>(false, false, true)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-arg_0.a);
    global0 = array<Struct_1, 28>();
    var var_1 = !all(arg_2.b) | any(vec3<bool>(!(!arg_1.b.x), true, any(vec3<bool>(true, arg_2.b.x, false))));
    let var_2 = abs(~countOneBits(~vec2<u32>(arg_0.b, arg_0.b)));
    let var_3 = arg_0;
    return var_2.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> u32 {
    global0 = array<Struct_1, 28>();
    global0 = array<Struct_1, 28>();
    let var_0 = arg_2;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(round(arg_2)), _wgslsmith_sub_u32(func_3(Struct_2(-299f, func_3(Struct_2(-795f, 45748u, Struct_1(-17415i, arg_0.b)), Struct_1(arg_0.a, vec3<bool>(true, false, false)), Struct_1(8435i, vec3<bool>(true, false, true)), arg_0.b.x), Struct_1(2147483647i, arg_0.b)), global0[_wgslsmith_index_u32(4294967295u, 28u)], Struct_1(-u_input.c, !vec3<bool>(false, arg_0.b.x, arg_1.b.x)), all(arg_1.b) != true), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a, u_input.a, 1u)), vec3<u32>(u_input.a, 73628u, 1u) ^ vec3<u32>(0u, u_input.a, 90457u)), ~_wgslsmith_mult_u32(u_input.a, u_input.a))), Struct_1(~arg_0.a, vec3<bool>(arg_1.b.x, arg_0.b.x, true)));
    return var_1.b;
}

fn func_2() -> vec3<bool> {
    global0 = array<Struct_1, 28>();
    var var_0 = Struct_1(-11227i, vec3<bool>(true, true, true));
    var var_1 = abs(~firstTrailingBit(1u >> (1u % 32u)));
    var_0 = global0[_wgslsmith_index_u32(~func_4(global0[_wgslsmith_index_u32(select(_wgslsmith_add_u32(u_input.a, u_input.a | 4294967295u), 0u, any(!var_0.b.zz)), 28u)], global0[_wgslsmith_index_u32(~func_3(Struct_2(118f, 1u, Struct_1(1i, vec3<bool>(false, false, false))), Struct_1(-1i, var_0.b), global0[_wgslsmith_index_u32(25604u, 28u)], var_0.b.x), 28u)], _wgslsmith_f_op_f32(-1402f * _wgslsmith_f_op_f32(trunc(-1515f)))), 28u)];
    global0 = array<Struct_1, 28>();
    return select(var_0.b, !vec3<bool>(true && all(vec4<bool>(true, var_0.b.x, true, false)), any(select(vec3<bool>(var_0.b.x, var_0.b.x, false), vec3<bool>(false, true, false), var_0.b)), !var_0.b.x | var_0.b.x), vec3<bool>(true, all(vec2<bool>(var_0.b.x, var_0.b.x)), all(select(select(vec4<bool>(true, var_0.b.x, false, true), vec4<bool>(true, var_0.b.x, true, true), vec4<bool>(false, var_0.b.x, var_0.b.x, var_0.b.x)), !vec4<bool>(true, var_0.b.x, var_0.b.x, var_0.b.x), var_0.b.x))));
}

fn func_1() -> Struct_2 {
    let var_0 = any(select(func_2(), vec3<bool>(!select(false, false, false), true, true), !all(vec2<bool>(true, true))));
    let var_1 = vec4<i32>(abs(~reverseBits(u_input.c)), _wgslsmith_sub_i32(select(u_input.d, ~(-u_input.b), var_0), 518i), abs(u_input.d), -abs(u_input.d));
    let var_2 = vec4<u32>(u_input.a, 63202u, ~u_input.a, ~func_4(Struct_1(u_input.c, vec3<bool>(true, true, true)), global0[_wgslsmith_index_u32(u_input.a, 28u)], 935f));
    let var_3 = -vec2<i32>(0i, -(~(-23670i)) ^ _wgslsmith_dot_vec3_i32(var_1.wwx, abs(var_1.wyy)));
    let var_4 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(var_3.x, 1i) & -23660i, var_3.x, ~1i, countOneBits(_wgslsmith_div_i32(u_input.d, var_3.x))), -firstLeadingBit(var_1)), !(!select(select(vec3<bool>(false, var_0, true), vec3<bool>(var_0, var_0, false), var_0), vec3<bool>(var_0, var_0, true), select(vec3<bool>(false, var_0, false), vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, true, true)))));
    return Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-576f + 1f))), _wgslsmith_mod_u32(func_3(Struct_2(-2334f, 91842u, global0[_wgslsmith_index_u32(u_input.a, 28u)]), Struct_1(_wgslsmith_div_i32(var_3.x, u_input.c), func_2()), Struct_1(var_3.x << (u_input.a % 32u), vec3<bool>(var_4.b.x, var_4.b.x, false)), var_0), _wgslsmith_clamp_u32(34841u, var_2.x, ~51601u)), Struct_1(~(~var_4.a), !select(vec3<bool>(true, false, var_4.b.x), vec3<bool>(var_4.b.x, false, var_4.b.x), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = var_0.c.b.x;
    global0 = array<Struct_1, 28>();
    let var_2 = min(min(vec3<u32>(u_input.a, u_input.a << (1u % 32u), var_0.b), abs(~vec3<u32>(var_0.b, 54249u, u_input.a))), firstLeadingBit(min(vec3<u32>(5515u, 1u, var_0.b), ~vec3<u32>(u_input.a, 23503u, var_0.b)))) & abs(vec3<u32>(abs(min(var_0.b, 1u)), 4294967295u, ~var_0.b | u_input.a));
    let var_3 = func_1();
    var var_4 = Struct_1(u_input.c, vec3<bool>(true, select(var_0.c.b.x, true, var_0.c.b.x), all(vec4<bool>(var_0.c.b.x, true, true, true))));
    var var_5 = Struct_2(var_0.a, ~u_input.a, func_1().c);
    let var_6 = ~vec2<i32>(_wgslsmith_sub_i32(u_input.c, firstLeadingBit(1i)), firstTrailingBit(abs(2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(select(firstTrailingBit(vec4<i32>(-28350i, 4878i, var_5.c.a, var_4.a)), abs(vec4<i32>(var_5.c.a, var_4.a, 1i, -1i) << (vec4<u32>(var_3.b, 0u, 21829u, 27230u) % vec4<u32>(32u))), var_0.c.b.x) | max(vec4<i32>(var_0.c.a, 1i, -54234i, -49662i << (var_2.x % 32u)), countOneBits(-vec4<i32>(var_4.a, 64658i, -2147483647i, var_3.c.a))));
}

