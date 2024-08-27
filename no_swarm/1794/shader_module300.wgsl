struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: array<vec2<i32>, 3> = array<vec2<i32>, 3>(vec2<i32>(-10901i, 24037i), vec2<i32>(-1i, -52563i), vec2<i32>(67164i, 1i));

var<private> global2: array<bool, 8> = array<bool, 8>(false, true, false, false, false, false, true, true);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> f32 {
    global1 = array<vec2<i32>, 3>();
    let var_0 = _wgslsmith_div_vec2_i32(-arg_0.yz, -(global1[_wgslsmith_index_u32(max(~u_input.e, 21166u), 3u)] & firstLeadingBit(_wgslsmith_mult_vec2_i32(u_input.d.xx, vec2<i32>(u_input.a.x, u_input.a.x)))));
    let var_1 = u_input.a.x;
    let var_2 = arg_1;
    global2 = array<bool, 8>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1141f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1582f)), -783f)))) * _wgslsmith_f_op_f32(round(321f)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    global0 = array<Struct_1, 25>();
    var var_0 = 614f;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-411f, _wgslsmith_f_op_f32(func_3(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 0i, 1i, 0i), vec4<i32>(u_input.d.x, u_input.a.x, u_input.a.x, -1i)), Struct_1(global1[_wgslsmith_index_u32(u_input.c.x, 3u)], u_input.a.x), Struct_1(global1[_wgslsmith_index_u32(u_input.b, 3u)], u_input.d.x), !global2[_wgslsmith_index_u32(1u, 8u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-157f)) + _wgslsmith_f_op_f32(max(-1000f, -369f)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(674f, 391f) + _wgslsmith_f_op_f32(1303f + 392f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -843f)), -1024f)));
    global2 = array<bool, 8>();
    global0 = array<Struct_1, 25>();
    return Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(1i, reverseBits(u_input.a.x >> (4294967295u % 32u))), _wgslsmith_add_vec2_i32(vec2<i32>(0i, u_input.d.x), vec2<i32>(u_input.a.x, u_input.d.x))), u_input.d.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec2<bool>) -> u32 {
    var var_0 = ~_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(max(~u_input.c.yx, firstTrailingBit(u_input.c.yx)), vec2<u32>(u_input.b, ~u_input.c.x)), (vec2<u32>(u_input.e, 4294967295u) | vec2<u32>(47191u, 4294967295u)) | vec2<u32>(countOneBits(u_input.c.x), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), u_input.c.xx)));
    var var_1 = var_0.x;
    let var_2 = countOneBits(vec3<i32>(-_wgslsmith_mult_i32(-1i, -2147483647i), arg_1.a.x, 1i)) << (_wgslsmith_mod_vec3_u32(vec3<u32>(0u, ~u_input.e & (8193u << (var_0.x % 32u)), abs(_wgslsmith_add_u32(u_input.c.x, var_0.x))), vec3<u32>(~var_0.x & 0u, firstLeadingBit(var_0.x) << (reverseBits(0u) % 32u), 4294967295u)) % vec3<u32>(32u));
    var_0 = ~vec2<u32>(var_0.x, ~countOneBits(min(0u, var_0.x)));
    var var_3 = !(!select(vec3<bool>(true, true, true), !vec3<bool>(arg_3.x, arg_3.x, false), select(select(vec3<bool>(global2[_wgslsmith_index_u32(1u, 8u)], true, true), vec3<bool>(arg_2, arg_3.x, true), true), !vec3<bool>(true, global2[_wgslsmith_index_u32(0u, 8u)], true), select(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 8u)], arg_2, true), vec3<bool>(true, false, arg_3.x), true))));
    return 9720u;
}

fn func_1(arg_0: bool, arg_1: bool) -> bool {
    var var_0 = ~1i;
    global2 = array<bool, 8>();
    var var_1 = select(!(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(false, true), true)), !vec2<bool>(global2[_wgslsmith_index_u32(1u, 8u)], false), true);
    let var_2 = ~vec2<u32>(abs(~u_input.b), func_4(func_2(!arg_0), func_2(true), !arg_1, !select(vec2<bool>(arg_0, var_1.x), vec2<bool>(true, false), global2[_wgslsmith_index_u32(u_input.b, 8u)])));
    global1 = array<vec2<i32>, 3>();
    return arg_0;
}

fn func_5(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_1(~(_wgslsmith_div_vec2_i32(global1[_wgslsmith_index_u32(u_input.c.x, 3u)], u_input.d.yy) >> (vec2<u32>(u_input.c.x, u_input.e) % vec2<u32>(32u))) >> (~(~u_input.c.xx) % vec2<u32>(32u)), 0i);
    global1 = array<vec2<i32>, 3>();
    global0 = array<Struct_1, 25>();
    let var_1 = u_input.e;
    global2 = array<bool, 8>();
    return global0[_wgslsmith_index_u32(68630u, 25u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.e;
    let var_1 = func_5(select(select(vec4<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c, u_input.c), 8u)], !global2[_wgslsmith_index_u32(u_input.b, 8u)], true, global2[_wgslsmith_index_u32(~68110u, 8u)]), select(vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.e, 8u)], false, global2[_wgslsmith_index_u32(1u, 8u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(23258u, 8u)], global2[_wgslsmith_index_u32(u_input.e, 8u)], global2[_wgslsmith_index_u32(var_0, 8u)], global2[_wgslsmith_index_u32(var_0, 8u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(var_0, 8u)], false, true), global2[_wgslsmith_index_u32(23923u, 8u)]), global2[_wgslsmith_index_u32(1u, 8u)]), select(!vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 8u)], global2[_wgslsmith_index_u32(u_input.e, 8u)], false), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 8u)], true, global2[_wgslsmith_index_u32(16385u, 8u)], false), !vec4<bool>(global2[_wgslsmith_index_u32(u_input.e, 8u)], false, false, global2[_wgslsmith_index_u32(0u, 8u)]))), !vec4<bool>(any(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.c.x, 8u)])), true, func_1(global2[_wgslsmith_index_u32(4294967295u, 8u)], false), any(vec3<bool>(false, global2[_wgslsmith_index_u32(16008u, 8u)], true))), !(!vec4<bool>(global2[_wgslsmith_index_u32(73908u, 8u)], false, global2[_wgslsmith_index_u32(var_0, 8u)], global2[_wgslsmith_index_u32(3896u, 8u)]))), !vec3<bool>(global2[_wgslsmith_index_u32(countOneBits(1u) << ((4294967295u << (u_input.c.x % 32u)) % 32u), 8u)], true, global2[_wgslsmith_index_u32(32239u, 8u)]), 1u);
    global2 = array<bool, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(~select(var_1.b >> (var_0 % 32u), var_1.a.x, any(vec2<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 8u)], false))), _wgslsmith_mod_i32(func_5(vec4<bool>(true, true, false, false), vec3<bool>(true, true, true), u_input.e).b, ~2147483647i) << (1u % 32u)), _wgslsmith_dot_vec2_i32(max(vec2<i32>(1i, var_1.a.x), ~vec2<i32>(u_input.d.x, 1i)), -global1[_wgslsmith_index_u32(~19112u, 3u)]) & var_1.a.x, ~_wgslsmith_div_vec2_i32(-u_input.a.yx, -func_2(false).a));
}

