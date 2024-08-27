struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_3, 5>;

var<private> global2: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(false, vec4<bool>(true, false, true, false)), Struct_2(true, vec4<bool>(true, false, false, false)), Struct_2(false, vec4<bool>(true, true, true, true)), Struct_2(true, vec4<bool>(true, true, true, true)), Struct_2(false, vec4<bool>(true, false, true, true)), Struct_2(true, vec4<bool>(false, true, true, false)), Struct_2(false, vec4<bool>(false, true, true, false)), Struct_2(true, vec4<bool>(true, true, true, false)), Struct_2(true, vec4<bool>(true, true, true, false)), Struct_2(false, vec4<bool>(true, true, true, true)));

var<private> global3: array<u32, 5> = array<u32, 5>(0u, 65643u, 0u, 104459u, 104991u);

var<private> global4: u32;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> Struct_2 {
    return Struct_2(any(select(vec3<bool>(true, true, global0.b.x), select(global0.b.zwx, !global0.b.zyy, vec3<bool>(true, true, false)), false | global0.a)), !vec4<bool>(global0.b.x, true, true, !global0.b.x));
}

fn func_3() -> Struct_2 {
    var var_0 = Struct_3(vec3<bool>(global0.b.x, global0.a, 1u >= _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.b.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 5u)], 5u)]), global3[_wgslsmith_index_u32(countOneBits(0u), 5u)])));
    var var_1 = ~(~min(select(vec3<u32>(40743u, 36967u, 1u), vec3<u32>(global3[_wgslsmith_index_u32(u_input.a.x, 5u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 5u)], 5u)], 30407u), var_0.a.x), u_input.b | u_input.a) ^ ~(~vec3<u32>(0u, 0u, 4294967295u)));
    return Struct_2(var_0.a.x, vec4<bool>(true, global0.b.x, any(!global0.b.wzy), false));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: i32) -> Struct_1 {
    global2 = array<Struct_2, 10>();
    var var_0 = func_2();
    global1 = array<Struct_3, 5>();
    var_0 = func_3();
    let var_1 = ~vec3<u32>(abs(global3[_wgslsmith_index_u32(firstTrailingBit(~0u), 5u)]), select(~(~4294967295u), abs(_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(1u, 5u)], u_input.c.x)), all(vec3<bool>(true, true, true))), u_input.b.x);
    return Struct_1(~(~u_input.b), vec4<bool>(true, false, any(select(!global0.b, !vec4<bool>(var_0.b.x, true, global0.b.x, arg_0), true)), false), ~(~min(~var_1.yx, vec2<u32>(u_input.c.x, var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(false, global0.a);
    var var_1 = func_1(true, 0i, u_input.d);
    global2 = array<Struct_2, 10>();
    global1 = array<Struct_3, 5>();
    global4 = ~_wgslsmith_dot_vec2_u32(abs(_wgslsmith_mult_vec2_u32(var_1.c, u_input.a.yz << (vec2<u32>(var_1.c.x, u_input.c.x) % vec2<u32>(32u)))), vec2<u32>(1u, 1u));
    var var_2 = func_2();
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1236f, 799f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1492f, _wgslsmith_f_op_f32(sign(289f)))), 1f)));
    global4 = global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 5u)], 5u)];
    let var_4 = -2147483647i << (_wgslsmith_add_u32(firstTrailingBit(reverseBits(~global3[_wgslsmith_index_u32(u_input.b.x, 5u)])), var_1.a.x) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(floor(-521f)))))), abs(~abs(-1i)));
}

