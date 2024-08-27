struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true);

var<private> global1: array<f32, 31>;

var<private> global2: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec4<u32> {
    var var_0 = select(select(select(vec3<bool>(global0.a, true, !global0.a), !(!vec3<bool>(global0.a, global0.a, global0.a)), select(vec3<bool>(true, false, global2.x), !vec3<bool>(global0.a, true, global2.x), true)), vec3<bool>(!global0.a, global2.x, global1[_wgslsmith_index_u32(15007u, 31u)] > _wgslsmith_div_f32(297f, global1[_wgslsmith_index_u32(u_input.b.x, 31u)])), !select(vec3<bool>(global2.x, global2.x, false), vec3<bool>(true, global0.a, global2.x), u_input.b.x == u_input.b.x)), vec3<bool>(all(select(!vec3<bool>(true, global0.a, false), vec3<bool>(true, true, true), select(vec3<bool>(true, global0.a, global0.a), vec3<bool>(true, global0.a, global2.x), global0.a))), true, !any(vec4<bool>(true, true, global2.x, global0.a))), global0.a);
    var var_1 = -reverseBits(_wgslsmith_add_i32(1i, _wgslsmith_clamp_i32(u_input.d.x, u_input.d.x, u_input.d.x))) ^ abs(~(-1i));
    var var_2 = Struct_1(false);
    let var_3 = Struct_1(!(false & (u_input.d.x != -1i)));
    var var_4 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1174f), Struct_1(u_input.b.x >= _wgslsmith_add_u32(1u, 34929u)));
    return (vec4<u32>(48633u, u_input.b.x, u_input.b.x, 1u) & abs(_wgslsmith_div_vec4_u32(abs(vec4<u32>(0u, u_input.b.x, u_input.b.x, 1u)), vec4<u32>(u_input.c.x, u_input.b.x, 10255u, u_input.b.x)))) ^ ~vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(37224u, 24314u, 37866u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.c.x, 12995u, u_input.b.x)), countOneBits(vec4<u32>(0u, 7759u, 36588u, u_input.b.x))), 9115u << (u_input.b.x % 32u), 0u >> (0u % 32u), _wgslsmith_add_u32(_wgslsmith_add_u32(1u, u_input.b.x), 4294967295u));
}

