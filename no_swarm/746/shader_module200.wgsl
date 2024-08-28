struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1i, vec3<i32>(2147483647i, -1i, -17586i));

var<private> global1: i32;

var<private> global2: array<bool, 26> = array<bool, 26>(true, true, false, false, true, true, true, false, false, true, true, true, false, false, false, false, true, true, true, false, true, false, true, false, true, false);

var<private> global3: array<f32, 7> = array<f32, 7>(-704f, -1000f, 1000f, 1547f, -308f, -993f, 947f);

var<private> global4: vec2<f32> = vec2<f32>(-1164f, -433f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: vec4<u32>) -> bool {
    let var_0 = arg_0;
    global0 = Struct_1(global0.a, -_wgslsmith_add_vec3_i32(select(global0.b, select(vec3<i32>(0i, -25987i, global0.b.x), vec3<i32>(arg_1, -33543i, 33101i), global2[_wgslsmith_index_u32(62325u, 26u)]), !vec3<bool>(global2[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(33111u, 26u)], false)), abs(vec3<i32>(arg_1, 0i, 50937i) & vec3<i32>(global0.b.x, 1i, -12642i))));
    let var_1 = u_input.a.wxz;
    var var_2 = var_0;
    var var_3 = Struct_1(-258i, vec3<i32>(var_0.b.x & 1027i, ~arg_2.a, global0.a) & ((select(vec3<i32>(arg_2.a, -17704i, 4982i), vec3<i32>(arg_1, -40723i, 42664i), vec3<bool>(true, false, true)) & (vec3<i32>(arg_1, arg_1, var_0.a) << (vec3<u32>(u_input.a.x, var_1.x, 5678u) % vec3<u32>(32u)))) ^ firstLeadingBit(~var_0.b)));
    return ~select(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(arg_2.b, vec3<i32>(arg_1, var_3.a, var_2.a)), reverseBits(arg_2.b.x)), -firstLeadingBit(557i), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1.x | 177u, select(0u, arg_3.x, false)), 26u)]) >= _wgslsmith_dot_vec4_i32(abs(vec4<i32>(0i, arg_1, 0i, 2147483647i)) & vec4<i32>(_wgslsmith_div_i32(arg_2.a, -12449i), -var_2.a, ~var_0.a, firstLeadingBit(arg_0.b.x)), firstTrailingBit(~(~vec4<i32>(-14811i, var_0.b.x, var_3.a, global0.a))));
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: i32, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = global0.a;
    var var_1 = arg_3.a;
    global4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(362f, 1582f))))));
    var var_2 = arg_3;
    var_1 = _wgslsmith_sub_i32(i32(-1i) * -93690i, var_2.b.x | _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-74337i, 45115i, var_2.b.x, var_2.b.x), vec4<i32>(-1i, 0i, 0i, arg_3.a)), select(vec4<i32>(2147483647i, -1i, var_2.a, -48297i), vec4<i32>(arg_3.b.x, var_2.b.x, -57219i, global0.a), arg_0.x))) >> (u_input.a.x % 32u);
    return vec3<i32>(-reverseBits(2147483647i), firstTrailingBit(10757i), var_2.a);
}

fn func_2() -> Struct_1 {
    var var_0 = abs(_wgslsmith_dot_vec3_i32(func_4(vec4<bool>(true, func_3(Struct_1(global0.b.x, global0.b), global0.b.x, Struct_1(global0.a, global0.b), vec4<u32>(4294967295u, 19987u, 0u, 35213u)), true, global2[_wgslsmith_index_u32(abs(u_input.a.x), 26u)]), u_input.a.x, firstTrailingBit(global0.a), Struct_1(i32(-1i) * -46024i, -global0.b)), global0.b));
    let var_1 = Struct_1(~27118i | global0.a, _wgslsmith_add_vec3_i32(global0.b, global0.b & global0.b));
    let var_2 = !select(!(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 26u)], global2[_wgslsmith_index_u32(u_input.a.x, 26u)], global2[_wgslsmith_index_u32(u_input.a.x, 26u)])), vec3<bool>(any(!vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 26u)], false, global2[_wgslsmith_index_u32(4294967295u, 26u)])), any(select(vec2<bool>(global2[_wgslsmith_index_u32(0u, 26u)], false), vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 26u)]), vec2<bool>(false, false))), true), var_1.a < max(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a, -2147483647i, 1i), vec3<i32>(var_1.b.x, var_1.b.x, global0.a))));
    let var_3 = var_1.a;
    global0 = Struct_1(max(-_wgslsmith_div_i32(~(-1i), -46004i), global0.b.x), var_1.b | select(~var_1.b & vec3<i32>(-2147483647i, global0.a, global0.b.x), global0.b, true));
    return var_1;
}

