struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: u32 = 4294967295u;

var<private> global2: bool = true;

var<private> global3: f32;

var<private> global4: array<bool, 17> = array<bool, 17>(true, true, true, true, false, false, false, true, true, true, true, true, true, true, false, false, true);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: u32, arg_3: vec4<u32>) -> vec4<i32> {
    let var_0 = 404f;
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1107f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(687f - 589f), _wgslsmith_f_op_f32(var_0 + var_0)) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(222f, var_0) * vec2<f32>(var_0, 257f))))))));
    global3 = 569f;
    global2 = false;
    let var_2 = var_0;
    return -countOneBits(~(vec4<i32>(arg_0, arg_0, arg_0, arg_0) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 6794i, u_input.b, 1i), vec4<i32>(903i, arg_0, 1i, -22462i))));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(-abs(~countOneBits(vec2<i32>(-1i, u_input.b))), vec4<u32>(0u, 1u, ~4294967295u, 4294967295u), any(global0.xx), Struct_1(func_3(_wgslsmith_div_i32(u_input.b, reverseBits(u_input.b)), 263u, firstTrailingBit(1u), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, 1u, 4294967295u, 22376u), vec4<u32>(u_input.a, 3469u, u_input.a, u_input.a) << (vec4<u32>(u_input.a, u_input.a, 72196u, 27626u) % vec4<u32>(32u)))), -firstLeadingBit(vec4<i32>(10695i, 1i, 0i, u_input.b) >> (vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(710f * 1041f)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.c) - var_0.d.c));
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(trunc(1253f)), -325f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2268f)) + _wgslsmith_f_op_f32(1000f * var_0.d.c)), _wgslsmith_f_op_f32(var_0.d.c * var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.c)))))));
    global1 = 1u;
    var var_3 = (vec2<u32>(u_input.a, _wgslsmith_mult_u32(max(59426u, var_0.b.x), ~13883u)) >> (var_0.b.yx % vec2<u32>(32u))) | var_0.b.wy;
    return Struct_2(var_0.a, ~var_0.b, _wgslsmith_f_op_f32(floor(-343f)) <= 524f, var_0.d);
}

fn func_1(arg_0: u32) -> i32 {
    var var_0 = func_2();
    let var_1 = Struct_3(vec4<i32>(countOneBits(min(min(-43474i, 0i), firstTrailingBit(u_input.b))), -(~(-2147483647i)), abs(u_input.b), -2147483647i));
    global4 = array<bool, 17>();
    let var_2 = abs(reverseBits(firstLeadingBit(select(-var_1.a.wz, -var_0.a, global0.xx))));
    global2 = all(global0.yx);
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (877f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(145f, -1007f, false)) * 1f))) == ((u_input.b >= 15779i) != true);
    var var_1 = func_1(u_input.a);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(max(1668f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-178f, -1683f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -166f) * func_2().d.c) - _wgslsmith_f_op_f32(-580f + 1921f)))));
    var var_3 = global4[_wgslsmith_index_u32(u_input.a, 17u)];
    global2 = global4[_wgslsmith_index_u32(~u_input.a, 17u)];
    global2 = false;
    global0 = select(vec3<bool>(true, global4[_wgslsmith_index_u32(~0u, 17u)], !all(!vec3<bool>(global0.x, false, false))), !select(select(select(vec3<bool>(true, global4[_wgslsmith_index_u32(u_input.a, 17u)], false), vec3<bool>(global0.x, global4[_wgslsmith_index_u32(36987u, 17u)], false), vec3<bool>(global0.x, global0.x, global0.x)), select(vec3<bool>(global0.x, global4[_wgslsmith_index_u32(u_input.a, 17u)], global0.x), vec3<bool>(global0.x, global4[_wgslsmith_index_u32(0u, 17u)], false), true), !vec3<bool>(true, true, global4[_wgslsmith_index_u32(4294967295u, 17u)])), vec3<bool>(false, true & global4[_wgslsmith_index_u32(4294967295u, 17u)], true & global0.x), vec3<bool>(global4[_wgslsmith_index_u32(u_input.a, 17u)], true, 0u > u_input.a)), !(global0.x | true));
    let var_4 = Struct_3(firstLeadingBit(~vec4<i32>(u_input.b >> (u_input.a % 32u), u_input.b, ~(-3829i), -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.x), ~firstTrailingBit(1u), ~_wgslsmith_add_u32(4294967295u, u_input.a), ((firstTrailingBit(25529u) << (0u % 32u)) >> (23536u % 32u)) & ~u_input.a);
}

