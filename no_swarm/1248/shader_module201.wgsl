struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
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

var<private> global0: array<f32, 16>;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(i32(-2147483648), 0i, 1i), vec3<bool>(true, false, false), vec4<u32>(0u, 1u, 0u, 1u), vec2<i32>(0i, 4251i));

var<private> global2: vec4<f32> = vec4<f32>(-685f, 1809f, -649f, 1000f);

var<private> global3: vec2<u32> = vec2<u32>(1u, 44585u);

var<private> global4: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec3<i32>(16166i, -1i, 29024i), vec3<bool>(false, false, false), vec4<u32>(1u, 0u, 34490u, 118416u), vec2<i32>(2147483647i, 18533i)), Struct_1(vec3<i32>(49797i, i32(-2147483648), -1i), vec3<bool>(true, true, true), vec4<u32>(34135u, 1u, 12269u, 4294967295u), vec2<i32>(i32(-2147483648), 0i)), Struct_1(vec3<i32>(-4472i, -14768i, -15054i), vec3<bool>(true, false, true), vec4<u32>(1u, 46549u, 19581u, 53784u), vec2<i32>(-25123i, -76281i)), Struct_1(vec3<i32>(0i, 0i, -12100i), vec3<bool>(true, false, false), vec4<u32>(0u, 1u, 14402u, 7889u), vec2<i32>(-1i, -14017i)), Struct_1(vec3<i32>(2147483647i, -16660i, 13813i), vec3<bool>(false, false, false), vec4<u32>(0u, 64251u, 24417u, 25373u), vec2<i32>(25378i, 21028i)), Struct_1(vec3<i32>(-34462i, 2147483647i, -1i), vec3<bool>(true, false, false), vec4<u32>(4294967295u, 40087u, 6820u, 57826u), vec2<i32>(0i, -1i)), Struct_1(vec3<i32>(0i, -11073i, 0i), vec3<bool>(true, false, false), vec4<u32>(4294967295u, 38237u, 6732u, 0u), vec2<i32>(-21409i, i32(-2147483648))), Struct_1(vec3<i32>(-20522i, 21893i, -26187i), vec3<bool>(true, false, false), vec4<u32>(1u, 97266u, 31574u, 29911u), vec2<i32>(2147483647i, 7712i)), Struct_1(vec3<i32>(1i, 9227i, 0i), vec3<bool>(true, true, false), vec4<u32>(0u, 0u, 1u, 47u), vec2<i32>(9315i, -1i)), Struct_1(vec3<i32>(32687i, 2147483647i, 6766i), vec3<bool>(true, false, false), vec4<u32>(656u, 4294967295u, 0u, 0u), vec2<i32>(2307i, 2147483647i)), Struct_1(vec3<i32>(11001i, 10590i, 20120i), vec3<bool>(true, true, true), vec4<u32>(51134u, 45296u, 18619u, 4294967295u), vec2<i32>(2737i, -3490i)), Struct_1(vec3<i32>(4938i, 2147483647i, -5718i), vec3<bool>(true, true, true), vec4<u32>(16893u, 46606u, 22150u, 1u), vec2<i32>(-41809i, 17959i)), Struct_1(vec3<i32>(6698i, 14388i, -38401i), vec3<bool>(false, true, false), vec4<u32>(4294967295u, 1u, 1u, 1u), vec2<i32>(29677i, -9786i)), Struct_1(vec3<i32>(2147483647i, 1i, -9189i), vec3<bool>(true, false, true), vec4<u32>(3128u, 19876u, 1u, 95480u), vec2<i32>(0i, 50604i)), Struct_1(vec3<i32>(0i, -1i, -1i), vec3<bool>(true, false, false), vec4<u32>(61079u, 1u, 1u, 59161u), vec2<i32>(-1i, -1093i)), Struct_1(vec3<i32>(-45780i, 0i, -1i), vec3<bool>(false, false, false), vec4<u32>(17717u, 49165u, 1u, 27258u), vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(vec3<i32>(1i, -1i, 1i), vec3<bool>(true, false, false), vec4<u32>(10989u, 72881u, 7001u, 1u), vec2<i32>(-4583i, -8611i)), Struct_1(vec3<i32>(18306i, 45600i, 2147483647i), vec3<bool>(true, false, false), vec4<u32>(65227u, 30699u, 0u, 0u), vec2<i32>(2147483647i, -36568i)), Struct_1(vec3<i32>(-43730i, i32(-2147483648), 19755i), vec3<bool>(true, true, true), vec4<u32>(13216u, 18064u, 1u, 49110u), vec2<i32>(54993i, 0i)), Struct_1(vec3<i32>(-1i, 1i, 2147483647i), vec3<bool>(true, false, true), vec4<u32>(829u, 37582u, 96808u, 6094u), vec2<i32>(10712i, 38983i)), Struct_1(vec3<i32>(65969i, i32(-2147483648), 40552i), vec3<bool>(false, true, false), vec4<u32>(14177u, 4294967295u, 75526u, 38988u), vec2<i32>(1i, 1i)), Struct_1(vec3<i32>(2147483647i, 0i, 2147483647i), vec3<bool>(false, false, false), vec4<u32>(11783u, 4294967295u, 1u, 0u), vec2<i32>(2123i, -32543i)), Struct_1(vec3<i32>(29475i, -1i, i32(-2147483648)), vec3<bool>(false, true, true), vec4<u32>(0u, 4294967295u, 65818u, 40117u), vec2<i32>(-1i, 2147483647i)), Struct_1(vec3<i32>(2147483647i, 3104i, 2147483647i), vec3<bool>(true, true, true), vec4<u32>(1u, 1u, 29980u, 96736u), vec2<i32>(i32(-2147483648), 19034i)), Struct_1(vec3<i32>(-1i, 1i, 2147483647i), vec3<bool>(false, false, true), vec4<u32>(39188u, 52027u, 66024u, 4294967295u), vec2<i32>(-1i, -6205i)), Struct_1(vec3<i32>(-35471i, 1i, -16913i), vec3<bool>(true, false, true), vec4<u32>(0u, 1u, 56161u, 108286u), vec2<i32>(18452i, -34559i)), Struct_1(vec3<i32>(0i, -63418i, 60204i), vec3<bool>(false, false, true), vec4<u32>(50740u, 0u, 1u, 4294967295u), vec2<i32>(2147483647i, -43361i)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1() -> f32 {
    var var_0 = global4[_wgslsmith_index_u32(1u, 27u)];
    global4 = array<Struct_1, 27>();
    let var_1 = ~(-global1.a.x);
    let var_2 = 161f;
    global0 = array<f32, 16>();
    return _wgslsmith_f_op_f32(f32(-1f) * -712f);
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_1) -> u32 {
    return 25223u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    var var_1 = _wgslsmith_div_f32(global2.x, 1000f);
    let var_2 = global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(max(18663u, global3.x), 41687u), 27u)];
    global2 = vec4<f32>(_wgslsmith_f_op_f32(-1f), 1613f, global2.x, _wgslsmith_f_op_f32(func_1()));
    var var_3 = ~max(var_2.a.zy, vec2<i32>(-global1.d.x, _wgslsmith_clamp_i32(firstLeadingBit(u_input.c.x), -2147483647i, -var_2.d.x)));
    var var_4 = global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~global3.x), 1u), 27u)];
    var var_5 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(func_2(firstTrailingBit(vec3<u32>(4294967295u, 58807u, u_input.a.x)), -3884i & var_4.d.x, Struct_1(global1.a, vec3<bool>(var_4.b.x, var_4.b.x, false), vec4<u32>(14363u, global1.c.x, var_0, 35375u), vec2<i32>(-1i, 0i))), _wgslsmith_div_u32(4294967295u, max(u_input.a.x, var_4.c.x))), vec2<u32>(var_4.c.x, ~var_2.c.x & var_0)), 16u)];
    global2 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1281f)) * -261f), -283f, -187f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, 659f) * -636f), global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(4294967295u, global1.c.x)), 16u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, u_input.c.x);
}