fn func_1() -> i32 {
    global0 = func_2();
    global4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(~(~u_input.a.x), 7u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1834f) - -109f))));
    let var_0 = vec4<bool>(func_3(Struct_1(max(-global0.a, _wgslsmith_dot_vec3_i32(global0.b, global0.b)), firstLeadingBit(global0.b)), max(abs(_wgslsmith_add_i32(global0.a, -1i)), global0.b.x), func_2(), u_input.a), !all(!(!vec2<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 26u)]))), any(select(select(select(vec3<bool>(global2[_wgslsmith_index_u32(17874u, 26u)], global2[_wgslsmith_index_u32(u_input.a.x, 26u)], global2[_wgslsmith_index_u32(u_input.a.x, 26u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(0u, 26u)]), false), vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 26u)], global2[_wgslsmith_index_u32(u_input.a.x, 26u)]), func_3(Struct_1(global0.a, global0.b), 2147483647i, Struct_1(0i, global0.b), vec4<u32>(76293u, u_input.a.x, u_input.a.x, u_input.a.x))), select(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 26u)], global2[_wgslsmith_index_u32(u_input.a.x, 26u)]), select(vec3<bool>(false, global2[_wgslsmith_index_u32(18496u, 26u)], false), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 26u)], global2[_wgslsmith_index_u32(u_input.a.x, 26u)], global2[_wgslsmith_index_u32(u_input.a.x, 26u)]), vec3<bool>(true, true, global2[_wgslsmith_index_u32(u_input.a.x, 26u)])), true), select(select(vec3<bool>(false, global2[_wgslsmith_index_u32(18167u, 26u)], global2[_wgslsmith_index_u32(41415u, 26u)]), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 26u)], global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(u_input.a.x, 26u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 26u)], true, global2[_wgslsmith_index_u32(u_input.a.x, 26u)])), select(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 26u)], true, true), vec3<bool>(true, global2[_wgslsmith_index_u32(39334u, 26u)], false), vec3<bool>(true, false, global2[_wgslsmith_index_u32(u_input.a.x, 26u)])), vec3<bool>(true, false, true)))), global0.b.x >= global0.a);
    var var_1 = abs(~u_input.a & ~vec4<u32>(~u_input.a.x, ~12269u, u_input.a.x, 5121u));
    var var_2 = func_2();
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 26>();
    let var_0 = vec4<i32>(~(~(-1i >> (u_input.a.x % 32u)) << ((~1u & min(u_input.a.x, u_input.a.x)) % 32u)), ~global0.a, firstTrailingBit(_wgslsmith_sub_i32(global0.b.x, global0.b.x & global0.a) << (~_wgslsmith_div_u32(u_input.a.x, u_input.a.x) % 32u)), -func_1());
    let var_1 = Struct_1(var_0.x, -var_0.wxy);
    let var_2 = global0.a;
    var var_3 = !(!(0u == _wgslsmith_dot_vec3_u32(vec3<u32>(48438u, 48680u, u_input.a.x), u_input.a.wyw)));
    var var_4 = vec3<bool>(false, _wgslsmith_f_op_f32(868f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(4294967295u, 7u)], global3[_wgslsmith_index_u32(1u, 7u)], global2[_wgslsmith_index_u32(u_input.a.x, 26u)])) - _wgslsmith_f_op_f32(-global4.x))) >= -2026f, any(vec4<bool>(true, !(!global2[_wgslsmith_index_u32(4294967295u, 26u)]), !all(vec2<bool>(global2[_wgslsmith_index_u32(72338u, 26u)], true)), global2[_wgslsmith_index_u32(31286u, 26u)])));
    let var_5 = func_2();
    global4 = vec2<f32>(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~reverseBits(max(80089u, 0u)), select(528u, ~1u, true)), 7u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1063f)) + _wgslsmith_f_op_f32(-global4.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1076f + global3[_wgslsmith_index_u32(4294967295u, 7u)])))));
    global0 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -835f))) * global4.x));
}

