struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_4 = Struct_4(Struct_2(vec2<u32>(35423u, 17787u), vec2<bool>(true, false), -1000f));

var<private> global2: Struct_2 = Struct_2(vec2<u32>(0u, 713u), vec2<bool>(false, true), 260f);

var<private> global3: array<vec3<i32>, 17>;

var<private> global4: array<u32, 14> = array<u32, 14>(4294967295u, 1u, 1761u, 4294967295u, 33674u, 10079u, 0u, 4294967295u, 6409u, 24190u, 1u, 0u, 1u, 35291u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-1223f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c) * -2725f))), _wgslsmith_f_op_f32(1278f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.c * global1.a.c))))));
    var var_1 = reverseBits(vec2<i32>(~(_wgslsmith_add_i32(0i, u_input.b.x) & u_input.e), -48424i));
    var var_2 = _wgslsmith_dot_vec4_i32(u_input.b, ~u_input.b);
    var var_3 = !(-1i <= _wgslsmith_sub_i32(var_1.x, u_input.e));
    var_1 = (vec2<i32>(1i, _wgslsmith_mod_i32(select(0i, 17590i, true), -2147483647i)) | u_input.b.yw) >> (vec2<u32>(countOneBits(~global1.a.a.x), ~56838u) % vec2<u32>(32u));
    return select(select(!vec4<bool>(all(vec4<bool>(global2.b.x, true, false, global2.b.x)), all(vec3<bool>(false, false, true)), global1.a.b.x, true), vec4<bool>(false, any(select(vec4<bool>(global1.a.b.x, global2.b.x, true, global2.b.x), vec4<bool>(false, global1.a.b.x, global1.a.b.x, global2.b.x), vec4<bool>(false, global2.b.x, global2.b.x, true))), select(!global0.x, false, !global0.x), global2.b.x), !global0.x), vec4<bool>(true, !select(true, !global0.x, all(global0.yzz)), all(!select(global1.a.b, global1.a.b, vec2<bool>(true, true))), true), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), global1.a.b.x), vec4<bool>(true != (global0.x || false), all(!global0.zy), true, global1.a.b.x), vec4<bool>(!(!global2.b.x), true || global0.x, true, all(vec3<bool>(global2.b.x, true, global2.b.x)))));
}

fn func_2(arg_0: i32, arg_1: vec4<bool>) -> vec4<bool> {
    global2 = global1.a;
    global0 = !select(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.c))), select(select(!arg_1, arg_1, global2.b.x), arg_1, global2.b.x), !(!(false || arg_1.x)));
    var var_0 = Struct_4(global1.a);
    let var_1 = ~global2.a;
    global0 = !arg_1;
    return !(!(!vec4<bool>(true, all(arg_1.wzw), true, var_0.a.b.x)));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: vec4<bool>) -> Struct_3 {
    let var_0 = Struct_1(global0.xx, u_input.c.zy, false);
    let var_1 = vec3<i32>(~firstTrailingBit(~abs(8682i)), u_input.e, -21016i ^ u_input.e);
    var var_2 = var_1;
    global1 = Struct_4(Struct_2(min(_wgslsmith_clamp_vec2_u32(~vec2<u32>(global2.a.x, 0u), ~global2.a, vec2<u32>(0u, global4[_wgslsmith_index_u32(global1.a.a.x, 14u)])), reverseBits(u_input.a.ww)), vec2<bool>(all(global0.wxy) && true, func_2(var_1.x, vec4<bool>(false, true, false, arg_2.x)).x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-693f + _wgslsmith_f_op_f32(trunc(arg_1.x)))))));
    let var_3 = _wgslsmith_dot_vec4_u32(~(~select(~vec4<u32>(28311u, u_input.d, u_input.a.x, global4[_wgslsmith_index_u32(0u, 14u)]), abs(vec4<u32>(1u, global1.a.a.x, global2.a.x, global4[_wgslsmith_index_u32(u_input.a.x, 14u)])), !arg_2)), select(~firstLeadingBit(max(vec4<u32>(4286u, global1.a.a.x, 4294967295u, global2.a.x), u_input.a)), ~u_input.a, false));
    return Struct_3(Struct_1(!vec2<bool>(arg_0.x, true), ~countOneBits(~global1.a.a), true || global2.b.x), var_0, Struct_2(global2.a | vec2<u32>(max(var_3, 0u), ~u_input.c.x), !select(!arg_0, func_3(-359f).xx, arg_2.zz), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(475f + global2.c)))));
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: i32) -> Struct_3 {
    var var_0 = 1i;
    let var_1 = Struct_2(vec2<u32>(u_input.c.x, countOneBits(func_4(func_3(global1.a.c).wy, vec2<f32>(-723f, global2.c), !vec4<bool>(global2.b.x, global2.b.x, global0.x, global1.a.b.x)).c.a.x)), vec2<bool>(false, any(!vec2<bool>(arg_1, global2.b.x)) && (u_input.e > _wgslsmith_add_i32(15548i, 0i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2558f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1183f)), 894f)))));
    global1 = Struct_4(func_4(!(!vec2<bool>(global1.a.b.x, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-957f, global1.a.c)))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -568f), -248f)), func_3(-2219f)).c);
    var var_2 = Struct_4(Struct_2(global2.a, var_1.b, func_4(func_2(15295i, vec4<bool>(arg_0.c.b.x, true, global0.x, true)).wx, vec2<f32>(global2.c, _wgslsmith_f_op_f32(-arg_0.c.c)), func_2(0i, !vec4<bool>(false, arg_0.a.a.x, false, global0.x))).c.c));
    global4 = array<u32, 14>();
    return arg_0;
}

