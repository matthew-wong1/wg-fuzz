struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: bool,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<bool>, 21> = array<vec2<bool>, 21>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global2: vec2<u32> = vec2<u32>(55710u, 48364u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<bool>) -> u32 {
    let var_0 = (abs(u_input.b.x | u_input.b.x) >> (_wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(7218u, global2.x), _wgslsmith_div_u32(global2.x, 4294967295u)), _wgslsmith_dot_vec3_u32(u_input.e, ~vec3<u32>(u_input.e.x, global2.x, 0u))) % 32u)) >= _wgslsmith_sub_i32(u_input.b.x, _wgslsmith_mult_i32(0i, select(u_input.b.x, u_input.b.x, arg_0.x) >> (u_input.e.x % 32u)));
    global1 = array<vec2<bool>, 21>();
    var var_1 = ~(0u << (global2.x % 32u));
    var_1 = ~(~(~_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.e.x, u_input.a.x), _wgslsmith_mod_u32(13319u, 25705u))));
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-563f, _wgslsmith_f_op_f32(floor(-2935f)), -995f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-160f, 255f, 892f), vec3<f32>(-603f, -1232f, -1704f)))))))), Struct_2(!(!select(vec2<bool>(true, global0.a), vec2<bool>(false, var_0), false)), Struct_1(false)), Struct_2(arg_0.zx, Struct_1((arg_0.x & arg_1.x) || false)), Struct_1(false));
    return global2.x;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: Struct_4, arg_3: vec3<f32>) -> bool {
    global0 = Struct_1(!(~18745i >= arg_2.a.x));
    global1 = array<vec2<bool>, 21>();
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(select(163f, arg_3.x, true)), 1762f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -303f), _wgslsmith_f_op_f32(exp2(arg_3.x)), -1292f))), Struct_2(select(select(vec2<bool>(global0.a, arg_2.b), select(vec2<bool>(false, false), vec2<bool>(arg_1.x, true), vec2<bool>(global0.a, false)), !vec2<bool>(arg_2.b, arg_2.b)), select(vec2<bool>(true, arg_1.x), global1[_wgslsmith_index_u32(arg_2.c.x, 21u)], false), select(vec2<bool>(arg_2.b, true), vec2<bool>(global0.a, false), all(vec2<bool>(true, false)))), Struct_1(any(!global1[_wgslsmith_index_u32(41479u, 21u)]))), Struct_2(vec2<bool>(arg_2.b, !(-4877i != arg_2.a.x)), Struct_1(all(vec2<bool>(false, global0.a)))), Struct_1(true));
    var var_1 = Struct_1(any(!vec4<bool>(arg_0.x == 14085u, arg_1.x, !arg_1.x, any(vec3<bool>(true, false, arg_2.b)))));
    global0 = var_0.b.b;
    return !all(select(vec2<bool>(true, true), vec2<bool>(true, true), !vec2<bool>(arg_1.x, false)));
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = !global1[_wgslsmith_index_u32(_wgslsmith_add_u32(firstTrailingBit(~u_input.d.x), ~(~0u)), 21u)];
    var var_1 = select(all(!vec3<bool>(arg_0, !arg_0, false)), arg_0, firstTrailingBit(u_input.c) > func_2(select(!vec4<bool>(global0.a, global0.a, true, false), select(vec4<bool>(arg_0, true, var_0.x, true), vec4<bool>(arg_0, true, arg_0, var_0.x), arg_0), !vec4<bool>(var_0.x, true, global0.a, true)), !(!vec4<bool>(true, true, var_0.x, true))));
    var_0 = vec2<bool>(any(!select(vec2<bool>(var_0.x, global0.a), global1[_wgslsmith_index_u32(15414u, 21u)], !global1[_wgslsmith_index_u32(41771u, 21u)])), !(~0u < (~0u ^ ~u_input.c)));
    var var_2 = ~(-(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 1i) << ((~vec4<u32>(u_input.c, 4294967295u, 0u, 1u) << (reverseBits(vec4<u32>(0u, 5898u, 4294967295u, u_input.d.x)) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var var_3 = Struct_2(vec2<bool>(false, true), Struct_1((4294967295u > _wgslsmith_sub_u32(0u, u_input.a.x)) || func_3(_wgslsmith_add_vec2_u32(u_input.e.yy, vec2<u32>(u_input.d.x, 36337u)), !vec3<bool>(false, true, arg_0), Struct_4(vec3<i32>(-82785i, 0i, var_2.x), false, u_input.e, vec3<i32>(u_input.b.x, u_input.b.x, var_2.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1722f, 1548f, -567f)))));
    return 484f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(207f, -1000f, -186f, -1322f)))))) - vec4<f32>(_wgslsmith_f_op_f32(func_1(!global0.a)), _wgslsmith_f_op_f32(select(-135f, -247f, u_input.e.x < 4294967295u)), 1f, 927f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(817f, 404f, -322f, -1599f)))))) - vec4<f32>(1f, 1f, 1f, 1f)));
    global2 = ~reverseBits(firstLeadingBit(~(~vec2<u32>(global2.x, 1u))));
    global1 = array<vec2<bool>, 21>();
    var var_1 = Struct_4(firstTrailingBit(u_input.b), !all(global1[_wgslsmith_index_u32(39000u, 21u)]), u_input.a, u_input.b);
    var var_2 = vec3<i32>(-1i) * -(vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(vec3<i32>(var_1.d.x, -6266i, u_input.b.x), u_input.b));
    var_2 = vec3<i32>(~36245i, 0i, abs(i32(-1i) * -var_2.x));
    let var_3 = Struct_2(select(select(!select(global1[_wgslsmith_index_u32(u_input.c, 21u)], global1[_wgslsmith_index_u32(u_input.d.x, 21u)], false), vec2<bool>(true, global0.a | true), vec2<bool>(var_1.b & true, !global0.a)), global1[_wgslsmith_index_u32(1u, 21u)], select(vec2<bool>(!global0.a, any(vec3<bool>(true, global0.a, var_1.b))), select(!global1[_wgslsmith_index_u32(var_1.c.x, 21u)], global1[_wgslsmith_index_u32(~var_1.c.x, 21u)], any(vec4<bool>(true, var_1.b, global0.a, true))), !select(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], vec2<bool>(global0.a, var_1.b), global1[_wgslsmith_index_u32(19715u, 21u)]))), Struct_1(all(global1[_wgslsmith_index_u32(firstLeadingBit(global2.x), 21u)])));
    var var_4 = !global1[_wgslsmith_index_u32(~(~countOneBits(var_1.c.x)), 21u)];
    let x = u_input.a;
    s_output = StorageBuffer(global2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(682f * 512f)))))), ~(~u_input.c), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * var_0.x)), -2172f));
}

