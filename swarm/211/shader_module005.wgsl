struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1000f, vec2<f32>(1119f, -1486f), 0u, vec4<u32>(0u, 0u, 63958u, 6738u), vec2<f32>(886f, -790f));

var<private> global1: Struct_1 = Struct_1(715f, vec2<f32>(-445f, 634f), 42724u, vec4<u32>(5532u, 31709u, 4294967295u, 123218u), vec2<f32>(1318f, -939f));

var<private> global2: array<u32, 3> = array<u32, 3>(4560u, 1u, 4294967295u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-818f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x)) - _wgslsmith_f_op_f32(342f + global1.b.x)), true)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) - _wgslsmith_f_op_f32(step(746f, arg_0.e.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-322f)))));
    var var_1 = -1i;
    let var_2 = !vec4<bool>(all(vec2<bool>(false, false)), all(select(vec2<bool>(arg_1.x, false), vec2<bool>(true, true), arg_1.ww)), 4294967295u > _wgslsmith_dot_vec2_u32(vec2<u32>(global0.d.x, 57775u) >> (vec2<u32>(global0.d.x, arg_2.d.x) % vec2<u32>(32u)), select(global1.d.xx, vec2<u32>(global2[_wgslsmith_index_u32(53073u, 3u)], arg_0.c), arg_1.wz)), (_wgslsmith_clamp_u32(global0.c, 26445u, 109199u) >= (global1.c << (112591u % 32u))) | any(!arg_1.yzx));
    let var_3 = Struct_1(arg_2.a, arg_2.e, ~88245u, vec4<u32>(arg_0.d.x, ~global1.d.x, ~abs(0u), ~global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.c, 3u)], 3u)], 3u)] & ~(~7071u)), global0.e);
    var var_4 = vec4<i32>(-1i) * -abs(-vec4<i32>(u_input.a.x, -2147483647i, 9796i, u_input.a.x) << (arg_0.d % vec4<u32>(32u)));
    return _wgslsmith_f_op_f32(ceil(1f));
}

fn func_2(arg_0: i32, arg_1: vec4<bool>) -> i32 {
    var var_0 = arg_1.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(global1.b.x)), _wgslsmith_f_op_f32(-global0.b.x))))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(global1.b.x))))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.a))))));
    global0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(Struct_1(974f, vec2<f32>(1203f, global1.e.x), 0u, countOneBits(vec4<u32>(global2[_wgslsmith_index_u32(2629u, 3u)], global1.c, global2[_wgslsmith_index_u32(13736u, 3u)], 8245u)), _wgslsmith_f_op_vec2_f32(-global0.b)), arg_1, Struct_1(207f, global1.e, 1u, ~vec4<u32>(36783u, 0u, 4294967295u, global2[_wgslsmith_index_u32(global0.c, 3u)]), global1.e))))), vec2<f32>(_wgslsmith_f_op_f32(max(global0.b.x, global0.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(Struct_1(global0.a, global1.b, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(2942u, 3u)], 3u)], vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(22258u, 3u)], 3u)], 3u)], 44245u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 3u)], 3u)], 105175u), global0.b), select(arg_1, vec4<bool>(false, false, arg_1.x, arg_1.x), arg_1), Struct_1(global0.a, vec2<f32>(-2280f, 1542f), 3472u, global0.d, vec2<f32>(788f, -339f))))))), 11480u, reverseBits(select(~(~vec4<u32>(53615u, global1.c, 30337u, 0u)), countOneBits(global0.d), vec4<bool>(arg_1.x, true, true, true))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.b) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.b * global0.b))))));
    var var_2 = max(global0.d.zx, _wgslsmith_clamp_vec2_u32(~(~global1.d.zx), global0.d.yw, vec2<u32>(global1.c, 0u)));
    var var_3 = vec4<u32>(global2[_wgslsmith_index_u32(countOneBits(max(101157u, 39236u)), 3u)], 4294967295u, var_2.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.c, global2[_wgslsmith_index_u32(global1.c, 3u)] ^ 0u), global1.d.zw), global0.d.x));
    return i32(-1i) * -35636i;
}

