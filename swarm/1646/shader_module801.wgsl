struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: bool,
    d: u32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<u32, 16> = array<u32, 16>(10025u, 60517u, 71887u, 0u, 33300u, 1u, 12538u, 0u, 4294967295u, 0u, 54212u, 1u, 1071u, 1u, 1u, 13786u);

var<private> global2: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(vec3<u32>(58644u, 0u, 27852u), vec2<i32>(-23734i, i32(-2147483648)), false, 17342u, vec3<bool>(true, false, false)), Struct_2(vec3<u32>(4294967295u, 1u, 48000u), vec2<i32>(2147483647i, 0i), false, 1u, vec3<bool>(false, false, true)), Struct_2(vec3<u32>(4294967295u, 62855u, 65851u), vec2<i32>(-53901i, -1i), true, 33503u, vec3<bool>(true, true, false)), Struct_2(vec3<u32>(0u, 0u, 15046u), vec2<i32>(i32(-2147483648), 82566i), false, 0u, vec3<bool>(true, true, true)), Struct_2(vec3<u32>(0u, 0u, 4294967295u), vec2<i32>(13904i, 16699i), false, 21891u, vec3<bool>(true, false, false)), Struct_2(vec3<u32>(37789u, 34487u, 1u), vec2<i32>(-66390i, 14632i), false, 0u, vec3<bool>(true, true, true)));

