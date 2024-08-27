struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<vec2<f32>, 8> = array<vec2<f32>, 8>(vec2<f32>(1024f, 1288f), vec2<f32>(-1800f, -763f), vec2<f32>(-2256f, -159f), vec2<f32>(733f, 1508f), vec2<f32>(-931f, 555f), vec2<f32>(713f, 1423f), vec2<f32>(1182f, 2010f), vec2<f32>(1691f, -166f));

var<private> global2: array<bool, 20>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: f32) -> vec3<u32> {
    let var_0 = arg_2;
    global1 = array<vec2<f32>, 8>();
    let var_1 = arg_2.b;
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(global0.x, 990f)) + global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(836f - _wgslsmith_f_op_f32(select(global0.x, global0.x, true))))));
    global2 = array<bool, 20>();
    return firstTrailingBit(var_0.b.a.yxw);
}

fn func_3(arg_0: Struct_3) -> u32 {
    var var_0 = Struct_2(max(arg_0.b.a, firstLeadingBit(reverseBits(arg_0.b.a))), -29722i);
    let var_1 = 3607i;
    let var_2 = countOneBits(vec3<i32>(_wgslsmith_dot_vec3_i32(-(vec3<i32>(var_0.b, 2147483647i, u_input.c) & vec3<i32>(-2147483647i, u_input.c, 0i)), abs(min(vec3<i32>(-37190i, 5028i, var_1), vec3<i32>(-1i, arg_0.a, -14826i)))), _wgslsmith_sub_i32(var_0.b, countOneBits(~arg_0.a)), 938i));
    global1 = array<vec2<f32>, 8>();
    var var_3 = arg_0.b;
    return func_1(vec4<bool>(any(vec2<bool>(any(vec4<bool>(global2[_wgslsmith_index_u32(var_0.a.x, 20u)], global2[_wgslsmith_index_u32(var_0.a.x, 20u)], true, global2[_wgslsmith_index_u32(4294967295u, 20u)])), true)), true, all(!vec2<bool>(false, global2[_wgslsmith_index_u32(arg_0.b.a.x, 20u)])), global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(0u, 4294967295u ^ arg_0.b.a.x), 20u)]), ~(~firstTrailingBit(var_0.a.zzw)), arg_0, _wgslsmith_f_op_f32(round(global0.x))).x;
}

