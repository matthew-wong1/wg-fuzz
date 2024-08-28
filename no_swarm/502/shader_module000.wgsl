struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<u32>(4294967295u, 4294967295u, 49010u, 40426u), vec4<f32>(577f, -142f, 450f, 387f));

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec3<u32>(1u, 51292u, 41085u), vec3<i32>(0i, 1i, 1i)), Struct_1(vec3<u32>(1593u, 132307u, 4294967295u), vec3<i32>(21861i, 8281i, -40714i)), Struct_1(vec3<u32>(1u, 37574u, 0u), vec3<i32>(0i, 53072i, 0i)), Struct_1(vec3<u32>(4294967295u, 2486u, 35874u), vec3<i32>(-47306i, 7771i, i32(-2147483648))), Struct_1(vec3<u32>(1u, 498u, 0u), vec3<i32>(i32(-2147483648), -1329i, 29584i)), Struct_1(vec3<u32>(4294967295u, 0u, 1u), vec3<i32>(-6686i, -1i, 44869i)), Struct_1(vec3<u32>(0u, 0u, 4294967295u), vec3<i32>(1i, 0i, -1i)), Struct_1(vec3<u32>(26018u, 27975u, 0u), vec3<i32>(0i, i32(-2147483648), i32(-2147483648))), Struct_1(vec3<u32>(14513u, 2670u, 1u), vec3<i32>(i32(-2147483648), i32(-2147483648), 0i)), Struct_1(vec3<u32>(27105u, 64123u, 4294967295u), vec3<i32>(0i, 2147483647i, 21466i)), Struct_1(vec3<u32>(55069u, 34662u, 93153u), vec3<i32>(10723i, -6810i, i32(-2147483648))), Struct_1(vec3<u32>(48238u, 9698u, 4294967295u), vec3<i32>(2147483647i, -4585i, -1i)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32) -> vec4<bool> {
    let var_0 = Struct_2(any(!(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false))));
    global0 = Struct_3(vec4<u32>(global0.a.x, _wgslsmith_dot_vec3_u32(global0.a.wyz, ~(~vec3<u32>(u_input.a.x, global0.a.x, u_input.b))), ~global0.a.x, 1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global0.b))) - _wgslsmith_f_op_vec4_f32(-global0.b)) - global0.b));
    var var_1 = 31617i;
    global0 = Struct_3(vec4<u32>(17229u, select(4294967295u, reverseBits(~global0.a.x), var_0.a), 4294967295u, _wgslsmith_dot_vec4_u32(min(global0.a, global0.a), global0.a) & 86827u), vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(499f, global0.b.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-734f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-571f, _wgslsmith_div_f32(-320f, 279f)) - -1716f)));
    var var_2 = Struct_4(Struct_2(true));
    return vec4<bool>(global0.a.x >= u_input.a.x, all(select(select(vec2<bool>(false, var_2.a.a), vec2<bool>(var_2.a.a, var_2.a.a), true), !select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(true, var_0.a), var_0.a), !(var_0.a | var_2.a.a))), false, var_0.a);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(true | (false & all(func_3(vec3<f32>(320f, global0.b.x, global0.b.x), 2665f))));
    var var_1 = global0.a.x;
    let var_2 = global1[_wgslsmith_index_u32(abs(1u), 12u)];
    let var_3 = _wgslsmith_mult_u32(25521u, 0u);
    return Struct_1(firstLeadingBit(~(~vec3<u32>(23357u, u_input.b, var_3))) >> (reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.a.x, global0.a.x, 4294967295u), vec3<u32>(0u, 17126u, 4294967295u), firstLeadingBit(global0.a.wyz))) % vec3<u32>(32u)), var_2.b);
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_1, arg_3: u32) -> i32 {
    var var_0 = -20109i;
    let var_1 = func_2();
    var var_2 = 590u;
    let var_3 = max(firstTrailingBit(global0.a.wx | var_1.a.xx), max(~select(vec2<u32>(arg_1.a.x, arg_2.a.x), arg_1.a.zw, select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))), global0.a.ww));
    var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_2.b.x, var_1.b.x | _wgslsmith_div_i32(arg_2.b.x, var_1.b.x)) << (~vec3<u32>(func_2().a.x, var_1.a.x, 1u << (global0.a.x % 32u)) % vec3<u32>(32u)), var_1.b & vec3<i32>(~max(1i, -19527i), -6783i, arg_2.b.x));
    return -var_1.b.x;
}

fn func_1(arg_0: vec4<u32>) -> Struct_3 {
    global1 = array<Struct_1, 12>();
    let var_0 = ~(~vec4<i32>(0i, -2147483647i, func_4(-1151f, Struct_3(vec4<u32>(29282u, 37688u, global0.a.x, arg_0.x), global0.b), func_2(), ~global0.a.x), 0i));
    let var_1 = -37679i >> (_wgslsmith_dot_vec4_u32(global0.a, global0.a) % 32u);
    let var_2 = vec3<u32>(~_wgslsmith_mod_u32(0u, _wgslsmith_sub_u32(~u_input.b, u_input.a.x)), ~_wgslsmith_mod_u32(u_input.a.x, ~(~global0.a.x)), u_input.a.x);
    let var_3 = Struct_2(!(var_0.x < _wgslsmith_mod_i32(_wgslsmith_mod_i32(var_0.x, 6335i), -1i)));
    return Struct_3(countOneBits(vec4<u32>(~global0.a.x & arg_0.x, min(~1u, ~36541u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0.x, 4294967295u, var_2.x), select(arg_0, global0.a, vec4<bool>(var_3.a, var_3.a, var_3.a, var_3.a))), countOneBits(arg_0.x | 91613u))), global0.b);
}

fn func_5(arg_0: Struct_3, arg_1: i32) -> Struct_3 {
    global0 = Struct_3(abs(~firstTrailingBit(abs(global0.a))), _wgslsmith_f_op_vec4_f32(round(arg_0.b)));
    let var_0 = Struct_2(false);
    global0 = Struct_3(global0.a, vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x + 243f) + -432f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-217f, -1110f, var_0.a)))), _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(floor(arg_0.b.x))));
    return func_1(global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 12>();
    let var_0 = func_5(func_1(global0.a), 2147483647i);
    let var_1 = func_1(global0.a);
    let var_2 = ~(1231i >> (_wgslsmith_mult_u32(global0.a.x, _wgslsmith_sub_u32(abs(0u), var_0.a.x)) % 32u));
    var var_3 = vec4<f32>(988f, -776f, var_0.b.x, _wgslsmith_f_op_f32(-var_0.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(_wgslsmith_div_vec4_u32(~global0.a, var_1.a)).a.yzz);
}

