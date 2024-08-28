struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 11>;

var<private> global1: array<vec2<i32>, 28>;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec2<u32>(0u, 20140u), 4294967295u, vec3<bool>(true, true, true)), vec2<i32>(-22182i, i32(-2147483648)));

var<private> global3: i32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_2) -> vec3<f32> {
    global3 = global2.b.x;
    global0 = array<vec4<f32>, 11>();
    var var_0 = Struct_2(Struct_1(vec2<u32>(arg_1.a.b, 33913u), ~1u, vec3<bool>(!select(arg_1.a.c.x, global2.a.c.x, arg_2.a.c.x), arg_1.a.c.x, any(select(vec2<bool>(global2.a.c.x, true), vec2<bool>(arg_1.a.c.x, false), vec2<bool>(false, false))))), select(abs(vec2<i32>(u_input.d.x, arg_1.b.x) << (~vec2<u32>(4294967295u, 36971u) % vec2<u32>(32u))), vec2<i32>(global2.b.x, -1i), true));
    global1 = array<vec2<i32>, 28>();
    let var_1 = Struct_2(arg_1.a, -reverseBits(vec2<i32>(~1i, _wgslsmith_dot_vec3_i32(vec3<i32>(15161i, -1i, global2.b.x), vec3<i32>(2147483647i, -5922i, u_input.d.x)))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(arg_0.x - arg_0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, -908f)) + vec3<f32>(1509f, -1187f, 717f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(520f, -407f, 1000f) - vec3<f32>(972f, arg_0.x, -1064f))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(620f, arg_0.x, arg_0.x), vec3<f32>(arg_0.x, arg_0.x, -1186f))))))));
}

fn func_2() -> i32 {
    var var_0 = global2.a;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(143f, -820f, 855f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1203f, 806f, -1343f) - vec3<f32>(1333f, 214f, -111f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec2<f32>(266f, 427f), Struct_2(global2.a, vec2<i32>(-24850i, u_input.d.x)), Struct_2(global2.a, vec2<i32>(-2468i, -34341i)))))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1231f + 828f), _wgslsmith_f_op_f32(1015f + -683f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-187f, -664f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1520f * -1598f) - 797f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1592f, 158f, 472f) + vec3<f32>(1f, 1f, 1f))), !var_0.c.x)));
    var var_2 = ~select(reverseBits(~(~vec4<u32>(u_input.b.x, 0u, 4294967295u, u_input.b.x))), ~_wgslsmith_sub_vec4_u32(select(u_input.a, vec4<u32>(u_input.a.x, 65166u, global2.a.a.x, u_input.a.x), vec4<bool>(false, global2.a.c.x, var_0.c.x, true)), max(vec4<u32>(4294967295u, var_0.b, var_0.a.x, 53504u), u_input.a)), !any(select(vec4<bool>(false, var_0.c.x, false, global2.a.c.x), vec4<bool>(false, global2.a.c.x, var_0.c.x, false), vec4<bool>(global2.a.c.x, global2.a.c.x, var_0.c.x, false))));
    let var_3 = any(select(vec4<bool>(false, 4294967295u == global2.a.b, any(vec4<bool>(global2.a.c.x, true, global2.a.c.x, false)), any(vec3<bool>(global2.a.c.x, false, true))), select(select(select(vec4<bool>(var_0.c.x, false, true, var_0.c.x), vec4<bool>(var_0.c.x, false, var_0.c.x, var_0.c.x), false), !vec4<bool>(global2.a.c.x, global2.a.c.x, false, false), !vec4<bool>(true, false, global2.a.c.x, global2.a.c.x)), vec4<bool>(global2.b.x < -71473i, select(true, global2.a.c.x, false), true, false), select(!vec4<bool>(true, global2.a.c.x, true, false), select(vec4<bool>(false, global2.a.c.x, global2.a.c.x, global2.a.c.x), vec4<bool>(false, true, global2.a.c.x, var_0.c.x), vec4<bool>(false, global2.a.c.x, true, false)), vec4<bool>(global2.a.c.x, global2.a.c.x, false, true))), vec4<bool>(var_0.c.x, false, true, !(-684f >= var_1.x))));
    var var_4 = select(!vec4<bool>(select(true, var_0.b != var_2.x, select(false, true, var_0.c.x)), true || all(var_0.c.zy), !(!global2.a.c.x), any(vec3<bool>(var_3, global2.a.c.x, var_3))), !vec4<bool>(true, var_0.c.x, _wgslsmith_div_i32(global2.b.x, u_input.c) > _wgslsmith_dot_vec2_i32(global2.b, vec2<i32>(1i, global2.b.x)), false), any(select(select(select(var_0.c.xz, var_0.c.zx, true), !vec2<bool>(var_3, var_0.c.x), all(var_0.c)), vec2<bool>(all(vec4<bool>(var_0.c.x, var_3, var_3, global2.a.c.x)), !var_0.c.x), select(vec2<bool>(true, true), select(var_0.c.yz, global2.a.c.yz, var_0.c.x), select(vec2<bool>(false, global2.a.c.x), vec2<bool>(global2.a.c.x, global2.a.c.x), var_0.c.x)))));
    return u_input.d.x;
}

fn func_1() -> StorageBuffer {
    global0 = array<vec4<f32>, 11>();
    var var_0 = Struct_2(global2.a, vec2<i32>(u_input.c, func_2()));
    let var_1 = Struct_2(var_0.a, -vec2<i32>(min(global2.b.x, u_input.c << (global2.a.b % 32u)), u_input.c));
    var var_2 = _wgslsmith_mod_vec2_u32(~(~(~var_0.a.a)), firstTrailingBit(vec2<u32>(_wgslsmith_mod_u32(~global2.a.a.x, ~61531u), ~global2.a.b)));
    let var_3 = Struct_2(var_1.a, _wgslsmith_mult_vec2_i32(~(~global1[_wgslsmith_index_u32(firstTrailingBit(15920u), 28u)]), vec2<i32>(func_2(), 1i)));
    return StorageBuffer(global2.b.x, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(652f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-344f)), -1698f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-529f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -global2.b.x;
    global0 = array<vec4<f32>, 11>();
    var var_1 = !global2.a.c.xx;
    global0 = array<vec4<f32>, 11>();
    var var_2 = 34440u;
    var_2 = 4294967295u;
    var_2 = 0u;
    let x = u_input.a;
    s_output = func_1();
}

