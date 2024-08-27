struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: bool,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec3<f32>(-564f, -1336f, 1303f), vec4<bool>(false, false, false, true), true, vec4<bool>(false, true, true, true));

var<private> global2: array<vec3<f32>, 16>;

var<private> global3: array<vec4<i32>, 5> = array<vec4<i32>, 5>(vec4<i32>(-27301i, 75049i, -1i, 17668i), vec4<i32>(1i, 10849i, 8667i, -31196i), vec4<i32>(1i, -41860i, i32(-2147483648), 1i), vec4<i32>(0i, 1i, 33962i, -17526i), vec4<i32>(0i, -20485i, -1i, 11924i));

var<private> global4: Struct_1 = Struct_1(vec3<f32>(717f, -598f, 1268f), vec4<bool>(false, true, false, true), false, vec4<bool>(false, false, true, true));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: u32) -> vec4<u32> {
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global0.a)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-961f, global4.a.x, -284f) + vec3<f32>(-287f, 280f, -1000f))))), global1.d, 1i >= select(~min(1i, u_input.a), u_input.a, any(vec2<bool>(global4.d.x, global1.c))), select(vec4<bool>(false, !(global1.d.x && false), true, false), select(vec4<bool>(any(global4.d), true, !global0.c, all(vec4<bool>(global0.c, global4.c, false, true))), vec4<bool>(global4.d.x, all(global0.b.wwy), global4.b.x && false, all(vec2<bool>(true, global4.c))), all(select(global4.b, vec4<bool>(global1.d.x, true, global4.d.x, global4.c), global0.d))), all(select(vec4<bool>(false, global4.c, true, false), select(global0.d, vec4<bool>(false, global1.c, true, true), false), any(global1.b.yzw)))));
    global3 = array<vec4<i32>, 5>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-global0.a), vec4<bool>(global1.c, false, all(global1.d), global1.c), 1u >= arg_0, select(!select(global4.b, !global1.d, global1.b.x), vec4<bool>(global0.c, all(vec2<bool>(false, true)), any(vec4<bool>(false, false, false, global4.d.x)), any(vec2<bool>(global4.d.x, global1.c)) == all(vec3<bool>(global4.c, global0.b.x, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-734f * -1053f), 1000f) == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.a.x + 790f)))));
    var_0 = Struct_1(var_0.a, !vec4<bool>(global4.b.x, false & any(vec3<bool>(false, false, true)), global4.b.x, global0.b.x || true), select(1i, 5767i | _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(0i, u_input.a)), false) < (_wgslsmith_dot_vec4_i32(global3[_wgslsmith_index_u32(arg_0 | 0u, 5u)], -vec4<i32>(-29758i, -2147483647i, 32958i, u_input.a)) & -2147483647i), vec4<bool>(!(all(global4.d.ww) | true), global0.c, all(select(!global1.d.zw, !vec2<bool>(true, global1.b.x), true)), !select(global1.c, any(vec4<bool>(false, var_0.b.x, false, global1.b.x)), true)));
    let var_1 = u_input.a;
    return vec4<u32>(~4294967295u >> (1u % 32u), _wgslsmith_div_u32(~arg_0 << (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 4294967295u, arg_0) << (vec3<u32>(arg_0, 1u, arg_0) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, 11408u, arg_0), vec3<u32>(arg_0, arg_0, arg_0))) % 32u), arg_0), ~(0u >> ((~arg_0 & 8745u) % 32u)), 35911u);
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>, arg_3: vec3<f32>) -> vec3<u32> {
    let var_0 = countOneBits(select(~vec4<u32>(4053u, 26366u, arg_2.x, 1u), vec4<u32>(9016u, 0u & arg_2.x, 19088u, _wgslsmith_div_u32(arg_2.x, 28201u)), vec4<bool>(global0.b.x, global4.b.x, select(true, true, global1.b.x), global1.b.x)) ^ _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(15426u, 9670u, arg_2.x, 17695u), ~vec4<u32>(20023u, 4294967295u, 62350u, 0u), func_3(30707u)), vec4<u32>(arg_2.x >> (arg_2.x % 32u), 13307u, max(arg_2.x, 4294967295u), ~1946u)));
    global0 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(166f, _wgslsmith_f_op_f32(trunc(global0.a.x)), _wgslsmith_f_op_f32(ceil(1000f))))), arg_3), !(!global1.d), global1.d.x, vec4<bool>(true, !global1.c, _wgslsmith_f_op_f32(floor(global4.a.x)) >= -482f, any(!vec2<bool>(global1.b.x, false))));
    var var_1 = arg_0;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(min(global2[_wgslsmith_index_u32(58710u, 16u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(global4.a, global1.a)), _wgslsmith_f_op_vec3_f32(-var_1.a), !arg_0.d.x)) * arg_3))), var_1.d, any(arg_0.b.xzx) | false, select(!(!(!vec4<bool>(global1.d.x, global0.b.x, arg_0.d.x, true))), !(!select(arg_0.b, global1.b, var_1.d.x)), all(global0.d.xwz)));
    var var_3 = select(~var_0.xxw, vec3<u32>(var_0.x, 15455u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 4294967295u, var_0.x) & vec4<u32>(0u, 0u, var_0.x, arg_2.x), func_3(arg_2.x))), global4.d.xwx) >> (vec3<u32>(var_0.x, 4294967295u, ~select(min(var_0.x, 95915u), 32324u, true)) % vec3<u32>(32u));
    return var_0.wzz;
}

