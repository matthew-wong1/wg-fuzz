struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec4<i32>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
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

var<private> global0: i32;

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec2<f32>(-594f, -1419f), vec3<bool>(true, true, false), vec4<i32>(59549i, -1i, 1i, -9762i), false, 2147483647i), Struct_1(vec2<f32>(404f, 1314f), vec3<bool>(false, true, true), vec4<i32>(-16288i, -37587i, 1i, 20351i), false, 539i), Struct_1(vec2<f32>(-309f, 1794f), vec3<bool>(false, false, true), vec4<i32>(-95963i, 16245i, 1i, -1i), false, 18626i), Struct_1(vec2<f32>(-473f, 344f), vec3<bool>(false, false, false), vec4<i32>(-17156i, 0i, -4679i, -63273i), true, -37421i), Struct_1(vec2<f32>(1155f, -1387f), vec3<bool>(false, false, false), vec4<i32>(-16390i, 2147483647i, -1i, 9589i), false, 25963i), Struct_1(vec2<f32>(1074f, 228f), vec3<bool>(false, false, false), vec4<i32>(-1i, 12646i, -1i, 50524i), false, -26172i), Struct_1(vec2<f32>(916f, -784f), vec3<bool>(false, true, false), vec4<i32>(0i, 0i, 2147483647i, 15002i), true, -54912i), Struct_1(vec2<f32>(399f, -434f), vec3<bool>(true, true, true), vec4<i32>(2147483647i, 39747i, 16889i, 41067i), false, 21071i), Struct_1(vec2<f32>(-830f, 1028f), vec3<bool>(true, false, false), vec4<i32>(i32(-2147483648), 1i, -2744i, i32(-2147483648)), false, i32(-2147483648)), Struct_1(vec2<f32>(-628f, -225f), vec3<bool>(false, false, true), vec4<i32>(i32(-2147483648), -4121i, i32(-2147483648), 11082i), false, i32(-2147483648)), Struct_1(vec2<f32>(-245f, -1124f), vec3<bool>(true, false, false), vec4<i32>(0i, 0i, 22481i, -14437i), true, -3929i), Struct_1(vec2<f32>(869f, 128f), vec3<bool>(true, true, true), vec4<i32>(12177i, 18976i, -14362i, i32(-2147483648)), true, -68422i), Struct_1(vec2<f32>(835f, 1533f), vec3<bool>(false, false, false), vec4<i32>(42058i, 2147483647i, -63437i, 2147483647i), true, 7842i));

var<private> global2: vec3<i32> = vec3<i32>(45361i, 2147483647i, 54795i);

var<private> global3: vec2<u32> = vec2<u32>(4294967295u, 4294967295u);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = reverseBits(global3.x);
    var var_1 = arg_2.c;
    var var_2 = 7200i;
    let var_3 = _wgslsmith_div_f32(-2343f, 752f);
    global3 = ~u_input.b.xy;
    return Struct_1(_wgslsmith_f_op_vec2_f32(floor(arg_0.a)), arg_0.b, arg_0.c, any(!arg_2.b), select(_wgslsmith_clamp_i32(-(~(-44536i)), ~countOneBits(var_1.x), -arg_0.c.x ^ _wgslsmith_div_i32(-1i, u_input.a.x)), arg_2.c.x, _wgslsmith_f_op_f32(-arg_0.a.x) <= -673f));
}

fn func_3() -> vec3<u32> {
    global0 = -(countOneBits(global2.x) ^ reverseBits(-global2.x << (global3.x % 32u)));
    global1 = array<Struct_1, 13>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1454f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-213f, 145f)) + -849f))));
    var var_1 = u_input.b;
    var var_2 = ~firstLeadingBit(countOneBits(select(~vec4<u32>(global3.x, 13127u, var_1.x, global3.x), _wgslsmith_mod_vec4_u32(vec4<u32>(26549u, 1u, var_1.x, 1111u), u_input.b), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true)))));
    return ~(~reverseBits(vec3<u32>(abs(3470u), 41671u, min(var_2.x, 3146u))));
}

fn func_1(arg_0: i32, arg_1: bool) -> vec3<i32> {
    global0 = -1i;
    global0 = -2147483647i;
    let var_0 = func_2(global1[_wgslsmith_index_u32(global3.x, 13u)], _wgslsmith_mod_u32(abs(global3.x), 7816u), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(74679u, reverseBits(u_input.b.x)), min(_wgslsmith_sub_u32(21015u, 0u), reverseBits(~u_input.b.x))), 13u)]);
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -446f), -580f));
    global3 = ~abs(u_input.b.zy);
    return min(var_0.c.xxy >> (~(~func_3()) % vec3<u32>(32u)), var_0.c.wzy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1646f + _wgslsmith_f_op_f32(1433f - -1072f))))));
    global2 = _wgslsmith_mod_vec3_i32(~select(_wgslsmith_div_vec3_i32(u_input.a, func_1(u_input.a.x, true)), vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x), any(vec3<bool>(true, true, true))), vec3<i32>(-_wgslsmith_mod_i32(reverseBits(global2.x), ~u_input.a.x), _wgslsmith_add_i32(global2.x, abs(-45455i)), reverseBits(abs(~22133i))));
    let var_1 = min(vec2<i32>(-2147483647i, u_input.a.x), ~(vec2<i32>(u_input.a.x, firstLeadingBit(-1i)) & u_input.a.yy));
    var var_2 = func_2(global1[_wgslsmith_index_u32(u_input.b.x, 13u)], u_input.b.x & _wgslsmith_dot_vec3_u32(u_input.b.xzy, _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 65525u), vec3<u32>(15371u, 15642u, 58690u)), u_input.b.ywy ^ vec3<u32>(global3.x, 0u, 57199u))), Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1519f, 1201f) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1494f, 1000f)))))), vec3<bool>(-167f < _wgslsmith_f_op_f32(step(115f, -301f)), true && any(vec2<bool>(true, true)), true), vec4<i32>(-10422i, ~6876i, -1i, abs(u_input.a.x)), min(min(49567u, u_input.b.x), 4294967295u) > 0u, _wgslsmith_mod_i32(-1i, -7512i)));
    var var_3 = firstTrailingBit(u_input.b);
    global3 = u_input.b.ww;
    var var_4 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(~(countOneBits(_wgslsmith_clamp_u32(var_3.x, 1u, global3.x)) >> (max(_wgslsmith_add_u32(1u, 51390u), func_3().x) % 32u)));
}

