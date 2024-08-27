struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22> = array<i32, 22>(9363i, -27608i, 1i, -41576i, 2147483647i, 41166i, 0i, 15359i, -67544i, -1i, -63753i, 0i, 0i, 1i, 30778i, i32(-2147483648), i32(-2147483648), 2147483647i, -1i, -58644i, -1i, 0i);

var<private> global1: vec2<bool>;

var<private> global2: array<u32, 30> = array<u32, 30>(1u, 0u, 4294967295u, 0u, 4294967295u, 0u, 4294967295u, 3142u, 17846u, 4294967295u, 51318u, 22734u, 4294967295u, 33694u, 46773u, 58009u, 0u, 64832u, 42176u, 4294967295u, 0u, 46092u, 19667u, 32174u, 4294967295u, 19241u, 0u, 34769u, 4294967295u, 84146u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<u32>) -> u32 {
    global0 = array<i32, 22>();
    let var_0 = _wgslsmith_f_op_f32(sign(-712f));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - var_0), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(min(-270f, var_0))), _wgslsmith_f_op_f32(var_0 * var_0) == 807f)), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0)))));
    var var_2 = Struct_5(Struct_2(!any(vec3<bool>(global1.x, global1.x, false)), Struct_1(u_input.e, _wgslsmith_mult_vec3_u32(u_input.c, vec3<u32>(4294967295u, 26151u, global2[_wgslsmith_index_u32(45789u, 30u)]))), Struct_1(abs(u_input.e), vec3<u32>(u_input.a.x, global2[_wgslsmith_index_u32(44820u, 30u)], 23585u)), u_input.c.x > ~_wgslsmith_mult_u32(u_input.a.x, u_input.c.x)), Struct_2(!global1.x, Struct_1(u_input.e, select(vec3<u32>(5235u, global2[_wgslsmith_index_u32(0u, 30u)], arg_2.x), select(u_input.c, u_input.c, vec3<bool>(global1.x, global1.x, global1.x)), select(vec3<bool>(true, true, global1.x), vec3<bool>(false, true, global1.x), vec3<bool>(false, true, global1.x)))), Struct_1(max(vec4<i32>(arg_0.a.x, 24196i, -23222i, -3602i), vec4<i32>(u_input.e.x, -28880i, -2147483647i, -5606i)) | vec4<i32>(29772i, -1i, u_input.d, 43092i), vec3<u32>(firstTrailingBit(arg_2.x), ~arg_2.x, 31077u)), all(select(vec4<bool>(global1.x, false, global1.x, false), !vec4<bool>(global1.x, true, true, true), select(vec4<bool>(global1.x, true, false, global1.x), vec4<bool>(true, true, false, false), vec4<bool>(global1.x, global1.x, true, global1.x))))));
    var var_3 = var_2.a.c.a;
    return abs(0u);
}

fn func_2(arg_0: Struct_4) -> i32 {
    let var_0 = _wgslsmith_sub_u32(max(~firstLeadingBit(0u), 1u), reverseBits(~_wgslsmith_mod_u32(func_3(Struct_3(vec2<i32>(u_input.d, 0i)), Struct_3(u_input.e.wz), vec2<u32>(13425u, 0u)), u_input.a.x)));
    let var_1 = ~4294967295u;
    let var_2 = Struct_3(vec2<i32>(max(~(i32(-1i) * -2147483647i), ~_wgslsmith_sub_i32(u_input.d, 17947i)), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(abs(77553u), abs(global2[_wgslsmith_index_u32(54155u, 30u)])), global2[_wgslsmith_index_u32(u_input.c.x, 30u)]), 30u)], 22u)]));
    let var_3 = arg_0;
    global1 = select(vec2<bool>(!global1.x && global1.x, !global1.x), !(!select(select(vec2<bool>(false, global1.x), vec2<bool>(global1.x, global1.x), vec2<bool>(false, global1.x)), select(vec2<bool>(false, true), vec2<bool>(global1.x, global1.x), global1.x), !global1.x)), vec2<bool>(false, any(select(!vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, global1.x), select(vec2<bool>(global1.x, global1.x), vec2<bool>(false, global1.x), vec2<bool>(global1.x, true))))));
    return u_input.b;
}

fn func_1(arg_0: vec2<i32>) -> bool {
    let var_0 = Struct_1(vec4<i32>(27342i, -46580i | (arg_0.x >> (5099u % 32u)), ~(arg_0.x << (u_input.c.x % 32u)), func_2(Struct_4(vec4<u32>(u_input.c.x, 0u, 19867u, 4294967295u), u_input.a.zx))) >> (vec4<u32>(~(~8780u), ~(~u_input.c.x), 1u, ~4294967295u) % vec4<u32>(32u)), ~vec3<u32>(37626u | abs(u_input.a.x), func_3(Struct_3(vec2<i32>(arg_0.x, global0[_wgslsmith_index_u32(0u, 22u)])), Struct_3(vec2<i32>(-33965i, arg_0.x)), firstTrailingBit(vec2<u32>(global2[_wgslsmith_index_u32(37266u, 30u)], 8679u))), 4294967295u));
    return any(vec4<bool>(global1.x, global1.x, true, all(vec3<bool>(true, true, select(true, global1.x, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(func_1(vec2<i32>(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(u_input.c.x, 22u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(29933u, 30u)], 22u)]), firstLeadingBit(u_input.b))), any(select(!vec3<bool>(true, global1.x, true), vec3<bool>(global1.x, true, false), global1.x))), select(vec2<bool>(global1.x, !(u_input.c.x > global2[_wgslsmith_index_u32(5919u, 30u)])), vec2<bool>(true, true), !all(!vec3<bool>(global1.x, global1.x, global1.x))), vec2<bool>(~1i > u_input.d, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-391f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1246f))), _wgslsmith_f_op_f32(-1f));
}

