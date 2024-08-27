struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: vec3<bool>,
    d: vec2<bool>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(658f, -572f, 175f, 808f), vec2<bool>(true, true), vec3<bool>(true, true, false), vec2<bool>(true, false), 4294967295u);

var<private> global1: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec4<f32>(-1747f, 605f, 216f, 975f), vec2<bool>(true, true), vec3<bool>(true, true, true), vec2<bool>(false, false), 18434u), Struct_1(vec4<f32>(-1119f, 1000f, 439f, 887f), vec2<bool>(true, true), vec3<bool>(true, false, false), vec2<bool>(true, false), 73871u), Struct_1(vec4<f32>(1304f, -2184f, -1437f, -1137f), vec2<bool>(false, true), vec3<bool>(false, false, true), vec2<bool>(false, false), 43370u), Struct_1(vec4<f32>(-179f, -563f, -538f, 1218f), vec2<bool>(true, true), vec3<bool>(true, true, true), vec2<bool>(false, false), 4294967295u), Struct_1(vec4<f32>(1647f, 1365f, 1463f, 1228f), vec2<bool>(true, false), vec3<bool>(false, false, true), vec2<bool>(true, false), 1u));

var<private> global2: array<vec2<u32>, 25>;

var<private> global3: array<Struct_1, 17>;

var<private> global4: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(688f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1549f)))));
    global4 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(global0.a, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.x, global4.a.x, 201f, -342f))))))), select(!(!select(vec2<bool>(global4.d.x, global4.b.x), global4.c.xy, false)), global0.b, global4.b), !vec3<bool>(global4.b.x, all(select(vec4<bool>(true, false, false, global0.c.x), vec4<bool>(false, true, global4.c.x, global4.b.x), global4.b.x)), global0.c.x), !select(!vec2<bool>(global0.b.x, false), select(select(global0.d, global0.b, global0.c.xy), select(global4.b, global4.c.zz, global0.d.x), select(global0.b, global0.d, global0.d)), vec2<bool>(global4.c.x, false)), _wgslsmith_mult_u32(global4.e, _wgslsmith_dot_vec2_u32(~select(u_input.a.zx, vec2<u32>(u_input.a.x, u_input.a.x), global0.b), global2[_wgslsmith_index_u32(max(max(1u, 47075u), u_input.b.x), 25u)])));
    global1 = array<Struct_1, 5>();
    var var_1 = global3[_wgslsmith_index_u32(4294967295u, 17u)];
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))) * -213f);
    return -111f;
}

fn func_2() -> Struct_1 {
    let var_0 = countOneBits(global4.e);
    var var_1 = 1f;
    var var_2 = global1[_wgslsmith_index_u32((~global0.e | global0.e) | 0u, 5u)];
    global0 = global3[_wgslsmith_index_u32(~max(~(~global0.e), 4294967295u), 17u)];
    let var_3 = 56321u;
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<f32>(-1317f, -1210f), global4.a, 450f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1856f + global0.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x))), 929f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1325f) * global0.a.x))), vec2<bool>(u_input.e.x <= (1i & _wgslsmith_add_i32(31456i, u_input.e.x)), true), !select(vec3<bool>(false, -2147483647i == u_input.e.x, select(true, true, true)), !global4.c, true), global0.b, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(54669u, global4.e, 73020u, 1u), vec4<u32>(u_input.b.x, var_2.e, 1u, global0.e))), _wgslsmith_mult_vec4_u32(vec4<u32>(84243u, var_0, var_2.e, var_0) << (vec4<u32>(69578u, 4294967295u, var_2.e, 4294967295u) % vec4<u32>(32u)), vec4<u32>(19315u, var_3, 1u, var_0))), var_3));
}

fn func_4(arg_0: Struct_1) -> f32 {
    let var_0 = global0.c.yy;
    global2 = array<vec2<u32>, 25>();
    return 1131f;
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(func_4(func_2())), global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(727f - _wgslsmith_f_op_f32(f32(-1f) * -700f)))), vec2<bool>(arg_0.c.x, any(!(!vec4<bool>(global0.c.x, arg_0.c.x, true, true)))), !select(vec3<bool>(all(vec3<bool>(global4.d.x, false, false)), arg_0.b.x, global0.b.x), vec3<bool>(all(global0.c), true, global4.c.x & arg_0.d.x), vec3<bool>(arg_0.c.x, global4.b.x, true)), !select(!(!global0.c.zz), !func_2().b, !(!global4.d.x)), ~(~0u));
    global3 = array<Struct_1, 17>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(global4.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.a.x - var_0.a.x) - _wgslsmith_f_op_f32(floor(global0.a.x))), 1179f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.a.x) - _wgslsmith_f_op_f32(min(-1055f, 988f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a - vec4<f32>(-745f, -1707f, var_0.a.x, -1068f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, -973f, var_0.a.x, var_0.a.x) - arg_0.a))), select(var_0.c.yx, !vec2<bool>(false & var_0.b.x, true), true), !arg_0.c, !vec2<bool>(!(!global4.b.x), global0.d.x), _wgslsmith_add_u32(global4.e, ~countOneBits(28249u)));
    let var_2 = arg_0.a.x;
    let var_3 = global0.c.x;
    return vec4<bool>(global4.c.x, var_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(global0.a.x))))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2, var_0.a.x))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec4<bool>(global0.c.x, !select(true, true, false), true, all(vec4<bool>(true, true, global4.b.x, true))), select(select(vec4<bool>(global4.d.x, false, true, global4.b.x), !vec4<bool>(true, global0.d.x, true, global4.d.x), vec4<bool>(global0.d.x, global4.c.x, global4.c.x, true)), vec4<bool>(global0.d.x & global4.d.x, any(vec4<bool>(global4.d.x, true, global0.b.x, global0.c.x)), false, global0.d.x), select(select(vec4<bool>(true, false, false, true), vec4<bool>(global0.d.x, global4.d.x, global0.d.x, global0.d.x), false), func_1(global3[_wgslsmith_index_u32(36747u, 17u)]), global0.b.x)), all(global4.b));
    var var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(956f - _wgslsmith_f_op_f32(-global4.a.x)) + _wgslsmith_f_op_f32(341f + global4.a.x)), global4.a.x, -1632f, -1145f)));
    let var_2 = func_1(global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(1u, global4.e >> (~44580u % 32u)), 17u)]).wyz;
    var var_3 = func_2();
    let var_4 = global4.a.x;
    global0 = func_2();
    var var_5 = u_input.b;
    global2 = array<vec2<u32>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(global4.a.x)), -44081i, u_input.e.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -487f))) - 1188f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a.x)), global4.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(global4.a.x)), _wgslsmith_f_op_f32(-var_3.a.x)))));
}

