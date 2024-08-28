struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13> = array<f32, 13>(-498f, -1246f, -377f, 1846f, -345f, -364f, 984f, 1089f, 831f, -484f, 1206f, -375f, 506f);

var<private> global1: Struct_1;

var<private> global2: array<vec4<u32>, 21> = array<vec4<u32>, 21>(vec4<u32>(25104u, 18416u, 14477u, 0u), vec4<u32>(13525u, 15397u, 4294967295u, 4294967295u), vec4<u32>(0u, 26507u, 1u, 60784u), vec4<u32>(48792u, 39982u, 0u, 41270u), vec4<u32>(1u, 83912u, 25602u, 4294967295u), vec4<u32>(1u, 0u, 4294967295u, 0u), vec4<u32>(1u, 0u, 57030u, 0u), vec4<u32>(45361u, 34239u, 0u, 68054u), vec4<u32>(40042u, 0u, 1u, 40296u), vec4<u32>(0u, 79688u, 0u, 1u), vec4<u32>(4294967295u, 1u, 4294967295u, 45033u), vec4<u32>(1u, 4294967295u, 0u, 0u), vec4<u32>(0u, 11825u, 0u, 25523u), vec4<u32>(4294967295u, 11218u, 914u, 0u), vec4<u32>(1u, 1u, 0u, 1u), vec4<u32>(1u, 56835u, 4294967295u, 4294967295u), vec4<u32>(0u, 50185u, 1u, 26631u), vec4<u32>(4294967295u, 4294967295u, 84064u, 69811u), vec4<u32>(106710u, 44037u, 61804u, 1u), vec4<u32>(63u, 0u, 3524u, 43904u), vec4<u32>(52390u, 4294967295u, 0u, 16583u));

var<private> global3: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(-874f, 0u), Struct_1(694f, 92707u), Struct_1(-399f, 7861u), Struct_1(-1000f, 0u));

var<private> global4: u32;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = arg_2;
    let var_1 = var_0;
    let var_2 = global1.b;
    global0 = array<f32, 13>();
    var var_3 = !select(!select(vec4<bool>(false, arg_1, false, arg_1), vec4<bool>(true, arg_1, arg_1, true), !vec4<bool>(false, false, false, arg_1)), select(select(vec4<bool>(arg_1, arg_1, false, arg_1), vec4<bool>(arg_1, false, true, arg_1), select(vec4<bool>(arg_1, false, arg_1, false), vec4<bool>(false, false, true, arg_1), arg_1)), select(vec4<bool>(false, true, arg_1, true), !vec4<bool>(arg_1, true, arg_1, arg_1), true), arg_1), vec4<bool>(false, select(all(vec3<bool>(arg_1, true, true)), arg_1, arg_1), false, arg_1));
    return abs(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.b, 1u, 32076u), vec3<u32>(10149u, 42084u, 50493u), vec3<u32>(7839u, 0u, 17696u)), ~vec3<u32>(arg_2.b, 58328u, var_0.b) & ~vec3<u32>(4294967295u, global1.b, global1.b))) ^ ~(~select(vec3<u32>(arg_2.b, var_0.b, arg_2.b), ~vec3<u32>(var_1.b, global1.b, 58179u), !vec3<bool>(true, var_3.x, true)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = max(~abs(countOneBits(97939u) | (arg_2.b << (u_input.a % 32u))), 33890u);
    let var_1 = abs(4294967295u);
    global2 = array<vec4<u32>, 21>();
    global4 = abs(var_0 >> (_wgslsmith_div_u32(_wgslsmith_div_u32(0u, arg_1.b), arg_0.x) % 32u)) << (global1.b % 32u);
    let var_2 = Struct_1(-1475f, 1u);
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(12502u, 13u)])), _wgslsmith_f_op_f32(-arg_2.a), 943f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(122f, 736f, 458f)))), !(true | all(vec2<bool>(true, false))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a, -1114f, arg_2.a) - vec3<f32>(global0[_wgslsmith_index_u32(var_1, 13u)], global0[_wgslsmith_index_u32(6178u, 13u)], var_2.a))))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.a, 1152f, global1.a), vec3<f32>(-931f, var_2.a, -724f))) * vec3<f32>(arg_1.a, -314f, 1000f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(228f, -433f, var_2.a) + vec3<f32>(arg_2.a, var_2.a, 1245f)))))));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: f32, arg_3: bool) -> f32 {
    global3 = array<Struct_1, 4>();
    let var_0 = 4294967295u;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(min(-660f, -1395f)))))) - _wgslsmith_f_op_f32(arg_2 - -1000f));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(~func_3(vec2<f32>(-900f, arg_2), true, global3[_wgslsmith_index_u32(8419u, 4u)]) | (~vec3<u32>(1u, 4294967295u, global1.b) ^ (vec3<u32>(1u, global1.b, u_input.a) & vec3<u32>(u_input.a, var_0, var_0))), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_3(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(159f, 234f))), arg_3, Struct_1(global1.a, 4294967295u)).x, 22441u), 4u)], Struct_1(global1.a, ~select(u_input.a, 20025u, arg_3)))));
    var_2 = vec3<f32>(arg_2, _wgslsmith_f_op_f32(-global1.a), -780f);
    return _wgslsmith_f_op_f32(1000f * global0[_wgslsmith_index_u32(14079u, 13u)]);
}

