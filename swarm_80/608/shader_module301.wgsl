struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2>;

var<private> global1: array<i32, 5>;

var<private> global2: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(380f, Struct_1(vec4<bool>(false, true, true, true), vec2<bool>(false, true), vec3<f32>(768f, 151f, -161f)), 1i, vec3<u32>(4294967295u, 2004u, 9339u)), Struct_2(595f, Struct_1(vec4<bool>(true, false, false, false), vec2<bool>(false, false), vec3<f32>(-727f, -1000f, 1442f)), -1i, vec3<u32>(29218u, 7861u, 1u)), Struct_2(-108f, Struct_1(vec4<bool>(true, true, true, true), vec2<bool>(false, false), vec3<f32>(-1086f, 1433f, -328f)), 0i, vec3<u32>(48990u, 1u, 38851u)), Struct_2(268f, Struct_1(vec4<bool>(true, true, false, false), vec2<bool>(false, true), vec3<f32>(-1520f, -965f, -440f)), 5524i, vec3<u32>(1u, 35406u, 0u)), Struct_2(-273f, Struct_1(vec4<bool>(true, false, false, false), vec2<bool>(false, false), vec3<f32>(-439f, 842f, 513f)), 1682i, vec3<u32>(0u, 4294967295u, 50930u)), Struct_2(-1185f, Struct_1(vec4<bool>(true, true, true, true), vec2<bool>(false, false), vec3<f32>(722f, -774f, -467f)), i32(-2147483648), vec3<u32>(1u, 52096u, 3912u)), Struct_2(-860f, Struct_1(vec4<bool>(false, false, false, true), vec2<bool>(true, false), vec3<f32>(-477f, 890f, -351f)), 2147483647i, vec3<u32>(680u, 4294967295u, 4294967295u)), Struct_2(-106f, Struct_1(vec4<bool>(false, false, false, true), vec2<bool>(true, true), vec3<f32>(-851f, 1968f, -935f)), i32(-2147483648), vec3<u32>(1u, 24151u, 1u)), Struct_2(2142f, Struct_1(vec4<bool>(false, true, false, true), vec2<bool>(true, false), vec3<f32>(595f, -111f, -1757f)), 2147483647i, vec3<u32>(39896u, 0u, 1u)), Struct_2(674f, Struct_1(vec4<bool>(false, true, true, false), vec2<bool>(false, true), vec3<f32>(-999f, -823f, -661f)), i32(-2147483648), vec3<u32>(4294967295u, 40523u, 4294967295u)), Struct_2(-620f, Struct_1(vec4<bool>(true, false, false, true), vec2<bool>(false, false), vec3<f32>(2397f, -637f, 135f)), -19930i, vec3<u32>(0u, 4294967295u, 1u)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> bool {
    let var_0 = Struct_2(179f, Struct_1(select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true)), vec4<bool>(any(vec4<bool>(false, true, false, false)), false, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2279f, 358f, -301f))))))), -_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-40409i, -2147483647i)), select(select(vec2<i32>(3725i, -1i), vec2<i32>(2147483647i, -1i), vec2<bool>(true, true)), vec2<i32>(u_input.a, 20931i) >> (vec2<u32>(36100u, 43271u) % vec2<u32>(32u)), vec2<bool>(true, false))), ~select(max(vec3<u32>(16961u, u_input.b, 51703u), vec3<u32>(4294967295u, u_input.b, u_input.b)), vec3<u32>(0u, 1u, u_input.b), all(vec2<bool>(false, true))) | ~vec3<u32>(_wgslsmith_clamp_u32(0u, u_input.b, u_input.b), 0u, 48306u));
    let var_1 = _wgslsmith_div_i32(u_input.a, -52326i);
    global1 = array<i32, 5>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-843f, 896f, -252f, 388f), vec4<f32>(var_0.b.c.x, var_0.b.c.x, var_0.a, var_0.b.c.x)))))) + vec4<f32>(-1905f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -414f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * _wgslsmith_f_op_f32(var_0.b.c.x + var_0.b.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.b.c.x))))));
    let var_3 = select(vec2<bool>(!var_0.b.a.x, !var_0.b.b.x & (_wgslsmith_f_op_f32(-var_0.b.c.x) == _wgslsmith_f_op_f32(1110f + var_2.x))), select(select(var_0.b.b, vec2<bool>(all(vec4<bool>(true, false, true, var_0.b.b.x)), var_0.b.b.x), var_0.b.a.x), var_0.b.b, select(var_0.b.a.yz, vec2<bool>(var_0.b.a.x, true), select(!vec2<bool>(false, var_0.b.b.x), !var_0.b.a.wx, !var_0.b.b.x))), var_0.b.b.x);
    return var_3.x;
}