fn func_1() -> vec3<u32> {
    var var_0 = firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i) | vec3<i32>(i32(-1i) * -2147483647i, 1i, firstLeadingBit(u_input.a)), vec3<i32>(~(-8581i), u_input.a, -1i) >> (func_2(Struct_1(global4.a, vec4<bool>(false, true, true, global4.d.x), global4.c, vec4<bool>(true, global1.c, true, global4.b.x)), u_input.a, vec2<u32>(1u, 1u), global1.a) % vec3<u32>(32u))));
    global4 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(204f, _wgslsmith_f_op_f32(810f * _wgslsmith_f_op_f32(global1.a.x + -372f)), 1490f)), select(vec4<bool>(any(global1.d.xzx), any(global4.d.yx), global1.b.x, false), !global0.d, select(vec4<bool>(all(global4.d), global1.c, any(vec3<bool>(false, true, global4.d.x)), false), select(global1.b, select(global0.d, global1.b, vec4<bool>(global1.c, global4.b.x, true, global0.d.x)), false), all(global0.b))), all(select(select(!vec4<bool>(global0.c, global4.c, true, false), !vec4<bool>(true, false, false, global4.b.x), !global4.d), global1.d, select(select(global4.b, vec4<bool>(false, global4.b.x, global1.d.x, global1.d.x), vec4<bool>(true, global4.d.x, global4.b.x, global1.d.x)), !global4.b, vec4<bool>(true, false, global4.b.x, true)))), !vec4<bool>(select(true, true, true), true & global4.d.x, _wgslsmith_f_op_f32(673f - -1256f) > _wgslsmith_f_op_f32(select(global0.a.x, global0.a.x, true)), global1.b.x));
    let var_1 = vec2<u32>(1u, 1u);
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a.x))), -1341f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global1.a.x))))), !vec4<bool>(any(select(vec3<bool>(false, global1.b.x, global0.c), vec3<bool>(global0.d.x, global1.c, global4.c), vec3<bool>(true, global4.b.x, true))), false && all(vec2<bool>(global1.d.x, global4.b.x)), global0.c || true, all(!global4.b.wzx)), all(global0.d) && true, vec4<bool>(!global1.d.x, var_0.x != ~firstLeadingBit(u_input.a), true, global0.d.x));
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1379f))), _wgslsmith_f_op_f32(-global4.a.x), 652f), var_2.a)), vec4<bool>(all(select(vec3<bool>(global4.b.x, false, true), vec3<bool>(true, true, true), true)), 1u < ~var_1.x, global0.c, var_2.d.x), false, vec4<bool>(!var_2.c, !(!(global4.b.x | false)), ~(~1u) != var_1.x, true));
    return firstTrailingBit(~firstLeadingBit(~vec3<u32>(1u, var_1.x, 29931u) ^ _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 4294967295u, var_1.x), vec3<u32>(var_1.x, 25092u, 120328u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-27676i);
    var var_1 = ~(func_1() ^ vec3<u32>(~16590u, abs(67039u) | func_3(0u).x, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(81354u, 4294967295u, 33607u)), ~vec3<u32>(4294967295u, 35845u, 4294967295u))));
    let var_2 = Struct_1(global1.a, vec4<bool>(true, true, var_0 <= var_0, global4.d.x), all(vec3<bool>(select(global4.c, true, !global0.c), select(true, global1.b.x, global4.d.x) && global1.d.x, false)), global4.d);
    let var_3 = Struct_1(global4.a, select(select(vec4<bool>(any(global4.b.yyw), all(global4.b), any(vec2<bool>(false, false)), true), var_2.d, var_2.b), vec4<bool>(all(global1.b.yy) && global0.c, true, select(global4.c, var_2.c & true, true), true), !(!any(vec4<bool>(global1.b.x, global1.d.x, false, global1.b.x)))), !(var_2.b.x && true), global4.d);
    global2 = array<vec3<f32>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a);
}