fn func_5(arg_0: vec3<f32>) -> Struct_1 {
    global0 = array<f32, 13>();
    var var_0 = Struct_1(arg_0.x, 20132u);
    var var_1 = u_input.a | var_0.b;
    var var_2 = false & !select(true, false, false);
    var var_3 = _wgslsmith_f_op_f32(-arg_0.x);
    return global3[_wgslsmith_index_u32(u_input.a, 4u)];
}

fn func_1(arg_0: Struct_1) -> bool {
    global3 = array<Struct_1, 4>();
    let var_0 = func_5(vec3<f32>(_wgslsmith_f_op_f32(func_2(select(abs(-2147483647i), i32(-1i) * -49235i, all(vec4<bool>(false, true, false, false))), _wgslsmith_dot_vec3_i32(~vec3<i32>(-13332i, 2147483647i, 1i), vec3<i32>(27701i, 48511i, 2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(541f)) * _wgslsmith_f_op_f32(arg_0.a - -580f)), (arg_0.b << (u_input.a % 32u)) < ~97310u)), 998f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(77786u, 13u)] + arg_0.a) - _wgslsmith_f_op_vec3_f32(func_4(vec3<u32>(u_input.a, 4294967295u, 81836u), global3[_wgslsmith_index_u32(1u, 4u)], global3[_wgslsmith_index_u32(1894u, 4u)])).x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(1979i, 0i, 1750f, false))))));
    let var_1 = countOneBits(~vec3<i32>(~(-1i), -25270i, max(i32(-1i) * -79087i, 1i)));
    let var_2 = vec2<u32>(u_input.a, ~(~arg_0.b));
    var var_3 = vec2<bool>(true, any(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false))) && (var_1.x >= countOneBits(_wgslsmith_add_i32(var_1.x, var_1.x))));
    return any(vec3<bool>(true, false, any(vec4<bool>(var_3.x, var_3.x, false, true)) & select(!var_3.x, false, !var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<u32>, 21>();
    let var_0 = vec3<bool>(!(!all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)))), !func_1(global3[_wgslsmith_index_u32(~u_input.a, 4u)]), reverseBits(4294967295u & u_input.a) != global1.b);
    let var_1 = true;
    global0 = array<f32, 13>();
    let var_2 = _wgslsmith_clamp_u32(~0u, _wgslsmith_mult_u32(~37427u, ~_wgslsmith_div_u32(u_input.a, global1.b) | ((global1.b << (global1.b % 32u)) | (u_input.a ^ u_input.a))), _wgslsmith_mod_u32(~(_wgslsmith_div_u32(global1.b, global1.b) ^ max(4294967295u, 4294967295u)), 116714u));
    let var_3 = select(vec4<bool>(var_0.x, all(var_0), func_1(func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, -1265f, global1.a)))), true), !select(vec4<bool>(any(var_0.zz), true, true, !var_0.x), !(!vec4<bool>(true, false, var_0.x, false)), all(select(vec4<bool>(false, var_0.x, var_1, false), vec4<bool>(var_1, var_0.x, var_1, false), true))), !select(vec4<bool>(true, false, global1.a >= global0[_wgslsmith_index_u32(u_input.a, 13u)], !var_1), vec4<bool>(true | var_0.x, all(vec4<bool>(false, var_0.x, false, true)), true, !var_0.x), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, var_1), vec4<bool>(var_0.x, var_1, true, var_1)), select(vec4<bool>(false, var_0.x, var_1, var_0.x), vec4<bool>(var_1, var_1, var_0.x, true), vec4<bool>(true, var_0.x, var_0.x, false)), select(vec4<bool>(false, true, var_0.x, var_1), vec4<bool>(true, var_1, var_1, var_1), var_0.x))));
    let var_4 = func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~1547u, global1.b), 13u)]) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.a, global1.a, 441f), vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 13u)], global0[_wgslsmith_index_u32(0u, 13u)], global1.a), var_3.wzx))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0[_wgslsmith_index_u32(11811u, 13u)], 581f, global1.a), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 13u)], global1.a, global1.a), vec3<f32>(1236f, global0[_wgslsmith_index_u32(global1.b, 13u)], global1.a))))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2, ~(~countOneBits(vec3<u32>(var_4.b, var_4.b, 0u))));
}

