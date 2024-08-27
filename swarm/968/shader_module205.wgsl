struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_2;

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec2<bool>(true, false)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec3<bool>) -> vec2<i32> {
    return ~(~(-vec2<i32>(-2147483647i, _wgslsmith_div_i32(0i, global1.b))));
}

fn func_3(arg_0: u32) -> bool {
    global0 = select(!vec3<bool>(any(!vec4<bool>(true, true, global0.x, global0.x)), global0.x, global1.c.a.x), !vec3<bool>(!(u_input.a.x <= u_input.a.x), true, all(global0.yz)), select(select(select(!vec3<bool>(false, global0.x, true), vec3<bool>(true, true, true), true), select(vec3<bool>(false, true, global1.d), select(vec3<bool>(true, global1.c.a.x, true), vec3<bool>(false, global1.c.a.x, true), vec3<bool>(global2.a.x, true, global1.d)), !vec3<bool>(global2.a.x, global0.x, false)), global1.d), vec3<bool>(!any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(f32(-1f) * -397f) != _wgslsmith_f_op_f32(step(1424f, -1914f)), !global2.a.x), select(!(!vec3<bool>(false, true, global1.c.a.x)), vec3<bool>(global1.c.a.x, arg_0 <= arg_0, any(vec3<bool>(global2.a.x, global0.x, false))), vec3<bool>(false, global1.c.a.x, false))));
    var var_0 = select(!(!vec3<bool>(global1.d, any(vec3<bool>(global0.x, false, false)), false)), !select(select(!vec3<bool>(false, global2.a.x, global1.d), select(vec3<bool>(global2.a.x, false, true), vec3<bool>(false, global0.x, false), vec3<bool>(false, true, false)), true), vec3<bool>(false, any(vec3<bool>(false, false, global1.d)), true), global1.c.a.x), true);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1460f, _wgslsmith_f_op_f32(f32(-1f) * -1145f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1609f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(249f - 431f), _wgslsmith_f_op_f32(-1327f - 1408f))))), -746f);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1 * vec3<f32>(_wgslsmith_f_op_f32(trunc(-143f)), var_1.x, -1229f))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, var_1.x))), 748f))));
    let var_3 = true;
    return any(select(select(select(global0.yz, vec2<bool>(global2.a.x, true), arg_0 <= 0u), !select(var_0.yz, vec2<bool>(false, var_0.x), global2.a.x), !all(vec3<bool>(global1.c.a.x, global2.a.x, false))), select(vec2<bool>(all(vec4<bool>(true, global0.x, global2.a.x, var_0.x)), !global0.x), vec2<bool>(global1.c.a.x, global1.d), !select(var_0.zz, vec2<bool>(global1.c.a.x, global2.a.x), vec2<bool>(true, var_0.x))), select(!(!vec2<bool>(var_0.x, true)), var_0.zx, _wgslsmith_f_op_f32(261f - var_2.x) == _wgslsmith_div_f32(var_2.x, var_1.x))));
}

fn func_2() -> bool {
    let var_0 = u_input.b.x;
    var var_1 = Struct_1(global0.xy);
    global3 = array<Struct_1, 1>();
    global0 = select(vec3<bool>(!all(vec2<bool>(false, false)), global0.x, global0.x), select(vec3<bool>(func_3(0u << (1u % 32u)), var_1.a.x, var_1.a.x), vec3<bool>((global2.a.x || true) | all(vec2<bool>(global2.a.x, var_1.a.x)), all(vec4<bool>(true, var_1.a.x, false, false)), true), !vec3<bool>(true, true, all(vec3<bool>(false, true, global0.x)))), var_1.a.x || true);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-810f, -1149f, 2028f) + vec3<f32>(-394f, 626f, 1045f)))) + vec3<f32>(915f, _wgslsmith_f_op_f32(-952f - -1601f), _wgslsmith_f_op_f32(step(-1780f, -1690f)))));
    return global2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1233f;
    let var_1 = countOneBits(~abs(-vec4<i32>(u_input.a.x, -1i, -16926i, global1.a) & vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -9852i)));
    var var_2 = Struct_3(var_1.xw ^ ~u_input.a.xx, firstTrailingBit(u_input.b.x));
    let var_3 = firstLeadingBit((max(func_1(-3005i, Struct_1(global0.zz), vec3<bool>(true, global1.c.a.x, false)), vec2<i32>(36559i, var_2.a.x)) ^ vec2<i32>(-var_2.a.x, 2147483647i)) >> (u_input.b % vec2<u32>(32u)));
    global2 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, firstTrailingBit(0u ^ reverseBits(u_input.b.x)), ~(~u_input.b.x & ~u_input.b.x) | 40441u), 1u)];
    let var_4 = func_2();
    let var_5 = u_input.b.x;
    var var_6 = ~var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(_wgslsmith_add_u32(reverseBits(~var_5), _wgslsmith_mod_u32(u_input.b.x, 45807u)), 55241u), -1i, -18928i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0, var_0), vec2<f32>(var_0, -2112f))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -991f))) * vec2<f32>(_wgslsmith_f_op_f32(min(var_0, _wgslsmith_div_f32(532f, 882f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-831f))))));
}

