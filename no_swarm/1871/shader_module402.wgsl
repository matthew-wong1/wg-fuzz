struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15>;

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(1u, 66333u, true, vec2<f32>(584f, 1000f)), Struct_1(93025u, 1u, true, vec2<f32>(816f, 639f)), Struct_1(951u, 123045u, true, vec2<f32>(-188f, 766f)), Struct_1(83993u, 45091u, true, vec2<f32>(-307f, -816f)), Struct_1(27872u, 0u, false, vec2<f32>(-461f, -121f)), Struct_1(4294967295u, 70941u, false, vec2<f32>(-1720f, 1483f)), Struct_1(51963u, 38407u, true, vec2<f32>(1037f, -2124f)), Struct_1(1u, 18350u, true, vec2<f32>(-1000f, -611f)), Struct_1(1u, 1u, false, vec2<f32>(661f, -791f)), Struct_1(4294967295u, 33031u, false, vec2<f32>(243f, 1435f)), Struct_1(0u, 23518u, false, vec2<f32>(-402f, 663f)));

var<private> global3: array<u32, 21> = array<u32, 21>(23375u, 0u, 0u, 49952u, 52738u, 0u, 14484u, 78065u, 65817u, 63861u, 0u, 2777u, 4294967295u, 0u, 42499u, 66626u, 0u, 4294967295u, 309u, 82516u, 43074u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> f32 {
    global0 = array<bool, 15>();
    global2 = array<Struct_1, 11>();
    global3 = array<u32, 21>();
    let var_0 = max(~_wgslsmith_mult_i32(u_input.c.x, u_input.c.x), 0i) < ((u_input.c.x << (reverseBits(u_input.b.x) % 32u)) << (min(3131u, ~12023u) % 32u));
    return -1471f;
}

fn func_1() -> f32 {
    var var_0 = vec2<i32>(u_input.c.x, countOneBits(max(-2147483647i, 2147483647i)));
    var var_1 = global2[_wgslsmith_index_u32(firstLeadingBit(reverseBits(~_wgslsmith_add_u32(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(122269u, 21u)], 21u)], global3[_wgslsmith_index_u32(u_input.a, 21u)]), 22207u))), 11u)];
    var var_2 = 14098u;
    global1 = !(!vec4<bool>(any(global1.yw), select(!var_1.c, false | global1.x, false), all(vec4<bool>(global0[_wgslsmith_index_u32(0u, 15u)], global1.x, global1.x, true)) | global1.x, false));
    global2 = array<Struct_1, 11>();
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(f32(-1f) * -247f)) * -1176f) * _wgslsmith_f_op_f32(var_1.d.x - _wgslsmith_f_op_f32(min(944f, _wgslsmith_f_op_f32(step(-590f, 1177f)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-198f, var_1.d.x)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.d.x)))), _wgslsmith_div_f32(-695f, _wgslsmith_f_op_f32(f32(-1f) * -624f))))));
}

fn func_3() -> vec4<bool> {
    global2 = array<Struct_1, 11>();
    global1 = vec4<bool>(true, true && all(vec4<bool>(true, true, global1.x, !global0[_wgslsmith_index_u32(u_input.b.x, 15u)])), any(select(select(!vec4<bool>(global1.x, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(16801u, 21u)], 15u)], global1.x, global1.x), !vec4<bool>(false, true, global0[_wgslsmith_index_u32(81424u, 15u)], true), select(vec4<bool>(global0[_wgslsmith_index_u32(41177u, 15u)], false, global1.x, global1.x), vec4<bool>(false, false, false, global1.x), vec4<bool>(global0[_wgslsmith_index_u32(4973u, 15u)], true, global1.x, true))), vec4<bool>(false, !global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 21u)], 15u)], true, select(global1.x, false, true)), vec4<bool>(all(vec4<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(53166u, 21u)], 21u)], 15u)], false, false, global0[_wgslsmith_index_u32(65564u, 15u)])), select(true, global0[_wgslsmith_index_u32(u_input.b.x, 15u)], false), true, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 21u)], 15u)]))), false);
    let var_0 = (1u >> (_wgslsmith_clamp_u32(~(~u_input.a), u_input.b.x, ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(60388u, 21u)], 21u)] >> (29779u % 32u), 21u)]) % 32u)) | firstTrailingBit(_wgslsmith_dot_vec2_u32(select(u_input.b, ~u_input.b, any(vec2<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 21u)], 21u)], 15u)], global0[_wgslsmith_index_u32(8395u, 15u)]))), ~u_input.b << (countOneBits(u_input.b) % vec2<u32>(32u))));
    return vec4<bool>(true, all(vec2<bool>(!global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 15u)], !(global1.x == false))), true, !any(!(!vec4<bool>(global1.x, global1.x, false, global1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 11>();
    let var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(reverseBits(max(~u_input.b.x, ~u_input.b.x)), global3[_wgslsmith_index_u32(1u, 21u)]), 11u)];
    global2 = array<Struct_1, 11>();
    let var_1 = vec4<f32>(var_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-653f * 544f)))), _wgslsmith_f_op_f32(step(var_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1148f * _wgslsmith_f_op_f32(func_1()))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x + _wgslsmith_f_op_f32(trunc(-1172f)))));
    global1 = select(vec4<bool>(var_0.c, true, any(select(global1.zx, select(global1.yx, global1.yy, global1.yz), vec2<bool>(true, false))), var_0.c), select(!select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(4713u, 15u)], global0[_wgslsmith_index_u32(1u, 15u)], global1.x), vec4<bool>(true, true, global0[_wgslsmith_index_u32(0u, 15u)], var_0.c), var_0.c), vec4<bool>(var_0.c, var_0.c, false, global1.x), true), func_3(), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, 0u, 4294967295u, var_0.b), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 21u)], 21u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(35813u, 21u)], 21u)], u_input.a, 4294967295u)), 15u)] == global1.x), !(!(!(!vec4<bool>(false, global1.x, true, false)))));
    let var_2 = global2[_wgslsmith_index_u32(max(~0u, 0u), 11u)];
    var var_3 = global2[_wgslsmith_index_u32(5326u ^ var_2.a, 11u)];
    global0 = array<bool, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~u_input.c.x, abs(i32(-1i) * -57134i)));
}

