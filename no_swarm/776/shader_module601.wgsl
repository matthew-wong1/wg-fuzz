struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: f32,
    d: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_3,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<u32>(4414u, 4294967295u, 1u), 1000f);

var<private> global1: array<vec2<f32>, 16> = array<vec2<f32>, 16>(vec2<f32>(1119f, 1505f), vec2<f32>(1000f, 1017f), vec2<f32>(-1000f, -251f), vec2<f32>(1808f, 648f), vec2<f32>(909f, 1000f), vec2<f32>(1555f, -958f), vec2<f32>(1000f, -703f), vec2<f32>(-1349f, -775f), vec2<f32>(-877f, 2259f), vec2<f32>(-952f, 1000f), vec2<f32>(633f, 1099f), vec2<f32>(1058f, 1376f), vec2<f32>(1000f, 595f), vec2<f32>(-1000f, -690f), vec2<f32>(-1859f, -828f), vec2<f32>(-357f, -775f));

var<private> global2: u32;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: vec3<u32>, arg_3: Struct_2) -> bool {
    return !all(!vec3<bool>(arg_3.b || arg_3.b, any(vec2<bool>(false, false)), false));
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: Struct_1, arg_3: vec2<i32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)))), 161f)));
    var var_1 = vec3<i32>(19722i, arg_1.d.d.x, 2147483647i) | -arg_1.c.zyx;
    var_1 = _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 1i, arg_1.c.x), -arg_2.d.wzw | -vec3<i32>(arg_1.d.d.x, arg_3.x, arg_1.b.d)) & (((vec3<i32>(7994i, 1i, -2147483647i) << (global0.a % vec3<u32>(32u))) | _wgslsmith_clamp_vec3_i32(arg_1.d.d.xyx, arg_1.d.d.yzy, vec3<i32>(arg_1.c.x, 0i, arg_3.x))) | _wgslsmith_mod_vec3_i32(min(vec3<i32>(u_input.a, u_input.a, -29935i), arg_1.d.d.wxz), select(vec3<i32>(arg_2.d.x, -17259i, -1416i), vec3<i32>(u_input.a, 23997i, 1i), vec3<bool>(arg_1.b.b, arg_0, arg_0)))), _wgslsmith_sub_vec3_i32(-(~abs(vec3<i32>(0i, -1i, -1i))), vec3<i32>(~reverseBits(var_1.x), 12511i, 0i)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-arg_2.a);
    let var_3 = _wgslsmith_div_i32(arg_3.x, abs(abs(-1i))) | abs(1i);
    return -29686i;
}

fn func_2() -> Struct_1 {
    let var_0 = 21089u;
    let var_1 = u_input.a;
    var var_2 = select(_wgslsmith_add_vec3_i32(vec3<i32>(-30190i, _wgslsmith_add_i32(26574i, i32(-1i) * -8596i), func_4(func_3(global0.b, 4294967295u, global0.a, Struct_2(vec4<u32>(var_0, global0.a.x, 0u, var_0), true, 345f, u_input.a)), Struct_4(Struct_3(vec3<u32>(global0.a.x, 18623u, 7210u), global0.b), Struct_2(vec4<u32>(var_0, var_0, global0.a.x, 0u), false, global0.b, -2147483647i), vec4<i32>(var_1, -36134i, 77211i, var_1), Struct_1(vec2<f32>(-382f, 653f), global0.b, global0.b, vec4<i32>(7011i, 1i, u_input.a, u_input.a), global0.b), Struct_3(vec3<u32>(global0.a.x, 1u, 0u), 756f)), Struct_1(vec2<f32>(-653f, 1351f), 188f, 272f, vec4<i32>(u_input.a, u_input.a, u_input.a, 0i), global0.b), vec2<i32>(17682i, 1i))), -firstLeadingBit(abs(vec3<i32>(u_input.a, u_input.a, -1i)))), min(select(~countOneBits(vec3<i32>(var_1, 0i, -15855i)), vec3<i32>(~var_1, u_input.a, firstTrailingBit(-1i)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), vec3<i32>(-firstTrailingBit(var_1), countOneBits(~1i), ~(~(-8993i)))), true);
    var var_3 = ~(~(~_wgslsmith_mod_u32(4294967295u, 11123u)));
    return Struct_1(global1[_wgslsmith_index_u32(var_0, 16u)], -1560f, 1022f, -countOneBits(_wgslsmith_div_vec4_i32(-vec4<i32>(var_2.x, var_1, var_2.x, var_2.x), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1, var_1, var_2.x, var_1), vec4<i32>(u_input.a, 1i, 6127i, 2147483647i)))), -126f);
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    global2 = ~global0.a.x;
    global2 = select(13055u, ~45703u, true == (_wgslsmith_div_i32(-723i, u_input.a) == -47848i));
    let var_0 = ~(~global0.a.yz);
    var var_1 = func_2();
    var var_2 = true;
    return Struct_2(_wgslsmith_add_vec4_u32(~min(_wgslsmith_add_vec4_u32(vec4<u32>(21650u, 1u, var_0.x, global0.a.x), vec4<u32>(var_0.x, 0u, global0.a.x, 4392u)), vec4<u32>(global0.a.x, 20261u, global0.a.x, 10965u)), vec4<u32>(_wgslsmith_div_u32(var_0.x, global0.a.x), 0u, ~global0.a.x, ~global0.a.x) >> (~_wgslsmith_sub_vec4_u32(vec4<u32>(104819u, global0.a.x, 38784u, var_0.x), vec4<u32>(var_0.x, global0.a.x, 4294967295u, global0.a.x)) % vec4<u32>(32u))), !any(vec3<bool>(true, true, false)), _wgslsmith_f_op_f32(step(-173f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-132f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1052f, global0.b))))))), 9581i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(vec2<f32>(1804f, _wgslsmith_f_op_f32(global0.b * 1f)), -1417f, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) * _wgslsmith_f_op_f32(global0.b - global0.b))), firstLeadingBit(firstLeadingBit(vec4<i32>(u_input.a, u_input.a, 80620i, u_input.a))), global0.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(global0.a.xx, ~vec2<u32>(global0.a.x, var_0.a.x), var_0.a.zz | global0.a.zz), ~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, var_0.a.x), vec2<u32>(1u, global0.a.x) << (global0.a.xx % vec2<u32>(32u)))), ~min(vec3<u32>(global0.a.x ^ 1u, ~global0.a.x, 0u), _wgslsmith_mod_vec3_u32(select(global0.a, vec3<u32>(var_0.a.x, var_0.a.x, global0.a.x), var_0.b), var_0.a.wwx)));
}

