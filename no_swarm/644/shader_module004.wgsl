struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: vec3<i32>,
    d: bool,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 12>;

var<private> global1: f32 = -1178f;

var<private> global2: i32 = 38962i;

var<private> global3: u32 = 4294967295u;

var<private> global4: array<i32, 1> = array<i32, 1>(39206i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    global0 = array<vec4<f32>, 12>();
    var var_0 = Struct_1(u_input.b.xy);
    let var_1 = Struct_3(Struct_1(~_wgslsmith_add_vec2_u32(u_input.b.zy, vec2<u32>(u_input.b.x, var_0.a.x))), Struct_1(~_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.yy)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + 153f), -382f)), -146f)));
    var var_3 = -1699f;
    return var_2;
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_3(Struct_1(~((u_input.b.yz & u_input.b.xy) ^ ~vec2<u32>(11125u, 6477u))), Struct_1(u_input.b.zx));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(720f, -1000f, -812f, -1000f))) - vec4<f32>(-1000f, _wgslsmith_f_op_f32(-123f + 1030f), _wgslsmith_div_f32(549f, 1000f), _wgslsmith_f_op_f32(step(-735f, -1412f)))), vec4<f32>(712f, -505f, 1f, 1043f))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_div_f32(var_1.x, 300f));
    let var_3 = vec2<i32>(u_input.a, u_input.a);
    global2 = 0i;
    return select(vec3<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, true), true)), true, true), vec3<bool>(true & all(vec3<bool>(true, true, true)), all(vec3<bool>(true, false, true)), true), !select(vec3<bool>(u_input.b.x <= 14560u, var_1.x < -405f, true), vec3<bool>(any(vec4<bool>(true, true, true, false)), any(vec4<bool>(false, false, false, false)), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)))));
}

fn func_1(arg_0: vec4<f32>) -> vec3<u32> {
    let var_0 = !select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), func_2()), any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true)))), func_2(), func_2());
    global0 = array<vec4<f32>, 12>();
    global3 = 55776u;
    let var_1 = Struct_1(u_input.b.zz);
    global4 = array<i32, 1>();
    return _wgslsmith_sub_vec3_u32(vec3<u32>(~19073u, ~1u, firstLeadingBit(var_1.a.x)), ~vec3<u32>(~(~66980u), 3316u, u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(~(i32(-1i) * -global4[_wgslsmith_index_u32(~5392u, 1u)]), 40910i, abs(max(reverseBits(u_input.a) | _wgslsmith_clamp_i32(global4[_wgslsmith_index_u32(22417u, 1u)], u_input.a, global4[_wgslsmith_index_u32(u_input.b.x, 1u)]), _wgslsmith_clamp_i32(~0i, max(u_input.a, global4[_wgslsmith_index_u32(u_input.b.x, 1u)]), global4[_wgslsmith_index_u32(37664u, 1u)]))), global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(func_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-447f, 1012f, 1000f, -675f)))), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.b.x), vec3<u32>(u_input.b.x, 4294967295u, 4294967295u)), ~vec3<u32>(776u, 0u, 21524u))), 1u)]);
    let var_1 = select(vec4<i32>(select(var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, global4[_wgslsmith_index_u32(17033u, 1u)], 2147483647i), _wgslsmith_div_vec3_i32(var_0.zxx, var_0.wzz)), !any(vec4<bool>(true, true, true, false))), var_0.x, countOneBits(var_0.x), ~(-(~global4[_wgslsmith_index_u32(0u, 1u)]))), countOneBits(abs(vec4<i32>(41918i, -13988i, 14394i, var_0.x)) | ~vec4<i32>(var_0.x, global4[_wgslsmith_index_u32(u_input.b.x, 1u)], u_input.a, global4[_wgslsmith_index_u32(u_input.b.x, 1u)])), true);
    var_0 = vec4<i32>(global4[_wgslsmith_index_u32(12424u, 1u)], reverseBits(min(global4[_wgslsmith_index_u32(u_input.b.x, 1u)], max(~var_1.x, ~(-33267i)))), firstTrailingBit(_wgslsmith_sub_i32(-var_1.x, firstTrailingBit(reverseBits(-27193i)))), 1i);
    let var_2 = -var_0.yw;
    let var_3 = select(select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), true)), vec2<bool>(any(vec3<bool>(var_2.x <= -1i, all(vec4<bool>(false, true, false, false)), true)), false), vec2<bool>(true, true));
    let var_4 = Struct_4(all(func_2()), Struct_1(vec2<u32>(_wgslsmith_div_u32(u_input.b.x ^ u_input.b.x, ~u_input.b.x), u_input.b.x)), reverseBits(-(var_0.wwz << (~vec3<u32>(u_input.b.x, 1u, 1u) % vec3<u32>(32u)))), var_3.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-640f, 1588f) + vec2<f32>(-1000f, -670f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(364f, 990f) - vec2<f32>(-2103f, 292f))))))));
    global1 = _wgslsmith_f_op_f32(func_3());
    global0 = array<vec4<f32>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(~u_input.b.x));
}

