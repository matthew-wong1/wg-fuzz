struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 26> = array<vec4<bool>, 26>(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false));

var<private> global1: array<Struct_2, 24>;

var<private> global2: i32 = -1i;

var<private> global3: i32;

var<private> global4: Struct_1 = Struct_1(vec2<bool>(true, true), vec4<f32>(-1547f, -350f, -1648f, -179f), -1i, vec3<i32>(35385i, i32(-2147483648), 33810i));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec4<f32> {
    global1 = array<Struct_2, 24>();
    global0 = array<vec4<bool>, 26>();
    global1 = array<Struct_2, 24>();
    let var_0 = Struct_2(i32(-1i) * -1i, Struct_1(vec2<bool>(!global4.a.x, any(select(vec3<bool>(global4.a.x, global4.a.x, global4.a.x), vec3<bool>(global4.a.x, true, false), vec3<bool>(false, global4.a.x, false)))), _wgslsmith_f_op_vec4_f32(exp2(global4.b)), reverseBits(-23378i), global4.d), (43107u >> (u_input.a.x % 32u)) & u_input.d);
    let var_1 = _wgslsmith_f_op_f32(-981f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(203f + _wgslsmith_div_f32(var_0.b.b.x, -228f)) + var_0.b.b.x)));
    return _wgslsmith_f_op_vec4_f32(global4.b + _wgslsmith_f_op_vec4_f32(vec4<f32>(148f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.b.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -1020f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-398f, 1000f)))) + vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.b.x), -166f, _wgslsmith_f_op_f32(trunc(global4.b.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-290f - -1000f))))));
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    var var_0 = Struct_2(u_input.b, Struct_1(global4.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global4.b.x, global4.b.x, 975f, global4.b.x), global4.b)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global4.b.x, 811f, -1000f, global4.b.x), vec4<f32>(-388f, global4.b.x, global4.b.x, 994f))), global4.b)), _wgslsmith_sub_i32(global4.d.x, global4.c), global4.d), u_input.d);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.b.b.x))) * -673f);
    var var_2 = Struct_2(abs(_wgslsmith_sub_i32(_wgslsmith_sub_i32(-2147483647i, -1i), min(max(-15518i, -53884i), var_0.b.d.x))), Struct_1(arg_0, _wgslsmith_f_op_vec4_f32(func_3()), 1i, vec3<i32>(_wgslsmith_mod_i32(1i, var_0.a), global4.c, 9253i) | reverseBits(select(vec3<i32>(-12318i, u_input.e, global4.d.x), global4.d, vec3<bool>(true, arg_0.x, var_0.b.a.x)))), ~firstTrailingBit(65445u));
    var var_3 = Struct_2(~global4.d.x, var_0.b, _wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.a ^ vec2<u32>(var_0.c, var_0.c)) | ~vec2<u32>(4294967295u, 17460u), u_input.a));
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-782f))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(step(2043f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1528f + 498f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-global4.b.x)), -668f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(global4.b.x, _wgslsmith_f_op_f32(sign(530f)))))) - _wgslsmith_f_op_f32(abs(var_3.b.b.x))));
    return var_0.b.b.x;
}

fn func_1(arg_0: f32) -> vec3<i32> {
    var var_0 = Struct_1(!(!vec2<bool>(true && global4.a.x, any(global4.a))), global4.b, firstTrailingBit(select(select(~57947i, global4.c, true), _wgslsmith_clamp_i32(-21035i, u_input.b, -18148i >> (0u % 32u)), true)), -global4.d & -firstTrailingBit(vec3<i32>(global4.c, global4.d.x, 14059i)));
    var var_1 = _wgslsmith_f_op_f32(735f - _wgslsmith_div_f32(-777f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec2<bool>(true, true))), _wgslsmith_f_op_f32(-global4.b.x))));
    var var_2 = Struct_2(_wgslsmith_dot_vec2_i32(min(-global4.d.yx | -global4.d.zy, firstLeadingBit(vec2<i32>(var_0.c, u_input.c.x) >> (vec2<u32>(32003u, u_input.a.x) % vec2<u32>(32u)))), select(vec2<i32>(u_input.c.x, 0i), -vec2<i32>(u_input.b, -2147483647i), select(vec2<bool>(false, false), vec2<bool>(var_0.a.x, global4.a.x), vec2<bool>(var_0.a.x, var_0.a.x))) ^ reverseBits(~vec2<i32>(u_input.c.x, 0i))), Struct_1(!select(vec2<bool>(var_0.a.x, var_0.a.x), global4.a, false && global4.a.x), _wgslsmith_f_op_vec4_f32(step(global4.b, _wgslsmith_f_op_vec4_f32(-global4.b))), select(-global4.d.x >> (u_input.a.x % 32u), 1i, var_0.a.x), var_0.d), 18046u);
    global2 = ~global4.d.x;
    let var_3 = var_0.b.x;
    return global4.d;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> u32 {
    global1 = array<Struct_2, 24>();
    var var_0 = !(!select(!vec3<bool>(arg_0.b.a.x, true, global4.a.x), select(!vec3<bool>(arg_1.a.x, true, arg_0.b.a.x), vec3<bool>(global4.a.x, false, false), arg_0.b.a.x), select(!vec3<bool>(arg_0.b.a.x, false, arg_1.a.x), select(vec3<bool>(false, false, arg_0.b.a.x), vec3<bool>(false, global4.a.x, arg_1.a.x), vec3<bool>(false, false, false)), select(vec3<bool>(arg_0.b.a.x, arg_1.a.x, false), vec3<bool>(arg_1.a.x, true, false), false))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1712f), _wgslsmith_f_op_f32(f32(-1f) * -124f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1655f)) * _wgslsmith_f_op_f32(floor(arg_2))), _wgslsmith_f_op_f32(func_2(!select(!vec2<bool>(true, arg_0.b.a.x), select(vec2<bool>(arg_1.a.x, true), vec2<bool>(global4.a.x, true), arg_0.b.a.x), arg_0.b.a.x))));
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2, _wgslsmith_f_op_f32(-var_1.x), arg_0.b.b.x, var_1.x), var_1))));
    return abs(18626u);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~abs(global4.d.x | 41197i);
    global3 = 0i;
    var var_0 = _wgslsmith_add_u32(4294967295u, func_4(global1[_wgslsmith_index_u32(u_input.d, 24u)], Struct_1(vec2<bool>(false, 1162f < global4.b.x), vec4<f32>(335f, global4.b.x, _wgslsmith_f_op_f32(-global4.b.x), -944f), 25320i, func_1(-318f) >> (firstTrailingBit(vec3<u32>(81494u, 3404u, u_input.a.x)) % vec3<u32>(32u))), -797f));
    global2 = ~1i;
    global1 = array<Struct_2, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global4.b.x, global4.b.x, global4.b.x, global4.b.x), _wgslsmith_div_vec4_f32(vec4<f32>(365f, global4.b.x, global4.b.x, 1000f), global4.b))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1113f, 584f, global4.b.x, 160f), global4.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.b.x, 1000f, -103f, global4.b.x))), !vec4<bool>(false, global4.a.x, true, global4.a.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3())), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global4.b.x, -351f, global4.b.x, -1235f)))))));
}

