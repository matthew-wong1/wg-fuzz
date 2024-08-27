struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(vec2<bool>(false, false)), Struct_4(vec2<bool>(true, true)), Struct_4(vec2<bool>(true, false)), Struct_4(vec2<bool>(false, true)), Struct_4(vec2<bool>(true, false)), Struct_4(vec2<bool>(false, false)), Struct_4(vec2<bool>(true, false)), Struct_4(vec2<bool>(false, true)), Struct_4(vec2<bool>(true, false)));

var<private> global1: array<vec2<i32>, 32> = array<vec2<i32>, 32>(vec2<i32>(-1824i, 1i), vec2<i32>(2147483647i, 1i), vec2<i32>(-13017i, 2147483647i), vec2<i32>(-1i, 2147483647i), vec2<i32>(1i, -1i), vec2<i32>(-26711i, 1i), vec2<i32>(-12436i, 1i), vec2<i32>(2147483647i, 23602i), vec2<i32>(-1i, 0i), vec2<i32>(-21640i, 55034i), vec2<i32>(-22161i, 3633i), vec2<i32>(0i, 2147483647i), vec2<i32>(0i, -63915i), vec2<i32>(-1i, 1i), vec2<i32>(-57791i, 25i), vec2<i32>(1i, -23994i), vec2<i32>(-1i, -8794i), vec2<i32>(-20573i, 49888i), vec2<i32>(30282i, -41843i), vec2<i32>(2147483647i, 1i), vec2<i32>(1i, 2147483647i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(2147483647i, -12591i), vec2<i32>(-1284i, 0i), vec2<i32>(-43898i, -1i), vec2<i32>(-29511i, 1i), vec2<i32>(-24402i, -1i), vec2<i32>(1i, 55921i), vec2<i32>(1i, 0i), vec2<i32>(2147483647i, -1i), vec2<i32>(i32(-2147483648), -54989i), vec2<i32>(62202i, -44591i));

var<private> global2: array<vec3<i32>, 11>;

var<private> global3: vec4<bool> = vec4<bool>(true, true, false, true);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>) -> bool {
    var var_0 = Struct_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(505f, arg_0.b.x, -330f, -1140f) + vec4<f32>(270f, 245f, arg_0.b.x, -309f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, arg_0.b.x, -124f, -1000f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, 236f, arg_0.b.x, -479f) * vec4<f32>(arg_0.b.x, -378f, arg_0.b.x, 1093f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, 495f, 109f, -249f))))));
    global3 = vec4<bool>(all(global3.yy), all(vec3<bool>(true, !(!global3.x), u_input.b.x > abs(u_input.b.x))), !global3.x, !global3.x);
    var var_1 = Struct_1(arg_0.a.x, arg_0.b.x);
    var_1 = Struct_1(select(true, arg_0.a.x, select(any(vec3<bool>(arg_0.a.x, global3.x, true)), false, true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(882f)), var_1.b)));
    global0 = array<Struct_4, 9>();
    return all(global3.wzz);
}

