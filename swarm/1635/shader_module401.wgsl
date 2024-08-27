struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, true, false);

var<private> global1: array<u32, 25> = array<u32, 25>(114669u, 0u, 4294967295u, 13908u, 0u, 22771u, 4294967295u, 4294967295u, 20340u, 44758u, 28498u, 1u, 4294967295u, 1u, 76973u, 36918u, 1u, 1u, 1u, 1u, 4294967295u, 1u, 13995u, 1u, 1u);

var<private> global2: array<u32, 5> = array<u32, 5>(14332u, 4294967295u, 75808u, 8367u, 0u);

var<private> global3: i32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_1) -> f32 {
    let var_0 = 1u;
    var var_1 = ~arg_0;
    var var_2 = ~(~max(0u, ~global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(12575u, 25u)], 1u), 5u)]));
    global3 = ~(-(11484i >> (0u % 32u))) >> (var_0 % 32u);
    var var_3 = select(vec3<bool>(true, true, 58114i != u_input.c), select(vec3<bool>(true, true, any(!vec3<bool>(global0.x, false, global0.x))), vec3<bool>(global0.x, any(select(global0.zww, global0.wzw, global0.wzx)), select(true, global0.x, global0.x) & false), global0.x), false);
    return arg_2.b;
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    return Struct_1(vec3<f32>(794f, arg_1.a.x, -2416f), _wgslsmith_f_op_f32(func_2(1u, arg_1.a.xz, arg_1)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global0 = !vec4<bool>(true, select(!(global0.x | global0.x), all(select(global0.wzz, global0.yxx, global0.wyz)), _wgslsmith_mod_u32(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(40109u, 5u)], 25u)], 25u)]) != ~arg_0.x), all(select(!vec4<bool>(global0.x, false, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x)), arg_3.a.x > -387f)), global0.x);
    global2 = array<u32, 5>();
    global3 = -(~(~(u_input.a ^ u_input.a))) << (4294967295u % 32u);
    global3 = ~(i32(-1i) * -(~(-14726i)));
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.b, arg_1.b) * -168f), _wgslsmith_f_op_f32(step(arg_1.b, 1f)), true)), arg_2.b, -494f, _wgslsmith_f_op_f32(abs(-824f)));
    return -625f;
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_1) -> vec3<i32> {
    global0 = !arg_1;
    global2 = array<u32, 5>();
    global3 = _wgslsmith_div_i32(-24361i, -firstLeadingBit(-(u_input.b << (40287u % 32u))));
    let var_0 = arg_2;
    let var_1 = ~(~(~u_input.c));
    return (vec3<i32>(u_input.a, -u_input.c & u_input.c, _wgslsmith_sub_i32(var_1 >> (global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 25u)], 5u)] % 32u), u_input.a)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(30446u, 25u)], 35230u), 1u, 5782u), _wgslsmith_mod_vec3_u32(min(vec3<u32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(38063u, 5u)], 25u)], 4871u, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 25u)], 25u)], 5u)]), vec3<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 25u)], 5u)], 5u)], 5u)], 11366u)), vec3<u32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(54u, 5u)], 25u)], 5u)], 1u, 0u))) % vec3<u32>(32u))) << (firstTrailingBit(~countOneBits(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(26306u, 25u)], 5u)], 5u)], global2[_wgslsmith_index_u32(63588u, 5u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11263u, 25u)], 5u)], 25u)])) >> ((_wgslsmith_clamp_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(32903u, 25u)], 4294967295u, 1u), vec3<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(115551u, 5u)], 5u)], global2[_wgslsmith_index_u32(2975u, 5u)]), vec3<u32>(39690u, global1[_wgslsmith_index_u32(0u, 25u)], 6812u)) & max(vec3<u32>(39011u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(39065u, 5u)], 5u)], 25u)], 5u)], 25u)], 5u)], 5u)], 5u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 5u)], 5u)]), vec3<u32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 5u)], 25u)], global1[_wgslsmith_index_u32(4294967295u, 25u)], 1u))) % vec3<u32>(32u))) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 25>();
    global1 = array<u32, 25>();
    var var_0 = reverseBits(~vec2<i32>(2147483647i, -41193i));
    let var_1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-422f)), _wgslsmith_f_op_f32(min(-983f, -502f)))))) + _wgslsmith_div_f32(-136f, _wgslsmith_f_op_f32(func_3(vec3<u32>(global2[_wgslsmith_index_u32(8824u, 5u)], 44901u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(74311u, 5u)], 5u)], 25u)], 25u)]), Struct_1(vec3<f32>(507f, 300f, 412f), 138f), Struct_1(vec3<f32>(1000f, -2529f, -559f), -667f), func_1(82415u, Struct_1(vec3<f32>(-480f, 952f, 183f), -730f)))))), !(!(!(!vec4<bool>(false, false, global0.x, global0.x)))), func_1(61912u, Struct_1(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-628f)))))));
    let var_2 = vec3<bool>(!(all(!vec4<bool>(global0.x, global0.x, true, false)) && true), true && global0.x, any(vec3<bool>(true, false, select(any(vec4<bool>(global0.x, false, global0.x, true)), all(vec2<bool>(global0.x, false)), false || global0.x))));
    global1 = array<u32, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<u32>(~79485u, 0u, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, global1[_wgslsmith_index_u32(1u, 25u)]), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17298u, 5u)], 5u)], 14725u) | vec2<u32>(1u, 0u)), 24956u), ~abs(abs(vec4<u32>(global1[_wgslsmith_index_u32(0u, 25u)], 1u, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(12672u, 25u)], 5u)], 4294967295u))), any(vec2<bool>(var_2.x, false))), -func_4(_wgslsmith_f_op_f32(exp2(func_1(2910u, Struct_1(vec3<f32>(-496f, -1399f, -267f), -1429f)).b)), vec4<bool>(var_2.x, global0.x && false, any(vec4<bool>(true, global0.x, true, false)), var_2.x), Struct_1(vec3<f32>(-645f, -2008f, 275f), _wgslsmith_f_op_f32(select(-681f, -546f, global0.x)))).x, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(9174u, vec2<f32>(901f, -323f), Struct_1(vec3<f32>(1000f, -579f, 1151f), 471f))), -501f)))), 1u);
}

