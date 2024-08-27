struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
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

var<private> global0: Struct_2;

var<private> global1: Struct_1;

var<private> global2: Struct_2;

var<private> global3: array<Struct_2, 19>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>) -> u32 {
    return global1.c & ~39241u;
}

fn func_2() -> Struct_1 {
    global1 = Struct_1(!(!select(vec3<bool>(global2.b, true, global1.a.x), vec3<bool>(false, false, global0.b), any(vec3<bool>(false, global0.a.a.x, false)))), _wgslsmith_clamp_u32(global2.a.b, ~_wgslsmith_clamp_u32(0u, 18195u, 11027u), ~66807u), global2.a.c >> (_wgslsmith_div_u32(global0.a.c, func_3(_wgslsmith_f_op_f32(914f + 164f), select(vec4<bool>(true, global2.b, global0.a.a.x, false), vec4<bool>(true, false, true, true), global0.b))) % 32u), -(~(-63133i) << (_wgslsmith_sub_u32(u_input.a.x, global0.a.b) % 32u)));
    global3 = array<Struct_2, 19>();
    global0 = Struct_2(global0.a, true);
    var var_0 = reverseBits(u_input.a >> (max(~countOneBits(u_input.a), vec2<u32>(~global0.a.c, global0.a.c)) % vec2<u32>(32u)));
    global2 = Struct_2(Struct_1(select(!vec3<bool>(global1.a.x, true, global2.b), select(select(vec3<bool>(global2.b, global2.b, global0.b), vec3<bool>(global2.a.a.x, global0.a.a.x, global1.a.x), global1.a.x), !global1.a, false), ~global1.d >= -1i), 27300u, 1u, ~global2.a.d), any(vec3<bool>(global0.a.a.x, global1.a.x, true)));
    return Struct_1(select(vec3<bool>(!global0.a.a.x, true == any(vec3<bool>(global2.a.a.x, true, true)), global0.a.a.x), !select(!global1.a, !vec3<bool>(global2.a.a.x, global2.b, global0.b), false), global0.a.a), ~((~5339u & ~var_0.x) << (~global1.c % 32u)), 1u ^ global1.b, ~3122i);
}

fn func_1() -> bool {
    let var_0 = -8499i;
    var var_1 = func_2();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-260f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-549f))))));
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec4<u32>, arg_3: vec2<bool>) -> Struct_1 {
    global2 = global3[_wgslsmith_index_u32(~11834u, 19u)];
    let var_0 = global1.a.yy;
    global0 = global3[_wgslsmith_index_u32(1u, 19u)];
    var var_1 = arg_0;
    global3 = array<Struct_2, 19>();
    return Struct_1(vec3<bool>(all(select(!global1.a, vec3<bool>(true, global1.a.x, true), true)), global2.a.b != 1u, true), ~(~firstLeadingBit(4294967295u)), arg_0.c | (firstLeadingBit(global2.a.b) & _wgslsmith_clamp_u32(4294967295u, _wgslsmith_mod_u32(arg_0.b, 0u), ~0u)), var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~_wgslsmith_add_u32(29666u, 1u))) >> (global0.a.c % 32u);
    var var_1 = -57002i;
    var var_2 = func_4(Struct_1(vec3<bool>(func_1(), true, !global2.a.a.x), select(countOneBits(0u ^ var_0), ~1u << (0u % 32u), true), global1.b, global0.a.d), 78849u, vec4<u32>(min(var_0, 6116u), abs(8660u), 82903u, 4294967295u), !select(global1.a.zx, global0.a.a.yz, global2.a.a.x));
    let var_3 = _wgslsmith_mod_vec4_u32(max(~(~min(vec4<u32>(var_0, var_0, 19507u, 1u), vec4<u32>(global0.a.b, 14290u, 4294967295u, 4294967295u))), vec4<u32>(global2.a.c, global1.c, _wgslsmith_div_u32(38330u, _wgslsmith_div_u32(21434u, var_0)), ~max(0u, global2.a.c))), vec4<u32>(abs(~1u), _wgslsmith_clamp_u32(countOneBits(4294967295u), var_0, ~54802u | (0u >> (global0.a.c % 32u))), 78039u, global1.c));
    var var_4 = vec2<bool>(all(vec4<bool>(any(vec4<bool>(true, false, global1.a.x, global2.a.a.x)), global1.a.x & var_2.a.x, true, var_2.a.x & false)) | global1.a.x, any(vec4<bool>(true, select(select(true, false, false), true, global1.a.x), func_4(Struct_1(global2.a.a, global1.c, 27069u, -2147483647i), global0.a.c, var_3, vec2<bool>(true, false)).a.x && true, true)));
    var var_5 = Struct_1(global1.a, global2.a.b, 4294967295u, -8148i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-328f)), -487f), vec2<f32>(1942f, _wgslsmith_f_op_f32(f32(-1f) * -2314f)))));
}

