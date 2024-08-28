struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25> = array<f32, 25>(-564f, 125f, 777f, -1000f, 157f, 770f, 2350f, -1792f, -579f, 438f, -1487f, 514f, -1759f, -519f, 126f, -774f, 1000f, -514f, 787f, -408f, -230f, -1868f, 838f, 2492f, -1116f);

var<private> global1: array<vec2<f32>, 27>;

var<private> global2: vec3<i32> = vec3<i32>(2147483647i, 14016i, 7142i);

var<private> global3: Struct_1;

var<private> global4: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec3<f32>(662f, -515f, 184f)), Struct_1(vec3<f32>(-847f, 1000f, -934f)), Struct_1(vec3<f32>(546f, 102f, 150f)), Struct_1(vec3<f32>(-1304f, 1000f, 1047f)), Struct_1(vec3<f32>(1047f, -902f, -1057f)), Struct_1(vec3<f32>(489f, -1082f, 835f)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> f32 {
    global3 = global4[_wgslsmith_index_u32(max(u_input.a.x, max(_wgslsmith_add_u32(min(1u, u_input.a.x), 1u), select(1u, ~(~u_input.a.x), arg_1))), 6u)];
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-arg_0.a));
    global4 = array<Struct_1, 6>();
    global4 = array<Struct_1, 6>();
    global0 = array<f32, 25>();
    return -303f;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec4<bool>) -> i32 {
    let var_0 = arg_1;
    global0 = array<f32, 25>();
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(289f, global3.a.x))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(arg_1.a.xz * arg_1.a.yy), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(456f, -1805f))))))))), vec4<bool>(select(_wgslsmith_f_op_f32(max(-289f, global3.a.x)) >= _wgslsmith_f_op_f32(func_3(Struct_1(vec3<f32>(var_0.a.x, arg_1.a.x, var_0.a.x)), arg_3.x)), true, _wgslsmith_mult_i32(global2.x, -2769i) > -2147483647i), !arg_3.x != arg_2.x, !(!(!arg_3.x)), false));
    var var_2 = all(vec4<bool>(true, any(var_1.b) | any(arg_2.zz), !any(arg_2.ywx) & arg_3.x, arg_2.x));
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1274f, global3.a.x), vec2<f32>(331f, var_1.a.x))))))))), select(arg_3, var_1.b, false));
    return -(~(-1i));
}

fn func_1() -> i32 {
    global2 = select(vec3<i32>(u_input.b, func_2(u_input.a.yx << (firstTrailingBit(u_input.a.yy) % vec2<u32>(32u)), Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(u_input.c, 25u)], 151f, -921f)), vec4<bool>(false, any(vec4<bool>(true, true, false, true)), false, all(vec4<bool>(false, false, false, false))), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), false)), u_input.b), vec3<i32>(max(-1i, func_2(reverseBits(vec2<u32>(u_input.c, 4294967295u)), global4[_wgslsmith_index_u32(u_input.c & 0u, 6u)], vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false))), -(~global2.x), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-18108i, global2.x), vec2<i32>(u_input.b, u_input.b) | vec2<i32>(global2.x, u_input.b)), global2.yy)), true && !(u_input.c < ~1u));
    global4 = array<Struct_1, 6>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-342f, global3.a.x, 293f), vec3<f32>(global3.a.x, 1000f, global0[_wgslsmith_index_u32(81316u, 25u)])))) * vec3<f32>(global3.a.x, _wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(876f * -806f))))));
    global1 = array<vec2<f32>, 27>();
    global0 = array<f32, 25>();
    return _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(min(vec2<i32>(global2.x, u_input.b), global2.zx) >> (vec2<u32>(1u, countOneBits(23738u)) % vec2<u32>(32u)), ~global2.xy), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(12102i, u_input.b), ~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.b), global2.xx)), vec2<i32>(global2.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 0i, 3523i, -2147483647i), vec4<i32>(-2147483647i, 1i, 55201i, 3487i)), global2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(~u_input.c) | ~4294967295u, u_input.a.x), 6u)];
    let var_1 = min(vec3<i32>(i32(-1i) * -firstLeadingBit(global2.x), -9483i, u_input.b & -6935i), vec3<i32>(global2.x, func_1(), func_2(vec2<u32>(min(32409u, 50959u), ~u_input.a.x), Struct_1(var_0.a), vec4<bool>(false, true, select(true, true, true), false), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, vec4<u32>(~_wgslsmith_mod_u32(4294967295u, 1u ^ u_input.a.x), _wgslsmith_sub_u32(u_input.c, _wgslsmith_add_u32(4294967295u, u_input.c)) | 9249u, u_input.c, 4294967295u), vec3<u32>(abs(~_wgslsmith_div_u32(u_input.c, 37439u)), _wgslsmith_add_u32(~u_input.c, _wgslsmith_add_u32(79252u, 1u)) & u_input.c, ~(~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x))), ~_wgslsmith_mod_vec2_u32(firstLeadingBit(~u_input.a.zy), u_input.a.zz), vec3<f32>(-1011f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(25127u, 25u)]))), _wgslsmith_f_op_f32(global3.a.x + global0[_wgslsmith_index_u32(u_input.c, 25u)])));
}

