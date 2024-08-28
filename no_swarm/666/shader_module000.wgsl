struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5> = array<bool, 5>(true, true, true, true, true);

var<private> global1: array<f32, 28>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> bool {
    var var_0 = Struct_3(vec4<bool>(global0[_wgslsmith_index_u32(1u, 5u)], any(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)]), !vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 5u)]), false)), true, global0[_wgslsmith_index_u32(1u, 5u)]), ~select(_wgslsmith_div_u32(u_input.b.x, 4294967295u), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(27078u, 4294967295u, 4294967295u, 11995u), vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_div_u32(u_input.b.x, u_input.b.x)), true));
    var_0 = Struct_3(!var_0.a, var_0.b);
    var var_1 = ~77184u;
    let var_2 = ~_wgslsmith_div_vec3_u32(u_input.b.yzz, ~u_input.b.yyy);
    let var_3 = var_0.a.x;
    return var_0.a.x;
}

fn func_2() -> Struct_2 {
    let var_0 = 1u;
    var var_1 = Struct_1((countOneBits(u_input.a) ^ select(-2147483647i, 1i, func_3())) | u_input.a, vec4<bool>(!(all(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 5u)], false, global0[_wgslsmith_index_u32(u_input.b.x, 5u)])) || global0[_wgslsmith_index_u32(reverseBits(var_0), 5u)]), true, (global0[_wgslsmith_index_u32(select(u_input.b.x, u_input.b.x, false), 5u)] | false) | (13852i >= _wgslsmith_mod_i32(-2147483647i, u_input.a)), !(!(!global0[_wgslsmith_index_u32(27287u, 5u)]))), vec2<u32>(~1u, min(abs(~u_input.b.x), reverseBits(var_0 & 4294967295u))), ~(~(~var_0)));
    let var_2 = Struct_3(vec4<bool>(any(select(!vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.b.x, 5u)]), vec3<bool>(global0[_wgslsmith_index_u32(76223u, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(u_input.b.x, 5u)]), vec3<bool>(global0[_wgslsmith_index_u32(var_0, 5u)], true, global0[_wgslsmith_index_u32(4294967295u, 5u)]))), global0[_wgslsmith_index_u32(var_0 ^ ~_wgslsmith_mod_u32(var_0, u_input.b.x), 5u)], false, true), 40463u);
    global0 = array<bool, 5>();
    global0 = array<bool, 5>();
    return Struct_2(51626u, ((u_input.b.zwy << (~vec3<u32>(var_2.b, 43141u, 14237u) % vec3<u32>(32u))) ^ vec3<u32>(~var_2.b, ~var_0, 25029u >> (1u % 32u))) & (u_input.b.ywx << (u_input.b.zwx % vec3<u32>(32u))), false, Struct_1(u_input.a, vec4<bool>(var_2.a.x, countOneBits(u_input.a) <= u_input.a, func_3(), true), ~max(firstTrailingBit(var_1.c), _wgslsmith_clamp_vec2_u32(var_1.c, var_1.c, vec2<u32>(var_2.b, var_0))), var_2.b));
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = select(select(select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(5890u, 5u)], var_0.d.b.x), var_0.d.b, global0[_wgslsmith_index_u32(abs(4294967295u), 5u)]), !select(!var_0.d.b, var_0.d.b, vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 5u)], true, true, global0[_wgslsmith_index_u32(arg_0, 5u)])), 2147483647i < u_input.a), var_0.d.b, select(!func_2().d.b, vec4<bool>(true, var_0.c || false, false, (-2147483647i < var_0.d.a) || false), select(func_2().d.b, select(select(var_0.d.b, var_0.d.b, var_0.d.b), var_0.d.b, !vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 5u)], var_0.d.b.x, var_0.d.b.x)), var_0.d.b.x)));
    var var_2 = select(~(_wgslsmith_div_vec3_u32(var_0.b, _wgslsmith_clamp_vec3_u32(var_0.b, var_0.b, var_0.b)) >> ((func_2().b >> (var_0.b % vec3<u32>(32u))) % vec3<u32>(32u))), var_0.b, any(var_0.d.b.yx));
    global1 = array<f32, 28>();
    var var_3 = Struct_1(-1i, select(!var_1, func_2().d.b, true), var_0.d.c, var_0.d.d);
    return func_2().d;
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    var var_0 = !select(select(arg_0.d.b.xxy, vec3<bool>(true, true, true), select(!arg_0.d.b.ywy, select(vec3<bool>(true, false, true), arg_0.d.b.xwx, arg_0.d.b.xxx), func_1(1u).b.x)), !select(select(arg_0.d.b.yxy, arg_0.d.b.yzy, vec3<bool>(global0[_wgslsmith_index_u32(arg_0.d.c.x, 5u)], false, arg_0.c)), vec3<bool>(arg_0.c, false, global0[_wgslsmith_index_u32(arg_0.b.x, 5u)]), true), false);
    global0 = array<bool, 5>();
    let var_1 = _wgslsmith_mod_u32(~arg_0.d.d & 77697u, arg_0.b.x);
    return Struct_3(!select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 5u)] & false, any(var_0.yz), 49869u == u_input.b.x, true), !func_2().d.b, false), 165566u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.xzx;
    var var_1 = func_4(Struct_2(78629u, _wgslsmith_sub_vec3_u32(u_input.b.zxy, _wgslsmith_add_vec3_u32(u_input.b.xyw ^ u_input.b.ywx, max(vec3<u32>(u_input.b.x, 0u, u_input.b.x), u_input.b.wwx))), all(!(!vec4<bool>(false, false, global0[_wgslsmith_index_u32(var_0.x, 5u)], global0[_wgslsmith_index_u32(u_input.b.x, 5u)]))), func_1(abs(1u))));
    global0 = array<bool, 5>();
    let var_2 = var_1.a.yw;
    var_1 = Struct_3(!vec4<bool>(true, false, !var_1.a.x && func_3(), any(!vec3<bool>(false, var_1.a.x, var_1.a.x))), firstLeadingBit(func_1(max(60884u, var_0.x) & ~4294967295u).c.x));
    let var_3 = func_2().d;
    let var_4 = func_4(Struct_2(var_1.b, min(vec3<u32>(abs(u_input.b.x), var_0.x << (u_input.b.x % 32u), 34609u), ~_wgslsmith_div_vec3_u32(u_input.b.zzy, vec3<u32>(4294967295u, var_1.b, 44890u))), any(func_2().d.b), Struct_1(_wgslsmith_mod_i32(var_3.a, -1i), !func_1(var_3.c.x).b, vec2<u32>(1u, var_1.b) >> (var_0.yz % vec2<u32>(32u)), var_3.c.x & (63849u & var_3.c.x))));
    var_1 = Struct_3(!vec4<bool>(var_2.x, false, false, true), select(_wgslsmith_div_u32(1u, select(~4294967295u, var_3.d, false)), _wgslsmith_clamp_u32(var_3.d, min(var_1.b, 1u), var_3.d & (var_4.b >> (u_input.b.x % 32u))), all(!(!var_3.b.wx))));
    global0 = array<bool, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(~(~func_4(Struct_2(var_3.d, vec3<u32>(22943u, 0u, 131762u), true, var_3)).b), 28u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 28u)]), _wgslsmith_f_op_f32(f32(-1f) * -217f), global1[_wgslsmith_index_u32(1u, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)]))), _wgslsmith_add_u32(func_2().b.x, (var_0.x ^ var_0.x) >> (var_4.b % 32u)), ~select(vec4<i32>(var_3.a, select(0i, -31810i, var_2.x), ~2147483647i, -u_input.a), vec4<i32>(var_3.a, u_input.a, -1i, func_1(var_1.b).a), vec4<bool>(var_3.b.x, global0[_wgslsmith_index_u32(var_1.b, 5u)] | var_2.x, !var_4.a.x, any(vec2<bool>(var_4.a.x, false)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.b, var_1.b), 28u)]), global1[_wgslsmith_index_u32(var_3.c.x, 28u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(152f * global1[_wgslsmith_index_u32(u_input.b.x, 28u)]) + 774f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(194f + global1[_wgslsmith_index_u32(var_3.d, 28u)])))), var_3.b.x)));
}

