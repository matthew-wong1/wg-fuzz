struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<bool, 30>;

var<private> global2: vec2<bool> = vec2<bool>(true, true);

var<private> global3: vec2<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec2<bool>) -> u32 {
    var var_0 = false;
    var var_1 = vec2<bool>(global2.x, false);
    global0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(496f + global3.x)), global0.x)))), 354f, global0.x);
    global1 = array<bool, 30>();
    var_1 = vec2<bool>(var_1.x, false);
    return (~abs(u_input.a.x) << (max(u_input.a.x, u_input.a.x) % 32u)) & ~_wgslsmith_sub_u32(countOneBits(u_input.a.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(24491u, u_input.a.x, 0u, u_input.a.x), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)));
}

fn func_1() -> bool {
    let var_0 = u_input.b.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-231f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x)))) + _wgslsmith_f_op_f32(trunc(206f))));
    let var_2 = -1i;
    global1 = array<bool, 30>();
    let var_3 = vec4<u32>(26521u, func_2(vec2<bool>(!(u_input.a.x > 0u), !global1[_wgslsmith_index_u32(4294967295u, 30u)] || (var_2 <= var_0))), firstLeadingBit(countOneBits(94534u) ^ u_input.a.x), u_input.a.x);
    return global1[_wgslsmith_index_u32(u_input.a.x, 30u)];
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: i32) -> vec4<i32> {
    let var_0 = Struct_3(firstTrailingBit(arg_2));
    var var_1 = u_input.a.x;
    global1 = array<bool, 30>();
    let var_2 = !any(vec4<bool>(true, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 1u, 4294967295u, u_input.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 18516u), u_input.a)), 30u)], false, false));
    var_1 = max(~abs(countOneBits(_wgslsmith_div_u32(45356u, u_input.a.x))), ~max(u_input.a.x, reverseBits(firstTrailingBit(98982u))));
    return vec4<i32>(~(-(~(-53100i))) | -reverseBits(-arg_1.a.x), -var_0.a, ~_wgslsmith_dot_vec4_i32(arg_1.a, _wgslsmith_sub_vec4_i32(arg_1.a, -vec4<i32>(var_0.a, -15797i, var_0.a, arg_0.a))), -47573i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(any(vec4<bool>(false, true, global2.x, false)) & !func_1(), !global1[_wgslsmith_index_u32(reverseBits(~28860u), 30u)], global2.x, global1[_wgslsmith_index_u32(u_input.a.x, 30u)]), vec4<bool>(!func_1(), all(vec2<bool>(true, global1[_wgslsmith_index_u32(46122u, 30u)])), true, (u_input.c << (12653u % 32u)) >= 28471i), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(19627u, ~(~firstTrailingBit(u_input.a.x))), 30u)]);
    var var_1 = Struct_1(func_3(Struct_3(firstLeadingBit(19627i)), Struct_1(select(max(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -1888i), vec4<i32>(u_input.c, 0i, u_input.c, 2406i)), reverseBits(vec4<i32>(0i, u_input.b.x, -2147483647i, -15046i)), true)), ~u_input.b.x));
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-293f)), _wgslsmith_f_op_f32(-global3.x), all(var_0.yzw))), -862f)) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-415f, -1453f)), _wgslsmith_f_op_vec2_f32(global0.xy * vec2<f32>(-1006f, -145f))))))));
    var var_2 = vec2<u32>(18152u, ~0u) << (select(u_input.a.ww, _wgslsmith_add_vec2_u32(~u_input.a.ww, vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(0u, u_input.a.x)), ~21807u)), global1[_wgslsmith_index_u32(u_input.a.x, 30u)]) % vec2<u32>(32u));
    let var_3 = 4294967295u;
    var var_4 = global0.x;
    let var_5 = Struct_1(_wgslsmith_mod_vec4_i32(var_1.a, vec4<i32>(min(~var_1.a.x, 0i), -1i, firstTrailingBit(1i), i32(-1i) * -20076i)));
    let var_6 = var_5.a.xxz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(global0.xx)));
}

