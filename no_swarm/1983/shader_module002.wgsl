struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: f32,
}

struct Struct_5 {
    a: f32,
    b: vec3<i32>,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-298f, 1000f, 1762f, 830f);

var<private> global1: u32;

var<private> global2: array<i32, 29> = array<i32, 29>(-11231i, 0i, 110888i, -17148i, 7695i, 16366i, 24490i, -4341i, 0i, i32(-2147483648), -47816i, -26684i, -1936i, 1i, -36182i, i32(-2147483648), 1i, 1i, i32(-2147483648), -13750i, 3154i, 19464i, -1i, 1i, 12073i, -4443i, 15016i, 29860i, -18065i);

var<private> global3: Struct_5;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4) -> bool {
    return any(select(!vec4<bool>(true, select(false, true, global3.c), global3.c, true), !(!(!vec4<bool>(false, global3.c, true, global3.c))), !(!select(vec4<bool>(global3.c, false, false, global3.c), vec4<bool>(global3.c, false, global3.c, false), vec4<bool>(true, global3.c, global3.c, false)))));
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    global1 = _wgslsmith_mult_u32(_wgslsmith_add_u32(global3.d.a.x, 4294967295u), global3.d.a.x);
    let var_0 = Struct_1(~_wgslsmith_sub_vec4_u32(min(vec4<u32>(global3.d.a.x, 78904u, global3.d.a.x, global3.d.a.x), _wgslsmith_mod_vec4_u32(global3.d.a, vec4<u32>(global3.d.a.x, 1u, 57408u, global3.d.a.x))), vec4<u32>(~global3.d.a.x, _wgslsmith_mod_u32(32755u, 34483u), 91610u, ~41035u)), -2147483647i);
    var var_1 = ~14056u;
    var var_2 = Struct_4(1u, Struct_2(Struct_1(vec4<u32>(_wgslsmith_dot_vec3_u32(global3.d.a.yyy, vec3<u32>(global3.d.a.x, global3.d.a.x, 0u)), _wgslsmith_dot_vec2_u32(global3.d.a.xw, global3.d.a.xw), 1u, 3551u), arg_0.x)), _wgslsmith_f_op_f32(select(-1355f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1235f), global0.x) * global3.a), func_3(Struct_4(~global3.d.a.x, Struct_2(var_0), _wgslsmith_f_op_f32(step(-1633f, 242f))), Struct_4(_wgslsmith_dot_vec3_u32(global3.d.a.yzz, var_0.a.xyy), Struct_2(Struct_1(global3.d.a, arg_0.x)), _wgslsmith_f_op_f32(1152f + global3.a))))));
    var var_3 = Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(global0.ywx)), _wgslsmith_f_op_vec3_f32(-global0.xwy), true)) + global0.zyx), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.c, 1907f, var_2.c), global0.yxx)))))), var_0, abs(vec3<i32>(_wgslsmith_clamp_i32(arg_0.x, arg_0.x, -2147483647i), arg_0.x, reverseBits(7227i)) & select(global3.b ^ vec3<i32>(global3.d.b, var_2.b.a.b, 29603i), global3.b, true)), var_2.b, Struct_1(var_0.a, abs(1635i)));
    return global3.d;
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    global1 = ~(~global3.d.a.x);
    global0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -203f))))), global3.a, _wgslsmith_f_op_f32(-global3.a), global0.x);
    global1 = ~(~arg_0.a.a.x);
    var var_0 = _wgslsmith_f_op_f32(sign(-976f));
    var var_1 = func_2(max(global3.b.yz, select(select(vec2<i32>(2147483647i, 49309i), _wgslsmith_mult_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 29u)], u_input.a), vec2<i32>(u_input.a, arg_0.a.b)), !vec2<bool>(false, global3.c)), firstLeadingBit(vec2<i32>(arg_0.a.b, 24436i)) ^ vec2<i32>(global2[_wgslsmith_index_u32(41567u, 29u)], global2[_wgslsmith_index_u32(arg_0.a.a.x, 29u)]), true)));
    return Struct_3(vec3<f32>(_wgslsmith_f_op_f32(global0.x * -1000f), global3.a, global0.x), func_2(-(~_wgslsmith_div_vec2_i32(global3.b.yx, global3.b.zy))), global3.b, arg_0, Struct_1(var_1.a, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(arg_0.a.a.x, 5126u, arg_0.a.a.x, arg_0.a.a.x), ~global3.d.a), vec4<u32>(_wgslsmith_mod_u32(arg_0.a.a.x, 55778u), 0u, _wgslsmith_sub_u32(arg_0.a.a.x, global3.d.a.x), var_1.a.x)), 29u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_2(Struct_1(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(global3.d.a, global3.d.a), _wgslsmith_div_vec4_u32(global3.d.a, global3.d.a)), _wgslsmith_dot_vec2_i32(~global3.b.xy, vec2<i32>(2147483647i, 681i) | vec2<i32>(global3.d.b, 43261i)))));
    global3 = Struct_5(_wgslsmith_f_op_f32(round(global0.x)), global3.b, true, var_0.b);
    var var_1 = true;
    var_1 = true;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-357f, 1000f))))) + _wgslsmith_f_op_f32(global0.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0.x, 726f, global3.c)), _wgslsmith_f_op_f32(-global3.a)))), var_0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1508f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(global3.a - 1173f)) * 203f)), -1000f, ~19660i);
}

