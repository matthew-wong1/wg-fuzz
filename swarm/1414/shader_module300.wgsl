struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, false);

var<private> global1: vec3<bool>;

var<private> global2: array<vec2<u32>, 2> = array<vec2<u32>, 2>(vec2<u32>(26572u, 1u), vec2<u32>(1u, 4294967295u));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    global1 = vec3<bool>(!select(true, arg_0.a, !global1.x && global1.x), global1.x | any(!(!vec4<bool>(true, false, false, global1.x))), !(!all(vec3<bool>(false, global0.x, true))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-701f * 321f) + _wgslsmith_f_op_f32(select(288f, 734f, global0.x))), _wgslsmith_f_op_f32(f32(-1f) * -165f)))));
    global2 = array<vec2<u32>, 2>();
    return select(select(select(select(select(vec4<bool>(global1.x, true, global1.x, false), vec4<bool>(true, false, false, true), true), vec4<bool>(arg_0.a, false, true, false), arg_0.a), !(!vec4<bool>(global1.x, false, global1.x, true)), vec4<bool>(any(vec3<bool>(true, global1.x, global0.x)), global1.x, !global1.x, true)), select(vec4<bool>(true, global0.x, all(vec4<bool>(true, arg_0.a, true, global0.x)), any(vec4<bool>(global1.x, true, true, false))), select(vec4<bool>(global1.x, true, global1.x, arg_0.a), !vec4<bool>(true, global1.x, global1.x, global0.x), !vec4<bool>(true, true, global0.x, true)), any(vec3<bool>(global0.x, arg_0.a, false))), true), !vec4<bool>(!global1.x, global0.x, global0.x, all(select(vec4<bool>(global0.x, false, false, arg_0.a), vec4<bool>(true, true, false, true), vec4<bool>(true, global1.x, global1.x, arg_0.a)))), !(!vec4<bool>(global0.x, !global0.x, select(global1.x, true, false), true)));
}

fn func_2() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1600f, -619f, 215f, -1691f) + vec4<f32>(770f, -1044f, -418f, -253f))) * vec4<f32>(-315f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1479f, -1122f), -559f)), _wgslsmith_f_op_f32(f32(-1f) * -881f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1133f)), 1152f, !global0.x))))));
    var var_1 = !(!func_3(Struct_1(global1.x || global0.x, vec3<i32>(u_input.d, u_input.d, -38590i) ^ vec3<i32>(78593i, u_input.b.x, 45468i))));
    let var_2 = Struct_1(!func_3(Struct_1(var_1.x, vec3<i32>(-26379i, u_input.d, u_input.c.x))).x, u_input.c);
    let var_3 = _wgslsmith_div_f32(-1159f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x)));
    var var_4 = Struct_1(!any(select(!vec4<bool>(false, var_1.x, var_2.a, var_1.x), vec4<bool>(true, true, true, var_2.a), true)), var_2.b);
    return !(!vec4<bool>(global1.x, !any(var_1.xyw), false && all(vec3<bool>(false, global1.x, var_2.a)), !(var_3 == var_0.x)));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: bool) -> Struct_1 {
    var var_0 = select(select(select(select(func_2(), func_3(Struct_1(global1.x, vec3<i32>(arg_1, u_input.b.x, u_input.b.x))), all(vec4<bool>(true, global0.x, true, true))), select(select(vec4<bool>(false, global1.x, global1.x, true), vec4<bool>(global1.x, arg_2, arg_2, false), true), !vec4<bool>(global0.x, false, true, global0.x), all(vec3<bool>(global1.x, false, arg_2))), vec4<bool>(func_3(Struct_1(global0.x, vec3<i32>(0i, 4111i, arg_1))).x, all(vec4<bool>(arg_2, global0.x, global1.x, true)), false && global0.x, func_2().x)), !func_2(), global1.x), select(vec4<bool>(true, false, any(func_2().zw), true), func_2(), !any(global0.zz)), func_3(Struct_1(arg_2 || true, abs(u_input.c))));
    return Struct_1(true, vec3<i32>(~select(-1i | arg_1, -26394i, true), -25573i, _wgslsmith_div_i32(u_input.d, _wgslsmith_dot_vec2_i32(u_input.b, -vec2<i32>(-34376i, -2147483647i)))));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: bool, arg_3: Struct_1) -> StorageBuffer {
    global0 = vec3<bool>(~_wgslsmith_mod_i32(firstLeadingBit(u_input.d), 11763i >> (u_input.e % 32u)) <= ~(-10951i), arg_2, false & !global0.x);
    let var_0 = -2147483647i;
    global1 = vec3<bool>(false, false, arg_1 != -2147483647i);
    let var_1 = Struct_1(arg_3.a, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(arg_1, -1i, arg_1, 2147483647i), ~vec4<i32>(u_input.c.x, arg_1, 95861i, -2620i) << ((vec4<u32>(u_input.e, u_input.a.x, u_input.e, u_input.e) ^ vec4<u32>(u_input.e, 1u, 0u, u_input.a.x)) % vec4<u32>(32u))), _wgslsmith_div_i32(-10982i, u_input.c.x), var_0));
    global1 = func_2().yxw;
    return StorageBuffer(u_input.a.yz, _wgslsmith_sub_vec3_i32(vec3<i32>(select(u_input.c.x, var_1.b.x, all(vec3<bool>(true, true, false))), 30974i, firstLeadingBit(14197i)), -vec3<i32>(arg_1, arg_3.b.x, -3974i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(true, 2147483647i, !(!(true | global0.x)), func_1(u_input.d, firstLeadingBit(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, u_input.b.x), u_input.c)), !(!global0.x)));
}

