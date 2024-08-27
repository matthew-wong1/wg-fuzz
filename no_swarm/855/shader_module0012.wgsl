struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: f32;

var<private> global2: Struct_2 = Struct_2(vec2<u32>(1u, 0u), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, true, true)));

var<private> global3: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(vec2<u32>(29233u, 1u), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, true, false))), Struct_2(vec2<u32>(10947u, 57790u), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, true, true))), Struct_2(vec2<u32>(4294967295u, 1u), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, false, true))), Struct_2(vec2<u32>(6596u, 0u), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, true))), Struct_2(vec2<u32>(33738u, 4294967295u), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, true, true))), Struct_2(vec2<u32>(1u, 0u), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, false, true))), Struct_2(vec2<u32>(41566u, 1u), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, true, true))), Struct_2(vec2<u32>(25229u, 7764u), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, false, false))), Struct_2(vec2<u32>(4294967295u, 8483u), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, false, true))), Struct_2(vec2<u32>(22880u, 29710u), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, false, true))), Struct_2(vec2<u32>(60238u, 0u), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, true, true))));

var<private> global4: u32 = 35542u;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: i32) -> bool {
    let var_0 = global3[_wgslsmith_index_u32(global2.a.x, 11u)];
    let var_1 = vec2<u32>(21966u, global2.a.x) ^ ~vec2<u32>(~(~0u), (global2.a.x << (325u % 32u)) >> (~u_input.a % 32u));
    global4 = reverseBits(reverseBits(4294967295u >> (min(abs(0u), 72950u << (global2.a.x % 32u)) % 32u)));
    var var_2 = !select(vec3<bool>(true, !any(vec2<bool>(global2.c.a.x, global2.c.a.x)), true), !select(vec3<bool>(false, var_0.c.a.x, true), global2.b.a, !vec3<bool>(global2.c.a.x, var_0.b.a.x, var_0.d.a.x)), vec3<bool>(all(!vec4<bool>(false, true, global2.b.a.x, true)), !var_0.c.a.x && all(vec2<bool>(var_0.d.a.x, false)), var_0.b.a.x));
    let var_3 = firstTrailingBit(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, 7338i, arg_0.x, arg_0.x), vec4<i32>(-30073i, u_input.b, arg_0.x, arg_2)) << (abs(vec4<u32>(0u, var_1.x, 4294967295u, global2.a.x)) % vec4<u32>(32u)), reverseBits(vec4<i32>(arg_0.x, -54823i, 0i, 20985i))) & ~_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(u_input.b, u_input.b, u_input.b, 2147483647i)), -vec4<i32>(2147483647i, arg_2, 13755i, u_input.b)));
    return all(select(select(vec4<bool>(any(vec4<bool>(true, var_0.d.a.x, true, global2.b.a.x)), false, any(vec2<bool>(var_2.x, false)), true), !(!vec4<bool>(true, var_0.b.a.x, true, var_2.x)), !(!vec4<bool>(true, false, true, var_0.c.a.x))), !(!select(vec4<bool>(true, var_2.x, global2.b.a.x, global2.b.a.x), vec4<bool>(global2.d.a.x, false, var_0.d.a.x, true), vec4<bool>(true, var_0.c.a.x, var_0.c.a.x, global2.c.a.x))), var_0.a.x == u_input.a));
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.x, ~4294967295u), vec2<u32>(reverseBits(4294967295u), 31383u)) | (vec2<u32>(~arg_0.x, abs(4294967295u)) ^ _wgslsmith_add_vec2_u32(vec2<u32>(global2.a.x, 4294967295u), ~vec2<u32>(arg_0.x, 1u))), Struct_1(!(!select(global2.d.a, global2.c.a, global2.b.a))), Struct_1(vec3<bool>(false, !func_3(vec3<i32>(u_input.b, 0i, 9730i), vec3<f32>(209f, -1879f, -1000f), -2147483647i), true)), global2.b);
    let var_1 = global3[_wgslsmith_index_u32(47078u, 11u)];
    let var_2 = global2.b;
    let var_3 = global3[_wgslsmith_index_u32(arg_0.x, 11u)];
    var var_4 = ~u_input.b;
    return global2.b;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: f32, arg_3: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2047f, -283f, arg_2) + vec3<f32>(1553f, arg_2, arg_3)))) + _wgslsmith_div_vec3_f32(vec3<f32>(arg_2, arg_3, arg_3), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1582f, arg_3, _wgslsmith_f_op_f32(arg_3 + -434f)))));
    var var_1 = global3[_wgslsmith_index_u32(global2.a.x, 11u)];
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_2, -1150f, arg_3), vec3<f32>(106f, arg_2, arg_2))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(-var_0.x), arg_2)))));
    var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-188f, arg_3, -655f))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, -297f, arg_2) + vec3<f32>(1163f, arg_3, 227f))))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(577f, -315f, arg_3))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, 1086f, arg_2), vec3<f32>(var_0.x, var_0.x, arg_2), false)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2086f)) + -1019f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1273f))), !arg_1.d.a)), arg_1.b.a));
    var var_2 = 2790u;
    return Struct_1(!(!global2.b.a));
}

fn func_1() -> StorageBuffer {
    global2 = Struct_2(global2.a, global2.c, func_4(global2.a, Struct_2(vec2<u32>(~u_input.a, 4294967295u), Struct_1(global2.c.a), func_2(vec4<u32>(global2.a.x, 0u, global2.a.x, 4294967295u)), Struct_1(global2.c.a)), 552f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-836f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1366f, -1161f, global2.d.a.x)))))), global2.d);
    let var_0 = global3[_wgslsmith_index_u32(0u, 11u)];
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -1241f);
    let var_1 = func_4(var_0.a, Struct_2(~firstLeadingBit(reverseBits(var_0.a)), Struct_1(vec3<bool>(true, !var_0.d.a.x, true)), global2.b, Struct_1(vec3<bool>(var_0.c.a.x, true, any(vec3<bool>(global2.c.a.x, false, var_0.b.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-783f))) - _wgslsmith_f_op_f32(-1016f + _wgslsmith_f_op_f32(-1696f - -551f)))), _wgslsmith_f_op_f32(f32(-1f) * -888f));
    var var_2 = global3[_wgslsmith_index_u32(u_input.a, 11u)];
    return StorageBuffer(-353f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global2.a.x;
    let x = u_input.a;
    s_output = func_1();
}

