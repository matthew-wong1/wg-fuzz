struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29>;

var<private> global1: array<vec3<u32>, 28>;

var<private> global2: vec2<i32>;

var<private> global3: Struct_1;

var<private> global4: i32 = 23549i;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: i32) -> vec3<bool> {
    global0 = array<bool, 29>();
    var var_0 = any(select(select(vec2<bool>(true, true), select(!vec2<bool>(false, global0[_wgslsmith_index_u32(32814u, 29u)]), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 29u)], false), true), vec2<bool>(any(vec3<bool>(false, true, global0[_wgslsmith_index_u32(1u, 29u)])), any(vec4<bool>(global0[_wgslsmith_index_u32(global3.a.x, 29u)], false, true, global0[_wgslsmith_index_u32(0u, 29u)])))), vec2<bool>((u_input.a < global3.b.x) || (960f > arg_0), any(vec2<bool>(false, false))), select(select(!vec2<bool>(false, global0[_wgslsmith_index_u32(103386u, 29u)]), !vec2<bool>(global0[_wgslsmith_index_u32(1u, 29u)], false), select(vec2<bool>(true, global0[_wgslsmith_index_u32(global3.a.x, 29u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(global3.a.x, 29u)]), vec2<bool>(global0[_wgslsmith_index_u32(global3.a.x, 29u)], true))), select(vec2<bool>(global0[_wgslsmith_index_u32(34643u, 29u)], global0[_wgslsmith_index_u32(global3.c.x, 29u)]), select(vec2<bool>(true, true), vec2<bool>(true, true), false), global0[_wgslsmith_index_u32(5871u, 29u)] || false), true == select(false, true, true))));
    global0 = array<bool, 29>();
    var var_1 = _wgslsmith_sub_i32(select(select(u_input.e, 2147483647i, false), ~arg_1, !(!global0[_wgslsmith_index_u32(global3.a.x, 29u)] & select(true, global0[_wgslsmith_index_u32(4294967295u, 29u)], true))), ~_wgslsmith_clamp_i32(-19107i, -2147483647i, -_wgslsmith_add_i32(1i, -4708i)));
    global1 = array<vec3<u32>, 28>();
    return vec3<bool>(!global0[_wgslsmith_index_u32(u_input.c.x, 29u)], global0[_wgslsmith_index_u32(global3.c.x, 29u)], true);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> vec2<i32> {
    global3 = Struct_1(global3.a, max(_wgslsmith_div_vec4_i32(global3.b, arg_0), arg_0), arg_1.c);
    global0 = array<bool, 29>();
    var var_0 = -304f;
    var var_1 = Struct_1(_wgslsmith_clamp_vec2_u32(u_input.b.yy, ~_wgslsmith_sub_vec2_u32(u_input.c.xw, global3.c.yy) >> (vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(32800u, 1u, 4294967295u), vec3<u32>(48375u, 15284u, arg_1.c.x)), countOneBits(u_input.c.x)) % vec2<u32>(32u)), max(_wgslsmith_mult_vec2_u32(arg_1.c.zz, vec2<u32>(34169u, 1u)), vec2<u32>(56526u, u_input.b.x)) | (~global3.c.xy | ~vec2<u32>(8188u, global3.a.x))), arg_1.b, ~vec3<u32>(43637u, global3.c.x >> (min(global3.c.x, 1u) % 32u), u_input.b.x));
    var var_2 = func_3(_wgslsmith_f_op_f32(f32(-1f) * -104f), -29773i);
    return arg_0.yy;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_1) -> vec4<u32> {
    global0 = array<bool, 29>();
    var var_0 = Struct_1(u_input.b.yx, abs(arg_3.b), ~(~arg_3.c));
    var var_1 = ~24424u;
    var var_2 = -1i ^ -arg_0.b.x;
    global2 = -(~func_2(vec4<i32>(-1i, -48249i, arg_0.b.x, u_input.e) >> (~vec4<u32>(4294967295u, global3.c.x, arg_2, 1u) % vec4<u32>(32u)), Struct_1(vec2<u32>(arg_2, global3.c.x), global3.b << (u_input.c % vec4<u32>(32u)), arg_0.c ^ global3.c)));
    return ~u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(u_input.c.xx, ~vec4<i32>(38697i, -global3.b.x, firstLeadingBit(global3.b.x), global2.x), ~abs(vec3<u32>(30651u, u_input.c.x, global3.a.x))), vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1087f)))), global3.a.x, Struct_1(~(~_wgslsmith_div_vec2_u32(global3.a, global3.c.xz)), _wgslsmith_clamp_vec4_i32(max(select(vec4<i32>(-30480i, -2147483647i, -32232i, global3.b.x), vec4<i32>(u_input.a, -16709i, global3.b.x, -10707i), vec4<bool>(global0[_wgslsmith_index_u32(global3.c.x, 29u)], global0[_wgslsmith_index_u32(1u, 29u)], true, global0[_wgslsmith_index_u32(2026u, 29u)])), vec4<i32>(-628i, global2.x, u_input.d.x, 13922i)), -global3.b, ~global3.b), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(global3.c, vec3<u32>(u_input.c.x, u_input.b.x, 4294967295u)), ~global3.c, select(global1[_wgslsmith_index_u32(u_input.c.x, 28u)], vec3<u32>(global3.c.x, u_input.b.x, 1u), vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.b.x, 29u)]))), u_input.c.zyx)));
    global2 = -abs(u_input.d.zz) ^ global3.b.wx;
    global4 = -25915i;
    var var_1 = Struct_1(~(~reverseBits(global3.c.yy)), ~vec4<i32>(-39028i, _wgslsmith_clamp_i32(countOneBits(global3.b.x), 2147483647i & global3.b.x, _wgslsmith_add_i32(global3.b.x, u_input.d.x)), 0i, global3.b.x), vec3<u32>(abs(var_0.x), reverseBits(select(~0u, 1u, all(vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 29u)], false)))), 0u ^ u_input.b.x));
    var var_2 = vec2<u32>(var_1.c.x, 1u);
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-493f - -798f), -1532f, -2244f, 170f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1401f, -129f, -681f, 1000f) + vec4<f32>(692f, 744f, -1000f, 656f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-733f, -887f, -621f, -594f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-767f, -1375f, -646f, 213f), vec4<f32>(-1208f, -1217f, 1290f, 736f)))), false)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1609f, -653f, -579f, -223f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-811f, -1000f, 157f, 1393f)))))))), all(select(!select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(u_input.b.x, 29u)]), vec4<bool>(global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(6290u, 29u)], global0[_wgslsmith_index_u32(52820u, 29u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(var_0.x, 29u)], global0[_wgslsmith_index_u32(0u, 29u)])), !vec4<bool>(true, global0[_wgslsmith_index_u32(13040u, 29u)], false, true), global0[_wgslsmith_index_u32(~global3.a.x, 29u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, var_3.wxy, firstTrailingBit(global2.x));
}