var<private> global3: i32 = 34781i;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<bool> {
    global1 = array<u32, 16>();
    var var_0 = countOneBits(vec4<u32>(abs(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(43293u, 57515u, global1[_wgslsmith_index_u32(1u, 16u)]), vec3<u32>(4294967295u, 1u, 1u)))), 4294967295u, ~(~(~2184u)), 4294967295u >> (1u % 32u)));
    var var_1 = vec2<bool>(true == (~select(global1[_wgslsmith_index_u32(u_input.b, 16u)], global1[_wgslsmith_index_u32(48014u, 16u)], true) < ~(~u_input.b)), !all(vec2<bool>(false, any(vec4<bool>(true, false, false, true)))));
    let var_2 = vec4<bool>(true, true, !any(select(!vec3<bool>(false, var_1.x, false), select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, false)), vec3<bool>(true, var_1.x, true))), any(!vec2<bool>(true, any(vec4<bool>(true, var_1.x, false, true)))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-443f))), -314f, var_2.x)) > _wgslsmith_f_op_f32(exp2(1f)), true, 720f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -1200f)) + 1f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), (var_1.x & true) && (_wgslsmith_mod_i32(16278i, -2147483647i) > min(u_input.c.x, -1i)))), !select(!(!var_2.yw), var_2.yz, var_2.zy));
    return !(!select(!vec4<bool>(var_2.x, false, var_3.b, var_3.a), var_2, true));
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_1) -> f32 {
    global0 = _wgslsmith_f_op_f32(arg_3.d - -677f);
    var var_0 = reverseBits(1u);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1748f, 272f, -100f, 749f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.d, arg_3.c, 1856f, arg_3.c) * vec4<f32>(arg_3.d, arg_3.c, arg_3.c, -128f)))))));
    let var_2 = !(!select(func_3(), !select(vec4<bool>(false, arg_3.e.x, arg_2.x, true), vec4<bool>(true, arg_2.x, false, arg_3.e.x), vec4<bool>(arg_1.e.x, arg_1.c, arg_2.x, arg_0)), !(!vec4<bool>(false, true, true, arg_0))));
    let var_3 = Struct_1(arg_1.e.x, !(any(!arg_2) | true), arg_3.c, -1119f, arg_2);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1456f - -1141f), 436f);
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_2) -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_2.c, arg_2, vec2<bool>(false, arg_2.c), Struct_1(false, true, -422f, -355f, arg_2.e.yx)))), 252f))), 820f));
    let var_0 = Struct_2(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(arg_2.a, vec3<u32>(27264u, global1[_wgslsmith_index_u32(0u, 16u)], 4294967295u)), firstLeadingBit(arg_2.a)), vec3<u32>(arg_1.x, u_input.b, global1[_wgslsmith_index_u32(4294967295u, 16u)]) | vec3<u32>(arg_2.d, arg_1.x, 16589u), vec3<u32>(4294967295u, u_input.b, arg_2.d) | arg_2.a) ^ vec3<u32>(global1[_wgslsmith_index_u32(0u, 16u)], ~(~arg_1.x), ~4294967295u), _wgslsmith_add_vec2_i32(-vec2<i32>(1i, _wgslsmith_mult_i32(0i, -70874i)), _wgslsmith_add_vec2_i32(u_input.a.zx, firstTrailingBit(vec2<i32>(31502i, 16590i)))), !arg_2.c, u_input.b, vec3<bool>(arg_2.e.x == true, true, all(func_3())));
    global3 = _wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.a.x, 6075i, ~_wgslsmith_clamp_i32(arg_2.b.x, var_0.b.x, -34047i), max(557i, arg_0)), vec4<i32>(firstTrailingBit(-2147483647i), _wgslsmith_add_i32(var_0.b.x, -2147483647i) & 42753i, var_0.b.x, ~25632i)) >> (1473u % 32u);
    var var_1 = Struct_1(!any(!select(vec2<bool>(arg_2.e.x, arg_2.e.x), arg_2.e.zy, arg_2.c)), var_0.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-310f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -243f) - -926f), _wgslsmith_f_op_f32(step(1794f, -110f)))))), _wgslsmith_f_op_f32(334f * 1603f), func_3().zw);
    var var_2 = _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.b.x, i32(-1i) * -21102i, _wgslsmith_sub_i32(~1i, firstTrailingBit(~arg_0)), u_input.c.x), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(_wgslsmith_sub_i32(-1i, -37888i), i32(-1i) * -57687i, 2147483647i, ~arg_2.b.x)), abs(_wgslsmith_div_vec4_i32(u_input.a, u_input.a) << (abs(vec4<u32>(21482u, arg_2.a.x, 59003u, var_0.a.x)) % vec4<u32>(32u)))));
    return var_0;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec4<f32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = Struct_1(false, all(select(arg_3.e, !select(arg_0.e, vec3<bool>(false, arg_3.e.x, arg_3.c), true), all(vec3<bool>(arg_3.c, false, arg_0.e.x)) && (311f > arg_2.x))), _wgslsmith_f_op_f32(max(-103f, arg_2.x)), _wgslsmith_f_op_f32(-arg_2.x), select(vec2<bool>(arg_3.c, all(vec3<bool>(arg_0.c, false, arg_3.c))), func_1(_wgslsmith_clamp_i32(-26087i, u_input.a.x, 14011i), vec2<u32>(min(0u, u_input.b), firstLeadingBit(0u)), func_1(arg_1.x, arg_0.a.zy, func_1(-1i, vec2<u32>(global1[_wgslsmith_index_u32(u_input.b, 16u)], 1u), Struct_2(arg_0.a, arg_0.b, false, 26418u, vec3<bool>(false, false, arg_3.c))))).e.yy, select(!vec2<bool>(arg_0.e.x, arg_3.e.x), arg_0.e.xx, !(true & arg_3.e.x))));
    global2 = array<Struct_2, 6>();
    global1 = array<u32, 16>();
    var var_1 = Struct_1(any(!arg_0.e), (i32(-1i) * -countOneBits(arg_3.b.x)) != 1i, -105f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -476f), arg_2.x)), arg_3.e.yx);
    let var_2 = ~(~0u);
    return Struct_2(~arg_3.a, abs(~(vec2<i32>(-1i) * -vec2<i32>(arg_3.b.x, -40120i))), arg_0.b.x > u_input.a.x, ~(countOneBits(var_2) ^ 1u), vec3<bool>(true, false, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(~(-firstTrailingBit(7222i)), vec2<u32>(0u, ~(~global1[_wgslsmith_index_u32(u_input.b, 16u)])), Struct_2(_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(u_input.b, 978u, global1[_wgslsmith_index_u32(0u, 16u)])), ~vec3<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 16u)], 16u)], 11659u)), ~(~vec2<i32>(u_input.c.x, 0i)), true, 1u, vec3<bool>(true, true, true))), max(u_input.c, ~(~vec3<i32>(-2147483647i, u_input.c.x, u_input.c.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), Struct_2(reverseBits(reverseBits(vec3<u32>(0u, 26994u, 0u)) | _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 14542u, 98909u), vec3<u32>(global1[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(u_input.b, 16u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 16u)], 16u)]), vec3<u32>(4294967295u, u_input.b, 4294967295u))), u_input.c.yz, !any(vec4<bool>(false, false, true, false)), _wgslsmith_sub_u32(abs(select(u_input.b, global1[_wgslsmith_index_u32(u_input.b, 16u)], true)), global1[_wgslsmith_index_u32(u_input.b, 16u)]), vec3<bool>(true, true, true)));
    var var_1 = all(func_3());
    let var_2 = true & all(var_0.e.xy);
    var var_3 = (u_input.c.zz ^ u_input.c.xx) >> (~abs(~_wgslsmith_sub_vec2_u32(var_0.a.yx, vec2<u32>(u_input.b, 4294967295u))) % vec2<u32>(32u));
    var var_4 = 669f;
    let x = u_input.a;
    s_output = StorageBuffer(-var_0.b.x, ~var_0.a, ~(~_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b, 22876u, var_0.a.x, 0u)), vec4<u32>(global1[_wgslsmith_index_u32(var_0.d, 16u)], 4294967295u, 4294967295u, 1u) & vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(40976u, 16u)], 16u)], var_0.d, u_input.b, 0u))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(758f, -790f, -2037f, -698f)))) * vec4<f32>(_wgslsmith_f_op_f32(1149f + -1829f), _wgslsmith_f_op_f32(f32(-1f) * -621f), _wgslsmith_f_op_f32(f32(-1f) * -803f), 413f)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-898f)) - 1249f), _wgslsmith_f_op_f32(1434f * -1182f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -977f)), -899f))), -var_3.x);
}

