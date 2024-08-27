struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(1u, 77276u, 48197u), vec2<i32>(1i, 2147483647i));

var<private> global1: Struct_1 = Struct_1(vec3<u32>(18164u, 46688u, 51386u), vec2<i32>(-17992i, -58839i));

var<private> global2: array<vec3<i32>, 24>;

var<private> global3: array<u32, 5>;

var<private> global4: Struct_1 = Struct_1(vec3<u32>(13396u, 10291u, 35114u), vec2<i32>(-62976i, 7534i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    var var_0 = ~_wgslsmith_div_u32(global0.a.x, 3449u << (0u % 32u)) & 1u;
    let var_1 = select(~vec3<u32>(arg_0.a.x, ~1u, 0u), vec3<u32>(~(~(~4294967295u)), 0u, 0u), false | (all(vec4<bool>(true, true, true, true)) == true));
    var var_2 = ~global1.b.x;
    let var_3 = arg_0;
    var_0 = 71803u;
    return var_3;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec4<bool> {
    global3 = array<u32, 5>();
    global0 = arg_0;
    let var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-424f * 609f), _wgslsmith_f_op_f32(sign(-3044f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(161f)))), -1269f), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1609f)) * _wgslsmith_f_op_f32(623f - -456f)), _wgslsmith_f_op_f32(-752f * _wgslsmith_f_op_f32(min(269f, 914f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(927f, 1439f) * 565f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-649f + 1858f), -709f, all(vec2<bool>(arg_2, true)))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1461f, 2587f))))), 988f), all(select(!select(vec4<bool>(arg_2, true, false, arg_2), vec4<bool>(arg_2, true, true, true), arg_2), select(select(vec4<bool>(arg_2, false, arg_2, arg_2), vec4<bool>(true, arg_2, false, true), vec4<bool>(true, arg_2, true, true)), select(vec4<bool>(arg_2, arg_2, arg_2, arg_2), vec4<bool>(false, true, true, arg_2), vec4<bool>(arg_2, false, true, false)), true), select(!vec4<bool>(false, true, arg_2, true), vec4<bool>(arg_2, arg_2, arg_2, false), !arg_2)))));
    global4 = arg_0;
    global1 = func_2(arg_0, u_input.c.x);
    return vec4<bool>(!(!(!arg_2)), any(vec2<bool>(arg_2, all(!vec3<bool>(true, arg_2, false)))), all(vec2<bool>(!(u_input.a.x == arg_1.a.x), !(arg_2 && arg_2))), var_0.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))) + var_0.x));
}

fn func_1() -> i32 {
    let var_0 = !select(select(func_3(Struct_1(vec3<u32>(38890u, global0.a.x, 4294967295u), vec2<i32>(global1.b.x, u_input.e.x)), func_2(Struct_1(u_input.c, global4.b), global3[_wgslsmith_index_u32(global0.a.x, 5u)]), false), vec4<bool>(true, true, false, true), true), func_3(Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(1u, 5u)], 4294967295u, 45001u), global1.a), -vec2<i32>(1i, 2147483647i)), func_2(func_2(Struct_1(vec3<u32>(global3[_wgslsmith_index_u32(36558u, 5u)], 4294967295u, 49245u), vec2<i32>(0i, -1i)), 44866u), 4034u >> (u_input.a.x % 32u)), true), true);
    global3 = array<u32, 5>();
    let var_1 = ~(~vec4<i32>(reverseBits(-global0.b.x), global0.b.x, -76i ^ u_input.d, -21993i));
    global4 = func_2(func_2(func_2(Struct_1(global4.a, countOneBits(vec2<i32>(-6040i, u_input.b))), firstTrailingBit(global1.a.x)), _wgslsmith_sub_u32(1u, 4294967295u | _wgslsmith_sub_u32(u_input.a.x, global1.a.x))), global4.a.x << (1u % 32u));
    global3 = array<u32, 5>();
    return global1.b.x & global4.b.x;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(~arg_2.a.x, ~(~1u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.a.x, u_input.c.x, global0.a.x), vec3<u32>(global0.a.x, 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(40890u, 5u)], 5u)])) << (4294967295u % 32u)), global1.a), -(~(func_2(Struct_1(u_input.a.wxw, vec2<i32>(-1i, -2147483647i)), 0u).b << (global1.a.xy % vec2<u32>(32u)))));
    global3 = array<u32, 5>();
    global1 = var_0;
    let var_1 = var_0;
    var var_2 = ~arg_3;
    return func_2(arg_2, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_1(_wgslsmith_add_vec3_u32(~u_input.c, reverseBits(select(vec3<u32>(global3[_wgslsmith_index_u32(global0.a.x, 5u)], global3[_wgslsmith_index_u32(38298u, 5u)], global0.a.x), global1.a | vec3<u32>(global3[_wgslsmith_index_u32(0u, 5u)], global4.a.x, global4.a.x), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false)))), -vec2<i32>(_wgslsmith_div_i32(global1.b.x, global0.b.x), select(0i, u_input.d, false)) << (vec2<u32>(4294967295u, global1.a.x) % vec2<u32>(32u)));
    let var_0 = func_4(vec3<i32>(-1i) * -vec3<i32>(~0i, _wgslsmith_dot_vec4_i32(vec4<i32>(global4.b.x, global1.b.x, -28704i, 1i), vec4<i32>(-23695i, 9891i, 1i, u_input.b)), global1.b.x), ~vec3<i32>(global0.b.x, global4.b.x & func_1(), 48471i), func_2(func_2(Struct_1(global4.a ^ global1.a, -vec2<i32>(global4.b.x, 5577i)), ~global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(1u, 5u)], 5u)]), 4294967295u), 2147483647i);
    let var_1 = vec2<u32>(0u, var_0.a.x);
    global2 = array<vec3<i32>, 24>();
    var var_2 = vec3<bool>(!(var_1.x >= _wgslsmith_clamp_u32(1u, abs(4294967295u), func_2(Struct_1(global0.a, u_input.e), u_input.c.x).a.x)), true, all(vec2<bool>(true, true)));
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-427f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(896f * -953f)))));
    global3 = array<u32, 5>();
    let var_4 = Struct_1(~vec3<u32>(46875u, ~43883u, 10684u), -func_4(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.x, countOneBits(5790u)), 5u)], 24u)], max(global2[_wgslsmith_index_u32(32544u, 24u)], max(vec3<i32>(var_0.b.x, global0.b.x, global0.b.x), global2[_wgslsmith_index_u32(global0.a.x, 24u)])), var_0, ~2147483647i).b);
    let x = u_input.a;
    s_output = StorageBuffer(~global4.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-618f * 367f), -1000f, _wgslsmith_f_op_f32(abs(1334f)), _wgslsmith_f_op_f32(trunc(843f))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1043f, 1149f, 101f, 1291f) * vec4<f32>(1167f, 507f, 684f, -1000f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1004f, 2153f, -552f, -588f))))))), _wgslsmith_add_vec3_i32(vec3<i32>(i32(-1i) * -29212i, ~firstLeadingBit(12887i), func_4(~vec3<i32>(global0.b.x, global0.b.x, global4.b.x), -vec3<i32>(-1i, -2147483647i, 0i), var_0, var_4.b.x & -9095i).b.x), abs(min(~global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 5u)], 24u)], vec3<i32>(41964i, -2147483647i, u_input.d) & global2[_wgslsmith_index_u32(u_input.a.x, 24u)]))), vec2<i32>(i32(-1i) * -69913i, -3965i));
}

