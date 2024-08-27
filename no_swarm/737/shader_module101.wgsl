struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5>;

var<private> global1: Struct_1 = Struct_1(vec3<f32>(-866f, -236f, -308f));

var<private> global2: Struct_1 = Struct_1(vec3<f32>(869f, -1006f, 758f));

var<private> global3: vec2<f32> = vec2<f32>(-140f, 755f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global1 = arg_2;
    global1 = Struct_1(arg_2.a);
    global2 = arg_1;
    global0 = array<u32, 5>();
    global1 = arg_2;
    return _wgslsmith_f_op_f32(294f + global1.a.x);
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec3<i32>, arg_3: bool) -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<f32>(-509f, global2.a.x), Struct_1(vec3<f32>(-465f, global3.x, global2.a.x)), Struct_1(global1.a)))))) * _wgslsmith_f_op_f32(f32(-1f) * -946f));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2210f, global3.x)) * global1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a.x, global2.a.x)), _wgslsmith_f_op_f32(trunc(global2.a.x))))));
    global2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1142f, _wgslsmith_f_op_f32(max(1f, global1.a.x)), _wgslsmith_f_op_f32(min(var_1.a.x, global3.x)))));
    var var_2 = Struct_1(global1.a);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) - var_1.a.x) >= _wgslsmith_f_op_f32(func_3(global1.a.zy, var_1, Struct_1(var_2.a)));
}

fn func_4(arg_0: vec3<i32>, arg_1: i32, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = global3.x == _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.a.x + _wgslsmith_f_op_f32(trunc(-440f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -416f)))));
    global0 = array<u32, 5>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, 142f, 314f))))));
    global2 = var_1;
    global2 = var_1;
    return var_1;
}

fn func_1() -> Struct_1 {
    let var_0 = !any(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false))));
    global2 = func_4(select(min(vec3<i32>(select(-5896i, 1i, false), _wgslsmith_mod_i32(8066i, u_input.a), u_input.a), ~abs(vec3<i32>(u_input.a, -1i, 1i))), vec3<i32>(_wgslsmith_clamp_i32(1i, 4310i, reverseBits(u_input.a)), u_input.a, ~13354i), vec3<bool>(!any(vec3<bool>(var_0, var_0, var_0)), select(true, !var_0, func_2(0u, false, vec3<i32>(u_input.a, u_input.a, -13800i), var_0)), var_0)), -1i, vec4<u32>(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], 5u)]), vec2<u32>(57356u, 42057u)), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(71323u, 5u)], 5u)], 4294967295u)), 5u)], 4294967295u), 1u, 4294967295u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(90480u, global0[_wgslsmith_index_u32(4294967295u, 5u)], 26033u), countOneBits(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(59525u, 5u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16186u, 5u)], 5u)], 5u)]))) >> (~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4773u, 5u)], 5u)]) % 32u), 5u)]));
    let var_1 = var_0;
    global0 = array<u32, 5>();
    global3 = global1.a.zx;
    return func_4(select(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, -51047i, u_input.a)), ~(-vec3<i32>(u_input.a, u_input.a, u_input.a)), var_0) << (_wgslsmith_mult_vec3_u32(~(~vec3<u32>(global0[_wgslsmith_index_u32(1u, 5u)], 56749u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)])), vec3<u32>(14492u, 63256u, global0[_wgslsmith_index_u32(abs(54011u), 5u)])) % vec3<u32>(32u)), u_input.a, vec4<u32>(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 5u)] & 7926u, ~(~select(global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(74287u, 5u)], 5u)], false)), ~(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31128u, 5u)], 5u)] ^ 1u) << (global0[_wgslsmith_index_u32(firstLeadingBit(0u), 5u)] % 32u), ~global0[_wgslsmith_index_u32(83302u, 5u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(70490u, 0u, 27563u) & ~4294967295u, (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 5u)], 5u)] & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)]) & 0u), 1u) <= _wgslsmith_clamp_u32(max(abs(1u) ^ ~global0[_wgslsmith_index_u32(12900u, 5u)], ~9421u), 16955u, 423u);
    var var_1 = func_1();
    global0 = array<u32, 5>();
    let var_2 = vec4<u32>(global0[_wgslsmith_index_u32(~(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(14186u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], 44223u, 77979u), vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(111948u, 5u)], 5u)], 5u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12216u, 5u)], 5u)], global0[_wgslsmith_index_u32(23762u, 5u)])), global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(46270u, 5u)]), 5u)]) << (106250u % 32u)), 5u)], 40112u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24185u, 5u)], 5u)]), 1u, global0[_wgslsmith_index_u32(1u, 5u)], min(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(119548u, 5u)], 5u)])), ~_wgslsmith_add_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)], 5u)], 37495u, 2826u), vec4<u32>(0u, global0[_wgslsmith_index_u32(1u, 5u)], 1u, global0[_wgslsmith_index_u32(5276u, 5u)]))), vec4<u32>(111122u, 1u, ~(~10437u), global0[_wgslsmith_index_u32(~(~0u), 5u)])), 5u)], global0[_wgslsmith_index_u32((_wgslsmith_mult_u32(1u, select(4294967295u, 27623u, true)) | global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(4294967295u, 61155u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)], global0[_wgslsmith_index_u32(1u, 5u)])), ~vec4<u32>(1u, global0[_wgslsmith_index_u32(9708u, 5u)], 16552u, 4294967295u)), 5u)]) & 4294967295u, 5u)]);
    let var_3 = select(true, false, select(all(vec2<bool>(true, true)), true, select(false, true, any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false))))));
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.x, 433f)) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(374f, -1928f)) * vec2<f32>(1076f, var_1.a.x)) + _wgslsmith_f_op_vec2_f32(-var_1.a.yy)))));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a, vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(var_1.a.x * global1.a.x)), _wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(var_1.a.yy + _wgslsmith_f_op_vec2_f32(global2.a.xz - var_1.a.xz)), func_4(-vec3<i32>(u_input.a, u_input.a, u_input.a), u_input.a, ~var_2), func_4(-vec3<i32>(u_input.a, 79375i, -1i), ~u_input.a, countOneBits(var_2)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1412f + _wgslsmith_f_op_f32(f32(-1f) * -107f))))), _wgslsmith_f_op_vec3_f32(global2.a + global1.a), select(~(~(~vec3<i32>(u_input.a, 2147483647i, u_input.a))), (~vec3<i32>(2147483647i, 1i, u_input.a) ^ ~vec3<i32>(1i, -2147483647i, u_input.a)) | -_wgslsmith_div_vec3_i32(vec3<i32>(0i, u_input.a, -47108i), vec3<i32>(2147483647i, -2147483647i, u_input.a)), !any(select(vec3<bool>(true, var_3, var_3), vec3<bool>(true, var_3, false), vec3<bool>(false, var_3, false)))));
}

