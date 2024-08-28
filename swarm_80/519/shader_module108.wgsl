struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(800f), vec2<bool>(false, false), -1048f, Struct_1(880f));

var<private> global1: array<u32, 13> = array<u32, 13>(14905u, 49017u, 4294967295u, 62463u, 9609u, 0u, 38855u, 0u, 0u, 0u, 1u, 0u, 1u);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global0.d.a, global0.a.a), global0.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) * _wgslsmith_f_op_f32(max(-1000f, global0.d.a))), _wgslsmith_f_op_f32(f32(-1f) * -126f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.a.a, -1546f, global0.d.a, 1153f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.a, global0.c, global0.c, global0.a.a) - vec4<f32>(global0.a.a, 2657f, global0.c, -922f))))) - _wgslsmith_div_vec4_f32(vec4<f32>(global0.c, -723f, 631f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), vec4<f32>(global0.d.a, 1690f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-218f, global0.a.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.c))))));
    var var_1 = vec4<u32>(min(~(~arg_0.x) & _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.b.x, arg_0.x), 84834u >> (0u % 32u)), ~_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(arg_0.x, 13u)], u_input.b.x, 66354u) | arg_0.x), u_input.b.x, 0u, 1u);
    let var_2 = u_input.a.x;
    var_1 = vec4<u32>(u_input.b.x, abs(1u), global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(~(~u_input.b.x), 13u)], var_1.x)), 13u)], ~_wgslsmith_sub_u32(~var_1.x, reverseBits(_wgslsmith_sub_u32(4294967295u, 13824u))));
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(1161f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.c)) - _wgslsmith_f_op_f32(step(var_0.x, -211f))))), !(!select(select(vec2<bool>(global0.b.x, global0.b.x), global0.b, global0.b), select(global0.b, global0.b, vec2<bool>(global0.b.x, global0.b.x)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), global0.a);
    return ~_wgslsmith_sub_u32(var_1.x, 4294967295u);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> f32 {
    let var_0 = !vec2<bool>(select(true & global0.b.x, true, false), all(global0.b));
    global0 = Struct_2(global0.a, var_0, _wgslsmith_f_op_f32(round(-476f)), arg_0);
    global1 = array<u32, 13>();
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(arg_0.a, arg_1)), _wgslsmith_f_op_f32(arg_0.a - -789f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1031f, arg_1)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-832f, arg_1) + vec2<f32>(244f, 1599f)))))));
    let var_2 = global0.b.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(1254f + arg_1))));
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c, -1417f, global0.d.a) * vec3<f32>(328f, 635f, 848f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -464f), global0.a.a, _wgslsmith_f_op_f32(func_3(Struct_1(-140f), _wgslsmith_f_op_f32(-global0.a.a)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-298f, 293f, global0.d.a, 923f)) - vec4<f32>(_wgslsmith_f_op_f32(max(-114f, 486f)), var_0.x, _wgslsmith_f_op_f32(trunc(global0.a.a)), _wgslsmith_f_op_f32(var_0.x + -640f))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-871f, 1000f, 2029f, 1262f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.a, -731f, -501f, var_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, var_0.x, global0.d.a, -1398f)) - vec4<f32>(global0.a.a, var_0.x, global0.c, global0.d.a))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(1000f, 652f), -695f, global0.d.a, _wgslsmith_div_f32(var_0.x, global0.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1543f, -1467f, -1452f, global0.d.a) - vec4<f32>(-2801f, var_0.x, 728f, 199f))))), select(!select(vec4<bool>(true, global0.b.x, global0.b.x, global0.b.x), vec4<bool>(true, global0.b.x, global0.b.x, global0.b.x), global0.b.x), !vec4<bool>(global0.b.x, global0.b.x, global0.b.x, false), vec4<bool>(global0.b.x, select(true, global0.b.x, global0.b.x), true, false)))));
    let var_2 = min(u_input.b.x, ~4294967295u);
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_1.yxw, _wgslsmith_f_op_vec3_f32(-var_1.wzy))), _wgslsmith_f_op_vec3_f32(-var_1.ywz)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1120f, 1416f, -160f)) + _wgslsmith_f_op_vec3_f32(-var_1.xxx)), vec3<f32>(_wgslsmith_f_op_f32(1327f * 534f), _wgslsmith_f_op_f32(trunc(-1414f)), _wgslsmith_f_op_f32(var_1.x * var_0.x)))))));
    let var_3 = u_input.b;
    return Struct_2(Struct_1(337f), !(!(!(!vec2<bool>(global0.b.x, false)))), var_0.x, global0.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(u_input.a.x, u_input.a.x);
    let var_1 = !global0.b.x;
    global1 = array<u32, 13>();
    let var_2 = global1[_wgslsmith_index_u32(func_1(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 18087u, 36858u), vec3<u32>(1291u, 0u, global1[_wgslsmith_index_u32(u_input.b.x, 13u)])) | vec3<u32>(u_input.b.x, 39761u, 4294967295u), ~vec3<u32>(global1[_wgslsmith_index_u32(17682u, 13u)], u_input.b.x, global1[_wgslsmith_index_u32(u_input.b.x, 13u)])), vec3<u32>(~(~4294967295u), 70899u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 13u)] & 0u, 13u)]))), 13u)];
    global0 = func_2(-1i);
    var var_3 = Struct_3(Struct_2(func_2(~min(-32638i, 1i)).a, vec2<bool>(false, any(!vec3<bool>(true, false, global0.b.x))), -823f, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -var_0.x, func_2(var_0.x));
    var var_4 = func_2(22343i).a;
    let var_5 = func_2(var_3.b);
    var_0 = select(min(vec2<i32>(abs(firstLeadingBit(u_input.a.x)), -(~(-7176i))), _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(var_0.x, -1i)), max(vec2<i32>(-2147483647i, 2147483647i), u_input.a.zy), select(u_input.a.yz, vec2<i32>(var_3.b, 55241i), true)), u_input.a.zx)), ~u_input.a.zz, all(select(vec3<bool>(false, u_input.b.x <= 1513u, true), vec3<bool>(var_5.b.x, var_5.b.x || global0.b.x, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-361f, -1259f, var_4.a))), firstLeadingBit(var_3.b), -(~(-20415i)));
}