fn func_2() -> Struct_1 {
    global1 = array<vec2<f32>, 8>();
    global1 = array<vec2<f32>, 8>();
    global2 = array<bool, 20>();
    var var_0 = ~_wgslsmith_clamp_i32(~_wgslsmith_mod_i32(u_input.c, _wgslsmith_add_i32(u_input.c, 1i)), ~_wgslsmith_add_i32(-1i, -1i << (u_input.a % 32u)), -38965i);
    var var_1 = !global2[_wgslsmith_index_u32(u_input.b, 20u)];
    return Struct_1(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a ^ 9091u, ~u_input.a, 2640u & u_input.b, 1u), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, u_input.b, u_input.d, 58190u), vec4<u32>(4294967295u, 0u, u_input.b, 19854u) >> (vec4<u32>(u_input.a, u_input.b, 0u, 72630u) % vec4<u32>(32u)))), global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(0u, u_input.b) & ~func_3(Struct_3(0i, Struct_2(vec4<u32>(4294967295u, 82498u, 1u, 48918u), -2147483647i))), 8u)]);
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    global2 = array<bool, 20>();
    var var_0 = vec3<u32>(arg_2.a.x, select(~arg_3.a.x, u_input.a, all(select(arg_0, arg_0, false)) || (true == (arg_3.a.x < u_input.d))), arg_3.a.x);
    var var_1 = Struct_1(~arg_3.a, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(13685u, 57872u), vec2<u32>(var_0.x, 17687u)), max(vec2<u32>(arg_3.a.x, 51004u), var_0.yz)), 8u)] + vec2<f32>(_wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(ceil(757f)))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, var_1.b.x, global0.x)) * vec3<f32>(arg_3.b.x, arg_3.b.x, global0.x))))));
    let var_3 = select(select(select(!vec4<bool>(true, false, arg_0.x, global2[_wgslsmith_index_u32(arg_2.a.x, 20u)]), vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec4<bool>(global2[_wgslsmith_index_u32(var_1.a.x, 20u)], true, false, false)), !arg_0.x)), !select(vec4<bool>(arg_0.x, global2[_wgslsmith_index_u32(arg_2.a.x, 20u)], true, arg_1), !vec4<bool>(true, true, arg_0.x, true), vec4<bool>(global2[_wgslsmith_index_u32(arg_3.a.x, 20u)], false, true, false)), arg_0.x), !select(vec4<bool>(!arg_1, any(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)), any(vec3<bool>(arg_1, arg_0.x, arg_0.x)), !arg_1), !vec4<bool>(false, arg_0.x, false, true), vec4<bool>(any(vec2<bool>(arg_1, true)), true, !arg_0.x, arg_0.x)), !vec4<bool>(false, -2147483647i < -arg_2.b, true, false));
    return any(vec4<bool>(arg_0.x, false, false, any(!select(var_3, vec4<bool>(global2[_wgslsmith_index_u32(var_0.x, 20u)], false, true, arg_0.x), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~select(func_1(vec4<bool>(true, global2[_wgslsmith_index_u32(48027u, 20u)], true, global2[_wgslsmith_index_u32(14743u, 20u)]), vec3<u32>(35872u, u_input.b, u_input.d), Struct_3(u_input.c, Struct_2(vec4<u32>(u_input.a, 4294967295u, u_input.d, 10740u), u_input.c)), global0.x), vec3<u32>(66285u, 0u, u_input.a) & vec3<u32>(u_input.d, 4294967295u, u_input.b), select(vec3<bool>(false, true, false), vec3<bool>(global2[_wgslsmith_index_u32(62444u, 20u)], false, global2[_wgslsmith_index_u32(u_input.d, 20u)]), true)) & firstTrailingBit(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(56329u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.d, u_input.a)), vec3<u32>(70426u, 22341u, 4294967295u) >> (vec3<u32>(u_input.d, u_input.b, 10160u) % vec3<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(global0.x, global0.x)), global0.x, -806f));
    var var_2 = global2[_wgslsmith_index_u32(~(~1u), 20u)];
    var var_3 = ~u_input.a;
    var var_4 = vec4<u32>(1u, 31916u, 54719u, func_1(vec4<bool>(true, false, func_4(vec3<bool>(true, global2[_wgslsmith_index_u32(var_0.x, 20u)], true), global2[_wgslsmith_index_u32(1u, 20u)] || global2[_wgslsmith_index_u32(17802u, 20u)], Struct_2(vec4<u32>(u_input.a, u_input.a, 17988u, u_input.b), 29884i), func_2()), all(vec4<bool>(global2[_wgslsmith_index_u32(39175u, 20u)], false, global2[_wgslsmith_index_u32(4294967295u, 20u)], true))), vec3<u32>(~_wgslsmith_clamp_u32(4294967295u, 0u, u_input.a), countOneBits(0u), _wgslsmith_add_u32(func_3(Struct_3(0i, Struct_2(vec4<u32>(var_0.x, 15935u, 36386u, 0u), 2147483647i))), func_2().a.x)), Struct_3(~u_input.c, Struct_2(countOneBits(vec4<u32>(80158u, 15180u, 1u, u_input.b)), 73723i)), 1488f).x);
    var var_5 = Struct_2(~countOneBits(vec4<u32>(~13620u, firstLeadingBit(30305u), var_4.x, _wgslsmith_add_u32(0u, var_0.x))), u_input.c & ~u_input.c);
    let var_6 = Struct_2(_wgslsmith_clamp_vec4_u32(select(var_5.a, var_5.a, !vec4<bool>(false, global2[_wgslsmith_index_u32(28123u, 20u)], global2[_wgslsmith_index_u32(0u, 20u)], false)), ~_wgslsmith_add_vec4_u32(var_5.a >> (vec4<u32>(var_0.x, u_input.a, 12408u, u_input.d) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(var_5.a, vec4<u32>(var_5.a.x, 5321u, u_input.d, 1u))), vec4<u32>(~u_input.b, _wgslsmith_mult_u32(reverseBits(var_4.x), 4294967295u), 0u, u_input.a)), -var_5.b);
    var var_7 = reverseBits(var_5.a.wxx);
    var var_8 = var_6;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32((reverseBits(vec4<i32>(-21253i, var_5.b, u_input.c, -2147483647i)) ^ firstTrailingBit(vec4<i32>(29864i, var_5.b, var_5.b, 8601i))) | ~vec4<i32>(u_input.c, var_8.b, 1i, 19243i), ~vec4<i32>(1i, u_input.c << (1u % 32u), ~var_5.b, u_input.c << (u_input.a % 32u))), _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, _wgslsmith_div_u32(var_4.x, 24337u)), vec2<u32>(0u, _wgslsmith_sub_u32(var_7.x, var_0.x) | var_7.x)), vec2<i32>(1i, var_5.b), vec2<f32>(var_1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(2159f * _wgslsmith_f_op_f32(step(-1000f, var_1.x)))))));
}

