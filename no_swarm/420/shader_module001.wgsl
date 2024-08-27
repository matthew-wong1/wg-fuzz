struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 1>;

var<private> global1: f32 = 342f;

var<private> global2: array<f32, 26>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(~u_input.b.x, 26u)]));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x ^ 31296u), 26u)])))));
    var var_2 = -790f;
    global1 = _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(156f)))))));
    var_1 = -242f;
    return _wgslsmith_f_op_f32(ceil(var_0));
}

fn func_2() -> u32 {
    global1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-351f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 26u)] * -944f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b.x | 4294967295u, 26u)] - _wgslsmith_f_op_f32(func_3()))))));
    var var_0 = Struct_2(Struct_1(!(!global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 1u), u_input.b), 1u)]), !vec4<bool>(all(vec2<bool>(false, true)), global2[_wgslsmith_index_u32(u_input.b.x, 26u)] < global2[_wgslsmith_index_u32(u_input.b.x, 26u)], any(vec3<bool>(true, false, false)), true), 0u >> (select(u_input.b.x, 4294967295u, all(vec3<bool>(false, false, false))) % 32u), u_input.b.x), vec2<i32>(u_input.d, u_input.c.x) & u_input.c, reverseBits(_wgslsmith_div_vec4_i32(~u_input.a, select(vec4<i32>(-2322i, u_input.d, -35339i, u_input.c.x), u_input.a, true))), Struct_1(select(!select(global0[_wgslsmith_index_u32(u_input.b.x, 1u)], global0[_wgslsmith_index_u32(77921u, 1u)], false), vec4<bool>(any(vec2<bool>(true, false)), false, false, true), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(60309u, 26u)]) != _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(u_input.b.x, 26u)]))), vec4<bool>(any(!global0[_wgslsmith_index_u32(16661u, 1u)]), !any(vec2<bool>(true, true)), all(!global0[_wgslsmith_index_u32(u_input.b.x, 1u)]), any(vec3<bool>(true, false, false))), 60687u, _wgslsmith_dot_vec4_u32(u_input.b, ~(~vec4<u32>(u_input.b.x, u_input.b.x, 1u, 353u)))));
    global2 = array<f32, 26>();
    var var_1 = ~(~_wgslsmith_div_vec3_u32(u_input.b.yww, vec3<u32>(1u, 1u, ~var_0.d.c)));
    var var_2 = ~var_1.x;
    return var_0.a.c;
}

fn func_1() -> bool {
    let var_0 = vec3<u32>(~(countOneBits(4294967295u) & _wgslsmith_mod_u32(u_input.b.x, 44596u)), ~(~u_input.b.x), reverseBits(func_2()));
    let var_1 = _wgslsmith_sub_u32(~(~1u), ~(~_wgslsmith_dot_vec3_u32(u_input.b.wwx, u_input.b.wzx))) ^ _wgslsmith_clamp_u32(u_input.b.x | 1u, _wgslsmith_clamp_u32(52324u, u_input.b.x, ~u_input.b.x) >> ((u_input.b.x << (_wgslsmith_clamp_u32(u_input.b.x, var_0.x, 1u) % 32u)) % 32u), 0u);
    let var_2 = _wgslsmith_f_op_f32(859f + global2[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x), 26u)]);
    var var_3 = select(true, select(!(!any(vec2<bool>(false, true))), ~abs(1690u) <= var_0.x, (true && any(vec3<bool>(true, false, true))) || all(vec2<bool>(true, true))), _wgslsmith_clamp_i32(1i, firstLeadingBit(u_input.a.x), abs(u_input.d)) <= firstTrailingBit(~11095i));
    global1 = _wgslsmith_f_op_f32(floor(var_2));
    return true;
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> i32 {
    var var_0 = 1u;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-118f + -120f)));
    var var_1 = arg_1;
    global2 = array<f32, 26>();
    var var_2 = Struct_1(!vec4<bool>(any(!vec2<bool>(arg_1.a.x, true)), !func_1(), any(select(var_1.a.wy, vec2<bool>(true, var_1.a.x), arg_1.a.x)), !any(var_1.b.yww)), arg_1.a, firstLeadingBit(18193u), countOneBits(arg_1.c));
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    var var_1 = select(0i, func_4(true & func_1(), Struct_1(!global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(~4294967295u, 1u)], _wgslsmith_add_u32(45281u, 61551u), 6820u)) ^ _wgslsmith_div_i32(max(-u_input.d, func_4(false, Struct_1(vec4<bool>(false, true, false, true), global0[_wgslsmith_index_u32(var_0.x, 1u)], 0u, 1986u))), countOneBits(7803i & u_input.a.x)), !(!all(vec3<bool>(false, true, true))));
    var_1 = u_input.d;
    global2 = array<f32, 26>();
    global2 = array<f32, 26>();
    let var_2 = Struct_1(vec4<bool>(true, true, var_0.x == ~(var_0.x ^ 4294967295u), false), !vec4<bool>(true, any(vec4<bool>(true, true, true, true)), any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), 74314u >= firstTrailingBit(4294967295u)), abs(min(abs(_wgslsmith_dot_vec3_u32(var_0.zxz, var_0.yyy)), firstTrailingBit(~u_input.b.x))), ~(~(~2768u) & abs(var_0.x)));
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2[_wgslsmith_index_u32(countOneBits(78313u), 26u)], 651f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(16225u, 26u)] * _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_4 = (vec4<u32>(_wgslsmith_clamp_u32(reverseBits(var_0.x), 4294967295u, var_0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, var_2.d, 1u), vec3<u32>(var_2.d, 0u, var_2.c)) | _wgslsmith_dot_vec3_u32(var_0.xyw, vec3<u32>(var_0.x, var_2.d, 1u)), u_input.b.x, 14470u) << (~var_0 % vec4<u32>(32u))) << (~min(select(vec4<u32>(1u, 14230u, 43194u, 28994u), var_0, false | var_2.b.x), abs(vec4<u32>(1u, u_input.b.x, 96116u, 1u))) % vec4<u32>(32u));
    global0 = array<vec4<bool>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(31715u, _wgslsmith_add_u32(59123u, 74096u)), vec2<u32>(~1u, 0u)));
}

