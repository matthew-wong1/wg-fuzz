struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: f32,
    d: Struct_2,
    e: u32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec3<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<f32>) -> f32 {
    global0 = array<u32, 27>();
    var var_0 = _wgslsmith_f_op_f32(select(-856f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-924f, arg_1.x)))), !(arg_1.x == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_f32(-arg_1.x)))));
    global0 = array<u32, 27>();
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -779f);
    global0 = array<u32, 27>();
    return 1000f;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: bool, arg_3: vec3<f32>) -> bool {
    var var_0 = Struct_3(arg_1.d.a.c.x, arg_1.a, arg_3.x);
    var var_1 = vec2<bool>(true, true);
    global0 = array<u32, 27>();
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-arg_1.c), any(select(vec3<bool>(arg_2, false, true), select(vec3<bool>(arg_1.d.a.b, arg_1.d.c.b, false), vec3<bool>(arg_2, arg_2, arg_2), true), !var_1.x)), _wgslsmith_div_vec3_i32(firstTrailingBit(~arg_1.a.c.c), var_0.b.c.c)), arg_1.a.b, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -497f) * arg_1.c), arg_3.x >= _wgslsmith_f_op_f32(-var_0.b.a.a), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-2147483647i, arg_1.a.d), -arg_1.d.d), -_wgslsmith_mod_i32(0i, arg_0.x), -7346i)), ~(-(i32(-1i) * -26516i) >> (countOneBits(~u_input.d) % 32u)));
    var_1 = !(!vec2<bool>(any(vec3<bool>(true, false, var_1.x)) | true, (arg_1.d.c.b != false) || !arg_1.d.b));
    return any(!vec3<bool>(var_2.b, arg_2, true));
}

fn func_2(arg_0: vec2<u32>) -> vec3<f32> {
    let var_0 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), any(vec3<bool>(false, false, true)) | all(vec2<bool>(true, true)), vec3<i32>(-1i, -19263i, -29423i)), true, Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-708f, 925f), -495f)), any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false)), ~vec3<i32>(1i, 1i, 1i)), ~1i), ~(vec2<i32>(min(12378i, -2147483647i), abs(-28562i)) >> (~min(u_input.c.zw, u_input.b.zz) % vec2<u32>(32u))), -179f, Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-450f, 1742f)))), (arg_0.x == arg_0.x) | true, ~firstLeadingBit(vec3<i32>(-1i, 0i, 804i))), func_4(vec3<i32>(_wgslsmith_mult_i32(48310i, 35670i), _wgslsmith_dot_vec2_i32(vec2<i32>(35063i, 12833i), vec2<i32>(0i, -5679i)), -14526i), Struct_4(Struct_2(Struct_1(421f, true, vec3<i32>(-2147483647i, 0i, -26774i)), true, Struct_1(-700f, false, vec3<i32>(48892i, 0i, -10813i)), 1i), vec2<i32>(1i, -15991i), -665f, Struct_2(Struct_1(-879f, true, vec3<i32>(-2147483647i, 8703i, -16873i)), false, Struct_1(-148f, true, vec3<i32>(-18505i, -2147483647i, 4444i)), 2147483647i), global0[_wgslsmith_index_u32(4294967295u, 27u)]), true, vec3<f32>(1457f, _wgslsmith_f_op_f32(min(1016f, -335f)), _wgslsmith_f_op_f32(func_3(vec2<bool>(true, false), vec2<f32>(740f, -424f))))), Struct_1(-446f, all(vec3<bool>(false, true, false)), ~vec3<i32>(36334i, -1i, 2147483647i)), reverseBits(~max(-47143i, 2147483647i))), ~global0[_wgslsmith_index_u32(~(~countOneBits(u_input.d)), 27u)]);
    let var_1 = var_0.a;
    var var_2 = var_0;
    var_2 = Struct_4(var_1, ~_wgslsmith_sub_vec2_i32(~var_1.a.c.yy >> (arg_0 % vec2<u32>(32u)), -(~vec2<i32>(var_1.d, -35729i))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, var_0.d.c.a)), var_2.a, ~(~(~(~19651u))));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.a, var_1.c.a, _wgslsmith_f_op_f32(abs(1000f))));
}

