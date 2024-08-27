struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<i32>,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10> = array<bool, 10>(true, true, true, false, true, true, true, true, true, true);

var<private> global1: array<Struct_1, 10>;

var<private> global2: array<vec2<bool>, 14> = array<vec2<bool>, 14>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true));

var<private> global3: array<Struct_2, 12>;

var<private> global4: vec4<u32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<i32>) -> vec4<u32> {
    global1 = array<Struct_1, 10>();
    var var_0 = Struct_2(abs(select(select(-vec4<i32>(arg_0.x, arg_0.x, 2147483647i, 0i), -vec4<i32>(-2147483647i, 2147483647i, -5723i, arg_0.x), any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], global0[_wgslsmith_index_u32(80337u, 10u)], global0[_wgslsmith_index_u32(u_input.a.x, 10u)], global0[_wgslsmith_index_u32(7483u, 10u)]))), select(-vec4<i32>(arg_0.x, arg_0.x, arg_0.x, -22263i), ~vec4<i32>(5766i, arg_0.x, 23765i, 42366i), select(vec4<bool>(global0[_wgslsmith_index_u32(global4.x, 10u)], global0[_wgslsmith_index_u32(u_input.a.x, 10u)], global0[_wgslsmith_index_u32(61025u, 10u)], false), vec4<bool>(global0[_wgslsmith_index_u32(global4.x, 10u)], global0[_wgslsmith_index_u32(global4.x, 10u)], global0[_wgslsmith_index_u32(36988u, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)]), global0[_wgslsmith_index_u32(u_input.a.x, 10u)])), abs(arg_0.x) >= -48632i)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(max(0u, 38518u), 1u) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(84781u, global4.x), vec2<u32>(30960u, global4.x)), ~(~vec2<u32>(0u, 74476u))), 10u)], Struct_1(global2[_wgslsmith_index_u32(66734u, 14u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -986f)), vec3<i32>(-22174i, arg_0.x, _wgslsmith_add_i32(arg_0.x | arg_0.x, 2147483647i)), select(select(vec2<bool>(false, global0[_wgslsmith_index_u32(50600u, 10u)]), select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 10u)]), vec2<bool>(global0[_wgslsmith_index_u32(global4.x, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)]), false), true), !global2[_wgslsmith_index_u32(global4.x ^ 0u, 14u)], global2[_wgslsmith_index_u32(u_input.a.x, 14u)]), -31813i));
    let var_1 = _wgslsmith_add_vec4_i32(~vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), vec2<i32>(-30345i, arg_0.x)), -vec2<i32>(-24055i, var_0.b.c.x)), -firstLeadingBit(-2147483647i), var_0.a.x, ~8019i), vec4<i32>(-1i) * -(var_0.a >> (reverseBits(vec4<u32>(31715u, u_input.a.x, global4.x, 50146u)) % vec4<u32>(32u))));
    let var_2 = global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec2_u32(select(~(~vec2<u32>(u_input.a.x, global4.x)), u_input.a.xx, !(!global2[_wgslsmith_index_u32(u_input.a.x, 14u)])), global4.zw)), 10u)];
    let var_3 = var_0.c.e;
    return vec4<u32>(58426u, ~u_input.a.x, ~global4.x, _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, global4.x)) | 0u);
}

