struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(48886u, 4294967295u, 48603u), vec4<f32>(1573f, -733f, -1000f, 205f));

var<private> global1: Struct_1 = Struct_1(vec3<u32>(59479u, 0u, 2945u), vec4<f32>(1683f, 262f, 903f, 505f));

var<private> global2: vec4<bool> = vec4<bool>(true, true, true, false);

var<private> global3: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec3<u32>(40872u, 4294967295u, 0u), vec4<f32>(-380f, -1518f, -1626f, 378f)), Struct_1(vec3<u32>(11485u, 18666u, 1u), vec4<f32>(895f, -114f, 645f, 579f)), Struct_1(vec3<u32>(31487u, 37716u, 54729u), vec4<f32>(-762f, 1355f, -1416f, -597f)), Struct_1(vec3<u32>(4294967295u, 0u, 41626u), vec4<f32>(1399f, -381f, 204f, 1395f)), Struct_1(vec3<u32>(0u, 4294967295u, 41609u), vec4<f32>(-1537f, 2307f, -1642f, -730f)), Struct_1(vec3<u32>(32482u, 54243u, 4294967295u), vec4<f32>(176f, -1000f, 396f, -776f)), Struct_1(vec3<u32>(60690u, 4294967295u, 4294967295u), vec4<f32>(-516f, -634f, 2404f, -488f)), Struct_1(vec3<u32>(26251u, 1u, 1u), vec4<f32>(751f, -1237f, -1300f, 698f)), Struct_1(vec3<u32>(36892u, 4294967295u, 4294967295u), vec4<f32>(-418f, -1385f, -206f, 1199f)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: f32) -> f32 {
    var var_0 = Struct_1(abs(global1.a), global1.b);
    let var_1 = global1.b.xy;
    var var_2 = arg_0;
    global1 = global3[_wgslsmith_index_u32(min(~(~(~16432u)), ~_wgslsmith_dot_vec3_u32(~(var_2.wyy >> (var_2.yzy % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(firstLeadingBit(var_0.a), vec3<u32>(global1.a.x, 56364u, 9668u)))), 9u)];
    global3 = array<Struct_1, 9>();
    return var_0.b.x;
}

fn func_2() -> f32 {
    global0 = global3[_wgslsmith_index_u32(5048u, 9u)];
    var var_0 = vec2<bool>(true, all(vec2<bool>(!any(vec4<bool>(false, global2.x, true, false)), true)));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(432f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(318f)), -724f), _wgslsmith_f_op_f32(func_3(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.a.x, global1.a.x, global1.a.x, 14403u), vec4<u32>(1u, 4294967295u, 0u, 1u)), vec4<i32>(20415i, 1i, u_input.a, u_input.a) >> (vec4<u32>(1u, global1.a.x, global1.a.x, 3888u) % vec4<u32>(32u)), -1658f))) - _wgslsmith_div_vec3_f32(global0.b.wzy, global0.b.yzx)), global1.b.yxw, global2.yww));
    var var_2 = 9407u;
    var var_3 = global0.a.zy;
    return var_1.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>) -> u32 {
    let var_0 = !global2.yzw;
    var var_1 = select(global1.a.x, ~countOneBits(0u), any(!vec2<bool>(var_0.x, all(vec4<bool>(false, var_0.x, false, var_0.x)))));
    global3 = array<Struct_1, 9>();
    var_1 = arg_2.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(func_2()), arg_1.b.x));
    return global0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global3[_wgslsmith_index_u32(firstLeadingBit(global0.a.x), 9u)];
    let var_0 = true;
    var var_1 = 1u;
    var var_2 = global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(68710u, firstTrailingBit(reverseBits(global0.a.x)), func_1(global3[_wgslsmith_index_u32(reverseBits(global0.a.x), 9u)], global3[_wgslsmith_index_u32(40305u << (global1.a.x % 32u), 9u)], ~global1.a.yz)), select(global0.a, vec3<u32>(39351u, max(global1.a.x, 0u), _wgslsmith_mod_u32(global0.a.x, 0u)), select(false, global2.x, false) && select(var_0, false, false)))), 9u)];
    let var_3 = _wgslsmith_f_op_f32(func_2());
    var var_4 = Struct_1(vec3<u32>(~(~(~global0.a.x)), var_2.a.x, 1u), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-global1.b), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.b)), vec4<f32>(global1.b.x, _wgslsmith_f_op_f32(var_2.b.x - -1161f), var_3, _wgslsmith_f_op_f32(global0.b.x + global0.b.x)))))));
    var var_5 = global3[_wgslsmith_index_u32(global1.a.x, 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.a, ~(~(u_input.a >> (1u % 32u))), _wgslsmith_div_i32(firstLeadingBit(u_input.a), _wgslsmith_clamp_i32(u_input.a, u_input.a, -1i)) ^ (u_input.a & ~(-1i))), _wgslsmith_f_op_vec4_f32(-var_5.b), var_2.a.yz, abs(reverseBits(vec2<i32>(u_input.a, u_input.a | u_input.a))));
}

