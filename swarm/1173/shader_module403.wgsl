struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: u32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_3 = Struct_3(4294967295u);

var<private> global2: array<Struct_1, 4>;

var<private> global3: array<vec4<f32>, 4> = array<vec4<f32>, 4>(vec4<f32>(1264f, 1407f, 382f, -264f), vec4<f32>(-434f, 981f, 2153f, 1424f), vec4<f32>(404f, -108f, 1845f, -566f), vec4<f32>(138f, -132f, -1000f, 257f));

var<private> global4: array<Struct_1, 29>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> u32 {
    global4 = array<Struct_1, 29>();
    let var_0 = global0.b;
    let var_1 = Struct_2(global4[_wgslsmith_index_u32(u_input.c | ((global1.a << (~global1.a % 32u)) ^ countOneBits(4294967295u << (u_input.c % 32u))), 29u)], !(!(!vec2<bool>(false, global0.b))), _wgslsmith_dot_vec4_u32(vec4<u32>(~7937u, ~(~global0.a), global0.a, 4294967295u), ~reverseBits(~vec4<u32>(global0.a, u_input.c, u_input.c, 0u))));
    var var_2 = all(!(!(!(!vec2<bool>(var_1.a.b, var_1.b.x)))));
    var_2 = true;
    return u_input.c;
}

fn func_1(arg_0: u32, arg_1: vec4<i32>) -> u32 {
    var var_0 = func_2() & ~_wgslsmith_mod_u32(select(abs(4294967295u), global1.a, global0.b), 69035u);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.c), ~vec2<u32>(global0.a, 26155u)), 4u)] * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1000f, -400f), _wgslsmith_f_op_f32(362f + 962f), -935f, _wgslsmith_f_op_f32(f32(-1f) * -550f)))));
    let var_2 = Struct_1(_wgslsmith_div_u32(global1.a, global0.a), false, vec4<i32>(1i, global0.c.x >> (u_input.c % 32u), global0.d, global0.c.x), _wgslsmith_div_i32(-(~(-u_input.a.x)), arg_1.x));
    var var_3 = var_1.wwy;
    var var_4 = vec4<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(select(u_input.a.yww, arg_1.zwx, select(vec3<bool>(var_2.b, global0.b, var_2.b), vec3<bool>(true, var_2.b, false), var_2.b))), vec3<i32>(global0.c.x, 277i, _wgslsmith_add_i32(-1i, var_2.c.x)) << (countOneBits(vec3<u32>(var_2.a, global1.a, global1.a)) % vec3<u32>(32u))), _wgslsmith_add_i32(-(-u_input.a.x ^ var_2.d), _wgslsmith_div_i32(~u_input.b, -2147483647i)), _wgslsmith_mod_i32(arg_1.x, ~u_input.b ^ u_input.d) & -(_wgslsmith_div_i32(-45496i, -25889i) << ((global1.a ^ 1u) % 32u)), 1i);
    return firstLeadingBit(~53846u);
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    let var_0 = Struct_2(Struct_1(u_input.c, !(!global0.b), global0.c, global0.d), !(!select(!vec2<bool>(true, global0.b), select(vec2<bool>(global0.b, global0.b), vec2<bool>(global0.b, global0.b), global0.b), true)), 53188u);
    var var_1 = any(select(select(var_0.b, vec2<bool>(!global0.b, var_0.b.x), var_0.a.b), vec2<bool>(true, true), any(vec4<bool>(select(true, true, var_0.b.x), any(vec4<bool>(true, true, false, false)), false, false))));
    global2 = array<Struct_1, 4>();
    var var_2 = Struct_3(1u);
    let var_3 = false;
    return _wgslsmith_f_op_f32(-1f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a;
    let var_1 = vec3<u32>(global1.a, ~_wgslsmith_add_u32(abs(u_input.c), firstLeadingBit(u_input.c)), _wgslsmith_mod_u32(27091u, ~func_1(global0.a, global0.c) >> (1u % 32u)));
    var var_2 = _wgslsmith_f_op_f32(func_3(~vec4<u32>(~var_1.x, ~firstTrailingBit(37411u), 53271u, 33742u)));
    var var_3 = Struct_3(global1.a);
    var var_4 = Struct_3(_wgslsmith_sub_u32(var_3.a, var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, ~_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, 32012u, u_input.c, 1u), vec4<u32>(var_1.x, 31866u, 4294967295u, 4294967295u)), firstLeadingBit(~vec4<u32>(global0.a, 12515u, 4294967295u, 1u))), -38739i, 632f);
}

