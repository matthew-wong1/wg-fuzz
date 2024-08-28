struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: vec2<i32>,
    e: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-35649i, 2147483647i, vec2<f32>(537f, -341f), vec2<i32>(9916i, -28130i), 1681f);

var<private> global1: array<i32, 25> = array<i32, 25>(12791i, 0i, 3750i, 2452i, 34129i, 1i, 72572i, -52078i, 0i, -1i, -3129i, i32(-2147483648), 0i, -1i, 1i, -17265i, i32(-2147483648), -1636i, 2147483647i, -2911i, 0i, -49900i, 51622i, 5016i, 39088i);

var<private> global2: vec3<f32>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: vec4<u32>, arg_3: vec4<i32>) -> vec2<f32> {
    let var_0 = 1u;
    global1 = array<i32, 25>();
    return global0.c;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(global0.c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_4(vec2<bool>(arg_1.a, arg_1.a), vec4<bool>(true, arg_1.a, arg_1.a, false)), u_input.a, min(vec4<u32>(2514u, 80576u, u_input.a, 13764u), vec4<u32>(u_input.c, u_input.a, 12861u, u_input.c)), _wgslsmith_add_vec4_i32(u_input.b, u_input.b))), _wgslsmith_f_op_vec2_f32(global0.c - _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, global2.x) + global2.yx))), any(select(select(vec4<bool>(arg_1.a, arg_1.a, false, false), vec4<bool>(arg_1.a, true, true, true), vec4<bool>(arg_1.a, arg_1.a, true, true)), vec4<bool>(arg_1.a, true, arg_1.a, true), !vec4<bool>(arg_1.a, arg_1.a, true, false)))))));
    var var_1 = _wgslsmith_div_f32(189f, 836f);
    return Struct_3(u_input.b.yxy);
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = arg_3;
    var var_2 = false;
    var var_3 = func_2(var_1, Struct_2(!all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false)))));
    var_3 = func_2(Struct_1(min(reverseBits(arg_3.b) ^ (-28833i | global0.b), 17468i), arg_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(var_1.c, vec2<f32>(arg_3.e, -2669f))))), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 25u)], -arg_0.x ^ _wgslsmith_clamp_i32(u_input.b.x, -1972i, u_input.b.x)), arg_1), Struct_2(all(select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))))));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(firstLeadingBit(~(-(~u_input.b.zxy))), global0.e, 657f, Struct_1(-u_input.b.x, firstTrailingBit(global0.b), _wgslsmith_f_op_vec2_f32(-global2.xx), u_input.b.xx & reverseBits(vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(u_input.c, 25u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-660f)) + _wgslsmith_f_op_f32(-812f + 1584f)))));
    global0 = func_1(~vec3<i32>(-55680i, (2147483647i >> (u_input.c % 32u)) >> (~u_input.c % 32u), abs(global1[_wgslsmith_index_u32(firstTrailingBit(1u), 25u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1341f) - _wgslsmith_f_op_f32(945f * -179f))), func_1(u_input.b.xzw, 1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1137f))), Struct_1(~u_input.b.x, global1[_wgslsmith_index_u32(~45726u, 25u)], vec2<f32>(global0.c.x, 1519f), vec2<i32>(39605i, 2147483647i), _wgslsmith_f_op_f32(floor(-249f)))).e, func_1(~(-(u_input.b.zxx >> (vec3<u32>(4294967295u, u_input.a, 52091u) % vec3<u32>(32u)))), global2.x, global0.e, func_1(countOneBits(u_input.b.zwy) << (vec3<u32>(0u, 22523u, u_input.a) % vec3<u32>(32u)), _wgslsmith_f_op_f32(select(470f, global0.c.x, false)), global0.c.x, Struct_1(u_input.b.x, global0.d.x | -65491i, _wgslsmith_f_op_vec2_f32(func_3(Struct_4(vec2<bool>(true, true), vec4<bool>(true, false, true, true)), 4294967295u, vec4<u32>(u_input.c, 1u, u_input.a, u_input.a), u_input.b)), vec2<i32>(-2147483647i, 1i), _wgslsmith_f_op_f32(-global0.c.x)))));
    global1 = array<i32, 25>();
    global0 = Struct_1(reverseBits(reverseBits(2147483647i)), _wgslsmith_dot_vec3_i32(u_input.b.xzy, u_input.b.xxx), _wgslsmith_f_op_vec2_f32(global2.yz - global0.c), firstLeadingBit(max(-abs(global0.d), _wgslsmith_add_vec2_i32(global0.d, countOneBits(vec2<i32>(global0.b, global1[_wgslsmith_index_u32(u_input.a, 25u)]))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec2_f32(func_3(Struct_4(vec2<bool>(false, false), vec4<bool>(false, true, true, false)), 0u, vec4<u32>(55530u, 1u, u_input.a, u_input.c), vec4<i32>(u_input.b.x, global1[_wgslsmith_index_u32(4294967295u, 25u)], u_input.b.x, 21026i))).x)), global2.x)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-global2.x)))));
    global1 = array<i32, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_vec2_f32(global0.c - func_1(func_2(Struct_1(u_input.b.x, -1i, global2.xx, vec2<i32>(4783i, 15277i), global0.e), Struct_2(false)).a, -590f, _wgslsmith_f_op_f32(-global2.x), Struct_1(func_2(Struct_1(-4519i, global0.d.x, vec2<f32>(1000f, 1369f), u_input.b.zx, 1710f), Struct_2(true)).a.x, -49772i, _wgslsmith_div_vec2_f32(vec2<f32>(-1459f, global0.e), global0.c), -global0.d, _wgslsmith_f_op_f32(min(global2.x, global2.x)))).c), u_input.c, global2.yz);
}