fn func_1() -> u32 {
    var var_0 = vec3<u32>(global2.a.x, 112047u, 4294967295u) | (((~u_input.c ^ max(vec3<u32>(39644u, 22746u, u_input.a.x), vec3<u32>(7378u, 23948u, global4[_wgslsmith_index_u32(global2.a.x, 14u)]))) >> (max(u_input.a.yzw, firstTrailingBit(vec3<u32>(30707u, 12695u, 0u))) % vec3<u32>(32u))) << (u_input.c % vec3<u32>(32u)));
    let var_1 = Struct_4(Struct_2(u_input.a.zw, !select(global0.wy, vec2<bool>(true, global2.b.x), true), global2.c));
    let var_2 = func_5(func_4(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(454f, _wgslsmith_f_op_f32(f32(-1f) * -681f)))), func_2(-(~u_input.b.x), vec4<bool>(!global0.x, global2.b.x || false, var_1.a.b.x | false, true))), any(!vec3<bool>(var_1.a.b.x, global0.x, all(global0.yzw))), u_input.e);
    global3 = array<vec3<i32>, 17>();
    let var_3 = Struct_4(func_4(global0.yz, vec2<f32>(_wgslsmith_f_op_f32(global2.c - -1511f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -645f))), vec4<bool>(any(vec4<bool>(true, global2.b.x, true, true)), ~u_input.e < firstTrailingBit(34735i), func_4(!var_1.a.b, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.a.c, 1089f))), func_3(2312f)).c.b.x, firstLeadingBit(u_input.e) >= 2147483647i)).c);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(~global2.a, vec2<bool>(global0.x, global2.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -456f))), global2.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(global1.a.a.x, min(~global1.a.a.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 52053u, 0u, global1.a.a.x), u_input.a) % 32u), global4[_wgslsmith_index_u32(~(50112u << (global4[_wgslsmith_index_u32(global2.a.x, 14u)] % 32u)), 14u)]), ~(~0u) ^ u_input.a.x), u_input.a, ~func_1(), _wgslsmith_div_vec4_u32(~_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(20499u, global4[_wgslsmith_index_u32(global2.a.x, 14u)], global1.a.a.x, 0u)), max(u_input.a, vec4<u32>(1u, 1u, global4[_wgslsmith_index_u32(global2.a.x, 14u)], global1.a.a.x))), u_input.a));
}