fn func_2(arg_0: Struct_4) -> vec4<bool> {
    global2 = array<vec3<i32>, 11>();
    global3 = vec4<bool>(func_3(Struct_3(vec2<bool>(true, !global3.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(264f, 853f, 349f))))), vec3<i32>(~u_input.d.x, u_input.d.x, u_input.c.x)), true, false, global3.x);
    global1 = array<vec2<i32>, 32>();
    global3 = vec4<bool>(true, _wgslsmith_mod_i32(_wgslsmith_mult_i32(~(-1i), u_input.a), 0i) >= u_input.c.x, !all(vec3<bool>(true, all(vec3<bool>(arg_0.a.x, arg_0.a.x, true)), any(arg_0.a))), arg_0.a.x);
    global0 = array<Struct_4, 9>();
    return select(vec4<bool>(arg_0.a.x, !(!global3.x | !arg_0.a.x), any(vec4<bool>(all(arg_0.a), true, arg_0.a.x, u_input.d.x > u_input.c.x)), !global3.x), select(vec4<bool>(true, true, true, true), select(!vec4<bool>(arg_0.a.x, global3.x, true, arg_0.a.x), vec4<bool>(true == arg_0.a.x, false, arg_0.a.x, all(vec3<bool>(false, true, false))), !vec4<bool>(true, global3.x, global3.x, true)), (func_3(Struct_3(vec2<bool>(global3.x, false), vec3<f32>(-959f, -1000f, -2019f)), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)) || false) && false), select(select(select(vec4<bool>(global3.x, arg_0.a.x, global3.x, false), !vec4<bool>(true, arg_0.a.x, global3.x, true), true), !select(vec4<bool>(global3.x, false, true, false), vec4<bool>(arg_0.a.x, arg_0.a.x, global3.x, false), vec4<bool>(global3.x, global3.x, arg_0.a.x, global3.x)), vec4<bool>(true, arg_0.a.x, global3.x, u_input.d.x != u_input.a)), !vec4<bool>(global3.x, arg_0.a.x, any(global3.zzx), global3.x), !(!select(vec4<bool>(global3.x, arg_0.a.x, arg_0.a.x, global3.x), vec4<bool>(arg_0.a.x, true, global3.x, global3.x), vec4<bool>(global3.x, true, false, true)))));
}

fn func_1() -> Struct_5 {
    var var_0 = vec2<i32>(u_input.a, u_input.a);
    global0 = array<Struct_4, 9>();
    let var_1 = _wgslsmith_div_f32(345f, _wgslsmith_f_op_f32(round(-1779f)));
    global3 = select(select(vec4<bool>(global3.x, all(global3.zx), true, any(global3.wzz)), !(!(!vec4<bool>(global3.x, false, global3.x, true))), any(!func_2(global0[_wgslsmith_index_u32(u_input.b.x, 9u)]))), select(select(vec4<bool>(false, -568f == var_1, all(global3.www), global3.x), select(select(vec4<bool>(global3.x, false, true, false), vec4<bool>(global3.x, global3.x, global3.x, global3.x), vec4<bool>(true, global3.x, global3.x, true)), select(vec4<bool>(false, global3.x, global3.x, global3.x), vec4<bool>(true, global3.x, global3.x, global3.x), vec4<bool>(global3.x, global3.x, true, true)), vec4<bool>(false, true, global3.x, global3.x)), !vec4<bool>(true, global3.x, global3.x, true)), !(!(!vec4<bool>(global3.x, global3.x, true, true))), any(global3.xy)), func_2(global0[_wgslsmith_index_u32(4294967295u, 9u)]));
    var var_2 = 1u;
    return Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 919f, -164f, 1572f)) - vec4<f32>(var_1, var_1, -2712f, 472f)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1))), var_1, -1362f, _wgslsmith_f_op_f32(abs(var_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(global3.zw, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-976f, 1099f, 684f)) * vec3<f32>(1985f, -572f, 779f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-167f, 1211f, -339f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1146f, 1259f, 1145f))))));
    let var_1 = u_input.b.zz;
    let var_2 = func_1();
    global2 = array<vec3<i32>, 11>();
    var var_3 = ~_wgslsmith_clamp_u32(_wgslsmith_add_u32(~(var_1.x >> (var_1.x % 32u)), (9317u | u_input.b.x) << (var_1.x % 32u)), 10776u, u_input.b.x);
    var_3 = 0u;
    var var_4 = Struct_1(false, _wgslsmith_f_op_f32(exp2(var_2.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.b.x, _wgslsmith_add_u32(0u | reverseBits(u_input.b.x), _wgslsmith_sub_u32(1u, var_1.x))), vec4<i32>(0i, firstTrailingBit(1i), 2147483647i, 19834i), 957f, abs(~u_input.b.x ^ var_1.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -463f), var_2.a.x)), var_0.b.x)));
}

