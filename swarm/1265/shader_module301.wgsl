struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: u32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = true;
    let var_1 = Struct_1(!(!vec2<bool>(true, var_0)), max(u_input.c.ywx, u_input.c.yzx ^ arg_1), arg_1.x, arg_0.d);
    return var_1;
}

fn func_1() -> bool {
    global0 = array<u32, 8>();
    var var_0 = func_2(Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec3<u32>(~global0[_wgslsmith_index_u32(0u ^ u_input.c.x, 8u)], 1u, 0u), 13633u, select(vec4<bool>(true, true, true, all(vec2<bool>(false, true))), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true)), u_input.c.x > abs(u_input.c.x))), firstLeadingBit(firstTrailingBit(u_input.c.zww)), vec3<bool>(false, !all(vec3<bool>(false, true, false)), !any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true))));
    return !((~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -37437i), u_input.b.xz) & ~firstTrailingBit(0i)) <= -(~(2147483647i >> (global0[_wgslsmith_index_u32(u_input.c.x, 8u)] % 32u))));
}

fn func_3() -> f32 {
    global0 = array<u32, 8>();
    let var_0 = func_2(func_2(Struct_1(!func_2(Struct_1(vec2<bool>(true, true), u_input.c.yzy, u_input.c.x, vec4<bool>(true, false, true, true)), vec3<u32>(u_input.d.x, global0[_wgslsmith_index_u32(0u, 8u)], u_input.d.x), vec3<bool>(false, true, false)).d.xw, u_input.d, 4294967295u, select(func_2(Struct_1(vec2<bool>(true, true), vec3<u32>(1u, 29321u, 58498u), global0[_wgslsmith_index_u32(4294967295u, 8u)], vec4<bool>(true, false, true, true)), u_input.c.yxy, vec3<bool>(true, true, false)).d, func_2(Struct_1(vec2<bool>(false, true), u_input.d, 50748u, vec4<bool>(false, false, true, true)), vec3<u32>(u_input.d.x, 4294967295u, 3600u), vec3<bool>(true, false, true)).d, true)), reverseBits(vec3<u32>(42698u, 0u, global0[_wgslsmith_index_u32(u_input.d.x, 8u)])) & u_input.d, !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), ~(~(~_wgslsmith_div_vec3_u32(u_input.c.xxy, vec3<u32>(u_input.c.x, 1u, u_input.c.x)))), vec3<bool>(func_2(Struct_1(vec2<bool>(true, true), vec3<u32>(u_input.c.x, u_input.c.x, 46884u) >> (vec3<u32>(4294967295u, u_input.d.x, 1593u) % vec3<u32>(32u)), 112177u, vec4<bool>(true, true, false, true)), max(u_input.c.yyw, vec3<u32>(45882u, 0u, u_input.c.x) & u_input.d), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)).d.x, !(!(u_input.a > -2147483647i)), ~u_input.a > u_input.b.x)).d;
    global0 = array<u32, 8>();
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1813f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1663f, -1000f), _wgslsmith_f_op_f32(f32(-1f) * -533f), var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(846f, 2833f))))))));
    let var_2 = u_input.c;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-774f)))))) - 385f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(false, false))), !select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), false), ~(~u_input.d), _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(514u, 8u)], 4294967295u) & 46074u), 8u)], _wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~7342u, _wgslsmith_div_u32(14346u, 78483u)), 8u)], 8u)], _wgslsmith_sub_u32(15748u, _wgslsmith_dot_vec3_u32(u_input.d, u_input.c.yyw))), _wgslsmith_div_u32(~(~u_input.d.x), global0[_wgslsmith_index_u32(abs(firstTrailingBit(22916u)), 8u)])), vec4<bool>(false, true, !func_1(), false));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1344f, _wgslsmith_f_op_f32(floor(-493f)), select(var_0.a.x, false, var_0.a.x))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(995f - -1424f), -786f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(step(891f, _wgslsmith_div_f32(-157f, 454f))), var_0.a.x)))), _wgslsmith_f_op_f32(round(1376f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-686f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1762f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(452f + 1024f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(121f - -1000f)))), 629f));
    let x = u_input.a;
    s_output = StorageBuffer(453f, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_1.xyx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.zxw + var_1.xwz)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(var_1.yzx)), _wgslsmith_f_op_vec3_f32(-var_1.wyw), true))))), _wgslsmith_div_vec3_f32(var_1.xwx, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) * var_1.wxx)), var_1.wzy)), u_input.b.x, vec4<f32>(var_1.x, 1893f, _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(var_1.x + 1623f)), var_1.x));
}

