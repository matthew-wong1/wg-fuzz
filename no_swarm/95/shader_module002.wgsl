struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8> = array<u32, 8>(1u, 38894u, 0u, 0u, 46803u, 49996u, 51070u, 4294967295u);

var<private> global1: array<f32, 31> = array<f32, 31>(-562f, -1245f, 724f, -1283f, -896f, 342f, 1479f, 213f, 683f, -605f, -891f, 471f, 1269f, 1082f, 1000f, -1288f, 672f, -365f, -1663f, -1119f, 590f, 665f, -1090f, 1000f, 137f, 1169f, -2083f, -1000f, -1052f, -495f, 838f);

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(vec4<bool>(false, false, true, false), vec2<i32>(4447i, 15999i));

var<private> global4: u32 = 0u;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: f32) -> Struct_1 {
    global0 = array<u32, 8>();
    var var_0 = global2.a.zy;
    var var_1 = u_input.a;
    global1 = array<f32, 31>();
    global3 = Struct_1(select(global2.a, !(!(!global2.a)), true), firstLeadingBit(vec2<i32>(2147483647i, global2.b.x ^ firstTrailingBit(global3.b.x))));
    return Struct_1(!vec4<bool>(!var_0.x, true, any(global3.a.zy), (global1[_wgslsmith_index_u32(u_input.a.x, 31u)] >= 1270f) != false), global3.b >> (~(~vec2<u32>(58964u, u_input.a.x)) % vec2<u32>(32u)));
}

fn func_3(arg_0: u32) -> bool {
    global3 = func_2(~0u, -_wgslsmith_add_i32(~min(452i, -20720i), -_wgslsmith_clamp_i32(global2.b.x, global3.b.x, -1i)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(1u, 31u)])))))), -2055f)));
    let var_0 = 0i;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(84176u, 8u)], 31u)], global1[_wgslsmith_index_u32(arg_0, 31u)]) + vec2<f32>(-324f, -1000f))))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-797f, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14192u, 8u)], 8u)], 31u)])))))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-284f + -132f), global1[_wgslsmith_index_u32(4294967295u, 31u)]), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], 31u)], 845f))))))));
    global4 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(4294967295u, u_input.b), ~0u);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(14227u, 31u)], _wgslsmith_f_op_f32(f32(-1f) * -147f))))) + var_1);
    return global2.a.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: bool, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = 1f;
    var var_1 = global2.a.xz;
    var var_2 = func_2(~4294967295u ^ (~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], 8u)]) | ~(~33523u)), _wgslsmith_dot_vec4_i32(vec4<i32>(abs(countOneBits(arg_0.b.x)), ~u_input.c, -79240i ^ _wgslsmith_sub_i32(-87741i, u_input.c), arg_0.b.x), -vec4<i32>(~u_input.c, _wgslsmith_mult_i32(-2147483647i, global3.b.x), 1i, -25396i)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1755f)))))))));
    let var_3 = arg_0;
    var_2 = var_3;
    return var_3;
}

fn func_1() -> vec2<i32> {
    let var_0 = global1[_wgslsmith_index_u32(1u, 31u)];
    var var_1 = !vec4<bool>(all(global3.a.zzz), false, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 31u)], _wgslsmith_f_op_f32(227f - 182f)) != _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 31u)]), (~global0[_wgslsmith_index_u32(15844u, 8u)] & u_input.b) >= (_wgslsmith_add_u32(u_input.a.x, u_input.a.x) | 47270u));
    let var_2 = true;
    global2 = func_4(func_2(4294967295u, global3.b.x, 1000f), vec4<bool>(any(var_1.yz), !func_3(~u_input.a.x), false, !func_2(4294967295u, _wgslsmith_div_i32(1i, -3284i), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(811u, 31u)] * global1[_wgslsmith_index_u32(0u, 31u)])).a.x), false, vec4<bool>(!(!var_2), true, var_1.x, all(!vec4<bool>(false, true, var_2, global3.a.x))));
    global4 = 4294967295u;
    return reverseBits(vec2<i32>(72551i, abs(global3.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global2.a, vec2<i32>(-(~1i), ~u_input.c));
    var var_1 = ~(~global3.b.x);
    var_1 = countOneBits(min(0i, select(min(reverseBits(35278i), -2147483647i), 8047i, !(!global2.a.x))));
    var var_2 = global3.b.x;
    global1 = array<f32, 31>();
    global2 = Struct_1(!select(select(global3.a, !vec4<bool>(var_0.a.x, global2.a.x, global2.a.x, false), true), select(global3.a, vec4<bool>(global2.a.x, true, false, global2.a.x), 773f != global1[_wgslsmith_index_u32(18143u, 31u)]), !global2.a), func_1());
    var var_3 = var_0;
    var var_4 = _wgslsmith_mod_vec3_u32(~(firstLeadingBit(vec3<u32>(4294967295u, 4294967295u, 0u)) ^ (vec3<u32>(15266u, 21250u, 1u) | u_input.a.xzx)), (~vec3<u32>(global0[_wgslsmith_index_u32(71505u, 8u)], global0[_wgslsmith_index_u32(0u, 8u)], 0u) | u_input.a.zwy) >> (u_input.a.xxy % vec3<u32>(32u))) << (_wgslsmith_mod_vec3_u32(~(~vec3<u32>(u_input.b, 4294967295u, global0[_wgslsmith_index_u32(56893u, 8u)])), u_input.a.xxw) % vec3<u32>(32u));
    let var_5 = func_2(36736u, 2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_4.x, 8u)], 31u)], -487f))), 433f, func_4(Struct_1(global2.a, global3.b), !var_3.a, select(global3.a.x, false, global2.a.x), global2.a).a.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1223f, -734f) - -852f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i) * -((vec3<i32>(-2547i, -25353i, 51903i) << (u_input.a.wyw % vec3<u32>(32u))) >> ((vec3<u32>(4294967295u, u_input.b, 4294967295u) << (u_input.a.xwz % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -231f) - global1[_wgslsmith_index_u32(~u_input.a.x, 31u)]))));
}

