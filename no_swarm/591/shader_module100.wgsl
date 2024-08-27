struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(Struct_1(vec2<i32>(-36093i, 26790i), 2147483647i, 2147483647i), vec3<bool>(false, true, true)), Struct_3(Struct_1(vec2<i32>(1i, 1i), 1i, 1i), vec3<bool>(true, false, false)), Struct_3(Struct_1(vec2<i32>(2147483647i, -1i), -43042i, i32(-2147483648)), vec3<bool>(false, true, true)), Struct_3(Struct_1(vec2<i32>(1952i, -43647i), 70710i, 30956i), vec3<bool>(false, true, true)), Struct_3(Struct_1(vec2<i32>(16415i, -47888i), 13321i, 1i), vec3<bool>(true, true, false)), Struct_3(Struct_1(vec2<i32>(-15438i, i32(-2147483648)), -36189i, 7689i), vec3<bool>(false, true, true)), Struct_3(Struct_1(vec2<i32>(1i, 2696i), 46357i, -21103i), vec3<bool>(true, false, false)), Struct_3(Struct_1(vec2<i32>(12309i, -64222i), 74980i, i32(-2147483648)), vec3<bool>(true, false, false)), Struct_3(Struct_1(vec2<i32>(32337i, 0i), 2147483647i, 2147483647i), vec3<bool>(true, false, true)), Struct_3(Struct_1(vec2<i32>(i32(-2147483648), 7739i), 2147483647i, -13326i), vec3<bool>(false, false, true)), Struct_3(Struct_1(vec2<i32>(1i, 37865i), -21558i, -1i), vec3<bool>(true, false, true)), Struct_3(Struct_1(vec2<i32>(9595i, i32(-2147483648)), 6778i, 44242i), vec3<bool>(true, true, false)), Struct_3(Struct_1(vec2<i32>(0i, 1i), 1i, -1i), vec3<bool>(false, true, false)), Struct_3(Struct_1(vec2<i32>(25926i, 0i), -1i, 60189i), vec3<bool>(true, true, true)), Struct_3(Struct_1(vec2<i32>(1i, i32(-2147483648)), -63415i, 10750i), vec3<bool>(true, true, false)), Struct_3(Struct_1(vec2<i32>(28440i, i32(-2147483648)), -23080i, -36963i), vec3<bool>(true, true, false)), Struct_3(Struct_1(vec2<i32>(2147483647i, -140i), 16556i, 22264i), vec3<bool>(false, false, false)), Struct_3(Struct_1(vec2<i32>(-1i, -1i), 4142i, 28352i), vec3<bool>(true, true, false)), Struct_3(Struct_1(vec2<i32>(1329i, 16859i), i32(-2147483648), -20500i), vec3<bool>(false, true, false)), Struct_3(Struct_1(vec2<i32>(-2026i, 0i), -1i, -56684i), vec3<bool>(false, false, false)), Struct_3(Struct_1(vec2<i32>(-1983i, 58384i), 2147483647i, 38743i), vec3<bool>(true, true, true)), Struct_3(Struct_1(vec2<i32>(49438i, 2147483647i), -22413i, 1i), vec3<bool>(true, false, false)), Struct_3(Struct_1(vec2<i32>(1i, 0i), 2147483647i, -46004i), vec3<bool>(false, true, false)), Struct_3(Struct_1(vec2<i32>(0i, 7686i), 28721i, 10542i), vec3<bool>(false, false, false)), Struct_3(Struct_1(vec2<i32>(-1i, 17155i), 27508i, 254i), vec3<bool>(true, true, true)), Struct_3(Struct_1(vec2<i32>(-37741i, -26755i), 1i, i32(-2147483648)), vec3<bool>(true, true, true)));

var<private> global1: array<vec4<bool>, 25>;

var<private> global2: Struct_1;

var<private> global3: Struct_3;

var<private> global4: array<vec4<u32>, 18> = array<vec4<u32>, 18>(vec4<u32>(7571u, 45479u, 1u, 4294967295u), vec4<u32>(1u, 57561u, 24927u, 1u), vec4<u32>(0u, 21051u, 4294967295u, 70272u), vec4<u32>(0u, 1u, 4294967295u, 0u), vec4<u32>(389u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(55055u, 1u, 13489u, 31681u), vec4<u32>(0u, 66982u, 10449u, 38266u), vec4<u32>(4294967295u, 100132u, 0u, 29047u), vec4<u32>(0u, 22348u, 57190u, 5672u), vec4<u32>(1u, 41347u, 11014u, 16800u), vec4<u32>(0u, 32215u, 0u, 17994u), vec4<u32>(1u, 4294967295u, 4294967295u, 1375u), vec4<u32>(21235u, 4294967295u, 1u, 4100u), vec4<u32>(80528u, 4294967295u, 4158u, 60001u), vec4<u32>(41781u, 171077u, 4294967295u, 1u), vec4<u32>(1u, 0u, 4294967295u, 15665u), vec4<u32>(48645u, 491u, 59386u, 4294967295u), vec4<u32>(7894u, 51902u, 0u, 4294967295u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> i32 {
    var var_0 = vec2<i32>(-global3.a.a.x, _wgslsmith_div_i32((~global3.a.a.x ^ global3.a.c) << (_wgslsmith_mod_u32(~43209u, _wgslsmith_div_u32(1u, u_input.d)) % 32u), ~(u_input.a | -u_input.a)));
    var var_1 = ~(u_input.b << (vec4<u32>(4294967295u, 0u, _wgslsmith_mod_u32(1u, 88236u), u_input.b.x) % vec4<u32>(32u))) & reverseBits(firstTrailingBit(vec4<u32>(0u, 150195u | u_input.b.x, u_input.d, select(u_input.b.x, 0u, global3.b.x))));
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -558f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1421f)), 662f), _wgslsmith_f_op_f32(f32(-1f) * -3235f))));
    global4 = array<vec4<u32>, 18>();
    let var_3 = ~u_input.c.x;
    return global2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.b.xz;
    var var_1 = global3.a.a.x;
    let var_2 = !(!(global2.c >= 0i));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1579f, -1262f)))) * _wgslsmith_f_op_f32(step(-1256f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -208f) + _wgslsmith_f_op_f32(f32(-1f) * -758f))))) + _wgslsmith_f_op_f32(f32(-1f) * -1330f));
    var var_4 = u_input.b.wyw;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(func_1(), -7968i));
}

