struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14>;

var<private> global1: vec3<u32> = vec3<u32>(4294967295u, 11650u, 9158u);

var<private> global2: bool;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_1() -> vec4<u32> {
    global2 = global0[_wgslsmith_index_u32(u_input.a, 14u)];
    let var_0 = _wgslsmith_div_vec3_u32(abs(~vec3<u32>(u_input.a, 51404u, 4294967295u) << (vec3<u32>(4294967295u, 4294967295u, u_input.a) % vec3<u32>(32u))) ^ vec3<u32>(23084u, (32161u << (global1.x % 32u)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, 60894u, 58409u), vec4<u32>(0u, 8310u, 4294967295u, u_input.a)) % 32u), _wgslsmith_mod_u32(u_input.a, global1.x) & global1.x), vec3<u32>(~(~(global1.x | global1.x)), 0u, ~(global1.x << ((global1.x | 27674u) % 32u))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-639f - -612f)), 543f))) * 518f);
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1185f), _wgslsmith_f_op_f32(step(-528f, -563f)), -568f)) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-141f, 1603f, -279f) - _wgslsmith_div_vec3_f32(vec3<f32>(1381f, 595f, -1416f), vec3<f32>(-1748f, 1293f, 432f)))))));
    global2 = global0[_wgslsmith_index_u32(global1.x, 14u)];
    return countOneBits(countOneBits(~(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 0u, var_0.x, u_input.a), vec4<u32>(23760u, 1u, 98946u, u_input.a)) | (vec4<u32>(var_0.x, global1.x, 1u, 7528u) ^ vec4<u32>(var_0.x, 1u, 47184u, 0u)))));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: bool) -> f32 {
    var var_0 = Struct_3(-_wgslsmith_div_vec2_i32(u_input.c.xy, _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, -1i), u_input.c.yx) >> (_wgslsmith_mod_vec2_u32(global1.xx, global1.xz) % vec2<u32>(32u))), 2359f, arg_0.a.zz);
    let var_1 = !vec4<bool>(false, any(vec2<bool>(false, global0[_wgslsmith_index_u32(~1u, 14u)])), false, true);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1750f * 408f))), -299f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_0.a.yx), _wgslsmith_f_op_vec2_f32(arg_0.a.yy * var_0.c), global0[_wgslsmith_index_u32(12043u, 14u)])))));
    var var_3 = !select(var_1.wzw, vec3<bool>(false, true, true), -1000f != _wgslsmith_f_op_f32(850f - _wgslsmith_f_op_f32(sign(var_0.b))));
    global1 = firstTrailingBit(max(~vec3<u32>(global1.x, u_input.a, ~0u), vec3<u32>(func_1().x, ~28747u, global1.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.a.x), var_2.x, true)) * _wgslsmith_f_op_f32(f32(-1f) * -2576f));
}

fn func_2(arg_0: vec2<i32>) -> i32 {
    var var_0 = vec3<f32>(459f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -475f), -481f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(Struct_2(vec3<f32>(2381f, -784f, 1653f)), -28356i, false)))), -1000f)) - 902f));
    let var_1 = global0[_wgslsmith_index_u32(~32539u, 14u)];
    var var_2 = select(!select(vec4<bool>(all(vec3<bool>(true, global0[_wgslsmith_index_u32(global1.x, 14u)], true)), true, global0[_wgslsmith_index_u32(4294967295u, 14u)], global1.x <= global1.x), !select(vec4<bool>(global0[_wgslsmith_index_u32(global1.x, 14u)], false, global0[_wgslsmith_index_u32(18364u, 14u)], false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 14u)], global0[_wgslsmith_index_u32(28335u, 14u)], global0[_wgslsmith_index_u32(global1.x, 14u)], false), vec4<bool>(global0[_wgslsmith_index_u32(42657u, 14u)], global0[_wgslsmith_index_u32(u_input.a, 14u)], global0[_wgslsmith_index_u32(19304u, 14u)], true)), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 14u)], global0[_wgslsmith_index_u32(35180u, 14u)], global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(u_input.a, 14u)]), vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(u_input.a, 14u)]), any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)])))), vec4<bool>(!global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(85650u, 0u, 0u), vec3<u32>(1489u, 4294967295u, u_input.a)), 14u)], true && (global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, 52909u), 14u)] & global0[_wgslsmith_index_u32(select(0u, global1.x, false), 14u)]), any(select(!vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 14u)], false, global0[_wgslsmith_index_u32(u_input.a, 14u)]), vec3<bool>(true, true, true), vec3<bool>(false, global0[_wgslsmith_index_u32(global1.x, 14u)], false))), true), false);
    let var_3 = vec3<bool>(var_2.x, !global0[_wgslsmith_index_u32(u_input.a, 14u)], all(var_2.yyx) & !all(!vec4<bool>(false, global0[_wgslsmith_index_u32(global1.x, 14u)], var_2.x, global0[_wgslsmith_index_u32(u_input.a, 14u)])));
    global2 = false;
    return 25542i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 36852u;
    global0 = array<bool, 14>();
    let var_1 = Struct_1(21157u, (~func_1() | ~_wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, 1u, 31053u, 1u), vec4<u32>(u_input.a, u_input.a, 4294967295u, 1u))) & firstTrailingBit(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(19079u, global1.x, global1.x, u_input.a)), ~vec4<u32>(global1.x, 0u, 49158u, 16672u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -522f)))));
    let var_2 = -467f;
    global2 = !all(vec2<bool>(!(-21052i <= u_input.d), true));
    let x = u_input.a;
    s_output = StorageBuffer(func_2(_wgslsmith_mod_vec2_i32(u_input.c.yx, vec2<i32>(-17650i, u_input.b))) >> (global1.x % 32u), global1.x, 41784u, -u_input.c.zwy);
}

