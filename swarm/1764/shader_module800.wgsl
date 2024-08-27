struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec3<f32>(967f, -137f, 860f)), Struct_1(vec3<f32>(-269f, -850f, 367f)), Struct_1(vec3<f32>(744f, -177f, 1000f)), Struct_1(vec3<f32>(-603f, -470f, -678f)), Struct_1(vec3<f32>(-2514f, 1005f, 3939f)), Struct_1(vec3<f32>(624f, 816f, -142f)), Struct_1(vec3<f32>(145f, -639f, -1085f)), Struct_1(vec3<f32>(-134f, 876f, -612f)), Struct_1(vec3<f32>(-247f, -632f, 513f)), Struct_1(vec3<f32>(-290f, -1682f, 635f)), Struct_1(vec3<f32>(236f, -678f, -549f)), Struct_1(vec3<f32>(481f, -452f, 466f)), Struct_1(vec3<f32>(-238f, -577f, 1000f)));

var<private> global2: array<bool, 19>;

var<private> global3: array<vec2<bool>, 11>;

var<private> global4: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: bool) -> f32 {
    global3 = array<vec2<bool>, 11>();
    let var_0 = !arg_2;
    let var_1 = global0.x;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(arg_1.a)))));
    var var_3 = global1[_wgslsmith_index_u32(1u, 13u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1219f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-933f * _wgslsmith_f_op_f32(round(335f))))) - 1354f);
}

fn func_2(arg_0: f32) -> f32 {
    var var_0 = Struct_1(global4.a);
    var var_1 = global2[_wgslsmith_index_u32(~countOneBits(_wgslsmith_sub_u32(u_input.a.x, ~min(104140u, 9750u))), 19u)];
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<f32>(-1000f, -1083f, -430f), Struct_1(global4.a), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(~vec3<u32>(61266u, u_input.a.x, u_input.a.x), select(vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec3<u32>(1u, 31137u, u_input.a.x), vec3<bool>(false, global2[_wgslsmith_index_u32(50875u, 19u)], global2[_wgslsmith_index_u32(u_input.a.x, 19u)])), global2[_wgslsmith_index_u32(~u_input.a.x, 19u)]), vec3<u32>(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x), ~15278u, _wgslsmith_mod_u32(2948u, u_input.a.x))), 19u)])) - -299f);
    let var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, countOneBits(i32(-1i) * -2147483647i), min(0i, _wgslsmith_mod_i32(0i & global0.x, 36594i)), _wgslsmith_dot_vec2_i32(~(vec2<i32>(-13170i, -6300i) >> (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u))), vec2<i32>(64787i, select(2147483647i, global0.x, true)))), ~countOneBits(vec4<i32>(global0.x, global0.x, global0.x, global0.x) >> (vec4<u32>(u_input.a.x, 33618u, u_input.a.x, 0u) % vec4<u32>(32u))) | ~(-vec4<i32>(40735i, -1i, global0.x, global0.x)));
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-325f, -305f, global4.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1008f, -1066f, 264f))))))));
    return 1000f;
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: bool, arg_3: f32) -> vec3<u32> {
    global0 = select(vec2<i32>(~global0.x, abs(global0.x)), _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32((vec2<i32>(global0.x, global0.x) ^ vec2<i32>(-984i, global0.x)) << (vec2<u32>(u_input.a.x, 4294967295u) % vec2<u32>(32u)), min(~vec2<i32>(1i, global0.x), vec2<i32>(-20055i, -43827i) & vec2<i32>(0i, global0.x))), -vec2<i32>(-17628i, -global0.x)), !any(vec2<bool>(true, all(global3[_wgslsmith_index_u32(0u, 11u)]))));
    var var_0 = -abs(-(i32(-1i) * -2648i));
    var var_1 = global1[_wgslsmith_index_u32(~(~arg_0.x & _wgslsmith_mod_u32(_wgslsmith_add_u32(select(arg_0.x, 13761u, arg_2), 1u), 7236u)), 13u)];
    var var_2 = global1[_wgslsmith_index_u32(77071u, 13u)];
    let var_3 = any(vec2<bool>(false, 2147483647i >= _wgslsmith_sub_i32(global0.x, _wgslsmith_mod_i32(8989i, global0.x))));
    return ~max(_wgslsmith_clamp_vec3_u32(~vec3<u32>(38703u, 0u, arg_0.x), ~arg_0, arg_0) >> (vec3<u32>(~0u, abs(1u), 1u) % vec3<u32>(32u)), vec3<u32>(min(1u, 10615u), ~(~61242u), ~(~0u)));
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), 13u)];
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4.a)))));
    var var_2 = _wgslsmith_add_vec3_u32(vec3<u32>(countOneBits(~(~u_input.a.x)), min(u_input.a.x, 1u), ~1906u), func_4(vec3<u32>(0u, 0u, ~(~u_input.a.x)), global4.a.x, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-1324f + -1195f))))));
    global3 = array<vec2<bool>, 11>();
    let var_3 = select(reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(reverseBits(-1i), _wgslsmith_div_i32(global0.x, 1i), i32(-1i) * -19498i), vec3<i32>(21346i, global0.x, global0.x))), vec3<i32>(global0.x, -(~(i32(-1i) * -2147483647i)), _wgslsmith_add_i32(abs(global0.x & global0.x), global0.x >> ((var_2.x & u_input.a.x) % 32u))), vec3<bool>(u_input.a.x == 1u, arg_0, global2[_wgslsmith_index_u32(~0u, 19u)]));
    return Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a), _wgslsmith_div_vec3_f32(vec3<f32>(global4.a.x, 767f, var_0.a.x), var_0.a))))));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = reverseBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(84688u, ~u_input.a.x), ~_wgslsmith_sub_vec2_u32(~u_input.a, u_input.a & vec2<u32>(17124u, u_input.a.x))));
    global1 = array<Struct_1, 13>();
    var var_1 = global1[_wgslsmith_index_u32(u_input.a.x, 13u)];
    var var_2 = arg_1;
    var var_3 = arg_1;
    return func_1(arg_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(!(-global0.x != 7219i), false, !(!(-994f <= global4.a.x)), true);
    global3 = array<vec2<bool>, 11>();
    global2 = array<bool, 19>();
    let var_1 = func_5(true, Struct_1(global4.a), func_1(!((true | global2[_wgslsmith_index_u32(u_input.a.x, 19u)]) & global2[_wgslsmith_index_u32(u_input.a.x, 19u)])), select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 19u)], true), vec2<bool>(!(global4.a.x > global4.a.x), true), !any(var_0.wxz) && !any(vec4<bool>(var_0.x, var_0.x, true, true))));
    let var_2 = firstLeadingBit(firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(global0.x, 0i, -40677i) >> (vec3<u32>(u_input.a.x, 0u, u_input.a.x) % vec3<u32>(32u)), select(~vec3<i32>(global0.x, global0.x, 15547i), abs(vec3<i32>(-2147483647i, 19511i, 21465i)), select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, false, false), var_0.yww)))));
    var var_3 = global1[_wgslsmith_index_u32(firstTrailingBit(~(~_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a.x, 4294967295u), _wgslsmith_clamp_u32(74995u, 36610u, 465u)))), 13u)];
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x, var_2.xx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-269f, 645f)), _wgslsmith_dot_vec2_i32(-var_2.yy, var_2.xz));
}

