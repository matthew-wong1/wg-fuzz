struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
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

var<private> global0: array<i32, 32> = array<i32, 32>(14507i, -1i, -1i, 7970i, i32(-2147483648), 0i, 2147483647i, -6564i, -1i, -34243i, 1i, 9096i, 0i, -53994i, -42903i, -43219i, 2147483647i, 2147483647i, i32(-2147483648), -1573i, 30921i, 0i, 2147483647i, 2147483647i, 3004i, 1i, -1i, -7544i, 2147483647i, -1i, 1i, 57376i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: vec3<i32>) -> bool {
    let var_0 = Struct_1(max(~firstLeadingBit(arg_2.yx), vec2<i32>(-12928i, -firstLeadingBit(arg_0.x))), vec2<i32>(global0[_wgslsmith_index_u32(~37971u, 32u)], max(_wgslsmith_sub_i32(~(-2147483647i), _wgslsmith_add_i32(47646i, -1i)), arg_2.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(354f, 825f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(497f, -205f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 1757f), vec2<f32>(1518f, 941f), vec2<bool>(true, true))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(667f, 138f) - vec2<f32>(448f, 306f))))));
    let var_1 = vec3<bool>((all(vec3<bool>(true, true, false)) & any(vec4<bool>(true, true, true, true))) || any(vec4<bool>(true, true, true, true)), false || !any(vec4<bool>(true, true, false, true)), any(vec4<bool>(true, false, false, false)));
    var var_2 = _wgslsmith_mult_i32(arg_0.x, firstLeadingBit(-_wgslsmith_mod_i32(arg_1.x, 1i & var_0.b.x)));
    return any(var_1);
}

fn func_2() -> Struct_1 {
    global0 = array<i32, 32>();
    global0 = array<i32, 32>();
    let var_0 = Struct_1(u_input.a, -select(firstTrailingBit(u_input.a) | ~u_input.a, _wgslsmith_mult_vec2_i32(min(vec2<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), u_input.a), -u_input.a), all(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1326f, 1262f))))));
    let var_1 = vec3<bool>(min(17122i, abs(32997i)) <= select(_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, var_0.a.x), u_input.a), _wgslsmith_div_i32(0i, -1i), true), func_3((vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, global0[_wgslsmith_index_u32(18226u, 32u)], var_0.b.x, 31407i)) & _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, var_0.b.x, 0i, u_input.a.x), vec4<i32>(global0[_wgslsmith_index_u32(53812u, 32u)], u_input.a.x, 2147483647i, 41042i)), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.b.x, 10331i, 0i, var_0.b.x), vec4<i32>(u_input.a.x, var_0.b.x, var_0.a.x, global0[_wgslsmith_index_u32(38350u, 32u)]))), ~_wgslsmith_mult_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)], 0i, global0[_wgslsmith_index_u32(5082u, 32u)]) << (u_input.b % vec4<u32>(32u)), -vec4<i32>(var_0.a.x, -6897i, 43173i, -1i)), vec3<i32>(_wgslsmith_sub_i32(-2147483647i, -29065i), _wgslsmith_mult_i32(var_0.a.x, global0[_wgslsmith_index_u32(u_input.c, 32u)]), ~(-2147483647i)) << (~(~vec3<u32>(u_input.c, u_input.b.x, 4294967295u)) % vec3<u32>(32u))), true);
    var var_2 = u_input.b.zx;
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = arg_0;
    var var_1 = arg_1;
    var_0 = arg_1;
    var_1 = func_2();
    var var_2 = !select(!vec4<bool>(true, true, any(vec4<bool>(false, false, false, false)), var_1.c.x <= 557f), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 32u)] <= u_input.a.x, true, true, all(vec4<bool>(true, false, true, false))), true);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1321f + arg_0.c.x))) * 340f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_0.c.x));
}

fn func_5(arg_0: f32, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: f32) -> Struct_1 {
    return func_2();
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_add_vec2_i32(firstTrailingBit(~u_input.a), select(abs(vec2<i32>(2147483647i, u_input.a.x)), ~vec2<i32>(arg_0.b.x, u_input.a.x), true)) << (~u_input.b.wx % vec2<u32>(32u)), abs(vec2<i32>(arg_0.a.x, global0[_wgslsmith_index_u32(~u_input.b.x, 32u)] | -global0[_wgslsmith_index_u32(50975u, 32u)])), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.x, arg_0.c.x) * vec2<f32>(2177f, _wgslsmith_f_op_f32(arg_0.c.x - arg_0.c.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.c, _wgslsmith_f_op_vec2_f32(-arg_0.c))))));
    return func_5(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-824f, _wgslsmith_f_op_f32(round(arg_0.c.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, -672f, var_0.c.x) + vec3<f32>(-1740f, var_0.c.x, arg_0.c.x)) + vec3<f32>(var_0.c.x, var_0.c.x, arg_0.c.x))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(func_4(arg_0, func_2())), -1430f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1406f, arg_0.c.x, 577f) + vec3<f32>(arg_0.c.x, 1000f, arg_0.c.x))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-892f, -2026f, var_0.c.x)))), false)), 1311f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = func_1(Struct_1(~(-u_input.a), u_input.a, vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1246f)), 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 1513f)))));
    var_1 = Struct_1(_wgslsmith_mult_vec2_i32(-(~(vec2<i32>(var_1.b.x, var_1.b.x) >> (vec2<u32>(35220u, 39683u) % vec2<u32>(32u)))), -u_input.a), -vec2<i32>(43130i, -var_1.a.x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.c.x)) * var_1.c.x), var_1.c.x));
    let var_2 = vec4<u32>(~0u, ~(10975u << (u_input.c % 32u)), u_input.c, u_input.b.x);
    var var_3 = select(-2053f > func_5(_wgslsmith_f_op_f32(trunc(-701f)), vec3<f32>(var_1.c.x, var_1.c.x, -1919f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-281f, var_1.c.x, var_1.c.x) * vec3<f32>(275f, var_1.c.x, var_1.c.x)), var_1.c.x).c.x, all(vec3<bool>(true, true, true)), false) & !(func_2().c.x >= _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -1064f)));
    var_3 = !any(select(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, false), vec2<bool>(true, true)));
    let var_4 = 563f;
    let var_5 = Struct_1(u_input.a, vec2<i32>(-(u_input.a.x | max(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], var_1.b.x)), -global0[_wgslsmith_index_u32(~u_input.b.x, 32u)] ^ -1i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1283f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1000f)))))));
    var var_6 = !(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(~u_input.b.x, 32u)] != u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.c.x);
}

