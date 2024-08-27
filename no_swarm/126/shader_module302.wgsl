struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<bool, 6> = array<bool, 6>(true, false, false, false, true, true);

var<private> global2: Struct_1;

var<private> global3: array<Struct_2, 12>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<i32>) -> u32 {
    var var_0 = ~(~vec2<u32>(u_input.b.x, _wgslsmith_add_u32(~4294967295u, u_input.b.x)));
    global3 = array<Struct_2, 12>();
    global3 = array<Struct_2, 12>();
    global0 = !select(!(!(!vec4<bool>(global0.x, global0.x, true, global0.x))), select(vec4<bool>(select(true, global1[_wgslsmith_index_u32(u_input.b.x, 6u)], true), !global1[_wgslsmith_index_u32(var_0.x, 6u)], true, true), vec4<bool>(!global1[_wgslsmith_index_u32(53007u, 6u)], true, true, true), global0.x), global1[_wgslsmith_index_u32(~(~u_input.b.x), 6u)] | !(global2.a >= 14036i));
    let var_1 = countOneBits(i32(-1i) * -1i);
    return ~(~(var_0.x | abs(~var_0.x)));
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    global2 = Struct_1(~(-44151i & u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-520f + _wgslsmith_f_op_f32(global2.b + global2.d.x))), firstLeadingBit(abs(1i)), global2.d);
    let var_0 = global3[_wgslsmith_index_u32(func_3(-(~u_input.a)), 12u)];
    global0 = select(!select(!select(vec4<bool>(var_0.a, true, true, global0.x), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true)), !vec4<bool>(true, var_0.a, false, false), global1[_wgslsmith_index_u32(reverseBits(u_input.b.x) << (4294967295u % 32u), 6u)]), vec4<bool>(true, all(vec3<bool>(false, false, true)), select(global0.x, any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 6u)], var_0.a)), global1[_wgslsmith_index_u32(select(~arg_0.x, _wgslsmith_clamp_u32(0u, u_input.b.x, u_input.b.x), true), 6u)]), false), vec4<bool>(!(!(var_0.b.a <= u_input.d.x)), select(select(all(vec4<bool>(false, global0.x, var_0.a, true)), all(global0.xwx), all(global0.zz)), false, -1i <= (-2147483647i ^ global2.c)), any(select(vec4<bool>(var_0.a, true, var_0.a, true), vec4<bool>(false, global0.x, global1[_wgslsmith_index_u32(51237u, 6u)], false), true)), !global0.x));
    var var_1 = global0.xx;
    let var_2 = var_0.b;
    return Struct_1(global2.c, -1149f, _wgslsmith_dot_vec4_i32(vec4<i32>(52878i, var_0.b.c, var_0.b.c, firstTrailingBit(var_0.b.a)), vec4<i32>(~global2.a, countOneBits(-39236i), u_input.a.x, countOneBits(1i))), var_0.b.d);
}

fn func_1() -> i32 {
    global3 = array<Struct_2, 12>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d.x, _wgslsmith_div_f32(global2.b, _wgslsmith_f_op_f32(-global2.d.x)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.d.x + global2.b))))));
    let var_1 = max(u_input.b.ywx, u_input.b.wxw);
    let var_2 = func_2(vec3<u32>(~u_input.b.x, u_input.b.x, ~(~(~u_input.b.x))));
    global2 = Struct_1(-30801i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1352f)) - _wgslsmith_f_op_f32(-588f + -106f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(global2.d.x, var_0.x))))))), -max(_wgslsmith_mod_i32(u_input.d.x, -17047i) & 1i, -28412i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.d.x, 1019f))), vec2<f32>(349f, -510f)))));
    return _wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_mult_i32(~(-2147483647i) & min(0i, global2.a), -42057i), -(reverseBits(6124i) ^ (u_input.a.x << (50825u % 32u)))), func_2(u_input.b.wzz).c);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<i32>) -> Struct_1 {
    return func_2(u_input.b.yzx);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 6>();
    let var_0 = func_4(vec4<bool>(false || global0.x, any(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 6u)], false, true, global0.x), vec4<bool>(global0.x, global0.x, global0.x, true), global1[_wgslsmith_index_u32(u_input.b.x, 6u)])) && (!global1[_wgslsmith_index_u32(9050u, 6u)] && global1[_wgslsmith_index_u32(1u, 6u)]), !(!global1[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x), 6u)]), false), vec4<i32>((func_1() << (abs(6620u) % 32u)) >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 32345u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u)) % 32u), abs(~(~15772i)), -1i, 1i));
    let var_1 = select(vec2<bool>(true, global0.x), !(!global0.ww), false);
    global2 = func_2(select(firstTrailingBit(firstLeadingBit(firstLeadingBit(u_input.b.xxx))), firstLeadingBit(u_input.b.yxz), var_1.x | true));
    var var_2 = Struct_2(global1[_wgslsmith_index_u32(~select(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b.x, 26141u), vec3<u32>(1u, u_input.b.x, u_input.b.x)), _wgslsmith_dot_vec4_u32(min(u_input.b, u_input.b), u_input.b), false), 6u)], Struct_1(u_input.d.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-741f, var_0.d.x) + _wgslsmith_f_op_f32(-var_0.d.x)), ~_wgslsmith_sub_i32(~global2.c, var_0.a), global2.d));
    let x = u_input.a;
    s_output = StorageBuffer(68628u);
}