fn func_2(arg_0: vec2<u32>) -> bool {
    var var_0 = -3076i;
    global4 = func_3((select(-vec2<i32>(-7757i, 1i), _wgslsmith_div_vec2_i32(vec2<i32>(23473i, -16545i), vec2<i32>(-23473i, 1i)), true) | ~abs(vec2<i32>(-12223i, -2147483647i))) >> (vec2<u32>(23753u, global4.x) % vec2<u32>(32u)));
    let var_1 = global3[_wgslsmith_index_u32(1u, 12u)];
    global3 = array<Struct_2, 12>();
    var_0 = var_1.a.x;
    return _wgslsmith_add_u32(u_input.a.x, max(abs(_wgslsmith_clamp_u32(46412u, 69578u, global4.x)), _wgslsmith_mult_u32(14676u, 1u))) == 486u;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec4<bool>) -> vec3<bool> {
    let var_0 = Struct_1(!vec2<bool>(!(arg_2.x || arg_2.x), all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], arg_0.a.x, arg_0.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 10u)])) || false), -1960f, vec3<i32>(reverseBits(countOneBits(arg_0.c.x) >> ((global4.x >> (u_input.a.x % 32u)) % 32u)), abs(2147483647i), 18671i), !(!vec2<bool>(arg_0.a.x, func_2(u_input.a.zx))), 0i);
    global2 = array<vec2<bool>, 14>();
    var var_1 = vec4<u32>(~_wgslsmith_sub_u32(u_input.a.x, global4.x), u_input.a.x, max(abs(~28440u), 1u), ~global4.x ^ ~u_input.a.x);
    let var_2 = ~(~vec4<u32>(_wgslsmith_mod_u32(global4.x, var_1.x), _wgslsmith_div_u32(global4.x, 67778u), 1u, abs(~var_1.x)));
    global1 = array<Struct_1, 10>();
    return vec3<bool>(arg_0.a.x, false, !all(vec4<bool>(arg_2.x, arg_1, all(vec4<bool>(true, true, false, true)), !arg_0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 12>();
    let var_0 = !(!func_1(Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], global0[_wgslsmith_index_u32(u_input.a.x, 10u)]), _wgslsmith_f_op_f32(round(-634f)), vec3<i32>(-6461i, -1i, 3660i), select(vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 10u)]), vec2<bool>(global0[_wgslsmith_index_u32(global4.x, 10u)], false), global0[_wgslsmith_index_u32(0u, 10u)]), ~4462i), all(select(global2[_wgslsmith_index_u32(48807u, 14u)], global2[_wgslsmith_index_u32(global4.x, 14u)], global2[_wgslsmith_index_u32(19003u, 14u)])), vec4<bool>(!global0[_wgslsmith_index_u32(1u, 10u)], false, !global0[_wgslsmith_index_u32(28627u, 10u)], false | global0[_wgslsmith_index_u32(global4.x, 10u)])));
    var var_1 = Struct_1(var_0.yx, -836f, vec3<i32>(-1i) * -select(-vec3<i32>(-20411i, 1i, 61747i), select(vec3<i32>(-24217i, 2147483647i, -1i), vec3<i32>(16984i, 2147483647i, -35756i), var_0), select(var_0.x, global0[_wgslsmith_index_u32(u_input.a.x, 10u)], false)), select(vec2<bool>(true, select(var_0.x, !var_0.x, !var_0.x)), select(vec2<bool>(select(true, var_0.x, global0[_wgslsmith_index_u32(u_input.a.x, 10u)]), global0[_wgslsmith_index_u32(global4.x, 10u)] && global0[_wgslsmith_index_u32(1u, 10u)]), !(!global2[_wgslsmith_index_u32(global4.x, 14u)]), global0[_wgslsmith_index_u32(u_input.a.x, 10u)]), global2[_wgslsmith_index_u32(42743u, 14u)]), firstTrailingBit(max(~2147483647i, ~8932i) >> (abs(abs(global4.x)) % 32u)));
    let var_2 = global0[_wgslsmith_index_u32(1u, 10u)];
    global4 = countOneBits(_wgslsmith_div_vec4_u32(~select(vec4<u32>(global4.x, u_input.a.x, 1u, 4967u), vec4<u32>(u_input.a.x, 0u, 4294967295u, u_input.a.x), true), func_3(vec2<i32>(var_1.e, -1i))) << (vec4<u32>(u_input.a.x, _wgslsmith_sub_u32(~global4.x, _wgslsmith_dot_vec3_u32(global4.yyz, global4.wyz)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.a.x, u_input.a.x) & vec4<u32>(1u, 4294967295u, 1u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u)), u_input.a.x) % vec4<u32>(32u)));
    var var_3 = global1[_wgslsmith_index_u32(~(~(~u_input.a.x)), 10u)];
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(select(_wgslsmith_add_u32(u_input.a.x, min(global4.x, u_input.a.x)), 4294967295u, false)), ~((vec4<u32>(23233u, u_input.a.x, global4.x, 0u) | vec4<u32>(global4.x, global4.x, 4294967295u, u_input.a.x)) | (vec4<u32>(global4.x, global4.x, u_input.a.x, 31725u) & vec4<u32>(0u, 0u, 53786u, global4.x))) ^ abs(abs(~vec4<u32>(0u, 2546u, u_input.a.x, u_input.a.x))));
}

