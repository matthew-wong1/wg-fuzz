struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: array<i32, 22>;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(472f, -173f, -2371f, 712f), false, vec4<u32>(9238u, 6872u, 4294967295u, 28526u), vec2<u32>(65838u, 4294967295u));

var<private> global2: Struct_1 = Struct_1(vec4<f32>(183f, 1002f, 1493f, -173f), false, vec4<u32>(1u, 75610u, 1u, 25349u), vec2<u32>(27072u, 4294967295u));

var<private> global3: array<Struct_1, 18>;

var<private> global4: vec2<f32> = vec2<f32>(109f, -1000f);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool) -> vec2<u32> {
    global4 = global2.a.zy;
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global4.x))) * global1.a.x);
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1563f - -1078f), _wgslsmith_f_op_f32(ceil(582f))))), _wgslsmith_f_op_f32(select(global2.a.x, _wgslsmith_f_op_f32(global4.x - _wgslsmith_f_op_f32(global4.x * -648f)), all(vec4<bool>(false, arg_0, false, arg_0)))), global2.a.x, _wgslsmith_f_op_f32(-594f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global1.a.x, -439f)), _wgslsmith_f_op_f32(244f - global2.a.x))))), all(!vec4<bool>(false | global2.b, true, true, !global2.b)), ~(~(global2.c ^ (global1.c & vec4<u32>(1u, global1.c.x, 40500u, 31841u)))), ~vec2<u32>(_wgslsmith_mult_u32(global2.d.x, global2.c.x), min(global1.c.x, global2.c.x)) & ~(~global2.d));
    var_1 = global3[_wgslsmith_index_u32(2561u, 18u)];
    var var_2 = ~(~u_input.a ^ (-u_input.a >> (global2.c % vec4<u32>(32u))));
    return var_1.d;
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: vec3<i32>, arg_3: Struct_1) -> bool {
    global1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-arg_3.a.x), global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_3.a.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x + global1.a.x))), -1266f), !arg_3.b, arg_3.c & arg_3.c, ~func_3(global2.b));
    let var_0 = vec4<bool>(true, !global1.b, !all(vec2<bool>(all(vec3<bool>(false, arg_0, arg_0)), arg_0)), false);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1859f, global4.x, global4.x, global1.a.x)))))), true, vec4<u32>(global2.d.x, 0u, arg_3.c.x, 1u), _wgslsmith_add_vec2_u32(func_3(any(!var_0)), min(~(~vec2<u32>(arg_3.d.x, global2.c.x)), vec2<u32>(~global1.c.x, arg_3.d.x))));
    let var_2 = firstTrailingBit(arg_2.yx);
    let var_3 = 2147483647i;
    return false;
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> f32 {
    var var_0 = arg_2;
    let var_1 = select(vec4<bool>(global2.b || (any(vec2<bool>(true, var_0.b)) & func_2(false, u_input.a.x, u_input.a.xxw, Struct_1(var_0.a, false, global2.c, vec2<u32>(global2.d.x, var_0.c.x)))), false | arg_2.b, func_2(true | global1.b, -2147483647i | _wgslsmith_div_i32(global0[_wgslsmith_index_u32(4294967295u, 22u)], 18024i), vec3<i32>(reverseBits(2147483647i), max(-65473i, -2147483647i), global0[_wgslsmith_index_u32(global2.d.x, 22u)] ^ -23295i), global3[_wgslsmith_index_u32(arg_2.c.x, 18u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.x + -1857f) * -461f) > _wgslsmith_f_op_f32(-860f * 914f)), vec4<bool>(arg_1, global1.b & any(!vec3<bool>(var_0.b, false, true)), false, !(!any(vec2<bool>(true, global2.b)))), select(select(select(!vec4<bool>(false, false, false, global1.b), vec4<bool>(arg_3, global1.b, arg_1, true), !global2.b), vec4<bool>(!var_0.b, global1.b == global2.b, !arg_3, true), vec4<bool>(true, arg_1, true, true | global2.b)), vec4<bool>(global1.b, false, (318f != arg_0) || false, global1.b), !vec4<bool>(global2.b, !var_0.b, arg_1, global2.b)));
    var var_2 = global3[_wgslsmith_index_u32(8021u, 18u)];
    let var_3 = _wgslsmith_f_op_f32(exp2(var_0.a.x));
    let var_4 = 1u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1661f), arg_0)) * var_2.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(!(!(true && !global2.b)), max(-2745i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-1i, 0i, -3491i), global0[_wgslsmith_index_u32(4294967295u, 22u)] & -14731i)) != _wgslsmith_clamp_i32(2147483647i, ~(-12030i), min(_wgslsmith_clamp_i32(u_input.a.x, 2147483647i, -26364i), global0[_wgslsmith_index_u32(1u, 22u)])));
    global4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global4.x, _wgslsmith_f_op_f32(func_1(-1159f, var_0.x, global3[_wgslsmith_index_u32(~global1.c.x, 18u)], var_0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2.a.xz, vec2<f32>(-183f, global4.x)))))));
    var var_1 = global3[_wgslsmith_index_u32(global1.d.x, 18u)];
    var_1 = global3[_wgslsmith_index_u32(firstLeadingBit(~10553u), 18u)];
    global4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global1.a.wy))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -111f), _wgslsmith_f_op_f32(-global2.a.x))) - vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1132f)), global1.a.x), _wgslsmith_f_op_f32(global1.a.x + 1981f))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1906f, _wgslsmith_f_op_f32(-240f + _wgslsmith_f_op_f32(-global4.x))), _wgslsmith_f_op_vec2_f32(min(var_1.a.wz, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global4.x, 276f))))), var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(select(13239u, ~52848u, global0[_wgslsmith_index_u32(73504u, 22u)] > u_input.a.x), ~17993u) >> (~countOneBits(_wgslsmith_div_u32(77583u, 19020u)) % 32u));
}

