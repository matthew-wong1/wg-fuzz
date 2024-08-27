struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<i32, 7>;

var<private> global2: Struct_3 = Struct_3(0u);

var<private> global3: Struct_1;

var<private> global4: Struct_1 = Struct_1(vec2<bool>(true, false));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: Struct_3) -> u32 {
    var var_0 = ~(~vec4<u32>(~(~13747u), _wgslsmith_dot_vec3_u32(arg_0.yyy << (u_input.b % vec3<u32>(32u)), ~vec3<u32>(1u, 17558u, u_input.a.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(39836u, 1u), vec2<u32>(global2.a, 4294967295u)), _wgslsmith_sub_u32(4294967295u, ~u_input.a.x)));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(floor(arg_1.x)), global4.a.x, Struct_1(vec2<bool>(_wgslsmith_sub_u32(4294967295u, u_input.a.x) != u_input.a.x, global3.a.x)), var_0.wzz);
    var var_2 = global4.a.x;
    var_2 = !(!global3.a.x);
    let var_3 = ~(~(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(15687u, 4294967295u, 4294967295u, 4294967295u)), ~arg_0) | arg_2.a));
    return _wgslsmith_mult_u32(reverseBits(firstLeadingBit(~global2.a)) >> (4856u % 32u), var_1.d.x);
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_3(~63370u);
    global2 = Struct_3(firstLeadingBit(~35660u));
    let var_1 = vec3<u32>(var_0.a >> (_wgslsmith_add_u32(~64013u << (~u_input.a.x % 32u), 93603u) % 32u), _wgslsmith_clamp_u32(var_0.a, min(_wgslsmith_add_u32(global2.a, global2.a), func_3(vec4<u32>(u_input.a.x, 35458u, var_0.a, 1u), vec3<f32>(arg_0, arg_0, -197f), Struct_3(27224u))), 1u), 4294967295u);
    global0 = 38917u >> (min(_wgslsmith_mod_u32(~(u_input.b.x | 43724u), _wgslsmith_add_u32(u_input.a.x, _wgslsmith_mod_u32(u_input.b.x, 27541u))), ~var_0.a) % 32u);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(2585f, arg_0))))) + 879f));
    return Struct_1(global4.a);
}

fn func_1() -> u32 {
    var var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2050f * -1000f), 1944f)) - -114f)));
    global1 = array<i32, 7>();
    global3 = Struct_1(vec2<bool>(global3.a.x, !any(var_0.a)));
    return 4294967295u;
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: i32) -> Struct_2 {
    global2 = Struct_3((~countOneBits(u_input.a.x) | 1u) << (0u % 32u));
    global4 = Struct_1(func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-233f * _wgslsmith_f_op_f32(step(389f, 1000f))), _wgslsmith_f_op_f32(round(-260f))))).a);
    var var_0 = ~(~(~_wgslsmith_dot_vec3_u32(u_input.a, ~u_input.a)));
    var_0 = global2.a;
    global0 = abs(u_input.b.x >> (~(~u_input.b.x | 1u) % 32u));
    return Struct_2(-217f, !(!(global3.a.x | global3.a.x)), Struct_1(select(global4.a, select(!global4.a, global3.a, select(vec2<bool>(true, false), global3.a, global4.a.x)), select(func_2(375f).a, vec2<bool>(global3.a.x, global4.a.x), true))), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(abs(~u_input.d.x), _wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.e.zwy), (u_input.d.wyy | u_input.d.yyw) & ~u_input.d.wyz) >> (_wgslsmith_sub_u32(~func_1(), func_3(reverseBits(vec4<u32>(u_input.a.x, 1u, global2.a, 6938u)), vec3<f32>(-286f, 490f, -861f), Struct_3(global2.a))) % 32u), -37949i);
    global2 = Struct_3(firstLeadingBit(global2.a));
    global3 = Struct_1(func_2(_wgslsmith_f_op_f32(-func_4(-22840i, ~2147483647i, _wgslsmith_mult_i32(-9964i, 0i)).a)).a);
    let var_1 = select(select(select(!vec4<bool>(var_0.b, global4.a.x, false, var_0.c.a.x), !select(vec4<bool>(global3.a.x, global3.a.x, var_0.c.a.x, global3.a.x), vec4<bool>(true, false, false, false), vec4<bool>(global4.a.x, var_0.b, var_0.c.a.x, false)), vec4<bool>(false || var_0.c.a.x, global4.a.x, !global4.a.x, func_2(var_0.a).a.x)), vec4<bool>(true, false, 379f > _wgslsmith_f_op_f32(-var_0.a), global4.a.x), !select(select(vec4<bool>(true, global3.a.x, true, global3.a.x), vec4<bool>(true, true, true, true), global3.a.x), vec4<bool>(global3.a.x, true, false, true), false)), vec4<bool>(true && any(select(vec2<bool>(global3.a.x, false), vec2<bool>(false, true), false)), true, false, false), var_0.c.a.x);
    global4 = Struct_1(!var_1.xw);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -689f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -204f)))), true, var_0.c, min(vec3<u32>(4294967295u, _wgslsmith_mod_u32(var_0.d.x, ~22390u), u_input.a.x), _wgslsmith_sub_vec3_u32(select(vec3<u32>(u_input.b.x, global2.a, 8465u), vec3<u32>(u_input.b.x, 43031u, 51672u), vec3<bool>(global4.a.x, var_0.b, global3.a.x)) | ~vec3<u32>(global2.a, var_0.d.x, u_input.a.x), select(vec3<u32>(1u, var_0.d.x, 32406u), vec3<u32>(var_0.d.x, global2.a, 4294967295u), !vec3<bool>(global4.a.x, var_0.c.a.x, global3.a.x)))));
    var var_3 = var_1.wwz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-153f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(411f * var_2.a))))), u_input.a.xz, vec4<i32>(_wgslsmith_clamp_i32(abs(_wgslsmith_sub_i32(1i, 9333i)), firstTrailingBit(min(16143i, 1i)), -25258i), firstTrailingBit(_wgslsmith_mult_i32(i32(-1i) * -16832i, global1[_wgslsmith_index_u32(min(4294967295u, var_2.d.x), 7u)])), u_input.d.x, _wgslsmith_mult_i32(u_input.c, global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(var_0.d, vec3<u32>(u_input.a.x, 80458u, var_2.d.x)), 7u)])), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(1342f, -721f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_2.a))))), _wgslsmith_clamp_u32(var_2.d.x, 17716u, abs(u_input.b.x)));
}