fn func_2(arg_0: vec3<u32>) -> vec4<u32> {
    global0 = Struct_1(false);
    let var_0 = vec2<i32>(u_input.a.x, u_input.a.x);
    var var_1 = Struct_2(global1[_wgslsmith_index_u32(20094u, 31u)], Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -166f) >= _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~arg_0.x, 31u)])));
    let var_2 = global2.yz;
    global0 = Struct_1(true);
    return ~func_3();
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_3) -> Struct_3 {
    var var_0 = arg_2;
    let var_1 = global1[_wgslsmith_index_u32(firstTrailingBit(0u) ^ ~(~arg_0.x), 31u)];
    global2 = select(vec3<bool>(any(!(!vec3<bool>(arg_1.b.a, true, var_0.a))), var_0.a, true), select(select(!(!vec3<bool>(false, global0.a, arg_1.b.a)), vec3<bool>(false, false & global2.x, any(vec4<bool>(true, false, arg_1.b.a, false))), !all(vec4<bool>(false, var_0.a, true, false))), select(select(select(vec3<bool>(arg_1.b.a, true, arg_1.b.a), vec3<bool>(var_0.a, global0.a, global0.a), vec3<bool>(true, true, var_0.a)), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, var_0.a, global2.x), vec3<bool>(true, global2.x, false))), !vec3<bool>(true, false, var_0.a), true), select(vec3<bool>(var_0.a, true, false && global0.a), !vec3<bool>(false, global2.x, false), !(!vec3<bool>(true, arg_2.a, arg_1.b.a)))), arg_2.a);
    var_0 = Struct_3(!global2.x);
    global0 = arg_1.b;
    return Struct_3(any(select(global2.yz, select(global2.zy, select(global2.xz, global2.zy, global2.zx), arg_1.b.a), select(vec2<bool>(arg_1.b.a, true), global2.yy, !global2.xy))));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: i32) -> bool {
    var var_0 = func_4(_wgslsmith_clamp_vec4_u32(firstLeadingBit(~countOneBits(vec4<u32>(46216u, 0u, 0u, u_input.b.x))), vec4<u32>(39714u, _wgslsmith_mod_u32(10478u, 20952u), countOneBits(u_input.b.x), _wgslsmith_sub_u32(0u, u_input.c.x)) >> (_wgslsmith_mod_vec4_u32(func_2(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.c.x, 0u), vec4<u32>(u_input.c.x, 1u, u_input.c.x, 0u))) % vec4<u32>(32u)), ~(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.c.x, 48118u))), Struct_2(705f, Struct_1(!global2.x)), arg_0);
    global0 = Struct_1(true);
    var_0 = Struct_3(!var_0.a);
    global2 = vec3<bool>(4294967295u > _wgslsmith_mult_u32(~u_input.c.x, 60017u), !any(select(select(global2.yy, global2.yz, false), select(vec2<bool>(var_0.a, global0.a), global2.yy, global2.x), vec2<bool>(false, false))), any(select(vec3<bool>(global0.a, func_4(vec4<u32>(u_input.c.x, u_input.c.x, u_input.b.x, 1u), Struct_2(-252f, Struct_1(global0.a)), Struct_3(var_0.a)).a, true), vec3<bool>(all(vec4<bool>(var_0.a, true, true, global2.x)), true, true), !(!vec3<bool>(false, true, global0.a)))));
    var var_1 = ~vec4<i32>(_wgslsmith_mod_i32(-(~u_input.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, -25896i) & vec2<i32>(1i, 2147483647i), u_input.a)), _wgslsmith_dot_vec2_i32(countOneBits(u_input.a), -vec2<i32>(arg_1.x, 60269i)), arg_1.x, max(arg_2, 33122i));
    return all(!select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 31u)] <= -858f, true, arg_0.a, all(vec4<bool>(arg_0.a, false, true, arg_0.a))), select(vec4<bool>(false, true, global0.a, true), !vec4<bool>(false, true, true, arg_0.a), select(vec4<bool>(true, true, arg_0.a, false), vec4<bool>(global2.x, true, arg_0.a, global0.a), arg_0.a)), !vec4<bool>(true, false, true, arg_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(all(vec2<bool>(true, func_1(Struct_3(true), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, u_input.a.x, u_input.a.x, u_input.d.x), vec4<i32>(-2147483647i, 1i, u_input.a.x, u_input.d.x)), u_input.d.x))));
    global0 = Struct_1(true);
    var var_1 = ~35424i;
    global2 = select(select(select(select(select(vec3<bool>(global2.x, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), all(global2.yx)), select(vec3<bool>(global2.x, false, global2.x), vec3<bool>(false, global2.x, var_0.a), select(vec3<bool>(false, var_0.a, false), vec3<bool>(var_0.a, false, global2.x), vec3<bool>(true, global2.x, global0.a))), vec3<bool>(true, global0.a | false, true)), vec3<bool>(true, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.c.x, 31u)], global1[_wgslsmith_index_u32(u_input.b.x, 31u)]) >= _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 31u)] - 556f), true), select(select(!vec3<bool>(global0.a, false, var_0.a), select(vec3<bool>(false, var_0.a, global0.a), vec3<bool>(var_0.a, global2.x, global0.a), vec3<bool>(global2.x, var_0.a, true)), global0.a), vec3<bool>(true, global2.x, u_input.c.x > u_input.b.x), global0.a)), !(!vec3<bool>(global0.a & var_0.a, true, any(vec2<bool>(var_0.a, false)))), var_0.a);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-419f - _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(~u_input.b.x, 31u)], 252f))), Struct_1((u_input.a.x < _wgslsmith_add_i32(-29896i, -20664i)) || global0.a));
    var_1 = 0i;
    var var_3 = vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(38988u, ~4294967295u), func_3().x), ~max(~u_input.b.x, u_input.b.x)) >> (u_input.c % vec2<u32>(32u));
    global0 = var_2.b;
    var var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_sub_u32(var_3.x, countOneBits(0u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 31u)], -902f, global1[_wgslsmith_index_u32(var_3.x, 31u)], 1630f), vec4<f32>(var_2.a, global1[_wgslsmith_index_u32(u_input.b.x, 31u)], 1244f, 170f), vec4<bool>(false, true, global0.a, true))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(271f, global1[_wgslsmith_index_u32(var_3.x, 31u)], var_2.a, -1557f), vec4<f32>(296f, 307f, var_2.a, var_2.a)))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1726f, -428f, global1[_wgslsmith_index_u32(55474u, 31u)], 795f) * vec4<f32>(-1565f, -375f, 177f, var_2.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(100f, var_2.a, 745f, -1000f)))))), 1000f);
}

