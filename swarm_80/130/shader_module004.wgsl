struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(8765u, 3862u), vec4<f32>(1017f, -1804f, 2120f, 383f));

var<private> global1: array<i32, 20> = array<i32, 20>(0i, i32(-2147483648), 2147483647i, -83528i, 1i, -19281i, 0i, 11403i, -7363i, 2147483647i, 2147483647i, 0i, 64223i, 0i, -48544i, 1i, 2147483647i, -57376i, i32(-2147483648), 1i);

var<private> global2: Struct_1 = Struct_1(vec2<u32>(4294967295u, 4294967295u), vec4<f32>(2032f, 1000f, -831f, -235f));

var<private> global3: i32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<u32> {
    global1 = array<i32, 20>();
    global3 = abs(~reverseBits(~_wgslsmith_div_i32(32697i, 14427i)));
    var var_0 = Struct_1(~global2.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.x, -142f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(802f, -2605f)), global0.b.x)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -128f), var_0.b.x, var_0.b.x, 579f);
    let var_2 = ~vec4<u32>(~firstLeadingBit(global0.a.x), global2.a.x, select(5774u, global2.a.x, true), _wgslsmith_dot_vec4_u32(firstLeadingBit(u_input.a), u_input.a));
    return ~select(var_0.a, var_0.a, vec2<bool>(true, any(vec2<bool>(true, false))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<bool>) -> vec4<f32> {
    let var_0 = arg_0.yz;
    global0 = Struct_1(countOneBits(~func_3()), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -796f), 1282f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -130f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(396f + 500f) - -870f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global2.b.x, 1984f), global2.b.x))))));
    let var_1 = Struct_1(func_3(), global2.b);
    global2 = var_1;
    global0 = Struct_1(global0.a, vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(1897f, -517f, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -831f) - global0.b.x) + _wgslsmith_f_op_f32(step(global0.b.x, var_1.b.x)))));
    return global0.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec2<i32> {
    global0 = Struct_1(global0.a, _wgslsmith_f_op_vec4_f32(floor(arg_0.b)));
    global2 = arg_0;
    let var_0 = _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(0u, 0u), 20u)], global1[_wgslsmith_index_u32(~8655u, 20u)], -_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(global2.a.x, 20u)], global1[_wgslsmith_index_u32(1u, 20u)])), abs(~_wgslsmith_div_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(4294967295u, 20u)], -1i), vec3<i32>(global1[_wgslsmith_index_u32(133089u, 20u)], 65998i, 2147483647i)))), firstLeadingBit(abs(vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(arg_1.a.x, 20u)], 1i)) >> (firstLeadingBit(~u_input.a.ywy) % vec3<u32>(32u))));
    var var_1 = !(!all(vec4<bool>(true, true, true, true)));
    let var_2 = abs(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(abs(global2.a.x) >> (global0.a.x % 32u), _wgslsmith_dot_vec3_u32(max(u_input.a.wzz, vec3<u32>(arg_1.a.x, arg_0.a.x, arg_0.a.x)), vec3<u32>(5095u, arg_0.a.x, 51987u))), 36381u), 20u)]);
    return var_0.zz;
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = arg_0.b.x;
    var var_1 = func_4(Struct_1(~(~_wgslsmith_add_vec2_u32(vec2<u32>(global2.a.x, arg_1), arg_0.a)), arg_0.b), Struct_1(~(~vec2<u32>(arg_1, 17365u) >> (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(func_2(vec3<i32>(u_input.d << (1u % 32u), u_input.d, global1[_wgslsmith_index_u32(u_input.b.x, 20u)] & 36184i), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), false)))));
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-338f))))))));
    let var_4 = arg_0;
    return var_2;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec4<f32>(func_1(arg_0, global0.a.x).b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x)) + global0.b.x)), 1314f, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, u_input.d, global1[_wgslsmith_index_u32(0u, 20u)]), reverseBits(vec3<i32>(-1i, global1[_wgslsmith_index_u32(0u, 20u)], 31978i)), vec3<i32>(u_input.d, -11597i, u_input.d) & vec3<i32>(1i, 9653i, global1[_wgslsmith_index_u32(global0.a.x, 20u)])), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), true)))).x * arg_0.b.x));
    let var_1 = vec4<bool>(true, _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(12127u, u_input.b.x, 5400u, arg_0.a.x), vec4<u32>(global2.a.x, 66u, 53984u, 78398u)), global0.a.x), ~(~arg_0.a.x)) > select((global0.a.x | u_input.b.x) >> (~21886u % 32u), 10346u >> (_wgslsmith_dot_vec2_u32(global2.a, arg_0.a) % 32u), !any(vec3<bool>(true, true, true))), true, true);
    var var_2 = -5561i;
    var var_3 = var_0.x;
    var var_4 = arg_0;
    return func_1(arg_0, ~(~64757u));
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: i32) -> i32 {
    var var_0 = _wgslsmith_add_i32(global1[_wgslsmith_index_u32(arg_2.x, 20u)] ^ (i32(-1i) * -arg_3), countOneBits(arg_3) >> (u_input.c.x % 32u));
    return global1[_wgslsmith_index_u32(4294967295u, 20u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 20>();
    var var_0 = Struct_1(global2.a, global2.b);
    global1 = array<i32, 20>();
    global3 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~global0.a.x, var_0.a.x), 20u)];
    var var_1 = ~vec3<u32>(~1283u, 1236u, _wgslsmith_sub_u32(1696u | ~global2.a.x, 4294967295u));
    let var_2 = func_6(global2.b.x, func_5(func_1(Struct_1(global2.a >> (global0.a % vec2<u32>(32u)), global2.b), _wgslsmith_mod_u32(4294967295u, reverseBits(4294967295u)))), abs(~firstLeadingBit(~global2.a)), abs(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(~(~1u), 20u)], u_input.d)));
    let x = u_input.a;
    s_output = StorageBuffer(1i, global0.b.xw);
}

