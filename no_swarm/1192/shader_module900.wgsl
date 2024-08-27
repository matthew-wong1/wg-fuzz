struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30>;

var<private> global1: Struct_2;

var<private> global2: Struct_2 = Struct_2(vec3<u32>(0u, 1u, 1u), vec3<u32>(23375u, 0u, 4294967295u), vec3<f32>(122f, -2074f, -1000f));

var<private> global3: array<vec3<f32>, 24>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3) -> vec4<f32> {
    global1 = Struct_2(~vec3<u32>(~global1.a.x, global1.a.x, global2.b.x), vec3<u32>(~abs(countOneBits(global1.a.x)), ~global1.a.x | ~1u, ~125000u ^ ~(~global2.b.x)), global3[_wgslsmith_index_u32(4294967295u, 24u)]);
    global1 = global0[_wgslsmith_index_u32(1727u, 30u)];
    var var_0 = select(vec3<bool>(select(true, true, any(vec3<bool>(true, false, false))) && true, (abs(0u) < abs(global1.b.x)) & (global1.b.x < global2.b.x), any(vec3<bool>(true, true, true))), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), vec3<bool>(true, any(vec4<bool>(false, true, false, true)), true), true), !(true && (any(vec3<bool>(false, false, true)) | false)));
    let var_1 = arg_1.a;
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 559f, 1165f, global1.c.x) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(375f, 1824f, arg_0.a, -362f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-583f, var_1, 922f, -267f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-471f, 492f, -1000f, 228f) + vec4<f32>(global1.c.x, var_1, arg_0.a, arg_1.a))))))));
    return vec4<f32>(-1000f, arg_1.a, -195f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(global1.c.x)))) - -540f)));
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> i32 {
    let var_0 = Struct_4(4294967295u, arg_1.c.x != -153f, _wgslsmith_f_op_vec4_f32(func_3(Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_div_f32(647f, arg_1.c.x))), -u_input.a), Struct_3(global1.c.x, u_input.a))));
    global0 = array<Struct_2, 30>();
    let var_1 = ~vec4<u32>(_wgslsmith_div_u32(reverseBits(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 46568u, arg_0), global2.a) >> (reverseBits(71367u) % 32u)), 4294967295u, arg_1.a.x, _wgslsmith_div_u32(abs(global1.b.x), 28877u));
    let var_2 = _wgslsmith_dot_vec3_i32(-u_input.a.xzx, u_input.a.xwy);
    let var_3 = Struct_2(abs(vec3<u32>(~(~global1.b.x), global2.b.x, (global2.b.x | 0u) | ~global1.a.x)), ~(~vec3<u32>(var_0.a, arg_0, global1.a.x)) ^ _wgslsmith_div_vec3_u32(~vec3<u32>(global2.a.x, arg_0, var_1.x), var_1.xxx), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~var_1, var_1), ~1u), 24u)]);
    return u_input.a.x;
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = func_2(global1.a.x, Struct_2(global2.b, min(min(global1.a, vec3<u32>(89847u, global1.b.x, 77044u)), global2.a), global3[_wgslsmith_index_u32(0u, 24u)])) ^ arg_1.a.x;
    global2 = Struct_2(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(~global1.a, vec3<u32>(global2.a.x, global1.b.x, global1.a.x)), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(global1.b, global2.b), global1.a & global1.b, _wgslsmith_add_vec3_u32(vec3<u32>(global2.b.x, global1.b.x, global1.a.x), global2.b))) | _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(max(global2.a, vec3<u32>(0u, global1.a.x, 8072u)), select(vec3<u32>(37980u, 4294967295u, 40890u), vec3<u32>(0u, 45249u, global1.b.x), vec3<bool>(true, true, arg_0))), _wgslsmith_div_vec3_u32(~global2.a, ~global2.a)), ~min(_wgslsmith_div_vec3_u32(global1.b, abs(global2.a)), vec3<u32>(global1.a.x, ~global2.a.x, ~global1.a.x)), _wgslsmith_div_vec3_f32(global3[_wgslsmith_index_u32(firstLeadingBit(~global1.a.x), 24u)], global2.c));
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -439f);
    let var_3 = arg_1;
    return Struct_1(vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(0i, var_0 | 2147483647i, firstTrailingBit(2414i), countOneBits(arg_1.a.x))), firstLeadingBit(_wgslsmith_div_i32(~0i, arg_1.a.x)), -arg_1.a.x, var_3.a.x & ~min(1i, 16526i)), select(true, all(!(!vec4<bool>(false, false, var_3.b, true))), (arg_0 & false) && arg_1.b));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: Struct_1) -> f32 {
    global2 = global0[_wgslsmith_index_u32(28176u, 30u)];
    global2 = global0[_wgslsmith_index_u32(~4294967295u, 30u)];
    global0 = array<Struct_2, 30>();
    global0 = array<Struct_2, 30>();
    var var_0 = all(select(vec4<bool>(any(vec3<bool>(true, true, true)), true, arg_2.b && true, arg_2.b), vec4<bool>(arg_2.b, arg_2.b, true, arg_2.b), vec4<bool>((-1i != arg_2.a.x) && (arg_2.b | false), -arg_2.a.x <= arg_2.a.x, any(vec4<bool>(false, true, arg_2.b, arg_2.b)) || true, false)));
    return global2.c.x;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.c.x, global1.c.x, _wgslsmith_f_op_f32(max(global1.c.x, arg_0.x)), _wgslsmith_f_op_f32(-global2.c.x)))));
    var var_1 = u_input.a;
    let var_2 = Struct_4(_wgslsmith_sub_u32(~global1.b.x, _wgslsmith_sub_u32(global1.a.x, 16606u)), arg_1.b, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1025f, global2.c.x, arg_0.x, var_0.x) * vec4<f32>(218f, global1.c.x, -1000f, arg_0.x)) - var_0))));
    var var_3 = var_2.b;
    var var_4 = arg_1.b;
    return StorageBuffer(u_input.a.wz, arg_1.a.zz);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 30>();
    var var_0 = countOneBits(u_input.a.x) < -49606i;
    let var_1 = Struct_4(global1.b.x, false, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-373f, global2.c.x, -1060f, global2.c.x)), vec4<f32>(-506f, global1.c.x, global1.c.x, 694f))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.c.yx * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(308f, global1.c.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(896f, global2.c.x), vec2<f32>(742f, global1.c.x), vec2<bool>(false, true))))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.c.yy * vec2<f32>(-985f, -532f))) - global2.c.yz)));
    var var_3 = global1.a.x;
    let var_4 = true;
    let x = u_input.a;
    s_output = func_5(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-769f, -1515f), -806f, true)) - _wgslsmith_f_op_f32(func_4(Struct_3(global2.c.x, u_input.a), ~global1.a.x, func_1(false, Struct_1(u_input.a, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(max(1026f, 1541f))))), Struct_1(vec4<i32>(97077i, ~abs(-20753i), -u_input.a.x & 7043i, u_input.a.x), var_4));
}

