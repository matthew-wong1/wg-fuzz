struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: i32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec4<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, true, false);

var<private> global1: Struct_1;

var<private> global2: array<vec2<bool>, 6> = array<vec2<bool>, 6>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false));

var<private> global3: array<vec2<i32>, 30>;

var<private> global4: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec3<bool>, arg_3: i32) -> vec2<i32> {
    var var_0 = ~reverseBits(-2147483647i) == u_input.a.x;
    global0 = vec4<bool>(!global1.c.x, !(global1.b < _wgslsmith_sub_i32(u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b.yy, vec2<i32>(2147483647i, global1.b)))), !(all(select(arg_2.yz, global2[_wgslsmith_index_u32(0u, 6u)], vec2<bool>(true, false))) && (true | any(global1.c.zx))), true);
    global4 = min(arg_3, _wgslsmith_dot_vec4_i32(u_input.b, -vec4<i32>(abs(-44728i), ~global1.b, global1.b, abs(global1.b))));
    global0 = vec4<bool>(!(!global0.x), arg_2.x, global0.x, true);
    let var_1 = u_input.b.x <= ~arg_3;
    return (u_input.b.ww | global3[_wgslsmith_index_u32(~22679u, 30u)]) >> (~select(select(firstTrailingBit(arg_1.zy), arg_1.wz ^ vec2<u32>(arg_1.x, 11885u), global0.ww), u_input.d.zz, !vec2<bool>(global0.x, false)) % vec2<u32>(32u));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: i32) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec2_f32(global1.a * vec2<f32>(global1.a.x, arg_1.x)), (~(-arg_2) | _wgslsmith_dot_vec2_i32(func_3(Struct_2(970f, global0.x), vec4<u32>(u_input.d.x, u_input.c, 1u, u_input.c), vec3<bool>(true, false, global1.c.x), global1.b), min(vec2<i32>(-28411i, -22662i), vec2<i32>(global1.b, u_input.b.x)))) & ~firstLeadingBit(-1i), select(select(select(vec3<bool>(global1.c.x, true, global0.x), global0.yzy, global1.c.x), select(global1.c, select(vec3<bool>(false, false, global0.x), vec3<bool>(true, false, global1.c.x), true), !vec3<bool>(global1.c.x, global1.c.x, false)), global1.c), select(vec3<bool>(global0.x, global1.c.x, !global0.x), select(vec3<bool>(true, true, true), select(global0.yzx, vec3<bool>(false, global1.c.x, global1.c.x), true), global0.xyz), select(select(global1.c, vec3<bool>(global1.c.x, global0.x, global0.x), global0.yzw), global1.c, global0.x)), select(vec3<bool>(true, any(global0.wzy), true), vec3<bool>(arg_1.x <= arg_1.x, true, false), (42241i | global1.b) < -u_input.a.x)));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1509f, 799f))));
    global1 = func_2(-115f, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -651f), 291f), global1.b);
    var var_1 = Struct_5(vec3<bool>(false, global1.c.x, true), ~(~u_input.a.zz), vec4<bool>(any(!vec2<bool>(global1.c.x, global1.c.x)), 1i <= max(~(-48296i), func_3(Struct_2(-368f, global0.x), vec4<u32>(u_input.c, u_input.d.x, u_input.c, 15255u), vec3<bool>(true, true, false), u_input.a.x).x), (u_input.d.x | u_input.d.x) > u_input.c, _wgslsmith_f_op_f32(-global1.a.x) <= 1453f), _wgslsmith_add_i32(global1.b, _wgslsmith_add_i32(func_2(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1296f, global1.a.x) - global1.a), firstLeadingBit(global1.b)).b, reverseBits(~(-51691i)))));
    global2 = array<vec2<bool>, 6>();
    let var_2 = _wgslsmith_f_op_f32(-global1.a.x) < 470f;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(941f)), global1.a.x)))) - -217f);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_5 {
    global3 = array<vec2<i32>, 30>();
    let var_0 = arg_0.c;
    var var_1 = Struct_2(arg_1.a, !(arg_0.b != arg_0.b));
    global4 = ~func_3(Struct_2(_wgslsmith_f_op_f32(abs(global1.a.x)), all(select(global1.c.yx, var_0.xz, var_0.zx))), min(_wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), vec4<u32>(u_input.c, 24019u, 38188u, 4294967295u), global0.x), abs(vec4<u32>(4294967295u, u_input.d.x, 0u, 31266u))), ~(vec4<u32>(u_input.c, 1u, 4294967295u, u_input.d.x) << (vec4<u32>(u_input.c, 4294967295u, 4294967295u, u_input.c) % vec4<u32>(32u)))), !func_2(-1218f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, -888f)), -4254i).c, -11983i).x;
    let var_2 = vec4<bool>(!any(global0.xy), all(var_0), global0.x, !(!(true || all(vec4<bool>(false, false, global0.x, arg_0.c.x)))));
    return Struct_5(vec3<bool>(false, true, global1.c.x), select(vec2<i32>(func_2(global1.a.x, vec2<f32>(arg_1.a, 427f), 44354i).b, _wgslsmith_div_i32(0i, u_input.a.x)), u_input.a.yz, !func_2(arg_1.a, arg_0.a, 1i).c.zx) ^ vec2<i32>(~(-10561i), -u_input.b.x >> (_wgslsmith_add_u32(1u, u_input.c) % 32u)), var_2, u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<i32>, 30>();
    global4 = firstLeadingBit(~global1.b) ^ -u_input.a.x;
    global0 = select(vec4<bool>(false, !(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.b, -9245i), vec2<i32>(u_input.b.x, 0i)) < global1.b), 47977i >= global1.b, all(!global2[_wgslsmith_index_u32(u_input.c, 6u)]) != global1.c.x), !vec4<bool>(true, global0.x, (global0.x || global1.c.x) || global0.x, global1.c.x | (false && global0.x)), true);
    var var_0 = func_4(Struct_1(global1.a, global1.b, global0.wxy), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), false));
    let var_1 = -1985f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, ~vec4<i32>(~3230i, _wgslsmith_div_i32(11605i, -2147483647i), ~3766i | (var_0.d & 2147483647i), global1.b), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(min(vec4<u32>(u_input.c, u_input.d.x, 4294967295u, u_input.d.x), vec4<u32>(u_input.c, u_input.c, 0u, u_input.c)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, 441u), vec4<u32>(32877u, u_input.d.x, u_input.c, 1257u))), ~(vec4<u32>(46408u, u_input.d.x, 52921u, u_input.c) >> (vec4<u32>(u_input.c, 1u, 4294967295u, 1u) % vec4<u32>(32u)))), ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.c, 4294967295u), vec3<u32>(u_input.c, u_input.c, u_input.c)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, 1u), u_input.d), u_input.c, firstTrailingBit(u_input.d.x))), vec2<u32>(u_input.c, 1u));
}