fn func_1(arg_0: vec4<u32>) -> vec4<bool> {
    global0 = array<u32, 27>();
    let var_0 = abs(_wgslsmith_dot_vec2_i32(reverseBits(~(-vec2<i32>(-1i, 2147483647i))), -vec2<i32>(max(-1i, -6401i), 2147483647i)));
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -299f)), _wgslsmith_f_op_f32(f32(-1f) * -458f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(vec2<u32>(5751u, 36532u)))))));
    let var_2 = 1063f;
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec3_f32(func_2(u_input.c.xw)).x, _wgslsmith_f_op_f32(-var_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(848f + var_2) - 1193f))), 904f, true)), _wgslsmith_f_op_vec3_f32(func_2(vec2<u32>(reverseBits(1126u), ~_wgslsmith_mult_u32(2008u, arg_0.x)))).x, -653f);
    return vec4<bool>(select(any(vec2<bool>(true, true)), -877f >= _wgslsmith_div_f32(_wgslsmith_div_f32(var_2, 808f), _wgslsmith_f_op_f32(floor(var_1.x))), true), all(vec3<bool>(all(vec2<bool>(true, true)), true, true)), func_4(~_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0, var_0, var_0), vec3<i32>(0i, var_0, 0i)), vec3<i32>(var_0, -1i, 1i) << (vec3<u32>(arg_0.x, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30328u, 27u)], 27u)]) % vec3<u32>(32u)), vec3<i32>(var_0, var_0, 40169i)), Struct_4(Struct_2(Struct_1(-414f, false, vec3<i32>(var_0, -18614i, var_0)), true, Struct_1(-592f, true, vec3<i32>(2147483647i, 0i, var_0)), var_0), vec2<i32>(0i, var_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x - var_2), _wgslsmith_f_op_f32(max(-913f, var_1.x))), Struct_2(Struct_1(var_2, false, vec3<i32>(-1i, var_0, var_0)), true, Struct_1(1638f, false, vec3<i32>(var_0, var_0, 1i)), 1i), arg_0.x), false, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, -314f, var_2)) * vec3<f32>(var_1.x, 469f, -740f)), vec3<f32>(1596f, -923f, _wgslsmith_f_op_f32(trunc(var_1.x)))))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 10050u;
    global0 = array<u32, 27>();
    let var_1 = true;
    var var_2 = select(select(select(!(!vec4<bool>(false, var_1, var_1, false)), !(!vec4<bool>(var_1, var_1, false, true)), vec4<bool>(var_1 && var_1, any(vec2<bool>(var_1, var_1)), var_1, var_1)), select(vec4<bool>(true, true, false, !var_1), select(!vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(true, var_1, var_1, true), select(vec4<bool>(false, var_1, var_1, false), vec4<bool>(var_1, false, var_1, var_1), vec4<bool>(var_1, true, false, var_1))), !select(vec4<bool>(false, var_1, false, true), vec4<bool>(var_1, var_1, false, true), vec4<bool>(false, false, true, true))), select(vec4<bool>(true, true, false, var_1), !func_1(vec4<u32>(u_input.d, global0[_wgslsmith_index_u32(u_input.b.x, 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22214u, 27u)], 27u)], u_input.b.x)), all(func_1(vec4<u32>(102908u, 1u, u_input.e, u_input.e)).zw))), select(vec4<bool>(func_4(-vec3<i32>(-48810i, -49896i, -1i), Struct_4(Struct_2(Struct_1(785f, false, vec3<i32>(17557i, 1i, 1i)), var_1, Struct_1(431f, var_1, vec3<i32>(-7687i, 1i, -3542i)), -5213i), vec2<i32>(-1i, 1i), 463f, Struct_2(Struct_1(1460f, var_1, vec3<i32>(2147483647i, -1i, -2147483647i)), var_1, Struct_1(645f, var_1, vec3<i32>(-2147483647i, -2147483647i, -29915i)), -2147483647i), u_input.b.x), var_1, _wgslsmith_f_op_vec3_f32(vec3<f32>(-459f, -737f, -1503f) + vec3<f32>(2384f, -1000f, -1129f))), select(false, false, true) == !var_1, false, all(vec2<bool>(var_1, false))), select(select(select(vec4<bool>(false, var_1, true, var_1), vec4<bool>(false, false, true, true), vec4<bool>(var_1, var_1, true, true)), func_1(vec4<u32>(22323u, global0[_wgslsmith_index_u32(45323u, 27u)], u_input.e, 32862u)), true), vec4<bool>(all(vec3<bool>(var_1, true, false)), var_1, true, true), true), !func_1(vec4<u32>(u_input.c.x, 28712u, u_input.c.x, 112164u))), vec4<bool>(!var_1, all(!func_1(vec4<u32>(8152u, 4294967295u, 0u, 4294967295u)).wzx), var_1, ~u_input.a.x <= 43670u));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(min(102f, _wgslsmith_f_op_f32(step(-963f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -845f), _wgslsmith_f_op_f32(-377f + -647f)))))), true, ~((firstLeadingBit(vec3<i32>(1i, -2147483647i, -2587i)) << (countOneBits(vec3<u32>(global0[_wgslsmith_index_u32(1u, 27u)], 1u, u_input.b.x)) % vec3<u32>(32u))) >> (min(vec3<u32>(13195u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(59957u, 27u)], 27u)], 27u)], 27u)], 0u), firstLeadingBit(vec3<u32>(0u, 1u, 1u))) % vec3<u32>(32u))));
    var var_4 = -vec2<i32>(var_3.c.x, 1i);
    let var_5 = var_3.c.xy;
    var_0 = ~firstTrailingBit(~abs(~4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.wzy, max(vec2<i32>(i32(-1i) * -13055i, abs(-37164i)), var_3.c.xx), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(ceil(1947f)), -1163f, _wgslsmith_div_f32(var_3.a, _wgslsmith_f_op_f32(-1119f - var_3.a))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a, 1282f, -614f) + vec3<f32>(var_3.a, var_3.a, -291f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a, 518f, -136f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a, var_3.a, -551f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1568f, 457f, var_3.a), vec3<f32>(var_3.a, var_3.a, var_3.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_3.a, 1471f, 761f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(776f, var_3.a, var_3.a) + vec3<f32>(962f, var_3.a, var_3.a))))) + vec3<f32>(_wgslsmith_f_op_f32(var_3.a * var_3.a), _wgslsmith_f_op_vec3_f32(func_2(~vec2<u32>(1u, u_input.e))).x, _wgslsmith_f_op_f32(-1f))));
}