fn func_4(arg_0: vec4<f32>, arg_1: bool) -> vec4<bool> {
    let var_0 = countOneBits(u_input.b);
    global1 = array<i32, 5>();
    global1 = array<i32, 5>();
    var var_1 = max(vec4<u32>(firstLeadingBit(_wgslsmith_sub_u32(abs(u_input.b), countOneBits(var_0))), _wgslsmith_clamp_u32(firstTrailingBit(abs(u_input.b)), u_input.b, abs(~1u)), 4294967295u, countOneBits(u_input.b)), ~(~reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.b, var_0, u_input.b), vec4<u32>(79637u, 34120u, var_0, var_0)))));
    global0 = array<Struct_2, 2>();
    return !vec4<bool>(arg_1, true, true, all(vec4<bool>(arg_1, all(vec4<bool>(arg_1, true, arg_1, true)), true, true)));
}

fn func_2() -> Struct_1 {
    let var_0 = select(vec2<bool>(any(vec4<bool>(any(vec4<bool>(false, false, true, true)), true, u_input.b == u_input.b, false)), true), vec2<bool>(true, true), vec2<bool>(true, true));
    global2 = array<Struct_2, 11>();
    global1 = array<i32, 5>();
    global1 = array<i32, 5>();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -425f)), Struct_1(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1528f, 119f, 330f, 1234f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-182f, 1000f, -378f, 1030f) + vec4<f32>(800f, -710f, -951f, 149f))), !func_3()), !vec2<bool>(all(vec3<bool>(true, var_0.x, true)), var_0.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(683f * -1112f) - _wgslsmith_f_op_f32(260f - -505f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-920f, -1460f) + 1881f), -2721f)), u_input.a, max(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(46280u, 4294967295u), firstTrailingBit(vec2<u32>(u_input.b, u_input.b))), _wgslsmith_clamp_u32(1u, u_input.b, u_input.b), abs(93792u)), countOneBits(vec3<u32>(4294967295u, u_input.b, 8149u) & vec3<u32>(u_input.b, 10584u, 1u))));
    return var_1.b;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> bool {
    global2 = array<Struct_2, 11>();
    global0 = array<Struct_2, 2>();
    let var_0 = arg_2.b;
    global1 = array<i32, 5>();
    let var_1 = func_2();
    return !arg_1.b.x | func_3();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 5>();
    global0 = array<Struct_2, 2>();
    global2 = array<Struct_2, 11>();
    global2 = array<Struct_2, 11>();
    global2 = array<Struct_2, 11>();
    var var_0 = vec4<bool>(~_wgslsmith_mod_i32(2147483647i, global1[_wgslsmith_index_u32(~u_input.b, 5u)]) <= ~(~firstTrailingBit(global1[_wgslsmith_index_u32(1u, 5u)])), false, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, 4294967295u, u_input.b)), 1u) << (u_input.b % 32u), 5u)] > -1922i, all(select(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), true), vec4<bool>(global1[_wgslsmith_index_u32(18668u, 5u)] > 55659i, false, func_1(-2147483647i, Struct_1(vec4<bool>(false, false, true, true), vec2<bool>(true, false), vec3<f32>(-934f, -506f, 2026f)), Struct_2(1547f, Struct_1(vec4<bool>(false, false, true, true), vec2<bool>(false, false), vec3<f32>(-1000f, 484f, -1000f)), -1i, vec3<u32>(4294967295u, u_input.b, u_input.b)), 1554f), true), true)));
    let var_1 = vec2<bool>(var_0.x, (~max(global1[_wgslsmith_index_u32(17306u, 5u)], global1[_wgslsmith_index_u32(u_input.b, 5u)]) >> (u_input.b % 32u)) != global1[_wgslsmith_index_u32(~abs(select(u_input.b, u_input.b, var_0.x)), 5u)]);
    let var_2 = func_2();
    let var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(~(-1i), i32(-1i) * -16869i);
}

