struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<i32>(33313i, 24009i), 40717i);

var<private> global1: Struct_1 = Struct_1(154f);

var<private> global2: array<Struct_1, 19>;

var<private> global3: Struct_1 = Struct_1(-759f);

var<private> global4: array<f32, 30> = array<f32, 30>(-144f, -1790f, -341f, 831f, -979f, 1948f, 2752f, -1821f, 2242f, -768f, -979f, 683f, 539f, 1480f, 1287f, -677f, -1000f, -277f, 802f, -515f, 1000f, 686f, 1680f, -388f, -1000f, 598f, 658f, -623f, -135f, -294f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> Struct_2 {
    return Struct_2(vec2<i32>(firstTrailingBit(reverseBits(i32(-1i) * -2147483647i)), -11411i), -4801i);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>) -> u32 {
    var var_0 = global0.a.x;
    var_0 = -12411i;
    var var_1 = !(any(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(true, false, true)))) || (_wgslsmith_f_op_f32(abs(global1.a)) != 810f));
    var var_2 = 1u;
    global0 = func_2();
    return firstTrailingBit(_wgslsmith_div_u32(min(firstTrailingBit(54635u), max(abs(90832u), 1u)), (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 8424u, 51085u, 0u), vec4<u32>(0u, 3618u, 35349u, 97781u)) & 0u) << (firstTrailingBit(_wgslsmith_mod_u32(4294967295u, 13829u)) % 32u)));
}

fn func_1() -> u32 {
    return 4294967295u ^ ~func_3(func_2(), global0.a);
}

fn func_4(arg_0: f32, arg_1: vec4<i32>) -> Struct_2 {
    let var_0 = global2[_wgslsmith_index_u32(firstLeadingBit(~64124u), 19u)];
    var var_1 = _wgslsmith_add_u32(firstTrailingBit(82727u), _wgslsmith_dot_vec2_u32(min(~vec2<u32>(4294967295u, 1u) & select(vec2<u32>(32838u, 3545u), vec2<u32>(55739u, 103011u), vec2<bool>(true, true)), ~vec2<u32>(134u, 0u)), ~_wgslsmith_mod_vec2_u32(select(vec2<u32>(1u, 3946u), vec2<u32>(1u, 18489u), vec2<bool>(true, false)), vec2<u32>(1u, 1u))));
    global1 = Struct_1(_wgslsmith_div_f32(1f, _wgslsmith_div_f32(-1216f, _wgslsmith_f_op_f32(step(-911f, _wgslsmith_div_f32(576f, var_0.a))))));
    let var_2 = func_2();
    var var_3 = any(!vec3<bool>(any(vec4<bool>(true, false, true, false)), all(vec3<bool>(true, true, false)), false)) && true;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(global4[_wgslsmith_index_u32(func_1(), 30u)], vec4<i32>(-1i) * -vec4<i32>(~(-1i), -2147483647i | u_input.a, ~(-2147483647i), ~(-1i)));
    let var_1 = var_0;
    let var_2 = global2[_wgslsmith_index_u32(abs(~((_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 47655u, 34178u), vec3<u32>(17301u, 35708u, 0u)) << (~48623u % 32u)) & (func_3(var_1, vec2<i32>(u_input.a, -1i)) << (_wgslsmith_mod_u32(0u, 13144u) % 32u)))), 19u)];
    global0 = var_0;
    let var_3 = select(firstLeadingBit(vec4<u32>(~4294967295u, 1u, 1u, 9882u)), vec4<u32>(1u, 1u, 1u, 1u), !(all(vec4<bool>(true, true, true, true)) | true));
    var var_4 = Struct_2(~global0.a, 0i);
    global2 = array<Struct_1, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, ~vec4<u32>(reverseBits(65463u), ~var_3.x, select(1u, var_3.x, true), _wgslsmith_dot_vec3_u32(vec3<u32>(63349u, 33191u, var_3.x), vec3<u32>(var_3.x, var_3.x, 34473u))));
}

