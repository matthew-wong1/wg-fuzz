struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: Struct_2 = Struct_2(vec3<bool>(false, false, false));

var<private> global2: array<u32, 15> = array<u32, 15>(1u, 0u, 0u, 0u, 36237u, 0u, 1u, 0u, 44449u, 10935u, 1u, 0u, 0u, 0u, 0u);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<bool> {
    global2 = array<u32, 15>();
    global1 = Struct_2(!select(select(vec3<bool>(global1.a.x, false, false), vec3<bool>(global1.a.x, global1.a.x, true), global1.a), global1.a, global1.a.x));
    global2 = array<u32, 15>();
    let var_0 = Struct_5(Struct_3(abs(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstLeadingBit(u_input.d.x), global2[_wgslsmith_index_u32(4294967295u, 15u)] << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(13408u, 15u)], 15u)], 15u)] % 32u), 55403u), 15u)]), Struct_2(!global1.a)));
    global1 = var_0.a.b;
    return vec3<bool>(all(select(!vec4<bool>(false, false, true, global1.a.x), vec4<bool>(global1.a.x, false || global1.a.x, true, true), true)), true, true || (all(!vec4<bool>(global1.a.x, true, true, global1.a.x)) & global1.a.x));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_4) -> Struct_2 {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-804f, -204f, 958f), vec3<f32>(-100f, 1115f, -520f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-567f, -1668f, 1466f)))))));
    global0 = vec4<i32>(i32(-1i) * -22315i, ~(-_wgslsmith_div_i32(arg_0.x, 1i)), u_input.a.x << (~max(4294967295u, 1u) % 32u), 0i);
    let var_2 = arg_0;
    var var_3 = Struct_3(abs(global2[_wgslsmith_index_u32(4294967295u, 15u)]), Struct_2(global1.a));
    return Struct_2(func_3());
}

fn func_1(arg_0: vec3<i32>) -> vec3<f32> {
    let var_0 = func_2(-(_wgslsmith_mult_vec4_i32(~vec4<i32>(arg_0.x, -2147483647i, u_input.a.x, arg_0.x), vec4<i32>(1i, -1i, u_input.e, u_input.b)) >> (~(vec4<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 15u)], global2[_wgslsmith_index_u32(4294967295u, 15u)], 1u) ^ vec4<u32>(global2[_wgslsmith_index_u32(3877u, 15u)], 1u, 11135u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 15u)], 15u)])) % vec4<u32>(32u))), Struct_4(Struct_2(global1.a)));
    var var_1 = func_3();
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(295f, 983f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-981f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-723f)), _wgslsmith_f_op_f32(min(-1465f, 146f)), true))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(708f, 972f, -197f))))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -313f), _wgslsmith_f_op_f32(f32(-1f) * -299f), _wgslsmith_f_op_f32(f32(-1f) * -360f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 15>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(u_input.a)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1266f, _wgslsmith_f_op_f32(-459f * -504f), _wgslsmith_f_op_f32(1000f + 695f)) + _wgslsmith_f_op_vec3_f32(func_1(-global0.xzy)))));
    var var_1 = Struct_1(_wgslsmith_clamp_vec3_u32(reverseBits(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(u_input.d.x, 15u)], 4294967295u, u_input.c), vec3<u32>(0u, 91316u, global2[_wgslsmith_index_u32(u_input.d.x, 15u)])), countOneBits(vec3<u32>(u_input.c, u_input.c, 1u)))), vec3<u32>(~global2[_wgslsmith_index_u32(0u, 15u)], 32242u, u_input.d.x) ^ (vec3<u32>(1u, global2[_wgslsmith_index_u32(1u, 15u)], 1u) & firstLeadingBit(vec3<u32>(1u, 1u, 73660u))), ~(~vec3<u32>(u_input.c, global2[_wgslsmith_index_u32(u_input.c, 15u)], 0u) << (abs(vec3<u32>(global2[_wgslsmith_index_u32(71265u, 15u)], u_input.d.x, 0u)) % vec3<u32>(32u)))));
    let var_2 = func_2(_wgslsmith_mod_vec4_i32(-(~(~vec4<i32>(global0.x, 4769i, u_input.b, 9256i))), -(~_wgslsmith_add_vec4_i32(vec4<i32>(1i, 2147483647i, global0.x, -28366i), vec4<i32>(-14969i, -25771i, -28878i, global0.x)))), Struct_4(Struct_2(!(!vec3<bool>(true, global1.a.x, false)))));
    global1 = func_2(-firstTrailingBit(~(vec4<i32>(1i, -25240i, 1425i, global0.x) & vec4<i32>(u_input.a.x, -2521i, global0.x, 2147483647i))), Struct_4(var_2));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(min(_wgslsmith_dot_vec2_i32(global0.wy, vec2<i32>(48011i, 11231i)), ~0i), 9801i, countOneBits(global0.x), ~(-2147483647i)), _wgslsmith_f_op_f32(max(1616f, -652f)), global0.wyz, _wgslsmith_add_u32(var_1.a.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(var_1.a.xz), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.c), var_1.a.zy)), ~u_input.c)));
}

