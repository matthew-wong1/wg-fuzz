struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(66439u, 29102u, 22980u);

var<private> global1: Struct_1 = Struct_1(-405f);

var<private> global2: array<bool, 27> = array<bool, 27>(false, true, true, true, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, true, false, true, true, false, false, true);

var<private> global3: vec2<u32> = vec2<u32>(0u, 4294967295u);

var<private> global4: i32 = 0i;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-400f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -661f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1544f - global1.a)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a), -1440f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-860f, _wgslsmith_f_op_f32(sign(-455f)))))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, -518f, global1.a) - vec3<f32>(global1.a, 264f, global1.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-323f, global1.a, 255f) + vec3<f32>(2005f, -1590f, -407f)), global3.x <= 1u)), vec3<f32>(_wgslsmith_f_op_f32(-global1.a), var_0.a, -138f)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_0.a, -406f, 445f))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(142f, -1350f, 1477f, -1461f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, -1000f, -297f, var_0.a)))), all(select(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 27u)], global2[_wgslsmith_index_u32(19290u, 27u)], global2[_wgslsmith_index_u32(0u, 27u)], global2[_wgslsmith_index_u32(15380u, 27u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 27u)], false, global2[_wgslsmith_index_u32(global0.x, 27u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 27u)], false, global2[_wgslsmith_index_u32(4294967295u, 27u)], true), vec4<bool>(true, false, true, global2[_wgslsmith_index_u32(global0.x, 27u)]), global2[_wgslsmith_index_u32(u_input.a, 27u)]))))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.a, global1.a, var_1.x, global1.a), vec4<f32>(var_0.a, global1.a, -1264f, var_1.x))))) - vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(-var_1.x))))));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(max(-403f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(743f, var_2.x))) * -490f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_2.x)))), var_2.x))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(var_0.a, _wgslsmith_f_op_f32(var_2.x - global1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.a, 888f))), -979f);
    return 39904u;
}

fn func_2() -> Struct_1 {
    global0 = vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(~_wgslsmith_add_u32(4294967295u, u_input.a), firstTrailingBit(global3.x & global0.x)), global0.x), _wgslsmith_sub_u32(global0.x, 8322u), ~(~4294967295u) << ((func_3() >> (~4294967295u % 32u)) % 32u));
    let var_0 = ~_wgslsmith_mod_i32(27726i, 2147483647i);
    let var_1 = vec4<bool>(any(vec4<bool>(any(vec4<bool>(global2[_wgslsmith_index_u32(global0.x, 27u)], global2[_wgslsmith_index_u32(6754u, 27u)], true, global2[_wgslsmith_index_u32(115688u, 27u)])), true, all(vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 27u)], false, false)), false)), true, global2[_wgslsmith_index_u32(u_input.a, 27u)], all(!vec4<bool>(global2[_wgslsmith_index_u32(0u, 27u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, u_input.a, global0.x, u_input.a), vec4<u32>(36410u, u_input.a, 4294967295u, 1u)), 27u)], global2[_wgslsmith_index_u32(44104u | global3.x, 27u)], global1.a >= -1263f)));
    var var_2 = ~firstLeadingBit(firstLeadingBit(_wgslsmith_div_i32(~0i, var_0)));
    global0 = abs(select(abs(vec3<u32>(global3.x, _wgslsmith_mult_u32(global0.x, 0u), _wgslsmith_div_u32(global0.x, 22097u))), firstTrailingBit(vec3<u32>(countOneBits(4294967295u), _wgslsmith_mult_u32(global3.x, 13823u), _wgslsmith_div_u32(4294967295u, global3.x))), true));
    return Struct_1(global1.a);
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) - _wgslsmith_f_op_f32(-arg_0.a));
    var var_1 = func_2();
    var_0 = _wgslsmith_f_op_f32(max(-288f, -739f));
    let var_2 = _wgslsmith_f_op_f32(step(-415f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1266f + 1180f))))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(f32(-1f) * -802f))));
    return Struct_1(1f);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec2<i32> {
    global3 = global0.zx;
    var var_0 = 314f;
    let var_1 = func_2();
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -574f)))))) >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-437f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1285f) * _wgslsmith_f_op_f32(-var_1.a))), 255f));
    let var_3 = vec4<i32>(u_input.b << ((global0.x | global0.x) % 32u), -15216i << (global3.x % 32u), u_input.b, u_input.b);
    return var_3.yw;
}

fn func_5(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: u32) -> Struct_1 {
    let var_0 = arg_0.x;
    var var_1 = func_1(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 741f))), false);
    global4 = _wgslsmith_add_i32(5374i ^ arg_0.x, func_4(Struct_1(_wgslsmith_f_op_f32(-var_1.a)), func_1(func_2(), any(!vec4<bool>(true, global2[_wgslsmith_index_u32(global0.x, 27u)], false, false)))).x);
    global2 = array<bool, 27>();
    var var_2 = ~(~(~_wgslsmith_add_u32(42294u, ~arg_2)));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -550f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global0.yz;
    global1 = func_5(_wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.b, 0i), func_4(func_1(Struct_1(global1.a), false), func_2()) | vec2<i32>(u_input.b >> (0u % 32u), ~(-1i))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-293f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-996f)) - 174f), -1099f), 1u);
    global3 = ~reverseBits(countOneBits(vec2<u32>(~1u, 94439u)));
    var var_0 = func_1(Struct_1(func_1(Struct_1(934f), !(!global2[_wgslsmith_index_u32(u_input.a, 27u)])).a), _wgslsmith_mult_u32(~1u, max(global3.x, 14850u)) > _wgslsmith_sub_u32(global0.x, global3.x));
    global1 = func_2();
    let var_1 = firstLeadingBit(~vec4<u32>(~104243u, ~34702u, global0.x >> (0u % 32u), _wgslsmith_mod_u32(global0.x, 0u))) >> (vec4<u32>((5328u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, global0.x, 4294967295u, global3.x), vec4<u32>(21511u, global3.x, 1u, 4294967295u)) % 32u)) ^ (global0.x ^ 1u), firstLeadingBit(1u), 10583u, 26617u) % vec4<u32>(32u));
    var_0 = func_2();
    let var_2 = _wgslsmith_sub_u32(101026u, global0.x);
    let var_3 = select(!(!(!(!vec3<bool>(false, global2[_wgslsmith_index_u32(39768u, 27u)], global2[_wgslsmith_index_u32(83168u, 27u)])))), select(!(!(!vec3<bool>(false, global2[_wgslsmith_index_u32(global0.x, 27u)], global2[_wgslsmith_index_u32(global0.x, 27u)]))), !vec3<bool>(true, !global2[_wgslsmith_index_u32(global0.x, 27u)], !global2[_wgslsmith_index_u32(55671u, 27u)]), any(!vec2<bool>(false, global2[_wgslsmith_index_u32(var_2, 27u)]))), !(!select(vec3<bool>(true, global2[_wgslsmith_index_u32(global3.x, 27u)], true), !vec3<bool>(global2[_wgslsmith_index_u32(global3.x, 27u)], false, true), -1413f < global1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(var_2, ~1u), 808f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.a, global1.a, 121f, 491f)))))), firstTrailingBit(~(0i)));
}

