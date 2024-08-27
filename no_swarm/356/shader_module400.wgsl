struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11> = array<bool, 11>(false, true, false, true, true, true, false, true, true, true, false);

var<private> global1: array<Struct_2, 29>;

var<private> global2: vec2<i32> = vec2<i32>(i32(-2147483648), 60619i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: vec3<f32>) -> vec2<i32> {
    var var_0 = u_input.a;
    let var_1 = global1[_wgslsmith_index_u32(var_0.x, 29u)];
    var_0 = u_input.a;
    global1 = array<Struct_2, 29>();
    var_0 = u_input.b;
    return var_1.d.yx;
}

fn func_3() -> i32 {
    let var_0 = ~(~(vec3<i32>(-1i) * -vec3<i32>(1i, 1i, 1i)));
    let var_1 = ~1u;
    let var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1208f, _wgslsmith_f_op_f32(-961f - 299f)))));
    var var_3 = Struct_2(false | any(vec2<bool>(true, true)), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(~(~var_1) | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 73142u), ~u_input.b.xx), 11u)], false), vec2<u32>(0u, min(1u, _wgslsmith_add_u32(1u, 24661u)) | (23299u << (~u_input.a.x % 32u))), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(12689i, var_0.x, var_0.x, 42362i), ~vec4<i32>(641i, var_0.x, var_0.x, global2.x)), _wgslsmith_div_i32(max(-24040i, var_0.x), var_0.x)), -firstTrailingBit(abs(0i)), 2147483647i, ~6934i));
    var_3 = global1[_wgslsmith_index_u32(abs(var_1), 29u)];
    return _wgslsmith_dot_vec4_i32(firstLeadingBit(select(vec4<i32>(var_3.d.x, global2.x, global2.x, var_0.x), vec4<i32>(-80288i, 2147483647i, var_3.d.x, -2147483647i), false) & _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, var_3.d.x, var_0.x, global2.x), var_3.d)) & _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(1i, 2147483647i), 1i, ~var_3.d.x, -var_0.x), var_3.d), vec4<i32>(var_0.x, -17719i, ~(~(-25658i ^ global2.x)), -var_3.d.x >> (58256u % 32u)));
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    global1 = array<Struct_2, 29>();
    global0 = array<bool, 11>();
    global1 = array<Struct_2, 29>();
    global0 = array<bool, 11>();
    global2 = _wgslsmith_div_vec2_i32(max(func_2(_wgslsmith_f_op_f32(1855f - -301f), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -1228f, arg_0.x) * vec3<f32>(arg_0.x, 1679f, -1029f))), vec2<i32>(func_3(), global2.x)), vec2<i32>(countOneBits(_wgslsmith_sub_i32(global2.x, global2.x)), global2.x >> (~4520u % 32u))) << ((select(vec2<u32>(4294967295u, firstLeadingBit(u_input.a.x)), ~(vec2<u32>(0u, 4294967295u) | vec2<u32>(u_input.b.x, u_input.b.x)), true) << (u_input.b.zx % vec2<u32>(32u))) % vec2<u32>(32u));
    return Struct_1(select(!(!select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(5719u, 11u)]), global0[_wgslsmith_index_u32(0u, 11u)])), select(select(select(vec2<bool>(true, false), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 11u)]), vec2<bool>(true, false)), select(vec2<bool>(true, global0[_wgslsmith_index_u32(32778u, 11u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 11u)], false), global0[_wgslsmith_index_u32(27540u, 11u)]), true | global0[_wgslsmith_index_u32(u_input.a.x, 11u)]), vec2<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(30677u, 11u)], true)), !global0[_wgslsmith_index_u32(10787u, 11u)]), false), select(!select(vec2<bool>(true, true), vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 11u)]), vec2<bool>(true, true)), !vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 11u)]), select(!vec2<bool>(global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)]), !vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(u_input.b.x, 11u)]), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, global0[_wgslsmith_index_u32(35289u, 11u)]))))), 1u);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    return select(select(select(select(vec4<bool>(arg_1.a, arg_3.a.x, arg_1.b.x, true), !vec4<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 11u)], false), vec4<bool>(global0[_wgslsmith_index_u32(0u, 11u)], arg_1.a, true, global0[_wgslsmith_index_u32(43143u, 11u)])), !(!vec4<bool>(arg_2.a.x, arg_2.a.x, false, arg_3.a.x)), !select(vec4<bool>(true, arg_1.b.x, global0[_wgslsmith_index_u32(arg_3.b, 11u)], true), vec4<bool>(true, arg_3.a.x, true, arg_2.a.x), vec4<bool>(arg_1.a, false, arg_3.a.x, arg_3.a.x))), select(vec4<bool>(arg_3.a.x && arg_2.a.x, false, true, !arg_3.a.x), select(!vec4<bool>(arg_2.a.x, arg_3.a.x, arg_1.b.x, true), vec4<bool>(arg_2.a.x, true, false, arg_3.a.x), true), select(!vec4<bool>(arg_3.a.x, arg_1.a, arg_1.b.x, global0[_wgslsmith_index_u32(arg_3.b, 11u)]), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(0u, 11u)], arg_2.a.x), vec4<bool>(arg_2.a.x, false, false, false), vec4<bool>(arg_3.a.x, true, true, true)))), select(select(vec4<bool>(false, false, false, true), !vec4<bool>(false, false, arg_3.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 11u)]), vec4<bool>(false, false, arg_2.a.x, arg_3.a.x)), !vec4<bool>(true, global0[_wgslsmith_index_u32(arg_2.b, 11u)], true, false), !arg_1.b.x)), select(!select(select(vec4<bool>(false, arg_2.a.x, arg_3.a.x, arg_1.b.x), vec4<bool>(arg_1.a, true, true, arg_1.a), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, global0[_wgslsmith_index_u32(arg_3.b, 11u)], false, true), vec4<bool>(false, global0[_wgslsmith_index_u32(24117u, 11u)], arg_1.a, arg_2.a.x), vec4<bool>(arg_1.a, false, true, global0[_wgslsmith_index_u32(23570u, 11u)])), true), !select(vec4<bool>(arg_1.b.x, false, true, arg_1.b.x), !vec4<bool>(arg_1.b.x, false, arg_2.a.x, arg_1.b.x), !vec4<bool>(false, true, false, arg_3.a.x)), !(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 11u)], arg_1.b.x, false, true))), !func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-777f, 560f)))).a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 29>();
    let var_0 = func_4(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(global2.x, -21357i) >> (~u_input.a.xz % vec2<u32>(32u)), vec2<i32>(0i, global2.x)), vec2<i32>(global2.x, -(~global2.x))), global1[_wgslsmith_index_u32(1u, 29u)], Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], true), ~u_input.b.x), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1238f))))));
    global0 = array<bool, 11>();
    var var_1 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(615f, 1000f) - vec2<f32>(729f, 243f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1619f, 1115f), vec2<f32>(-581f, 1164f), vec2<bool>(false, var_0.x))))), var_0.x || var_0.x))));
    let var_2 = Struct_1(func_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(405f, 260f), vec2<f32>(-1721f, 405f))))))).a, ~40305u);
    var var_3 = vec3<bool>(var_2.a.x, !(!(var_2.b > var_2.b)) || true, func_3() == -1i);
    var var_4 = ~vec2<i32>(global2.x, (global2.x >> (~var_1.b % 32u)) >> (u_input.a.x % 32u));
    global2 = reverseBits(abs(~abs(firstLeadingBit(vec2<i32>(global2.x, var_4.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(-652f, min(vec4<i32>(1i, global2.x, reverseBits(func_2(-710f, vec3<f32>(-1946f, -846f, -937f)).x), _wgslsmith_add_i32(0i, var_4.x) | ~21574i), vec4<i32>(-2147483647i, var_4.x ^ 1i, var_4.x, ~(~global2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(980f * _wgslsmith_f_op_f32(ceil(444f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -468f))) + -1000f)), u_input.a.x, func_3());
}

