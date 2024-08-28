struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, 2147483647i, i32(-2147483648), 2799i);

var<private> global1: array<vec2<i32>, 11>;

var<private> global2: array<Struct_2, 24>;

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: f32) -> vec4<bool> {
    var var_0 = arg_1.b;
    var var_1 = -vec3<i32>(i32(-1i) * -5972i, -_wgslsmith_mod_i32(-2147483647i, 22434i), ~min(6328i, u_input.e.x)) | -vec3<i32>(u_input.c.x, _wgslsmith_div_i32(-1i >> (1u % 32u), global0.x), _wgslsmith_sub_i32(~u_input.c.x, global0.x));
    let var_2 = Struct_2(countOneBits(vec4<u32>(26190u, 50099u, arg_1.a.x, ~u_input.d)), arg_2.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(1158f)), var_0.b, true)) + 1f), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_3)) - arg_2.c)), arg_0.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2000f)) * _wgslsmith_f_op_f32(select(arg_2.b.a, arg_0.a, false))), 1637f)));
    let var_3 = _wgslsmith_div_i32(max(-(var_1.x >> (var_2.a.x % 32u)), ~(~26438i) ^ ((global0.x ^ 34527i) << (u_input.d % 32u))), firstTrailingBit(~(-_wgslsmith_dot_vec2_i32(u_input.c.ww, u_input.e.xy))));
    global1 = array<vec2<i32>, 11>();
    return !(!vec4<bool>(_wgslsmith_sub_u32(arg_1.a.x, var_2.a.x) == 39066u, all(vec3<bool>(true, true, true)), false, (var_2.a.x > arg_1.a.x) && any(vec3<bool>(true, true, false))));
}

fn func_2() -> f32 {
    var var_0 = true;
    let var_1 = !vec3<bool>(any(select(func_3(Struct_1(global3.b, 534f), Struct_2(vec4<u32>(1u, u_input.a, 0u, 4294967295u), Struct_1(global3.a, 1108f), -1216f, Struct_1(global3.a, global3.a), vec2<f32>(-2565f, -1455f)), Struct_2(vec4<u32>(65511u, u_input.d, u_input.b, u_input.b), Struct_1(global3.b, global3.b), global3.b, Struct_1(1000f, global3.a), vec2<f32>(global3.a, global3.b)), 129f), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true))), all(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), func_3(Struct_1(-293f, global3.b), global2[_wgslsmith_index_u32(u_input.d, 24u)], global2[_wgslsmith_index_u32(u_input.a, 24u)], 587f).xz, vec2<bool>(true, true))), !any(vec3<bool>(true, true, true)));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.b)));
}

fn func_1() -> bool {
    global3 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global3.b), 1000f)), _wgslsmith_f_op_f32(-403f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-277f)), _wgslsmith_f_op_f32(func_2())))));
    global3 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), -1000f));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1431f)))));
    return all(vec2<bool>(true, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b, _wgslsmith_f_op_f32(923f - -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global3.b))), _wgslsmith_f_op_f32(-global3.a))));
    let var_1 = all(select(!vec3<bool>(func_1(), true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), false), vec3<bool>(true, true, true)), !vec3<bool>(true, true, global0.x <= 16378i)));
    let var_2 = Struct_1(global3.b, 1000f);
    global3 = Struct_1(-338f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b + var_0.x)), _wgslsmith_f_op_f32(-global3.a), all(select(vec4<bool>(var_1, false, false, var_1), vec4<bool>(false, var_1, var_1, var_1), false)))))));
    var var_3 = global2[_wgslsmith_index_u32(1u >> ((25572u ^ select(4294967295u, _wgslsmith_sub_u32(abs(u_input.d), abs(0u)), 1i >= firstLeadingBit(u_input.c.x))) % 32u), 24u)];
    var var_4 = ~u_input.c.yz;
    var var_5 = Struct_2(~select(var_3.a, vec4<u32>(_wgslsmith_sub_u32(0u, var_3.a.x), ~4294967295u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.a.x, 111806u, u_input.b, 18999u), vec4<u32>(48694u, u_input.d, var_3.a.x, 4294967295u))), vec4<bool>(!var_1, false, all(vec2<bool>(var_1, true)), u_input.b < 57565u)), Struct_1(_wgslsmith_f_op_f32(1461f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x)))), global3.b), global3.a, Struct_1(global3.b, _wgslsmith_f_op_f32(step(global3.b, _wgslsmith_f_op_f32(1121f + -399f)))), _wgslsmith_f_op_vec2_f32(var_0.yx + _wgslsmith_f_op_vec2_f32(var_3.e - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(var_0.xz, var_3.e, true)), _wgslsmith_f_op_vec2_f32(floor(var_0.yy)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0, 1u, ~min(var_3.a.yzw, _wgslsmith_mod_vec3_u32(var_3.a.zwz, ~vec3<u32>(0u, u_input.a, 0u))), _wgslsmith_f_op_f32(global3.b * 487f), var_3.a.x);
}

