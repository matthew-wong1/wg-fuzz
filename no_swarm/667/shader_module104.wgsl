struct Struct_1 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: array<bool, 4>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> i32 {
    var var_0 = !select(vec4<bool>(all(vec2<bool>(true, false)), !global1[_wgslsmith_index_u32(min(4294967295u, 36811u), 4u)], (arg_0 && true) & false, true), select(vec4<bool>(true, true, true, any(vec3<bool>(arg_0, global1[_wgslsmith_index_u32(u_input.a, 4u)], false))), vec4<bool>(true, true, !arg_1, false), select(select(vec4<bool>(false, arg_0, global0.x, true), vec4<bool>(arg_0, arg_0, global0.x, global0.x), true), !vec4<bool>(arg_1, arg_1, false, global1[_wgslsmith_index_u32(1u, 4u)]), vec4<bool>(arg_0, arg_0, global0.x, global0.x))), arg_1);
    var var_1 = !vec3<bool>(~(~arg_2.b) > ~26882u, _wgslsmith_dot_vec3_i32(vec3<i32>(13748i, 2147483647i, 4448i), vec3<i32>(1i, 1i, 1i)) >= abs(_wgslsmith_sub_i32(1i, -4698i)), !(!select(var_0.x, arg_0, false)));
    global1 = array<bool, 4>();
    let var_2 = 1u;
    var var_3 = Struct_1(u_input.b.x, 5879u);
    return 2147483647i;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(func_3(any(vec3<bool>(global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)])), false && global0.x, Struct_1(u_input.b.x, 106431u)), i32(-1i) * -26484i, func_3(true, false, Struct_1(u_input.b.x, u_input.a)), -firstTrailingBit(-10989i)), abs(firstLeadingBit(-vec4<i32>(9682i, 0i, 2147483647i, -16733i)))) | vec4<i32>(firstTrailingBit(~(~(-1i))), firstTrailingBit(countOneBits(0i)), _wgslsmith_clamp_i32(min(0i, -1i), min(13958i, -56488i), 14131i) ^ 1i, 1i);
    global1 = array<bool, 4>();
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1f, 1f)));
    let var_2 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), var_1.x, _wgslsmith_f_op_f32(-var_1.x), var_1.x)));
    global0 = vec2<bool>(global1[_wgslsmith_index_u32(abs(1u), 4u)], true);
    return Struct_1(u_input.a, ~u_input.b.x);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1) -> f32 {
    global0 = select(vec2<bool>(!any(vec2<bool>(true, true)), global1[_wgslsmith_index_u32(15887u, 4u)]), vec2<bool>(any(vec2<bool>(any(vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 4u)], true)), true)), global0.x), !global0.x || false);
    global0 = select(vec2<bool>(global0.x | true, !(!global1[_wgslsmith_index_u32(0u, 4u)])), select(!(!select(vec2<bool>(false, global1[_wgslsmith_index_u32(99227u, 4u)]), vec2<bool>(true, false), vec2<bool>(global0.x, global1[_wgslsmith_index_u32(0u, 4u)]))), vec2<bool>(any(!vec2<bool>(global1[_wgslsmith_index_u32(1005u, 4u)], global1[_wgslsmith_index_u32(117773u, 4u)])), arg_1.a < ~arg_1.a), any(!select(vec2<bool>(false, true), vec2<bool>(global0.x, false), vec2<bool>(true, true)))), select(!(!global1[_wgslsmith_index_u32(arg_1.b, 4u)]), true, 1u > max(arg_0.x, arg_0.x)) & true);
    global0 = vec2<bool>(all(vec4<bool>(true, true, true, true)), max(min(min(7491u, arg_1.a), 1u), 4294967295u) > 0u);
    let var_0 = _wgslsmith_clamp_i32(~(-20779i), ~_wgslsmith_sub_i32(-1i, -29705i) >> ((arg_1.a ^ u_input.b.x) % 32u), -1i) ^ max(reverseBits(1i), _wgslsmith_sub_i32(_wgslsmith_add_i32(1i, 1i), min(~10460i, select(16111i, -727i, true))));
    global0 = vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~15344u, arg_0.x) & 0u, 4u)], !(!global0.x || true));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-431f, 901f)), 658f))));
}

fn func_1() -> vec2<i32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-553f + -2142f)) * _wgslsmith_f_op_f32(-1123f * _wgslsmith_f_op_f32(func_4(~u_input.b, func_2())))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(531f + _wgslsmith_f_op_f32(func_4(vec2<u32>(u_input.a, 159309u) >> (vec2<u32>(u_input.a, 91979u) % vec2<u32>(32u)), Struct_1(u_input.a, u_input.b.x)))))));
    return firstLeadingBit(_wgslsmith_mult_vec2_i32(abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 50118i) << (vec2<u32>(u_input.b.x, u_input.a) % vec2<u32>(32u)), ~vec2<i32>(-29964i, -12147i), ~vec2<i32>(61177i, 0i))), abs(abs(select(vec2<i32>(-16634i, 71446i), vec2<i32>(21733i, 2147483647i), true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~min(vec4<i32>(firstTrailingBit(abs(-28239i)), _wgslsmith_dot_vec2_i32(select(vec2<i32>(20679i, 1i), vec2<i32>(-1i, 740i), true), func_1()), abs(_wgslsmith_clamp_i32(-42689i, 2147483647i, -13977i)), -2147483647i), ~abs(-vec4<i32>(-1i, -23379i, -37949i, 2147483647i)));
    global1 = array<bool, 4>();
    let var_1 = Struct_1(~4294967295u, 0u);
    var var_2 = var_1;
    var_2 = func_2();
    let var_3 = var_1;
    let var_4 = ~_wgslsmith_sub_vec4_i32(vec4<i32>(-20795i, ~_wgslsmith_sub_i32(-25499i, var_0.x), ~max(var_0.x, var_0.x), abs(var_0.x)), -(~(-var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(vec3<u32>(44194u, u_input.b.x, var_2.a) << (_wgslsmith_div_vec3_u32(vec3<u32>(14777u, 4294967295u, 3690u), vec3<u32>(0u, var_3.a, var_3.b)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(vec2<u32>(8743u, var_3.b | u_input.b.x), func_2())) * _wgslsmith_f_op_f32(min(-143f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1426f)) * 703f)))), i32(-1i) * -5334i, 36627u, ~(-1i) ^ var_0.x);
}

