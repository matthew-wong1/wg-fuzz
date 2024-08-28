struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(33264u), Struct_1(1u), Struct_1(40838u), Struct_1(13417u), Struct_1(11770u), Struct_1(0u), Struct_1(7350u), Struct_1(110386u), Struct_1(32147u), Struct_1(4294967295u), Struct_1(1653u), Struct_1(72159u));

var<private> global1: array<vec4<f32>, 26> = array<vec4<f32>, 26>(vec4<f32>(-1109f, 311f, 798f, -290f), vec4<f32>(-444f, -1077f, -1038f, -432f), vec4<f32>(-2519f, 473f, 331f, 1108f), vec4<f32>(2439f, 105f, 272f, 1685f), vec4<f32>(542f, 1288f, -357f, -1714f), vec4<f32>(-590f, -839f, -1921f, 302f), vec4<f32>(1951f, 808f, 858f, -531f), vec4<f32>(1000f, -348f, 2996f, 1000f), vec4<f32>(132f, -417f, 806f, 765f), vec4<f32>(430f, -1410f, 1000f, -965f), vec4<f32>(-421f, 971f, -480f, 1000f), vec4<f32>(-137f, 846f, 1000f, 2130f), vec4<f32>(-254f, -1000f, 1083f, -1868f), vec4<f32>(1558f, 419f, -729f, -776f), vec4<f32>(1461f, -1030f, -187f, -488f), vec4<f32>(958f, -431f, 441f, 1085f), vec4<f32>(854f, -329f, 311f, -246f), vec4<f32>(-480f, 349f, -2752f, 1000f), vec4<f32>(1000f, -1000f, 307f, -576f), vec4<f32>(-848f, 630f, -338f, 189f), vec4<f32>(-263f, -168f, -866f, -1448f), vec4<f32>(349f, -1165f, -271f, 1000f), vec4<f32>(637f, -106f, -1523f, 798f), vec4<f32>(279f, -501f, 251f, -949f), vec4<f32>(-1000f, 541f, -713f, -447f), vec4<f32>(-2008f, 1000f, -289f, -1214f));

var<private> global2: vec4<u32> = vec4<u32>(9816u, 1811u, 1u, 1u);

