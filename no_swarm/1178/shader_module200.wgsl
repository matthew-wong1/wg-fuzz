struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18> = array<bool, 18>(true, false, true, true, true, false, false, false, true, true, true, false, true, false, false, false, false, true);

var<private> global1: array<u32, 7> = array<u32, 7>(68290u, 37128u, 1u, 4294967295u, 21978u, 0u, 1u);

var<private> global2: Struct_2 = Struct_2(0u);

var<private> global3: array<u32, 32> = array<u32, 32>(0u, 11403u, 0u, 27499u, 44351u, 84211u, 4294967295u, 56415u, 0u, 4294967295u, 0u, 78535u, 4294967295u, 4294967295u, 15796u, 18470u, 4294967295u, 28608u, 4294967295u, 28246u, 0u, 19515u, 59392u, 38299u, 9441u, 12955u, 0u, 4294967295u, 67602u, 93938u, 51374u, 17219u);

var<private> global4: array<f32, 6> = array<f32, 6>(-235f, 1388f, -1537f, 1356f, -1770f, 1717f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    var var_0 = ~_wgslsmith_dot_vec2_i32(-(~u_input.d.zy), countOneBits(~vec2<i32>(u_input.e, u_input.d.x)) ^ (firstLeadingBit(vec2<i32>(7344i, u_input.d.x)) ^ (u_input.d.zx ^ vec2<i32>(-29052i, u_input.d.x))));
    var var_1 = ~max(u_input.c, -2920i ^ countOneBits(-u_input.c));
    var var_2 = Struct_3(_wgslsmith_div_u32(abs(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b << (u_input.b % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(25226u, 32u)], 8498u), vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(37102u, 7u)], 32u)], global2.a))), 7u)]), global2.a));
    var var_3 = Struct_1(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(abs(4294967295u) << (0u % 32u), var_2.a), 18u)], 86244u, vec4<bool>(any(select(select(vec4<bool>(global0[_wgslsmith_index_u32(var_2.a, 18u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.a, 32u)], 18u)], false, true), vec4<bool>(true, global0[_wgslsmith_index_u32(var_2.a, 18u)], false, true), vec4<bool>(global0[_wgslsmith_index_u32(21811u, 18u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 18u)], global0[_wgslsmith_index_u32(var_2.a, 18u)], false)), vec4<bool>(true, false, global0[_wgslsmith_index_u32(4294967295u, 18u)], false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], true, false, false))), !(global0[_wgslsmith_index_u32(0u, 18u)] && false) | !global0[_wgslsmith_index_u32(~22010u, 18u)], true, false), vec4<f32>(_wgslsmith_f_op_f32(-1592f + 314f), _wgslsmith_f_op_f32(f32(-1f) * -270f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(select(var_2.a, 78015u, true), 6u)] * _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(var_2.a, 6u)])) + _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~u_input.b.x, 7u)], 6u)])), -1000f));
    global2 = Struct_2(~global2.a);
    return (((abs(var_3.b) | _wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(1296u, 32u)], 1u, global2.a), u_input.b)) ^ (var_2.a ^ min(var_2.a, global1[_wgslsmith_index_u32(0u, 7u)]))) == 1u) || var_3.c.x;
}

