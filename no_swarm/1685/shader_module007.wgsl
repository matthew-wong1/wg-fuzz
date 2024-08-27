struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16>;

var<private> global1: array<vec4<f32>, 27> = array<vec4<f32>, 27>(vec4<f32>(1308f, 1000f, 1250f, -1085f), vec4<f32>(-892f, -1309f, 2457f, 729f), vec4<f32>(999f, 1547f, -1064f, 180f), vec4<f32>(-352f, 1367f, 1045f, 623f), vec4<f32>(-2298f, -286f, 1000f, 211f), vec4<f32>(-1190f, -115f, 660f, 669f), vec4<f32>(-609f, 193f, -1000f, -1054f), vec4<f32>(-1484f, -1000f, -146f, -950f), vec4<f32>(-658f, 1349f, 1886f, -232f), vec4<f32>(2519f, 214f, -1605f, -1412f), vec4<f32>(-1000f, -222f, -306f, 123f), vec4<f32>(1948f, -1668f, 285f, 981f), vec4<f32>(-253f, -824f, -1397f, 1286f), vec4<f32>(-1171f, -2161f, -251f, -504f), vec4<f32>(-1153f, 676f, 926f, 793f), vec4<f32>(-822f, 1885f, -1585f, 645f), vec4<f32>(-1017f, -792f, -606f, 486f), vec4<f32>(-2015f, -582f, 1248f, 1000f), vec4<f32>(-896f, -376f, 334f, 265f), vec4<f32>(836f, 1441f, 650f, 793f), vec4<f32>(-1000f, 230f, 338f, -205f), vec4<f32>(1632f, 726f, -759f, -517f), vec4<f32>(-1505f, 1873f, 2306f, 1810f), vec4<f32>(-521f, 146f, -633f, -1021f), vec4<f32>(-658f, -887f, 1312f, -1121f), vec4<f32>(-1582f, -1000f, 1000f, 521f), vec4<f32>(-725f, -371f, 544f, 344f));

var<private> global2: f32 = 1379f;

var<private> global3: bool;

var<private> global4: array<Struct_1, 14>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    global0 = array<i32, 16>();
    var var_0 = global1[_wgslsmith_index_u32(u_input.c, 27u)];
    let var_1 = ~select(~max(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.c, 28762u, 53971u)), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 47721u, u_input.c) ^ vec3<u32>(1u, 56496u, u_input.c), vec3<u32>(1u, 9041u, u_input.c)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false))) | ~vec3<u32>(_wgslsmith_div_u32(~4294967295u, 4294967295u), u_input.c | 4294967295u, reverseBits(abs(u_input.c)));
    global0 = array<i32, 16>();
    var var_2 = var_0.x;
    return 1608f;
}

fn func_2() -> Struct_1 {
    global0 = array<i32, 16>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -284f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -172f) + _wgslsmith_f_op_f32(sign(-504f))), 830f), _wgslsmith_f_op_f32(-717f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) * _wgslsmith_f_op_f32(-1000f - 1885f))))));
    var var_1 = select(!select(vec4<bool>(true, false, false, true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true)), vec4<bool>(false, true, false, false), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    let var_2 = vec2<bool>(var_1.x, var_1.x);
    var var_3 = u_input.a.xy;
    return global4[_wgslsmith_index_u32(u_input.c, 14u)];
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> f32 {
    global3 = true;
    var var_0 = func_2();
    var var_1 = arg_3;
    var var_2 = 4294967295u;
    var_0 = Struct_1(_wgslsmith_div_vec4_f32(arg_1.a, var_1.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x)), var_0.c.x, arg_3.a.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-194f, _wgslsmith_f_op_f32(-var_0.a.x))));
    return _wgslsmith_f_op_f32(-arg_3.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(~2147483647i, -u_input.a.x & global0[_wgslsmith_index_u32(~22599u, 16u)]);
    let var_1 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1460f, _wgslsmith_f_op_f32(1077f * -863f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1208f), _wgslsmith_div_f32(-351f, -1438f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1392f, -1311f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1505f, -594f)) - -168f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1250f - 236f), -849f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<u32>(u_input.c, u_input.c), global4[_wgslsmith_index_u32(u_input.c, 14u)], true, Struct_1(vec4<f32>(-920f, 836f, 1031f, -1542f), vec3<f32>(-1000f, -407f, -950f), vec2<f32>(489f, 659f))))))), -476f), _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(abs(countOneBits(~1u)), 27u)])));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(var_1 - _wgslsmith_f_op_vec4_f32(-var_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(660f, _wgslsmith_f_op_f32(ceil(1132f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, var_1.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-105f, _wgslsmith_f_op_f32(var_1.x * var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.zzx, 0u, -global0[_wgslsmith_index_u32(2466u ^ u_input.c, 16u)], _wgslsmith_f_op_f32(var_1.x - _wgslsmith_div_f32(-2171f, var_2.c.x)));
}

