struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 489f;

var<private> global1: array<vec4<i32>, 19>;

var<private> global2: array<vec3<f32>, 25>;

var<private> global3: i32 = 9582i;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    global0 = 1234f;
    let var_0 = Struct_2(Struct_1(any(!select(vec2<bool>(arg_0.a, true), vec2<bool>(false, arg_0.a), vec2<bool>(true, arg_0.a))), _wgslsmith_clamp_vec4_i32(arg_0.b, -firstLeadingBit(vec4<i32>(-26760i, 83299i, arg_0.b.x, u_input.d)), ~arg_0.b), arg_0.c));
    global1 = array<vec4<i32>, 19>();
    global1 = array<vec4<i32>, 19>();
    global0 = arg_0.c.x;
    return -(min(-(var_0.a.b << (vec4<u32>(u_input.c.x, 4294967295u, 1u, u_input.c.x) % vec4<u32>(32u))), -arg_0.b) & _wgslsmith_sub_vec4_i32(-arg_0.b, vec4<i32>(5961i, -1i, -1i, u_input.d) | -vec4<i32>(var_0.a.b.x, u_input.a.x, 45445i, arg_0.b.x)));
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: f32) -> Struct_2 {
    let var_0 = ~global1[_wgslsmith_index_u32(1u, 19u)];
    var var_1 = countOneBits(-var_0.yxw & var_0.wzx);
    global1 = array<vec4<i32>, 19>();
    var var_2 = Struct_2(Struct_1(!(_wgslsmith_f_op_f32(arg_2 * 1000f) != arg_2), firstTrailingBit(var_0) ^ func_3(Struct_1(false, vec4<i32>(744i, 24372i, -78343i, 19955i), vec2<f32>(-179f, -1234f))), vec2<f32>(-336f, 996f)));
    let var_3 = -685f;
    return Struct_2(var_2.a);
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec3<f32>) -> Struct_2 {
    global1 = array<vec4<i32>, 19>();
    global1 = array<vec4<i32>, 19>();
    var var_0 = ~(vec2<i32>(6312i, -1i) << (vec2<u32>(_wgslsmith_mult_u32(u_input.c.x, u_input.c.x), abs(~u_input.c.x)) % vec2<u32>(32u)));
    let var_1 = arg_0;
    global0 = arg_1;
    return Struct_2(var_1.a);
}

fn func_1(arg_0: Struct_2) -> f32 {
    let var_0 = func_4(func_2(u_input.b, u_input.c.xzz, _wgslsmith_f_op_f32(arg_0.a.c.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-360f * -1773f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.a.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1003f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.c.x)))), vec3<f32>(521f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_0.a.c.x)), 267f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.a.c.x + arg_0.a.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.a.c.x))))));
    let var_1 = u_input.c.zw;
    global3 = ~(-26385i);
    return -684f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -817f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -572f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -643f) * _wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(true, vec4<i32>(u_input.a.x, 1i, 0i, u_input.d), vec2<f32>(-595f, -1530f))))))))));
    global1 = array<vec4<i32>, 19>();
    var var_1 = func_4(func_4(func_4(func_4(func_4(Struct_2(Struct_1(false, global1[_wgslsmith_index_u32(u_input.b, 19u)], vec2<f32>(-302f, 158f))), 1293f, vec3<f32>(var_0, 414f, 284f)), _wgslsmith_f_op_f32(sign(-977f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 1525f, var_0))), var_0, _wgslsmith_f_op_vec3_f32(exp2(global2[_wgslsmith_index_u32(abs(0u), 25u)]))), -1596f, global2[_wgslsmith_index_u32(u_input.c.x, 25u)]), _wgslsmith_f_op_f32(-var_0), vec3<f32>(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -369f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(-var_0)))));
    var_1 = Struct_2(func_4(func_2(countOneBits(u_input.b), _wgslsmith_mod_vec3_u32(select(u_input.c.xzy, u_input.c.zwz, false), ~vec3<u32>(u_input.c.x, u_input.c.x, u_input.b)), _wgslsmith_f_op_f32(-var_0)), var_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(45887u, 25u)] - vec3<f32>(var_1.a.c.x, var_0, var_1.a.c.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-379f, var_0, var_0)))))).a);
    let var_2 = Struct_1(true, -var_1.a.b, vec2<f32>(_wgslsmith_f_op_f32(min(func_4(Struct_2(Struct_1(true, global1[_wgslsmith_index_u32(48715u, 19u)], var_1.a.c)), _wgslsmith_f_op_f32(-var_1.a.c.x), vec3<f32>(var_1.a.c.x, var_0, 1160f)).a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -391f)))), _wgslsmith_f_op_f32(-var_1.a.c.x)));
    global3 = -(~(~(~var_1.a.b.x) << (u_input.c.x % 32u)));
    let var_3 = true;
    let var_4 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(-2929f);
}

