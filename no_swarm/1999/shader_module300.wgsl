struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

var<private> global1: array<Struct_1, 22>;

var<private> global2: u32 = 4294967295u;

var<private> global3: array<i32, 28>;

var<private> global4: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(31064i, vec2<i32>(52376i, 0i), true), Struct_1(2147483647i, vec2<i32>(1i, 4141i), false), Struct_1(-1i, vec2<i32>(-1i, 68912i), false), Struct_1(-31896i, vec2<i32>(-9654i, 51843i), false), Struct_1(1i, vec2<i32>(1i, 2147483647i), true), Struct_1(0i, vec2<i32>(0i, 0i), false), Struct_1(0i, vec2<i32>(-10612i, -13299i), false), Struct_1(-22845i, vec2<i32>(2147483647i, 11605i), false), Struct_1(0i, vec2<i32>(-1i, -38298i), true), Struct_1(-69995i, vec2<i32>(-1i, 2147483647i), true));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = ~(vec4<i32>(-1i) * -vec4<i32>(1i, 1i, 1i, 1i));
    var var_1 = vec2<u32>(~1u, 39719u);
    let var_2 = !vec2<bool>(arg_0 || !all(vec3<bool>(false, arg_0, arg_0)), arg_0 | false);
    var var_3 = Struct_1(~(~max(~0i, u_input.a)), vec2<i32>(firstTrailingBit(31461i), global3[_wgslsmith_index_u32(min(_wgslsmith_div_u32(var_1.x, firstLeadingBit(var_1.x)), var_1.x), 28u)]), any(!select(!vec3<bool>(arg_0, arg_0, true), select(vec3<bool>(false, false, arg_0), vec3<bool>(var_2.x, true, var_2.x), true), select(vec3<bool>(true, false, false), vec3<bool>(var_2.x, arg_0, var_2.x), arg_0))));
    var var_4 = global1[_wgslsmith_index_u32(var_1.x, 22u)];
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(516f)) * 541f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(761f))))))));
}

