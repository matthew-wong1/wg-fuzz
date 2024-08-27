struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: i32;

var<private> global1: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(62294u, -32355i, false), Struct_2(4294967295u, 1i, true), Struct_2(4294967295u, -1i, false), Struct_2(4294967295u, i32(-2147483648), true), Struct_2(1u, -5435i, false), Struct_2(0u, -41679i, false), Struct_2(27055u, 0i, true), Struct_2(72217u, -34658i, true), Struct_2(0u, -40384i, true), Struct_2(1u, 0i, true), Struct_2(88338u, i32(-2147483648), true), Struct_2(1u, i32(-2147483648), true), Struct_2(1u, -1i, false), Struct_2(13207u, 17593i, true), Struct_2(0u, 2147483647i, false), Struct_2(0u, 67434i, true), Struct_2(1u, -1i, true), Struct_2(0u, -13630i, false), Struct_2(4294967295u, -197i, true), Struct_2(0u, 2147483647i, true), Struct_2(1u, -13764i, false));

var<private> global2: Struct_2 = Struct_2(52035u, 1i, true);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2, arg_3: Struct_1) -> i32 {
    let var_0 = arg_0;
    return 2147483647i;
}

fn func_3() -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(1u, 21u)];
    var var_1 = _wgslsmith_clamp_vec4_u32(~(~(~vec4<u32>(4294967295u, var_0.a, 39457u, global2.a))) | ~(~reverseBits(vec4<u32>(global2.a, 1u, var_0.a, 1u))), vec4<u32>(~abs(reverseBits(0u)), global2.a, _wgslsmith_dot_vec3_u32(firstTrailingBit(abs(vec3<u32>(var_0.a, 1u, 0u))), vec3<u32>(~global2.a, firstTrailingBit(global2.a), var_0.a)), 4294967295u), ~abs((vec4<u32>(48687u, var_0.a, 1u, 44378u) >> (vec4<u32>(global2.a, 93177u, 0u, var_0.a) % vec4<u32>(32u))) << (~vec4<u32>(44039u, 40388u, global2.a, 36389u) % vec4<u32>(32u))));
    var var_2 = global2.c;
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-454f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-115f, 1f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -981f) * _wgslsmith_f_op_f32(min(-230f, 168f)))))));
    var var_4 = global2.c;
    return min(global2.a >> (var_1.x % 32u), ~abs(global2.a)) | countOneBits(~23319u);
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0)));
    global2 = global1[_wgslsmith_index_u32(global2.a, 21u)];
    global0 = -u_input.a;
    var var_1 = ~(~vec3<u32>(~44660u, ~global2.a, ~1u));
    var var_2 = _wgslsmith_mod_u32(var_1.x, func_3());
    return Struct_1(-_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(2415i, u_input.a)), vec2<i32>(-22235i, 2147483647i)) ^ _wgslsmith_div_vec2_i32(vec2<i32>(max(global2.b, global2.b), firstTrailingBit(global2.b)), min(vec2<i32>(global2.b, -18843i), vec2<i32>(u_input.a, u_input.a))), vec4<bool>(global2.c, true, global2.c, true), vec2<bool>(!all(vec2<bool>(global2.c, global2.c)), true));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -1534f, -666f, -415f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, 179f, -1128f, -1223f), vec4<f32>(745f, arg_1.x, var_0.x, 263f))))))));
    global0 = _wgslsmith_mod_i32(_wgslsmith_clamp_i32(~u_input.a, -2147483647i, 1i), _wgslsmith_div_i32(max(global2.b, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_3.a.x, -6471i, -984i, arg_0.b), vec4<i32>(-3215i, 0i, 39332i, 2147483647i)), vec4<i32>(u_input.a, -15316i, -89956i, arg_3.a.x))), _wgslsmith_div_i32(2147483647i, _wgslsmith_clamp_i32(~4803i, countOneBits(-23323i), abs(arg_3.a.x)))));
    global0 = arg_3.a.x;
    var var_2 = _wgslsmith_clamp_u32(select((0u ^ ~global2.a) >> (arg_0.a % 32u), _wgslsmith_sub_u32(~firstTrailingBit(0u), 32628u), any(arg_2.zw)), ~global2.a, ~arg_0.a);
    return Struct_2(50166u | select(_wgslsmith_dot_vec2_u32(min(vec2<u32>(global2.a, arg_0.a), vec2<u32>(12026u, global2.a)), ~vec2<u32>(global2.a, 53425u)), firstTrailingBit(_wgslsmith_add_u32(0u, 4294967295u)), false), firstLeadingBit(-abs(-6078i)), !global2.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = i32(-1i) * -(~func_1(Struct_2(global2.a, -15251i, false), firstLeadingBit(0i), Struct_2(164u, global2.b, true), Struct_1(vec2<i32>(global2.b, 9742i), vec4<bool>(true, global2.c, global2.c, global2.c), vec2<bool>(global2.c, true))));
    let var_0 = u_input.a;
    var var_1 = func_4(global1[_wgslsmith_index_u32(global2.a, 21u)], vec3<f32>(-377f, 1000f, _wgslsmith_f_op_f32(round(-472f))), select(!vec4<bool>(global2.c, !global2.c, true, global2.c), vec4<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(40391i, var_0), vec2<i32>(global2.b, -13637i)) < u_input.a, true, false, (global2.c || global2.c) | all(vec2<bool>(global2.c, true))), !global2.c), func_2(_wgslsmith_f_op_f32(max(303f, _wgslsmith_f_op_f32(-852f * 2493f)))));
    var var_2 = Struct_1(countOneBits(vec2<i32>(~u_input.a, 20291i) ^ -(~vec2<i32>(25091i, u_input.a))), select(!vec4<bool>(any(vec4<bool>(var_1.c, var_1.c, false, var_1.c)), global2.c, func_2(193f).b.x, true), vec4<bool>(global2.c & var_1.c, all(!vec3<bool>(global2.c, true, var_1.c)), false, func_2(_wgslsmith_div_f32(961f, 400f)).b.x), vec4<bool>(func_4(func_4(global1[_wgslsmith_index_u32(59052u, 21u)], vec3<f32>(929f, 712f, -1000f), vec4<bool>(var_1.c, true, var_1.c, false), Struct_1(vec2<i32>(global2.b, 1i), vec4<bool>(global2.c, global2.c, true, true), vec2<bool>(false, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-357f, 1553f, -112f)), func_2(-1067f).b, func_2(-1000f)).c, false, global2.c, var_1.c)), select(vec2<bool>(select(true, any(vec2<bool>(true, false)), true), !(!global2.c)), vec2<bool>(global2.c | (global2.b == u_input.a), !global2.c || (0i <= global2.b)), !(!(!vec2<bool>(global2.c, var_1.c)))));
    var var_3 = firstLeadingBit(~(~vec4<u32>(firstTrailingBit(global2.a), var_1.a, min(4294967295u, 146462u), global2.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1387f)))));
}

