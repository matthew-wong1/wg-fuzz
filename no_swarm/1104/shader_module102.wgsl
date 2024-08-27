struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(vec3<bool>(true, true, true), 805f, vec2<u32>(63070u, 1u)), Struct_2(vec3<bool>(true, false, false), 2134f, vec2<u32>(1u, 56869u)), Struct_2(vec3<bool>(false, false, false), -1229f, vec2<u32>(4294967295u, 4294967295u)), Struct_2(vec3<bool>(true, true, true), -2579f, vec2<u32>(1u, 4294967295u)), Struct_2(vec3<bool>(false, true, false), 1083f, vec2<u32>(1186u, 1u)), Struct_2(vec3<bool>(true, true, false), 907f, vec2<u32>(0u, 35861u)), Struct_2(vec3<bool>(false, true, false), 178f, vec2<u32>(1u, 0u)), Struct_2(vec3<bool>(false, true, false), -582f, vec2<u32>(1908u, 4294967295u)), Struct_2(vec3<bool>(true, true, true), -1701f, vec2<u32>(35235u, 19928u)), Struct_2(vec3<bool>(true, false, true), 741f, vec2<u32>(36331u, 4294967295u)), Struct_2(vec3<bool>(false, true, true), 1938f, vec2<u32>(1u, 0u)), Struct_2(vec3<bool>(false, false, false), -824f, vec2<u32>(0u, 4294967295u)), Struct_2(vec3<bool>(false, false, true), 506f, vec2<u32>(70088u, 39312u)), Struct_2(vec3<bool>(false, true, false), 1020f, vec2<u32>(26118u, 71340u)), Struct_2(vec3<bool>(false, true, false), 1461f, vec2<u32>(4294967295u, 0u)), Struct_2(vec3<bool>(true, false, false), 1653f, vec2<u32>(4294967295u, 4294967295u)), Struct_2(vec3<bool>(false, false, false), -1677f, vec2<u32>(1u, 4294967295u)), Struct_2(vec3<bool>(true, true, true), -1058f, vec2<u32>(52103u, 0u)), Struct_2(vec3<bool>(false, false, true), 418f, vec2<u32>(1u, 4294967295u)));

var<private> global2: Struct_2 = Struct_2(vec3<bool>(true, true, true), 621f, vec2<u32>(13947u, 0u));

var<private> global3: array<bool, 1>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32) -> Struct_3 {
    var var_0 = Struct_2(vec3<bool>(true, all(!vec4<bool>(global3[_wgslsmith_index_u32(1u, 1u)], false, true, true)) | all(vec3<bool>(global2.a.x, true, global3[_wgslsmith_index_u32(1u, 1u)])), !any(select(vec3<bool>(global2.a.x, true, global3[_wgslsmith_index_u32(u_input.b.x, 1u)]), vec3<bool>(false, global2.a.x, global2.a.x), global3[_wgslsmith_index_u32(3793u, 1u)]))), global2.b, vec2<u32>(global2.c.x, arg_0));
    return Struct_3(global2.b, Struct_1(~_wgslsmith_mod_vec2_i32(vec2<i32>(-25300i, 1i), -u_input.c), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.b * -881f), _wgslsmith_f_op_f32(var_0.b + -979f), -1191f, _wgslsmith_f_op_f32(-177f * var_0.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-233f, 262f, -636f, var_0.b))), all(select(vec4<bool>(var_0.a.x, var_0.a.x, global2.a.x, global2.a.x), select(vec4<bool>(true, global2.a.x, global3[_wgslsmith_index_u32(u_input.b.x, 1u)], global2.a.x), vec4<bool>(true, false, global2.a.x, true), vec4<bool>(true, true, true, var_0.a.x)), select(vec4<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 1u)], true, false), vec4<bool>(global2.a.x, true, true, global3[_wgslsmith_index_u32(1409u, 1u)]), vec4<bool>(true, true, global3[_wgslsmith_index_u32(4294967295u, 1u)], global3[_wgslsmith_index_u32(arg_0, 1u)]))))), Struct_1(firstLeadingBit(select(vec2<i32>(u_input.c.x, 0i), vec2<i32>(18159i, u_input.a), select(global2.a.yz, vec2<bool>(var_0.a.x, false), var_0.a.x))), vec4<f32>(3287f, _wgslsmith_f_op_f32(step(var_0.b, _wgslsmith_f_op_f32(step(global2.b, global2.b)))), global2.b, var_0.b), true), Struct_1(u_input.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(743f, -169f, global2.b, global2.b) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-968f, -283f, global2.b, -622f)))) + vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.b)), _wgslsmith_f_op_f32(global2.b + 131f), _wgslsmith_f_op_f32(ceil(2632f)), 1220f)), global2.a.x), select(!vec3<bool>(any(vec3<bool>(false, true, global2.a.x)), !global2.a.x, var_0.b <= -286f), var_0.a, all(select(!var_0.a, select(vec3<bool>(true, global2.a.x, true), vec3<bool>(var_0.a.x, global2.a.x, false), var_0.a.x), true))));
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    let var_0 = func_2(u_input.b.x);
    let var_1 = ~u_input.b.zzy >> (u_input.b.xww % vec3<u32>(32u));
    let var_2 = var_0.b.b.xxy;
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~arg_0.c, arg_0.c), 19u)];
    var var_4 = _wgslsmith_mult_i32(0i, countOneBits(0i));
    return var_0;
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_3) -> vec3<bool> {
    global0 = ~(-15232i);
    let var_0 = global2.c.x;
    let var_1 = global3[_wgslsmith_index_u32(min(_wgslsmith_mod_u32(u_input.b.x << (global2.c.x % 32u), u_input.b.x), global2.c.x), 1u)];
    var var_2 = Struct_2(!vec3<bool>(true, arg_2.e.x, 469f <= _wgslsmith_f_op_f32(-arg_0.x)), -122f, _wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(4294967295u, global2.c.x) ^ min(u_input.b.yy, u_input.b.yy)), ~vec2<u32>(global2.c.x, 4294967295u)));
    var var_3 = arg_2.b.a;
    return !var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -43336i;
    let var_1 = Struct_1(u_input.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.b, 623f, 1378f, -366f))))))), global2.a.x);
    let var_2 = _wgslsmith_f_op_f32(sign(var_1.b.x));
    let var_3 = _wgslsmith_add_i32(38195i, -(i32(-1i) * -43265i));
    var var_4 = Struct_2(select(!(!global2.a), func_3(_wgslsmith_f_op_vec2_f32(var_1.b.xx - var_1.b.ww), 0i, func_1(global1[_wgslsmith_index_u32(global2.c.x, 19u)])), var_1.c), var_2, vec2<u32>(7737u, _wgslsmith_clamp_u32(~(u_input.b.x >> (u_input.b.x % 32u)), u_input.b.x, 10932u)));
    let var_5 = func_1(global1[_wgslsmith_index_u32(~var_4.c.x, 19u)]);
    var var_6 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1000f), reverseBits(vec4<i32>(5731i, _wgslsmith_dot_vec4_i32(vec4<i32>(-72925i, -11059i, -87577i, var_3), vec4<i32>(-38541i, var_0, u_input.a, var_1.a.x)), -25790i & (u_input.c.x ^ -31977i), var_1.a.x)), _wgslsmith_mod_i32(var_0, i32(-1i) * -(~var_0)));
}