fn func_2(arg_0: bool, arg_1: i32) -> vec3<bool> {
    let var_0 = arg_0;
    global2 = 1u;
    var var_1 = Struct_1(u_input.a, vec2<i32>(1i ^ global3[_wgslsmith_index_u32(~0u, 28u)], 10935i) << (vec2<u32>(~0u, 1u) % vec2<u32>(32u)), var_0);
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2158f), _wgslsmith_div_f32(391f, -282f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(-364f))))))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(true)) - -1384f), -413f, 383f));
    var var_3 = Struct_1(-29916i, -countOneBits(vec2<i32>(-1i) * -var_1.b), false);
    return vec3<bool>(any(select(select(!vec2<bool>(var_1.c, true), select(vec2<bool>(var_0, false), vec2<bool>(false, var_1.c), var_3.c), !vec2<bool>(var_3.c, var_0)), select(!vec2<bool>(true, arg_0), !vec2<bool>(true, var_1.c), !vec2<bool>(false, var_0)), var_3.c)), true, var_0);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<i32>) -> u32 {
    var var_0 = Struct_1(0i, vec2<i32>(_wgslsmith_mod_i32(reverseBits(u_input.a), -arg_2.x), arg_0.a), arg_1.x);
    var var_1 = !select(vec4<bool>(!(u_input.a >= -1009i), any(!vec4<bool>(true, false, var_0.c, false)), var_0.c, arg_0.c & arg_0.c), vec4<bool>(any(arg_1.zx), any(!vec4<bool>(true, true, var_0.c, arg_0.c)), any(select(arg_1.xx, vec2<bool>(false, arg_1.x), vec2<bool>(true, var_0.c))), any(func_2(arg_1.x, var_0.b.x))), select(!select(vec4<bool>(true, false, arg_0.c, arg_1.x), vec4<bool>(arg_0.c, var_0.c, arg_0.c, false), vec4<bool>(var_0.c, arg_0.c, false, var_0.c)), vec4<bool>(all(vec2<bool>(arg_0.c, arg_0.c)), true, select(false, arg_0.c, arg_0.c), select(arg_1.x, var_0.c, arg_1.x)), !select(true, true, false)));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-763f, -697f, 1889f)) * _wgslsmith_div_vec3_f32(vec3<f32>(-1505f, 932f, 989f), vec3<f32>(722f, 905f, -1000f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(2555f, 1204f, -343f)))))))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(376f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -338f) - -2263f), _wgslsmith_f_op_f32(1527f - 1f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1420f, 380f, 1399f) * vec3<f32>(-213f, 209f, -645f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(862f, 675f, -1062f))), vec3<bool>(true, arg_1.x, true))))));
    var var_3 = arg_0.b;
    var_1 = select(vec4<bool>(~1i < arg_2.x, any(select(select(vec4<bool>(arg_1.x, false, false, arg_1.x), vec4<bool>(var_0.c, false, var_0.c, arg_1.x), vec4<bool>(true, arg_1.x, var_0.c, false)), !vec4<bool>(false, true, var_1.x, arg_0.c), select(vec4<bool>(true, arg_0.c, var_1.x, var_1.x), vec4<bool>(false, var_0.c, false, var_0.c), var_1.x))), any(select(!vec4<bool>(true, arg_1.x, false, false), vec4<bool>(true, true, true, true), select(false, true, var_1.x))), var_1.x), vec4<bool>(var_1.x && false, true, false, !any(select(vec3<bool>(arg_0.c, var_0.c, true), vec3<bool>(false, arg_1.x, var_1.x), var_1.x))), var_0.c);
    return abs(89637u) << (_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<i32>(_wgslsmith_mult_i32(-1i ^ global3[_wgslsmith_index_u32(func_1(global1[_wgslsmith_index_u32(3027u, 22u)], vec3<bool>(true, false, false), vec2<i32>(u_input.a, global3[_wgslsmith_index_u32(15062u, 28u)])), 28u)], u_input.a), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(20684u, _wgslsmith_sub_u32(4294967295u, 34978u)) ^ _wgslsmith_dot_vec3_u32(~vec3<u32>(13567u, 1u, 16451u), ~vec3<u32>(4294967295u, 1u, 42590u)), 28u)], -10885i, u_input.a);
    var var_1 = Struct_1(u_input.a | (i32(-1i) * -firstTrailingBit(-2147483647i)), vec2<i32>(firstTrailingBit(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.a, 1i, var_0.x), _wgslsmith_dot_vec2_i32(var_0.zy, var_0.ww), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 7036u), 28u)])), ~var_0.x), false);
    let var_2 = vec3<i32>(~global3[_wgslsmith_index_u32(~(~0u), 28u)], 2837i, _wgslsmith_sub_i32(abs(global3[_wgslsmith_index_u32(~36761u, 28u)]), ~firstTrailingBit(var_0.x))) >> (~(~select(countOneBits(vec3<u32>(1u, 36654u, 49832u)), vec3<u32>(1u, 0u, 4294967295u), false | var_1.c)) % vec3<u32>(32u));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -715f), -765f, _wgslsmith_f_op_f32(ceil(1122f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1241f, 1284f, 860f) - vec3<f32>(-1523f, 1529f, 521f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1134f, -1220f, 2313f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -255f), _wgslsmith_f_op_f32(select(434f, 1000f, var_1.c)), -455f))))));
    var var_4 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(~(~4294967295u), ~abs(23898u), 1u, abs(1u)), vec4<u32>(1u, 1u, 1u, 1u)), 22u)];
    var var_5 = global0[_wgslsmith_index_u32(~(~4294967295u), 16u)];
    var var_6 = firstTrailingBit(~1u);
    let var_7 = func_2(any(vec4<bool>(var_1.c, var_5.c, true, true)), var_5.b.x).x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(-abs(var_1.a), var_5.b.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(min(var_3.x, var_3.x))), var_3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1562f)), 1u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(var_3.x, var_3.x)), 413f, 222f)));
}