fn func_2() -> vec2<i32> {
    global2 = Struct_2(u_input.b.x);
    var var_0 = !select(vec4<bool>(true, func_3(), all(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 18u)], false, true)), true), select(select(!vec4<bool>(true, true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17376u, 7u)], 7u)], 18u)], false), vec4<bool>(global0[_wgslsmith_index_u32(global2.a, 18u)], false, global0[_wgslsmith_index_u32(4294967295u, 18u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 7u)], 18u)]), all(vec4<bool>(global0[_wgslsmith_index_u32(4451u, 18u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 7u)], 18u)], global0[_wgslsmith_index_u32(16320u, 18u)], true))), !select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(0u, 18u)], true), vec4<bool>(true, true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.a, 7u)], 18u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(34602u, 7u)], 18u)]), vec4<bool>(global0[_wgslsmith_index_u32(7219u, 18u)], false, false, global0[_wgslsmith_index_u32(96011u, 18u)])), !select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], global0[_wgslsmith_index_u32(global2.a, 18u)], false, false), vec4<bool>(true, global0[_wgslsmith_index_u32(135166u, 18u)], global0[_wgslsmith_index_u32(u_input.a.x, 18u)], false), false)), all(!vec4<bool>(false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9733u, 7u)], 7u)], 18u)], global0[_wgslsmith_index_u32(86669u, 18u)], global0[_wgslsmith_index_u32(global2.a, 18u)])) | true);
    let var_1 = Struct_3(~4294967295u);
    var var_2 = vec4<u32>(~countOneBits(reverseBits(29107u)), ~0u, 0u, 4294967295u);
    let var_3 = Struct_2(select(_wgslsmith_dot_vec2_u32(var_2.xx, vec2<u32>(26651u, 4299u)), 0u, global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 18u)]) << (~1u % 32u));
    return _wgslsmith_add_vec2_i32(min(-min(~u_input.d.xz, max(u_input.d.yx, vec2<i32>(-21629i, u_input.e))), u_input.d.xy), u_input.d.yx);
}

fn func_1(arg_0: vec3<bool>) -> vec4<bool> {
    var var_0 = func_2();
    var var_1 = 35468i;
    var var_2 = countOneBits(4294967295u);
    global2 = Struct_2(_wgslsmith_mult_u32(0u, _wgslsmith_clamp_u32(min(global1[_wgslsmith_index_u32(global2.a | 0u, 7u)], 5039u), countOneBits(~u_input.b.x), max(_wgslsmith_clamp_u32(45275u, 0u, 862u), global2.a))));
    global1 = array<u32, 7>();
    return select(!(!vec4<bool>(all(vec4<bool>(true, arg_0.x, arg_0.x, global0[_wgslsmith_index_u32(31081u, 18u)])), !arg_0.x, any(vec3<bool>(false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 32u)], 7u)], 18u)], arg_0.x)), any(arg_0.yy))), vec4<bool>(true, all(vec2<bool>(true, true)), !arg_0.x, false), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], true, !global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(~global2.a & ~806u, 18u)]), vec4<bool>(all(select(vec4<bool>(false, global0[_wgslsmith_index_u32(5922u, 18u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(21059u, 32u)], 18u)], true), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 18u)], false, true, arg_0.x), global0[_wgslsmith_index_u32(global2.a, 18u)])), all(arg_0.zz), arg_0.x, any(select(vec4<bool>(false, false, false, false), vec4<bool>(arg_0.x, true, true, arg_0.x), vec4<bool>(false, true, true, true)))), 4294967295u > firstLeadingBit(global2.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 18>();
    let var_0 = Struct_1(any(func_1(vec3<bool>(global4[_wgslsmith_index_u32(global2.a, 6u)] >= 1575f, true, global0[_wgslsmith_index_u32(0u, 18u)] && true))), 39423u, vec4<bool>(!(!all(vec2<bool>(false, global0[_wgslsmith_index_u32(global2.a, 18u)]))), !global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~(global2.a >> (global3[_wgslsmith_index_u32(18627u, 32u)] % 32u)), 7u)], 18u)], global0[_wgslsmith_index_u32(((65888u ^ global2.a) | ~4294967295u) << (firstLeadingBit(~global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(8847u, 32u)], 7u)]) % 32u), 18u)], global2.a != _wgslsmith_mod_u32(_wgslsmith_div_u32(13706u, 15800u), 41512u)), vec4<f32>(_wgslsmith_f_op_f32(259f + _wgslsmith_f_op_f32(floor(global4[_wgslsmith_index_u32(select(global2.a, 0u, false), 6u)]))), -1359f, -248f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global4[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(4294967295u, 7u)], 6u)])) - 778f)));
    global1 = array<u32, 7>();
    global3 = array<u32, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(_wgslsmith_add_i32(-u_input.e, ~u_input.e), -13601i), 2161f);
}

