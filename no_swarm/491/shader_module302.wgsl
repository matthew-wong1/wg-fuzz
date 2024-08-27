struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 20> = array<vec3<i32>, 20>(vec3<i32>(0i, 54373i, 20564i), vec3<i32>(2147483647i, 1i, -1i), vec3<i32>(i32(-2147483648), 9438i, -13933i), vec3<i32>(-28872i, -44417i, 26941i), vec3<i32>(1i, -29995i, -1i), vec3<i32>(54447i, -37312i, 2147483647i), vec3<i32>(-18001i, 16071i, -2873i), vec3<i32>(0i, 73523i, 9068i), vec3<i32>(i32(-2147483648), -11233i, i32(-2147483648)), vec3<i32>(-1i, 63378i, 0i), vec3<i32>(i32(-2147483648), -44814i, 23751i), vec3<i32>(-29605i, i32(-2147483648), -13977i), vec3<i32>(25261i, 52984i, -22857i), vec3<i32>(29238i, 1i, i32(-2147483648)), vec3<i32>(-1i, 0i, 0i), vec3<i32>(9901i, -13901i, 1i), vec3<i32>(-2060i, i32(-2147483648), -1i), vec3<i32>(0i, 32700i, 1i), vec3<i32>(1i, -7457i, 7516i), vec3<i32>(2147483647i, 0i, -1i));

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(-20170i), Struct_1(-1185i), Struct_1(-1i), Struct_1(1i), Struct_1(-25809i), Struct_1(46722i), Struct_1(-5633i), Struct_1(2147483647i), Struct_1(28975i), Struct_1(-5626i), Struct_1(4534i), Struct_1(-31326i), Struct_1(-1i), Struct_1(-25i), Struct_1(2147483647i), Struct_1(-19973i), Struct_1(-3145i), Struct_1(29468i), Struct_1(0i), Struct_1(1i), Struct_1(2147483647i), Struct_1(i32(-2147483648)), Struct_1(20404i), Struct_1(-62944i), Struct_1(-61404i), Struct_1(2147483647i), Struct_1(-1i), Struct_1(7697i), Struct_1(1i));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> Struct_1 {
    var var_0 = u_input.a.x;
    return Struct_1(firstLeadingBit(1i));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<i32>) -> bool {
    let var_0 = Struct_1(_wgslsmith_dot_vec4_i32(firstTrailingBit(select(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.x, 2147483647i, arg_1.x, arg_1.x), vec4<i32>(-1i, -1i, arg_1.x, arg_1.x)), vec4<i32>(29460i, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(true, false, false, false))), _wgslsmith_div_vec4_i32((vec4<i32>(arg_1.x, 1i, arg_1.x, arg_1.x) << (vec4<u32>(38041u, u_input.a.x, 4294967295u, u_input.a.x) % vec4<u32>(32u))) >> ((vec4<u32>(29787u, u_input.a.x, u_input.a.x, 13331u) << (vec4<u32>(u_input.a.x, 1u, u_input.a.x, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u)), ~vec4<i32>(1i, -13419i, -18840i, arg_1.x))));
    global0 = array<vec3<i32>, 20>();
    return select(!any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(false, false, false, false)))), !select(any(select(vec2<bool>(true, false), vec2<bool>(false, true), true)), true, 2147483647i < (var_0.a ^ arg_1.x)), any(vec4<bool>(true, true, true, true)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-387f, -1000f, 395f, 894f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(632f, 1398f, 271f, 1111f) * vec4<f32>(-1000f, 1934f, -1000f, -373f)))), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.a, -2147483647i, -52269i) | global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(u_input.a.x, 20u)] | global0[_wgslsmith_index_u32(u_input.a.x, 20u)]) | ~(-global0[_wgslsmith_index_u32(1413u, 20u)])) & all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true), true), !all(vec4<bool>(true, true, true, false))));
    let var_1 = all(!select(vec2<bool>(true, true), vec2<bool>(true, true), false));
    var var_2 = global1[_wgslsmith_index_u32(abs(~u_input.a.x), 29u)];
    var var_3 = arg_0;
    var var_4 = func_1();
    return func_1();
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    global1 = array<Struct_1, 29>();
    var var_0 = ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(~u_input.a, u_input.a), u_input.a.x), vec3<u32>(0u, 1u, 1u));
    var var_1 = ~max(1u, var_0.x);
    let var_2 = select(!vec4<bool>(true, (arg_0.a == arg_2.a) || true, _wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(var_0.x, 20u)], global0[_wgslsmith_index_u32(var_0.x, 20u)]) == _wgslsmith_mult_i32(1i, 0i), false), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), func_3(vec4<f32>(arg_3, -1152f, 256f, arg_3), vec3<i32>(-28620i, arg_0.a, arg_0.a))), vec4<bool>(true, true, true, true), false), !select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), true), false), !(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false)))), select(vec4<bool>(any(vec4<bool>(true, false, true, false)) == true, false, all(vec4<bool>(false, true, true, true)), all(vec3<bool>(true, false, false)) & true), !select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), false), any(vec3<bool>(false, true, false))), vec4<bool>(false, true, false, !any(vec4<bool>(false, false, true, false)))));
    global1 = array<Struct_1, 29>();
    return global1[_wgslsmith_index_u32(~23898u, 29u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_2(func_1()), u_input.a.x, global1[_wgslsmith_index_u32(reverseBits(u_input.a.x), 29u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(1745f, _wgslsmith_f_op_f32(trunc(1446f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1146f - 720f))))));
    var var_1 = func_4(global1[_wgslsmith_index_u32(0u << (~max(u_input.a.x, max(u_input.a.x, u_input.a.x)) % 32u), 29u)], ~u_input.a.x, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, u_input.a.x), 29u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-236f - 1249f)))), _wgslsmith_f_op_f32(-1317f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-225f - -973f))))));
    global0 = array<vec3<i32>, 20>();
    global1 = array<Struct_1, 29>();
    let var_2 = firstLeadingBit(firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(var_1.a, var_1.a, var_0.a), vec3<i32>(-1i, -2147483647i, var_1.a)) >> (vec3<u32>(~0u, ~u_input.a.x, u_input.a.x) % vec3<u32>(32u))));
    let var_3 = countOneBits(~vec4<u32>(~1u, _wgslsmith_mod_u32(u_input.a.x, 22107u), countOneBits(u_input.a.x), 4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~(-var_2.x), _wgslsmith_mult_i32(~(-47647i), _wgslsmith_sub_i32(0i, var_2.x)), -17980i & firstTrailingBit(var_1.a)) << (vec3<u32>(48828u, 2696u, ~(4294967295u & var_3.x)) % vec3<u32>(32u)));
}

