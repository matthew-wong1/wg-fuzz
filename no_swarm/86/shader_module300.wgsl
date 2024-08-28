struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec4<i32>,
    d: vec4<u32>,
    e: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec3<f32> = vec3<f32>(727f, -513f, -414f);

var<private> global2: array<vec2<bool>, 31>;

var<private> global3: vec3<u32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_3) -> f32 {
    let var_0 = firstLeadingBit(u_input.b.x);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(arg_0.b.x)))))));
    global1 = _wgslsmith_f_op_vec3_f32(-arg_0.b.wwx);
    let var_2 = var_1;
    var var_3 = _wgslsmith_add_vec4_u32(~((vec4<u32>(1u, 8185u, 40515u, global3.x) << (vec4<u32>(arg_0.a, u_input.c.x, 4294967295u, arg_0.a) % vec4<u32>(32u))) >> (_wgslsmith_mult_vec4_u32(u_input.c, u_input.d) % vec4<u32>(32u))) >> (~abs(u_input.c) % vec4<u32>(32u)), ~u_input.d);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(246f * var_1.a));
}

fn func_3() -> bool {
    global3 = vec3<u32>(global3.x, 91905u, _wgslsmith_sub_u32(~global3.x, u_input.d.x));
    var var_0 = select(!vec4<bool>(true, any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), true)), true, true), vec4<bool>(any(select(vec2<bool>(true, false), global2[_wgslsmith_index_u32(~global3.x, 31u)], all(vec3<bool>(true, false, true)))), true, false, true), vec4<bool>(true, true, true, true));
    var_0 = select(select(vec4<bool>(true, false, var_0.x, true), vec4<bool>(true, var_0.x, true, any(!var_0.zxw)), !vec4<bool>(true, false & var_0.x, false && var_0.x, true)), vec4<bool>(!(!(!var_0.x)), any(vec3<bool>(false, true, false)), false, true), vec4<bool>(!any(!vec4<bool>(var_0.x, var_0.x, var_0.x, true)), !all(vec2<bool>(false, false)), !any(select(var_0.xw, vec2<bool>(var_0.x, false), global2[_wgslsmith_index_u32(global3.x, 31u)])), !(_wgslsmith_div_i32(u_input.b.x, 0i) <= 10784i)));
    return select(-63848i < -(select(u_input.b.x, u_input.b.x, var_0.x) | u_input.b.x), false, all(!(!(!vec4<bool>(false, var_0.x, var_0.x, var_0.x)))));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = vec4<bool>(all(global2[_wgslsmith_index_u32(1u, 31u)]), any(!(!vec3<bool>(arg_1.b, true, arg_1.b))), u_input.b.x == -3355i, func_3());
    var var_1 = -1226f;
    let var_2 = _wgslsmith_clamp_u32(~global3.x, ~_wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(63985u, 34525u)), reverseBits(1u)), u_input.d.x);
    let var_3 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(arg_0, -8180i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, -1i), vec2<i32>(arg_0, arg_1.c.x)), -82i, _wgslsmith_div_i32(0i, -5070i)) | ~1i), 1i);
    let var_4 = Struct_3(8204u, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -459f, -559f, arg_1.e) * vec4<f32>(arg_1.e, -1093f, global1.x, 709f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(654f, global1.x, 1697f, -437f) + vec4<f32>(arg_1.e, global0.x, -1571f, -167f)))), vec4<f32>(-968f, _wgslsmith_f_op_f32(-1289f - _wgslsmith_f_op_f32(ceil(arg_1.e))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.x - -555f), _wgslsmith_f_op_f32(arg_1.e + 164f))), -1000f))));
    return !select(vec4<bool>(true, true, false, var_4.b.x >= _wgslsmith_f_op_f32(f32(-1f) * -103f)), !vec4<bool>(all(var_0.wx), false, -168f <= global0.x, false | var_0.x), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<bool>, 31>();
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -824f), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(func_1(Struct_3(45792u, vec4<f32>(global1.x, -1000f, global1.x, global0.x))))))));
    var var_0 = !select(func_2(firstLeadingBit(_wgslsmith_add_i32(u_input.b.x, u_input.b.x)), Struct_1(u_input.c, true, vec4<i32>(29275i, u_input.b.x, u_input.b.x, u_input.b.x), u_input.c, _wgslsmith_f_op_f32(-global0.x))), func_2(u_input.b.x, Struct_1(_wgslsmith_add_vec4_u32(u_input.d, vec4<u32>(global3.x, 1456u, 30108u, 0u)), true, vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) >> (vec4<u32>(u_input.d.x, u_input.d.x, u_input.c.x, 88301u) % vec4<u32>(32u)), vec4<u32>(global3.x, global3.x, u_input.a.x, u_input.c.x), global0.x)), false);
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 744f, 163f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.x, global0.x, global1.x)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(-1544f - -1000f), -249f))));
    let var_1 = 19733u;
    var var_2 = abs(_wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(firstLeadingBit(u_input.b.x), u_input.b.x), min(min(u_input.b.x, 0i), u_input.b.x)), u_input.b.x));
    let var_3 = !var_0.xxz;
    let var_4 = (_wgslsmith_add_i32(1i, min(_wgslsmith_dot_vec3_i32(vec3<i32>(42069i, 2147483647i, u_input.b.x), vec3<i32>(u_input.b.x, -1i, u_input.b.x)), abs(15216i))) >> (~u_input.d.x % 32u)) >= (_wgslsmith_mod_i32(abs(u_input.b.x) << (countOneBits(global3.x) % 32u), 2147483647i) << (abs(countOneBits(12715u) ^ (13380u << (u_input.a.x % 32u))) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x);
}

