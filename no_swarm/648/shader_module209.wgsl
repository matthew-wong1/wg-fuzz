struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec3<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: Struct_2,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
    c: i32,
    d: vec4<u32>,
}

struct Struct_5 {
    a: i32,
    b: vec2<f32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<i32, 1>;

var<private> global2: array<i32, 29>;

var<private> global3: Struct_3 = Struct_3(-1000f, vec3<bool>(false, true, true), Struct_2(Struct_1(vec3<f32>(-253f, -1020f, 1262f), 32541u, vec3<bool>(false, false, false), vec2<f32>(-1731f, 331f))), Struct_2(Struct_1(vec3<f32>(-1170f, 300f, -679f), 4294967295u, vec3<bool>(false, true, true), vec2<f32>(668f, 213f))), Struct_2(Struct_1(vec3<f32>(-586f, 874f, 1215f), 56719u, vec3<bool>(false, false, true), vec2<f32>(1123f, -390f))));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: Struct_2) -> vec3<bool> {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(global3.c.a.a.yz, vec2<f32>(_wgslsmith_div_f32(-318f, -1721f), arg_2.a.a.x)))), Struct_2(global3.c.a), -2147483647i, _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, firstLeadingBit(~global3.d.a.b), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.a.b, global3.e.a.b, 0u), vec3<u32>(arg_2.a.b, 64211u, arg_2.a.b), vec3<u32>(arg_2.a.b, u_input.b, arg_2.a.b)), firstLeadingBit(vec3<u32>(52962u, global3.d.a.b, arg_2.a.b))), ~reverseBits(41965u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(68024u, arg_0.c.a.b, 4294967295u, arg_0.d.a.b), vec4<u32>(arg_0.e.a.b, arg_2.a.b, 4294967295u, 1u)), max(vec4<u32>(17510u, global3.d.a.b, arg_0.c.a.b, arg_2.a.b), vec4<u32>(global3.e.a.b, 0u, arg_0.c.a.b, 43597u))), vec4<u32>(arg_0.c.a.b & 32359u, 4294967295u, ~4294967295u, ~40718u), reverseBits(select(vec4<u32>(arg_2.a.b, 1u, arg_0.d.a.b, 1u), vec4<u32>(global3.c.a.b, arg_0.d.a.b, u_input.b, 39827u), arg_0.b.x)))));
    var var_1 = Struct_5(reverseBits(arg_1), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(355f, arg_0.e.a.d.x)), -686f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(375f + -1760f)))));
    global2 = array<i32, 29>();
    let var_2 = firstTrailingBit(arg_1);
    let var_3 = var_1.b.x;
    return select(vec3<bool>((i32(-1i) * -var_2) < -2147483647i, true | (false & (var_0.b.a.c.x & global3.d.a.c.x)), (true | !global0.x) | (_wgslsmith_f_op_f32(trunc(-221f)) > _wgslsmith_f_op_f32(round(var_0.b.a.a.x)))), var_0.b.a.c, true);
}

fn func_2(arg_0: vec3<u32>) -> vec4<bool> {
    var var_0 = 1000f;
    global3 = Struct_3(-809f, select(vec3<bool>(global0.x & all(global0.yyw), true, !any(vec2<bool>(false, global0.x))), func_3(Struct_3(global3.c.a.a.x, select(global0.zzy, global0.yzz, false), Struct_2(Struct_1(vec3<f32>(global3.d.a.d.x, -238f, 166f), 4430u, global0.xzz, global3.d.a.a.yz)), global3.e, Struct_2(Struct_1(global3.d.a.a, arg_0.x, global0.wxx, vec2<f32>(global3.e.a.a.x, -636f)))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 1u, arg_0.x, u_input.b), vec4<u32>(0u, 11993u, u_input.a, global3.d.a.b)), 1u)], Struct_2(global3.d.a)), vec3<bool>(true, global3.d.a.c.x, abs(u_input.c) >= u_input.c)), global3.e, global3.c, global3.c);
    global1 = array<i32, 1>();
    var var_1 = Struct_5(global2[_wgslsmith_index_u32(4294967295u, 29u)], global3.e.a.d, _wgslsmith_f_op_f32(-global3.d.a.a.x));
    var var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(select(var_1.b, _wgslsmith_f_op_vec2_f32(global3.c.a.d * vec2<f32>(1f, -1504f)), global3.c.a.c.zz)), Struct_2(global3.e.a), ~global2[_wgslsmith_index_u32(min(40364u, 1u), 29u)], min(min(vec4<u32>(global3.d.a.b, 53751u, global3.d.a.b, arg_0.x), ~vec4<u32>(14004u, u_input.b, 5320u, arg_0.x)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(29179u, 1u, 17084u, 0u), abs(vec4<u32>(4294967295u, 59339u, global3.d.a.b, 4294967295u))) % vec4<u32>(32u)), vec4<u32>(~(~arg_0.x), arg_0.x, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(4294967295u, 4294967295u, u_input.b, u_input.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(79631u, global3.d.a.b, 7071u, u_input.b), vec4<u32>(u_input.b, 1213u, global3.e.a.b, 27374u))), _wgslsmith_sub_u32(arg_0.x, global3.d.a.b))));
    return vec4<bool>(global3.c.a.c.x, any(!vec4<bool>(global3.b.x, !global0.x, false, !var_2.b.a.c.x)), true, global0.x);
}

