struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 10> = array<vec2<i32>, 10>(vec2<i32>(17670i, -1i), vec2<i32>(-15240i, 0i), vec2<i32>(27115i, 0i), vec2<i32>(-23021i, -5903i), vec2<i32>(i32(-2147483648), 15359i), vec2<i32>(-1i, 2147483647i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(0i, -2337i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-9193i, 29799i));

var<private> global1: array<i32, 14>;

var<private> global2: array<vec2<i32>, 13> = array<vec2<i32>, 13>(vec2<i32>(0i, -1i), vec2<i32>(2147483647i, 1i), vec2<i32>(49688i, i32(-2147483648)), vec2<i32>(1i, -1530i), vec2<i32>(1i, -5322i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(0i, -9136i), vec2<i32>(2147483647i, 3374i), vec2<i32>(-53878i, 0i), vec2<i32>(-6291i, 1i), vec2<i32>(2147483647i, 12157i), vec2<i32>(0i, -12947i), vec2<i32>(1i, -26753i));

var<private> global3: Struct_1;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32) -> u32 {
    global1 = array<i32, 14>();
    return select(arg_2, 1u, !arg_0.x);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: u32) -> bool {
    global2 = array<vec2<i32>, 13>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(arg_0.b.x - -791f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-509f, global3.b.x))))))), _wgslsmith_f_op_f32(trunc(-3025f)));
    global3 = arg_0;
    global1 = array<i32, 14>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_0.x, arg_0.b.x))))), global3.b.x));
    return select(any(!vec2<bool>(any(vec3<bool>(true, false, false)), true)), true, (arg_2.c.x << ((select(1u, 34774u, false) << (firstTrailingBit(arg_2.a.x) % 32u)) % 32u)) != reverseBits(-1i));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_clamp_u32(~func_2(vec2<bool>(true, true), Struct_1(vec4<u32>(39631u, 78591u, 32544u, 1u), vec3<f32>(612f, global3.b.x, 473f), vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(global3.a.x, 14u)])), global3.a.x), _wgslsmith_add_u32(~(~global3.a.x), global3.a.x), global3.a.x);
    var var_1 = Struct_1(global3.a, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global3.b.x - 155f), global3.b.x, _wgslsmith_f_op_f32(f32(-1f) * -540f)) - global3.b), _wgslsmith_div_vec3_f32(global3.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global3.b + global3.b) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-2062f, 367f, global3.b.x), vec3<f32>(-902f, 830f, 379f))))))), reverseBits(min(global2[_wgslsmith_index_u32(1u, 13u)], -vec2<i32>(-1i, 34812i)) ^ (~vec2<i32>(global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(global3.a.x, 14u)]) ^ ~vec2<i32>(2147483647i, global3.c.x))));
    var var_2 = !vec2<bool>(((var_1.a.x | 0u) | var_1.a.x) > var_1.a.x, func_3(Struct_1(global3.a, var_1.b, reverseBits(global2[_wgslsmith_index_u32(global3.a.x, 13u)])), global3.a.zw, Struct_1(~var_1.a, global3.b, global0[_wgslsmith_index_u32(~4294967295u, 10u)]), var_1.a.x));
    let var_3 = global0[_wgslsmith_index_u32(var_1.a.x, 10u)];
    var var_4 = ~(vec3<u32>(global3.a.x, _wgslsmith_mult_u32(_wgslsmith_mult_u32(var_1.a.x, 62577u), firstLeadingBit(0u)), _wgslsmith_sub_u32(_wgslsmith_div_u32(var_1.a.x, 28626u), global3.a.x)) ^ vec3<u32>(0u, var_1.a.x, global3.a.x & global3.a.x));
    return Struct_1(_wgslsmith_mod_vec4_u32(global3.a, countOneBits(vec4<u32>(reverseBits(var_1.a.x), var_4.x, max(0u, 0u), max(59099u, 11535u)))), global3.b, _wgslsmith_add_vec2_i32(global2[_wgslsmith_index_u32(var_4.x, 13u)], global0[_wgslsmith_index_u32(32371u, 10u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = global3.c.x;
    var var_2 = max(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(var_0.c, vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(global3.a.x, 14u)])) | -global0[_wgslsmith_index_u32(global3.a.x, 10u)], firstTrailingBit(countOneBits(var_0.c))) & -vec2<i32>(~(-35988i), _wgslsmith_sub_i32(global3.c.x, -19941i)), ~var_0.c);
    let var_3 = !any(!vec4<bool>(true, true, func_3(Struct_1(vec4<u32>(var_0.a.x, 9176u, global3.a.x, var_0.a.x), global3.b, global0[_wgslsmith_index_u32(0u, 10u)]), vec2<u32>(global3.a.x, var_0.a.x), Struct_1(vec4<u32>(1u, global3.a.x, var_0.a.x, 83243u), vec3<f32>(global3.b.x, -231f, var_0.b.x), vec2<i32>(-1i, var_0.c.x)), 18197u), true));
    let var_4 = var_3;
    var var_5 = ~(~vec2<u32>(firstLeadingBit(0u << (1u % 32u)), reverseBits(345u)));
    var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(vec3<i32>(abs(47089i) | _wgslsmith_mult_i32(2147483647i, var_2.x), ~1i, ~(-global3.c.x)), reverseBits(vec3<i32>(54153i, 1i, 1i)), min(abs(firstTrailingBit(vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(50883u, 14u)], 2147483647i))), vec3<i32>(1i, -u_input.a, max(u_input.a, global1[_wgslsmith_index_u32(var_5.x, 14u)])))), global3.b, 17918u);
}

