struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-25155i, 0i, -1i, i32(-2147483648));

var<private> global1: i32;

var<private> global2: array<vec3<f32>, 12>;

var<private> global3: vec3<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> i32 {
    var var_0 = reverseBits(vec2<i32>(~u_input.d.x & firstTrailingBit(u_input.e), 20495i)) << (vec2<u32>(_wgslsmith_dot_vec3_u32(~u_input.b ^ _wgslsmith_sub_vec3_u32(u_input.b, u_input.b), u_input.b), u_input.b.x) % vec2<u32>(32u));
    global0 = vec4<i32>(19707i, var_0.x << (~(~33977u) % 32u), 2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(9296i, -global0.x | max(11893i, -33316i)), global3.yx));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1439f, -125f)), -441f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -256f) - 896f))), firstLeadingBit(~(~reverseBits(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)))));
    var var_2 = abs(_wgslsmith_div_vec2_i32(u_input.a.yx, global0.zz));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(889f, -693f)), 1002f)));
    return -2147483647i;
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_2(-153f);
    let var_1 = Struct_2(404f);
    let var_2 = _wgslsmith_add_u32(1u, _wgslsmith_mod_u32(1u, 52687u));
    return vec4<u32>(~(~(~52819u)), 1u, firstTrailingBit(u_input.b.x), ~(~1u & countOneBits(countOneBits(var_2))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec4<u32>) -> bool {
    let var_0 = arg_3.x;
    global2 = array<vec3<f32>, 12>();
    return true;
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    global1 = _wgslsmith_dot_vec2_i32(global0.yy, -vec2<i32>(-func_2(), 29444i));
    let var_0 = vec4<bool>(func_4(select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, false), any(vec3<bool>(true, true, true))), Struct_3(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false)), all(vec4<bool>(false, true, false, true)))), arg_0, ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 31823u, u_input.b.x) & vec4<u32>(u_input.b.x, 59568u, 1u, 48986u), func_3())), false, !func_4(vec2<bool>(true, true), Struct_3(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true)), Struct_2(_wgslsmith_f_op_f32(min(arg_0.a, -370f))), vec4<u32>(u_input.b.x, ~u_input.b.x, 13061u, _wgslsmith_mod_u32(u_input.b.x, 4294967295u))), any(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)))));
    let var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(countOneBits(u_input.b.x ^ u_input.b.x), 1u, ~min(u_input.b.x, 4294967295u)), abs(_wgslsmith_add_vec3_u32(~vec3<u32>(1u, u_input.b.x, 37992u), abs(u_input.b))));
    let var_2 = vec3<i32>(~abs(-30940i) ^ abs(1i ^ (global0.x | global0.x)), firstTrailingBit(i32(-1i) * -34494i), -select(countOneBits(-global3.x), 10617i, false != any(var_0)));
    global2 = array<vec3<f32>, 12>();
    return Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(max(-919f, _wgslsmith_f_op_f32(arg_1 - -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1158f + arg_0.a) + _wgslsmith_f_op_f32(round(-482f))), select(all(var_0), false, true))), -810f, vec4<u32>(_wgslsmith_mult_u32(41216u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 0u, var_1.x, u_input.b.x), vec4<u32>(20221u, 1u, u_input.b.x, 5195u))), func_3().x, 1u, ~max(firstLeadingBit(1478u), reverseBits(u_input.b.x))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: i32) -> vec4<bool> {
    global1 = abs(global0.x);
    var var_0 = Struct_2(arg_0.a);
    let var_1 = Struct_2(_wgslsmith_div_f32(735f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b, -614f) * var_0.a)))));
    global0 = u_input.d;
    global0 = -vec4<i32>(global3.x, _wgslsmith_dot_vec3_i32(-u_input.c, arg_2), ~(-arg_3) & arg_2.x, ~_wgslsmith_dot_vec2_i32(firstTrailingBit(global0.xx), select(u_input.d.yz, vec2<i32>(2536i, 9134i), arg_1.b.wy)));
    return !select(vec4<bool>((arg_1.b.x | arg_1.b.x) && !arg_1.b.x, true, !(arg_0.b < var_0.a), true), select(vec4<bool>(arg_1.b.x & arg_1.b.x, all(vec3<bool>(arg_1.b.x, arg_1.a.x, false)), !arg_1.b.x, false), !arg_1.b, global0.x != (global0.x ^ global3.x)), !(!func_4(vec2<bool>(arg_1.a.x, false), Struct_3(arg_1.a, arg_1.b), var_1, arg_0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(656f)), -324f)))));
    global2 = array<vec3<f32>, 12>();
    global0 = u_input.d;
    let var_1 = func_5(func_1(Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 - -1615f), _wgslsmith_f_op_f32(f32(-1f) * -483f))), 353f), Struct_3(select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), false), vec4<bool>(true, false, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true)), !vec4<bool>(true, false, all(vec3<bool>(true, true, true)), false)), global0.wzw, abs(_wgslsmith_div_i32(2147483647i, ~(-17860i))));
    let var_2 = Struct_2(516f);
    global2 = array<vec3<f32>, 12>();
    var var_3 = vec4<f32>(-600f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-949f, -683f)) + _wgslsmith_f_op_f32(round(2879f))), _wgslsmith_f_op_f32(select(-738f, var_0, select(any(vec3<bool>(false, var_1.x, var_1.x)), true, var_1.x) || var_1.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a + var_0) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 * 1232f), 891f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-542f + _wgslsmith_f_op_f32(step(-280f, var_3.x))))));
}

