struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(20340u, 0u);

var<private> global1: bool;

var<private> global2: array<bool, 11>;

var<private> global3: array<i32, 20> = array<i32, 20>(26542i, -19183i, 2147483647i, 21065i, i32(-2147483648), 2838i, 16137i, 1i, 27463i, i32(-2147483648), -1i, 1i, 24125i, 22879i, -29211i, 1i, 1i, i32(-2147483648), -66505i, 0i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1() -> f32 {
    global2 = array<bool, 11>();
    return -1107f;
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_div_vec3_i32(~vec3<i32>(abs(u_input.c.x), -global3[_wgslsmith_index_u32(u_input.b, 20u)], -2147483647i), firstTrailingBit(vec3<i32>(36548i, i32(-1i) * -3935i, u_input.c.x))) ^ ~(~_wgslsmith_div_vec3_i32(~u_input.c.zww, u_input.c.zzz));
    global3 = array<i32, 20>();
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -391f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-376f)) * _wgslsmith_f_op_f32(f32(-1f) * -801f)), 1206f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(676f)) - _wgslsmith_f_op_f32(-748f - -141f)))))));
    global0 = _wgslsmith_div_vec2_u32(vec2<u32>(~global0.x, global0.x), reverseBits(vec2<u32>(1u, 974u)));
    var var_2 = Struct_2(Struct_1(~_wgslsmith_add_vec3_u32(vec3<u32>(global0.x, global0.x, u_input.b), vec3<u32>(0u, global0.x, u_input.a) | vec3<u32>(global0.x, u_input.a, u_input.b)), -14029i, !select(select(vec2<bool>(false, true), vec2<bool>(true, global2[_wgslsmith_index_u32(0u, 11u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(0u, 11u)])), select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 11u)], false), vec2<bool>(global2[_wgslsmith_index_u32(1u, 11u)], true), vec2<bool>(false, false)), vec2<bool>(global2[_wgslsmith_index_u32(1u, 11u)], true)), _wgslsmith_f_op_f32(-101f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(select(var_1.x, 1812f, false))))));
    return var_2.a.a.x & u_input.a;
}

fn func_2() -> StorageBuffer {
    let var_0 = !vec2<bool>(!(!(false | global2[_wgslsmith_index_u32(105194u, 11u)])), any(vec4<bool>(false, global2[_wgslsmith_index_u32(20887u, 11u)], global2[_wgslsmith_index_u32(7689u, 11u)], global2[_wgslsmith_index_u32(8755u, 11u)])) | true);
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_3(), u_input.b), 11u)];
    let var_1 = select(select(select(vec2<bool>(var_0.x & true, true | var_0.x), var_0, select(vec2<bool>(true, true), var_0, true)), select(vec2<bool>(true, false), var_0, !var_0.x), all(select(vec2<bool>(true, true), !var_0, vec2<bool>(true, true)))), var_0, var_0);
    var var_2 = Struct_1(abs(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.a), ~_wgslsmith_div_vec3_u32(vec3<u32>(11936u, u_input.a, u_input.b), vec3<u32>(4294967295u, global0.x, 9047u)))), 46912i, select(!select(vec2<bool>(global2[_wgslsmith_index_u32(global0.x, 11u)], var_0.x), !vec2<bool>(global2[_wgslsmith_index_u32(24602u, 11u)], var_1.x), var_1.x), var_1, vec2<bool>(select(!var_0.x, true, var_1.x), all(select(vec3<bool>(var_0.x, global2[_wgslsmith_index_u32(36625u, 11u)], var_0.x), vec3<bool>(var_0.x, true, true), vec3<bool>(true, global2[_wgslsmith_index_u32(45648u, 11u)], true))))), 945f);
    var_2 = Struct_1(vec3<u32>(0u, var_2.a.x, 1u), (97137i & global3[_wgslsmith_index_u32((var_2.a.x >> (global0.x % 32u)) >> ((4294967295u << (u_input.a % 32u)) % 32u), 20u)]) << (_wgslsmith_sub_u32(~46257u, 34209u) % 32u), var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d)));
    return StorageBuffer(reverseBits(vec4<u32>(global0.x, 71307u, _wgslsmith_sub_u32(u_input.a, firstTrailingBit(66963u)), ~(~0u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(333f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + var_2.d))), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(u_input.a, global0.x, global0.x, 30617u)), ~vec4<u32>(4294967295u, u_input.a, global0.x, 1u)) >> (_wgslsmith_div_vec4_u32(abs(vec4<u32>(4294967295u, 1u, global0.x, 4294967295u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.a.x, 34624u, global0.x, u_input.a), vec4<u32>(u_input.b, 12u, global0.x, 17615u), vec4<u32>(global0.x, u_input.a, var_2.a.x, global0.x))) % vec4<u32>(32u)), ~(~firstTrailingBit(vec4<u32>(var_2.a.x, var_2.a.x, u_input.b, var_2.a.x)))), ~(var_2.a.zy ^ ~vec2<u32>(var_2.a.x, var_2.a.x)), vec2<i32>(var_2.b, u_input.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(abs(1000f))))), -950f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1()), 1009f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-793f, -451f, 107f) * vec3<f32>(-1564f, 407f, -277f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-803f, -845f, 189f))))));
    let x = u_input.a;
    s_output = func_2();
}