var<private> global3: array<i32, 7>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: u32) -> vec2<f32> {
    global3 = array<i32, 7>();
    let var_0 = global1[_wgslsmith_index_u32(arg_1, 26u)];
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    global1 = array<vec4<f32>, 26>();
    var var_2 = global0[_wgslsmith_index_u32(~(~4294967295u), 12u)];
    return var_0.zz;
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(global2.x, 12u)];
    global1 = array<vec4<f32>, 26>();
    let var_1 = global0[_wgslsmith_index_u32(global2.x, 12u)];
    var var_2 = false;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(countOneBits(0u), 77068u | global2.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-218f))) - _wgslsmith_f_op_f32(-var_3.x)) + _wgslsmith_f_op_vec2_f32(func_3(global2.x, firstTrailingBit(_wgslsmith_add_u32(0u, var_1.a)) & _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, global2.x, 10350u), ~vec4<u32>(var_1.a, global2.x, var_1.a, 0u)))).x);
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-388f + _wgslsmith_f_op_f32(func_2(-962f))), _wgslsmith_f_op_f32(min(1978f, -1130f)));
    let var_1 = vec2<bool>(true, false);
    let var_2 = select(vec4<bool>(all(!select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(var_1.x, var_1.x, false))), ~1i < _wgslsmith_mod_i32(u_input.a, _wgslsmith_mult_i32(54362i, global3[_wgslsmith_index_u32(38227u, 7u)])), select(true, all(var_1), !(!var_1.x)), !var_1.x), vec4<bool>(true, !all(!vec2<bool>(true, var_1.x)), !(!any(vec3<bool>(true, false, false))), !(var_1.x || all(vec4<bool>(var_1.x, var_1.x, false, false)))), true);
    var var_3 = vec4<bool>((max(-209i << (global2.x % 32u), u_input.a >> (3854u % 32u)) == firstLeadingBit(-1i)) | var_1.x, var_2.x, firstLeadingBit(global2.x) == global2.x, 2147483647i < (_wgslsmith_add_i32(-21345i, -1i) | global3[_wgslsmith_index_u32(countOneBits(global2.x | global2.x), 7u)]));
    var var_4 = global0[_wgslsmith_index_u32(108365u, 12u)];
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(abs(vec2<u32>(_wgslsmith_mod_u32(global2.x, 7149u), reverseBits(1u))), global2.xx, var_3.zx), ~_wgslsmith_div_vec2_u32(vec2<u32>(firstLeadingBit(29097u), global2.x), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 5470u), vec2<u32>(1u, global2.x)))), 12u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: f32, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-738f - arg_2), _wgslsmith_div_f32(-2180f, arg_2)), 1065f);
    let var_1 = func_1();
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(max(abs(firstLeadingBit(vec3<u32>(13972u, global2.x, 23294u))), vec3<u32>(0u, _wgslsmith_add_u32(global2.x, _wgslsmith_add_u32(global2.x, 0u)), 4294967295u)), vec3<u32>(global2.x, 19094u, arg_3.a)), 12u)];
    global2 = min(vec4<u32>(47465u, arg_0.a, 4294967295u, (arg_0.a & arg_3.a) & var_2.a) >> (~countOneBits(~vec4<u32>(17614u, global2.x, arg_0.a, global2.x)) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(var_2.a, 1u), 41873u), 0u << (_wgslsmith_sub_u32(global2.x, var_2.a) % 32u), max(~arg_3.a, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a, global2.x, 0u), global2.yww)), firstLeadingBit(55849u)), ~(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.a, 11187u, var_2.a, arg_3.a), vec4<u32>(1u, 37904u, global2.x, arg_3.a)) << (min(vec4<u32>(var_2.a, arg_3.a, 4294967295u, arg_0.a), vec4<u32>(1u, 0u, 4294967295u, arg_0.a)) % vec4<u32>(32u)))));
    let var_3 = Struct_1(~16598u);
    return _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_dot_vec3_u32(~select(vec3<u32>(global2.x, var_2.a, arg_0.a), global2.yyw & vec3<u32>(var_2.a, var_3.a, 21374u), any(vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x))), vec3<u32>(1u, ~_wgslsmith_mult_u32(0u, 2980u), ~min(1u, 11884u))), var_3.a)).x;
}

fn func_5(arg_0: f32, arg_1: u32) -> vec3<bool> {
    let var_0 = func_1();
    return !select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, false));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~vec4<u32>(_wgslsmith_div_u32(global2.x, global2.x), ~17113u, ~abs(global2.x), global2.x);
    var var_0 = ~(~vec4<u32>(~4294967295u, countOneBits(global2.x), _wgslsmith_div_u32(global2.x, 1u), max(0u, 28985u))) ^ ~vec4<u32>(1u, ~global2.x | ~global2.x, global2.x, ~(~global2.x));
    global1 = array<vec4<f32>, 26>();
    let var_1 = Struct_1(26267u);
    global1 = array<vec4<f32>, 26>();
    let var_2 = _wgslsmith_mod_u32(global2.x, 34539u);
    let var_3 = Struct_1(_wgslsmith_sub_u32(global2.x, ~var_0.x >> (~_wgslsmith_dot_vec3_u32(var_0.zwy, vec3<u32>(1u, var_0.x, 0u)) % 32u)));
    let var_4 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_1(), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), -362f, func_1())) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec2_f32(func_3(var_3.a, global2.x)).x)))), var_3.a);
    var var_5 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, ~_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(var_0.xxx, vec3<u32>(72142u, 0u, 42950u)), var_5.a), ~countOneBits(var_2)));
}

