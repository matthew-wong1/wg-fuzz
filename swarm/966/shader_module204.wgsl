struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: Struct_1;

var<private> global2: array<bool, 9>;

var<private> global3: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec4<f32>(-635f, 1606f, -1776f, 123f)), Struct_1(vec4<f32>(-525f, -700f, 1056f, 1775f)), Struct_1(vec4<f32>(922f, -331f, 1585f, 180f)), Struct_1(vec4<f32>(853f, 450f, 611f, -449f)), Struct_1(vec4<f32>(-112f, 1545f, -382f, -749f)), Struct_1(vec4<f32>(-1773f, 1430f, 159f, 1000f)), Struct_1(vec4<f32>(108f, -1847f, -484f, 845f)), Struct_1(vec4<f32>(-186f, -1007f, -1006f, -1391f)), Struct_1(vec4<f32>(928f, 264f, 287f, -1188f)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: f32) -> u32 {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2, 214f) - _wgslsmith_f_op_f32(202f * 1000f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.a.x, arg_2, global2[_wgslsmith_index_u32(arg_1.x, 9u)])) + arg_2))), _wgslsmith_f_op_f32(1173f + _wgslsmith_f_op_f32(arg_2 - -1053f)), arg_2));
    var var_1 = true;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, _wgslsmith_f_op_f32(-var_0.a.x), 2582f, var_0.a.x)));
    global2 = array<bool, 9>();
    let var_3 = max(-2147483647i, (i32(-1i) * -u_input.b) | arg_0.x) | 1i;
    return 48448u;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = global3[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_sub_u32(arg_1.x, ~_wgslsmith_sub_u32(91930u, 4188u))), 9u)];
    global3 = array<Struct_1, 9>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(86979u, 1u << (~firstLeadingBit(arg_1.x) % 32u)), 1u), 32u)];
    var var_2 = select(global2[_wgslsmith_index_u32(arg_1.x, 9u)], ~arg_1.x < ~(~select(arg_1.x, arg_1.x, global2[_wgslsmith_index_u32(arg_1.x, 9u)])), true);
    global1 = Struct_1(_wgslsmith_div_vec4_f32(var_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1939f, 199f, arg_2.a.x, -1282f)))) - vec4<f32>(1137f, _wgslsmith_f_op_f32(arg_0.a.x + arg_2.a.x), global1.a.x, arg_2.a.x))));
    return abs(~(~firstTrailingBit(~vec4<u32>(13113u, arg_1.x, arg_1.x, arg_1.x))));
}

fn func_1(arg_0: vec3<f32>, arg_1: f32) -> u32 {
    var var_0 = _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(select(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(53653u, 25635u, 42493u, 21633u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(24787u, 0u, 1965u, 1u), vec4<u32>(46498u, 0u, 0u, 4294967295u), vec4<u32>(1u, 1u, 1u, 25785u))), countOneBits(vec4<u32>(4294967295u, 4294967295u, 1u, 1841u)), vec4<bool>(!global2[_wgslsmith_index_u32(0u, 9u)], false, true, false)), ~(~vec4<u32>(20098u, 4294967295u, 0u, 4566u)) << (select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u), vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(4294967295u, 9u)])) % vec4<u32>(32u))), func_3(global0[_wgslsmith_index_u32(1u ^ func_2(firstLeadingBit(vec2<i32>(u_input.a, -33347i)), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 34587u, 39563u), vec3<u32>(68483u, 14615u, 4294967295u)), -180f), 32u)], select(_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, 80550u, 4294967295u)), vec3<u32>(1u, 1u, 1u), vec3<u32>(30062u, 4294967295u, 0u)), ~vec3<u32>(34068u, 2816u, 4294967295u), !global2[_wgslsmith_index_u32(0u, 9u)] | true), global0[_wgslsmith_index_u32(~1u, 32u)]));
    var var_1 = Struct_1(global1.a);
    let var_2 = vec4<u32>(max(_wgslsmith_mult_u32(~4294967295u, _wgslsmith_sub_u32(var_0.x, 23983u >> (0u % 32u))), var_0.x), ~4294967295u, 58195u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(14126u, ~(~1u)), var_0.x));
    var_0 = var_2;
    var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_add_u32(_wgslsmith_mult_u32(~var_2.x, ~var_0.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.x, 0u), ~var_0.zw)), (~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(20923u, 0u)) & firstTrailingBit(~var_2.x)) & 0u), 9u)];
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 9>();
    var var_0 = min(~_wgslsmith_sub_u32(_wgslsmith_add_u32(8442u << (1u % 32u), abs(40957u)), 1u), _wgslsmith_div_u32(countOneBits(~38283u), ~(~firstTrailingBit(1u))));
    let var_1 = abs(countOneBits(u_input.b));
    let var_2 = 1u;
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(71477u, 33274u, var_2, 4294967295u) | vec4<u32>(var_2, 26660u, var_2, 4294967295u), select(vec4<u32>(var_2, 25675u, 8718u, 1u), vec4<u32>(var_2, 24014u, 0u, 4294967295u), global2[_wgslsmith_index_u32(var_2, 9u)])) & ~var_2, var_2), 32u)];
    global2 = array<bool, 9>();
    global3 = array<Struct_1, 9>();
    let var_3 = min(vec2<u32>(var_2, ~_wgslsmith_add_u32(func_1(global1.a.xyx, -832f), 1u)), ~func_3(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global1.a.x, 722f, -730f) * vec4<f32>(global1.a.x, 183f, global1.a.x, -213f))), vec3<u32>(1u, 1u, select(var_2, 49368u, global2[_wgslsmith_index_u32(0u, 9u)])), Struct_1(_wgslsmith_f_op_vec4_f32(global1.a * vec4<f32>(global1.a.x, global1.a.x, global1.a.x, 882f)))).wz);
    let var_4 = ~(-(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, var_1, u_input.b), vec3<i32>(0i, u_input.a, u_input.a))) | -(vec3<i32>(24942i, 2147483647i, 13201i) & (vec3<i32>(-58077i, u_input.b, u_input.c) << (vec3<u32>(40862u, var_3.x, 2201u) % vec3<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(645f)), global1.a.x, var_2, global1.a);
}

