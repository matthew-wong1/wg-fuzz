struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<u32>(26667u, 4294967295u), Struct_1(vec4<bool>(false, true, false, false), 7958i, 984f), Struct_1(vec4<bool>(false, false, false, false), i32(-2147483648), 334f), 1342f);

var<private> global1: array<vec3<bool>, 6>;

var<private> global2: array<f32, 6>;

var<private> global3: vec4<bool>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    var var_0 = global0.b;
    let var_1 = Struct_3(Struct_2(vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, global0.a.x, 18243u), vec3<u32>(global0.a.x, global0.a.x, 104477u)), ~global0.a.x | arg_0.x), Struct_1(select(var_0.a, vec4<bool>(true, true, true, true), vec4<bool>(global3.x, var_0.a.x, false, var_0.a.x)), u_input.b.x, _wgslsmith_f_op_f32(global0.c.c - -614f)), Struct_1(select(vec4<bool>(false, global3.x, true, true), var_0.a, var_0.a), -35757i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(157f, -250f, true))))), -775f), _wgslsmith_mod_i32(-2147483647i, _wgslsmith_dot_vec3_i32(u_input.b.zyx, u_input.b.ywx)));
    var var_2 = ~(~4294967295u);
    global2 = array<f32, 6>();
    var var_3 = var_1.a.b.c;
    return _wgslsmith_sub_u32(max(~60992u, ~10215u), _wgslsmith_sub_u32(~4591u << (global0.a.x % 32u), ~(~1u)));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-arg_1.c) >= arg_1.c;
    let var_1 = !select(select(!select(global0.b.a.xyy, global3.zxw, var_0), arg_1.a.xwx, global1[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(global0.a.x, global0.a.x)), 6u)]), arg_1.a.wwx, true);
    global2 = array<f32, 6>();
    global0 = Struct_2(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(26120u, ~4294967295u, arg_2), _wgslsmith_sub_vec3_u32(vec3<u32>(global0.a.x, global0.a.x, 4294967295u), select(vec3<u32>(22484u, arg_2, arg_2), vec3<u32>(arg_2, 4294967295u, 0u), global1[_wgslsmith_index_u32(12512u, 6u)]))), global0.a.x), arg_1, Struct_1(arg_1.a, i32(-1i) * -2147483647i, global2[_wgslsmith_index_u32(~func_3(~vec4<u32>(49709u, 28100u, 66896u, 0u)), 6u)]), -526f);
    global3 = vec4<bool>(any(global3.wz), all(select(global0.c.a, select(vec4<bool>(var_1.x, true, var_1.x, var_0), vec4<bool>(global3.x, false, false, var_1.x), var_0), !vec4<bool>(true, true, var_0, global3.x))) || false, false, global3.x);
    return global0.b.b;
}

fn func_1() -> i32 {
    global1 = array<vec3<bool>, 6>();
    var var_0 = Struct_2(global0.a, global0.c, Struct_1(select(select(global0.c.a, vec4<bool>(global3.x, false, false, global0.c.a.x), global0.b.a), global0.c.a, global0.c.a.x), -func_2(_wgslsmith_f_op_f32(f32(-1f) * -396f), Struct_1(vec4<bool>(global0.b.a.x, global0.c.a.x, true, false), global0.c.b, 327f), _wgslsmith_mod_u32(global0.a.x, 0u), _wgslsmith_sub_i32(u_input.a, 84433i)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global0.a.x, 6u)])), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-238f)), _wgslsmith_f_op_f32(-global0.d))) * _wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(global2[_wgslsmith_index_u32(2033u, 6u)], -1510f))))));
    var var_1 = Struct_4(global0.b.c);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1534f);
    let var_3 = Struct_1(vec4<bool>(any(!select(global0.b.a.xy, vec2<bool>(global0.b.a.x, false), true)), true, true, global0.c.a.x), firstLeadingBit(_wgslsmith_div_i32(global0.c.b, -2147483647i)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(598f * _wgslsmith_f_op_f32(trunc(global0.c.c)))))));
    return countOneBits(-28725i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(~(global0.a >> (~vec2<u32>(4294967295u, 67116u) % vec2<u32>(32u))), Struct_1(vec4<bool>(!global3.x, global0.c.a.x & true, true, true), -u_input.a, 220f), global0.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(324f, -1281f)), _wgslsmith_f_op_f32(global0.b.c - global2[_wgslsmith_index_u32(4294967295u, 6u)]), !global3.x)), _wgslsmith_f_op_f32(f32(-1f) * -574f)))), select(abs(func_1()), abs(u_input.a), false));
    let var_1 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(46261u, ~(~var_1.a.x));
}

