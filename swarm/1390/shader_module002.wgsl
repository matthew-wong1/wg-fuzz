struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(25302i, vec2<bool>(true, false));

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(25996i, vec2<bool>(false, false)), Struct_1(16382i, vec2<bool>(true, true)), Struct_1(-13767i, vec2<bool>(false, true)), Struct_1(-28051i, vec2<bool>(true, false)), Struct_1(2147483647i, vec2<bool>(false, true)), Struct_1(0i, vec2<bool>(true, false)), Struct_1(-9566i, vec2<bool>(true, false)), Struct_1(i32(-2147483648), vec2<bool>(true, false)), Struct_1(i32(-2147483648), vec2<bool>(true, false)));

var<private> global2: f32;

var<private> global3: f32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_1) -> u32 {
    var var_0 = _wgslsmith_mult_u32(max(~52623u, 0u), 1u);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-431f)) + _wgslsmith_f_op_f32(392f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(196f)) * _wgslsmith_f_op_f32(arg_0 * arg_0)))), _wgslsmith_f_op_f32(floor(arg_1.x)));
    global2 = var_1;
    global3 = arg_1.x;
    var var_2 = firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(12987u, 1u, ~0u), ~abs(~vec3<u32>(0u, 1u, 39798u))));
    return ~((_wgslsmith_clamp_u32(3723u, min(0u, 1u), ~0u) | 1u) >> (~select(abs(91711u), max(1u, 1u), arg_2.b.x) % 32u));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec3<f32>) -> vec3<f32> {
    var var_0 = Struct_1(abs(select(global0.a >> (11342u % 32u), _wgslsmith_sub_i32(u_input.a.x, global0.a), u_input.a.x <= global0.a) >> (90035u % 32u)), select(vec2<bool>(!arg_0 | true, arg_0), select(select(select(global0.b, vec2<bool>(global0.b.x, true), vec2<bool>(global0.b.x, global0.b.x)), !vec2<bool>(global0.b.x, global0.b.x), all(vec4<bool>(true, global0.b.x, false, arg_0))), vec2<bool>(true, global0.b.x & arg_0), global0.b), select(vec2<bool>(arg_0, true), !select(global0.b, vec2<bool>(arg_0, arg_0), global0.b), true)));
    var var_1 = _wgslsmith_clamp_i32(~2147483647i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(var_0.a, -12809i)) << (~vec2<u32>(14565u, 22423u) % vec2<u32>(32u)), vec2<i32>(var_0.a, 1i)), -1i), min(~(-2147483647i), abs(~(-22634i))));
    global2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-981f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.x, 1216f, false)))), _wgslsmith_f_op_f32(1455f - -623f)));
    let var_2 = vec2<u32>(func_3(_wgslsmith_f_op_f32(trunc(arg_1)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-858f, -1327f)), Struct_1(63337i, !global0.b)) & 1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 1u, 1u)));
    global1 = array<Struct_1, 9>();
    return _wgslsmith_f_op_vec3_f32(arg_2 * vec3<f32>(_wgslsmith_f_op_f32(abs(arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.x)))));
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 14448u, 77512u, 0u), vec4<u32>(1u, 5312u, 4294967295u, 4294967295u))), ~(~4294967295u)), 1u), 9u)];
    var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, ~_wgslsmith_dot_vec2_u32(min(vec2<u32>(19282u, 4294967295u), vec2<u32>(1u, 65081u)) & firstTrailingBit(vec2<u32>(1u, 24957u)), vec2<u32>(1u, _wgslsmith_mult_u32(1u, 24733u)))), 9u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(select(arg_0, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(global0.b.x, 1143f, vec3<f32>(arg_0.x, 1047f, 714f)))) - arg_0), _wgslsmith_div_vec3_f32(vec3<f32>(-1448f, _wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)), arg_0.x), vec3<f32>(121f, arg_0.x, _wgslsmith_f_op_f32(select(-1310f, arg_0.x, true))))), select(vec3<bool>(any(select(global0.b, global0.b, vec2<bool>(true, var_0.b.x))), all(vec4<bool>(var_0.b.x, false, true, false)), all(select(vec2<bool>(var_0.b.x, var_0.b.x), var_0.b, vec2<bool>(true, false)))), vec3<bool>(true, global0.b.x, var_0.b.x), select(select(!vec3<bool>(global0.b.x, false, global0.b.x), select(vec3<bool>(global0.b.x, false, global0.b.x), vec3<bool>(global0.b.x, true, true), global0.b.x), vec3<bool>(false, global0.b.x, global0.b.x)), select(vec3<bool>(global0.b.x, false, global0.b.x), select(vec3<bool>(true, global0.b.x, false), vec3<bool>(global0.b.x, true, var_0.b.x), vec3<bool>(global0.b.x, var_0.b.x, global0.b.x)), vec3<bool>(true, false, true)), select(select(vec3<bool>(false, var_0.b.x, global0.b.x), vec3<bool>(global0.b.x, false, var_0.b.x), false), !vec3<bool>(var_0.b.x, var_0.b.x, global0.b.x), true)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(720f, -1110f), _wgslsmith_f_op_f32(step(-1000f, 1000f)), -1701f, arg_0.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-304f, _wgslsmith_f_op_f32(f32(-1f) * -1449f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * 1318f) + 434f), _wgslsmith_f_op_vec3_f32(func_2(var_0.b.x, -114f, vec3<f32>(arg_0.x, arg_0.x, arg_0.x))).x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-188f, -2203f, 1352f, 735f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, 613f), vec4<f32>(-952f, -1000f, arg_0.x, -165f))))));
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-639f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.x)) + arg_0.x)))) + var_1.x);
    return global1[_wgslsmith_index_u32(1u, 9u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~(-(~vec4<i32>(2147483647i, u_input.a.x, 40883i, global0.a))));
    let var_1 = func_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1040f, 346f, 1425f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-860f, 1253f, 863f) - vec3<f32>(-339f, -633f, -122f))))))));
    var var_2 = vec3<bool>(false, false, false);
    global2 = 1334f;
    let var_3 = vec4<bool>(false & global0.b.x, all(global0.b), !(!global0.b.x), var_1.b.x);
    var var_4 = 0i;
    var var_5 = vec2<u32>(_wgslsmith_mult_u32(abs(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(83239u, 0u, 0u)), vec3<u32>(70188u, 4294967295u, 40428u))), _wgslsmith_clamp_u32(~0u, firstTrailingBit(firstTrailingBit(0u)), 1u)), ~((func_3(-1625f, vec2<f32>(1257f, -1557f), var_1) & _wgslsmith_add_u32(985u, 33528u)) >> (select(1u << (0u % 32u), 0u, any(var_3.wwx)) % 32u)));
    let var_6 = var_5.x;
    var_0 = countOneBits(vec4<i32>(global0.a, abs(17865i), 7908i, 0i));
    let x = u_input.a;
    s_output = StorageBuffer(-277f, _wgslsmith_f_op_f32(trunc(1628f)), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(firstLeadingBit(select(vec4<i32>(var_1.a, 2147483647i, var_0.x, u_input.a.x), vec4<i32>(17069i, u_input.a.x, var_1.a, u_input.a.x), var_3)), min(vec4<i32>(1i, global0.a, -59527i, 2147483647i) & vec4<i32>(u_input.a.x, global0.a, var_0.x, var_1.a), vec4<i32>(-17016i, -2147483647i, 15760i, global0.a))), ~abs(vec4<i32>(global0.a, 0i, global0.a, 34138i)) << ((~vec4<u32>(var_5.x, 4294967295u, var_5.x, var_5.x) | max(vec4<u32>(var_5.x, 1u, var_5.x, 4294967295u), vec4<u32>(var_5.x, 6600u, var_5.x, var_5.x))) % vec4<u32>(32u))));
}

