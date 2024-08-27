struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1i, -253f, vec3<u32>(10219u, 0u, 4294967295u), 4294967295u);

var<private> global1: f32 = -342f;

var<private> global2: vec3<bool>;

var<private> global3: array<u32, 1>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec3<bool>, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_1(-_wgslsmith_mult_i32(reverseBits(-global0.a), i32(-1i) * -29020i), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -968f)))))), countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1, global0.d, arg_1), global0.c)), 4294967295u);
    global1 = -1774f;
    var var_1 = global3[_wgslsmith_index_u32(0u, 1u)];
    var var_2 = Struct_2(~firstTrailingBit(-2147483647i));
    global2 = arg_0;
    return var_0;
}

fn func_3(arg_0: vec4<f32>, arg_1: i32) -> vec3<bool> {
    var var_0 = vec4<i32>(-firstTrailingBit(u_input.d), _wgslsmith_add_i32(-19147i, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, global0.a), select(vec2<i32>(2147483647i, global0.a), vec2<i32>(global0.a, 10344i), global2.x)), ~firstTrailingBit(arg_1))), _wgslsmith_sub_i32(global0.a, -34032i), u_input.a);
    var var_1 = Struct_2(-18186i);
    var_0 = ~abs(vec4<i32>(~994i, var_1.a, 1i, 1i));
    var var_2 = select(select(vec4<u32>(_wgslsmith_mult_u32(~4294967295u, _wgslsmith_mult_u32(global0.d, 0u)), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(4294967295u, u_input.b), u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 1u, 51023u, global0.c.x), vec4<u32>(63497u, 4294967295u, 4294967295u, 1u))), u_input.c, global0.c.x), vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, global0.c.x, 0u, global3[_wgslsmith_index_u32(global0.c.x, 1u)]) & vec4<u32>(global0.c.x, global0.c.x, 0u, u_input.b), select(vec4<u32>(global3[_wgslsmith_index_u32(9050u, 1u)], 0u, global3[_wgslsmith_index_u32(48261u, 1u)], u_input.c), vec4<u32>(19375u, global3[_wgslsmith_index_u32(global0.c.x, 1u)], global0.d, global3[_wgslsmith_index_u32(76728u, 1u)]), vec4<bool>(global2.x, false, global2.x, false))), firstLeadingBit(131707u ^ u_input.b), ~global3[_wgslsmith_index_u32(global0.c.x, 1u)] >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, global3[_wgslsmith_index_u32(28423u, 1u)], 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(6495u, 1u)], 1u)]), vec4<u32>(u_input.c, global0.c.x, 2234u, 93039u)) % 32u)), vec4<bool>(true, true, !(0i >= global0.a), any(select(global2.zx, global2.yx, vec2<bool>(global2.x, false))))), select(~max(vec4<u32>(global0.c.x, global0.c.x, global3[_wgslsmith_index_u32(1u, 1u)], u_input.c) ^ vec4<u32>(global3[_wgslsmith_index_u32(48982u, 1u)], 45870u, u_input.b, 21834u), _wgslsmith_div_vec4_u32(vec4<u32>(89733u, global3[_wgslsmith_index_u32(2027u, 1u)], u_input.b, global3[_wgslsmith_index_u32(34551u, 1u)]), vec4<u32>(4294967295u, 35443u, 59961u, global3[_wgslsmith_index_u32(u_input.c, 1u)]))), ~(~(vec4<u32>(31603u, global0.c.x, 19430u, 30508u) | vec4<u32>(1u, global3[_wgslsmith_index_u32(u_input.b, 1u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(17725u, 1u)], 1u)], global0.d))), select(select(vec4<bool>(global2.x, global2.x, false, global2.x), !vec4<bool>(global2.x, false, global2.x, false), true), select(select(vec4<bool>(false, true, global2.x, global2.x), vec4<bool>(global2.x, global2.x, true, global2.x), vec4<bool>(false, false, global2.x, true)), select(vec4<bool>(false, false, global2.x, global2.x), vec4<bool>(global2.x, global2.x, global2.x, global2.x), false), false), global2.x)), !(!select(!vec4<bool>(false, false, global2.x, global2.x), select(vec4<bool>(false, global2.x, false, global2.x), vec4<bool>(global2.x, true, true, true), global2.x), vec4<bool>(global2.x, false, false, false))));
    let var_3 = func_2(!select(vec3<bool>(select(global2.x, global2.x, true), global2.x == true, global2.x), !vec3<bool>(global2.x, false, global2.x), vec3<bool>(!global2.x, true && global2.x, false)), 50304u);
    return vec3<bool>(select(all(select(vec4<bool>(global2.x, global2.x, global2.x, false), select(vec4<bool>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(false, true, true, false), vec4<bool>(true, global2.x, false, global2.x)), true)), true, !(!(!global2.x))), all(select(select(vec2<bool>(false, true), vec2<bool>(true, true), !global2.x), vec2<bool>(-1i == arg_1, global2.x), vec2<bool>(global2.x, true))), !all(!(!vec2<bool>(global2.x, global2.x))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    global0 = func_2(!(!(!(!vec3<bool>(false, global2.x, global2.x)))), ~4294967295u);
    let var_0 = !(!vec4<bool>(global2.x, all(func_3(vec4<f32>(global0.b, arg_0, global0.b, 250f), u_input.d)), global2.x || (0u == global0.d), true));
    let var_1 = Struct_2(0i);
    var var_2 = _wgslsmith_mod_vec2_u32(abs(~global0.c.xx), global0.c.zz);
    var_2 = ~vec2<u32>(4294967295u, global0.c.x);
    return Struct_1(_wgslsmith_mod_i32(43103i, _wgslsmith_mult_i32(~(-2147483647i), u_input.a)), arg_0, select(global0.c, reverseBits(global0.c), any(vec3<bool>(true, 2147483647i <= global0.a, false))), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(var_2.x, var_2.x, 30696u, var_2.x)), ~vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 1u)], global3[_wgslsmith_index_u32(global0.d, 1u)], var_2.x, var_2.x)), countOneBits(~vec4<u32>(56956u, 17009u, 41470u, global3[_wgslsmith_index_u32(12984u, 1u)]))), global0.d));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !select(!select(vec3<bool>(global2.x, global2.x, global2.x), !vec3<bool>(true, global2.x, true), select(vec3<bool>(global2.x, false, global2.x), vec3<bool>(global2.x, false, global2.x), vec3<bool>(false, global2.x, global2.x))), !select(!vec3<bool>(true, global2.x, false), select(vec3<bool>(global2.x, global2.x, false), vec3<bool>(global2.x, false, global2.x), false), vec3<bool>(false, false, true)), !vec3<bool>(global2.x & true, true, any(vec4<bool>(global2.x, true, global2.x, false))));
    global3 = array<u32, 1>();
    var var_0 = func_1(_wgslsmith_f_op_f32(f32(-1f) * -464f));
    global3 = array<u32, 1>();
    let var_1 = vec4<i32>(1i, global0.a, var_0.a, global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(~min(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 0u, 0u, global3[_wgslsmith_index_u32(7281u, 1u)]), vec4<u32>(0u, 4294967295u, 33140u, global0.c.x)), vec4<u32>(1u, var_0.c.x, global0.c.x, u_input.c)), (~countOneBits(55338u) >> (_wgslsmith_add_u32(_wgslsmith_div_u32(var_0.d, 19132u), ~u_input.b) % 32u)) >> (abs(var_0.d) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.b))) + -353f) + var_0.b), _wgslsmith_dot_vec2_u32(~func_1(688f).c.yy >> (_wgslsmith_sub_vec2_u32(vec2<u32>(1u, global0.d), min(global0.c.yx, var_0.c.yx)) % vec2<u32>(32u)), vec2<u32>(select(var_0.d, ~global0.c.x, global2.x), _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.c, global3[_wgslsmith_index_u32(var_0.d, 1u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(u_input.b, 1u)], var_0.d, 4294967295u, global0.c.x), vec4<u32>(50929u, 64845u, global0.d, global0.c.x))))));
}

