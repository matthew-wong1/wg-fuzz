struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec3<i32>, 12> = array<vec3<i32>, 12>(vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i), vec3<i32>(1i, 2147483647i, 1i), vec3<i32>(15321i, 2088i, -28563i), vec3<i32>(1i, 0i, 14681i), vec3<i32>(2147483647i, 51320i, -1i), vec3<i32>(-1i, 0i, -39284i), vec3<i32>(-18383i, -1i, 0i), vec3<i32>(-9442i, 0i, 29896i), vec3<i32>(i32(-2147483648), 55692i, 2147483647i), vec3<i32>(11261i, i32(-2147483648), -8594i), vec3<i32>(0i, -31239i, i32(-2147483648)), vec3<i32>(-1i, -544i, 0i));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: f32) -> f32 {
    global0 = Struct_2(select(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a, u_input.a, 7u, 18422u) | vec4<u32>(32051u, 0u, 65812u, 34429u), _wgslsmith_add_vec4_u32(vec4<u32>(69511u, u_input.a, u_input.a, 3995u), vec4<u32>(0u, 126254u, 1u, u_input.a))), abs(~global0.a), 1u), min(~4294967295u, ~global0.a & global0.a), false), global0.b, -939f);
    global0 = Struct_2(global0.a, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -564f) - _wgslsmith_f_op_f32(-global0.c)), _wgslsmith_f_op_f32(1132f * -1376f), arg_2, _wgslsmith_f_op_f32(-global0.b.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.b.a.x, _wgslsmith_f_op_f32(-494f - 962f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(-global0.b.a.x)))));
    global1 = array<vec3<i32>, 12>();
    global0 = Struct_2(global0.a, global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.b.a.x * _wgslsmith_f_op_f32(-arg_2)), -249f)) + -283f));
    global1 = array<vec3<i32>, 12>();
    return _wgslsmith_f_op_f32(global0.b.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -873f))));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_3) -> u32 {
    global1 = array<vec3<i32>, 12>();
    let var_0 = vec4<i32>(arg_1, select(arg_1, -arg_1, true) | firstLeadingBit(i32(-1i) * -1i), _wgslsmith_clamp_i32(~u_input.b, ~(~arg_1), 1i), select(u_input.b ^ (i32(-1i) * -16663i), u_input.b << (~arg_0.a % 32u), all(vec4<bool>(false, true, true, true)))) | countOneBits(~reverseBits(-vec4<i32>(2147483647i, -41214i, u_input.b, u_input.b)));
    var var_1 = true;
    let var_2 = ~(~(~(u_input.a | ~1u)));
    var var_3 = 0u;
    return 4294967295u;
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_2(abs(u_input.a), global0.b, _wgslsmith_f_op_f32(round(1000f)));
    var var_1 = countOneBits(vec2<u32>(u_input.a, func_4(Struct_2(countOneBits(global0.a), Struct_1(vec4<f32>(arg_0.x, var_0.b.a.x, var_0.c, var_0.c)), _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(var_0.a, 12u)], -1i, -1202f))), abs(~u_input.b), Struct_3(Struct_2(44963u, Struct_1(global0.b.a), 1085f)))));
    var var_2 = vec2<u32>(reverseBits(_wgslsmith_mod_u32(121u, 1u)), global0.a);
    let var_3 = ~(27228u | var_2.x);
    let var_4 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(var_0.b.a - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2499f, global0.c, var_0.b.a.x, arg_0.x) + vec4<f32>(-443f, arg_0.x, -249f, global0.c))))), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1169f, _wgslsmith_f_op_f32(-var_0.c), global0.c, _wgslsmith_f_op_f32(f32(-1f) * -1413f))))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(429f, global0.b.a.x, 131f, var_0.c)), _wgslsmith_div_vec4_f32(global0.b.a, _wgslsmith_f_op_vec4_f32(var_0.b.a - var_4.b.a))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(var_4.b.a + _wgslsmith_f_op_vec4_f32(ceil(var_4.b.a)))))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    let var_0 = !select(vec3<bool>(arg_3, any(vec3<bool>(true, false, true)), true), !select(vec3<bool>(true, arg_3, true), vec3<bool>(arg_3, arg_3, false), any(vec2<bool>(false, false))), arg_3);
    global1 = array<vec3<i32>, 12>();
    let var_1 = vec4<i32>(~u_input.b, u_input.b, _wgslsmith_clamp_i32(-max(~u_input.b, u_input.b), u_input.b, -2147483647i), u_input.b);
    let var_2 = Struct_3(Struct_2(~_wgslsmith_div_u32(global0.a, 1u), arg_0.a, -2068f));
    global1 = array<vec3<i32>, 12>();
    return var_2.a;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2) -> Struct_2 {
    let var_0 = ~vec2<u32>(4837u, 32771u);
    var var_1 = vec3<u32>(~60015u, global0.a & 1u, ~global0.a);
    return func_5(arg_0, func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.a.a.zw, global0.b.a.xw)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.a.x, 1002f, arg_0.a.a.x, -139f)))), true);
}

