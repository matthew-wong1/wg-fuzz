struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
    c: Struct_2,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 11>;

var<private> global1: array<u32, 23> = array<u32, 23>(52896u, 47630u, 1u, 30604u, 63379u, 31086u, 26526u, 77434u, 15154u, 4294967295u, 4294967295u, 2695u, 54973u, 54359u, 4294967295u, 1u, 24765u, 4294967295u, 58632u, 0u, 4294967295u, 0u, 168771u);

var<private> global2: Struct_4;

var<private> global3: Struct_1 = Struct_1(-1000f);

var<private> global4: i32 = -43027i;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec2<u32> {
    let var_0 = u_input.b;
    let var_1 = Struct_3(false);
    global2 = Struct_4(-898f, vec2<bool>(true & all(vec4<bool>(false, false, false, false)), any(!vec2<bool>(false, global2.b.x))), Struct_2(~(~0u) << (_wgslsmith_mult_u32(_wgslsmith_add_u32(1u, global2.c.a), global1[_wgslsmith_index_u32(35194u, 23u)]) % 32u), global2.c.b, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-406f + global2.c.e.a) * _wgslsmith_div_f32(global3.a, 1000f))), global2.c.e, Struct_1(_wgslsmith_f_op_f32(select(global3.a, -348f, any(vec3<bool>(false, true, global2.b.x)))))));
    global4 = var_0;
    let var_2 = global2.c.e;
    return vec2<u32>(_wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(u_input.a.x, 1u, 1u, 560u) ^ vec4<u32>(u_input.a.x, u_input.a.x, 1u, 1u)), ~(~vec4<u32>(u_input.a.x, global2.c.a, 136785u, u_input.a.x) >> (vec4<u32>(29067u, 81926u, u_input.a.x, 9861u) % vec4<u32>(32u)))), global1[_wgslsmith_index_u32(min(_wgslsmith_mod_u32(8215u, ~global1[_wgslsmith_index_u32(max(0u, 28187u), 23u)]), reverseBits(~(~global2.c.a))), 23u)]);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(~(global2.c.a | u_input.a.x), u_input.a.x) ^ vec2<u32>(abs(34063u), (global1[_wgslsmith_index_u32(global2.c.a, 23u)] ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(26652u, 23u)], 23u)]) ^ ~21458u), func_3());
    let var_1 = vec4<f32>(global3.a, 815f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.a, _wgslsmith_f_op_f32(round(arg_1.a)), !any(arg_0.ww))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.a, 430f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global3.a)) - -1781f));
    var var_2 = global2.c.d;
    global2 = Struct_4(742f, global2.b, Struct_2(~max(~var_0, min(1u, global2.c.a)), Struct_1(_wgslsmith_f_op_f32(-2535f - -775f)), Struct_1(_wgslsmith_f_op_f32(max(679f, _wgslsmith_f_op_f32(-var_1.x)))), global2.c.d, Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.a))))));
    global2 = global0[_wgslsmith_index_u32(var_0, 11u)];
    return arg_1;
}

fn func_1() -> Struct_2 {
    let var_0 = select(false, false, true);
    global0 = array<Struct_4, 11>();
    global1 = array<u32, 23>();
    let var_1 = _wgslsmith_dot_vec2_i32(-(vec2<i32>(36493i, -1i) >> (u_input.a % vec2<u32>(32u))), countOneBits(vec2<i32>(17059i, reverseBits(firstLeadingBit(19386i)))));
    var var_2 = Struct_2(~(~abs(u_input.a.x)), func_2(vec4<bool>(any(select(vec4<bool>(false, false, false, global2.b.x), vec4<bool>(global2.b.x, var_0, var_0, global2.b.x), vec4<bool>(true, false, var_0, var_0))), var_1 < 41723i, global2.b.x, !var_0), global2.c.d, vec2<i32>(-1i) * -countOneBits(vec2<i32>(var_1, 32877i))), func_2(select(!select(vec4<bool>(true, false, false, global2.b.x), vec4<bool>(false, var_0, true, false), true), !select(vec4<bool>(var_0, global2.b.x, true, true), vec4<bool>(true, var_0, global2.b.x, global2.b.x), var_0), !select(vec4<bool>(var_0, false, var_0, false), vec4<bool>(false, var_0, var_0, true), vec4<bool>(var_0, global2.b.x, global2.b.x, var_0))), global2.c.c, vec2<i32>(-u_input.b, reverseBits(_wgslsmith_div_i32(u_input.b, 38125i)))), global2.c.d, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-218f)) - global2.c.b.a)));
    return Struct_2(~_wgslsmith_dot_vec2_u32(~u_input.a, select(vec2<u32>(global2.c.a, global2.c.a), u_input.a, global2.b) & ~u_input.a), global2.c.c, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a)) + 517f)), global2.c.c, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1130f * 819f))) - func_2(vec4<bool>(var_0, var_0, var_0, global2.b.x), global2.c.d, vec2<i32>(1i, 1i)).a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -vec2<i32>(~(-7433i), max(u_input.b, -2147483647i));
    let var_1 = Struct_3(any(!(!global2.b)));
    let var_2 = u_input.a.x > global2.c.a;
    var var_3 = Struct_4(_wgslsmith_div_f32(global2.a, _wgslsmith_f_op_f32(-1120f + -1525f)), !select(select(vec2<bool>(false, false), select(global2.b, global2.b, global2.b), global2.b), select(select(global2.b, global2.b, true), vec2<bool>(var_2, false), global2.b.x), global2.b), func_1());
    let var_4 = false;
    var var_5 = vec2<bool>(true, false);
    var_3 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1180f), vec2<bool>(all(vec4<bool>(true, true, !var_2, true)), false), Struct_2(30056u, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global3.a)), global3.a)), Struct_1(global2.a), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.a + global2.c.c.a), 1000f)), func_2(vec4<bool>(any(vec3<bool>(true, true, var_2)), 1000f == var_3.c.d.a, !var_3.b.x, true && var_5.x), Struct_1(var_3.c.e.a), select(vec2<i32>(-1i, var_0.x) ^ vec2<i32>(u_input.b, -1i), vec2<i32>(-7367i, var_0.x), select(true, global2.b.x, var_4)))));
    let x = u_input.a;
    s_output = StorageBuffer(min(~(vec3<u32>(0u, 39960u, u_input.a.x) | (vec3<u32>(76629u, 5695u, global2.c.a) | vec3<u32>(global2.c.a, u_input.a.x, 0u))), reverseBits(min(vec3<u32>(u_input.a.x, var_3.c.a, global1[_wgslsmith_index_u32(var_3.c.a, 23u)]), firstLeadingBit(vec3<u32>(1u, u_input.a.x, 11855u))))), vec3<u32>(~4294967295u, 1u, ~max(14313u, u_input.a.x)) & _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(global2.c.a, var_3.c.a), global2.c.a, firstTrailingBit(1u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(var_3.c.a, 23u)], var_3.c.a, 0u), vec3<u32>(global2.c.a, u_input.a.x, var_3.c.a) & vec3<u32>(4294967295u, 1u, global1[_wgslsmith_index_u32(1u, 23u)]), max(vec3<u32>(19769u, global2.c.a, global2.c.a), vec3<u32>(global2.c.a, 13156u, 4294967295u)))), var_0.x);
}

