struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 23> = array<vec4<i32>, 23>(vec4<i32>(-30901i, 0i, -11894i, -1i), vec4<i32>(i32(-2147483648), 1i, -8218i, 18362i), vec4<i32>(2147483647i, 1i, 25268i, 1i), vec4<i32>(3853i, 2147483647i, 2147483647i, 2015i), vec4<i32>(-1i, 2147483647i, -59765i, -1597i), vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), 0i), vec4<i32>(-24293i, -5911i, 0i, -19557i), vec4<i32>(-1i, 2147483647i, -39211i, 94085i), vec4<i32>(-1i, 1i, 25059i, -1110i), vec4<i32>(i32(-2147483648), -21119i, 55691i, -1i), vec4<i32>(22408i, -584i, 2147483647i, 60643i), vec4<i32>(47075i, 18583i, i32(-2147483648), 38771i), vec4<i32>(1i, 2147483647i, i32(-2147483648), 28371i), vec4<i32>(0i, -1i, 45922i, 16368i), vec4<i32>(0i, -1i, 35052i, i32(-2147483648)), vec4<i32>(-30098i, 2749i, 0i, i32(-2147483648)), vec4<i32>(0i, 2147483647i, -1i, i32(-2147483648)), vec4<i32>(-9627i, i32(-2147483648), 2147483647i, -39310i), vec4<i32>(1i, i32(-2147483648), -9047i, 19732i), vec4<i32>(37169i, 24193i, -2695i, -1i), vec4<i32>(2147483647i, 21834i, i32(-2147483648), 0i), vec4<i32>(-1i, 1i, 2147483647i, 1i), vec4<i32>(-39517i, 29795i, 2147483647i, 1i));

var<private> global1: Struct_1;

var<private> global2: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(0u, 0u, 0u), vec3<u32>(19247u, 1u, 0u), vec3<u32>(3522u, 28339u, 1u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(4294967295u, 51747u, 0u), vec3<u32>(0u, 82903u, 4294967295u), vec3<u32>(16652u, 4294967295u, 99623u), vec3<u32>(25698u, 33458u, 4294967295u));

var<private> global3: f32 = -1000f;

var<private> global4: array<vec3<f32>, 11>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, -976f, global1.b.x)))) * global1.a), vec4<f32>(-806f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-1315f)), _wgslsmith_f_op_f32(-global1.a.x))), _wgslsmith_f_op_f32(ceil(-790f)), -589f), vec2<bool>(!global1.c.x, false));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-990f, global1.b.x, -490f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_0.b.x, -1000f, var_0.b.x) * vec4<f32>(-928f, var_0.b.x, 845f, var_0.a.x)) + var_0.b)))), !var_0.c);
    var var_2 = Struct_1(vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -641f), -580f), var_0.b, !(!select(vec2<bool>(false, false), vec2<bool>(true, false), all(vec3<bool>(var_1.c.x, var_0.c.x, global1.c.x)))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.b.x))));
    let var_4 = ~(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 4294967295u) ^ u_input.a.zy, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.d.x, u_input.a.x), u_input.a.zz)), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.c, u_input.d.x), u_input.a.x, u_input.a.x)) << (~u_input.d.x % 32u));
    return true;
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: i32, arg_3: bool) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-global1.a), global1.b, select(!select(select(vec2<bool>(arg_3, arg_1.x), vec2<bool>(arg_1.x, false), arg_1.yw), !arg_1.xy, global1.c), select(!(!arg_1.wx), !vec2<bool>(global1.c.x, true), true), func_3()));
    return arg_2;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> i32 {
    return _wgslsmith_div_i32(func_2(true, vec4<bool>(global1.c.x, global1.c.x, false != any(global1.c), _wgslsmith_div_f32(932f, arg_2.b.x) == arg_2.b.x), 8877i, arg_1.x), u_input.e.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_1(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(237f, 135f, -609f), vec3<f32>(181f, 1551f, global1.a.x), false))), global1.b, !global1.c), !select(vec4<bool>(true, global1.c.x, true, global1.c.x), select(vec4<bool>(global1.c.x, global1.c.x, global1.c.x, global1.c.x), vec4<bool>(global1.c.x, false, false, true), global1.c.x), !vec4<bool>(global1.c.x, global1.c.x, true, false)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, global1.a.x, global1.b.x)) + global1.a), global1.b, global1.c));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.b.x, -172f, global1.a.x), global4[_wgslsmith_index_u32(19850u >> (~u_input.c % 32u), 11u)], (!global1.c.x == true) & all(select(vec4<bool>(global1.c.x, global1.c.x, global1.c.x, false), vec4<bool>(true, global1.c.x, global1.c.x, global1.c.x), vec4<bool>(false, global1.c.x, global1.c.x, global1.c.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(global1.a.x, _wgslsmith_f_op_f32(-1000f + global1.b.x))), _wgslsmith_f_op_f32(-482f - -315f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(global1.b.x, -399f, true)))), _wgslsmith_f_op_f32(-global1.a.x))), select(global1.c, !(!global1.c), global1.c.x));
    let var_2 = -firstLeadingBit(~u_input.b);
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_1.a.x)), _wgslsmith_f_op_f32(-var_1.b.x))), _wgslsmith_f_op_f32(-global1.b.x), -550f))), vec4<f32>(global1.a.x, global1.a.x, global1.a.x, var_1.b.x), vec2<bool>(var_1.c.x, global1.c.x != (firstLeadingBit(u_input.a.x) > u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(2482u, abs(vec4<u32>(~4294967295u, u_input.d.x, 1u >> (u_input.a.x % 32u), ~u_input.c) & (reverseBits(vec4<u32>(u_input.c, u_input.d.x, 26831u, 20761u)) << (~vec4<u32>(1u, 1u, u_input.a.x, 63813u) % vec4<u32>(32u)))));
}