fn func_6(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: vec3<i32>) -> vec4<u32> {
    var var_0 = firstLeadingBit(~(~vec4<u32>(u_input.a, 71938u, arg_1.a, 49627u)) | abs(~vec4<u32>(arg_1.a, u_input.a, arg_1.a, arg_1.a))) >> (abs(reverseBits(max(~vec4<u32>(0u, global0.a, 1u, 4294967295u), vec4<u32>(1u, 0u, 23652u, 70443u)))) % vec4<u32>(32u));
    let var_1 = false;
    let var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.b.a.x)) + arg_1.b.a.x)), arg_0.a.a.x, _wgslsmith_f_op_f32(-arg_0.b.a.x), -873f));
    var var_3 = var_2;
    global1 = array<vec3<i32>, 12>();
    return firstTrailingBit(~(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 53577u, 0u, 0u) << (vec4<u32>(0u, global0.a, global0.a, var_0.x) % vec4<u32>(32u)), min(vec4<u32>(var_0.x, 43727u, u_input.a, global0.a), vec4<u32>(1u, 22054u, 54533u, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(20429u, global0.a, global0.a, 0u), vec4<u32>(28762u, global0.a, u_input.a, var_0.x))) ^ select(min(vec4<u32>(arg_1.a, 0u, 4294967295u, 68134u), vec4<u32>(27049u, 4294967295u, 0u, 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(101146u, var_0.x, global0.a, 4294967295u), vec4<u32>(1u, 4294967295u, 80161u, u_input.a)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(vec4<u32>(_wgslsmith_mod_u32(1u, ~u_input.a), global0.a, _wgslsmith_sub_u32(u_input.a ^ u_input.a, global0.a ^ global0.a), ~select(global0.a, 4294967295u, true))) & min(~func_6(Struct_4(global0.b, Struct_1(global0.b.a)), func_1(Struct_4(global0.b, Struct_1(vec4<f32>(1000f, -360f, -836f, 650f))), Struct_2(1u, global0.b, -157f)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), ~global1[_wgslsmith_index_u32(4294967295u, 12u)]), _wgslsmith_sub_vec4_u32(~vec4<u32>(21697u, 64354u, u_input.a, u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(30632u, global0.a, u_input.a, global0.a), vec4<u32>(7009u, 34395u, 47251u, 1u)) & _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 14622u, u_input.a, u_input.a), vec4<u32>(0u, u_input.a, global0.a, global0.a))));
    global0 = func_5(Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, 678f, -1038f, global0.b.a.x)))), func_2(_wgslsmith_f_op_vec2_f32(round(global0.b.a.zy)))), func_1(Struct_4(func_1(Struct_4(global0.b, Struct_1(global0.b.a)), Struct_2(1u, global0.b, -1000f)).b, Struct_1(_wgslsmith_f_op_vec4_f32(round(global0.b.a)))), Struct_2(_wgslsmith_dot_vec3_u32(var_0.xyy, reverseBits(vec3<u32>(global0.a, 30177u, 58055u))), func_5(Struct_4(global0.b, Struct_1(global0.b.a)), Struct_1(global0.b.a), Struct_1(vec4<f32>(global0.c, -899f, global0.b.a.x, global0.c)), true).b, global0.c)).b, global0.b, !(true | (~u_input.b <= _wgslsmith_mod_i32(-51428i, 7197i))));
    var var_1 = _wgslsmith_mult_vec3_i32(global1[_wgslsmith_index_u32(func_1(Struct_4(func_1(Struct_4(Struct_1(global0.b.a), Struct_1(global0.b.a)), Struct_2(0u, Struct_1(vec4<f32>(global0.b.a.x, -603f, global0.b.a.x, global0.b.a.x)), global0.b.a.x)).b, Struct_1(vec4<f32>(global0.b.a.x, 1155f, 325f, 807f))), Struct_2(var_0.x, func_5(Struct_4(global0.b, Struct_1(global0.b.a)), Struct_1(vec4<f32>(global0.b.a.x, global0.b.a.x, -143f, global0.c)), global0.b, true).b, _wgslsmith_f_op_f32(-global0.b.a.x))).a, 12u)], vec3<i32>(_wgslsmith_sub_i32(-30789i, -45518i), (-2147483647i & u_input.b) << ((global0.a << (var_0.x % 32u)) % 32u), _wgslsmith_div_i32(firstLeadingBit(2147483647i), i32(-1i) * -1i))) << (abs(_wgslsmith_mod_vec3_u32(reverseBits(~var_0.zzw), vec3<u32>(var_0.x & u_input.a, 54833u, max(33702u, global0.a)))) % vec3<u32>(32u));
    var var_2 = 1i;
    var var_3 = global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(~(-37949i), ~(~var_1.x)), _wgslsmith_add_u32(1u, ~func_5(Struct_4(Struct_1(global0.b.a), global0.b), Struct_1(vec4<f32>(global0.b.a.x, -535f, var_3.a.x, global0.c)), Struct_1(global0.b.a), true).a));
}

