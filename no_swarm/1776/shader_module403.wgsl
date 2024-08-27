struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
    c: vec3<i32>,
    d: vec4<f32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_2, 24>;

var<private> global2: u32;

var<private> global3: vec2<u32>;

var<private> global4: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec3<bool>) -> vec2<i32> {
    global3 = vec2<u32>(~(~(u_input.b | u_input.b)), firstTrailingBit(14272u)) & select(min(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(global3.x, 130400u)), firstTrailingBit(select(~vec2<u32>(global3.x, 53092u), firstLeadingBit(vec2<u32>(u_input.c, 4294967295u)), vec2<bool>(false, true))), vec2<bool>(false & any(vec2<bool>(false, false)), arg_0.x));
    global4 = _wgslsmith_dot_vec4_i32(firstTrailingBit(select(select(vec4<i32>(-1i, -11616i, -7008i, 0i), vec4<i32>(-1i, 18390i, 32405i, -2147483647i), vec4<bool>(true, arg_0.x, false, arg_0.x)), vec4<i32>(1i, 1i, 1i, 1i), true) >> ((firstTrailingBit(vec4<u32>(36903u, 39526u, u_input.c, 4294967295u)) >> ((vec4<u32>(4294967295u, u_input.c, global3.x, 4294967295u) << (vec4<u32>(global3.x, u_input.b, global3.x, global3.x) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u))), min(firstLeadingBit(vec4<i32>(~(-26823i), -2147483647i, _wgslsmith_clamp_i32(1i, -2147483647i, -81231i), 1i)), vec4<i32>(1i, 1i, 1i, 1i)));
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, _wgslsmith_clamp_u32(u_input.a ^ ~4294967295u, select(4294967295u, 1u, false), 1u)), ~(~vec3<u32>(global3.x, 10235u, _wgslsmith_div_u32(global3.x, global3.x)))), 24u)];
    var var_1 = Struct_2(0u, var_0.b, select(!(!vec2<bool>(var_0.c.x, var_0.c.x)), vec2<bool>(true, true), vec2<bool>(!arg_0.x, any(arg_0))));
    var_1 = Struct_2(~(~(~2987u)), var_0.b, select(!select(select(vec2<bool>(false, var_1.c.x), var_1.c, vec2<bool>(false, var_0.c.x)), vec2<bool>(arg_0.x, var_0.c.x), !vec2<bool>(false, var_0.c.x)), select(vec2<bool>(var_1.c.x, !var_0.c.x), var_0.c, true), true));
    return abs(reverseBits(vec2<i32>(2147483647i, -6404i)));
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: u32) -> vec3<u32> {
    let var_0 = u_input.b;
    var var_1 = _wgslsmith_sub_vec2_i32(countOneBits(firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(0i, -27911i), vec2<i32>(26713i, -47823i))) >> (vec2<u32>(81954u, 4294967295u) % vec2<u32>(32u))), countOneBits(firstLeadingBit(func_3(arg_1)) & vec2<i32>(2147483647i, -45830i)));
    var_1 = reverseBits(func_3(arg_1));
    global0 = arg_0;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0, -722f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0, 444f))))));
    return vec3<u32>(1u, global3.x, reverseBits(_wgslsmith_sub_u32(37618u, ~arg_2)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: Struct_3) -> vec2<u32> {
    global0 = _wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(-arg_0.a));
    global3 = arg_1.yz;
    global4 = (~2147483647i << (~_wgslsmith_dot_vec2_u32(arg_1.zy << (vec2<u32>(1u, 35495u) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.x, 1u), vec2<u32>(u_input.c, arg_1.x))) % 32u)) << (~(arg_3.e ^ countOneBits(~20643u)) % 32u);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.a), -447f, false)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.a - arg_3.d.x))))));
    var var_1 = Struct_1(arg_0.a);
    return vec2<u32>(65618u, arg_3.e & _wgslsmith_clamp_u32(~1u, max(~u_input.a, 47420u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.e, u_input.b, 1u, u_input.c), vec4<u32>(arg_3.e, arg_1.x, 24684u, u_input.a))));
}

fn func_1() -> vec2<u32> {
    global0 = _wgslsmith_div_f32(752f, 1106f);
    var var_0 = 2147483647i;
    global2 = abs(_wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(19862u, u_input.c), vec2<u32>(0u, global3.x)), ~vec2<u32>(43176u, u_input.b)), vec2<u32>(u_input.c | ~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 73777u, global3.x, u_input.c), ~vec4<u32>(global3.x, 57148u, u_input.b, global3.x)))));
    global2 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(abs(4294967295u), u_input.c), min(~global3.x, 4294967295u) >> (~(~u_input.c) % 32u)), func_4(Struct_1(1f), ~func_2(-239f, vec3<bool>(false, true, false), 119373u) >> ((vec3<u32>(global3.x, 30947u, 4355u) >> ((vec3<u32>(1u, global3.x, 4799u) & vec3<u32>(9322u, global3.x, u_input.c)) % vec3<u32>(32u))) % vec3<u32>(32u)), vec4<bool>(true, true, true, true), Struct_3(-52472i, vec2<bool>(true, true), min(~vec3<i32>(-2541i, -2147483647i, 3470i), vec3<i32>(-21870i, 23955i, 1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(2063f, 915f, -636f, -894f)))), u_input.c)));
    var var_1 = select(func_4(Struct_1(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(select(169f, -456f, true)))), ~select(vec3<u32>(0u, global3.x, u_input.c), vec3<u32>(global3.x, u_input.c, 1u), vec3<bool>(true, true, false)), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false)), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true)), (14388i << (u_input.a % 32u)) >= _wgslsmith_sub_i32(9918i, 929i)), Struct_3(_wgslsmith_dot_vec2_i32(vec2<i32>(5203i, -45811i), -vec2<i32>(-1i, 17557i)), vec2<bool>(true, all(vec4<bool>(false, false, false, true))), reverseBits(reverseBits(vec3<i32>(-2147483647i, -9227i, -43542i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-131f, -782f, 1000f, 347f), vec4<f32>(-520f, -188f, 703f, -462f), false)) - vec4<f32>(507f, 734f, -951f, -117f)), _wgslsmith_dot_vec2_u32(vec2<u32>(global3.x, 38974u) | vec2<u32>(u_input.a, 4294967295u), _wgslsmith_mult_vec2_u32(vec2<u32>(7399u, 4294967295u), vec2<u32>(79539u, 1u))))).x, 67120u, all(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), false))));
    return func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f))), select(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), true), !vec3<bool>(29491u <= global3.x, true, true), true), ~(global3.x | 0u)).zy;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_mod_vec2_u32(~reverseBits(func_1()), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(select(u_input.a, 4294967295u, true), max(29859u, 4294967295u)), global3.x), ~abs(vec2<u32>(390u, 4294967295u))));
    global4 = select(firstLeadingBit(_wgslsmith_clamp_i32(~max(-2147483647i, -23385i), 2147483647i, -2147483647i)), _wgslsmith_sub_i32(-(~1i), _wgslsmith_sub_i32(1i, -8666i)), any(select(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, select(false, false, false), true, true), false)));
    global4 = -_wgslsmith_div_i32(-1i, 32745i);
    global2 = ~(~reverseBits(4294967295u));
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(2593f + 393f), 905f, -408f));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + 235f) + -625f))));
    let x = u_input.a;
    s_output = StorageBuffer(910f, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -2054f))))), -vec4<i32>(1i, 1i, 1i, 1i), firstTrailingBit(~vec2<i32>(19248i, abs(18138i))));
}

