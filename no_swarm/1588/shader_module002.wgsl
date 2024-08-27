struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2>;

var<private> global1: f32;

var<private> global2: Struct_3 = Struct_3(vec2<bool>(true, true), vec3<f32>(1000f, 688f, 736f), vec3<i32>(0i, i32(-2147483648), 265i), vec2<i32>(2147483647i, 1i));

var<private> global3: array<Struct_3, 10>;

var<private> global4: vec2<i32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: bool) -> u32 {
    let var_0 = reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, u_input.b.x, arg_0.a.x), select(vec3<u32>(60535u, 13983u, u_input.b.x), arg_0.a.wxz, vec3<bool>(false, false, true))), 4294967295u), u_input.b));
    global0 = array<Struct_2, 2>();
    global0 = array<Struct_2, 2>();
    let var_1 = arg_0.a.zyz | arg_0.a.wyy;
    var var_2 = global4.x;
    return 8418u;
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = global3[_wgslsmith_index_u32(u_input.c, 10u)];
    return global0[_wgslsmith_index_u32(func_3(Struct_4(abs(~vec4<u32>(4294967295u, 0u, 26030u, 73822u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_div_f32(var_0.b.x, -1235f)) + _wgslsmith_f_op_f32(abs(868f)))), Struct_3(vec2<bool>(!(!global2.a.x), select(false & global2.a.x, all(vec4<bool>(global2.a.x, var_0.a.x, false, true)), false)), var_0.b, abs(var_0.c), vec2<i32>((i32(-1i) * -1i) & ~global2.d.x, countOneBits(u_input.a))), all(!(!vec4<bool>(true, var_0.a.x, var_0.a.x, arg_0)))), 2u)];
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_sub_u32(0u, ~u_input.b.x);
    let var_1 = Struct_1(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.c, u_input.b.x, 4294967295u, u_input.c) & ~vec4<u32>(2344u, u_input.c, u_input.b.x, 1u), ~vec4<u32>(4294967295u, u_input.b.x, u_input.c, u_input.c) << (vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 14068u) % vec4<u32>(32u))) | countOneBits(~(~vec4<u32>(u_input.c, u_input.b.x, u_input.c, u_input.b.x))), !any(vec4<bool>(true, true, all(global2.a), global2.a.x || false)), reverseBits(vec3<i32>(abs(-16356i), -2147483647i, _wgslsmith_clamp_i32(-global2.d.x, 1i, ~2147483647i))));
    var var_2 = global0[_wgslsmith_index_u32(4294967295u, 2u)];
    let var_3 = func_2(global2.a.x);
    var var_4 = Struct_1(var_3.b.a, true, select(-vec3<i32>(-1i, global2.c.x, -10565i) | vec3<i32>(u_input.a | -2147483647i, 1i, var_2.b.c.x ^ global2.c.x), func_2(true | var_2.a.x).b.c, !vec3<bool>(true, false, global2.a.x)));
    return max(func_2(func_2(global2.b.x < global2.b.x).b.b).e, u_input.c) << (var_4.a.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<u32>(func_1(), ~(~49617u), 4294967295u, ~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 19579u, u_input.c, u_input.b.x), vec4<u32>(u_input.c, 127307u, 14202u, 89430u)), ~vec4<u32>(1u, 1u, 32189u, u_input.b.x))), all(!vec3<bool>(true, global2.a.x, any(vec2<bool>(true, false)))), global2.c);
    let var_1 = func_2(!any(!vec3<bool>(global2.a.x, true, var_0.b))).b;
    global4 = vec2<i32>(global4.x, _wgslsmith_add_i32(~(-53527i), select(1i, -(~0i), var_0.b)));
    var var_2 = _wgslsmith_mod_u32(var_1.a.x, 41576u);
    var_2 = u_input.c;
    var var_3 = var_0.b;
    var var_4 = -18148i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_0.a.x, _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(var_1.a.x, var_1.a.x)), var_0.a.wz), var_1.a.x), -1i, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(var_1.a.x, var_1.a.x), ~var_1.a.x, ~var_0.a.x) >> (var_0.a.x % 32u), firstTrailingBit(5914u | u_input.b.x) & ~_wgslsmith_add_u32(u_input.c, 37623u)), global2.b.x);
}

