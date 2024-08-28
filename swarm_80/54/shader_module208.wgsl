struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24>;

var<private> global1: vec2<u32> = vec2<u32>(1u, 4294967295u);

var<private> global2: i32 = -75415i;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_1) -> bool {
    var var_0 = ~firstLeadingBit(select(~firstLeadingBit(4294967295u), global1.x, !select(true, true, false)));
    global0 = array<f32, 24>();
    global0 = array<f32, 24>();
    let var_1 = _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -522f), _wgslsmith_f_op_f32(1000f + 1871f), all(vec4<bool>(true, true, true, true)))) * -1000f)));
    global1 = arg_2.yy >> (vec2<u32>(firstLeadingBit(4294967295u), max(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(53010u, arg_2.x, 8481u), arg_2) & abs(9085u))) % vec2<u32>(32u));
    return false != ((max(0u << (0u % 32u), u_input.a) ^ 4294967295u) > _wgslsmith_dot_vec3_u32(arg_2 >> (~arg_2 % vec3<u32>(32u)), arg_2));
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = select(vec2<bool>(true, all(vec4<bool>(true, false, false, true)) && !func_3(vec4<f32>(global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], -561f, global0[_wgslsmith_index_u32(18212u, 24u)]), arg_2, arg_1, arg_2)), select(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), true)), select(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(all(vec2<bool>(false, false)), true), all(vec2<bool>(false, false))), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true)), vec2<bool>(func_3(vec4<f32>(1764f, -786f, global0[_wgslsmith_index_u32(arg_1.x, 24u)], global0[_wgslsmith_index_u32(global1.x, 24u)]), Struct_1(53747u), vec3<u32>(20222u, u_input.a, global1.x), Struct_1(4294967295u)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), _wgslsmith_dot_vec3_u32(arg_1, _wgslsmith_add_vec3_u32(vec3<u32>(arg_0, u_input.a, global1.x), _wgslsmith_add_vec3_u32(arg_1, vec3<u32>(global1.x, global1.x, 41681u)))) <= ~0u);
    var var_1 = vec3<f32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(31831u, min(arg_0, abs(global1.x))), 24u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(57001u, 24u)]))) - global0[_wgslsmith_index_u32(3190u, 24u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(43164u, 24u)]), 1583f))))), global0[_wgslsmith_index_u32(~arg_1.x, 24u)]);
    let var_2 = Struct_2(arg_2, var_1.x, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -398f)), var_1.x, -1823f, global0[_wgslsmith_index_u32(firstLeadingBit(1u), 24u)]))), arg_2);
    let var_3 = ~countOneBits(4826u);
    var var_4 = u_input.b.yx;
    return _wgslsmith_add_vec4_u32(~vec4<u32>(~74946u, arg_0, 1u, arg_2.a) << (_wgslsmith_sub_vec4_u32(firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(16072u, u_input.a, arg_1.x, 0u), vec4<u32>(arg_0, var_3, var_3, arg_0))), vec4<u32>(arg_1.x, arg_1.x, 34934u, _wgslsmith_mod_u32(1u, arg_0))) % vec4<u32>(32u)), firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(20559u | var_3, 12771u, 16029u, 0u), countOneBits(vec4<u32>(arg_1.x, 44976u, 4294967295u, 0u)))));
}

fn func_1(arg_0: f32) -> vec4<u32> {
    var var_0 = select(vec2<bool>(any(vec4<bool>(true, true, true, true)), true), vec2<bool>(true, true), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), true), u_input.b.x > u_input.b.x))));
    let var_1 = 1u & _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(1u, u_input.a, u_input.a)), vec3<u32>(global1.x, 45062u, 67097u), ~vec3<u32>(global1.x, 0u, 1u)), firstTrailingBit(firstTrailingBit(vec3<u32>(global1.x, 1u, 1u)))), ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 4294967295u), vec3<u32>(108430u, 60185u, u_input.a))));
    return _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(~(~(~vec4<u32>(global1.x, 1u, 4294967295u, var_1))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec4<u32>(u_input.a, 26426u, 4294967295u, u_input.a)) | reverseBits(vec4<u32>(u_input.a, 11799u, 119323u, 49831u))), firstTrailingBit((func_2(1u, vec3<u32>(var_1, var_1, 2354u), Struct_1(var_1)) | ~vec4<u32>(u_input.a, 0u, u_input.a, 30804u)) ^ select(vec4<u32>(global1.x, 0u, var_1, 8622u), vec4<u32>(u_input.a, var_1, 4153u, 122u), select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(true, var_0.x, var_0.x, false), true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec4_u32(func_1(-254f), vec4<u32>(global1.x, firstLeadingBit(_wgslsmith_clamp_u32(global1.x, abs(40639u), 1u)), ~4294967295u, global1.x));
    var var_1 = Struct_1(firstLeadingBit(global1.x));
    var var_2 = select(reverseBits(~(~vec3<u32>(global1.x, 0u, 84638u))), var_0.yxz, vec3<bool>(any(vec4<bool>(false, true, false, any(vec3<bool>(false, false, true)))), !(-1208f >= global0[_wgslsmith_index_u32(global1.x, 24u)]), false));
    var var_3 = var_0.yw;
    var var_4 = (-u_input.b.x < u_input.b.x) | true;
    var var_5 = Struct_2(Struct_1(var_2.x), global0[_wgslsmith_index_u32(1u, 24u)], vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_2.x, 24u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1507f)) + -679f)), global0[_wgslsmith_index_u32(var_3.x, 24u)], global0[_wgslsmith_index_u32(~1u, 24u)]), Struct_1(_wgslsmith_sub_u32(~var_0.x, 34865u)));
    let x = u_input.a;
    s_output = StorageBuffer(1u, 1u);
}