fn func_1(arg_0: vec2<u32>) -> bool {
    let var_0 = firstLeadingBit(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, arg_0.x, 1u), ~(vec3<u32>(u_input.a, arg_0.x, arg_0.x) | vec3<u32>(u_input.a, 4844u, arg_0.x))));
    global0 = !func_2(vec3<u32>(~firstTrailingBit(arg_0.x), 4294967295u, 19793u));
    let var_1 = abs(_wgslsmith_div_vec4_u32(vec4<u32>(1u, _wgslsmith_sub_u32(var_0.x, arg_0.x), u_input.a, _wgslsmith_add_u32(var_0.x, u_input.a | 12178u)), ~(vec4<u32>(93731u, 82659u, 20546u, 10552u) & ~vec4<u32>(global3.c.a.b, u_input.b, 58013u, 49956u))));
    let var_2 = global3.e;
    global1 = array<i32, 1>();
    return var_2.a.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 1>();
    let var_0 = !func_1(vec2<u32>(5730u, _wgslsmith_add_u32(u_input.a >> (global3.c.a.b % 32u), 27477u)));
    var var_1 = Struct_4(vec2<f32>(404f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1009f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1672f))))), Struct_2(global3.d.a), ~global1[_wgslsmith_index_u32(u_input.a, 1u)], ~firstLeadingBit(vec4<u32>(20341u, _wgslsmith_sub_u32(u_input.b, 0u), countOneBits(global3.c.a.b), 0u | u_input.a)));
    var var_2 = vec4<u32>(u_input.b, 1u, ~(~abs(global3.c.a.b | 1u)), global3.d.a.b);
    var var_3 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(1u, 67316u), var_1.d.x, 3446u, _wgslsmith_clamp_u32(var_1.d.x, u_input.b, 88109u)), ~(~vec4<u32>(31825u, 18353u, 54958u, var_1.b.a.b))) << (~abs(0u) % 32u);
    let var_4 = var_1.d;
    global3 = Struct_3(global3.a, !var_1.b.a.c, Struct_2(var_1.b.a), Struct_2(Struct_1(_wgslsmith_div_vec3_f32(global3.d.a.a, vec3<f32>(-1626f, global3.c.a.a.x, var_1.a.x)), min(global3.e.a.b, var_2.x ^ var_4.x), var_1.b.a.c, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_1.a), vec2<f32>(global3.e.a.a.x, -215f))))), global3.e);
    let var_5 = Struct_5(max(-45361i, _wgslsmith_sub_i32(_wgslsmith_sub_i32(min(32477i, 1i), global2[_wgslsmith_index_u32(4583u, 29u)] & global1[_wgslsmith_index_u32(112605u, 1u)]), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~var_1.b.a.b, reverseBits(u_input.a)), 29u)])), global3.d.a.a.zy, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.a))));
    var var_6 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(select(1039f, 1657f, var_1.b.a.c.x)), _wgslsmith_f_op_f32(1022f - -2250f), _wgslsmith_f_op_f32(max(-1518f, var_5.b.x)), 1447f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_5.b.x, var_1.b.a.d.x, var_1.a.x, 566f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-276f, var_1.b.a.a.x, global3.d.a.d.x, var_5.c)))))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_5.c * global3.a), _wgslsmith_f_op_f32(-1084f + global3.e.a.a.x)), _wgslsmith_f_op_f32(max(var_1.b.a.a.x, var_1.a.x)), var_1.a.x), vec4<f32>(1f, var_1.a.x, 873f, global3.d.a.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_6.x, u_input.a);
}

