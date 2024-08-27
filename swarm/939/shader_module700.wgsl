struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17> = array<bool, 17>(false, true, true, false, true, true, true, false, false, true, false, false, true, true, false, false, true);

var<private> global1: f32 = 456f;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> bool {
    var var_0 = Struct_1(all(select(select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(u_input.b, 17u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 17u)], false, global0[_wgslsmith_index_u32(45821u, 17u)]), false), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.d, 17u)], global0[_wgslsmith_index_u32(1u, 17u)], true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(22262u, 17u)], global0[_wgslsmith_index_u32(1u, 17u)]), select(vec4<bool>(false, global0[_wgslsmith_index_u32(11387u, 17u)], true, global0[_wgslsmith_index_u32(0u, 17u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(0u, 17u)], global0[_wgslsmith_index_u32(u_input.b, 17u)], global0[_wgslsmith_index_u32(u_input.b, 17u)]), vec4<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 17u)], false)), vec4<bool>(global0[_wgslsmith_index_u32(0u, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(u_input.d, 17u)], global0[_wgslsmith_index_u32(u_input.b, 17u)])), global0[_wgslsmith_index_u32(58244u, 17u)])), 1u);
    var var_1 = min(min(~vec3<i32>(-12952i, u_input.c.x, u_input.a) | (_wgslsmith_div_vec3_i32(u_input.c.wxy, u_input.c.zzx) << (select(vec3<u32>(var_0.b, 0u, u_input.b), vec3<u32>(1u, 1u, 0u), false) % vec3<u32>(32u))), vec3<i32>(-1i, _wgslsmith_clamp_i32(~0i, ~u_input.e.x, -25759i), u_input.c.x)), firstTrailingBit(vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, 0i), vec3<i32>(-41852i, u_input.c.x, u_input.c.x)), u_input.e.x, u_input.e.x)));
    var_0 = Struct_1(!(!var_0.a), 27213u);
    var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(abs(firstLeadingBit(1i) >> (0u % 32u)), ~u_input.e.x, ~(~firstLeadingBit(var_1.x))), vec3<i32>(u_input.a, 25943i, 0i));
    var var_2 = Struct_1(var_0.a, ~(~var_0.b ^ max(55659u, var_0.b)));
    return var_0.a;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(abs(~u_input.c));
    let var_1 = Struct_3(u_input.d, Struct_1(global0[_wgslsmith_index_u32(~(_wgslsmith_add_u32(1u, 1u) | u_input.b), 17u)], firstLeadingBit(~_wgslsmith_clamp_u32(u_input.d, u_input.b, 22971u))), Struct_1(func_3(), u_input.b));
    global1 = _wgslsmith_f_op_f32(sign(-1482f));
    global1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -857f))))))));
    let var_2 = var_0.a.x;
    return var_1.c;
}

fn func_1() -> f32 {
    var var_0 = Struct_3(u_input.d, Struct_1(false, 11043u), func_2());
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -541f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -328f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2260f)))))), _wgslsmith_f_op_f32(-194f - _wgslsmith_f_op_f32(f32(-1f) * -843f)));
    var var_1 = _wgslsmith_f_op_f32(-1000f * -837f);
    let var_2 = Struct_1(func_3(), 1u);
    var var_3 = !vec3<bool>(true, any(vec2<bool>(u_input.e.x <= -27035i, false && global0[_wgslsmith_index_u32(54892u, 17u)])), true);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(254f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -576f) - _wgslsmith_div_f32(777f, -446f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(select(!(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 17u)], global0[_wgslsmith_index_u32(u_input.d, 17u)])), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(global0[_wgslsmith_index_u32(0u, 17u)], false), vec2<bool>(true, false)), vec2<bool>(global0[_wgslsmith_index_u32(~u_input.d, 17u)], true), !select(select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(39294u, 17u)], global0[_wgslsmith_index_u32(1u, 17u)]), global0[_wgslsmith_index_u32(~30133u, 17u)]), select(!vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 17u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.d, 17u)]), !vec2<bool>(global0[_wgslsmith_index_u32(7105u, 17u)], global0[_wgslsmith_index_u32(27184u, 17u)])), vec2<bool>(true, true)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(971f, -2238f) - _wgslsmith_div_f32(-1568f, 840f))) * -882f), _wgslsmith_f_op_f32(f32(-1f) * -437f), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1())))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1467f + var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + 628f), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-var_1.x)), var_1.x) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-619f, 493f, var_1.x, 1131f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x) * vec4<f32>(561f, var_1.x, var_1.x, 1438f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-167f * var_1.x), var_1.x, _wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_f_op_f32(2085f - 769f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, -698f)))))));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.x, 194f, 798f, -653f), vec4<f32>(1760f, var_1.x, var_1.x, 692f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1302f, var_1.x, 283f)) + vec4<f32>(var_1.x, -1000f, var_1.x, var_1.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1099f, var_1.x, 1657f, var_1.x), vec4<f32>(var_1.x, -2067f, var_1.x, 437f))) + _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<f32>(var_1.x, var_1.x, -535f, -252f))))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-824f, var_1.x, -188f, 624f) + vec4<f32>(1591f, 723f, 235f, var_1.x))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(186f, 278f, var_1.x, 232f) + vec4<f32>(var_1.x, var_1.x, 809f, 1047f))))))));
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-745f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1008f * 499f))), var_1.x, 1147f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(104f * _wgslsmith_f_op_f32(func_1())) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(var_2.x + 1525f)) - -2008f)));
    var var_3 = vec4<bool>(true, _wgslsmith_mod_u32(u_input.b, ~u_input.d ^ u_input.b) == (select(~u_input.d, ~37351u, global0[_wgslsmith_index_u32(u_input.b, 17u)]) << ((~u_input.d << (u_input.b % 32u)) % 32u)), any(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, false, true)), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 17u)], true), vec3<bool>(false, false, global0[_wgslsmith_index_u32(14014u, 17u)])), select(vec3<bool>(false, var_0.x, var_0.x), select(vec3<bool>(global0[_wgslsmith_index_u32(24953u, 17u)], var_0.x, true), vec3<bool>(var_0.x, true, false), vec3<bool>(var_0.x, false, false)), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 17u)], var_0.x)))), (687f >= _wgslsmith_f_op_f32(ceil(-1093f))) != global0[_wgslsmith_index_u32(u_input.b, 17u)]);
    let x = u_input.a;
    s_output = StorageBuffer(1000f, -1385f, firstLeadingBit(_wgslsmith_mod_i32(u_input.e.x, -1i)), abs(vec4<i32>(-1i) * -abs(vec4<i32>(u_input.e.x, -1i, 2147483647i, u_input.c.x))));
}

