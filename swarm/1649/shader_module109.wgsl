struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
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

var<private> global0: vec4<bool>;

var<private> global1: f32 = 309f;

var<private> global2: array<Struct_1, 2>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<u32> {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~1u, 1u, firstLeadingBit(11317u), 1u), vec4<u32>(abs(86999u), 0u, _wgslsmith_clamp_u32(61249u, 0u, 1u), 1u)) | countOneBits(~1u), 2u)];
    let var_1 = 31093u;
    let var_2 = true;
    let var_3 = ~(~(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1, 91091u, 53203u, 6268u), vec4<u32>(var_1, 58556u, var_1, 1u)) >> (~vec4<u32>(var_1, 1u, var_1, 4294967295u) % vec4<u32>(32u))) & select(_wgslsmith_div_vec4_u32(vec4<u32>(31218u, 14680u, var_1, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1, var_1, 1u, 3034u), vec4<u32>(var_1, 48543u, 37241u, 1u))), vec4<u32>(var_1, ~0u, var_1, ~1u), vec4<bool>(select(false, global0.x, false), false, true, var_2)));
    var var_4 = Struct_3(Struct_2(global2[_wgslsmith_index_u32(var_3.x, 2u)], _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.x), -454f), vec2<f32>(-174f, _wgslsmith_f_op_f32(ceil(-1000f))))), global2[_wgslsmith_index_u32(select(~_wgslsmith_mod_u32(var_3.x, 105979u), ~(~0u), min(49745u, 1u) != var_1), 2u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x)))) - vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0.b.x)), _wgslsmith_div_f32(var_0.b.x, var_0.b.x), 1906f, _wgslsmith_f_op_f32(exp2(var_0.b.x)))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.x, var_0.b.x, 220f, var_0.b.x), vec4<f32>(var_0.b.x, var_0.b.x, 1073f, var_0.b.x)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1114f, var_0.b.x, var_0.b.x, var_0.b.x))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.b.x, var_0.b.x, true))) * 199f), _wgslsmith_f_op_f32(select(-1170f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -800f) + var_0.b.x), false))));
    return vec3<u32>(64279u, _wgslsmith_add_u32(38073u, 1u), ~(~_wgslsmith_mod_u32(4294967295u, countOneBits(4294967295u))));
}

fn func_2(arg_0: f32, arg_1: bool) -> bool {
    var var_0 = Struct_2(global2[_wgslsmith_index_u32(~1u, 2u)], _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0, _wgslsmith_f_op_f32(1469f * arg_0)), vec2<f32>(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_f_op_f32(-1409f * _wgslsmith_f_op_f32(f32(-1f) * -603f))))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(func_3() << (select(vec3<u32>(1u, 86718u, 82467u), abs(vec3<u32>(22850u, 4294967295u, 0u)), select(vec3<bool>(global0.x, true, true), global0.wxx, vec3<bool>(arg_1, global0.x, true))) % vec3<u32>(32u)), select(~firstLeadingBit(vec3<u32>(1u, 0u, 22879u)), ~firstTrailingBit(vec3<u32>(0u, 1u, 34448u)), false)), 2u)]);
    let var_1 = -max(u_input.a.x, max(~(-2147483647i), u_input.a.x)) <= -(~1i);
    var var_2 = Struct_2(Struct_1(!arg_1, _wgslsmith_f_op_vec2_f32(-var_0.b)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1160f * -189f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.c.b.x)) - _wgslsmith_f_op_f32(-arg_0)))), global2[_wgslsmith_index_u32(23792u, 2u)]);
    let var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-513f, -242f) - var_0.b) + _wgslsmith_f_op_vec2_f32(var_2.c.b + vec2<f32>(arg_0, var_0.c.b.x)))))), var_2.b, true && global0.x));
    var var_4 = 1u;
    return false == ((_wgslsmith_f_op_f32(min(985f, arg_0)) < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(arg_0)), -1172f, true))) == all(vec2<bool>(all(vec2<bool>(var_2.c.a, var_0.a.a)), var_1 | false)));
}

fn func_1() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1023f, -1074f, -1000f))))))));
    var var_1 = -552f;
    global2 = array<Struct_1, 2>();
    var var_2 = select(!vec4<bool>(false, true, all(vec4<bool>(true, global0.x, global0.x, global0.x)), true), vec4<bool>(false, 1f == _wgslsmith_f_op_f32(-var_0.x), func_2(_wgslsmith_f_op_f32(-var_0.x), global0.x) | !global0.x, global0.x), global0.x && global0.x);
    var var_3 = ~_wgslsmith_mult_vec2_u32(reverseBits(~vec2<u32>(59364u, 31465u)), func_3().zx);
    return !var_2.yw;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 2>();
    var var_0 = Struct_2(global2[_wgslsmith_index_u32(5083u, 2u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -858f) + vec2<f32>(210f, -946f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-548f, -156f), vec2<f32>(-816f, 1151f)) * vec2<f32>(-1507f, -703f)))), global2[_wgslsmith_index_u32(~((4294967295u >> (0u % 32u)) | _wgslsmith_dot_vec2_u32(vec2<u32>(10445u, 7294u), vec2<u32>(1u, 0u))) & ~(~(~19140u)), 2u)]);
    var var_1 = !func_1();
    var var_2 = -1i;
    var_2 = 1i;
    var_1 = select(!(!global0.yz), !(!select(!global0.yx, vec2<bool>(true, false), !global0.x)), !(!(!global0.x)));
    var var_3 = var_0.c.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.b);
}

