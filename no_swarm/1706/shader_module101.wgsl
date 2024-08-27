struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec2<i32>(0i, 1i), vec4<f32>(-123f, -296f, 348f, 326f)), Struct_1(vec2<i32>(0i, i32(-2147483648)), vec4<f32>(-1065f, 1939f, 1369f, 568f)), Struct_1(vec2<i32>(-14576i, 32693i), vec4<f32>(752f, 760f, -1260f, -1792f)), Struct_1(vec2<i32>(14344i, -1i), vec4<f32>(-1358f, -269f, -1212f, -1257f)), Struct_1(vec2<i32>(-36780i, -31707i), vec4<f32>(804f, -286f, 2574f, -1000f)), Struct_1(vec2<i32>(1i, 0i), vec4<f32>(-482f, 1000f, 176f, 1000f)), Struct_1(vec2<i32>(18613i, -54891i), vec4<f32>(717f, 1044f, -565f, 767f)), Struct_1(vec2<i32>(22171i, -25906i), vec4<f32>(977f, 721f, 257f, -350f)));

var<private> global2: Struct_1 = Struct_1(vec2<i32>(-38458i, 7841i), vec4<f32>(746f, 891f, 1038f, 370f));

var<private> global3: array<Struct_1, 22>;

var<private> global4: array<bool, 30>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> vec2<f32> {
    var var_0 = select(vec2<bool>(false, global4[_wgslsmith_index_u32(reverseBits(u_input.c), 30u)]), vec2<bool>(!global4[_wgslsmith_index_u32(reverseBits(abs(u_input.d.x)), 30u)], global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(u_input.d.x, 4294967295u, 45053u)) & u_input.c, 1u), 30u)]), any(vec3<bool>(true, global4[_wgslsmith_index_u32(u_input.a >> (~93346u % 32u), 30u)], (94724u > u_input.c) | all(vec4<bool>(global4[_wgslsmith_index_u32(u_input.a, 30u)], false, true, false)))));
    return _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-412f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.b.x)) - 323f))));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: vec4<f32>, arg_3: vec2<f32>) -> vec3<i32> {
    let var_0 = u_input.a;
    let var_1 = Struct_1(-(~vec2<i32>(2147483647i, 1i)) | _wgslsmith_mult_vec2_i32(u_input.b.wy, firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, 31147i), global2.a))), _wgslsmith_f_op_vec4_f32(-arg_2));
    var var_2 = Struct_1(select((countOneBits(global2.a) << (select(vec2<u32>(u_input.a, var_0), u_input.d.zx, global4[_wgslsmith_index_u32(var_0, 30u)]) % vec2<u32>(32u))) << (~(u_input.d.yy << (u_input.d.xy % vec2<u32>(32u))) % vec2<u32>(32u)), max(~arg_0.zy & select(vec2<i32>(2147483647i, var_1.a.x), arg_0.xx, vec2<bool>(false, false)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, var_1.a.x), var_1.a >> (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)), select(global2.a, arg_0.yx, false))), vec2<bool>(true, true)), vec4<f32>(-2070f, _wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-533f + arg_2.x), arg_1.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(799f)))))));
    var var_3 = all(select(select(!(!vec3<bool>(global4[_wgslsmith_index_u32(0u, 30u)], true, global4[_wgslsmith_index_u32(u_input.c, 30u)])), !select(vec3<bool>(true, true, false), vec3<bool>(false, global4[_wgslsmith_index_u32(24717u, 30u)], false), vec3<bool>(true, global4[_wgslsmith_index_u32(u_input.c, 30u)], global4[_wgslsmith_index_u32(0u, 30u)])), vec3<bool>(true, true, true)), select(select(!vec3<bool>(global4[_wgslsmith_index_u32(53097u, 30u)], false, false), vec3<bool>(global4[_wgslsmith_index_u32(var_0, 30u)], global4[_wgslsmith_index_u32(u_input.c, 30u)], global4[_wgslsmith_index_u32(var_0, 30u)]), vec3<bool>(false, global4[_wgslsmith_index_u32(u_input.c, 30u)], global4[_wgslsmith_index_u32(27715u, 30u)])), vec3<bool>(false, !global4[_wgslsmith_index_u32(4294967295u, 30u)], global4[_wgslsmith_index_u32(var_0, 30u)] || global4[_wgslsmith_index_u32(var_0, 30u)]), !select(vec3<bool>(global4[_wgslsmith_index_u32(u_input.c, 30u)], global4[_wgslsmith_index_u32(1u, 30u)], true), vec3<bool>(global4[_wgslsmith_index_u32(var_0, 30u)], global4[_wgslsmith_index_u32(4294967295u, 30u)], false), vec3<bool>(true, global4[_wgslsmith_index_u32(var_0, 30u)], global4[_wgslsmith_index_u32(var_0, 30u)]))), !(!(!vec3<bool>(true, false, global4[_wgslsmith_index_u32(var_0, 30u)])))));
    let var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * arg_1.x)), arg_3.x)), global2.b.xyy);
    return u_input.b.zwy;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = func_3(vec3<i32>(~select(reverseBits(-1i), _wgslsmith_mod_i32(global2.a.x, 4068i), any(vec3<bool>(false, true, global4[_wgslsmith_index_u32(14367u, 30u)]))), select(1i, -30089i, true), 36525i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.b.wxx + arg_2.b.wxz) - arg_3.b.zwx), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.x, -1167f, global2.b.x, arg_2.b.x) - arg_1.b))) * arg_3.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(1919f, -1000f) + _wgslsmith_f_op_vec2_f32(func_2())));
    global3 = array<Struct_1, 22>();
    global1 = array<Struct_1, 8>();
    let var_1 = Struct_1(_wgslsmith_clamp_vec2_i32(arg_3.a, abs(vec2<i32>(-2147483647i, -1i)) & u_input.b.yz, vec2<i32>(func_3(u_input.b.yxy, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.b.x, arg_1.b.x, arg_0.b.x), vec3<f32>(-1100f, -486f, 1536f), global4[_wgslsmith_index_u32(14089u, 30u)])), _wgslsmith_f_op_vec4_f32(-global2.b), arg_1.b.xw).x, _wgslsmith_add_i32(countOneBits(1i), min(arg_1.a.x, arg_3.a.x)))), _wgslsmith_f_op_vec4_f32(-arg_1.b));
    return vec2<u32>(~(_wgslsmith_add_u32(u_input.d.x, 60037u >> (u_input.a % 32u)) | ~min(0u, 1u)), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.zz;
    let var_1 = abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(~var_0.x, 107872u), vec2<u32>(var_0.x, select(1972u, u_input.d.x, true) | _wgslsmith_sub_u32(0u, var_0.x)), ~(~func_1(Struct_1(u_input.b.yx, vec4<f32>(global2.b.x, global2.b.x, 470f, global2.b.x)), global0[_wgslsmith_index_u32(u_input.c, 4u)], Struct_1(global2.a, vec4<f32>(435f, global2.b.x, global2.b.x, global2.b.x)), Struct_1(vec2<i32>(2618i, u_input.b.x), global2.b)))));
    global1 = array<Struct_1, 8>();
    let var_2 = Struct_1(global2.a, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.b.x, global2.b.x, -890f, global2.b.x), global2.b, vec4<bool>(false, global4[_wgslsmith_index_u32(var_1.x, 30u)], false, global4[_wgslsmith_index_u32(var_1.x, 30u)]))))) * global2.b))));
    global0 = array<Struct_1, 4>();
    var var_3 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-627f, _wgslsmith_f_op_f32(-global2.b.x)))), var_2.b.x, _wgslsmith_f_op_f32(1f - var_2.b.x), -1488f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.yw, 37793u, -vec3<i32>(-1i, _wgslsmith_mod_i32(u_input.b.x, 10422i), 1i) ^ vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(global2.a.x, 101666i, 0i, 1i), vec4<i32>(var_2.a.x, 1i, global2.a.x, u_input.b.x)), -(~global2.a.x), _wgslsmith_add_i32(1i, var_2.a.x << (6750u % 32u))), _wgslsmith_mod_vec3_i32(vec3<i32>(global2.a.x, global2.a.x, firstTrailingBit(global2.a.x)), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(reverseBits(u_input.b.yzz), ~vec3<i32>(2147483647i, -2147483647i, global2.a.x), vec3<i32>(1i, global2.a.x, 7304i)), vec3<i32>(u_input.b.x ^ -66743i, global2.a.x, ~(-1935i)))), var_2.b.x);
}