fn func_1() -> Struct_1 {
    var var_0 = all(select(vec3<bool>(true, false, 1925f > global1.e.x), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))) == !(47526i >= _wgslsmith_sub_i32(min(-29520i, 1i), func_2(u_input.a.x, vec4<bool>(false, true, false, true))));
    var var_1 = firstLeadingBit(~(-15588i));
    global2 = array<u32, 3>();
    let var_2 = select(select(!vec2<bool>(true, -1i > u_input.a.x), vec2<bool>(true, !all(vec3<bool>(true, true, false))), select(vec2<bool>(any(vec2<bool>(false, false)), global0.a >= global0.a), select(vec2<bool>(true, true), vec2<bool>(false, false), global0.d.x < global2[_wgslsmith_index_u32(global0.d.x, 3u)]), false)), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), false)), all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false))), select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, false), false)), any(vec3<bool>(true, false, true)))), !(!select(false, false, false)) || true);
    let var_3 = var_2;
    return Struct_1(-690f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global1.b - vec2<f32>(global1.a, global1.a)), vec2<f32>(522f, global0.b.x), select(true, false, false)))) * vec2<f32>(-1521f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1176f, global1.a)))))), global1.c, _wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, 22498u & global0.d.x, ~0u, global1.c), global1.d, global1.d), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-192f)) - _wgslsmith_f_op_f32(f32(-1f) * -1642f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.x) - _wgslsmith_f_op_f32(193f * global0.b.x))), vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(196f, vec2<f32>(842f, -3261f), global2[_wgslsmith_index_u32(33778u, 3u)], vec4<u32>(16286u, global2[_wgslsmith_index_u32(global0.c, 3u)], global0.d.x, 11429u), vec2<f32>(global1.b.x, global0.a)), select(vec4<bool>(var_3.x, var_2.x, var_2.x, false), vec4<bool>(var_3.x, true, var_2.x, true), true), Struct_1(-324f, global1.e, 33336u, global0.d, global0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e.x)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = 1428f;
    global0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(ceil(arg_0.a)), !(44426u <= arg_0.c))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(global0.b)), vec2<f32>(_wgslsmith_f_op_f32(floor(-119f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(934f + -531f)))), false)), global0.d.x, vec4<u32>(~arg_0.c, abs(4294967295u), global0.c, firstLeadingBit(global2[_wgslsmith_index_u32(19667u, 3u)] & global0.c)) ^ countOneBits(arg_0.d), vec2<f32>(global1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1689f)));
    var var_1 = arg_1;
    let var_2 = select(vec3<bool>(!(global1.e.x < -1025f), true, true), vec3<bool>(select(select(true, true, true) & true, all(vec4<bool>(false, true, true, true)), 27787u != func_1().d.x), true, !any(vec2<bool>(false, false))), !(1u > ~firstTrailingBit(global2[_wgslsmith_index_u32(10752u, 3u)])));
    var_0 = -1366f;
    return _wgslsmith_mult_u32(~func_1().d.x, _wgslsmith_div_u32(~abs(~21643u), arg_0.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(global0.c, _wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_mult_u32(4294967295u, global0.c), _wgslsmith_sub_u32(45547u, global0.d.x)), _wgslsmith_sub_vec2_u32(abs(global0.d.wy), ~global0.d.xz ^ _wgslsmith_clamp_vec2_u32(global0.d.xx, global0.d.yy, vec2<u32>(global1.d.x, global0.d.x)))), true);
    let var_1 = Struct_1(687f, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.e) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-257f, -266f) * global1.e)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.e), _wgslsmith_f_op_vec2_f32(-global0.b))) - global0.e), 15077u, global0.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1522f, _wgslsmith_f_op_f32(global1.e.x + global1.b.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.e.x, -544f) * global0.b) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.e.x, 1913f)))) - _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-944f)), -2943f), vec2<f32>(_wgslsmith_f_op_f32(ceil(global0.e.x)), _wgslsmith_f_op_f32(max(global1.a, global1.b.x))))));
    global0 = var_1;
    global2 = array<u32, 3>();
    var var_2 = func_4(func_1(), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2099f, -937f, -900f) + vec3<f32>(global1.b.x, global1.e.x, -386f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.b.x, -129f, 2303f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.e.x, global1.a, 1136f) + vec3<f32>(-1277f, global1.e.x, global0.e.x))))), true | any(select(vec2<bool>(false, true), vec2<bool>(false, true), false)))));
}

