struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> vec2<bool> {
    let var_0 = u_input.b;
    var var_1 = -vec3<i32>(~_wgslsmith_mod_i32(-7115i, global0.a), -1i, global0.a >> (0u % 32u));
    let var_2 = Struct_1(var_1.x, ~u_input.a.zz);
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-206f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-477f - -1422f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_div_f32(-445f, 713f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-623f + -707f))))));
    let var_4 = var_2;
    return select(!(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), true))), vec2<bool>(false || any(vec4<bool>(false, false, true, false)), !any(vec3<bool>(true, true, false))), true);
}

fn func_3() -> vec4<i32> {
    var var_0 = vec4<bool>((1u > u_input.b.x) | true, false, true, true);
    var_0 = !select(!vec4<bool>(var_0.x, false, !var_0.x, u_input.a.x > global0.b.x), vec4<bool>(true, true, false, !(false || var_0.x)), var_0.x);
    global0 = Struct_1(0i, ~vec2<u32>(~36543u, reverseBits(u_input.b.x)));
    var var_1 = !func_2();
    var var_2 = _wgslsmith_add_u32(global0.b.x, 31042u);
    return (vec4<i32>(-1i) * -(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.a, 5458i, -1i, -21250i), vec4<i32>(-42728i, global0.a, -1i, -10874i)) | ~vec4<i32>(-1i, global0.a, 43913i, global0.a))) << (vec4<u32>(global0.b.x, abs(reverseBits(~16183u)), _wgslsmith_add_u32(global0.b.x, 4294967295u), 1u) % vec4<u32>(32u));
}

fn func_1(arg_0: f32) -> bool {
    var var_0 = !(!func_2());
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1445f - 371f));
    let var_2 = -32555i;
    var var_3 = func_3() ^ vec4<i32>(var_2, -6884i, ~(-reverseBits(57073i)), ~(-1i));
    var var_4 = !select(vec3<bool>(var_0.x, var_0.x, false), !(!vec3<bool>(true, var_0.x, true)), var_0.x);
    return true;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3;
    let var_1 = (_wgslsmith_clamp_u32(~_wgslsmith_sub_u32(53303u, global0.b.x), 5928u, ~1u) ^ arg_3.b.x) > min(var_0.b.x, max(global0.b.x, 0u));
    var var_2 = u_input.b;
    var var_3 = Struct_1(reverseBits(0i), _wgslsmith_div_vec2_u32(u_input.a.xy >> (arg_3.b % vec2<u32>(32u)), var_2.zx));
    var var_4 = -1i;
    return Struct_1(var_3.a ^ -1i, firstTrailingBit(~_wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(u_input.a.x, var_2.x)), u_input.b.xy)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(0i, _wgslsmith_mult_vec2_u32(abs(vec2<u32>(u_input.a.x ^ global0.b.x, global0.b.x >> (85738u % 32u))), ~abs(~u_input.b.xy)));
    var_0 = Struct_1(~_wgslsmith_dot_vec4_i32(-(vec4<i32>(-27889i, global0.a, -50352i, global0.a) << (vec4<u32>(23367u, 1u, u_input.b.x, global0.b.x) % vec4<u32>(32u))), vec4<i32>(-31772i, -1i, ~var_0.a, var_0.a)), u_input.a.zy);
    let var_1 = func_4(vec2<bool>(select(true, true, all(vec2<bool>(true, true))), true), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2112f, 1068f, -114f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-318f, -1000f, -1161f) - vec3<f32>(1561f, -379f, 1183f))), vec3<f32>(1f, 1f, 1f))))), select(vec3<bool>(false, func_1(-580f), any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false)))), !select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)), true | func_2().x), Struct_1(select(global0.a, (var_0.a & global0.a) ^ global0.a, true), ~(~vec2<u32>(1u, global0.b.x))));
    global0 = Struct_1(_wgslsmith_dot_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(global0.a, -8338i), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.a, 0i), vec2<i32>(var_0.a, var_0.a), vec2<i32>(var_1.a, -2147483647i))), vec2<i32>(-23667i, _wgslsmith_mod_i32(firstTrailingBit(global0.a), var_1.a))), var_0.b);
    global0 = func_4(vec2<bool>(all(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), true), true)), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), false))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1502f, -279f)), -343f) * -410f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-3078f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-263f)), -384f))), 949f), vec3<bool>(all(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true)), !all(vec3<bool>(true, true, true))), var_1);
    let var_2 = reverseBits(vec4<i32>(func_4(select(vec2<bool>(true, true), func_2(), true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1902f, -229f, -1417f)), vec3<bool>(false, true, true), Struct_1(var_0.a & global0.a, vec2<u32>(u_input.a.x, 4294967295u))).a, var_0.a, var_0.a, _wgslsmith_mod_i32(-29679i, ~(global0.a & 33478i))));
    var var_3 = vec3<u32>(1u, countOneBits(max(_wgslsmith_add_u32(~1u, reverseBits(var_1.b.x)), ~21020u)), var_1.b.x);
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_add_i32(0i, func_4(select(vec2<bool>(true, true), vec2<bool>(true, true), false), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1000f, 920f) * vec3<f32>(-2788f, -1461f, 1070f)), vec3<bool>(false, false, true), Struct_1(var_2.x, var_0.b)).a), -var_4.a, ~min(~1i, _wgslsmith_clamp_i32(global0.a, var_4.a, 0i))), 1u, abs(vec3<i32>(global0.a, 8584i, 2147483647i)), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(698f, 1399f, true)), -666f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -117f), _wgslsmith_f_op_f32(f32(-1f) * -1021f)))));
}

