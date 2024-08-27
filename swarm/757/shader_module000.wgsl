struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2>;

var<private> global1: array<vec4<i32>, 26>;

var<private> global2: vec4<i32> = vec4<i32>(-61184i, -28746i, -28982i, 2147483647i);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_1) -> bool {
    global1 = array<vec4<i32>, 26>();
    var var_0 = global2.wyw;
    let var_1 = 4294967295u;
    let var_2 = false;
    var var_3 = !(!(!vec3<bool>(select(true, true, true), var_2 | var_2, true)));
    return var_2;
}

fn func_2(arg_0: Struct_1) -> u32 {
    global0 = array<f32, 2>();
    var var_0 = Struct_2(Struct_1(vec2<u32>(26889u, 1u)), vec2<i32>(global2.x, -select(global2.x, ~global2.x, true)));
    var var_1 = vec4<bool>(true, true, all(vec4<bool>(any(vec2<bool>(true, true)) || all(vec4<bool>(false, false, true, true)), true, !func_3(Struct_2(var_0.a, global2.zw), var_0.b, var_0.a), true)), true);
    let var_2 = ~_wgslsmith_div_i32(var_0.b.x, -9253i);
    let var_3 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-825f, _wgslsmith_div_f32(980f, -1167f), 548f)));
    return arg_0.a.x | var_0.a.a.x;
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(select(~arg_1, arg_1, firstLeadingBit(58292u >> (0u % 32u)) <= ~arg_1), 26u)] ^ -(vec4<i32>(select(0i, -9152i, true), min(0i, arg_0), 0i, arg_0) << (~min(vec4<u32>(54399u, 47892u, u_input.b.x, u_input.a), vec4<u32>(0u, u_input.b.x, u_input.a, u_input.b.x)) % vec4<u32>(32u)));
    var var_1 = Struct_1(u_input.b);
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_1.a.x, 2u)] - arg_2.x))))))));
    let var_3 = Struct_1(~min(vec2<u32>(func_2(Struct_1(var_1.a)), 17312u), vec2<u32>(arg_1, firstTrailingBit(var_1.a.x))));
    let var_4 = true;
    return var_3;
}

fn func_1() -> StorageBuffer {
    let var_0 = Struct_2(func_4(_wgslsmith_mod_i32(global2.x, -_wgslsmith_dot_vec3_i32(global2.yyz, vec3<i32>(global2.x, global2.x, global2.x))), func_2(Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, u_input.a), vec2<u32>(0u, 1u)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 2u)], 1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1608f, 261f))))))), _wgslsmith_mod_vec2_i32(vec2<i32>(global2.x, abs(_wgslsmith_div_i32(global2.x, -36640i))), _wgslsmith_sub_vec2_i32(global2.yw, _wgslsmith_mult_vec2_i32(global2.wx, vec2<i32>(-11252i, 22688i) | vec2<i32>(global2.x, 1i)))));
    var var_1 = vec3<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(max(-global2.x, firstTrailingBit(1i)), -1i, -firstTrailingBit(global2.x)), global2.xwx), global2.x << (u_input.b.x % 32u));
    let var_2 = var_0.a;
    let var_3 = reverseBits(global1[_wgslsmith_index_u32(func_4(var_1.x, abs(_wgslsmith_add_u32(var_2.a.x, u_input.a)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(7307u, 2u)], 1411f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(var_0.a.a.x, 2u)])))).a.x, 26u)]) & max(abs(abs(-global1[_wgslsmith_index_u32(var_2.a.x, 26u)])), _wgslsmith_add_vec4_i32(~vec4<i32>(global2.x, global2.x, -1i, 0i), min(max(vec4<i32>(var_0.b.x, var_1.x, -36144i, var_1.x), global1[_wgslsmith_index_u32(27307u, 26u)]), -vec4<i32>(1758i, -2147483647i, 2147483647i, global2.x))));
    var_1 = var_3.xxx;
    return StorageBuffer(firstTrailingBit(vec3<u32>(var_2.a.x, u_input.a, abs(var_2.a.x >> (3893u % 32u)))), firstLeadingBit(vec4<u32>(_wgslsmith_sub_u32(19237u, var_2.a.x), ~1u, 81101u, ~34867u | (5516u | var_0.a.a.x))), ~_wgslsmith_div_u32(func_2(Struct_1(var_0.a.a)), u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-min(global2.xzw, ~global2.yyy));
    global2 = abs(vec4<i32>(_wgslsmith_clamp_i32(global2.x, 1i, ~global2.x), var_0.x, _wgslsmith_dot_vec3_i32(~var_0, ~(vec3<i32>(-1i, global2.x, -44601i) ^ vec3<i32>(1i, 21757i, 1i))), -global2.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(12728u, 2u)]), _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.a, 2u)], -272f)), _wgslsmith_div_f32(1174f, global0[_wgslsmith_index_u32(0u, 2u)]), global0[_wgslsmith_index_u32(u_input.b.x >> (u_input.a % 32u), 2u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 2u)], -737f, 398f, global0[_wgslsmith_index_u32(1u, 2u)]), vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], 1272f, -1062f, global0[_wgslsmith_index_u32(u_input.a, 2u)]), true)))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(711f, global0[_wgslsmith_index_u32(u_input.a, 2u)], 734f, global0[_wgslsmith_index_u32(u_input.a, 2u)]) * vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 2u)], -2257f, global0[_wgslsmith_index_u32(u_input.b.x, 2u)], 1096f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 2u)], -453f, global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(u_input.b.x, 2u)])))))));
    var var_2 = var_1.x;
    let var_3 = Struct_2(Struct_1(u_input.b), global2.xw);
    var var_4 = 2147483647i;
    let x = u_input.a;
    s_output = func_1();
}

